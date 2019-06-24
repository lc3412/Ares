; ModuleID = './[inter]third-party--zlib-1.2.7--example.o.i'
source_filename = "./[inter]third-party--zlib-1.2.7--example.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gzFile_s = type { i32, i8*, i64 }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }

@hello = constant [14 x i8] c"hello, hello!\00", align 1
@dictionary = constant [6 x i8] c"hello\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [14 x i8] c"%s error: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"garbage\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"uncompress\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"bad uncompress\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"uncompress(): %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"gzopen error\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ello\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"gzputs err: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c", %s!\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"gzprintf err: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"gzread err: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"bad gzread: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"gzread(): %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"gzseek error, pos=%ld, gztell=%ld\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"gzgetc error\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"gzungetc error\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"gzgets err after gzseek: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"bad gzgets after gzseek\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"gzgets() after gzseek: %s\0A\00", align 1
@zalloc = internal global i8* (i8*, i32, i32)* null, align 8
@zfree = internal global void (i8*, i8*)* null, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"1.2.7\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"deflateInit\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"deflate\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"deflateEnd\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"inflateInit\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"inflate\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"inflateEnd\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"bad inflate\0A\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"inflate(): %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"deflate not greedy\0A\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"deflate should report Z_STREAM_END\0A\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"large inflate\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"bad large inflate: %ld\0A\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"large_inflate(): OK\0A\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"inflateSync\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"inflate should report DATA_ERROR\0A\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"after inflateSync(): hel%s\0A\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"deflateSetDictionary\00", align 1
@dictId = common global i64 0, align 8
@.str.41 = private unnamed_addr constant [22 x i8] c"unexpected dictionary\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"inflate with dict\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"bad inflate with dict\0A\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"inflate with dictionary: %s\0A\00", align 1
@main.myVersion = internal global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), align 8
@.str.45 = private unnamed_addr constant [27 x i8] c"incompatible zlib version\0A\00", align 1
@.str.46 = private unnamed_addr constant [33 x i8] c"warning: different zlib version\0A\00", align 1
@.str.47 = private unnamed_addr constant [49 x i8] c"zlib version %s = 0x%04x, compile flags = 0x%lx\0A\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"foo.gz\00", align 1

; Function Attrs: nounwind uwtable
define void @test_compress(i8*, i64, i8*, i64) #0 !dbg !54 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !57, metadata !58), !dbg !59
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !60, metadata !58), !dbg !61
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !62, metadata !58), !dbg !63
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !64, metadata !58), !dbg !65
  call void @llvm.dbg.declare(metadata i32* %9, metadata !66, metadata !58), !dbg !67
  call void @llvm.dbg.declare(metadata i64* %10, metadata !68, metadata !58), !dbg !69
  %11 = call i64 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i32 0, i32 0)) #6, !dbg !70
  %12 = add i64 %11, 1, !dbg !71
  store i64 %12, i64* %10, align 8, !dbg !69
  %13 = load i8*, i8** %5, align 8, !dbg !72
  %14 = load i64, i64* %10, align 8, !dbg !73
  %15 = call i32 @compress(i8* %13, i64* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i32 0, i32 0), i64 %14), !dbg !74
  store i32 %15, i32* %9, align 4, !dbg !75
  %16 = load i32, i32* %9, align 4, !dbg !76
  %17 = icmp ne i32 %16, 0, !dbg !79
  br i1 %17, label %18, label %22, !dbg !80

; <label>:18:                                     ; preds = %4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !81
  %20 = load i32, i32* %9, align 4, !dbg !84
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 %20), !dbg !85
  call void @exit(i32 1) #7, !dbg !86
  unreachable, !dbg !88

; <label>:22:                                     ; preds = %4
  %23 = load i8*, i8** %7, align 8, !dbg !89
  %24 = call i8* @strcpy(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !90
  %25 = load i8*, i8** %7, align 8, !dbg !91
  %26 = load i8*, i8** %5, align 8, !dbg !92
  %27 = load i64, i64* %6, align 8, !dbg !93
  %28 = call i32 @uncompress(i8* %25, i64* %8, i8* %26, i64 %27), !dbg !94
  store i32 %28, i32* %9, align 4, !dbg !95
  %29 = load i32, i32* %9, align 4, !dbg !96
  %30 = icmp ne i32 %29, 0, !dbg !99
  br i1 %30, label %31, label %35, !dbg !100

; <label>:31:                                     ; preds = %22
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !101
  %33 = load i32, i32* %9, align 4, !dbg !104
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 %33), !dbg !105
  call void @exit(i32 1) #7, !dbg !106
  unreachable, !dbg !108

; <label>:35:                                     ; preds = %22
  %36 = load i8*, i8** %7, align 8, !dbg !109
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i32 0, i32 0)) #6, !dbg !111
  %38 = icmp ne i32 %37, 0, !dbg !111
  br i1 %38, label %39, label %42, !dbg !112

; <label>:39:                                     ; preds = %35
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !113
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0)), !dbg !115
  call void @exit(i32 1) #7, !dbg !116
  unreachable, !dbg !116

; <label>:42:                                     ; preds = %35
  %43 = load i8*, i8** %7, align 8, !dbg !117
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* %43), !dbg !119
  br label %45

; <label>:45:                                     ; preds = %42
  ret void, !dbg !120
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i32 @compress(i8*, i64*, i8*, i64) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

declare i32 @uncompress(i8*, i64*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @test_gzio(i8*, i8*, i64) #0 !dbg !121 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gzFile_s*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !124, metadata !58), !dbg !125
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !126, metadata !58), !dbg !127
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !128, metadata !58), !dbg !129
  call void @llvm.dbg.declare(metadata i32* %7, metadata !130, metadata !58), !dbg !131
  call void @llvm.dbg.declare(metadata i32* %8, metadata !132, metadata !58), !dbg !133
  %11 = call i64 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i32 0, i32 0)) #6, !dbg !134
  %12 = trunc i64 %11 to i32, !dbg !135
  %13 = add nsw i32 %12, 1, !dbg !136
  store i32 %13, i32* %8, align 4, !dbg !133
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %9, metadata !137, metadata !58), !dbg !146
  call void @llvm.dbg.declare(metadata i64* %10, metadata !147, metadata !58), !dbg !148
  %14 = load i8*, i8** %4, align 8, !dbg !149
  %15 = call %struct.gzFile_s* @gzopen(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)), !dbg !150
  store %struct.gzFile_s* %15, %struct.gzFile_s** %9, align 8, !dbg !151
  %16 = load %struct.gzFile_s*, %struct.gzFile_s** %9, align 8, !dbg !152
  %17 = icmp eq %struct.gzFile_s* %16, null, !dbg !154
  br i1 %17, label %18, label %21, !dbg !155

; <label>:18:                                     ; preds = %3
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !156
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)), !dbg !158
  call void @exit(i32 1) #7, !dbg !159
  unreachable, !dbg !159

; <label>:21:                                     ; preds = %3
  %22 = load %struct.gzFile_s*, %struct.gzFile_s** %9, align 8, !dbg !160
  %23 = call i32 @gzputc(%struct.gzFile_s* %22, i32 104), !dbg !161
  %24 = load %struct.gzFile_s*, %struct.gzFile_s** %9, align 8, !dbg !162
  %25 = call i32 @gzputs(%struct.gzFile_s* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)), !dbg !164
  %26 = icmp ne i32 %25, 4, !dbg !165
  br i1 %26, label %27, label %32, !dbg !166

; <label>:27:                                     ; preds = %21
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !167
  %29 = load %struct.gzFile_s*, %struct.gzFile_s** %9, align 8, !dbg !169
  %30 = call i8* @gzerror(%struct.gzFile_s* %29, i32* %7), !dbg !170
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* %30), !dbg !171
  call void @exit(i32 1) #7, !dbg !173
  unreachable, !dbg !173

; <label>:32:                                     ; preds = %21
  %33 = load %struct.gzFile_s*, %struct.gzFile_s** %9, align 8, !dbg !174
  %34 = call i32 (%struct.gzFile_s*, i8*, ...) @gzprintf(%struct.gzFile_s* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0)), !dbg !176
  %35 = icmp ne i32 %34, 8, !dbg !177
  br i1 %35, label %36, label %41, !dbg !178

; <label>:36:                                     ; preds = %32
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !179
  %38 = load %struct.gzFile_s*, %struct.gzFile_s** %9, align 8, !dbg !181
  %39 = call i8* @gzerror(%struct.gzFile_s* %38, i32* %7), !dbg !182
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i8* %39), !dbg !183
  call void @exit(i32 1) #7, !dbg !185
  unreachable, !dbg !185

; <label>:41:                                     ; preds = %32
  %42 = load %struct.gzFile_s*, %struct.gzFile_s** %9, align 8, !dbg !186
  %43 = call i64 @gzseek(%struct.gzFile_s* %42, i64 1, i32 1), !dbg !187
  %44 = load %struct.gzFile_s*, %struct.gzFile_s** %9, align 8, !dbg !188
  %45 = call i32 @gzclose(%struct.gzFile_s* %44), !dbg !189
  %46 = load i8*, i8** %4, align 8, !dbg !190
  %47 = call %struct.gzFile_s* @gzopen(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0)), !dbg !191
  store %struct.gzFile_s* %47, %struct.gzFile_s** %9, align 8, !dbg !192
  %48 = load %struct.gzFile_s*, %struct.gzFile_s** %9, align 8, !dbg !193
  %49 = icmp eq %struct.gzFile_s* %48, null, !dbg !195
  br i1 %49, label %50, label %53, !dbg !196

; <label>:50:                                     ; preds = %41
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !197
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)), !dbg !199
  call void @exit(i32 1) #7, !dbg !200
  unreachable, !dbg !200

; <label>:53:                                     ; preds = %41
  %54 = load i8*, i8** %5, align 8, !dbg !201
  %55 = call i8* @strcpy(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !202
  %56 = load %struct.gzFile_s*, %struct.gzFile_s** %9, align 8, !dbg !203
  %57 = load i8*, i8** %5, align 8, !dbg !205
  %58 = load i64, i64* %6, align 8, !dbg !206
  %59 = trunc i64 %58 to i32, !dbg !207
  %60 = call i32 @gzread(%struct.gzFile_s* %56, i8* %57, i32 %59), !dbg !208
  %61 = load i32, i32* %8, align 4, !dbg !209
  %62 = icmp ne i32 %60, %61, !dbg !210
  br i1 %62, label %63, label %68, !dbg !211

; <label>:63:                                     ; preds = %53
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !212
  %65 = load %struct.gzFile_s*, %struct.gzFile_s** %9, align 8, !dbg !214
  %66 = call i8* @gzerror(%struct.gzFile_s* %65, i32* %7), !dbg !215
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8* %66), !dbg !216
  call void @exit(i32 1) #7, !dbg !218
  unreachable, !dbg !218

; <label>:68:                                     ; preds = %53
  %69 = load i8*, i8** %5, align 8, !dbg !219
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i32 0, i32 0)) #6, !dbg !221
  %71 = icmp ne i32 %70, 0, !dbg !221
  br i1 %71, label %72, label %76, !dbg !222

; <label>:72:                                     ; preds = %68
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !223
  %74 = load i8*, i8** %5, align 8, !dbg !225
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i8* %74), !dbg !226
  call void @exit(i32 1) #7, !dbg !227
  unreachable, !dbg !227

; <label>:76:                                     ; preds = %68
  %77 = load i8*, i8** %5, align 8, !dbg !228
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* %77), !dbg !230
  br label %79

; <label>:79:                                     ; preds = %76
  %80 = load %struct.gzFile_s*, %struct.gzFile_s** %9, align 8, !dbg !231
  %81 = call i64 @gzseek(%struct.gzFile_s* %80, i64 -8, i32 1), !dbg !232
  store i64 %81, i64* %10, align 8, !dbg !233
  %82 = load i64, i64* %10, align 8, !dbg !234
  %83 = icmp ne i64 %82, 6, !dbg !236
  br i1 %83, label %89, label %84, !dbg !237

; <label>:84:                                     ; preds = %79
  %85 = load %struct.gzFile_s*, %struct.gzFile_s** %9, align 8, !dbg !238
  %86 = call i64 @gztell(%struct.gzFile_s* %85), !dbg !240
  %87 = load i64, i64* %10, align 8, !dbg !241
  %88 = icmp ne i64 %86, %87, !dbg !242
  br i1 %88, label %89, label %95, !dbg !243

; <label>:89:                                     ; preds = %84, %79
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !244
  %91 = load i64, i64* %10, align 8, !dbg !246
  %92 = load %struct.gzFile_s*, %struct.gzFile_s** %9, align 8, !dbg !247
  %93 = call i64 @gztell(%struct.gzFile_s* %92), !dbg !248
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i32 0, i32 0), i64 %91, i64 %93), !dbg !249
  call void @exit(i32 1) #7, !dbg !250
  unreachable, !dbg !250

; <label>:95:                                     ; preds = %84
  %96 = load %struct.gzFile_s*, %struct.gzFile_s** %9, align 8, !dbg !251
  %97 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %96, i32 0, i32 0, !dbg !253
  %98 = load i32, i32* %97, align 8, !dbg !253
  %99 = icmp ne i32 %98, 0, !dbg !254
  br i1 %99, label %100, label %115, !dbg !254

; <label>:100:                                    ; preds = %95
  %101 = load %struct.gzFile_s*, %struct.gzFile_s** %9, align 8, !dbg !255
  %102 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %101, i32 0, i32 0, !dbg !257
  %103 = load i32, i32* %102, align 8, !dbg !258
  %104 = add i32 %103, -1, !dbg !258
  store i32 %104, i32* %102, align 8, !dbg !258
  %105 = load %struct.gzFile_s*, %struct.gzFile_s** %9, align 8, !dbg !259
  %106 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %105, i32 0, i32 2, !dbg !260
  %107 = load i64, i64* %106, align 8, !dbg !261
  %108 = add nsw i64 %107, 1, !dbg !261
  store i64 %108, i64* %106, align 8, !dbg !261
  %109 = load %struct.gzFile_s*, %struct.gzFile_s** %9, align 8, !dbg !262
  %110 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %109, i32 0, i32 1, !dbg !263
  %111 = load i8*, i8** %110, align 8, !dbg !264
  %112 = getelementptr inbounds i8, i8* %111, i32 1, !dbg !264
  store i8* %112, i8** %110, align 8, !dbg !264
  %113 = load i8, i8* %111, align 1, !dbg !265
  %114 = zext i8 %113 to i32, !dbg !266
  br label %118, !dbg !267

; <label>:115:                                    ; preds = %95
  %116 = load %struct.gzFile_s*, %struct.gzFile_s** %9, align 8, !dbg !268
  %117 = call i32 @gzgetc(%struct.gzFile_s* %116), !dbg !270
  br label %118, !dbg !271

; <label>:118:                                    ; preds = %115, %100
  %119 = phi i32 [ %114, %100 ], [ %117, %115 ], !dbg !272
  %120 = icmp ne i32 %119, 32, !dbg !274
  br i1 %120, label %121, label %124, !dbg !275

; <label>:121:                                    ; preds = %118
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !276
  %123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0)), !dbg !278
  call void @exit(i32 1) #7, !dbg !279
  unreachable, !dbg !279

; <label>:124:                                    ; preds = %118
  %125 = load %struct.gzFile_s*, %struct.gzFile_s** %9, align 8, !dbg !280
  %126 = call i32 @gzungetc(i32 32, %struct.gzFile_s* %125), !dbg !282
  %127 = icmp ne i32 %126, 32, !dbg !283
  br i1 %127, label %128, label %131, !dbg !284

; <label>:128:                                    ; preds = %124
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !285
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0)), !dbg !287
  call void @exit(i32 1) #7, !dbg !288
  unreachable, !dbg !288

; <label>:131:                                    ; preds = %124
  %132 = load %struct.gzFile_s*, %struct.gzFile_s** %9, align 8, !dbg !289
  %133 = load i8*, i8** %5, align 8, !dbg !290
  %134 = load i64, i64* %6, align 8, !dbg !291
  %135 = trunc i64 %134 to i32, !dbg !292
  %136 = call i8* @gzgets(%struct.gzFile_s* %132, i8* %133, i32 %135), !dbg !293
  %137 = load i8*, i8** %5, align 8, !dbg !294
  %138 = call i64 @strlen(i8* %137) #6, !dbg !296
  %139 = icmp ne i64 %138, 7, !dbg !297
  br i1 %139, label %140, label %145, !dbg !298

; <label>:140:                                    ; preds = %131
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !299
  %142 = load %struct.gzFile_s*, %struct.gzFile_s** %9, align 8, !dbg !301
  %143 = call i8* @gzerror(%struct.gzFile_s* %142, i32* %7), !dbg !302
  %144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %141, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0), i8* %143), !dbg !303
  call void @exit(i32 1) #7, !dbg !305
  unreachable, !dbg !305

; <label>:145:                                    ; preds = %131
  %146 = load i8*, i8** %5, align 8, !dbg !306
  %147 = call i32 @strcmp(i8* %146, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i32 0, i64 6)) #6, !dbg !308
  %148 = icmp ne i32 %147, 0, !dbg !308
  br i1 %148, label %149, label %152, !dbg !309

; <label>:149:                                    ; preds = %145
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !310
  %151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %150, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0)), !dbg !312
  call void @exit(i32 1) #7, !dbg !313
  unreachable, !dbg !313

; <label>:152:                                    ; preds = %145
  %153 = load i8*, i8** %5, align 8, !dbg !314
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0), i8* %153), !dbg !316
  br label %155

; <label>:155:                                    ; preds = %152
  %156 = load %struct.gzFile_s*, %struct.gzFile_s** %9, align 8, !dbg !317
  %157 = call i32 @gzclose(%struct.gzFile_s* %156), !dbg !318
  ret void, !dbg !319
}

declare %struct.gzFile_s* @gzopen(i8*, i8*) #3

declare i32 @gzputc(%struct.gzFile_s*, i32) #3

declare i32 @gzputs(%struct.gzFile_s*, i8*) #3

declare i8* @gzerror(%struct.gzFile_s*, i32*) #3

declare i32 @gzprintf(%struct.gzFile_s*, i8*, ...) #3

declare i64 @gzseek(%struct.gzFile_s*, i64, i32) #3

declare i32 @gzclose(%struct.gzFile_s*) #3

declare i32 @gzread(%struct.gzFile_s*, i8*, i32) #3

declare i64 @gztell(%struct.gzFile_s*) #3

declare i32 @gzgetc(%struct.gzFile_s*) #3

declare i32 @gzungetc(i32, %struct.gzFile_s*) #3

declare i8* @gzgets(%struct.gzFile_s*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define void @test_deflate(i8*, i64) #0 !dbg !320 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.z_stream_s, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !323, metadata !58), !dbg !324
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !325, metadata !58), !dbg !326
  call void @llvm.dbg.declare(metadata %struct.z_stream_s* %5, metadata !327, metadata !58), !dbg !349
  call void @llvm.dbg.declare(metadata i32* %6, metadata !350, metadata !58), !dbg !351
  call void @llvm.dbg.declare(metadata i64* %7, metadata !352, metadata !58), !dbg !353
  %8 = call i64 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i32 0, i32 0)) #6, !dbg !354
  %9 = add i64 %8, 1, !dbg !355
  store i64 %9, i64* %7, align 8, !dbg !353
  %10 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** @zalloc, align 8, !dbg !356
  %11 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 8, !dbg !357
  store i8* (i8*, i32, i32)* %10, i8* (i8*, i32, i32)** %11, align 8, !dbg !358
  %12 = load void (i8*, i8*)*, void (i8*, i8*)** @zfree, align 8, !dbg !359
  %13 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 9, !dbg !360
  store void (i8*, i8*)* %12, void (i8*, i8*)** %13, align 8, !dbg !361
  %14 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 10, !dbg !362
  store i8* null, i8** %14, align 8, !dbg !363
  %15 = call i32 @deflateInit_(%struct.z_stream_s* %5, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 112), !dbg !364
  store i32 %15, i32* %6, align 4, !dbg !365
  %16 = load i32, i32* %6, align 4, !dbg !366
  %17 = icmp ne i32 %16, 0, !dbg !369
  br i1 %17, label %18, label %22, !dbg !370

; <label>:18:                                     ; preds = %2
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !371
  %20 = load i32, i32* %6, align 4, !dbg !374
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 %20), !dbg !375
  call void @exit(i32 1) #7, !dbg !376
  unreachable, !dbg !378

; <label>:22:                                     ; preds = %2
  %23 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 0, !dbg !379
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i32 0, i32 0), i8** %23, align 8, !dbg !380
  %24 = load i8*, i8** %3, align 8, !dbg !381
  %25 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 3, !dbg !382
  store i8* %24, i8** %25, align 8, !dbg !383
  br label %26, !dbg !384

; <label>:26:                                     ; preds = %48, %22
  %27 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 2, !dbg !385
  %28 = load i64, i64* %27, align 8, !dbg !385
  %29 = load i64, i64* %7, align 8, !dbg !387
  %30 = icmp ne i64 %28, %29, !dbg !388
  br i1 %30, label %31, label %36, !dbg !389

; <label>:31:                                     ; preds = %26
  %32 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 5, !dbg !390
  %33 = load i64, i64* %32, align 8, !dbg !390
  %34 = load i64, i64* %4, align 8, !dbg !392
  %35 = icmp ult i64 %33, %34, !dbg !393
  br label %36

; <label>:36:                                     ; preds = %31, %26
  %37 = phi i1 [ false, %26 ], [ %35, %31 ]
  br i1 %37, label %38, label %49, !dbg !394

; <label>:38:                                     ; preds = %36
  %39 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 4, !dbg !396
  store i32 1, i32* %39, align 8, !dbg !398
  %40 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 1, !dbg !399
  store i32 1, i32* %40, align 8, !dbg !400
  %41 = call i32 @deflate(%struct.z_stream_s* %5, i32 0), !dbg !401
  store i32 %41, i32* %6, align 4, !dbg !402
  %42 = load i32, i32* %6, align 4, !dbg !403
  %43 = icmp ne i32 %42, 0, !dbg !406
  br i1 %43, label %44, label %48, !dbg !407

; <label>:44:                                     ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !408
  %46 = load i32, i32* %6, align 4, !dbg !411
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i32 %46), !dbg !412
  call void @exit(i32 1) #7, !dbg !413
  unreachable, !dbg !415

; <label>:48:                                     ; preds = %38
  br label %26, !dbg !416, !llvm.loop !418

; <label>:49:                                     ; preds = %36
  br label %50, !dbg !419

; <label>:50:                                     ; preds = %63, %49
  %51 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 4, !dbg !420
  store i32 1, i32* %51, align 8, !dbg !424
  %52 = call i32 @deflate(%struct.z_stream_s* %5, i32 4), !dbg !425
  store i32 %52, i32* %6, align 4, !dbg !426
  %53 = load i32, i32* %6, align 4, !dbg !427
  %54 = icmp eq i32 %53, 1, !dbg !429
  br i1 %54, label %55, label %56, !dbg !430

; <label>:55:                                     ; preds = %50
  br label %64, !dbg !431

; <label>:56:                                     ; preds = %50
  %57 = load i32, i32* %6, align 4, !dbg !433
  %58 = icmp ne i32 %57, 0, !dbg !436
  br i1 %58, label %59, label %63, !dbg !437

; <label>:59:                                     ; preds = %56
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !438
  %61 = load i32, i32* %6, align 4, !dbg !441
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i32 %61), !dbg !442
  call void @exit(i32 1) #7, !dbg !443
  unreachable, !dbg !445

; <label>:63:                                     ; preds = %56
  br label %50, !dbg !446, !llvm.loop !448

; <label>:64:                                     ; preds = %55
  %65 = call i32 @deflateEnd(%struct.z_stream_s* %5), !dbg !449
  store i32 %65, i32* %6, align 4, !dbg !450
  %66 = load i32, i32* %6, align 4, !dbg !451
  %67 = icmp ne i32 %66, 0, !dbg !454
  br i1 %67, label %68, label %72, !dbg !455

; <label>:68:                                     ; preds = %64
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !456
  %70 = load i32, i32* %6, align 4, !dbg !459
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 %70), !dbg !460
  call void @exit(i32 1) #7, !dbg !461
  unreachable, !dbg !463

; <label>:72:                                     ; preds = %64
  ret void, !dbg !464
}

declare i32 @deflateInit_(%struct.z_stream_s*, i32, i8*, i32) #3

declare i32 @deflate(%struct.z_stream_s*, i32) #3

declare i32 @deflateEnd(%struct.z_stream_s*) #3

; Function Attrs: nounwind uwtable
define void @test_inflate(i8*, i64, i8*, i64) #0 !dbg !465 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.z_stream_s, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !466, metadata !58), !dbg !467
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !468, metadata !58), !dbg !469
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !470, metadata !58), !dbg !471
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !472, metadata !58), !dbg !473
  call void @llvm.dbg.declare(metadata i32* %9, metadata !474, metadata !58), !dbg !475
  call void @llvm.dbg.declare(metadata %struct.z_stream_s* %10, metadata !476, metadata !58), !dbg !477
  %11 = load i8*, i8** %7, align 8, !dbg !478
  %12 = call i8* @strcpy(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !479
  %13 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** @zalloc, align 8, !dbg !480
  %14 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 8, !dbg !481
  store i8* (i8*, i32, i32)* %13, i8* (i8*, i32, i32)** %14, align 8, !dbg !482
  %15 = load void (i8*, i8*)*, void (i8*, i8*)** @zfree, align 8, !dbg !483
  %16 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 9, !dbg !484
  store void (i8*, i8*)* %15, void (i8*, i8*)** %16, align 8, !dbg !485
  %17 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 10, !dbg !486
  store i8* null, i8** %17, align 8, !dbg !487
  %18 = load i8*, i8** %5, align 8, !dbg !488
  %19 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 0, !dbg !489
  store i8* %18, i8** %19, align 8, !dbg !490
  %20 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1, !dbg !491
  store i32 0, i32* %20, align 8, !dbg !492
  %21 = load i8*, i8** %7, align 8, !dbg !493
  %22 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 3, !dbg !494
  store i8* %21, i8** %22, align 8, !dbg !495
  %23 = call i32 @inflateInit_(%struct.z_stream_s* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 112), !dbg !496
  store i32 %23, i32* %9, align 4, !dbg !497
  %24 = load i32, i32* %9, align 4, !dbg !498
  %25 = icmp ne i32 %24, 0, !dbg !501
  br i1 %25, label %26, label %30, !dbg !502

; <label>:26:                                     ; preds = %4
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !503
  %28 = load i32, i32* %9, align 4, !dbg !506
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i32 %28), !dbg !507
  call void @exit(i32 1) #7, !dbg !508
  unreachable, !dbg !510

; <label>:30:                                     ; preds = %4
  br label %31, !dbg !511

; <label>:31:                                     ; preds = %57, %30
  %32 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 5, !dbg !512
  %33 = load i64, i64* %32, align 8, !dbg !512
  %34 = load i64, i64* %8, align 8, !dbg !514
  %35 = icmp ult i64 %33, %34, !dbg !515
  br i1 %35, label %36, label %41, !dbg !516

; <label>:36:                                     ; preds = %31
  %37 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 2, !dbg !517
  %38 = load i64, i64* %37, align 8, !dbg !517
  %39 = load i64, i64* %6, align 8, !dbg !519
  %40 = icmp ult i64 %38, %39, !dbg !520
  br label %41

; <label>:41:                                     ; preds = %36, %31
  %42 = phi i1 [ false, %31 ], [ %40, %36 ]
  br i1 %42, label %43, label %58, !dbg !521

; <label>:43:                                     ; preds = %41
  %44 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 4, !dbg !523
  store i32 1, i32* %44, align 8, !dbg !525
  %45 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1, !dbg !526
  store i32 1, i32* %45, align 8, !dbg !527
  %46 = call i32 @inflate(%struct.z_stream_s* %10, i32 0), !dbg !528
  store i32 %46, i32* %9, align 4, !dbg !529
  %47 = load i32, i32* %9, align 4, !dbg !530
  %48 = icmp eq i32 %47, 1, !dbg !532
  br i1 %48, label %49, label %50, !dbg !533

; <label>:49:                                     ; preds = %43
  br label %58, !dbg !534

; <label>:50:                                     ; preds = %43
  %51 = load i32, i32* %9, align 4, !dbg !536
  %52 = icmp ne i32 %51, 0, !dbg !539
  br i1 %52, label %53, label %57, !dbg !540

; <label>:53:                                     ; preds = %50
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !541
  %55 = load i32, i32* %9, align 4, !dbg !544
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i32 %55), !dbg !545
  call void @exit(i32 1) #7, !dbg !546
  unreachable, !dbg !548

; <label>:57:                                     ; preds = %50
  br label %31, !dbg !549, !llvm.loop !551

; <label>:58:                                     ; preds = %49, %41
  %59 = call i32 @inflateEnd(%struct.z_stream_s* %10), !dbg !552
  store i32 %59, i32* %9, align 4, !dbg !553
  %60 = load i32, i32* %9, align 4, !dbg !554
  %61 = icmp ne i32 %60, 0, !dbg !557
  br i1 %61, label %62, label %66, !dbg !558

; <label>:62:                                     ; preds = %58
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !559
  %64 = load i32, i32* %9, align 4, !dbg !562
  %65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32 %64), !dbg !563
  call void @exit(i32 1) #7, !dbg !564
  unreachable, !dbg !566

; <label>:66:                                     ; preds = %58
  %67 = load i8*, i8** %7, align 8, !dbg !567
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i32 0, i32 0)) #6, !dbg !569
  %69 = icmp ne i32 %68, 0, !dbg !569
  br i1 %69, label %70, label %73, !dbg !570

; <label>:70:                                     ; preds = %66
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !571
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0)), !dbg !573
  call void @exit(i32 1) #7, !dbg !574
  unreachable, !dbg !574

; <label>:73:                                     ; preds = %66
  %74 = load i8*, i8** %7, align 8, !dbg !575
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i8* %74), !dbg !577
  br label %76

; <label>:76:                                     ; preds = %73
  ret void, !dbg !578
}

declare i32 @inflateInit_(%struct.z_stream_s*, i8*, i32) #3

declare i32 @inflate(%struct.z_stream_s*, i32) #3

declare i32 @inflateEnd(%struct.z_stream_s*) #3

; Function Attrs: nounwind uwtable
define void @test_large_deflate(i8*, i64, i8*, i64) #0 !dbg !579 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.z_stream_s, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !580, metadata !58), !dbg !581
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !582, metadata !58), !dbg !583
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !584, metadata !58), !dbg !585
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !586, metadata !58), !dbg !587
  call void @llvm.dbg.declare(metadata %struct.z_stream_s* %9, metadata !588, metadata !58), !dbg !589
  call void @llvm.dbg.declare(metadata i32* %10, metadata !590, metadata !58), !dbg !591
  %11 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** @zalloc, align 8, !dbg !592
  %12 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 8, !dbg !593
  store i8* (i8*, i32, i32)* %11, i8* (i8*, i32, i32)** %12, align 8, !dbg !594
  %13 = load void (i8*, i8*)*, void (i8*, i8*)** @zfree, align 8, !dbg !595
  %14 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 9, !dbg !596
  store void (i8*, i8*)* %13, void (i8*, i8*)** %14, align 8, !dbg !597
  %15 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 10, !dbg !598
  store i8* null, i8** %15, align 8, !dbg !599
  %16 = call i32 @deflateInit_(%struct.z_stream_s* %9, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 112), !dbg !600
  store i32 %16, i32* %10, align 4, !dbg !601
  %17 = load i32, i32* %10, align 4, !dbg !602
  %18 = icmp ne i32 %17, 0, !dbg !605
  br i1 %18, label %19, label %23, !dbg !606

; <label>:19:                                     ; preds = %4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !607
  %21 = load i32, i32* %10, align 4, !dbg !610
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 %21), !dbg !611
  call void @exit(i32 1) #7, !dbg !612
  unreachable, !dbg !614

; <label>:23:                                     ; preds = %4
  %24 = load i8*, i8** %5, align 8, !dbg !615
  %25 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 3, !dbg !616
  store i8* %24, i8** %25, align 8, !dbg !617
  %26 = load i64, i64* %6, align 8, !dbg !618
  %27 = trunc i64 %26 to i32, !dbg !619
  %28 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 4, !dbg !620
  store i32 %27, i32* %28, align 8, !dbg !621
  %29 = load i8*, i8** %7, align 8, !dbg !622
  %30 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 0, !dbg !623
  store i8* %29, i8** %30, align 8, !dbg !624
  %31 = load i64, i64* %8, align 8, !dbg !625
  %32 = trunc i64 %31 to i32, !dbg !626
  %33 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 1, !dbg !627
  store i32 %32, i32* %33, align 8, !dbg !628
  %34 = call i32 @deflate(%struct.z_stream_s* %9, i32 0), !dbg !629
  store i32 %34, i32* %10, align 4, !dbg !630
  %35 = load i32, i32* %10, align 4, !dbg !631
  %36 = icmp ne i32 %35, 0, !dbg !634
  br i1 %36, label %37, label %41, !dbg !635

; <label>:37:                                     ; preds = %23
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !636
  %39 = load i32, i32* %10, align 4, !dbg !639
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i32 %39), !dbg !640
  call void @exit(i32 1) #7, !dbg !641
  unreachable, !dbg !643

; <label>:41:                                     ; preds = %23
  %42 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 1, !dbg !644
  %43 = load i32, i32* %42, align 8, !dbg !644
  %44 = icmp ne i32 %43, 0, !dbg !646
  br i1 %44, label %45, label %48, !dbg !647

; <label>:45:                                     ; preds = %41
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !648
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0)), !dbg !650
  call void @exit(i32 1) #7, !dbg !651
  unreachable, !dbg !651

; <label>:48:                                     ; preds = %41
  %49 = call i32 @deflateParams(%struct.z_stream_s* %9, i32 0, i32 0), !dbg !652
  %50 = load i8*, i8** %5, align 8, !dbg !653
  %51 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 0, !dbg !654
  store i8* %50, i8** %51, align 8, !dbg !655
  %52 = load i64, i64* %6, align 8, !dbg !656
  %53 = trunc i64 %52 to i32, !dbg !657
  %54 = udiv i32 %53, 2, !dbg !658
  %55 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 1, !dbg !659
  store i32 %54, i32* %55, align 8, !dbg !660
  %56 = call i32 @deflate(%struct.z_stream_s* %9, i32 0), !dbg !661
  store i32 %56, i32* %10, align 4, !dbg !662
  %57 = load i32, i32* %10, align 4, !dbg !663
  %58 = icmp ne i32 %57, 0, !dbg !666
  br i1 %58, label %59, label %63, !dbg !667

; <label>:59:                                     ; preds = %48
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !668
  %61 = load i32, i32* %10, align 4, !dbg !671
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i32 %61), !dbg !672
  call void @exit(i32 1) #7, !dbg !673
  unreachable, !dbg !675

; <label>:63:                                     ; preds = %48
  %64 = call i32 @deflateParams(%struct.z_stream_s* %9, i32 9, i32 1), !dbg !676
  %65 = load i8*, i8** %7, align 8, !dbg !677
  %66 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 0, !dbg !678
  store i8* %65, i8** %66, align 8, !dbg !679
  %67 = load i64, i64* %8, align 8, !dbg !680
  %68 = trunc i64 %67 to i32, !dbg !681
  %69 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 1, !dbg !682
  store i32 %68, i32* %69, align 8, !dbg !683
  %70 = call i32 @deflate(%struct.z_stream_s* %9, i32 0), !dbg !684
  store i32 %70, i32* %10, align 4, !dbg !685
  %71 = load i32, i32* %10, align 4, !dbg !686
  %72 = icmp ne i32 %71, 0, !dbg !689
  br i1 %72, label %73, label %77, !dbg !690

; <label>:73:                                     ; preds = %63
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !691
  %75 = load i32, i32* %10, align 4, !dbg !694
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i32 %75), !dbg !695
  call void @exit(i32 1) #7, !dbg !696
  unreachable, !dbg !698

; <label>:77:                                     ; preds = %63
  %78 = call i32 @deflate(%struct.z_stream_s* %9, i32 4), !dbg !699
  store i32 %78, i32* %10, align 4, !dbg !700
  %79 = load i32, i32* %10, align 4, !dbg !701
  %80 = icmp ne i32 %79, 1, !dbg !703
  br i1 %80, label %81, label %84, !dbg !704

; <label>:81:                                     ; preds = %77
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !705
  %83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i32 0, i32 0)), !dbg !707
  call void @exit(i32 1) #7, !dbg !708
  unreachable, !dbg !708

; <label>:84:                                     ; preds = %77
  %85 = call i32 @deflateEnd(%struct.z_stream_s* %9), !dbg !709
  store i32 %85, i32* %10, align 4, !dbg !710
  %86 = load i32, i32* %10, align 4, !dbg !711
  %87 = icmp ne i32 %86, 0, !dbg !714
  br i1 %87, label %88, label %92, !dbg !715

; <label>:88:                                     ; preds = %84
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !716
  %90 = load i32, i32* %10, align 4, !dbg !719
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 %90), !dbg !720
  call void @exit(i32 1) #7, !dbg !721
  unreachable, !dbg !723

; <label>:92:                                     ; preds = %84
  ret void, !dbg !724
}

declare i32 @deflateParams(%struct.z_stream_s*, i32, i32) #3

; Function Attrs: nounwind uwtable
define void @test_large_inflate(i8*, i64, i8*, i64) #0 !dbg !725 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.z_stream_s, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !726, metadata !58), !dbg !727
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !728, metadata !58), !dbg !729
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !730, metadata !58), !dbg !731
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !732, metadata !58), !dbg !733
  call void @llvm.dbg.declare(metadata i32* %9, metadata !734, metadata !58), !dbg !735
  call void @llvm.dbg.declare(metadata %struct.z_stream_s* %10, metadata !736, metadata !58), !dbg !737
  %11 = load i8*, i8** %7, align 8, !dbg !738
  %12 = call i8* @strcpy(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !739
  %13 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** @zalloc, align 8, !dbg !740
  %14 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 8, !dbg !741
  store i8* (i8*, i32, i32)* %13, i8* (i8*, i32, i32)** %14, align 8, !dbg !742
  %15 = load void (i8*, i8*)*, void (i8*, i8*)** @zfree, align 8, !dbg !743
  %16 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 9, !dbg !744
  store void (i8*, i8*)* %15, void (i8*, i8*)** %16, align 8, !dbg !745
  %17 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 10, !dbg !746
  store i8* null, i8** %17, align 8, !dbg !747
  %18 = load i8*, i8** %5, align 8, !dbg !748
  %19 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 0, !dbg !749
  store i8* %18, i8** %19, align 8, !dbg !750
  %20 = load i64, i64* %6, align 8, !dbg !751
  %21 = trunc i64 %20 to i32, !dbg !752
  %22 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1, !dbg !753
  store i32 %21, i32* %22, align 8, !dbg !754
  %23 = call i32 @inflateInit_(%struct.z_stream_s* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 112), !dbg !755
  store i32 %23, i32* %9, align 4, !dbg !756
  %24 = load i32, i32* %9, align 4, !dbg !757
  %25 = icmp ne i32 %24, 0, !dbg !760
  br i1 %25, label %26, label %30, !dbg !761

; <label>:26:                                     ; preds = %4
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !762
  %28 = load i32, i32* %9, align 4, !dbg !765
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i32 %28), !dbg !766
  call void @exit(i32 1) #7, !dbg !767
  unreachable, !dbg !769

; <label>:30:                                     ; preds = %4
  br label %31, !dbg !770

; <label>:31:                                     ; preds = %48, %30
  %32 = load i8*, i8** %7, align 8, !dbg !771
  %33 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 3, !dbg !775
  store i8* %32, i8** %33, align 8, !dbg !776
  %34 = load i64, i64* %8, align 8, !dbg !777
  %35 = trunc i64 %34 to i32, !dbg !778
  %36 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 4, !dbg !779
  store i32 %35, i32* %36, align 8, !dbg !780
  %37 = call i32 @inflate(%struct.z_stream_s* %10, i32 0), !dbg !781
  store i32 %37, i32* %9, align 4, !dbg !782
  %38 = load i32, i32* %9, align 4, !dbg !783
  %39 = icmp eq i32 %38, 1, !dbg !785
  br i1 %39, label %40, label %41, !dbg !786

; <label>:40:                                     ; preds = %31
  br label %49, !dbg !787

; <label>:41:                                     ; preds = %31
  %42 = load i32, i32* %9, align 4, !dbg !789
  %43 = icmp ne i32 %42, 0, !dbg !792
  br i1 %43, label %44, label %48, !dbg !793

; <label>:44:                                     ; preds = %41
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !794
  %46 = load i32, i32* %9, align 4, !dbg !797
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i32 %46), !dbg !798
  call void @exit(i32 1) #7, !dbg !799
  unreachable, !dbg !801

; <label>:48:                                     ; preds = %41
  br label %31, !dbg !802, !llvm.loop !804

; <label>:49:                                     ; preds = %40
  %50 = call i32 @inflateEnd(%struct.z_stream_s* %10), !dbg !805
  store i32 %50, i32* %9, align 4, !dbg !806
  %51 = load i32, i32* %9, align 4, !dbg !807
  %52 = icmp ne i32 %51, 0, !dbg !810
  br i1 %52, label %53, label %57, !dbg !811

; <label>:53:                                     ; preds = %49
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !812
  %55 = load i32, i32* %9, align 4, !dbg !815
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32 %55), !dbg !816
  call void @exit(i32 1) #7, !dbg !817
  unreachable, !dbg !819

; <label>:57:                                     ; preds = %49
  %58 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 5, !dbg !820
  %59 = load i64, i64* %58, align 8, !dbg !820
  %60 = load i64, i64* %8, align 8, !dbg !822
  %61 = mul i64 2, %60, !dbg !823
  %62 = load i64, i64* %6, align 8, !dbg !824
  %63 = udiv i64 %62, 2, !dbg !825
  %64 = add i64 %61, %63, !dbg !826
  %65 = icmp ne i64 %59, %64, !dbg !827
  br i1 %65, label %66, label %71, !dbg !828

; <label>:66:                                     ; preds = %57
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !829
  %68 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 5, !dbg !831
  %69 = load i64, i64* %68, align 8, !dbg !831
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i32 0, i32 0), i64 %69), !dbg !832
  call void @exit(i32 1) #7, !dbg !833
  unreachable, !dbg !833

; <label>:71:                                     ; preds = %57
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i32 0, i32 0)), !dbg !834
  br label %73

; <label>:73:                                     ; preds = %71
  ret void, !dbg !836
}

; Function Attrs: nounwind uwtable
define void @test_flush(i8*, i64*) #0 !dbg !837 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.z_stream_s, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !841, metadata !58), !dbg !842
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !843, metadata !58), !dbg !844
  call void @llvm.dbg.declare(metadata %struct.z_stream_s* %5, metadata !845, metadata !58), !dbg !846
  call void @llvm.dbg.declare(metadata i32* %6, metadata !847, metadata !58), !dbg !848
  call void @llvm.dbg.declare(metadata i32* %7, metadata !849, metadata !58), !dbg !850
  %8 = call i64 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i32 0, i32 0)) #6, !dbg !851
  %9 = trunc i64 %8 to i32, !dbg !852
  %10 = add i32 %9, 1, !dbg !853
  store i32 %10, i32* %7, align 4, !dbg !850
  %11 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** @zalloc, align 8, !dbg !854
  %12 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 8, !dbg !855
  store i8* (i8*, i32, i32)* %11, i8* (i8*, i32, i32)** %12, align 8, !dbg !856
  %13 = load void (i8*, i8*)*, void (i8*, i8*)** @zfree, align 8, !dbg !857
  %14 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 9, !dbg !858
  store void (i8*, i8*)* %13, void (i8*, i8*)** %14, align 8, !dbg !859
  %15 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 10, !dbg !860
  store i8* null, i8** %15, align 8, !dbg !861
  %16 = call i32 @deflateInit_(%struct.z_stream_s* %5, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 112), !dbg !862
  store i32 %16, i32* %6, align 4, !dbg !863
  %17 = load i32, i32* %6, align 4, !dbg !864
  %18 = icmp ne i32 %17, 0, !dbg !867
  br i1 %18, label %19, label %23, !dbg !868

; <label>:19:                                     ; preds = %2
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !869
  %21 = load i32, i32* %6, align 4, !dbg !872
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 %21), !dbg !873
  call void @exit(i32 1) #7, !dbg !874
  unreachable, !dbg !876

; <label>:23:                                     ; preds = %2
  %24 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 0, !dbg !877
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i32 0, i32 0), i8** %24, align 8, !dbg !878
  %25 = load i8*, i8** %3, align 8, !dbg !879
  %26 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 3, !dbg !880
  store i8* %25, i8** %26, align 8, !dbg !881
  %27 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 1, !dbg !882
  store i32 3, i32* %27, align 8, !dbg !883
  %28 = load i64*, i64** %4, align 8, !dbg !884
  %29 = load i64, i64* %28, align 8, !dbg !885
  %30 = trunc i64 %29 to i32, !dbg !886
  %31 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 4, !dbg !887
  store i32 %30, i32* %31, align 8, !dbg !888
  %32 = call i32 @deflate(%struct.z_stream_s* %5, i32 3), !dbg !889
  store i32 %32, i32* %6, align 4, !dbg !890
  %33 = load i32, i32* %6, align 4, !dbg !891
  %34 = icmp ne i32 %33, 0, !dbg !894
  br i1 %34, label %35, label %39, !dbg !895

; <label>:35:                                     ; preds = %23
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !896
  %37 = load i32, i32* %6, align 4, !dbg !899
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i32 %37), !dbg !900
  call void @exit(i32 1) #7, !dbg !901
  unreachable, !dbg !903

; <label>:39:                                     ; preds = %23
  %40 = load i8*, i8** %3, align 8, !dbg !904
  %41 = getelementptr inbounds i8, i8* %40, i64 3, !dbg !904
  %42 = load i8, i8* %41, align 1, !dbg !905
  %43 = add i8 %42, 1, !dbg !905
  store i8 %43, i8* %41, align 1, !dbg !905
  %44 = load i32, i32* %7, align 4, !dbg !906
  %45 = sub i32 %44, 3, !dbg !907
  %46 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 1, !dbg !908
  store i32 %45, i32* %46, align 8, !dbg !909
  %47 = call i32 @deflate(%struct.z_stream_s* %5, i32 4), !dbg !910
  store i32 %47, i32* %6, align 4, !dbg !911
  %48 = load i32, i32* %6, align 4, !dbg !912
  %49 = icmp ne i32 %48, 1, !dbg !914
  br i1 %49, label %50, label %58, !dbg !915

; <label>:50:                                     ; preds = %39
  %51 = load i32, i32* %6, align 4, !dbg !916
  %52 = icmp ne i32 %51, 0, !dbg !920
  br i1 %52, label %53, label %57, !dbg !921

; <label>:53:                                     ; preds = %50
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !922
  %55 = load i32, i32* %6, align 4, !dbg !925
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i32 %55), !dbg !926
  call void @exit(i32 1) #7, !dbg !927
  unreachable, !dbg !929

; <label>:57:                                     ; preds = %50
  br label %58, !dbg !930

; <label>:58:                                     ; preds = %57, %39
  %59 = call i32 @deflateEnd(%struct.z_stream_s* %5), !dbg !931
  store i32 %59, i32* %6, align 4, !dbg !932
  %60 = load i32, i32* %6, align 4, !dbg !933
  %61 = icmp ne i32 %60, 0, !dbg !936
  br i1 %61, label %62, label %66, !dbg !937

; <label>:62:                                     ; preds = %58
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !938
  %64 = load i32, i32* %6, align 4, !dbg !941
  %65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 %64), !dbg !942
  call void @exit(i32 1) #7, !dbg !943
  unreachable, !dbg !945

; <label>:66:                                     ; preds = %58
  %67 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 5, !dbg !946
  %68 = load i64, i64* %67, align 8, !dbg !946
  %69 = load i64*, i64** %4, align 8, !dbg !947
  store i64 %68, i64* %69, align 8, !dbg !948
  ret void, !dbg !949
}

; Function Attrs: nounwind uwtable
define void @test_sync(i8*, i64, i8*, i64) #0 !dbg !950 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.z_stream_s, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !951, metadata !58), !dbg !952
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !953, metadata !58), !dbg !954
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !955, metadata !58), !dbg !956
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !957, metadata !58), !dbg !958
  call void @llvm.dbg.declare(metadata i32* %9, metadata !959, metadata !58), !dbg !960
  call void @llvm.dbg.declare(metadata %struct.z_stream_s* %10, metadata !961, metadata !58), !dbg !962
  %11 = load i8*, i8** %7, align 8, !dbg !963
  %12 = call i8* @strcpy(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !964
  %13 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** @zalloc, align 8, !dbg !965
  %14 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 8, !dbg !966
  store i8* (i8*, i32, i32)* %13, i8* (i8*, i32, i32)** %14, align 8, !dbg !967
  %15 = load void (i8*, i8*)*, void (i8*, i8*)** @zfree, align 8, !dbg !968
  %16 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 9, !dbg !969
  store void (i8*, i8*)* %15, void (i8*, i8*)** %16, align 8, !dbg !970
  %17 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 10, !dbg !971
  store i8* null, i8** %17, align 8, !dbg !972
  %18 = load i8*, i8** %5, align 8, !dbg !973
  %19 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 0, !dbg !974
  store i8* %18, i8** %19, align 8, !dbg !975
  %20 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1, !dbg !976
  store i32 2, i32* %20, align 8, !dbg !977
  %21 = call i32 @inflateInit_(%struct.z_stream_s* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 112), !dbg !978
  store i32 %21, i32* %9, align 4, !dbg !979
  %22 = load i32, i32* %9, align 4, !dbg !980
  %23 = icmp ne i32 %22, 0, !dbg !983
  br i1 %23, label %24, label %28, !dbg !984

; <label>:24:                                     ; preds = %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !985
  %26 = load i32, i32* %9, align 4, !dbg !988
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i32 %26), !dbg !989
  call void @exit(i32 1) #7, !dbg !990
  unreachable, !dbg !992

; <label>:28:                                     ; preds = %4
  %29 = load i8*, i8** %7, align 8, !dbg !993
  %30 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 3, !dbg !994
  store i8* %29, i8** %30, align 8, !dbg !995
  %31 = load i64, i64* %8, align 8, !dbg !996
  %32 = trunc i64 %31 to i32, !dbg !997
  %33 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 4, !dbg !998
  store i32 %32, i32* %33, align 8, !dbg !999
  %34 = call i32 @inflate(%struct.z_stream_s* %10, i32 0), !dbg !1000
  %35 = load i32, i32* %9, align 4, !dbg !1001
  %36 = icmp ne i32 %35, 0, !dbg !1004
  br i1 %36, label %37, label %41, !dbg !1005

; <label>:37:                                     ; preds = %28
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1006
  %39 = load i32, i32* %9, align 4, !dbg !1009
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i32 %39), !dbg !1010
  call void @exit(i32 1) #7, !dbg !1011
  unreachable, !dbg !1013

; <label>:41:                                     ; preds = %28
  %42 = load i64, i64* %6, align 8, !dbg !1014
  %43 = trunc i64 %42 to i32, !dbg !1015
  %44 = sub i32 %43, 2, !dbg !1016
  %45 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1, !dbg !1017
  store i32 %44, i32* %45, align 8, !dbg !1018
  %46 = call i32 @inflateSync(%struct.z_stream_s* %10), !dbg !1019
  store i32 %46, i32* %9, align 4, !dbg !1020
  %47 = load i32, i32* %9, align 4, !dbg !1021
  %48 = icmp ne i32 %47, 0, !dbg !1024
  br i1 %48, label %49, label %53, !dbg !1025

; <label>:49:                                     ; preds = %41
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1026
  %51 = load i32, i32* %9, align 4, !dbg !1029
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i32 %51), !dbg !1030
  call void @exit(i32 1) #7, !dbg !1031
  unreachable, !dbg !1033

; <label>:53:                                     ; preds = %41
  %54 = call i32 @inflate(%struct.z_stream_s* %10, i32 4), !dbg !1034
  store i32 %54, i32* %9, align 4, !dbg !1035
  %55 = load i32, i32* %9, align 4, !dbg !1036
  %56 = icmp ne i32 %55, -3, !dbg !1038
  br i1 %56, label %57, label %60, !dbg !1039

; <label>:57:                                     ; preds = %53
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1040
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i32 0, i32 0)), !dbg !1042
  call void @exit(i32 1) #7, !dbg !1043
  unreachable, !dbg !1043

; <label>:60:                                     ; preds = %53
  %61 = call i32 @inflateEnd(%struct.z_stream_s* %10), !dbg !1044
  store i32 %61, i32* %9, align 4, !dbg !1045
  %62 = load i32, i32* %9, align 4, !dbg !1046
  %63 = icmp ne i32 %62, 0, !dbg !1049
  br i1 %63, label %64, label %68, !dbg !1050

; <label>:64:                                     ; preds = %60
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1051
  %66 = load i32, i32* %9, align 4, !dbg !1054
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32 %66), !dbg !1055
  call void @exit(i32 1) #7, !dbg !1056
  unreachable, !dbg !1058

; <label>:68:                                     ; preds = %60
  %69 = load i8*, i8** %7, align 8, !dbg !1059
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i32 0, i32 0), i8* %69), !dbg !1060
  ret void, !dbg !1061
}

declare i32 @inflateSync(%struct.z_stream_s*) #3

; Function Attrs: nounwind uwtable
define void @test_dict_deflate(i8*, i64) #0 !dbg !1062 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.z_stream_s, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1063, metadata !58), !dbg !1064
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1065, metadata !58), !dbg !1066
  call void @llvm.dbg.declare(metadata %struct.z_stream_s* %5, metadata !1067, metadata !58), !dbg !1068
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1069, metadata !58), !dbg !1070
  %7 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** @zalloc, align 8, !dbg !1071
  %8 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 8, !dbg !1072
  store i8* (i8*, i32, i32)* %7, i8* (i8*, i32, i32)** %8, align 8, !dbg !1073
  %9 = load void (i8*, i8*)*, void (i8*, i8*)** @zfree, align 8, !dbg !1074
  %10 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 9, !dbg !1075
  store void (i8*, i8*)* %9, void (i8*, i8*)** %10, align 8, !dbg !1076
  %11 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 10, !dbg !1077
  store i8* null, i8** %11, align 8, !dbg !1078
  %12 = call i32 @deflateInit_(%struct.z_stream_s* %5, i32 9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 112), !dbg !1079
  store i32 %12, i32* %6, align 4, !dbg !1080
  %13 = load i32, i32* %6, align 4, !dbg !1081
  %14 = icmp ne i32 %13, 0, !dbg !1084
  br i1 %14, label %15, label %19, !dbg !1085

; <label>:15:                                     ; preds = %2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1086
  %17 = load i32, i32* %6, align 4, !dbg !1089
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 %17), !dbg !1090
  call void @exit(i32 1) #7, !dbg !1091
  unreachable, !dbg !1093

; <label>:19:                                     ; preds = %2
  %20 = call i32 @deflateSetDictionary(%struct.z_stream_s* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @dictionary, i32 0, i32 0), i32 6), !dbg !1094
  store i32 %20, i32* %6, align 4, !dbg !1095
  %21 = load i32, i32* %6, align 4, !dbg !1096
  %22 = icmp ne i32 %21, 0, !dbg !1099
  br i1 %22, label %23, label %27, !dbg !1100

; <label>:23:                                     ; preds = %19
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1101
  %25 = load i32, i32* %6, align 4, !dbg !1104
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i32 0, i32 0), i32 %25), !dbg !1105
  call void @exit(i32 1) #7, !dbg !1106
  unreachable, !dbg !1108

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 12, !dbg !1109
  %29 = load i64, i64* %28, align 8, !dbg !1109
  store i64 %29, i64* @dictId, align 8, !dbg !1110
  %30 = load i8*, i8** %3, align 8, !dbg !1111
  %31 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 3, !dbg !1112
  store i8* %30, i8** %31, align 8, !dbg !1113
  %32 = load i64, i64* %4, align 8, !dbg !1114
  %33 = trunc i64 %32 to i32, !dbg !1115
  %34 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 4, !dbg !1116
  store i32 %33, i32* %34, align 8, !dbg !1117
  %35 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 0, !dbg !1118
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i32 0, i32 0), i8** %35, align 8, !dbg !1119
  %36 = call i64 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i32 0, i32 0)) #6, !dbg !1120
  %37 = trunc i64 %36 to i32, !dbg !1121
  %38 = add i32 %37, 1, !dbg !1122
  %39 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 1, !dbg !1123
  store i32 %38, i32* %39, align 8, !dbg !1124
  %40 = call i32 @deflate(%struct.z_stream_s* %5, i32 4), !dbg !1125
  store i32 %40, i32* %6, align 4, !dbg !1126
  %41 = load i32, i32* %6, align 4, !dbg !1127
  %42 = icmp ne i32 %41, 1, !dbg !1129
  br i1 %42, label %43, label %46, !dbg !1130

; <label>:43:                                     ; preds = %27
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1131
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i32 0, i32 0)), !dbg !1133
  call void @exit(i32 1) #7, !dbg !1134
  unreachable, !dbg !1134

; <label>:46:                                     ; preds = %27
  %47 = call i32 @deflateEnd(%struct.z_stream_s* %5), !dbg !1135
  store i32 %47, i32* %6, align 4, !dbg !1136
  %48 = load i32, i32* %6, align 4, !dbg !1137
  %49 = icmp ne i32 %48, 0, !dbg !1140
  br i1 %49, label %50, label %54, !dbg !1141

; <label>:50:                                     ; preds = %46
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1142
  %52 = load i32, i32* %6, align 4, !dbg !1145
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 %52), !dbg !1146
  call void @exit(i32 1) #7, !dbg !1147
  unreachable, !dbg !1149

; <label>:54:                                     ; preds = %46
  ret void, !dbg !1150
}

declare i32 @deflateSetDictionary(%struct.z_stream_s*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define void @test_dict_inflate(i8*, i64, i8*, i64) #0 !dbg !1151 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.z_stream_s, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1152, metadata !58), !dbg !1153
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1154, metadata !58), !dbg !1155
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1156, metadata !58), !dbg !1157
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1158, metadata !58), !dbg !1159
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1160, metadata !58), !dbg !1161
  call void @llvm.dbg.declare(metadata %struct.z_stream_s* %10, metadata !1162, metadata !58), !dbg !1163
  %11 = load i8*, i8** %7, align 8, !dbg !1164
  %12 = call i8* @strcpy(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !1165
  %13 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** @zalloc, align 8, !dbg !1166
  %14 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 8, !dbg !1167
  store i8* (i8*, i32, i32)* %13, i8* (i8*, i32, i32)** %14, align 8, !dbg !1168
  %15 = load void (i8*, i8*)*, void (i8*, i8*)** @zfree, align 8, !dbg !1169
  %16 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 9, !dbg !1170
  store void (i8*, i8*)* %15, void (i8*, i8*)** %16, align 8, !dbg !1171
  %17 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 10, !dbg !1172
  store i8* null, i8** %17, align 8, !dbg !1173
  %18 = load i8*, i8** %5, align 8, !dbg !1174
  %19 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 0, !dbg !1175
  store i8* %18, i8** %19, align 8, !dbg !1176
  %20 = load i64, i64* %6, align 8, !dbg !1177
  %21 = trunc i64 %20 to i32, !dbg !1178
  %22 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1, !dbg !1179
  store i32 %21, i32* %22, align 8, !dbg !1180
  %23 = call i32 @inflateInit_(%struct.z_stream_s* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 112), !dbg !1181
  store i32 %23, i32* %9, align 4, !dbg !1182
  %24 = load i32, i32* %9, align 4, !dbg !1183
  %25 = icmp ne i32 %24, 0, !dbg !1186
  br i1 %25, label %26, label %30, !dbg !1187

; <label>:26:                                     ; preds = %4
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1188
  %28 = load i32, i32* %9, align 4, !dbg !1191
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i32 %28), !dbg !1192
  call void @exit(i32 1) #7, !dbg !1193
  unreachable, !dbg !1195

; <label>:30:                                     ; preds = %4
  %31 = load i8*, i8** %7, align 8, !dbg !1196
  %32 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 3, !dbg !1197
  store i8* %31, i8** %32, align 8, !dbg !1198
  %33 = load i64, i64* %8, align 8, !dbg !1199
  %34 = trunc i64 %33 to i32, !dbg !1200
  %35 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 4, !dbg !1201
  store i32 %34, i32* %35, align 8, !dbg !1202
  br label %36, !dbg !1203

; <label>:36:                                     ; preds = %61, %30
  %37 = call i32 @inflate(%struct.z_stream_s* %10, i32 0), !dbg !1204
  store i32 %37, i32* %9, align 4, !dbg !1208
  %38 = load i32, i32* %9, align 4, !dbg !1209
  %39 = icmp eq i32 %38, 1, !dbg !1211
  br i1 %39, label %40, label %41, !dbg !1212

; <label>:40:                                     ; preds = %36
  br label %62, !dbg !1213

; <label>:41:                                     ; preds = %36
  %42 = load i32, i32* %9, align 4, !dbg !1215
  %43 = icmp eq i32 %42, 2, !dbg !1217
  br i1 %43, label %44, label %54, !dbg !1218

; <label>:44:                                     ; preds = %41
  %45 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 12, !dbg !1219
  %46 = load i64, i64* %45, align 8, !dbg !1219
  %47 = load i64, i64* @dictId, align 8, !dbg !1222
  %48 = icmp ne i64 %46, %47, !dbg !1223
  br i1 %48, label %49, label %52, !dbg !1224

; <label>:49:                                     ; preds = %44
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1225
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0)), !dbg !1227
  call void @exit(i32 1) #7, !dbg !1228
  unreachable, !dbg !1228

; <label>:52:                                     ; preds = %44
  %53 = call i32 @inflateSetDictionary(%struct.z_stream_s* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @dictionary, i32 0, i32 0), i32 6), !dbg !1229
  store i32 %53, i32* %9, align 4, !dbg !1230
  br label %54, !dbg !1231

; <label>:54:                                     ; preds = %52, %41
  %55 = load i32, i32* %9, align 4, !dbg !1232
  %56 = icmp ne i32 %55, 0, !dbg !1235
  br i1 %56, label %57, label %61, !dbg !1236

; <label>:57:                                     ; preds = %54
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1237
  %59 = load i32, i32* %9, align 4, !dbg !1240
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0), i32 %59), !dbg !1241
  call void @exit(i32 1) #7, !dbg !1242
  unreachable, !dbg !1244

; <label>:61:                                     ; preds = %54
  br label %36, !dbg !1245, !llvm.loop !1247

; <label>:62:                                     ; preds = %40
  %63 = call i32 @inflateEnd(%struct.z_stream_s* %10), !dbg !1248
  store i32 %63, i32* %9, align 4, !dbg !1249
  %64 = load i32, i32* %9, align 4, !dbg !1250
  %65 = icmp ne i32 %64, 0, !dbg !1253
  br i1 %65, label %66, label %70, !dbg !1254

; <label>:66:                                     ; preds = %62
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1255
  %68 = load i32, i32* %9, align 4, !dbg !1258
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32 %68), !dbg !1259
  call void @exit(i32 1) #7, !dbg !1260
  unreachable, !dbg !1262

; <label>:70:                                     ; preds = %62
  %71 = load i8*, i8** %7, align 8, !dbg !1263
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i32 0, i32 0)) #6, !dbg !1265
  %73 = icmp ne i32 %72, 0, !dbg !1265
  br i1 %73, label %74, label %77, !dbg !1266

; <label>:74:                                     ; preds = %70
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1267
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0)), !dbg !1269
  call void @exit(i32 1) #7, !dbg !1270
  unreachable, !dbg !1270

; <label>:77:                                     ; preds = %70
  %78 = load i8*, i8** %7, align 8, !dbg !1271
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i32 0, i32 0), i8* %78), !dbg !1273
  br label %80

; <label>:80:                                     ; preds = %77
  ret void, !dbg !1274
}

declare i32 @inflateSetDictionary(%struct.z_stream_s*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !34 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1275, metadata !58), !dbg !1276
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !1277, metadata !58), !dbg !1278
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1279, metadata !58), !dbg !1280
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1281, metadata !58), !dbg !1282
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1283, metadata !58), !dbg !1284
  store i64 40000, i64* %8, align 8, !dbg !1284
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1285, metadata !58), !dbg !1286
  %10 = load i64, i64* %8, align 8, !dbg !1287
  store i64 %10, i64* %9, align 8, !dbg !1286
  %11 = call i8* @zlibVersion(), !dbg !1288
  %12 = getelementptr inbounds i8, i8* %11, i64 0, !dbg !1288
  %13 = load i8, i8* %12, align 1, !dbg !1288
  %14 = sext i8 %13 to i32, !dbg !1288
  %15 = load i8*, i8** @main.myVersion, align 8, !dbg !1290
  %16 = getelementptr inbounds i8, i8* %15, i64 0, !dbg !1290
  %17 = load i8, i8* %16, align 1, !dbg !1290
  %18 = sext i8 %17 to i32, !dbg !1290
  %19 = icmp ne i32 %14, %18, !dbg !1291
  br i1 %19, label %20, label %23, !dbg !1292

; <label>:20:                                     ; preds = %2
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1293
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i32 0, i32 0)), !dbg !1295
  call void @exit(i32 1) #7, !dbg !1296
  unreachable, !dbg !1296

; <label>:23:                                     ; preds = %2
  %24 = call i8* @zlibVersion(), !dbg !1297
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)) #6, !dbg !1299
  %26 = icmp ne i32 %25, 0, !dbg !1301
  br i1 %26, label %27, label %30, !dbg !1302

; <label>:27:                                     ; preds = %23
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1303
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i32 0, i32 0)), !dbg !1305
  br label %30, !dbg !1306

; <label>:30:                                     ; preds = %27, %23
  br label %31

; <label>:31:                                     ; preds = %30
  %32 = call i64 @zlibCompileFlags(), !dbg !1307
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 4720, i64 %32), !dbg !1308
  %34 = load i64, i64* %8, align 8, !dbg !1309
  %35 = trunc i64 %34 to i32, !dbg !1310
  %36 = zext i32 %35 to i64, !dbg !1310
  %37 = call noalias i8* @calloc(i64 %36, i64 1) #8, !dbg !1311
  store i8* %37, i8** %6, align 8, !dbg !1312
  %38 = load i64, i64* %9, align 8, !dbg !1313
  %39 = trunc i64 %38 to i32, !dbg !1314
  %40 = zext i32 %39 to i64, !dbg !1314
  %41 = call noalias i8* @calloc(i64 %40, i64 1) #8, !dbg !1315
  store i8* %41, i8** %7, align 8, !dbg !1316
  %42 = load i8*, i8** %6, align 8, !dbg !1317
  %43 = icmp eq i8* %42, null, !dbg !1319
  br i1 %43, label %47, label %44, !dbg !1320

; <label>:44:                                     ; preds = %31
  %45 = load i8*, i8** %7, align 8, !dbg !1321
  %46 = icmp eq i8* %45, null, !dbg !1323
  br i1 %46, label %47, label %49, !dbg !1324

; <label>:47:                                     ; preds = %44, %31
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0)), !dbg !1325
  call void @exit(i32 1) #7, !dbg !1327
  unreachable, !dbg !1327

; <label>:49:                                     ; preds = %44
  %50 = load i8*, i8** %6, align 8, !dbg !1328
  %51 = load i64, i64* %8, align 8, !dbg !1329
  %52 = load i8*, i8** %7, align 8, !dbg !1330
  %53 = load i64, i64* %9, align 8, !dbg !1331
  call void @test_compress(i8* %50, i64 %51, i8* %52, i64 %53), !dbg !1332
  %54 = load i32, i32* %4, align 4, !dbg !1333
  %55 = icmp sgt i32 %54, 1, !dbg !1334
  br i1 %55, label %56, label %60, !dbg !1333

; <label>:56:                                     ; preds = %49
  %57 = load i8**, i8*** %5, align 8, !dbg !1335
  %58 = getelementptr inbounds i8*, i8** %57, i64 1, !dbg !1335
  %59 = load i8*, i8** %58, align 8, !dbg !1335
  br label %61, !dbg !1337

; <label>:60:                                     ; preds = %49
  br label %61, !dbg !1338

; <label>:61:                                     ; preds = %60, %56
  %62 = phi i8* [ %59, %56 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), %60 ], !dbg !1340
  %63 = load i8*, i8** %7, align 8, !dbg !1342
  %64 = load i64, i64* %9, align 8, !dbg !1343
  call void @test_gzio(i8* %62, i8* %63, i64 %64), !dbg !1344
  %65 = load i8*, i8** %6, align 8, !dbg !1345
  %66 = load i64, i64* %8, align 8, !dbg !1346
  call void @test_deflate(i8* %65, i64 %66), !dbg !1347
  %67 = load i8*, i8** %6, align 8, !dbg !1348
  %68 = load i64, i64* %8, align 8, !dbg !1349
  %69 = load i8*, i8** %7, align 8, !dbg !1350
  %70 = load i64, i64* %9, align 8, !dbg !1351
  call void @test_inflate(i8* %67, i64 %68, i8* %69, i64 %70), !dbg !1352
  %71 = load i8*, i8** %6, align 8, !dbg !1353
  %72 = load i64, i64* %8, align 8, !dbg !1354
  %73 = load i8*, i8** %7, align 8, !dbg !1355
  %74 = load i64, i64* %9, align 8, !dbg !1356
  call void @test_large_deflate(i8* %71, i64 %72, i8* %73, i64 %74), !dbg !1357
  %75 = load i8*, i8** %6, align 8, !dbg !1358
  %76 = load i64, i64* %8, align 8, !dbg !1359
  %77 = load i8*, i8** %7, align 8, !dbg !1360
  %78 = load i64, i64* %9, align 8, !dbg !1361
  call void @test_large_inflate(i8* %75, i64 %76, i8* %77, i64 %78), !dbg !1362
  %79 = load i8*, i8** %6, align 8, !dbg !1363
  call void @test_flush(i8* %79, i64* %8), !dbg !1364
  %80 = load i8*, i8** %6, align 8, !dbg !1365
  %81 = load i64, i64* %8, align 8, !dbg !1366
  %82 = load i8*, i8** %7, align 8, !dbg !1367
  %83 = load i64, i64* %9, align 8, !dbg !1368
  call void @test_sync(i8* %80, i64 %81, i8* %82, i64 %83), !dbg !1369
  %84 = load i64, i64* %9, align 8, !dbg !1370
  store i64 %84, i64* %8, align 8, !dbg !1371
  %85 = load i8*, i8** %6, align 8, !dbg !1372
  %86 = load i64, i64* %8, align 8, !dbg !1373
  call void @test_dict_deflate(i8* %85, i64 %86), !dbg !1374
  %87 = load i8*, i8** %6, align 8, !dbg !1375
  %88 = load i64, i64* %8, align 8, !dbg !1376
  %89 = load i8*, i8** %7, align 8, !dbg !1377
  %90 = load i64, i64* %9, align 8, !dbg !1378
  call void @test_dict_inflate(i8* %87, i64 %88, i8* %89, i64 %90), !dbg !1379
  %91 = load i8*, i8** %6, align 8, !dbg !1380
  call void @free(i8* %91) #8, !dbg !1381
  %92 = load i8*, i8** %7, align 8, !dbg !1382
  call void @free(i8* %92) #8, !dbg !1383
  ret i32 0, !dbg !1384
}

declare i8* @zlibVersion() #3

declare i64 @zlibCompileFlags() #3

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #5

; Function Attrs: nounwind
declare void @free(i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!51, !52}
!llvm.ident = !{!53}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !22)
!1 = !DIFile(filename: "[inter]third-party--zlib-1.2.7--example.o.i", directory: "/home/lichi/Desktop/bedops/[task]third-party--zlib-1.2.7--example")
!2 = !{}
!3 = !{!4, !7, !12, !14, !15, !16, !17, !18, !19, !20, !21}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !5, line: 368, baseType: !6)
!5 = !DIFile(filename: "./zconf.h", directory: "/home/lichi/Desktop/bedops/[task]third-party--zlib-1.2.7--example")
!6 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bytef", file: !5, line: 374, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !5, line: 365, baseType: !11)
!11 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!16 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!17 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidpf", file: !5, line: 383, baseType: !15)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "uInt", file: !5, line: 367, baseType: !16)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!22 = !{!23, !29, !33, !39, !40, !46}
!23 = distinct !DIGlobalVariable(name: "hello", scope: !0, file: !24, line: 29, type: !25, isLocal: false, isDefinition: true, variable: [14 x i8]* @hello)
!24 = !DIFile(filename: "test/example.c", directory: "/home/lichi/Desktop/bedops/[task]third-party--zlib-1.2.7--example")
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 112, align: 8, elements: !27)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!27 = !{!28}
!28 = !DISubrange(count: 14)
!29 = distinct !DIGlobalVariable(name: "dictionary", scope: !0, file: !24, line: 34, type: !30, isLocal: false, isDefinition: true, variable: [6 x i8]* @dictionary)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 48, align: 8, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 6)
!33 = distinct !DIGlobalVariable(name: "myVersion", scope: !34, file: !24, line: 552, type: !38, isLocal: true, isDefinition: true, variable: i8** @main.myVersion)
!34 = distinct !DISubprogram(name: "main", scope: !24, file: !24, line: 545, type: !35, isLocal: false, isDefinition: true, scopeLine: 548, isOptimized: false, unit: !0, variables: !2)
!35 = !DISubroutineType(types: !36)
!36 = !{!14, !14, !37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!39 = distinct !DIGlobalVariable(name: "dictId", scope: !0, file: !24, line: 35, type: !4, isLocal: false, isDefinition: true, variable: i64* @dictId)
!40 = distinct !DIGlobalVariable(name: "zalloc", scope: !0, file: !24, line: 77, type: !41, isLocal: true, isDefinition: true, variable: i8* (i8*, i32, i32)** @zalloc)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_func", file: !42, line: 80, baseType: !43)
!42 = !DIFile(filename: "./zlib.h", directory: "/home/lichi/Desktop/bedops/[task]third-party--zlib-1.2.7--example")
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{!18, !18, !20, !20}
!46 = distinct !DIGlobalVariable(name: "zfree", scope: !0, file: !24, line: 78, type: !47, isLocal: true, isDefinition: true, variable: void (i8*, i8*)** @zfree)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "free_func", file: !42, line: 81, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !18, !18}
!51 = !{i32 2, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!54 = distinct !DISubprogram(name: "test_compress", scope: !24, file: !24, line: 88, type: !55, isLocal: false, isDefinition: true, scopeLine: 91, isOptimized: false, unit: !0, variables: !2)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !21, !4, !21, !4}
!57 = !DILocalVariable(name: "compr", arg: 1, scope: !54, file: !24, line: 89, type: !21)
!58 = !DIExpression()
!59 = !DILocation(line: 89, column: 11, scope: !54)
!60 = !DILocalVariable(name: "comprLen", arg: 2, scope: !54, file: !24, line: 90, type: !4)
!61 = !DILocation(line: 90, column: 11, scope: !54)
!62 = !DILocalVariable(name: "uncompr", arg: 3, scope: !54, file: !24, line: 89, type: !21)
!63 = !DILocation(line: 89, column: 19, scope: !54)
!64 = !DILocalVariable(name: "uncomprLen", arg: 4, scope: !54, file: !24, line: 90, type: !4)
!65 = !DILocation(line: 90, column: 21, scope: !54)
!66 = !DILocalVariable(name: "err", scope: !54, file: !24, line: 92, type: !14)
!67 = !DILocation(line: 92, column: 9, scope: !54)
!68 = !DILocalVariable(name: "len", scope: !54, file: !24, line: 93, type: !4)
!69 = !DILocation(line: 93, column: 11, scope: !54)
!70 = !DILocation(line: 93, column: 24, scope: !54)
!71 = !DILocation(line: 93, column: 37, scope: !54)
!72 = !DILocation(line: 95, column: 20, scope: !54)
!73 = !DILocation(line: 95, column: 59, scope: !54)
!74 = !DILocation(line: 95, column: 11, scope: !54)
!75 = !DILocation(line: 95, column: 9, scope: !54)
!76 = !DILocation(line: 96, column: 11, scope: !77)
!77 = distinct !DILexicalBlock(scope: !78, file: !24, line: 96, column: 11)
!78 = distinct !DILexicalBlock(scope: !54, file: !24, line: 96, column: 5)
!79 = !DILocation(line: 96, column: 15, scope: !77)
!80 = !DILocation(line: 96, column: 11, scope: !78)
!81 = !DILocation(line: 96, column: 4, scope: !82)
!82 = !DILexicalBlockFile(scope: !83, file: !24, discriminator: 1)
!83 = distinct !DILexicalBlock(scope: !77, file: !24, line: 96, column: 21)
!84 = !DILocation(line: 96, column: 36, scope: !82)
!85 = !DILocation(line: 96, column: 23, scope: !82)
!86 = !DILocation(line: 96, column: 42, scope: !87)
!87 = !DILexicalBlockFile(scope: !82, file: !24, discriminator: 2)
!88 = !DILocation(line: 96, column: 42, scope: !82)
!89 = !DILocation(line: 98, column: 19, scope: !54)
!90 = !DILocation(line: 98, column: 5, scope: !54)
!91 = !DILocation(line: 100, column: 22, scope: !54)
!92 = !DILocation(line: 100, column: 44, scope: !54)
!93 = !DILocation(line: 100, column: 51, scope: !54)
!94 = !DILocation(line: 100, column: 11, scope: !54)
!95 = !DILocation(line: 100, column: 9, scope: !54)
!96 = !DILocation(line: 101, column: 11, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !24, line: 101, column: 11)
!98 = distinct !DILexicalBlock(scope: !54, file: !24, line: 101, column: 5)
!99 = !DILocation(line: 101, column: 15, scope: !97)
!100 = !DILocation(line: 101, column: 11, scope: !98)
!101 = !DILocation(line: 101, column: 4, scope: !102)
!102 = !DILexicalBlockFile(scope: !103, file: !24, discriminator: 1)
!103 = distinct !DILexicalBlock(scope: !97, file: !24, line: 101, column: 21)
!104 = !DILocation(line: 101, column: 38, scope: !102)
!105 = !DILocation(line: 101, column: 23, scope: !102)
!106 = !DILocation(line: 101, column: 44, scope: !107)
!107 = !DILexicalBlockFile(scope: !102, file: !24, discriminator: 2)
!108 = !DILocation(line: 101, column: 44, scope: !102)
!109 = !DILocation(line: 103, column: 23, scope: !110)
!110 = distinct !DILexicalBlock(scope: !54, file: !24, line: 103, column: 9)
!111 = !DILocation(line: 103, column: 9, scope: !110)
!112 = !DILocation(line: 103, column: 9, scope: !54)
!113 = !DILocation(line: 104, column: 16, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !24, line: 103, column: 40)
!115 = !DILocation(line: 104, column: 9, scope: !114)
!116 = !DILocation(line: 105, column: 9, scope: !114)
!117 = !DILocation(line: 107, column: 46, scope: !118)
!118 = distinct !DILexicalBlock(scope: !110, file: !24, line: 106, column: 12)
!119 = !DILocation(line: 107, column: 9, scope: !118)
!120 = !DILocation(line: 109, column: 1, scope: !54)
!121 = distinct !DISubprogram(name: "test_gzio", scope: !24, file: !24, line: 114, type: !122, isLocal: false, isDefinition: true, scopeLine: 118, isOptimized: false, unit: !0, variables: !2)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !38, !21, !4}
!124 = !DILocalVariable(name: "fname", arg: 1, scope: !121, file: !24, line: 115, type: !38)
!125 = !DILocation(line: 115, column: 17, scope: !121)
!126 = !DILocalVariable(name: "uncompr", arg: 2, scope: !121, file: !24, line: 116, type: !21)
!127 = !DILocation(line: 116, column: 11, scope: !121)
!128 = !DILocalVariable(name: "uncomprLen", arg: 3, scope: !121, file: !24, line: 117, type: !4)
!129 = !DILocation(line: 117, column: 11, scope: !121)
!130 = !DILocalVariable(name: "err", scope: !121, file: !24, line: 122, type: !14)
!131 = !DILocation(line: 122, column: 9, scope: !121)
!132 = !DILocalVariable(name: "len", scope: !121, file: !24, line: 123, type: !14)
!133 = !DILocation(line: 123, column: 9, scope: !121)
!134 = !DILocation(line: 123, column: 20, scope: !121)
!135 = !DILocation(line: 123, column: 15, scope: !121)
!136 = !DILocation(line: 123, column: 33, scope: !121)
!137 = !DILocalVariable(name: "file", scope: !121, file: !24, line: 124, type: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "gzFile", file: !42, line: 1207, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gzFile_s", file: !42, line: 1670, size: 192, align: 64, elements: !141)
!141 = !{!142, !143, !145}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "have", scope: !140, file: !42, line: 1671, baseType: !16, size: 32, align: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !140, file: !42, line: 1672, baseType: !144, size: 64, align: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !140, file: !42, line: 1673, baseType: !17, size: 64, align: 64, offset: 128)
!146 = !DILocation(line: 124, column: 12, scope: !121)
!147 = !DILocalVariable(name: "pos", scope: !121, file: !24, line: 125, type: !17)
!148 = !DILocation(line: 125, column: 10, scope: !121)
!149 = !DILocation(line: 127, column: 19, scope: !121)
!150 = !DILocation(line: 127, column: 12, scope: !121)
!151 = !DILocation(line: 127, column: 10, scope: !121)
!152 = !DILocation(line: 128, column: 9, scope: !153)
!153 = distinct !DILexicalBlock(scope: !121, file: !24, line: 128, column: 9)
!154 = !DILocation(line: 128, column: 14, scope: !153)
!155 = !DILocation(line: 128, column: 9, scope: !121)
!156 = !DILocation(line: 129, column: 16, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !24, line: 128, column: 22)
!158 = !DILocation(line: 129, column: 9, scope: !157)
!159 = !DILocation(line: 130, column: 9, scope: !157)
!160 = !DILocation(line: 132, column: 12, scope: !121)
!161 = !DILocation(line: 132, column: 5, scope: !121)
!162 = !DILocation(line: 133, column: 16, scope: !163)
!163 = distinct !DILexicalBlock(scope: !121, file: !24, line: 133, column: 9)
!164 = !DILocation(line: 133, column: 9, scope: !163)
!165 = !DILocation(line: 133, column: 30, scope: !163)
!166 = !DILocation(line: 133, column: 9, scope: !121)
!167 = !DILocation(line: 134, column: 16, scope: !168)
!168 = distinct !DILexicalBlock(scope: !163, file: !24, line: 133, column: 36)
!169 = !DILocation(line: 134, column: 52, scope: !168)
!170 = !DILocation(line: 134, column: 44, scope: !168)
!171 = !DILocation(line: 134, column: 9, scope: !172)
!172 = !DILexicalBlockFile(scope: !168, file: !24, discriminator: 1)
!173 = !DILocation(line: 135, column: 9, scope: !168)
!174 = !DILocation(line: 137, column: 18, scope: !175)
!175 = distinct !DILexicalBlock(scope: !121, file: !24, line: 137, column: 9)
!176 = !DILocation(line: 137, column: 9, scope: !175)
!177 = !DILocation(line: 137, column: 42, scope: !175)
!178 = !DILocation(line: 137, column: 9, scope: !121)
!179 = !DILocation(line: 138, column: 16, scope: !180)
!180 = distinct !DILexicalBlock(scope: !175, file: !24, line: 137, column: 48)
!181 = !DILocation(line: 138, column: 54, scope: !180)
!182 = !DILocation(line: 138, column: 46, scope: !180)
!183 = !DILocation(line: 138, column: 9, scope: !184)
!184 = !DILexicalBlockFile(scope: !180, file: !24, discriminator: 1)
!185 = !DILocation(line: 139, column: 9, scope: !180)
!186 = !DILocation(line: 141, column: 12, scope: !121)
!187 = !DILocation(line: 141, column: 5, scope: !121)
!188 = !DILocation(line: 142, column: 13, scope: !121)
!189 = !DILocation(line: 142, column: 5, scope: !121)
!190 = !DILocation(line: 144, column: 19, scope: !121)
!191 = !DILocation(line: 144, column: 12, scope: !121)
!192 = !DILocation(line: 144, column: 10, scope: !121)
!193 = !DILocation(line: 145, column: 9, scope: !194)
!194 = distinct !DILexicalBlock(scope: !121, file: !24, line: 145, column: 9)
!195 = !DILocation(line: 145, column: 14, scope: !194)
!196 = !DILocation(line: 145, column: 9, scope: !121)
!197 = !DILocation(line: 146, column: 16, scope: !198)
!198 = distinct !DILexicalBlock(scope: !194, file: !24, line: 145, column: 22)
!199 = !DILocation(line: 146, column: 9, scope: !198)
!200 = !DILocation(line: 147, column: 9, scope: !198)
!201 = !DILocation(line: 149, column: 19, scope: !121)
!202 = !DILocation(line: 149, column: 5, scope: !121)
!203 = !DILocation(line: 151, column: 16, scope: !204)
!204 = distinct !DILexicalBlock(scope: !121, file: !24, line: 151, column: 9)
!205 = !DILocation(line: 151, column: 22, scope: !204)
!206 = !DILocation(line: 151, column: 41, scope: !204)
!207 = !DILocation(line: 151, column: 31, scope: !204)
!208 = !DILocation(line: 151, column: 9, scope: !204)
!209 = !DILocation(line: 151, column: 56, scope: !204)
!210 = !DILocation(line: 151, column: 53, scope: !204)
!211 = !DILocation(line: 151, column: 9, scope: !121)
!212 = !DILocation(line: 152, column: 16, scope: !213)
!213 = distinct !DILexicalBlock(scope: !204, file: !24, line: 151, column: 61)
!214 = !DILocation(line: 152, column: 52, scope: !213)
!215 = !DILocation(line: 152, column: 44, scope: !213)
!216 = !DILocation(line: 152, column: 9, scope: !217)
!217 = !DILexicalBlockFile(scope: !213, file: !24, discriminator: 1)
!218 = !DILocation(line: 153, column: 9, scope: !213)
!219 = !DILocation(line: 155, column: 23, scope: !220)
!220 = distinct !DILexicalBlock(scope: !121, file: !24, line: 155, column: 9)
!221 = !DILocation(line: 155, column: 9, scope: !220)
!222 = !DILocation(line: 155, column: 9, scope: !121)
!223 = !DILocation(line: 156, column: 16, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !24, line: 155, column: 40)
!225 = !DILocation(line: 156, column: 51, scope: !224)
!226 = !DILocation(line: 156, column: 9, scope: !224)
!227 = !DILocation(line: 157, column: 9, scope: !224)
!228 = !DILocation(line: 159, column: 41, scope: !229)
!229 = distinct !DILexicalBlock(scope: !220, file: !24, line: 158, column: 12)
!230 = !DILocation(line: 159, column: 9, scope: !229)
!231 = !DILocation(line: 162, column: 18, scope: !121)
!232 = !DILocation(line: 162, column: 11, scope: !121)
!233 = !DILocation(line: 162, column: 9, scope: !121)
!234 = !DILocation(line: 163, column: 9, scope: !235)
!235 = distinct !DILexicalBlock(scope: !121, file: !24, line: 163, column: 9)
!236 = !DILocation(line: 163, column: 13, scope: !235)
!237 = !DILocation(line: 163, column: 18, scope: !235)
!238 = !DILocation(line: 163, column: 28, scope: !239)
!239 = !DILexicalBlockFile(scope: !235, file: !24, discriminator: 1)
!240 = !DILocation(line: 163, column: 21, scope: !239)
!241 = !DILocation(line: 163, column: 37, scope: !239)
!242 = !DILocation(line: 163, column: 34, scope: !239)
!243 = !DILocation(line: 163, column: 9, scope: !239)
!244 = !DILocation(line: 164, column: 16, scope: !245)
!245 = distinct !DILexicalBlock(scope: !235, file: !24, line: 163, column: 42)
!246 = !DILocation(line: 165, column: 23, scope: !245)
!247 = !DILocation(line: 165, column: 41, scope: !245)
!248 = !DILocation(line: 165, column: 34, scope: !245)
!249 = !DILocation(line: 164, column: 9, scope: !245)
!250 = !DILocation(line: 166, column: 9, scope: !245)
!251 = !DILocation(line: 169, column: 11, scope: !252)
!252 = distinct !DILexicalBlock(scope: !121, file: !24, line: 169, column: 9)
!253 = !DILocation(line: 169, column: 18, scope: !252)
!254 = !DILocation(line: 169, column: 10, scope: !252)
!255 = !DILocation(line: 169, column: 27, scope: !256)
!256 = !DILexicalBlockFile(scope: !252, file: !24, discriminator: 1)
!257 = !DILocation(line: 169, column: 34, scope: !256)
!258 = !DILocation(line: 169, column: 38, scope: !256)
!259 = !DILocation(line: 169, column: 43, scope: !256)
!260 = !DILocation(line: 169, column: 50, scope: !256)
!261 = !DILocation(line: 169, column: 53, scope: !256)
!262 = !DILocation(line: 169, column: 60, scope: !256)
!263 = !DILocation(line: 169, column: 67, scope: !256)
!264 = !DILocation(line: 169, column: 72, scope: !256)
!265 = !DILocation(line: 169, column: 57, scope: !256)
!266 = !DILocation(line: 169, column: 25, scope: !256)
!267 = !DILocation(line: 169, column: 10, scope: !256)
!268 = !DILocation(line: 169, column: 85, scope: !269)
!269 = !DILexicalBlockFile(scope: !252, file: !24, discriminator: 2)
!270 = !DILocation(line: 169, column: 78, scope: !269)
!271 = !DILocation(line: 169, column: 10, scope: !269)
!272 = !DILocation(line: 169, column: 10, scope: !273)
!273 = !DILexicalBlockFile(scope: !252, file: !24, discriminator: 3)
!274 = !DILocation(line: 169, column: 92, scope: !273)
!275 = !DILocation(line: 169, column: 9, scope: !273)
!276 = !DILocation(line: 170, column: 16, scope: !277)
!277 = distinct !DILexicalBlock(scope: !252, file: !24, line: 169, column: 100)
!278 = !DILocation(line: 170, column: 9, scope: !277)
!279 = !DILocation(line: 171, column: 9, scope: !277)
!280 = !DILocation(line: 174, column: 23, scope: !281)
!281 = distinct !DILexicalBlock(scope: !121, file: !24, line: 174, column: 9)
!282 = !DILocation(line: 174, column: 9, scope: !281)
!283 = !DILocation(line: 174, column: 29, scope: !281)
!284 = !DILocation(line: 174, column: 9, scope: !121)
!285 = !DILocation(line: 175, column: 16, scope: !286)
!286 = distinct !DILexicalBlock(scope: !281, file: !24, line: 174, column: 37)
!287 = !DILocation(line: 175, column: 9, scope: !286)
!288 = !DILocation(line: 176, column: 9, scope: !286)
!289 = !DILocation(line: 179, column: 12, scope: !121)
!290 = !DILocation(line: 179, column: 25, scope: !121)
!291 = !DILocation(line: 179, column: 39, scope: !121)
!292 = !DILocation(line: 179, column: 34, scope: !121)
!293 = !DILocation(line: 179, column: 5, scope: !121)
!294 = !DILocation(line: 180, column: 23, scope: !295)
!295 = distinct !DILexicalBlock(scope: !121, file: !24, line: 180, column: 9)
!296 = !DILocation(line: 180, column: 9, scope: !295)
!297 = !DILocation(line: 180, column: 32, scope: !295)
!298 = !DILocation(line: 180, column: 9, scope: !121)
!299 = !DILocation(line: 181, column: 16, scope: !300)
!300 = distinct !DILexicalBlock(scope: !295, file: !24, line: 180, column: 38)
!301 = !DILocation(line: 181, column: 65, scope: !300)
!302 = !DILocation(line: 181, column: 57, scope: !300)
!303 = !DILocation(line: 181, column: 9, scope: !304)
!304 = !DILexicalBlockFile(scope: !300, file: !24, discriminator: 1)
!305 = !DILocation(line: 182, column: 9, scope: !300)
!306 = !DILocation(line: 184, column: 23, scope: !307)
!307 = distinct !DILexicalBlock(scope: !121, file: !24, line: 184, column: 9)
!308 = !DILocation(line: 184, column: 9, scope: !307)
!309 = !DILocation(line: 184, column: 9, scope: !121)
!310 = !DILocation(line: 185, column: 16, scope: !311)
!311 = distinct !DILexicalBlock(scope: !307, file: !24, line: 184, column: 44)
!312 = !DILocation(line: 185, column: 9, scope: !311)
!313 = !DILocation(line: 186, column: 9, scope: !311)
!314 = !DILocation(line: 188, column: 54, scope: !315)
!315 = distinct !DILexicalBlock(scope: !307, file: !24, line: 187, column: 12)
!316 = !DILocation(line: 188, column: 9, scope: !315)
!317 = !DILocation(line: 191, column: 13, scope: !121)
!318 = !DILocation(line: 191, column: 5, scope: !121)
!319 = !DILocation(line: 193, column: 1, scope: !121)
!320 = distinct !DISubprogram(name: "test_deflate", scope: !24, file: !24, line: 200, type: !321, isLocal: false, isDefinition: true, scopeLine: 203, isOptimized: false, unit: !0, variables: !2)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !21, !4}
!323 = !DILocalVariable(name: "compr", arg: 1, scope: !320, file: !24, line: 201, type: !21)
!324 = !DILocation(line: 201, column: 11, scope: !320)
!325 = !DILocalVariable(name: "comprLen", arg: 2, scope: !320, file: !24, line: 202, type: !4)
!326 = !DILocation(line: 202, column: 11, scope: !320)
!327 = !DILocalVariable(name: "c_stream", scope: !320, file: !24, line: 204, type: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !42, line: 104, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !42, line: 85, size: 896, align: 64, elements: !330)
!330 = !{!331, !332, !333, !334, !335, !336, !337, !338, !343, !344, !345, !346, !347, !348}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !329, file: !42, line: 86, baseType: !19, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !329, file: !42, line: 87, baseType: !20, size: 32, align: 32, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !329, file: !42, line: 88, baseType: !4, size: 64, align: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !329, file: !42, line: 90, baseType: !19, size: 64, align: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !329, file: !42, line: 91, baseType: !20, size: 32, align: 32, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !329, file: !42, line: 92, baseType: !4, size: 64, align: 64, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !329, file: !42, line: 94, baseType: !12, size: 64, align: 64, offset: 384)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !329, file: !42, line: 95, baseType: !339, size: 64, align: 64, offset: 448)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !42, line: 1742, size: 32, align: 32, elements: !341)
!341 = !{!342}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !340, file: !42, line: 1742, baseType: !14, size: 32, align: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "zalloc", scope: !329, file: !42, line: 97, baseType: !41, size: 64, align: 64, offset: 512)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "zfree", scope: !329, file: !42, line: 98, baseType: !47, size: 64, align: 64, offset: 576)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !329, file: !42, line: 99, baseType: !18, size: 64, align: 64, offset: 640)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !329, file: !42, line: 101, baseType: !14, size: 32, align: 32, offset: 704)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !329, file: !42, line: 102, baseType: !4, size: 64, align: 64, offset: 768)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !329, file: !42, line: 103, baseType: !4, size: 64, align: 64, offset: 832)
!349 = !DILocation(line: 204, column: 14, scope: !320)
!350 = !DILocalVariable(name: "err", scope: !320, file: !24, line: 205, type: !14)
!351 = !DILocation(line: 205, column: 9, scope: !320)
!352 = !DILocalVariable(name: "len", scope: !320, file: !24, line: 206, type: !4)
!353 = !DILocation(line: 206, column: 11, scope: !320)
!354 = !DILocation(line: 206, column: 24, scope: !320)
!355 = !DILocation(line: 206, column: 37, scope: !320)
!356 = !DILocation(line: 208, column: 23, scope: !320)
!357 = !DILocation(line: 208, column: 14, scope: !320)
!358 = !DILocation(line: 208, column: 21, scope: !320)
!359 = !DILocation(line: 209, column: 22, scope: !320)
!360 = !DILocation(line: 209, column: 14, scope: !320)
!361 = !DILocation(line: 209, column: 20, scope: !320)
!362 = !DILocation(line: 210, column: 14, scope: !320)
!363 = !DILocation(line: 210, column: 21, scope: !320)
!364 = !DILocation(line: 212, column: 11, scope: !320)
!365 = !DILocation(line: 212, column: 9, scope: !320)
!366 = !DILocation(line: 213, column: 11, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !24, line: 213, column: 11)
!368 = distinct !DILexicalBlock(scope: !320, file: !24, line: 213, column: 5)
!369 = !DILocation(line: 213, column: 15, scope: !367)
!370 = !DILocation(line: 213, column: 11, scope: !368)
!371 = !DILocation(line: 213, column: 4, scope: !372)
!372 = !DILexicalBlockFile(scope: !373, file: !24, discriminator: 1)
!373 = distinct !DILexicalBlock(scope: !367, file: !24, line: 213, column: 21)
!374 = !DILocation(line: 213, column: 39, scope: !372)
!375 = !DILocation(line: 213, column: 23, scope: !372)
!376 = !DILocation(line: 213, column: 45, scope: !377)
!377 = !DILexicalBlockFile(scope: !372, file: !24, discriminator: 2)
!378 = !DILocation(line: 213, column: 45, scope: !372)
!379 = !DILocation(line: 215, column: 14, scope: !320)
!380 = !DILocation(line: 215, column: 22, scope: !320)
!381 = !DILocation(line: 216, column: 25, scope: !320)
!382 = !DILocation(line: 216, column: 14, scope: !320)
!383 = !DILocation(line: 216, column: 23, scope: !320)
!384 = !DILocation(line: 218, column: 5, scope: !320)
!385 = !DILocation(line: 218, column: 21, scope: !386)
!386 = !DILexicalBlockFile(scope: !320, file: !24, discriminator: 1)
!387 = !DILocation(line: 218, column: 33, scope: !386)
!388 = !DILocation(line: 218, column: 30, scope: !386)
!389 = !DILocation(line: 218, column: 37, scope: !386)
!390 = !DILocation(line: 218, column: 49, scope: !391)
!391 = !DILexicalBlockFile(scope: !320, file: !24, discriminator: 2)
!392 = !DILocation(line: 218, column: 61, scope: !391)
!393 = !DILocation(line: 218, column: 59, scope: !391)
!394 = !DILocation(line: 218, column: 5, scope: !395)
!395 = !DILexicalBlockFile(scope: !320, file: !24, discriminator: 3)
!396 = !DILocation(line: 219, column: 38, scope: !397)
!397 = distinct !DILexicalBlock(scope: !320, file: !24, line: 218, column: 71)
!398 = !DILocation(line: 219, column: 48, scope: !397)
!399 = !DILocation(line: 219, column: 18, scope: !397)
!400 = !DILocation(line: 219, column: 27, scope: !397)
!401 = !DILocation(line: 220, column: 15, scope: !397)
!402 = !DILocation(line: 220, column: 13, scope: !397)
!403 = !DILocation(line: 221, column: 15, scope: !404)
!404 = distinct !DILexicalBlock(scope: !405, file: !24, line: 221, column: 15)
!405 = distinct !DILexicalBlock(scope: !397, file: !24, line: 221, column: 9)
!406 = !DILocation(line: 221, column: 19, scope: !404)
!407 = !DILocation(line: 221, column: 15, scope: !405)
!408 = !DILocation(line: 221, column: 8, scope: !409)
!409 = !DILexicalBlockFile(scope: !410, file: !24, discriminator: 1)
!410 = distinct !DILexicalBlock(scope: !404, file: !24, line: 221, column: 25)
!411 = !DILocation(line: 221, column: 39, scope: !409)
!412 = !DILocation(line: 221, column: 27, scope: !409)
!413 = !DILocation(line: 221, column: 45, scope: !414)
!414 = !DILexicalBlockFile(scope: !409, file: !24, discriminator: 2)
!415 = !DILocation(line: 221, column: 45, scope: !409)
!416 = !DILocation(line: 218, column: 5, scope: !417)
!417 = !DILexicalBlockFile(scope: !320, file: !24, discriminator: 4)
!418 = distinct !{!418, !384}
!419 = !DILocation(line: 224, column: 5, scope: !320)
!420 = !DILocation(line: 225, column: 18, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !24, line: 224, column: 14)
!422 = distinct !DILexicalBlock(scope: !423, file: !24, line: 224, column: 5)
!423 = distinct !DILexicalBlock(scope: !320, file: !24, line: 224, column: 5)
!424 = !DILocation(line: 225, column: 28, scope: !421)
!425 = !DILocation(line: 226, column: 15, scope: !421)
!426 = !DILocation(line: 226, column: 13, scope: !421)
!427 = !DILocation(line: 227, column: 13, scope: !428)
!428 = distinct !DILexicalBlock(scope: !421, file: !24, line: 227, column: 13)
!429 = !DILocation(line: 227, column: 17, scope: !428)
!430 = !DILocation(line: 227, column: 13, scope: !421)
!431 = !DILocation(line: 227, column: 23, scope: !432)
!432 = !DILexicalBlockFile(scope: !428, file: !24, discriminator: 1)
!433 = !DILocation(line: 228, column: 15, scope: !434)
!434 = distinct !DILexicalBlock(scope: !435, file: !24, line: 228, column: 15)
!435 = distinct !DILexicalBlock(scope: !421, file: !24, line: 228, column: 9)
!436 = !DILocation(line: 228, column: 19, scope: !434)
!437 = !DILocation(line: 228, column: 15, scope: !435)
!438 = !DILocation(line: 228, column: 8, scope: !439)
!439 = !DILexicalBlockFile(scope: !440, file: !24, discriminator: 1)
!440 = distinct !DILexicalBlock(scope: !434, file: !24, line: 228, column: 25)
!441 = !DILocation(line: 228, column: 39, scope: !439)
!442 = !DILocation(line: 228, column: 27, scope: !439)
!443 = !DILocation(line: 228, column: 45, scope: !444)
!444 = !DILexicalBlockFile(scope: !439, file: !24, discriminator: 2)
!445 = !DILocation(line: 228, column: 45, scope: !439)
!446 = !DILocation(line: 224, column: 5, scope: !447)
!447 = !DILexicalBlockFile(scope: !422, file: !24, discriminator: 1)
!448 = distinct !{!448, !419}
!449 = !DILocation(line: 231, column: 11, scope: !320)
!450 = !DILocation(line: 231, column: 9, scope: !320)
!451 = !DILocation(line: 232, column: 11, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !24, line: 232, column: 11)
!453 = distinct !DILexicalBlock(scope: !320, file: !24, line: 232, column: 5)
!454 = !DILocation(line: 232, column: 15, scope: !452)
!455 = !DILocation(line: 232, column: 11, scope: !453)
!456 = !DILocation(line: 232, column: 4, scope: !457)
!457 = !DILexicalBlockFile(scope: !458, file: !24, discriminator: 1)
!458 = distinct !DILexicalBlock(scope: !452, file: !24, line: 232, column: 21)
!459 = !DILocation(line: 232, column: 38, scope: !457)
!460 = !DILocation(line: 232, column: 23, scope: !457)
!461 = !DILocation(line: 232, column: 44, scope: !462)
!462 = !DILexicalBlockFile(scope: !457, file: !24, discriminator: 2)
!463 = !DILocation(line: 232, column: 44, scope: !457)
!464 = !DILocation(line: 233, column: 1, scope: !320)
!465 = distinct !DISubprogram(name: "test_inflate", scope: !24, file: !24, line: 238, type: !55, isLocal: false, isDefinition: true, scopeLine: 241, isOptimized: false, unit: !0, variables: !2)
!466 = !DILocalVariable(name: "compr", arg: 1, scope: !465, file: !24, line: 239, type: !21)
!467 = !DILocation(line: 239, column: 11, scope: !465)
!468 = !DILocalVariable(name: "comprLen", arg: 2, scope: !465, file: !24, line: 240, type: !4)
!469 = !DILocation(line: 240, column: 11, scope: !465)
!470 = !DILocalVariable(name: "uncompr", arg: 3, scope: !465, file: !24, line: 239, type: !21)
!471 = !DILocation(line: 239, column: 19, scope: !465)
!472 = !DILocalVariable(name: "uncomprLen", arg: 4, scope: !465, file: !24, line: 240, type: !4)
!473 = !DILocation(line: 240, column: 21, scope: !465)
!474 = !DILocalVariable(name: "err", scope: !465, file: !24, line: 242, type: !14)
!475 = !DILocation(line: 242, column: 9, scope: !465)
!476 = !DILocalVariable(name: "d_stream", scope: !465, file: !24, line: 243, type: !328)
!477 = !DILocation(line: 243, column: 14, scope: !465)
!478 = !DILocation(line: 245, column: 19, scope: !465)
!479 = !DILocation(line: 245, column: 5, scope: !465)
!480 = !DILocation(line: 247, column: 23, scope: !465)
!481 = !DILocation(line: 247, column: 14, scope: !465)
!482 = !DILocation(line: 247, column: 21, scope: !465)
!483 = !DILocation(line: 248, column: 22, scope: !465)
!484 = !DILocation(line: 248, column: 14, scope: !465)
!485 = !DILocation(line: 248, column: 20, scope: !465)
!486 = !DILocation(line: 249, column: 14, scope: !465)
!487 = !DILocation(line: 249, column: 21, scope: !465)
!488 = !DILocation(line: 251, column: 24, scope: !465)
!489 = !DILocation(line: 251, column: 14, scope: !465)
!490 = !DILocation(line: 251, column: 22, scope: !465)
!491 = !DILocation(line: 252, column: 14, scope: !465)
!492 = !DILocation(line: 252, column: 23, scope: !465)
!493 = !DILocation(line: 253, column: 25, scope: !465)
!494 = !DILocation(line: 253, column: 14, scope: !465)
!495 = !DILocation(line: 253, column: 23, scope: !465)
!496 = !DILocation(line: 255, column: 11, scope: !465)
!497 = !DILocation(line: 255, column: 9, scope: !465)
!498 = !DILocation(line: 256, column: 11, scope: !499)
!499 = distinct !DILexicalBlock(scope: !500, file: !24, line: 256, column: 11)
!500 = distinct !DILexicalBlock(scope: !465, file: !24, line: 256, column: 5)
!501 = !DILocation(line: 256, column: 15, scope: !499)
!502 = !DILocation(line: 256, column: 11, scope: !500)
!503 = !DILocation(line: 256, column: 4, scope: !504)
!504 = !DILexicalBlockFile(scope: !505, file: !24, discriminator: 1)
!505 = distinct !DILexicalBlock(scope: !499, file: !24, line: 256, column: 21)
!506 = !DILocation(line: 256, column: 39, scope: !504)
!507 = !DILocation(line: 256, column: 23, scope: !504)
!508 = !DILocation(line: 256, column: 45, scope: !509)
!509 = !DILexicalBlockFile(scope: !504, file: !24, discriminator: 2)
!510 = !DILocation(line: 256, column: 45, scope: !504)
!511 = !DILocation(line: 258, column: 5, scope: !465)
!512 = !DILocation(line: 258, column: 21, scope: !513)
!513 = !DILexicalBlockFile(scope: !465, file: !24, discriminator: 1)
!514 = !DILocation(line: 258, column: 33, scope: !513)
!515 = !DILocation(line: 258, column: 31, scope: !513)
!516 = !DILocation(line: 258, column: 44, scope: !513)
!517 = !DILocation(line: 258, column: 56, scope: !518)
!518 = !DILexicalBlockFile(scope: !465, file: !24, discriminator: 2)
!519 = !DILocation(line: 258, column: 67, scope: !518)
!520 = !DILocation(line: 258, column: 65, scope: !518)
!521 = !DILocation(line: 258, column: 5, scope: !522)
!522 = !DILexicalBlockFile(scope: !465, file: !24, discriminator: 3)
!523 = !DILocation(line: 259, column: 38, scope: !524)
!524 = distinct !DILexicalBlock(scope: !465, file: !24, line: 258, column: 77)
!525 = !DILocation(line: 259, column: 48, scope: !524)
!526 = !DILocation(line: 259, column: 18, scope: !524)
!527 = !DILocation(line: 259, column: 27, scope: !524)
!528 = !DILocation(line: 260, column: 15, scope: !524)
!529 = !DILocation(line: 260, column: 13, scope: !524)
!530 = !DILocation(line: 261, column: 13, scope: !531)
!531 = distinct !DILexicalBlock(scope: !524, file: !24, line: 261, column: 13)
!532 = !DILocation(line: 261, column: 17, scope: !531)
!533 = !DILocation(line: 261, column: 13, scope: !524)
!534 = !DILocation(line: 261, column: 23, scope: !535)
!535 = !DILexicalBlockFile(scope: !531, file: !24, discriminator: 1)
!536 = !DILocation(line: 262, column: 15, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !24, line: 262, column: 15)
!538 = distinct !DILexicalBlock(scope: !524, file: !24, line: 262, column: 9)
!539 = !DILocation(line: 262, column: 19, scope: !537)
!540 = !DILocation(line: 262, column: 15, scope: !538)
!541 = !DILocation(line: 262, column: 8, scope: !542)
!542 = !DILexicalBlockFile(scope: !543, file: !24, discriminator: 1)
!543 = distinct !DILexicalBlock(scope: !537, file: !24, line: 262, column: 25)
!544 = !DILocation(line: 262, column: 39, scope: !542)
!545 = !DILocation(line: 262, column: 27, scope: !542)
!546 = !DILocation(line: 262, column: 45, scope: !547)
!547 = !DILexicalBlockFile(scope: !542, file: !24, discriminator: 2)
!548 = !DILocation(line: 262, column: 45, scope: !542)
!549 = !DILocation(line: 258, column: 5, scope: !550)
!550 = !DILexicalBlockFile(scope: !465, file: !24, discriminator: 4)
!551 = distinct !{!551, !511}
!552 = !DILocation(line: 265, column: 11, scope: !465)
!553 = !DILocation(line: 265, column: 9, scope: !465)
!554 = !DILocation(line: 266, column: 11, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !24, line: 266, column: 11)
!556 = distinct !DILexicalBlock(scope: !465, file: !24, line: 266, column: 5)
!557 = !DILocation(line: 266, column: 15, scope: !555)
!558 = !DILocation(line: 266, column: 11, scope: !556)
!559 = !DILocation(line: 266, column: 4, scope: !560)
!560 = !DILexicalBlockFile(scope: !561, file: !24, discriminator: 1)
!561 = distinct !DILexicalBlock(scope: !555, file: !24, line: 266, column: 21)
!562 = !DILocation(line: 266, column: 38, scope: !560)
!563 = !DILocation(line: 266, column: 23, scope: !560)
!564 = !DILocation(line: 266, column: 44, scope: !565)
!565 = !DILexicalBlockFile(scope: !560, file: !24, discriminator: 2)
!566 = !DILocation(line: 266, column: 44, scope: !560)
!567 = !DILocation(line: 268, column: 23, scope: !568)
!568 = distinct !DILexicalBlock(scope: !465, file: !24, line: 268, column: 9)
!569 = !DILocation(line: 268, column: 9, scope: !568)
!570 = !DILocation(line: 268, column: 9, scope: !465)
!571 = !DILocation(line: 269, column: 16, scope: !572)
!572 = distinct !DILexicalBlock(scope: !568, file: !24, line: 268, column: 40)
!573 = !DILocation(line: 269, column: 9, scope: !572)
!574 = !DILocation(line: 270, column: 9, scope: !572)
!575 = !DILocation(line: 272, column: 43, scope: !576)
!576 = distinct !DILexicalBlock(scope: !568, file: !24, line: 271, column: 12)
!577 = !DILocation(line: 272, column: 9, scope: !576)
!578 = !DILocation(line: 274, column: 1, scope: !465)
!579 = distinct !DISubprogram(name: "test_large_deflate", scope: !24, file: !24, line: 279, type: !55, isLocal: false, isDefinition: true, scopeLine: 282, isOptimized: false, unit: !0, variables: !2)
!580 = !DILocalVariable(name: "compr", arg: 1, scope: !579, file: !24, line: 280, type: !21)
!581 = !DILocation(line: 280, column: 11, scope: !579)
!582 = !DILocalVariable(name: "comprLen", arg: 2, scope: !579, file: !24, line: 281, type: !4)
!583 = !DILocation(line: 281, column: 11, scope: !579)
!584 = !DILocalVariable(name: "uncompr", arg: 3, scope: !579, file: !24, line: 280, type: !21)
!585 = !DILocation(line: 280, column: 19, scope: !579)
!586 = !DILocalVariable(name: "uncomprLen", arg: 4, scope: !579, file: !24, line: 281, type: !4)
!587 = !DILocation(line: 281, column: 21, scope: !579)
!588 = !DILocalVariable(name: "c_stream", scope: !579, file: !24, line: 283, type: !328)
!589 = !DILocation(line: 283, column: 14, scope: !579)
!590 = !DILocalVariable(name: "err", scope: !579, file: !24, line: 284, type: !14)
!591 = !DILocation(line: 284, column: 9, scope: !579)
!592 = !DILocation(line: 286, column: 23, scope: !579)
!593 = !DILocation(line: 286, column: 14, scope: !579)
!594 = !DILocation(line: 286, column: 21, scope: !579)
!595 = !DILocation(line: 287, column: 22, scope: !579)
!596 = !DILocation(line: 287, column: 14, scope: !579)
!597 = !DILocation(line: 287, column: 20, scope: !579)
!598 = !DILocation(line: 288, column: 14, scope: !579)
!599 = !DILocation(line: 288, column: 21, scope: !579)
!600 = !DILocation(line: 290, column: 11, scope: !579)
!601 = !DILocation(line: 290, column: 9, scope: !579)
!602 = !DILocation(line: 291, column: 11, scope: !603)
!603 = distinct !DILexicalBlock(scope: !604, file: !24, line: 291, column: 11)
!604 = distinct !DILexicalBlock(scope: !579, file: !24, line: 291, column: 5)
!605 = !DILocation(line: 291, column: 15, scope: !603)
!606 = !DILocation(line: 291, column: 11, scope: !604)
!607 = !DILocation(line: 291, column: 4, scope: !608)
!608 = !DILexicalBlockFile(scope: !609, file: !24, discriminator: 1)
!609 = distinct !DILexicalBlock(scope: !603, file: !24, line: 291, column: 21)
!610 = !DILocation(line: 291, column: 39, scope: !608)
!611 = !DILocation(line: 291, column: 23, scope: !608)
!612 = !DILocation(line: 291, column: 45, scope: !613)
!613 = !DILexicalBlockFile(scope: !608, file: !24, discriminator: 2)
!614 = !DILocation(line: 291, column: 45, scope: !608)
!615 = !DILocation(line: 293, column: 25, scope: !579)
!616 = !DILocation(line: 293, column: 14, scope: !579)
!617 = !DILocation(line: 293, column: 23, scope: !579)
!618 = !DILocation(line: 294, column: 32, scope: !579)
!619 = !DILocation(line: 294, column: 26, scope: !579)
!620 = !DILocation(line: 294, column: 14, scope: !579)
!621 = !DILocation(line: 294, column: 24, scope: !579)
!622 = !DILocation(line: 299, column: 24, scope: !579)
!623 = !DILocation(line: 299, column: 14, scope: !579)
!624 = !DILocation(line: 299, column: 22, scope: !579)
!625 = !DILocation(line: 300, column: 31, scope: !579)
!626 = !DILocation(line: 300, column: 25, scope: !579)
!627 = !DILocation(line: 300, column: 14, scope: !579)
!628 = !DILocation(line: 300, column: 23, scope: !579)
!629 = !DILocation(line: 301, column: 11, scope: !579)
!630 = !DILocation(line: 301, column: 9, scope: !579)
!631 = !DILocation(line: 302, column: 11, scope: !632)
!632 = distinct !DILexicalBlock(scope: !633, file: !24, line: 302, column: 11)
!633 = distinct !DILexicalBlock(scope: !579, file: !24, line: 302, column: 5)
!634 = !DILocation(line: 302, column: 15, scope: !632)
!635 = !DILocation(line: 302, column: 11, scope: !633)
!636 = !DILocation(line: 302, column: 4, scope: !637)
!637 = !DILexicalBlockFile(scope: !638, file: !24, discriminator: 1)
!638 = distinct !DILexicalBlock(scope: !632, file: !24, line: 302, column: 21)
!639 = !DILocation(line: 302, column: 35, scope: !637)
!640 = !DILocation(line: 302, column: 23, scope: !637)
!641 = !DILocation(line: 302, column: 41, scope: !642)
!642 = !DILexicalBlockFile(scope: !637, file: !24, discriminator: 2)
!643 = !DILocation(line: 302, column: 41, scope: !637)
!644 = !DILocation(line: 303, column: 18, scope: !645)
!645 = distinct !DILexicalBlock(scope: !579, file: !24, line: 303, column: 9)
!646 = !DILocation(line: 303, column: 27, scope: !645)
!647 = !DILocation(line: 303, column: 9, scope: !579)
!648 = !DILocation(line: 304, column: 16, scope: !649)
!649 = distinct !DILexicalBlock(scope: !645, file: !24, line: 303, column: 33)
!650 = !DILocation(line: 304, column: 9, scope: !649)
!651 = !DILocation(line: 305, column: 9, scope: !649)
!652 = !DILocation(line: 309, column: 5, scope: !579)
!653 = !DILocation(line: 310, column: 24, scope: !579)
!654 = !DILocation(line: 310, column: 14, scope: !579)
!655 = !DILocation(line: 310, column: 22, scope: !579)
!656 = !DILocation(line: 311, column: 31, scope: !579)
!657 = !DILocation(line: 311, column: 25, scope: !579)
!658 = !DILocation(line: 311, column: 39, scope: !579)
!659 = !DILocation(line: 311, column: 14, scope: !579)
!660 = !DILocation(line: 311, column: 23, scope: !579)
!661 = !DILocation(line: 312, column: 11, scope: !579)
!662 = !DILocation(line: 312, column: 9, scope: !579)
!663 = !DILocation(line: 313, column: 11, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !24, line: 313, column: 11)
!665 = distinct !DILexicalBlock(scope: !579, file: !24, line: 313, column: 5)
!666 = !DILocation(line: 313, column: 15, scope: !664)
!667 = !DILocation(line: 313, column: 11, scope: !665)
!668 = !DILocation(line: 313, column: 4, scope: !669)
!669 = !DILexicalBlockFile(scope: !670, file: !24, discriminator: 1)
!670 = distinct !DILexicalBlock(scope: !664, file: !24, line: 313, column: 21)
!671 = !DILocation(line: 313, column: 35, scope: !669)
!672 = !DILocation(line: 313, column: 23, scope: !669)
!673 = !DILocation(line: 313, column: 41, scope: !674)
!674 = !DILexicalBlockFile(scope: !669, file: !24, discriminator: 2)
!675 = !DILocation(line: 313, column: 41, scope: !669)
!676 = !DILocation(line: 316, column: 5, scope: !579)
!677 = !DILocation(line: 317, column: 24, scope: !579)
!678 = !DILocation(line: 317, column: 14, scope: !579)
!679 = !DILocation(line: 317, column: 22, scope: !579)
!680 = !DILocation(line: 318, column: 31, scope: !579)
!681 = !DILocation(line: 318, column: 25, scope: !579)
!682 = !DILocation(line: 318, column: 14, scope: !579)
!683 = !DILocation(line: 318, column: 23, scope: !579)
!684 = !DILocation(line: 319, column: 11, scope: !579)
!685 = !DILocation(line: 319, column: 9, scope: !579)
!686 = !DILocation(line: 320, column: 11, scope: !687)
!687 = distinct !DILexicalBlock(scope: !688, file: !24, line: 320, column: 11)
!688 = distinct !DILexicalBlock(scope: !579, file: !24, line: 320, column: 5)
!689 = !DILocation(line: 320, column: 15, scope: !687)
!690 = !DILocation(line: 320, column: 11, scope: !688)
!691 = !DILocation(line: 320, column: 4, scope: !692)
!692 = !DILexicalBlockFile(scope: !693, file: !24, discriminator: 1)
!693 = distinct !DILexicalBlock(scope: !687, file: !24, line: 320, column: 21)
!694 = !DILocation(line: 320, column: 35, scope: !692)
!695 = !DILocation(line: 320, column: 23, scope: !692)
!696 = !DILocation(line: 320, column: 41, scope: !697)
!697 = !DILexicalBlockFile(scope: !692, file: !24, discriminator: 2)
!698 = !DILocation(line: 320, column: 41, scope: !692)
!699 = !DILocation(line: 322, column: 11, scope: !579)
!700 = !DILocation(line: 322, column: 9, scope: !579)
!701 = !DILocation(line: 323, column: 9, scope: !702)
!702 = distinct !DILexicalBlock(scope: !579, file: !24, line: 323, column: 9)
!703 = !DILocation(line: 323, column: 13, scope: !702)
!704 = !DILocation(line: 323, column: 9, scope: !579)
!705 = !DILocation(line: 324, column: 16, scope: !706)
!706 = distinct !DILexicalBlock(scope: !702, file: !24, line: 323, column: 19)
!707 = !DILocation(line: 324, column: 9, scope: !706)
!708 = !DILocation(line: 325, column: 9, scope: !706)
!709 = !DILocation(line: 327, column: 11, scope: !579)
!710 = !DILocation(line: 327, column: 9, scope: !579)
!711 = !DILocation(line: 328, column: 11, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !24, line: 328, column: 11)
!713 = distinct !DILexicalBlock(scope: !579, file: !24, line: 328, column: 5)
!714 = !DILocation(line: 328, column: 15, scope: !712)
!715 = !DILocation(line: 328, column: 11, scope: !713)
!716 = !DILocation(line: 328, column: 4, scope: !717)
!717 = !DILexicalBlockFile(scope: !718, file: !24, discriminator: 1)
!718 = distinct !DILexicalBlock(scope: !712, file: !24, line: 328, column: 21)
!719 = !DILocation(line: 328, column: 38, scope: !717)
!720 = !DILocation(line: 328, column: 23, scope: !717)
!721 = !DILocation(line: 328, column: 44, scope: !722)
!722 = !DILexicalBlockFile(scope: !717, file: !24, discriminator: 2)
!723 = !DILocation(line: 328, column: 44, scope: !717)
!724 = !DILocation(line: 329, column: 1, scope: !579)
!725 = distinct !DISubprogram(name: "test_large_inflate", scope: !24, file: !24, line: 334, type: !55, isLocal: false, isDefinition: true, scopeLine: 337, isOptimized: false, unit: !0, variables: !2)
!726 = !DILocalVariable(name: "compr", arg: 1, scope: !725, file: !24, line: 335, type: !21)
!727 = !DILocation(line: 335, column: 11, scope: !725)
!728 = !DILocalVariable(name: "comprLen", arg: 2, scope: !725, file: !24, line: 336, type: !4)
!729 = !DILocation(line: 336, column: 11, scope: !725)
!730 = !DILocalVariable(name: "uncompr", arg: 3, scope: !725, file: !24, line: 335, type: !21)
!731 = !DILocation(line: 335, column: 19, scope: !725)
!732 = !DILocalVariable(name: "uncomprLen", arg: 4, scope: !725, file: !24, line: 336, type: !4)
!733 = !DILocation(line: 336, column: 21, scope: !725)
!734 = !DILocalVariable(name: "err", scope: !725, file: !24, line: 338, type: !14)
!735 = !DILocation(line: 338, column: 9, scope: !725)
!736 = !DILocalVariable(name: "d_stream", scope: !725, file: !24, line: 339, type: !328)
!737 = !DILocation(line: 339, column: 14, scope: !725)
!738 = !DILocation(line: 341, column: 19, scope: !725)
!739 = !DILocation(line: 341, column: 5, scope: !725)
!740 = !DILocation(line: 343, column: 23, scope: !725)
!741 = !DILocation(line: 343, column: 14, scope: !725)
!742 = !DILocation(line: 343, column: 21, scope: !725)
!743 = !DILocation(line: 344, column: 22, scope: !725)
!744 = !DILocation(line: 344, column: 14, scope: !725)
!745 = !DILocation(line: 344, column: 20, scope: !725)
!746 = !DILocation(line: 345, column: 14, scope: !725)
!747 = !DILocation(line: 345, column: 21, scope: !725)
!748 = !DILocation(line: 347, column: 24, scope: !725)
!749 = !DILocation(line: 347, column: 14, scope: !725)
!750 = !DILocation(line: 347, column: 22, scope: !725)
!751 = !DILocation(line: 348, column: 31, scope: !725)
!752 = !DILocation(line: 348, column: 25, scope: !725)
!753 = !DILocation(line: 348, column: 14, scope: !725)
!754 = !DILocation(line: 348, column: 23, scope: !725)
!755 = !DILocation(line: 350, column: 11, scope: !725)
!756 = !DILocation(line: 350, column: 9, scope: !725)
!757 = !DILocation(line: 351, column: 11, scope: !758)
!758 = distinct !DILexicalBlock(scope: !759, file: !24, line: 351, column: 11)
!759 = distinct !DILexicalBlock(scope: !725, file: !24, line: 351, column: 5)
!760 = !DILocation(line: 351, column: 15, scope: !758)
!761 = !DILocation(line: 351, column: 11, scope: !759)
!762 = !DILocation(line: 351, column: 4, scope: !763)
!763 = !DILexicalBlockFile(scope: !764, file: !24, discriminator: 1)
!764 = distinct !DILexicalBlock(scope: !758, file: !24, line: 351, column: 21)
!765 = !DILocation(line: 351, column: 39, scope: !763)
!766 = !DILocation(line: 351, column: 23, scope: !763)
!767 = !DILocation(line: 351, column: 45, scope: !768)
!768 = !DILexicalBlockFile(scope: !763, file: !24, discriminator: 2)
!769 = !DILocation(line: 351, column: 45, scope: !763)
!770 = !DILocation(line: 353, column: 5, scope: !725)
!771 = !DILocation(line: 354, column: 29, scope: !772)
!772 = distinct !DILexicalBlock(scope: !773, file: !24, line: 353, column: 14)
!773 = distinct !DILexicalBlock(scope: !774, file: !24, line: 353, column: 5)
!774 = distinct !DILexicalBlock(scope: !725, file: !24, line: 353, column: 5)
!775 = !DILocation(line: 354, column: 18, scope: !772)
!776 = !DILocation(line: 354, column: 27, scope: !772)
!777 = !DILocation(line: 355, column: 36, scope: !772)
!778 = !DILocation(line: 355, column: 30, scope: !772)
!779 = !DILocation(line: 355, column: 18, scope: !772)
!780 = !DILocation(line: 355, column: 28, scope: !772)
!781 = !DILocation(line: 356, column: 15, scope: !772)
!782 = !DILocation(line: 356, column: 13, scope: !772)
!783 = !DILocation(line: 357, column: 13, scope: !784)
!784 = distinct !DILexicalBlock(scope: !772, file: !24, line: 357, column: 13)
!785 = !DILocation(line: 357, column: 17, scope: !784)
!786 = !DILocation(line: 357, column: 13, scope: !772)
!787 = !DILocation(line: 357, column: 23, scope: !788)
!788 = !DILexicalBlockFile(scope: !784, file: !24, discriminator: 1)
!789 = !DILocation(line: 358, column: 15, scope: !790)
!790 = distinct !DILexicalBlock(scope: !791, file: !24, line: 358, column: 15)
!791 = distinct !DILexicalBlock(scope: !772, file: !24, line: 358, column: 9)
!792 = !DILocation(line: 358, column: 19, scope: !790)
!793 = !DILocation(line: 358, column: 15, scope: !791)
!794 = !DILocation(line: 358, column: 8, scope: !795)
!795 = !DILexicalBlockFile(scope: !796, file: !24, discriminator: 1)
!796 = distinct !DILexicalBlock(scope: !790, file: !24, line: 358, column: 25)
!797 = !DILocation(line: 358, column: 45, scope: !795)
!798 = !DILocation(line: 358, column: 27, scope: !795)
!799 = !DILocation(line: 358, column: 51, scope: !800)
!800 = !DILexicalBlockFile(scope: !795, file: !24, discriminator: 2)
!801 = !DILocation(line: 358, column: 51, scope: !795)
!802 = !DILocation(line: 353, column: 5, scope: !803)
!803 = !DILexicalBlockFile(scope: !773, file: !24, discriminator: 1)
!804 = distinct !{!804, !770}
!805 = !DILocation(line: 361, column: 11, scope: !725)
!806 = !DILocation(line: 361, column: 9, scope: !725)
!807 = !DILocation(line: 362, column: 11, scope: !808)
!808 = distinct !DILexicalBlock(scope: !809, file: !24, line: 362, column: 11)
!809 = distinct !DILexicalBlock(scope: !725, file: !24, line: 362, column: 5)
!810 = !DILocation(line: 362, column: 15, scope: !808)
!811 = !DILocation(line: 362, column: 11, scope: !809)
!812 = !DILocation(line: 362, column: 4, scope: !813)
!813 = !DILexicalBlockFile(scope: !814, file: !24, discriminator: 1)
!814 = distinct !DILexicalBlock(scope: !808, file: !24, line: 362, column: 21)
!815 = !DILocation(line: 362, column: 38, scope: !813)
!816 = !DILocation(line: 362, column: 23, scope: !813)
!817 = !DILocation(line: 362, column: 44, scope: !818)
!818 = !DILexicalBlockFile(scope: !813, file: !24, discriminator: 2)
!819 = !DILocation(line: 362, column: 44, scope: !813)
!820 = !DILocation(line: 364, column: 18, scope: !821)
!821 = distinct !DILexicalBlock(scope: !725, file: !24, line: 364, column: 9)
!822 = !DILocation(line: 364, column: 33, scope: !821)
!823 = !DILocation(line: 364, column: 32, scope: !821)
!824 = !DILocation(line: 364, column: 46, scope: !821)
!825 = !DILocation(line: 364, column: 54, scope: !821)
!826 = !DILocation(line: 364, column: 44, scope: !821)
!827 = !DILocation(line: 364, column: 28, scope: !821)
!828 = !DILocation(line: 364, column: 9, scope: !725)
!829 = !DILocation(line: 365, column: 16, scope: !830)
!830 = distinct !DILexicalBlock(scope: !821, file: !24, line: 364, column: 58)
!831 = !DILocation(line: 365, column: 61, scope: !830)
!832 = !DILocation(line: 365, column: 9, scope: !830)
!833 = !DILocation(line: 366, column: 9, scope: !830)
!834 = !DILocation(line: 368, column: 9, scope: !835)
!835 = distinct !DILexicalBlock(scope: !821, file: !24, line: 367, column: 12)
!836 = !DILocation(line: 370, column: 1, scope: !725)
!837 = distinct !DISubprogram(name: "test_flush", scope: !24, file: !24, line: 375, type: !838, isLocal: false, isDefinition: true, scopeLine: 378, isOptimized: false, unit: !0, variables: !2)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !21, !840}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!841 = !DILocalVariable(name: "compr", arg: 1, scope: !837, file: !24, line: 376, type: !21)
!842 = !DILocation(line: 376, column: 11, scope: !837)
!843 = !DILocalVariable(name: "comprLen", arg: 2, scope: !837, file: !24, line: 377, type: !840)
!844 = !DILocation(line: 377, column: 12, scope: !837)
!845 = !DILocalVariable(name: "c_stream", scope: !837, file: !24, line: 379, type: !328)
!846 = !DILocation(line: 379, column: 14, scope: !837)
!847 = !DILocalVariable(name: "err", scope: !837, file: !24, line: 380, type: !14)
!848 = !DILocation(line: 380, column: 9, scope: !837)
!849 = !DILocalVariable(name: "len", scope: !837, file: !24, line: 381, type: !20)
!850 = !DILocation(line: 381, column: 10, scope: !837)
!851 = !DILocation(line: 381, column: 22, scope: !837)
!852 = !DILocation(line: 381, column: 16, scope: !837)
!853 = !DILocation(line: 381, column: 35, scope: !837)
!854 = !DILocation(line: 383, column: 23, scope: !837)
!855 = !DILocation(line: 383, column: 14, scope: !837)
!856 = !DILocation(line: 383, column: 21, scope: !837)
!857 = !DILocation(line: 384, column: 22, scope: !837)
!858 = !DILocation(line: 384, column: 14, scope: !837)
!859 = !DILocation(line: 384, column: 20, scope: !837)
!860 = !DILocation(line: 385, column: 14, scope: !837)
!861 = !DILocation(line: 385, column: 21, scope: !837)
!862 = !DILocation(line: 387, column: 11, scope: !837)
!863 = !DILocation(line: 387, column: 9, scope: !837)
!864 = !DILocation(line: 388, column: 11, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !24, line: 388, column: 11)
!866 = distinct !DILexicalBlock(scope: !837, file: !24, line: 388, column: 5)
!867 = !DILocation(line: 388, column: 15, scope: !865)
!868 = !DILocation(line: 388, column: 11, scope: !866)
!869 = !DILocation(line: 388, column: 4, scope: !870)
!870 = !DILexicalBlockFile(scope: !871, file: !24, discriminator: 1)
!871 = distinct !DILexicalBlock(scope: !865, file: !24, line: 388, column: 21)
!872 = !DILocation(line: 388, column: 39, scope: !870)
!873 = !DILocation(line: 388, column: 23, scope: !870)
!874 = !DILocation(line: 388, column: 45, scope: !875)
!875 = !DILexicalBlockFile(scope: !870, file: !24, discriminator: 2)
!876 = !DILocation(line: 388, column: 45, scope: !870)
!877 = !DILocation(line: 390, column: 14, scope: !837)
!878 = !DILocation(line: 390, column: 22, scope: !837)
!879 = !DILocation(line: 391, column: 25, scope: !837)
!880 = !DILocation(line: 391, column: 14, scope: !837)
!881 = !DILocation(line: 391, column: 23, scope: !837)
!882 = !DILocation(line: 392, column: 14, scope: !837)
!883 = !DILocation(line: 392, column: 23, scope: !837)
!884 = !DILocation(line: 393, column: 33, scope: !837)
!885 = !DILocation(line: 393, column: 32, scope: !837)
!886 = !DILocation(line: 393, column: 26, scope: !837)
!887 = !DILocation(line: 393, column: 14, scope: !837)
!888 = !DILocation(line: 393, column: 24, scope: !837)
!889 = !DILocation(line: 394, column: 11, scope: !837)
!890 = !DILocation(line: 394, column: 9, scope: !837)
!891 = !DILocation(line: 395, column: 11, scope: !892)
!892 = distinct !DILexicalBlock(scope: !893, file: !24, line: 395, column: 11)
!893 = distinct !DILexicalBlock(scope: !837, file: !24, line: 395, column: 5)
!894 = !DILocation(line: 395, column: 15, scope: !892)
!895 = !DILocation(line: 395, column: 11, scope: !893)
!896 = !DILocation(line: 395, column: 4, scope: !897)
!897 = !DILexicalBlockFile(scope: !898, file: !24, discriminator: 1)
!898 = distinct !DILexicalBlock(scope: !892, file: !24, line: 395, column: 21)
!899 = !DILocation(line: 395, column: 35, scope: !897)
!900 = !DILocation(line: 395, column: 23, scope: !897)
!901 = !DILocation(line: 395, column: 41, scope: !902)
!902 = !DILexicalBlockFile(scope: !897, file: !24, discriminator: 2)
!903 = !DILocation(line: 395, column: 41, scope: !897)
!904 = !DILocation(line: 397, column: 5, scope: !837)
!905 = !DILocation(line: 397, column: 13, scope: !837)
!906 = !DILocation(line: 398, column: 25, scope: !837)
!907 = !DILocation(line: 398, column: 29, scope: !837)
!908 = !DILocation(line: 398, column: 14, scope: !837)
!909 = !DILocation(line: 398, column: 23, scope: !837)
!910 = !DILocation(line: 400, column: 11, scope: !837)
!911 = !DILocation(line: 400, column: 9, scope: !837)
!912 = !DILocation(line: 401, column: 9, scope: !913)
!913 = distinct !DILexicalBlock(scope: !837, file: !24, line: 401, column: 9)
!914 = !DILocation(line: 401, column: 13, scope: !913)
!915 = !DILocation(line: 401, column: 9, scope: !837)
!916 = !DILocation(line: 402, column: 15, scope: !917)
!917 = distinct !DILexicalBlock(scope: !918, file: !24, line: 402, column: 15)
!918 = distinct !DILexicalBlock(scope: !919, file: !24, line: 402, column: 9)
!919 = distinct !DILexicalBlock(scope: !913, file: !24, line: 401, column: 19)
!920 = !DILocation(line: 402, column: 19, scope: !917)
!921 = !DILocation(line: 402, column: 15, scope: !918)
!922 = !DILocation(line: 402, column: 8, scope: !923)
!923 = !DILexicalBlockFile(scope: !924, file: !24, discriminator: 1)
!924 = distinct !DILexicalBlock(scope: !917, file: !24, line: 402, column: 25)
!925 = !DILocation(line: 402, column: 39, scope: !923)
!926 = !DILocation(line: 402, column: 27, scope: !923)
!927 = !DILocation(line: 402, column: 45, scope: !928)
!928 = !DILexicalBlockFile(scope: !923, file: !24, discriminator: 2)
!929 = !DILocation(line: 402, column: 45, scope: !923)
!930 = !DILocation(line: 403, column: 5, scope: !919)
!931 = !DILocation(line: 404, column: 11, scope: !837)
!932 = !DILocation(line: 404, column: 9, scope: !837)
!933 = !DILocation(line: 405, column: 11, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !24, line: 405, column: 11)
!935 = distinct !DILexicalBlock(scope: !837, file: !24, line: 405, column: 5)
!936 = !DILocation(line: 405, column: 15, scope: !934)
!937 = !DILocation(line: 405, column: 11, scope: !935)
!938 = !DILocation(line: 405, column: 4, scope: !939)
!939 = !DILexicalBlockFile(scope: !940, file: !24, discriminator: 1)
!940 = distinct !DILexicalBlock(scope: !934, file: !24, line: 405, column: 21)
!941 = !DILocation(line: 405, column: 38, scope: !939)
!942 = !DILocation(line: 405, column: 23, scope: !939)
!943 = !DILocation(line: 405, column: 44, scope: !944)
!944 = !DILexicalBlockFile(scope: !939, file: !24, discriminator: 2)
!945 = !DILocation(line: 405, column: 44, scope: !939)
!946 = !DILocation(line: 407, column: 26, scope: !837)
!947 = !DILocation(line: 407, column: 6, scope: !837)
!948 = !DILocation(line: 407, column: 15, scope: !837)
!949 = !DILocation(line: 408, column: 1, scope: !837)
!950 = distinct !DISubprogram(name: "test_sync", scope: !24, file: !24, line: 413, type: !55, isLocal: false, isDefinition: true, scopeLine: 416, isOptimized: false, unit: !0, variables: !2)
!951 = !DILocalVariable(name: "compr", arg: 1, scope: !950, file: !24, line: 414, type: !21)
!952 = !DILocation(line: 414, column: 11, scope: !950)
!953 = !DILocalVariable(name: "comprLen", arg: 2, scope: !950, file: !24, line: 415, type: !4)
!954 = !DILocation(line: 415, column: 11, scope: !950)
!955 = !DILocalVariable(name: "uncompr", arg: 3, scope: !950, file: !24, line: 414, type: !21)
!956 = !DILocation(line: 414, column: 19, scope: !950)
!957 = !DILocalVariable(name: "uncomprLen", arg: 4, scope: !950, file: !24, line: 415, type: !4)
!958 = !DILocation(line: 415, column: 21, scope: !950)
!959 = !DILocalVariable(name: "err", scope: !950, file: !24, line: 417, type: !14)
!960 = !DILocation(line: 417, column: 9, scope: !950)
!961 = !DILocalVariable(name: "d_stream", scope: !950, file: !24, line: 418, type: !328)
!962 = !DILocation(line: 418, column: 14, scope: !950)
!963 = !DILocation(line: 420, column: 19, scope: !950)
!964 = !DILocation(line: 420, column: 5, scope: !950)
!965 = !DILocation(line: 422, column: 23, scope: !950)
!966 = !DILocation(line: 422, column: 14, scope: !950)
!967 = !DILocation(line: 422, column: 21, scope: !950)
!968 = !DILocation(line: 423, column: 22, scope: !950)
!969 = !DILocation(line: 423, column: 14, scope: !950)
!970 = !DILocation(line: 423, column: 20, scope: !950)
!971 = !DILocation(line: 424, column: 14, scope: !950)
!972 = !DILocation(line: 424, column: 21, scope: !950)
!973 = !DILocation(line: 426, column: 24, scope: !950)
!974 = !DILocation(line: 426, column: 14, scope: !950)
!975 = !DILocation(line: 426, column: 22, scope: !950)
!976 = !DILocation(line: 427, column: 14, scope: !950)
!977 = !DILocation(line: 427, column: 23, scope: !950)
!978 = !DILocation(line: 429, column: 11, scope: !950)
!979 = !DILocation(line: 429, column: 9, scope: !950)
!980 = !DILocation(line: 430, column: 11, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !24, line: 430, column: 11)
!982 = distinct !DILexicalBlock(scope: !950, file: !24, line: 430, column: 5)
!983 = !DILocation(line: 430, column: 15, scope: !981)
!984 = !DILocation(line: 430, column: 11, scope: !982)
!985 = !DILocation(line: 430, column: 4, scope: !986)
!986 = !DILexicalBlockFile(scope: !987, file: !24, discriminator: 1)
!987 = distinct !DILexicalBlock(scope: !981, file: !24, line: 430, column: 21)
!988 = !DILocation(line: 430, column: 39, scope: !986)
!989 = !DILocation(line: 430, column: 23, scope: !986)
!990 = !DILocation(line: 430, column: 45, scope: !991)
!991 = !DILexicalBlockFile(scope: !986, file: !24, discriminator: 2)
!992 = !DILocation(line: 430, column: 45, scope: !986)
!993 = !DILocation(line: 432, column: 25, scope: !950)
!994 = !DILocation(line: 432, column: 14, scope: !950)
!995 = !DILocation(line: 432, column: 23, scope: !950)
!996 = !DILocation(line: 433, column: 32, scope: !950)
!997 = !DILocation(line: 433, column: 26, scope: !950)
!998 = !DILocation(line: 433, column: 14, scope: !950)
!999 = !DILocation(line: 433, column: 24, scope: !950)
!1000 = !DILocation(line: 435, column: 5, scope: !950)
!1001 = !DILocation(line: 436, column: 11, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !24, line: 436, column: 11)
!1003 = distinct !DILexicalBlock(scope: !950, file: !24, line: 436, column: 5)
!1004 = !DILocation(line: 436, column: 15, scope: !1002)
!1005 = !DILocation(line: 436, column: 11, scope: !1003)
!1006 = !DILocation(line: 436, column: 4, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !1008, file: !24, discriminator: 1)
!1008 = distinct !DILexicalBlock(scope: !1002, file: !24, line: 436, column: 21)
!1009 = !DILocation(line: 436, column: 35, scope: !1007)
!1010 = !DILocation(line: 436, column: 23, scope: !1007)
!1011 = !DILocation(line: 436, column: 41, scope: !1012)
!1012 = !DILexicalBlockFile(scope: !1007, file: !24, discriminator: 2)
!1013 = !DILocation(line: 436, column: 41, scope: !1007)
!1014 = !DILocation(line: 438, column: 31, scope: !950)
!1015 = !DILocation(line: 438, column: 25, scope: !950)
!1016 = !DILocation(line: 438, column: 39, scope: !950)
!1017 = !DILocation(line: 438, column: 14, scope: !950)
!1018 = !DILocation(line: 438, column: 23, scope: !950)
!1019 = !DILocation(line: 439, column: 11, scope: !950)
!1020 = !DILocation(line: 439, column: 9, scope: !950)
!1021 = !DILocation(line: 440, column: 11, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !24, line: 440, column: 11)
!1023 = distinct !DILexicalBlock(scope: !950, file: !24, line: 440, column: 5)
!1024 = !DILocation(line: 440, column: 15, scope: !1022)
!1025 = !DILocation(line: 440, column: 11, scope: !1023)
!1026 = !DILocation(line: 440, column: 4, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !1028, file: !24, discriminator: 1)
!1028 = distinct !DILexicalBlock(scope: !1022, file: !24, line: 440, column: 21)
!1029 = !DILocation(line: 440, column: 39, scope: !1027)
!1030 = !DILocation(line: 440, column: 23, scope: !1027)
!1031 = !DILocation(line: 440, column: 45, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !1027, file: !24, discriminator: 2)
!1033 = !DILocation(line: 440, column: 45, scope: !1027)
!1034 = !DILocation(line: 442, column: 11, scope: !950)
!1035 = !DILocation(line: 442, column: 9, scope: !950)
!1036 = !DILocation(line: 443, column: 9, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !950, file: !24, line: 443, column: 9)
!1038 = !DILocation(line: 443, column: 13, scope: !1037)
!1039 = !DILocation(line: 443, column: 9, scope: !950)
!1040 = !DILocation(line: 444, column: 16, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1037, file: !24, line: 443, column: 22)
!1042 = !DILocation(line: 444, column: 9, scope: !1041)
!1043 = !DILocation(line: 446, column: 9, scope: !1041)
!1044 = !DILocation(line: 448, column: 11, scope: !950)
!1045 = !DILocation(line: 448, column: 9, scope: !950)
!1046 = !DILocation(line: 449, column: 11, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !24, line: 449, column: 11)
!1048 = distinct !DILexicalBlock(scope: !950, file: !24, line: 449, column: 5)
!1049 = !DILocation(line: 449, column: 15, scope: !1047)
!1050 = !DILocation(line: 449, column: 11, scope: !1048)
!1051 = !DILocation(line: 449, column: 4, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !1053, file: !24, discriminator: 1)
!1053 = distinct !DILexicalBlock(scope: !1047, file: !24, line: 449, column: 21)
!1054 = !DILocation(line: 449, column: 38, scope: !1052)
!1055 = !DILocation(line: 449, column: 23, scope: !1052)
!1056 = !DILocation(line: 449, column: 44, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1052, file: !24, discriminator: 2)
!1058 = !DILocation(line: 449, column: 44, scope: !1052)
!1059 = !DILocation(line: 451, column: 52, scope: !950)
!1060 = !DILocation(line: 451, column: 5, scope: !950)
!1061 = !DILocation(line: 452, column: 1, scope: !950)
!1062 = distinct !DISubprogram(name: "test_dict_deflate", scope: !24, file: !24, line: 457, type: !321, isLocal: false, isDefinition: true, scopeLine: 460, isOptimized: false, unit: !0, variables: !2)
!1063 = !DILocalVariable(name: "compr", arg: 1, scope: !1062, file: !24, line: 458, type: !21)
!1064 = !DILocation(line: 458, column: 11, scope: !1062)
!1065 = !DILocalVariable(name: "comprLen", arg: 2, scope: !1062, file: !24, line: 459, type: !4)
!1066 = !DILocation(line: 459, column: 11, scope: !1062)
!1067 = !DILocalVariable(name: "c_stream", scope: !1062, file: !24, line: 461, type: !328)
!1068 = !DILocation(line: 461, column: 14, scope: !1062)
!1069 = !DILocalVariable(name: "err", scope: !1062, file: !24, line: 462, type: !14)
!1070 = !DILocation(line: 462, column: 9, scope: !1062)
!1071 = !DILocation(line: 464, column: 23, scope: !1062)
!1072 = !DILocation(line: 464, column: 14, scope: !1062)
!1073 = !DILocation(line: 464, column: 21, scope: !1062)
!1074 = !DILocation(line: 465, column: 22, scope: !1062)
!1075 = !DILocation(line: 465, column: 14, scope: !1062)
!1076 = !DILocation(line: 465, column: 20, scope: !1062)
!1077 = !DILocation(line: 466, column: 14, scope: !1062)
!1078 = !DILocation(line: 466, column: 21, scope: !1062)
!1079 = !DILocation(line: 468, column: 11, scope: !1062)
!1080 = !DILocation(line: 468, column: 9, scope: !1062)
!1081 = !DILocation(line: 469, column: 11, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !24, line: 469, column: 11)
!1083 = distinct !DILexicalBlock(scope: !1062, file: !24, line: 469, column: 5)
!1084 = !DILocation(line: 469, column: 15, scope: !1082)
!1085 = !DILocation(line: 469, column: 11, scope: !1083)
!1086 = !DILocation(line: 469, column: 4, scope: !1087)
!1087 = !DILexicalBlockFile(scope: !1088, file: !24, discriminator: 1)
!1088 = distinct !DILexicalBlock(scope: !1082, file: !24, line: 469, column: 21)
!1089 = !DILocation(line: 469, column: 39, scope: !1087)
!1090 = !DILocation(line: 469, column: 23, scope: !1087)
!1091 = !DILocation(line: 469, column: 45, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1087, file: !24, discriminator: 2)
!1093 = !DILocation(line: 469, column: 45, scope: !1087)
!1094 = !DILocation(line: 471, column: 11, scope: !1062)
!1095 = !DILocation(line: 471, column: 9, scope: !1062)
!1096 = !DILocation(line: 473, column: 11, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !24, line: 473, column: 11)
!1098 = distinct !DILexicalBlock(scope: !1062, file: !24, line: 473, column: 5)
!1099 = !DILocation(line: 473, column: 15, scope: !1097)
!1100 = !DILocation(line: 473, column: 11, scope: !1098)
!1101 = !DILocation(line: 473, column: 4, scope: !1102)
!1102 = !DILexicalBlockFile(scope: !1103, file: !24, discriminator: 1)
!1103 = distinct !DILexicalBlock(scope: !1097, file: !24, line: 473, column: 21)
!1104 = !DILocation(line: 473, column: 48, scope: !1102)
!1105 = !DILocation(line: 473, column: 23, scope: !1102)
!1106 = !DILocation(line: 473, column: 54, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !1102, file: !24, discriminator: 2)
!1108 = !DILocation(line: 473, column: 54, scope: !1102)
!1109 = !DILocation(line: 475, column: 23, scope: !1062)
!1110 = !DILocation(line: 475, column: 12, scope: !1062)
!1111 = !DILocation(line: 476, column: 25, scope: !1062)
!1112 = !DILocation(line: 476, column: 14, scope: !1062)
!1113 = !DILocation(line: 476, column: 23, scope: !1062)
!1114 = !DILocation(line: 477, column: 32, scope: !1062)
!1115 = !DILocation(line: 477, column: 26, scope: !1062)
!1116 = !DILocation(line: 477, column: 14, scope: !1062)
!1117 = !DILocation(line: 477, column: 24, scope: !1062)
!1118 = !DILocation(line: 479, column: 14, scope: !1062)
!1119 = !DILocation(line: 479, column: 22, scope: !1062)
!1120 = !DILocation(line: 480, column: 31, scope: !1062)
!1121 = !DILocation(line: 480, column: 25, scope: !1062)
!1122 = !DILocation(line: 480, column: 44, scope: !1062)
!1123 = !DILocation(line: 480, column: 14, scope: !1062)
!1124 = !DILocation(line: 480, column: 23, scope: !1062)
!1125 = !DILocation(line: 482, column: 11, scope: !1062)
!1126 = !DILocation(line: 482, column: 9, scope: !1062)
!1127 = !DILocation(line: 483, column: 9, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1062, file: !24, line: 483, column: 9)
!1129 = !DILocation(line: 483, column: 13, scope: !1128)
!1130 = !DILocation(line: 483, column: 9, scope: !1062)
!1131 = !DILocation(line: 484, column: 16, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !24, line: 483, column: 19)
!1133 = !DILocation(line: 484, column: 9, scope: !1132)
!1134 = !DILocation(line: 485, column: 9, scope: !1132)
!1135 = !DILocation(line: 487, column: 11, scope: !1062)
!1136 = !DILocation(line: 487, column: 9, scope: !1062)
!1137 = !DILocation(line: 488, column: 11, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !24, line: 488, column: 11)
!1139 = distinct !DILexicalBlock(scope: !1062, file: !24, line: 488, column: 5)
!1140 = !DILocation(line: 488, column: 15, scope: !1138)
!1141 = !DILocation(line: 488, column: 11, scope: !1139)
!1142 = !DILocation(line: 488, column: 4, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1144, file: !24, discriminator: 1)
!1144 = distinct !DILexicalBlock(scope: !1138, file: !24, line: 488, column: 21)
!1145 = !DILocation(line: 488, column: 38, scope: !1143)
!1146 = !DILocation(line: 488, column: 23, scope: !1143)
!1147 = !DILocation(line: 488, column: 44, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !1143, file: !24, discriminator: 2)
!1149 = !DILocation(line: 488, column: 44, scope: !1143)
!1150 = !DILocation(line: 489, column: 1, scope: !1062)
!1151 = distinct !DISubprogram(name: "test_dict_inflate", scope: !24, file: !24, line: 494, type: !55, isLocal: false, isDefinition: true, scopeLine: 497, isOptimized: false, unit: !0, variables: !2)
!1152 = !DILocalVariable(name: "compr", arg: 1, scope: !1151, file: !24, line: 495, type: !21)
!1153 = !DILocation(line: 495, column: 11, scope: !1151)
!1154 = !DILocalVariable(name: "comprLen", arg: 2, scope: !1151, file: !24, line: 496, type: !4)
!1155 = !DILocation(line: 496, column: 11, scope: !1151)
!1156 = !DILocalVariable(name: "uncompr", arg: 3, scope: !1151, file: !24, line: 495, type: !21)
!1157 = !DILocation(line: 495, column: 19, scope: !1151)
!1158 = !DILocalVariable(name: "uncomprLen", arg: 4, scope: !1151, file: !24, line: 496, type: !4)
!1159 = !DILocation(line: 496, column: 21, scope: !1151)
!1160 = !DILocalVariable(name: "err", scope: !1151, file: !24, line: 498, type: !14)
!1161 = !DILocation(line: 498, column: 9, scope: !1151)
!1162 = !DILocalVariable(name: "d_stream", scope: !1151, file: !24, line: 499, type: !328)
!1163 = !DILocation(line: 499, column: 14, scope: !1151)
!1164 = !DILocation(line: 501, column: 19, scope: !1151)
!1165 = !DILocation(line: 501, column: 5, scope: !1151)
!1166 = !DILocation(line: 503, column: 23, scope: !1151)
!1167 = !DILocation(line: 503, column: 14, scope: !1151)
!1168 = !DILocation(line: 503, column: 21, scope: !1151)
!1169 = !DILocation(line: 504, column: 22, scope: !1151)
!1170 = !DILocation(line: 504, column: 14, scope: !1151)
!1171 = !DILocation(line: 504, column: 20, scope: !1151)
!1172 = !DILocation(line: 505, column: 14, scope: !1151)
!1173 = !DILocation(line: 505, column: 21, scope: !1151)
!1174 = !DILocation(line: 507, column: 24, scope: !1151)
!1175 = !DILocation(line: 507, column: 14, scope: !1151)
!1176 = !DILocation(line: 507, column: 22, scope: !1151)
!1177 = !DILocation(line: 508, column: 31, scope: !1151)
!1178 = !DILocation(line: 508, column: 25, scope: !1151)
!1179 = !DILocation(line: 508, column: 14, scope: !1151)
!1180 = !DILocation(line: 508, column: 23, scope: !1151)
!1181 = !DILocation(line: 510, column: 11, scope: !1151)
!1182 = !DILocation(line: 510, column: 9, scope: !1151)
!1183 = !DILocation(line: 511, column: 11, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !24, line: 511, column: 11)
!1185 = distinct !DILexicalBlock(scope: !1151, file: !24, line: 511, column: 5)
!1186 = !DILocation(line: 511, column: 15, scope: !1184)
!1187 = !DILocation(line: 511, column: 11, scope: !1185)
!1188 = !DILocation(line: 511, column: 4, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1190, file: !24, discriminator: 1)
!1190 = distinct !DILexicalBlock(scope: !1184, file: !24, line: 511, column: 21)
!1191 = !DILocation(line: 511, column: 39, scope: !1189)
!1192 = !DILocation(line: 511, column: 23, scope: !1189)
!1193 = !DILocation(line: 511, column: 45, scope: !1194)
!1194 = !DILexicalBlockFile(scope: !1189, file: !24, discriminator: 2)
!1195 = !DILocation(line: 511, column: 45, scope: !1189)
!1196 = !DILocation(line: 513, column: 25, scope: !1151)
!1197 = !DILocation(line: 513, column: 14, scope: !1151)
!1198 = !DILocation(line: 513, column: 23, scope: !1151)
!1199 = !DILocation(line: 514, column: 32, scope: !1151)
!1200 = !DILocation(line: 514, column: 26, scope: !1151)
!1201 = !DILocation(line: 514, column: 14, scope: !1151)
!1202 = !DILocation(line: 514, column: 24, scope: !1151)
!1203 = !DILocation(line: 516, column: 5, scope: !1151)
!1204 = !DILocation(line: 517, column: 15, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !24, line: 516, column: 14)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !24, line: 516, column: 5)
!1207 = distinct !DILexicalBlock(scope: !1151, file: !24, line: 516, column: 5)
!1208 = !DILocation(line: 517, column: 13, scope: !1205)
!1209 = !DILocation(line: 518, column: 13, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1205, file: !24, line: 518, column: 13)
!1211 = !DILocation(line: 518, column: 17, scope: !1210)
!1212 = !DILocation(line: 518, column: 13, scope: !1205)
!1213 = !DILocation(line: 518, column: 23, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !1210, file: !24, discriminator: 1)
!1215 = !DILocation(line: 519, column: 13, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1205, file: !24, line: 519, column: 13)
!1217 = !DILocation(line: 519, column: 17, scope: !1216)
!1218 = !DILocation(line: 519, column: 13, scope: !1205)
!1219 = !DILocation(line: 520, column: 26, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !24, line: 520, column: 17)
!1221 = distinct !DILexicalBlock(scope: !1216, file: !24, line: 519, column: 23)
!1222 = !DILocation(line: 520, column: 35, scope: !1220)
!1223 = !DILocation(line: 520, column: 32, scope: !1220)
!1224 = !DILocation(line: 520, column: 17, scope: !1221)
!1225 = !DILocation(line: 521, column: 24, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1220, file: !24, line: 520, column: 43)
!1227 = !DILocation(line: 521, column: 17, scope: !1226)
!1228 = !DILocation(line: 522, column: 17, scope: !1226)
!1229 = !DILocation(line: 524, column: 19, scope: !1221)
!1230 = !DILocation(line: 524, column: 17, scope: !1221)
!1231 = !DILocation(line: 526, column: 9, scope: !1221)
!1232 = !DILocation(line: 527, column: 15, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !24, line: 527, column: 15)
!1234 = distinct !DILexicalBlock(scope: !1205, file: !24, line: 527, column: 9)
!1235 = !DILocation(line: 527, column: 19, scope: !1233)
!1236 = !DILocation(line: 527, column: 15, scope: !1234)
!1237 = !DILocation(line: 527, column: 8, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1239, file: !24, discriminator: 1)
!1239 = distinct !DILexicalBlock(scope: !1233, file: !24, line: 527, column: 25)
!1240 = !DILocation(line: 527, column: 49, scope: !1238)
!1241 = !DILocation(line: 527, column: 27, scope: !1238)
!1242 = !DILocation(line: 527, column: 55, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !1238, file: !24, discriminator: 2)
!1244 = !DILocation(line: 527, column: 55, scope: !1238)
!1245 = !DILocation(line: 516, column: 5, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1206, file: !24, discriminator: 1)
!1247 = distinct !{!1247, !1203}
!1248 = !DILocation(line: 530, column: 11, scope: !1151)
!1249 = !DILocation(line: 530, column: 9, scope: !1151)
!1250 = !DILocation(line: 531, column: 11, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !24, line: 531, column: 11)
!1252 = distinct !DILexicalBlock(scope: !1151, file: !24, line: 531, column: 5)
!1253 = !DILocation(line: 531, column: 15, scope: !1251)
!1254 = !DILocation(line: 531, column: 11, scope: !1252)
!1255 = !DILocation(line: 531, column: 4, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !1257, file: !24, discriminator: 1)
!1257 = distinct !DILexicalBlock(scope: !1251, file: !24, line: 531, column: 21)
!1258 = !DILocation(line: 531, column: 38, scope: !1256)
!1259 = !DILocation(line: 531, column: 23, scope: !1256)
!1260 = !DILocation(line: 531, column: 44, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !1256, file: !24, discriminator: 2)
!1262 = !DILocation(line: 531, column: 44, scope: !1256)
!1263 = !DILocation(line: 533, column: 23, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1151, file: !24, line: 533, column: 9)
!1265 = !DILocation(line: 533, column: 9, scope: !1264)
!1266 = !DILocation(line: 533, column: 9, scope: !1151)
!1267 = !DILocation(line: 534, column: 16, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1264, file: !24, line: 533, column: 40)
!1269 = !DILocation(line: 534, column: 9, scope: !1268)
!1270 = !DILocation(line: 535, column: 9, scope: !1268)
!1271 = !DILocation(line: 537, column: 57, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1264, file: !24, line: 536, column: 12)
!1273 = !DILocation(line: 537, column: 9, scope: !1272)
!1274 = !DILocation(line: 539, column: 1, scope: !1151)
!1275 = !DILocalVariable(name: "argc", arg: 1, scope: !34, file: !24, line: 546, type: !14)
!1276 = !DILocation(line: 546, column: 9, scope: !34)
!1277 = !DILocalVariable(name: "argv", arg: 2, scope: !34, file: !24, line: 547, type: !37)
!1278 = !DILocation(line: 547, column: 11, scope: !34)
!1279 = !DILocalVariable(name: "compr", scope: !34, file: !24, line: 549, type: !21)
!1280 = !DILocation(line: 549, column: 11, scope: !34)
!1281 = !DILocalVariable(name: "uncompr", scope: !34, file: !24, line: 549, type: !21)
!1282 = !DILocation(line: 549, column: 19, scope: !34)
!1283 = !DILocalVariable(name: "comprLen", scope: !34, file: !24, line: 550, type: !4)
!1284 = !DILocation(line: 550, column: 11, scope: !34)
!1285 = !DILocalVariable(name: "uncomprLen", scope: !34, file: !24, line: 551, type: !4)
!1286 = !DILocation(line: 551, column: 11, scope: !34)
!1287 = !DILocation(line: 551, column: 24, scope: !34)
!1288 = !DILocation(line: 554, column: 9, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !34, file: !24, line: 554, column: 9)
!1290 = !DILocation(line: 554, column: 29, scope: !1289)
!1291 = !DILocation(line: 554, column: 26, scope: !1289)
!1292 = !DILocation(line: 554, column: 9, scope: !34)
!1293 = !DILocation(line: 555, column: 16, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1289, file: !24, line: 554, column: 43)
!1295 = !DILocation(line: 555, column: 9, scope: !1294)
!1296 = !DILocation(line: 556, column: 9, scope: !1294)
!1297 = !DILocation(line: 558, column: 23, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1289, file: !24, line: 558, column: 16)
!1299 = !DILocation(line: 558, column: 16, scope: !1300)
!1300 = !DILexicalBlockFile(scope: !1298, file: !24, discriminator: 1)
!1301 = !DILocation(line: 558, column: 47, scope: !1298)
!1302 = !DILocation(line: 558, column: 16, scope: !1289)
!1303 = !DILocation(line: 559, column: 16, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1298, file: !24, line: 558, column: 53)
!1305 = !DILocation(line: 559, column: 9, scope: !1304)
!1306 = !DILocation(line: 560, column: 5, scope: !1304)
!1307 = !DILocation(line: 563, column: 30, scope: !34)
!1308 = !DILocation(line: 562, column: 5, scope: !34)
!1309 = !DILocation(line: 565, column: 33, scope: !34)
!1310 = !DILocation(line: 565, column: 27, scope: !34)
!1311 = !DILocation(line: 565, column: 20, scope: !34)
!1312 = !DILocation(line: 565, column: 11, scope: !34)
!1313 = !DILocation(line: 566, column: 35, scope: !34)
!1314 = !DILocation(line: 566, column: 29, scope: !34)
!1315 = !DILocation(line: 566, column: 22, scope: !34)
!1316 = !DILocation(line: 566, column: 13, scope: !34)
!1317 = !DILocation(line: 570, column: 9, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !34, file: !24, line: 570, column: 9)
!1319 = !DILocation(line: 570, column: 15, scope: !1318)
!1320 = !DILocation(line: 570, column: 20, scope: !1318)
!1321 = !DILocation(line: 570, column: 23, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1318, file: !24, discriminator: 1)
!1323 = !DILocation(line: 570, column: 31, scope: !1322)
!1324 = !DILocation(line: 570, column: 9, scope: !1322)
!1325 = !DILocation(line: 571, column: 9, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1318, file: !24, line: 570, column: 37)
!1327 = !DILocation(line: 572, column: 9, scope: !1326)
!1328 = !DILocation(line: 578, column: 19, scope: !34)
!1329 = !DILocation(line: 578, column: 26, scope: !34)
!1330 = !DILocation(line: 578, column: 36, scope: !34)
!1331 = !DILocation(line: 578, column: 45, scope: !34)
!1332 = !DILocation(line: 578, column: 5, scope: !34)
!1333 = !DILocation(line: 580, column: 16, scope: !34)
!1334 = !DILocation(line: 580, column: 21, scope: !34)
!1335 = !DILocation(line: 580, column: 27, scope: !1336)
!1336 = !DILexicalBlockFile(scope: !34, file: !24, discriminator: 1)
!1337 = !DILocation(line: 580, column: 16, scope: !1336)
!1338 = !DILocation(line: 580, column: 16, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !34, file: !24, discriminator: 2)
!1340 = !DILocation(line: 580, column: 16, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !34, file: !24, discriminator: 3)
!1342 = !DILocation(line: 581, column: 15, scope: !34)
!1343 = !DILocation(line: 581, column: 24, scope: !34)
!1344 = !DILocation(line: 580, column: 5, scope: !1341)
!1345 = !DILocation(line: 584, column: 18, scope: !34)
!1346 = !DILocation(line: 584, column: 25, scope: !34)
!1347 = !DILocation(line: 584, column: 5, scope: !34)
!1348 = !DILocation(line: 585, column: 18, scope: !34)
!1349 = !DILocation(line: 585, column: 25, scope: !34)
!1350 = !DILocation(line: 585, column: 35, scope: !34)
!1351 = !DILocation(line: 585, column: 44, scope: !34)
!1352 = !DILocation(line: 585, column: 5, scope: !34)
!1353 = !DILocation(line: 587, column: 24, scope: !34)
!1354 = !DILocation(line: 587, column: 31, scope: !34)
!1355 = !DILocation(line: 587, column: 41, scope: !34)
!1356 = !DILocation(line: 587, column: 50, scope: !34)
!1357 = !DILocation(line: 587, column: 5, scope: !34)
!1358 = !DILocation(line: 588, column: 24, scope: !34)
!1359 = !DILocation(line: 588, column: 31, scope: !34)
!1360 = !DILocation(line: 588, column: 41, scope: !34)
!1361 = !DILocation(line: 588, column: 50, scope: !34)
!1362 = !DILocation(line: 588, column: 5, scope: !34)
!1363 = !DILocation(line: 590, column: 16, scope: !34)
!1364 = !DILocation(line: 590, column: 5, scope: !34)
!1365 = !DILocation(line: 591, column: 15, scope: !34)
!1366 = !DILocation(line: 591, column: 22, scope: !34)
!1367 = !DILocation(line: 591, column: 32, scope: !34)
!1368 = !DILocation(line: 591, column: 41, scope: !34)
!1369 = !DILocation(line: 591, column: 5, scope: !34)
!1370 = !DILocation(line: 592, column: 16, scope: !34)
!1371 = !DILocation(line: 592, column: 14, scope: !34)
!1372 = !DILocation(line: 594, column: 23, scope: !34)
!1373 = !DILocation(line: 594, column: 30, scope: !34)
!1374 = !DILocation(line: 594, column: 5, scope: !34)
!1375 = !DILocation(line: 595, column: 23, scope: !34)
!1376 = !DILocation(line: 595, column: 30, scope: !34)
!1377 = !DILocation(line: 595, column: 40, scope: !34)
!1378 = !DILocation(line: 595, column: 49, scope: !34)
!1379 = !DILocation(line: 595, column: 5, scope: !34)
!1380 = !DILocation(line: 597, column: 10, scope: !34)
!1381 = !DILocation(line: 597, column: 5, scope: !34)
!1382 = !DILocation(line: 598, column: 10, scope: !34)
!1383 = !DILocation(line: 598, column: 5, scope: !34)
!1384 = !DILocation(line: 600, column: 5, scope: !34)
