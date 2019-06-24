; ModuleID = '/home/lichi/Desktop/genwqe/[task]tools--gzFile_test/[inter]tools--gzFile_test.o.i'
source_filename = "/home/lichi/Desktop/genwqe/[task]tools--gzFile_test/[inter]tools--gzFile_test.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.gzFile_s = type { i32, i8*, i64 }

@.str = private unnamed_addr constant [7 x i8] c"GENWQE\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ZLIB_ACCELERATOR\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ZLIB_CARD\00", align 1
@main.long_options = internal global [9 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, i32* null, i32 65 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 1, i32* null, i32 66 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 1, i32* null, i32 79 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 1, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 1, i32* null, i32 111 }, %struct.option zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"accelerator-type\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"card_no\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"decompress\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"i_bufsize\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"o_bufsize\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"123456789A:B:di:o:s:O:h?Vv\00", align 1
@optarg = external global i8*, align 8
@verbose = internal global i32 0, align 4
@stdout = external global %struct._IO_FILE*, align 8
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@version = internal global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), align 8
@CHUNK_i = internal global i64 32768, align 8
@CHUNK_o = internal global i64 8192, align 8
@optind = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.13 = private unnamed_addr constant [38 x i8] c"gzFile_test: File %s does not exist!\0A\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"gzFile_test: %s: Too many levels of symbolic links\0A\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"gzFile_test: No input or output file name provided.\00", align 1
@.str.16 = private unnamed_addr constant [93 x i8] c"%sCompress %s to %s in %ld bytes, out %ld bytes chunks with level %d (size=%lld, offs=%lld)\0A\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"De\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"4.0.20-5-g2944\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"KiB\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"MiB\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"GiB\00", align 1
@.str.23 = private unnamed_addr constant [504 x i8] c"Usage: %s [OPTION]... [IN_FILE] [OUT_FILE]...\0A\0ASpecial options for testing and debugging:\0A  -v, --verbose\0A  -A, --accelerator-type=GENWQE|CAPI CAPI is only available for IBM System p\0A  -B, --card=<card_no> -1 is for automatic card selection\0A  -O, --offset=<offset> Cut out data at this byte offset.\0A  -s, --size=<size>     Cut <size> bytes out.\0A  -i, --i_bufsize   input buffer size (%ld KiB)\0A  -o, --o_bufsize   output buffer size (%ld KiB)\0A\0AReport bugs via https://github.com/ibm-genwqe/genwqe-user.\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"gzFile_test: Could not open %s, %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"gzFile_test: %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"wb%d\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"gzFile_test: Could not open %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [50 x i8] c"gzFile_test: Could not set gzFile buffer size %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"gzFile_test: ferror %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"gzFile_test: gzwrite %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"  gztell64 returned %lld\0A\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.35 = private unnamed_addr constant [57 x i8] c"gzFile_test: Could not seek %lld to desired offset %lld\0A\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"gzFile_test: gzread error %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"  read %lld bytes\0A\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"  write %lld bytes\0A\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"gzFile_test: fwrite %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"gzFile_test: len=%lld chunk_i=%lld\0A\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"gzFile_test: gzclose error %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !24 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca %struct.stat, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !50, metadata !51), !dbg !52
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !53, metadata !51), !dbg !54
  call void @llvm.dbg.declare(metadata i32* %6, metadata !55, metadata !51), !dbg !56
  store i32 0, i32* %6, align 4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %7, metadata !57, metadata !51), !dbg !58
  store i32 -1, i32* %7, align 4, !dbg !58
  call void @llvm.dbg.declare(metadata i8** %8, metadata !59, metadata !51), !dbg !60
  %21 = load i8**, i8*** %5, align 8, !dbg !61
  %22 = getelementptr inbounds i8*, i8** %21, i64 0, !dbg !61
  %23 = load i8*, i8** %22, align 8, !dbg !61
  %24 = call i8* @__xpg_basename(i8* %23) #8, !dbg !62
  store i8* %24, i8** %8, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata i64* %9, metadata !63, metadata !51), !dbg !64
  store i64 0, i64* %9, align 8, !dbg !64
  call void @llvm.dbg.declare(metadata i64* %10, metadata !65, metadata !51), !dbg !71
  store i64 0, i64* %10, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata i8** %11, metadata !72, metadata !51), !dbg !73
  store i8* null, i8** %11, align 8, !dbg !73
  call void @llvm.dbg.declare(metadata i8** %12, metadata !74, metadata !51), !dbg !75
  store i8* null, i8** %12, align 8, !dbg !75
  call void @llvm.dbg.declare(metadata i8* %13, metadata !76, metadata !51), !dbg !78
  store i8 1, i8* %13, align 1, !dbg !78
  call void @llvm.dbg.declare(metadata %struct.stat* %14, metadata !79, metadata !51), !dbg !118
  call void @llvm.dbg.declare(metadata i8** %15, metadata !119, metadata !51), !dbg !120
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8** %15, align 8, !dbg !120
  call void @llvm.dbg.declare(metadata i8** %16, metadata !121, metadata !51), !dbg !122
  %25 = call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !123
  store i8* %25, i8** %16, align 8, !dbg !122
  call void @llvm.dbg.declare(metadata i32* %17, metadata !124, metadata !51), !dbg !125
  store i32 0, i32* %17, align 4, !dbg !125
  call void @llvm.dbg.declare(metadata i8** %18, metadata !126, metadata !51), !dbg !127
  %26 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !128
  store i8* %26, i8** %18, align 8, !dbg !127
  %27 = load i8*, i8** %16, align 8, !dbg !129
  %28 = icmp ne i8* %27, null, !dbg !131
  br i1 %28, label %29, label %31, !dbg !132

; <label>:29:                                     ; preds = %2
  %30 = load i8*, i8** %16, align 8, !dbg !133
  store i8* %30, i8** %15, align 8, !dbg !134
  br label %31, !dbg !135

; <label>:31:                                     ; preds = %29, %2
  %32 = load i8*, i8** %18, align 8, !dbg !136
  %33 = icmp ne i8* %32, null, !dbg !138
  br i1 %33, label %34, label %37, !dbg !139

; <label>:34:                                     ; preds = %31
  %35 = load i8*, i8** %18, align 8, !dbg !140
  %36 = call i32 @atoi(i8* %35) #9, !dbg !141
  store i32 %36, i32* %17, align 4, !dbg !142
  br label %37, !dbg !143

; <label>:37:                                     ; preds = %34, %31
  br label %38, !dbg !144

; <label>:38:                                     ; preds = %37, %85
  call void @llvm.dbg.declare(metadata i32* %19, metadata !145, metadata !51), !dbg !147
  call void @llvm.dbg.declare(metadata i32* %20, metadata !148, metadata !51), !dbg !149
  store i32 0, i32* %20, align 4, !dbg !149
  %39 = load i32, i32* %4, align 4, !dbg !150
  %40 = load i8**, i8*** %5, align 8, !dbg !151
  %41 = call i32 @getopt_long(i32 %39, i8** %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), %struct.option* getelementptr inbounds ([9 x %struct.option], [9 x %struct.option]* @main.long_options, i32 0, i32 0), i32* %20) #8, !dbg !152
  store i32 %41, i32* %19, align 4, !dbg !153
  %42 = load i32, i32* %19, align 4, !dbg !154
  %43 = icmp eq i32 %42, -1, !dbg !156
  br i1 %43, label %44, label %45, !dbg !157

; <label>:44:                                     ; preds = %38
  br label %86, !dbg !158

; <label>:45:                                     ; preds = %38
  %46 = load i32, i32* %19, align 4, !dbg !159
  switch i32 %46, label %85 [
    i32 65, label %47
    i32 66, label %49
    i32 115, label %53
    i32 79, label %56
    i32 100, label %59
    i32 49, label %60
    i32 50, label %61
    i32 51, label %62
    i32 52, label %63
    i32 53, label %64
    i32 54, label %65
    i32 55, label %66
    i32 56, label %67
    i32 57, label %68
    i32 118, label %69
    i32 86, label %72
    i32 105, label %76
    i32 111, label %79
    i32 104, label %82
    i32 63, label %82
  ], !dbg !160

; <label>:47:                                     ; preds = %45
  %48 = load i8*, i8** @optarg, align 8, !dbg !161
  store i8* %48, i8** %15, align 8, !dbg !163
  br label %85, !dbg !164

; <label>:49:                                     ; preds = %45
  %50 = load i8*, i8** @optarg, align 8, !dbg !165
  %51 = call i64 @strtol(i8* %50, i8** null, i32 0) #8, !dbg !166
  %52 = trunc i64 %51 to i32, !dbg !166
  store i32 %52, i32* %17, align 4, !dbg !167
  br label %85, !dbg !168

; <label>:53:                                     ; preds = %45
  %54 = load i8*, i8** @optarg, align 8, !dbg !169
  %55 = call i64 @strtol(i8* %54, i8** null, i32 0) #8, !dbg !170
  store i64 %55, i64* %9, align 8, !dbg !171
  br label %85, !dbg !172

; <label>:56:                                     ; preds = %45
  %57 = load i8*, i8** @optarg, align 8, !dbg !173
  %58 = call i64 @strtol(i8* %57, i8** null, i32 0) #8, !dbg !174
  store i64 %58, i64* %10, align 8, !dbg !175
  br label %85, !dbg !176

; <label>:59:                                     ; preds = %45
  store i8 0, i8* %13, align 1, !dbg !177
  br label %85, !dbg !178

; <label>:60:                                     ; preds = %45
  store i32 1, i32* %7, align 4, !dbg !179
  br label %85, !dbg !180

; <label>:61:                                     ; preds = %45
  store i32 2, i32* %7, align 4, !dbg !181
  br label %85, !dbg !182

; <label>:62:                                     ; preds = %45
  store i32 3, i32* %7, align 4, !dbg !183
  br label %85, !dbg !184

; <label>:63:                                     ; preds = %45
  store i32 4, i32* %7, align 4, !dbg !185
  br label %85, !dbg !186

; <label>:64:                                     ; preds = %45
  store i32 5, i32* %7, align 4, !dbg !187
  br label %85, !dbg !188

; <label>:65:                                     ; preds = %45
  store i32 6, i32* %7, align 4, !dbg !189
  br label %85, !dbg !190

; <label>:66:                                     ; preds = %45
  store i32 7, i32* %7, align 4, !dbg !191
  br label %85, !dbg !192

; <label>:67:                                     ; preds = %45
  store i32 8, i32* %7, align 4, !dbg !193
  br label %85, !dbg !194

; <label>:68:                                     ; preds = %45
  store i32 9, i32* %7, align 4, !dbg !195
  br label %85, !dbg !196

; <label>:69:                                     ; preds = %45
  %70 = load i32, i32* @verbose, align 4, !dbg !197
  %71 = add nsw i32 %70, 1, !dbg !197
  store i32 %71, i32* @verbose, align 4, !dbg !197
  br label %85, !dbg !198

; <label>:72:                                     ; preds = %45
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !199
  %74 = load i8*, i8** @version, align 8, !dbg !200
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* %74), !dbg !201
  call void @exit(i32 0) #10, !dbg !202
  unreachable, !dbg !202

; <label>:76:                                     ; preds = %45
  %77 = load i8*, i8** @optarg, align 8, !dbg !203
  %78 = call i64 @str_to_num(i8* %77), !dbg !204
  store i64 %78, i64* @CHUNK_i, align 8, !dbg !205
  br label %85, !dbg !206

; <label>:79:                                     ; preds = %45
  %80 = load i8*, i8** @optarg, align 8, !dbg !207
  %81 = call i64 @str_to_num(i8* %80), !dbg !208
  store i64 %81, i64* @CHUNK_o, align 8, !dbg !209
  br label %85, !dbg !210

; <label>:82:                                     ; preds = %45, %45
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !211
  %84 = load i8*, i8** %8, align 8, !dbg !212
  call void @usage(%struct._IO_FILE* %83, i8* %84), !dbg !213
  call void @exit(i32 0) #10, !dbg !214
  unreachable, !dbg !214

; <label>:85:                                     ; preds = %45, %79, %76, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %56, %53, %49, %47
  br label %38, !dbg !215, !llvm.loop !217

; <label>:86:                                     ; preds = %44
  %87 = load i8*, i8** %15, align 8, !dbg !218
  %88 = load i32, i32* %17, align 4, !dbg !219
  call void @zlib_set_accelerator(i8* %87, i32 %88), !dbg !220
  call void @zlib_set_inflate_impl(i32 1), !dbg !221
  call void @zlib_set_deflate_impl(i32 1), !dbg !222
  %89 = load i32, i32* @optind, align 4, !dbg !223
  %90 = load i32, i32* %4, align 4, !dbg !225
  %91 = icmp slt i32 %89, %90, !dbg !226
  br i1 %91, label %92, label %124, !dbg !227

; <label>:92:                                     ; preds = %86
  %93 = load i32, i32* @optind, align 4, !dbg !228
  %94 = add nsw i32 %93, 1, !dbg !228
  store i32 %94, i32* @optind, align 4, !dbg !228
  %95 = sext i32 %93 to i64, !dbg !230
  %96 = load i8**, i8*** %5, align 8, !dbg !230
  %97 = getelementptr inbounds i8*, i8** %96, i64 %95, !dbg !230
  %98 = load i8*, i8** %97, align 8, !dbg !230
  store i8* %98, i8** %11, align 8, !dbg !231
  %99 = load i8*, i8** %11, align 8, !dbg !232
  %100 = call i32 @lstat(i8* %99, %struct.stat* %14) #8, !dbg !233
  store i32 %100, i32* %6, align 4, !dbg !234
  %101 = load i32, i32* %6, align 4, !dbg !235
  %102 = icmp ne i32 %101, 0, !dbg !237
  br i1 %102, label %103, label %109, !dbg !238

; <label>:103:                                    ; preds = %92
  br label %104, !dbg !239, !llvm.loop !241

; <label>:104:                                    ; preds = %103
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !242
  %106 = load i8*, i8** %11, align 8, !dbg !245
  %107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i32 0, i32 0), i8* %106), !dbg !246
  br label %108, !dbg !247

; <label>:108:                                    ; preds = %104
  call void @exit(i32 79) #10, !dbg !248
  unreachable, !dbg !248

; <label>:109:                                    ; preds = %92
  %110 = load i32, i32* %6, align 4, !dbg !249
  %111 = icmp eq i32 %110, 0, !dbg !251
  br i1 %111, label %112, label %123, !dbg !252

; <label>:112:                                    ; preds = %109
  %113 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 3, !dbg !253
  %114 = load i32, i32* %113, align 8, !dbg !253
  %115 = and i32 %114, 61440, !dbg !255
  %116 = icmp eq i32 %115, 40960, !dbg !256
  br i1 %116, label %117, label %123, !dbg !257

; <label>:117:                                    ; preds = %112
  br label %118, !dbg !258, !llvm.loop !260

; <label>:118:                                    ; preds = %117
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !261
  %120 = load i8*, i8** %11, align 8, !dbg !264
  %121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i32 0, i32 0), i8* %120), !dbg !265
  br label %122, !dbg !266

; <label>:122:                                    ; preds = %118
  call void @exit(i32 1) #10, !dbg !267
  unreachable, !dbg !267

; <label>:123:                                    ; preds = %112, %109
  br label %124, !dbg !268

; <label>:124:                                    ; preds = %123, %86
  %125 = load i32, i32* @optind, align 4, !dbg !269
  %126 = load i32, i32* %4, align 4, !dbg !271
  %127 = icmp slt i32 %125, %126, !dbg !272
  br i1 %127, label %128, label %135, !dbg !273

; <label>:128:                                    ; preds = %124
  %129 = load i32, i32* @optind, align 4, !dbg !274
  %130 = add nsw i32 %129, 1, !dbg !274
  store i32 %130, i32* @optind, align 4, !dbg !274
  %131 = sext i32 %129 to i64, !dbg !276
  %132 = load i8**, i8*** %5, align 8, !dbg !276
  %133 = getelementptr inbounds i8*, i8** %132, i64 %131, !dbg !276
  %134 = load i8*, i8** %133, align 8, !dbg !276
  store i8* %134, i8** %12, align 8, !dbg !277
  br label %138, !dbg !278

; <label>:135:                                    ; preds = %124
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !279
  %137 = load i8*, i8** %8, align 8, !dbg !281
  call void @usage(%struct._IO_FILE* %136, i8* %137), !dbg !282
  call void @exit(i32 1) #10, !dbg !283
  unreachable, !dbg !283

; <label>:138:                                    ; preds = %128
  %139 = load i32, i32* @optind, align 4, !dbg !284
  %140 = load i32, i32* %4, align 4, !dbg !286
  %141 = icmp ne i32 %139, %140, !dbg !287
  br i1 %141, label %142, label %145, !dbg !288

; <label>:142:                                    ; preds = %138
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !289
  %144 = load i8*, i8** %8, align 8, !dbg !291
  call void @usage(%struct._IO_FILE* %143, i8* %144), !dbg !292
  call void @exit(i32 1) #10, !dbg !293
  unreachable, !dbg !293

; <label>:145:                                    ; preds = %138
  %146 = load i8*, i8** %11, align 8, !dbg !294
  %147 = icmp eq i8* %146, null, !dbg !296
  br i1 %147, label %151, label %148, !dbg !297

; <label>:148:                                    ; preds = %145
  %149 = load i8*, i8** %12, align 8, !dbg !298
  %150 = icmp eq i8* %149, null, !dbg !300
  br i1 %150, label %151, label %156, !dbg !301

; <label>:151:                                    ; preds = %148, %145
  br label %152, !dbg !302, !llvm.loop !304

; <label>:152:                                    ; preds = %151
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !305
  %154 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %153, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i32 0, i32 0)), !dbg !308
  br label %155, !dbg !309

; <label>:155:                                    ; preds = %152
  ret i32 -1, !dbg !310

; <label>:156:                                    ; preds = %148
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !311
  %158 = load i8, i8* %13, align 1, !dbg !312
  %159 = trunc i8 %158 to i1, !dbg !312
  %160 = select i1 %159, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), !dbg !312
  %161 = load i8*, i8** %11, align 8, !dbg !313
  %162 = load i8*, i8** %12, align 8, !dbg !314
  %163 = load i64, i64* @CHUNK_i, align 8, !dbg !315
  %164 = load i64, i64* @CHUNK_o, align 8, !dbg !316
  %165 = load i32, i32* %7, align 4, !dbg !317
  %166 = load i64, i64* %9, align 8, !dbg !318
  %167 = load i64, i64* %10, align 8, !dbg !319
  %168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %157, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.16, i32 0, i32 0), i8* %160, i8* %161, i8* %162, i64 %163, i64 %164, i32 %165, i64 %166, i64 %167), !dbg !320
  %169 = load i8, i8* %13, align 1, !dbg !321
  %170 = trunc i8 %169 to i1, !dbg !321
  br i1 %170, label %171, label %178, !dbg !323

; <label>:171:                                    ; preds = %156
  %172 = load i8*, i8** %11, align 8, !dbg !324
  %173 = load i8*, i8** %12, align 8, !dbg !325
  %174 = load i64, i64* @CHUNK_i, align 8, !dbg !326
  %175 = load i64, i64* @CHUNK_o, align 8, !dbg !327
  %176 = load i32, i32* %7, align 4, !dbg !328
  %177 = call i32 @do_compress(i8* %172, i8* %173, i64 %174, i64 %175, i32 %176), !dbg !329
  store i32 %177, i32* %6, align 4, !dbg !330
  br label %186, !dbg !331

; <label>:178:                                    ; preds = %156
  %179 = load i8*, i8** %11, align 8, !dbg !332
  %180 = load i8*, i8** %12, align 8, !dbg !333
  %181 = load i64, i64* @CHUNK_i, align 8, !dbg !334
  %182 = load i64, i64* @CHUNK_o, align 8, !dbg !335
  %183 = load i64, i64* %10, align 8, !dbg !336
  %184 = load i64, i64* %9, align 8, !dbg !337
  %185 = call i32 @do_decompress(i8* %179, i8* %180, i64 %181, i64 %182, i64 %183, i64 %184), !dbg !338
  store i32 %185, i32* %6, align 4, !dbg !339
  br label %186

; <label>:186:                                    ; preds = %178, %171
  %187 = load i32, i32* %6, align 4, !dbg !340
  call void @exit(i32 %187) #10, !dbg !341
  unreachable, !dbg !341
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @__xpg_basename(i8*) #2

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @str_to_num(i8*) #6 !dbg !342 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !347, metadata !51), !dbg !348
  call void @llvm.dbg.declare(metadata i8** %4, metadata !349, metadata !51), !dbg !350
  %6 = load i8*, i8** %3, align 8, !dbg !351
  store i8* %6, i8** %4, align 8, !dbg !350
  call void @llvm.dbg.declare(metadata i64* %5, metadata !352, metadata !51), !dbg !353
  %7 = load i8*, i8** %4, align 8, !dbg !354
  %8 = call i64 @strtoull(i8* %7, i8** %4, i32 0) #8, !dbg !355
  store i64 %8, i64* %5, align 8, !dbg !353
  %9 = load i8*, i8** %4, align 8, !dbg !356
  %10 = load i8, i8* %9, align 1, !dbg !358
  %11 = sext i8 %10 to i32, !dbg !358
  %12 = icmp eq i32 %11, 0, !dbg !359
  br i1 %12, label %13, label %15, !dbg !360

; <label>:13:                                     ; preds = %1
  %14 = load i64, i64* %5, align 8, !dbg !361
  store i64 %14, i64* %2, align 8, !dbg !362
  br label %40, !dbg !362

; <label>:15:                                     ; preds = %1
  %16 = load i8*, i8** %4, align 8, !dbg !363
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0)) #9, !dbg !365
  %18 = icmp eq i32 %17, 0, !dbg !366
  br i1 %18, label %19, label %22, !dbg !367

; <label>:19:                                     ; preds = %15
  %20 = load i64, i64* %5, align 8, !dbg !368
  %21 = mul i64 %20, 1024, !dbg !368
  store i64 %21, i64* %5, align 8, !dbg !368
  br label %38, !dbg !369

; <label>:22:                                     ; preds = %15
  %23 = load i8*, i8** %4, align 8, !dbg !370
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0)) #9, !dbg !372
  %25 = icmp eq i32 %24, 0, !dbg !373
  br i1 %25, label %26, label %29, !dbg !374

; <label>:26:                                     ; preds = %22
  %27 = load i64, i64* %5, align 8, !dbg !375
  %28 = mul i64 %27, 1048576, !dbg !375
  store i64 %28, i64* %5, align 8, !dbg !375
  br label %37, !dbg !376

; <label>:29:                                     ; preds = %22
  %30 = load i8*, i8** %4, align 8, !dbg !377
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0)) #9, !dbg !379
  %32 = icmp eq i32 %31, 0, !dbg !380
  br i1 %32, label %33, label %36, !dbg !381

; <label>:33:                                     ; preds = %29
  %34 = load i64, i64* %5, align 8, !dbg !382
  %35 = mul i64 %34, 1073741824, !dbg !382
  store i64 %35, i64* %5, align 8, !dbg !382
  br label %36, !dbg !383

; <label>:36:                                     ; preds = %33, %29
  br label %37

; <label>:37:                                     ; preds = %36, %26
  br label %38

; <label>:38:                                     ; preds = %37, %19
  %39 = load i64, i64* %5, align 8, !dbg !384
  store i64 %39, i64* %2, align 8, !dbg !385
  br label %40, !dbg !385

; <label>:40:                                     ; preds = %38, %13
  %41 = load i64, i64* %2, align 8, !dbg !386
  ret i64 %41, !dbg !386
}

; Function Attrs: nounwind uwtable
define internal void @usage(%struct._IO_FILE*, i8*) #0 !dbg !387 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !443, metadata !51), !dbg !444
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !445, metadata !51), !dbg !446
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !447
  %6 = load i8*, i8** %4, align 8, !dbg !448
  %7 = load i64, i64* @CHUNK_i, align 8, !dbg !449
  %8 = udiv i64 %7, 1024, !dbg !450
  %9 = load i64, i64* @CHUNK_o, align 8, !dbg !451
  %10 = udiv i64 %9, 1024, !dbg !452
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([504 x i8], [504 x i8]* @.str.23, i32 0, i32 0), i8* %6, i64 %8, i64 %10), !dbg !453
  ret void, !dbg !454
}

declare void @zlib_set_accelerator(i8*, i32) #4

declare void @zlib_set_inflate_impl(i32) #4

declare void @zlib_set_deflate_impl(i32) #4

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #2

; Function Attrs: nounwind uwtable
define internal i32 @do_compress(i8*, i8*, i64, i64, i32) #0 !dbg !455 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [16 x i8], align 16
  %13 = alloca %struct.gzFile_s*, align 8
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !458, metadata !51), !dbg !459
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !460, metadata !51), !dbg !461
  store i64 %2, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !462, metadata !51), !dbg !463
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !464, metadata !51), !dbg !465
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !466, metadata !51), !dbg !467
  call void @llvm.dbg.declare(metadata [16 x i8]* %12, metadata !468, metadata !51), !dbg !472
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %13, metadata !473, metadata !51), !dbg !484
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %14, metadata !485, metadata !51), !dbg !486
  call void @llvm.dbg.declare(metadata i64* %15, metadata !487, metadata !51), !dbg !490
  call void @llvm.dbg.declare(metadata i32* %16, metadata !491, metadata !51), !dbg !492
  call void @llvm.dbg.declare(metadata i8** %17, metadata !493, metadata !51), !dbg !496
  %18 = load i8*, i8** %7, align 8, !dbg !497
  %19 = call %struct._IO_FILE* @fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0)), !dbg !498
  store %struct._IO_FILE* %19, %struct._IO_FILE** %14, align 8, !dbg !499
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !500
  %21 = icmp eq %struct._IO_FILE* %20, null, !dbg !502
  br i1 %21, label %22, label %31, !dbg !503

; <label>:22:                                     ; preds = %5
  br label %23, !dbg !504, !llvm.loop !506

; <label>:23:                                     ; preds = %22
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !507
  %25 = load i8*, i8** %7, align 8, !dbg !510
  %26 = call i32* @__errno_location() #1, !dbg !511
  %27 = load i32, i32* %26, align 4, !dbg !512
  %28 = call i8* @strerror(i32 %27) #8, !dbg !513
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i32 0, i32 0), i8* %25, i8* %28), !dbg !515
  br label %30, !dbg !517

; <label>:30:                                     ; preds = %23
  store i32 -1, i32* %6, align 4, !dbg !518
  br label %132, !dbg !518

; <label>:31:                                     ; preds = %5
  %32 = load i64, i64* %9, align 8, !dbg !519
  %33 = call noalias i8* @malloc(i64 %32) #8, !dbg !520
  store i8* %33, i8** %17, align 8, !dbg !521
  %34 = load i8*, i8** %17, align 8, !dbg !522
  %35 = icmp eq i8* null, %34, !dbg !524
  br i1 %35, label %36, label %44, !dbg !525

; <label>:36:                                     ; preds = %31
  br label %37, !dbg !526, !llvm.loop !528

; <label>:37:                                     ; preds = %36
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !529
  %39 = call i32* @__errno_location() #1, !dbg !532
  %40 = load i32, i32* %39, align 4, !dbg !533
  %41 = call i8* @strerror(i32 %40) #8, !dbg !534
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), i8* %41), !dbg !536
  br label %43, !dbg !538

; <label>:43:                                     ; preds = %37
  br label %129, !dbg !539

; <label>:44:                                     ; preds = %31
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i32 0, i32 0, !dbg !540
  %46 = load i32, i32* %11, align 4, !dbg !541
  %47 = call i32 (i8*, i8*, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 %46) #8, !dbg !542
  %48 = load i8*, i8** %8, align 8, !dbg !543
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i32 0, i32 0, !dbg !544
  %50 = call %struct.gzFile_s* @gzopen64(i8* %48, i8* %49), !dbg !545
  store %struct.gzFile_s* %50, %struct.gzFile_s** %13, align 8, !dbg !546
  %51 = load %struct.gzFile_s*, %struct.gzFile_s** %13, align 8, !dbg !547
  %52 = icmp eq %struct.gzFile_s* %51, null, !dbg !549
  br i1 %52, label %53, label %59, !dbg !550

; <label>:53:                                     ; preds = %44
  br label %54, !dbg !551, !llvm.loop !553

; <label>:54:                                     ; preds = %53
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !554
  %56 = load i8*, i8** %8, align 8, !dbg !557
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.28, i32 0, i32 0), i8* %56), !dbg !558
  br label %58, !dbg !559

; <label>:58:                                     ; preds = %54
  br label %127, !dbg !560

; <label>:59:                                     ; preds = %44
  %60 = load %struct.gzFile_s*, %struct.gzFile_s** %13, align 8, !dbg !561
  %61 = load i64, i64* %10, align 8, !dbg !562
  %62 = trunc i64 %61 to i32, !dbg !562
  %63 = call i32 @gzbuffer(%struct.gzFile_s* %60, i32 %62), !dbg !563
  store i32 %63, i32* %16, align 4, !dbg !564
  %64 = load i32, i32* %16, align 4, !dbg !565
  %65 = icmp ne i32 %64, 0, !dbg !567
  br i1 %65, label %66, label %72, !dbg !568

; <label>:66:                                     ; preds = %59
  br label %67, !dbg !569, !llvm.loop !571

; <label>:67:                                     ; preds = %66
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !572
  %69 = load i32, i32* %16, align 4, !dbg !575
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.29, i32 0, i32 0), i32 %69), !dbg !576
  br label %71, !dbg !577

; <label>:71:                                     ; preds = %67
  br label %124, !dbg !578

; <label>:72:                                     ; preds = %59
  br label %73, !dbg !579, !llvm.loop !580

; <label>:73:                                     ; preds = %113, %72
  %74 = load i8*, i8** %17, align 8, !dbg !581
  %75 = load i64, i64* %9, align 8, !dbg !583
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !584
  %77 = call i64 @fread(i8* %74, i64 1, i64 %75, %struct._IO_FILE* %76), !dbg !585
  store i64 %77, i64* %15, align 8, !dbg !586
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !587
  %79 = call i32 @ferror(%struct._IO_FILE* %78) #8, !dbg !589
  %80 = icmp ne i32 %79, 0, !dbg !589
  br i1 %80, label %81, label %88, !dbg !590

; <label>:81:                                     ; preds = %73
  br label %82, !dbg !591, !llvm.loop !593

; <label>:82:                                     ; preds = %81
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !594
  %84 = load i64, i64* %15, align 8, !dbg !597
  %85 = trunc i64 %84 to i32, !dbg !598
  %86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0), i32 %85), !dbg !599
  br label %87, !dbg !600

; <label>:87:                                     ; preds = %82
  br label %124, !dbg !601

; <label>:88:                                     ; preds = %73
  %89 = load %struct.gzFile_s*, %struct.gzFile_s** %13, align 8, !dbg !602
  %90 = load i8*, i8** %17, align 8, !dbg !603
  %91 = load i64, i64* %15, align 8, !dbg !604
  %92 = trunc i64 %91 to i32, !dbg !604
  %93 = call i32 @gzwrite(%struct.gzFile_s* %89, i8* %90, i32 %92), !dbg !605
  store i32 %93, i32* %16, align 4, !dbg !606
  %94 = load i32, i32* %16, align 4, !dbg !607
  %95 = icmp eq i32 %94, 0, !dbg !609
  br i1 %95, label %96, label %102, !dbg !610

; <label>:96:                                     ; preds = %88
  br label %97, !dbg !611, !llvm.loop !613

; <label>:97:                                     ; preds = %96
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !614
  %99 = load i32, i32* %16, align 4, !dbg !617
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i32 0, i32 0), i32 %99), !dbg !618
  br label %101, !dbg !619

; <label>:101:                                    ; preds = %97
  br label %124, !dbg !620

; <label>:102:                                    ; preds = %88
  %103 = load i32, i32* @verbose, align 4, !dbg !621
  %104 = icmp eq i32 %103, 1, !dbg !623
  br i1 %104, label %105, label %112, !dbg !624

; <label>:105:                                    ; preds = %102
  br label %106, !dbg !625, !llvm.loop !626

; <label>:106:                                    ; preds = %105
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !627
  %108 = load %struct.gzFile_s*, %struct.gzFile_s** %13, align 8, !dbg !630
  %109 = call i64 @gztell64(%struct.gzFile_s* %108), !dbg !631
  %110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0), i64 %109), !dbg !632
  br label %111, !dbg !634

; <label>:111:                                    ; preds = %106
  br label %112, !dbg !635

; <label>:112:                                    ; preds = %111, %102
  br label %113, !dbg !637

; <label>:113:                                    ; preds = %112
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !638
  %115 = call i32 @feof(%struct._IO_FILE* %114) #8, !dbg !640
  %116 = icmp ne i32 %115, 0, !dbg !641
  %117 = xor i1 %116, true, !dbg !641
  br i1 %117, label %73, label %118, !dbg !642, !llvm.loop !580

; <label>:118:                                    ; preds = %113
  %119 = load %struct.gzFile_s*, %struct.gzFile_s** %13, align 8, !dbg !643
  %120 = call i32 @gzclose(%struct.gzFile_s* %119), !dbg !644
  %121 = load i8*, i8** %17, align 8, !dbg !645
  call void @free(i8* %121) #8, !dbg !646
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !647
  %123 = call i32 @fclose(%struct._IO_FILE* %122), !dbg !648
  store i32 0, i32* %6, align 4, !dbg !649
  br label %132, !dbg !649

; <label>:124:                                    ; preds = %101, %87, %71
  %125 = load %struct.gzFile_s*, %struct.gzFile_s** %13, align 8, !dbg !650
  %126 = call i32 @gzclose(%struct.gzFile_s* %125), !dbg !651
  br label %127, !dbg !651

; <label>:127:                                    ; preds = %124, %58
  %128 = load i8*, i8** %17, align 8, !dbg !652
  call void @free(i8* %128) #8, !dbg !653
  br label %129, !dbg !653

; <label>:129:                                    ; preds = %127, %43
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !654
  %131 = call i32 @fclose(%struct._IO_FILE* %130), !dbg !655
  store i32 -1, i32* %6, align 4, !dbg !656
  br label %132, !dbg !656

; <label>:132:                                    ; preds = %129, %118, %30
  %133 = load i32, i32* %6, align 4, !dbg !657
  ret i32 %133, !dbg !657
}

; Function Attrs: nounwind uwtable
define internal i32 @do_decompress(i8*, i8*, i64, i64, i64, i64) #0 !dbg !658 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.gzFile_s*, align 8
  %15 = alloca %struct._IO_FILE*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !661, metadata !51), !dbg !662
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !663, metadata !51), !dbg !664
  store i64 %2, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !665, metadata !51), !dbg !666
  store i64 %3, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !667, metadata !51), !dbg !668
  store i64 %4, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !669, metadata !51), !dbg !670
  store i64 %5, i64* %13, align 8
  call void @llvm.dbg.declare(metadata i64* %13, metadata !671, metadata !51), !dbg !672
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %14, metadata !673, metadata !51), !dbg !674
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %15, metadata !675, metadata !51), !dbg !676
  call void @llvm.dbg.declare(metadata i64* %16, metadata !677, metadata !51), !dbg !678
  call void @llvm.dbg.declare(metadata i64* %17, metadata !679, metadata !51), !dbg !680
  store i64 0, i64* %17, align 8, !dbg !680
  call void @llvm.dbg.declare(metadata i32* %18, metadata !681, metadata !51), !dbg !682
  call void @llvm.dbg.declare(metadata i8** %19, metadata !683, metadata !51), !dbg !684
  %21 = load i8*, i8** %9, align 8, !dbg !685
  %22 = call %struct._IO_FILE* @fopen(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0)), !dbg !686
  store %struct._IO_FILE* %22, %struct._IO_FILE** %15, align 8, !dbg !687
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8, !dbg !688
  %24 = icmp eq %struct._IO_FILE* %23, null, !dbg !690
  br i1 %24, label %25, label %31, !dbg !691

; <label>:25:                                     ; preds = %6
  br label %26, !dbg !692, !llvm.loop !694

; <label>:26:                                     ; preds = %25
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !695
  %28 = load i8*, i8** %9, align 8, !dbg !698
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.28, i32 0, i32 0), i8* %28), !dbg !699
  br label %30, !dbg !700

; <label>:30:                                     ; preds = %26
  store i32 -1, i32* %7, align 4, !dbg !701
  br label %223, !dbg !701

; <label>:31:                                     ; preds = %6
  %32 = load i64, i64* %10, align 8, !dbg !702
  %33 = call noalias i8* @malloc(i64 %32) #8, !dbg !703
  store i8* %33, i8** %19, align 8, !dbg !704
  %34 = load i8*, i8** %19, align 8, !dbg !705
  %35 = icmp eq i8* null, %34, !dbg !707
  br i1 %35, label %36, label %44, !dbg !708

; <label>:36:                                     ; preds = %31
  br label %37, !dbg !709, !llvm.loop !711

; <label>:37:                                     ; preds = %36
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !712
  %39 = call i32* @__errno_location() #1, !dbg !715
  %40 = load i32, i32* %39, align 4, !dbg !716
  %41 = call i8* @strerror(i32 %40) #8, !dbg !717
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), i8* %41), !dbg !719
  br label %43, !dbg !721

; <label>:43:                                     ; preds = %37
  br label %220, !dbg !722

; <label>:44:                                     ; preds = %31
  %45 = load i8*, i8** %8, align 8, !dbg !723
  %46 = call %struct.gzFile_s* @gzopen(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0)), !dbg !724
  store %struct.gzFile_s* %46, %struct.gzFile_s** %14, align 8, !dbg !725
  %47 = load %struct.gzFile_s*, %struct.gzFile_s** %14, align 8, !dbg !726
  %48 = icmp eq %struct.gzFile_s* %47, null, !dbg !728
  br i1 %48, label %49, label %55, !dbg !729

; <label>:49:                                     ; preds = %44
  br label %50, !dbg !730, !llvm.loop !732

; <label>:50:                                     ; preds = %49
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !733
  %52 = load i8*, i8** %8, align 8, !dbg !736
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.28, i32 0, i32 0), i8* %52), !dbg !737
  br label %54, !dbg !738

; <label>:54:                                     ; preds = %50
  br label %218, !dbg !739

; <label>:55:                                     ; preds = %44
  %56 = load %struct.gzFile_s*, %struct.gzFile_s** %14, align 8, !dbg !740
  %57 = load i64, i64* %11, align 8, !dbg !741
  %58 = trunc i64 %57 to i32, !dbg !741
  %59 = call i32 @gzbuffer(%struct.gzFile_s* %56, i32 %58), !dbg !742
  store i32 %59, i32* %18, align 4, !dbg !743
  %60 = load i32, i32* %18, align 4, !dbg !744
  %61 = icmp ne i32 %60, 0, !dbg !746
  br i1 %61, label %62, label %68, !dbg !747

; <label>:62:                                     ; preds = %55
  br label %63, !dbg !748, !llvm.loop !750

; <label>:63:                                     ; preds = %62
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !751
  %65 = load i32, i32* %18, align 4, !dbg !754
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.29, i32 0, i32 0), i32 %65), !dbg !755
  br label %67, !dbg !756

; <label>:67:                                     ; preds = %63
  br label %206, !dbg !757

; <label>:68:                                     ; preds = %55
  %69 = load i64, i64* %13, align 8, !dbg !758
  %70 = icmp ne i64 %69, 0, !dbg !760
  br i1 %70, label %71, label %86, !dbg !761

; <label>:71:                                     ; preds = %68
  call void @llvm.dbg.declare(metadata i64* %20, metadata !762, metadata !51), !dbg !764
  %72 = load %struct.gzFile_s*, %struct.gzFile_s** %14, align 8, !dbg !765
  %73 = load i64, i64* %12, align 8, !dbg !766
  %74 = call i64 @gzseek64(%struct.gzFile_s* %72, i64 %73, i32 0), !dbg !767
  store i64 %74, i64* %20, align 8, !dbg !768
  %75 = load i64, i64* %20, align 8, !dbg !769
  %76 = load i64, i64* %12, align 8, !dbg !771
  %77 = icmp eq i64 %75, %76, !dbg !772
  br i1 %77, label %78, label %85, !dbg !773

; <label>:78:                                     ; preds = %71
  br label %79, !dbg !774, !llvm.loop !776

; <label>:79:                                     ; preds = %78
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !777
  %81 = load i64, i64* %20, align 8, !dbg !780
  %82 = load i64, i64* %12, align 8, !dbg !781
  %83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.35, i32 0, i32 0), i64 %81, i64 %82), !dbg !782
  br label %84, !dbg !783

; <label>:84:                                     ; preds = %79
  br label %206, !dbg !784

; <label>:85:                                     ; preds = %71
  br label %86, !dbg !785

; <label>:86:                                     ; preds = %85, %68
  br label %87, !dbg !786, !llvm.loop !787

; <label>:87:                                     ; preds = %185, %86
  %88 = load %struct.gzFile_s*, %struct.gzFile_s** %14, align 8, !dbg !788
  %89 = load i8*, i8** %19, align 8, !dbg !790
  %90 = load i64, i64* %10, align 8, !dbg !791
  %91 = trunc i64 %90 to i32, !dbg !791
  %92 = call i32 @gzread(%struct.gzFile_s* %88, i8* %89, i32 %91), !dbg !792
  %93 = sext i32 %92 to i64, !dbg !792
  store i64 %93, i64* %16, align 8, !dbg !793
  %94 = load i64, i64* %16, align 8, !dbg !794
  %95 = icmp slt i64 %94, 0, !dbg !796
  br i1 %95, label %96, label %103, !dbg !797

; <label>:96:                                     ; preds = %87
  br label %97, !dbg !798, !llvm.loop !800

; <label>:97:                                     ; preds = %96
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !801
  %99 = load i64, i64* %16, align 8, !dbg !804
  %100 = trunc i64 %99 to i32, !dbg !805
  %101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i32 0, i32 0), i32 %100), !dbg !806
  br label %102, !dbg !807

; <label>:102:                                    ; preds = %97
  br label %206, !dbg !808

; <label>:103:                                    ; preds = %87
  %104 = load i32, i32* @verbose, align 4, !dbg !809
  %105 = icmp eq i32 %104, 1, !dbg !811
  br i1 %105, label %106, label %113, !dbg !812

; <label>:106:                                    ; preds = %103
  br label %107, !dbg !813, !llvm.loop !814

; <label>:107:                                    ; preds = %106
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !815
  %109 = load %struct.gzFile_s*, %struct.gzFile_s** %14, align 8, !dbg !818
  %110 = call i64 @gztell64(%struct.gzFile_s* %109), !dbg !819
  %111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0), i64 %110), !dbg !820
  br label %112, !dbg !822

; <label>:112:                                    ; preds = %107
  br label %113, !dbg !823

; <label>:113:                                    ; preds = %112, %103
  %114 = load i32, i32* @verbose, align 4, !dbg !825
  %115 = icmp ne i32 %114, 0, !dbg !825
  br i1 %115, label %116, label %122, !dbg !827

; <label>:116:                                    ; preds = %113
  br label %117, !dbg !828, !llvm.loop !829

; <label>:117:                                    ; preds = %116
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !830
  %119 = load i64, i64* %16, align 8, !dbg !833
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0), i64 %119), !dbg !834
  br label %121, !dbg !835

; <label>:121:                                    ; preds = %117
  br label %122, !dbg !836

; <label>:122:                                    ; preds = %121, %113
  %123 = load i64, i64* %16, align 8, !dbg !838
  %124 = icmp eq i64 %123, 0, !dbg !840
  br i1 %124, label %125, label %126, !dbg !841

; <label>:125:                                    ; preds = %122
  br label %191, !dbg !842

; <label>:126:                                    ; preds = %122
  %127 = load i64, i64* %13, align 8, !dbg !843
  %128 = icmp ne i64 %127, 0, !dbg !845
  br i1 %128, label %129, label %140, !dbg !846

; <label>:129:                                    ; preds = %126
  %130 = load i64, i64* %17, align 8, !dbg !847
  %131 = load i64, i64* %16, align 8, !dbg !849
  %132 = add nsw i64 %130, %131, !dbg !850
  %133 = load i64, i64* %13, align 8, !dbg !851
  %134 = icmp sgt i64 %132, %133, !dbg !852
  br i1 %134, label %135, label %139, !dbg !853

; <label>:135:                                    ; preds = %129
  %136 = load i64, i64* %13, align 8, !dbg !854
  %137 = load i64, i64* %17, align 8, !dbg !855
  %138 = sub nsw i64 %136, %137, !dbg !856
  store i64 %138, i64* %16, align 8, !dbg !857
  br label %139, !dbg !858

; <label>:139:                                    ; preds = %135, %129
  br label %140, !dbg !859

; <label>:140:                                    ; preds = %139, %126
  %141 = load i32, i32* @verbose, align 4, !dbg !861
  %142 = icmp ne i32 %141, 0, !dbg !861
  br i1 %142, label %143, label %149, !dbg !863

; <label>:143:                                    ; preds = %140
  br label %144, !dbg !864, !llvm.loop !865

; <label>:144:                                    ; preds = %143
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !866
  %146 = load i64, i64* %16, align 8, !dbg !869
  %147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %145, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0), i64 %146), !dbg !870
  br label %148, !dbg !871

; <label>:148:                                    ; preds = %144
  br label %149, !dbg !872

; <label>:149:                                    ; preds = %148, %140
  %150 = load i8*, i8** %19, align 8, !dbg !874
  %151 = load i64, i64* %16, align 8, !dbg !875
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8, !dbg !876
  %153 = call i64 @fwrite(i8* %150, i64 %151, i64 1, %struct._IO_FILE* %152), !dbg !877
  %154 = trunc i64 %153 to i32, !dbg !877
  store i32 %154, i32* %18, align 4, !dbg !878
  %155 = load i32, i32* %18, align 4, !dbg !879
  %156 = icmp slt i32 %155, 1, !dbg !881
  br i1 %156, label %157, label %163, !dbg !882

; <label>:157:                                    ; preds = %149
  br label %158, !dbg !883, !llvm.loop !885

; <label>:158:                                    ; preds = %157
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !886
  %160 = load i32, i32* %18, align 4, !dbg !889
  %161 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %159, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i32 0, i32 0), i32 %160), !dbg !890
  br label %162, !dbg !891

; <label>:162:                                    ; preds = %158
  br label %206, !dbg !892

; <label>:163:                                    ; preds = %149
  %164 = load i64, i64* %16, align 8, !dbg !893
  %165 = load i64, i64* %17, align 8, !dbg !894
  %166 = add nsw i64 %165, %164, !dbg !894
  store i64 %166, i64* %17, align 8, !dbg !894
  %167 = load i64, i64* %13, align 8, !dbg !895
  %168 = icmp ne i64 %167, 0, !dbg !897
  br i1 %168, label %169, label %174, !dbg !898

; <label>:169:                                    ; preds = %163
  %170 = load i64, i64* %13, align 8, !dbg !899
  %171 = load i64, i64* %17, align 8, !dbg !901
  %172 = icmp eq i64 %170, %171, !dbg !902
  br i1 %172, label %173, label %174, !dbg !903

; <label>:173:                                    ; preds = %169
  br label %191, !dbg !904

; <label>:174:                                    ; preds = %169, %163
  %175 = load i32, i32* @verbose, align 4, !dbg !905
  %176 = icmp ne i32 %175, 0, !dbg !905
  br i1 %176, label %177, label %184, !dbg !907

; <label>:177:                                    ; preds = %174
  br label %178, !dbg !908, !llvm.loop !909

; <label>:178:                                    ; preds = %177
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !910
  %180 = load i64, i64* %16, align 8, !dbg !913
  %181 = load i64, i64* %10, align 8, !dbg !914
  %182 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %179, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.40, i32 0, i32 0), i64 %180, i64 %181), !dbg !915
  br label %183, !dbg !916

; <label>:183:                                    ; preds = %178
  br label %184, !dbg !917

; <label>:184:                                    ; preds = %183, %174
  br label %185, !dbg !919

; <label>:185:                                    ; preds = %184
  %186 = load i64, i64* %16, align 8, !dbg !920
  %187 = load i64, i64* %10, align 8, !dbg !922
  %188 = trunc i64 %187 to i32, !dbg !923
  %189 = sext i32 %188 to i64, !dbg !923
  %190 = icmp sle i64 %186, %189, !dbg !924
  br i1 %190, label %87, label %191, !dbg !925, !llvm.loop !787

; <label>:191:                                    ; preds = %185, %173, %125
  %192 = load %struct.gzFile_s*, %struct.gzFile_s** %14, align 8, !dbg !926
  %193 = call i32 @gzclose(%struct.gzFile_s* %192), !dbg !927
  store i32 %193, i32* %18, align 4, !dbg !928
  %194 = load i32, i32* %18, align 4, !dbg !929
  %195 = icmp ne i32 %194, 0, !dbg !931
  br i1 %195, label %196, label %202, !dbg !932

; <label>:196:                                    ; preds = %191
  br label %197, !dbg !933, !llvm.loop !935

; <label>:197:                                    ; preds = %196
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !936
  %199 = load i32, i32* %18, align 4, !dbg !939
  %200 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %198, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0), i32 %199), !dbg !940
  br label %201, !dbg !941

; <label>:201:                                    ; preds = %197
  br label %218, !dbg !942

; <label>:202:                                    ; preds = %191
  %203 = load i8*, i8** %19, align 8, !dbg !943
  call void @free(i8* %203) #8, !dbg !944
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8, !dbg !945
  %205 = call i32 @fclose(%struct._IO_FILE* %204), !dbg !946
  store i32 0, i32* %7, align 4, !dbg !947
  br label %223, !dbg !947

; <label>:206:                                    ; preds = %162, %102, %84, %67
  %207 = load %struct.gzFile_s*, %struct.gzFile_s** %14, align 8, !dbg !948
  %208 = call i32 @gzclose(%struct.gzFile_s* %207), !dbg !949
  store i32 %208, i32* %18, align 4, !dbg !950
  %209 = load i32, i32* %18, align 4, !dbg !951
  %210 = icmp ne i32 %209, 0, !dbg !953
  br i1 %210, label %211, label %217, !dbg !954

; <label>:211:                                    ; preds = %206
  br label %212, !dbg !955, !llvm.loop !956

; <label>:212:                                    ; preds = %211
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !957
  %214 = load i32, i32* %18, align 4, !dbg !960
  %215 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %213, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0), i32 %214), !dbg !961
  br label %216, !dbg !962

; <label>:216:                                    ; preds = %212
  br label %217, !dbg !963

; <label>:217:                                    ; preds = %216, %206
  br label %218, !dbg !965

; <label>:218:                                    ; preds = %217, %201, %54
  %219 = load i8*, i8** %19, align 8, !dbg !967
  call void @free(i8* %219) #8, !dbg !968
  br label %220, !dbg !968

; <label>:220:                                    ; preds = %218, %43
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8, !dbg !969
  %222 = call i32 @fclose(%struct._IO_FILE* %221), !dbg !970
  store i32 -1, i32* %7, align 4, !dbg !971
  br label %223, !dbg !971

; <label>:223:                                    ; preds = %220, %202, %30
  %224 = load i32, i32* %7, align 4, !dbg !972
  ret i32 %224, !dbg !972
}

; Function Attrs: nounwind
declare i64 @strtoull(i8*, i8**, i32) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare %struct.gzFile_s* @gzopen64(i8*, i8*) #4

declare i32 @gzbuffer(%struct.gzFile_s*, i32) #4

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

declare i32 @gzwrite(%struct.gzFile_s*, i8*, i32) #4

declare i64 @gztell64(%struct.gzFile_s*) #4

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

declare i32 @gzclose(%struct.gzFile_s*) #4

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i32 @fclose(%struct._IO_FILE*) #4

declare %struct.gzFile_s* @gzopen(i8*, i8*) #4

declare i64 @gzseek64(%struct.gzFile_s*, i64, i32) #4

declare i32 @gzread(%struct.gzFile_s*, i8*, i32) #4

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!47, !48}
!llvm.ident = !{!49}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15, globals: !22)
!1 = !DIFile(filename: "/home/lichi/Desktop/genwqe/[task]tools--gzFile_test/[inter]tools--gzFile_test.o.i", directory: "/home/lichi/Desktop")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zlib_impl", file: !4, line: 26, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../include/zaddons.h", directory: "/home/lichi/Desktop")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "ZLIB_SW_IMPL", value: 0)
!7 = !DIEnumerator(name: "ZLIB_HW_IMPL", value: 1)
!8 = !DIEnumerator(name: "ZLIB_MAX_IMPL", value: 2)
!9 = !DIEnumerator(name: "ZLIB_IMPL_MASK", value: 15)
!10 = !DIEnumerator(name: "ZLIB_FLAG_USE_FLAT_BUFFERS", value: 16)
!11 = !DIEnumerator(name: "ZLIB_FLAG_CACHE_HANDLES", value: 32)
!12 = !DIEnumerator(name: "ZLIB_FLAG_OMIT_LAST_DICT", value: 64)
!13 = !DIEnumerator(name: "ZLIB_FLAG_USE_POLLING", value: 128)
!14 = !DIEnumerator(name: "ZLIB_FLAG_DISABLE_CV_FOR_Z_STREAM_END", value: 256)
!15 = !{!16, !17, !20, !21}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!20 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!21 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!22 = !{!23, !42, !43, !44, !46}
!23 = distinct !DIGlobalVariable(name: "long_options", scope: !24, file: !25, line: 447, type: !29, isLocal: true, isDefinition: true, variable: [9 x %struct.option]* @main.long_options)
!24 = distinct !DISubprogram(name: "main", scope: !25, file: !25, line: 416, type: !26, isLocal: false, isDefinition: true, scopeLine: 417, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!25 = !DIFile(filename: "gzFile_test.c", directory: "/home/lichi/Desktop")
!26 = !DISubroutineType(types: !27)
!27 = !{!21, !21, !17}
!28 = !{}
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2304, align: 64, elements: !40)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !31, line: 104, size: 256, align: 64, elements: !32)
!31 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/lichi/Desktop")
!32 = !{!33, !36, !37, !39}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !30, file: !31, line: 106, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !30, file: !31, line: 109, baseType: !21, size: 32, align: 32, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !30, file: !31, line: 110, baseType: !38, size: 64, align: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !30, file: !31, line: 111, baseType: !21, size: 32, align: 32, offset: 192)
!40 = !{!41}
!41 = !DISubrange(count: 9)
!42 = distinct !DIGlobalVariable(name: "verbose", scope: !0, file: !25, line: 69, type: !21, isLocal: true, isDefinition: true, variable: i32* @verbose)
!43 = distinct !DIGlobalVariable(name: "version", scope: !0, file: !25, line: 65, type: !34, isLocal: true, isDefinition: true, variable: i8** @version)
!44 = distinct !DIGlobalVariable(name: "CHUNK_i", scope: !0, file: !25, line: 67, type: !45, isLocal: true, isDefinition: true, variable: i64* @CHUNK_i)
!45 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!46 = distinct !DIGlobalVariable(name: "CHUNK_o", scope: !0, file: !25, line: 68, type: !45, isLocal: true, isDefinition: true, variable: i64* @CHUNK_o)
!47 = !{i32 2, !"Dwarf Version", i32 4}
!48 = !{i32 2, !"Debug Info Version", i32 3}
!49 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!50 = !DILocalVariable(name: "argc", arg: 1, scope: !24, file: !25, line: 416, type: !21)
!51 = !DIExpression()
!52 = !DILocation(line: 416, column: 14, scope: !24)
!53 = !DILocalVariable(name: "argv", arg: 2, scope: !24, file: !25, line: 416, type: !17)
!54 = !DILocation(line: 416, column: 27, scope: !24)
!55 = !DILocalVariable(name: "rc", scope: !24, file: !25, line: 418, type: !21)
!56 = !DILocation(line: 418, column: 6, scope: !24)
!57 = !DILocalVariable(name: "level", scope: !24, file: !25, line: 419, type: !21)
!58 = !DILocation(line: 419, column: 6, scope: !24)
!59 = !DILocalVariable(name: "prog", scope: !24, file: !25, line: 420, type: !18)
!60 = !DILocation(line: 420, column: 8, scope: !24)
!61 = !DILocation(line: 420, column: 23, scope: !24)
!62 = !DILocation(line: 420, column: 14, scope: !24)
!63 = !DILocalVariable(name: "size", scope: !24, file: !25, line: 421, type: !45)
!64 = !DILocation(line: 421, column: 16, scope: !24)
!65 = !DILocalVariable(name: "offs", scope: !24, file: !25, line: 422, type: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "off64_t", file: !67, line: 97, baseType: !68)
!67 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop")
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !69, line: 132, baseType: !70)
!69 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop")
!70 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!71 = !DILocation(line: 422, column: 10, scope: !24)
!72 = !DILocalVariable(name: "i_fname", scope: !24, file: !25, line: 423, type: !34)
!73 = !DILocation(line: 423, column: 14, scope: !24)
!74 = !DILocalVariable(name: "o_fname", scope: !24, file: !25, line: 424, type: !34)
!75 = !DILocation(line: 424, column: 14, scope: !24)
!76 = !DILocalVariable(name: "use_compress", scope: !24, file: !25, line: 425, type: !77)
!77 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!78 = !DILocation(line: 425, column: 6, scope: !24)
!79 = !DILocalVariable(name: "s", scope: !24, file: !25, line: 426, type: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !81, line: 46, size: 1152, align: 64, elements: !82)
!81 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop")
!82 = !{!83, !85, !87, !89, !92, !94, !96, !97, !98, !100, !102, !104, !112, !113, !114}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !80, file: !81, line: 48, baseType: !84, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !69, line: 124, baseType: !45)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !80, file: !81, line: 53, baseType: !86, size: 64, align: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !69, line: 127, baseType: !45)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !80, file: !81, line: 61, baseType: !88, size: 64, align: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !69, line: 130, baseType: !45)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !80, file: !81, line: 62, baseType: !90, size: 32, align: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !69, line: 129, baseType: !91)
!91 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !80, file: !81, line: 64, baseType: !93, size: 32, align: 32, offset: 224)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !69, line: 125, baseType: !91)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !80, file: !81, line: 65, baseType: !95, size: 32, align: 32, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !69, line: 126, baseType: !91)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !80, file: !81, line: 67, baseType: !21, size: 32, align: 32, offset: 288)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !80, file: !81, line: 69, baseType: !84, size: 64, align: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !80, file: !81, line: 74, baseType: !99, size: 64, align: 64, offset: 384)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !69, line: 131, baseType: !70)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !80, file: !81, line: 78, baseType: !101, size: 64, align: 64, offset: 448)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !69, line: 153, baseType: !70)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !80, file: !81, line: 80, baseType: !103, size: 64, align: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !69, line: 158, baseType: !70)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !80, file: !81, line: 91, baseType: !105, size: 128, align: 64, offset: 576)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !106, line: 120, size: 128, align: 64, elements: !107)
!106 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop")
!107 = !{!108, !110}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !105, file: !106, line: 122, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !69, line: 139, baseType: !70)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !105, file: !106, line: 123, baseType: !111, size: 64, align: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !69, line: 175, baseType: !70)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !80, file: !81, line: 92, baseType: !105, size: 128, align: 64, offset: 704)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !80, file: !81, line: 93, baseType: !105, size: 128, align: 64, offset: 832)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !80, file: !81, line: 106, baseType: !115, size: 192, align: 64, offset: 960)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 192, align: 64, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 3)
!118 = !DILocation(line: 426, column: 14, scope: !24)
!119 = !DILocalVariable(name: "accel", scope: !24, file: !25, line: 427, type: !34)
!120 = !DILocation(line: 427, column: 14, scope: !24)
!121 = !DILocalVariable(name: "accel_env", scope: !24, file: !25, line: 428, type: !34)
!122 = !DILocation(line: 428, column: 14, scope: !24)
!123 = !DILocation(line: 428, column: 26, scope: !24)
!124 = !DILocalVariable(name: "card_no", scope: !24, file: !25, line: 429, type: !21)
!125 = !DILocation(line: 429, column: 6, scope: !24)
!126 = !DILocalVariable(name: "card_no_env", scope: !24, file: !25, line: 430, type: !34)
!127 = !DILocation(line: 430, column: 14, scope: !24)
!128 = !DILocation(line: 430, column: 28, scope: !24)
!129 = !DILocation(line: 434, column: 6, scope: !130)
!130 = distinct !DILexicalBlock(scope: !24, file: !25, line: 434, column: 6)
!131 = !DILocation(line: 434, column: 16, scope: !130)
!132 = !DILocation(line: 434, column: 6, scope: !24)
!133 = !DILocation(line: 435, column: 11, scope: !130)
!134 = !DILocation(line: 435, column: 9, scope: !130)
!135 = !DILocation(line: 435, column: 3, scope: !130)
!136 = !DILocation(line: 437, column: 6, scope: !137)
!137 = distinct !DILexicalBlock(scope: !24, file: !25, line: 437, column: 6)
!138 = !DILocation(line: 437, column: 18, scope: !137)
!139 = !DILocation(line: 437, column: 6, scope: !24)
!140 = !DILocation(line: 438, column: 18, scope: !137)
!141 = !DILocation(line: 438, column: 13, scope: !137)
!142 = !DILocation(line: 438, column: 11, scope: !137)
!143 = !DILocation(line: 438, column: 3, scope: !137)
!144 = !DILocation(line: 444, column: 2, scope: !24)
!145 = !DILocalVariable(name: "ch", scope: !146, file: !25, line: 445, type: !21)
!146 = distinct !DILexicalBlock(scope: !24, file: !25, line: 444, column: 12)
!147 = !DILocation(line: 445, column: 7, scope: !146)
!148 = !DILocalVariable(name: "option_index", scope: !146, file: !25, line: 446, type: !21)
!149 = !DILocation(line: 446, column: 7, scope: !146)
!150 = !DILocation(line: 461, column: 20, scope: !146)
!151 = !DILocation(line: 461, column: 26, scope: !146)
!152 = !DILocation(line: 461, column: 8, scope: !146)
!153 = !DILocation(line: 461, column: 6, scope: !146)
!154 = !DILocation(line: 463, column: 7, scope: !155)
!155 = distinct !DILexicalBlock(scope: !146, file: !25, line: 463, column: 7)
!156 = !DILocation(line: 463, column: 10, scope: !155)
!157 = !DILocation(line: 463, column: 7, scope: !146)
!158 = !DILocation(line: 464, column: 4, scope: !155)
!159 = !DILocation(line: 466, column: 11, scope: !146)
!160 = !DILocation(line: 466, column: 3, scope: !146)
!161 = !DILocation(line: 469, column: 12, scope: !162)
!162 = distinct !DILexicalBlock(scope: !146, file: !25, line: 466, column: 15)
!163 = !DILocation(line: 469, column: 10, scope: !162)
!164 = !DILocation(line: 470, column: 4, scope: !162)
!165 = !DILocation(line: 472, column: 21, scope: !162)
!166 = !DILocation(line: 472, column: 14, scope: !162)
!167 = !DILocation(line: 472, column: 12, scope: !162)
!168 = !DILocation(line: 473, column: 4, scope: !162)
!169 = !DILocation(line: 475, column: 18, scope: !162)
!170 = !DILocation(line: 475, column: 11, scope: !162)
!171 = !DILocation(line: 475, column: 9, scope: !162)
!172 = !DILocation(line: 476, column: 4, scope: !162)
!173 = !DILocation(line: 478, column: 18, scope: !162)
!174 = !DILocation(line: 478, column: 11, scope: !162)
!175 = !DILocation(line: 478, column: 9, scope: !162)
!176 = !DILocation(line: 479, column: 4, scope: !162)
!177 = !DILocation(line: 481, column: 17, scope: !162)
!178 = !DILocation(line: 482, column: 4, scope: !162)
!179 = !DILocation(line: 484, column: 10, scope: !162)
!180 = !DILocation(line: 485, column: 4, scope: !162)
!181 = !DILocation(line: 487, column: 10, scope: !162)
!182 = !DILocation(line: 488, column: 4, scope: !162)
!183 = !DILocation(line: 490, column: 10, scope: !162)
!184 = !DILocation(line: 491, column: 4, scope: !162)
!185 = !DILocation(line: 493, column: 10, scope: !162)
!186 = !DILocation(line: 494, column: 4, scope: !162)
!187 = !DILocation(line: 496, column: 10, scope: !162)
!188 = !DILocation(line: 497, column: 4, scope: !162)
!189 = !DILocation(line: 499, column: 10, scope: !162)
!190 = !DILocation(line: 500, column: 4, scope: !162)
!191 = !DILocation(line: 502, column: 10, scope: !162)
!192 = !DILocation(line: 503, column: 4, scope: !162)
!193 = !DILocation(line: 505, column: 10, scope: !162)
!194 = !DILocation(line: 506, column: 4, scope: !162)
!195 = !DILocation(line: 508, column: 10, scope: !162)
!196 = !DILocation(line: 509, column: 4, scope: !162)
!197 = !DILocation(line: 511, column: 11, scope: !162)
!198 = !DILocation(line: 512, column: 4, scope: !162)
!199 = !DILocation(line: 514, column: 11, scope: !162)
!200 = !DILocation(line: 514, column: 27, scope: !162)
!201 = !DILocation(line: 514, column: 4, scope: !162)
!202 = !DILocation(line: 515, column: 4, scope: !162)
!203 = !DILocation(line: 518, column: 25, scope: !162)
!204 = !DILocation(line: 518, column: 14, scope: !162)
!205 = !DILocation(line: 518, column: 12, scope: !162)
!206 = !DILocation(line: 519, column: 4, scope: !162)
!207 = !DILocation(line: 521, column: 25, scope: !162)
!208 = !DILocation(line: 521, column: 14, scope: !162)
!209 = !DILocation(line: 521, column: 12, scope: !162)
!210 = !DILocation(line: 522, column: 4, scope: !162)
!211 = !DILocation(line: 525, column: 9, scope: !162)
!212 = !DILocation(line: 525, column: 17, scope: !162)
!213 = !DILocation(line: 525, column: 4, scope: !162)
!214 = !DILocation(line: 526, column: 4, scope: !162)
!215 = !DILocation(line: 444, column: 2, scope: !216)
!216 = !DILexicalBlockFile(scope: !24, file: !25, discriminator: 1)
!217 = distinct !{!217, !144}
!218 = !DILocation(line: 531, column: 23, scope: !24)
!219 = !DILocation(line: 531, column: 30, scope: !24)
!220 = !DILocation(line: 531, column: 2, scope: !24)
!221 = !DILocation(line: 532, column: 2, scope: !24)
!222 = !DILocation(line: 533, column: 2, scope: !24)
!223 = !DILocation(line: 535, column: 6, scope: !224)
!224 = distinct !DILexicalBlock(scope: !24, file: !25, line: 535, column: 6)
!225 = !DILocation(line: 535, column: 15, scope: !224)
!226 = !DILocation(line: 535, column: 13, scope: !224)
!227 = !DILocation(line: 535, column: 6, scope: !24)
!228 = !DILocation(line: 536, column: 24, scope: !229)
!229 = distinct !DILexicalBlock(scope: !224, file: !25, line: 535, column: 21)
!230 = !DILocation(line: 536, column: 13, scope: !229)
!231 = !DILocation(line: 536, column: 11, scope: !229)
!232 = !DILocation(line: 538, column: 14, scope: !229)
!233 = !DILocation(line: 538, column: 8, scope: !229)
!234 = !DILocation(line: 538, column: 6, scope: !229)
!235 = !DILocation(line: 539, column: 7, scope: !236)
!236 = distinct !DILexicalBlock(scope: !229, file: !25, line: 539, column: 7)
!237 = !DILocation(line: 539, column: 10, scope: !236)
!238 = !DILocation(line: 539, column: 7, scope: !229)
!239 = !DILocation(line: 540, column: 4, scope: !240)
!240 = distinct !DILexicalBlock(scope: !236, file: !25, line: 539, column: 16)
!241 = distinct !{!241, !239}
!242 = !DILocation(line: 540, column: 3, scope: !243)
!243 = !DILexicalBlockFile(scope: !244, file: !25, discriminator: 1)
!244 = distinct !DILexicalBlock(scope: !240, file: !25, line: 540, column: 7)
!245 = !DILocation(line: 540, column: 50, scope: !243)
!246 = !DILocation(line: 540, column: 9, scope: !243)
!247 = !DILocation(line: 540, column: 60, scope: !243)
!248 = !DILocation(line: 541, column: 4, scope: !240)
!249 = !DILocation(line: 543, column: 8, scope: !250)
!250 = distinct !DILexicalBlock(scope: !229, file: !25, line: 543, column: 7)
!251 = !DILocation(line: 543, column: 11, scope: !250)
!252 = !DILocation(line: 543, column: 17, scope: !250)
!253 = !DILocation(line: 543, column: 21, scope: !254)
!254 = !DILexicalBlockFile(scope: !250, file: !25, discriminator: 1)
!255 = !DILocation(line: 543, column: 22, scope: !254)
!256 = !DILocation(line: 543, column: 33, scope: !254)
!257 = !DILocation(line: 543, column: 7, scope: !254)
!258 = !DILocation(line: 544, column: 4, scope: !259)
!259 = distinct !DILexicalBlock(scope: !250, file: !25, line: 543, column: 39)
!260 = distinct !{!260, !258}
!261 = !DILocation(line: 544, column: 3, scope: !262)
!262 = !DILexicalBlockFile(scope: !263, file: !25, discriminator: 1)
!263 = distinct !DILexicalBlock(scope: !259, file: !25, line: 544, column: 7)
!264 = !DILocation(line: 544, column: 64, scope: !262)
!265 = !DILocation(line: 544, column: 9, scope: !262)
!266 = !DILocation(line: 544, column: 74, scope: !262)
!267 = !DILocation(line: 546, column: 4, scope: !259)
!268 = !DILocation(line: 548, column: 2, scope: !229)
!269 = !DILocation(line: 549, column: 6, scope: !270)
!270 = distinct !DILexicalBlock(scope: !24, file: !25, line: 549, column: 6)
!271 = !DILocation(line: 549, column: 15, scope: !270)
!272 = !DILocation(line: 549, column: 13, scope: !270)
!273 = !DILocation(line: 549, column: 6, scope: !24)
!274 = !DILocation(line: 550, column: 24, scope: !275)
!275 = distinct !DILexicalBlock(scope: !270, file: !25, line: 549, column: 21)
!276 = !DILocation(line: 550, column: 13, scope: !275)
!277 = !DILocation(line: 550, column: 11, scope: !275)
!278 = !DILocation(line: 551, column: 2, scope: !275)
!279 = !DILocation(line: 552, column: 8, scope: !280)
!280 = distinct !DILexicalBlock(scope: !270, file: !25, line: 551, column: 9)
!281 = !DILocation(line: 552, column: 16, scope: !280)
!282 = !DILocation(line: 552, column: 3, scope: !280)
!283 = !DILocation(line: 553, column: 3, scope: !280)
!284 = !DILocation(line: 555, column: 6, scope: !285)
!285 = distinct !DILexicalBlock(scope: !24, file: !25, line: 555, column: 6)
!286 = !DILocation(line: 555, column: 16, scope: !285)
!287 = !DILocation(line: 555, column: 13, scope: !285)
!288 = !DILocation(line: 555, column: 6, scope: !24)
!289 = !DILocation(line: 556, column: 8, scope: !290)
!290 = distinct !DILexicalBlock(scope: !285, file: !25, line: 555, column: 22)
!291 = !DILocation(line: 556, column: 16, scope: !290)
!292 = !DILocation(line: 556, column: 3, scope: !290)
!293 = !DILocation(line: 557, column: 3, scope: !290)
!294 = !DILocation(line: 560, column: 7, scope: !295)
!295 = distinct !DILexicalBlock(scope: !24, file: !25, line: 560, column: 6)
!296 = !DILocation(line: 560, column: 15, scope: !295)
!297 = !DILocation(line: 560, column: 23, scope: !295)
!298 = !DILocation(line: 560, column: 27, scope: !299)
!299 = !DILexicalBlockFile(scope: !295, file: !25, discriminator: 1)
!300 = !DILocation(line: 560, column: 35, scope: !299)
!301 = !DILocation(line: 560, column: 6, scope: !299)
!302 = !DILocation(line: 561, column: 3, scope: !303)
!303 = distinct !DILexicalBlock(scope: !295, file: !25, line: 560, column: 45)
!304 = distinct !{!304, !302}
!305 = !DILocation(line: 561, column: 2, scope: !306)
!306 = !DILexicalBlockFile(scope: !307, file: !25, discriminator: 1)
!307 = distinct !DILexicalBlock(scope: !303, file: !25, line: 561, column: 6)
!308 = !DILocation(line: 561, column: 8, scope: !306)
!309 = !DILocation(line: 561, column: 63, scope: !306)
!310 = !DILocation(line: 562, column: 3, scope: !303)
!311 = !DILocation(line: 565, column: 9, scope: !24)
!312 = !DILocation(line: 567, column: 3, scope: !24)
!313 = !DILocation(line: 568, column: 3, scope: !24)
!314 = !DILocation(line: 568, column: 12, scope: !24)
!315 = !DILocation(line: 568, column: 21, scope: !24)
!316 = !DILocation(line: 568, column: 30, scope: !24)
!317 = !DILocation(line: 569, column: 3, scope: !24)
!318 = !DILocation(line: 569, column: 21, scope: !24)
!319 = !DILocation(line: 569, column: 38, scope: !24)
!320 = !DILocation(line: 565, column: 2, scope: !24)
!321 = !DILocation(line: 571, column: 6, scope: !322)
!322 = distinct !DILexicalBlock(scope: !24, file: !25, line: 571, column: 6)
!323 = !DILocation(line: 571, column: 6, scope: !24)
!324 = !DILocation(line: 572, column: 20, scope: !322)
!325 = !DILocation(line: 572, column: 29, scope: !322)
!326 = !DILocation(line: 572, column: 38, scope: !322)
!327 = !DILocation(line: 572, column: 47, scope: !322)
!328 = !DILocation(line: 573, column: 6, scope: !322)
!329 = !DILocation(line: 572, column: 8, scope: !322)
!330 = !DILocation(line: 572, column: 6, scope: !322)
!331 = !DILocation(line: 572, column: 3, scope: !322)
!332 = !DILocation(line: 575, column: 22, scope: !322)
!333 = !DILocation(line: 575, column: 31, scope: !322)
!334 = !DILocation(line: 575, column: 40, scope: !322)
!335 = !DILocation(line: 575, column: 49, scope: !322)
!336 = !DILocation(line: 576, column: 8, scope: !322)
!337 = !DILocation(line: 576, column: 14, scope: !322)
!338 = !DILocation(line: 575, column: 8, scope: !322)
!339 = !DILocation(line: 575, column: 6, scope: !322)
!340 = !DILocation(line: 578, column: 7, scope: !24)
!341 = !DILocation(line: 578, column: 2, scope: !24)
!342 = distinct !DISubprogram(name: "str_to_num", scope: !25, file: !25, line: 124, type: !343, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!343 = !DISubroutineType(types: !344)
!344 = !{!345, !18}
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !346, line: 55, baseType: !45)
!346 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop")
!347 = !DILocalVariable(name: "str", arg: 1, scope: !342, file: !25, line: 124, type: !18)
!348 = !DILocation(line: 124, column: 41, scope: !342)
!349 = !DILocalVariable(name: "s", scope: !342, file: !25, line: 126, type: !18)
!350 = !DILocation(line: 126, column: 8, scope: !342)
!351 = !DILocation(line: 126, column: 12, scope: !342)
!352 = !DILocalVariable(name: "num", scope: !342, file: !25, line: 127, type: !345)
!353 = !DILocation(line: 127, column: 11, scope: !342)
!354 = !DILocation(line: 127, column: 26, scope: !342)
!355 = !DILocation(line: 127, column: 17, scope: !342)
!356 = !DILocation(line: 129, column: 7, scope: !357)
!357 = distinct !DILexicalBlock(scope: !342, file: !25, line: 129, column: 6)
!358 = !DILocation(line: 129, column: 6, scope: !357)
!359 = !DILocation(line: 129, column: 9, scope: !357)
!360 = !DILocation(line: 129, column: 6, scope: !342)
!361 = !DILocation(line: 130, column: 10, scope: !357)
!362 = !DILocation(line: 130, column: 3, scope: !357)
!363 = !DILocation(line: 132, column: 13, scope: !364)
!364 = distinct !DILexicalBlock(scope: !342, file: !25, line: 132, column: 6)
!365 = !DILocation(line: 132, column: 6, scope: !364)
!366 = !DILocation(line: 132, column: 23, scope: !364)
!367 = !DILocation(line: 132, column: 6, scope: !342)
!368 = !DILocation(line: 133, column: 7, scope: !364)
!369 = !DILocation(line: 133, column: 3, scope: !364)
!370 = !DILocation(line: 134, column: 18, scope: !371)
!371 = distinct !DILexicalBlock(scope: !364, file: !25, line: 134, column: 11)
!372 = !DILocation(line: 134, column: 11, scope: !371)
!373 = !DILocation(line: 134, column: 28, scope: !371)
!374 = !DILocation(line: 134, column: 11, scope: !364)
!375 = !DILocation(line: 135, column: 7, scope: !371)
!376 = !DILocation(line: 135, column: 3, scope: !371)
!377 = !DILocation(line: 136, column: 18, scope: !378)
!378 = distinct !DILexicalBlock(scope: !371, file: !25, line: 136, column: 11)
!379 = !DILocation(line: 136, column: 11, scope: !378)
!380 = !DILocation(line: 136, column: 28, scope: !378)
!381 = !DILocation(line: 136, column: 11, scope: !371)
!382 = !DILocation(line: 137, column: 7, scope: !378)
!383 = !DILocation(line: 137, column: 3, scope: !378)
!384 = !DILocation(line: 139, column: 9, scope: !342)
!385 = !DILocation(line: 139, column: 2, scope: !342)
!386 = !DILocation(line: 140, column: 1, scope: !342)
!387 = distinct !DISubprogram(name: "usage", scope: !25, file: !25, line: 142, type: !388, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !390, !18}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !67, line: 48, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !393, line: 241, size: 1728, align: 64, elements: !394)
!393 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop")
!394 = !{!395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !415, !416, !417, !418, !419, !421, !423, !427, !430, !431, !432, !433, !434, !435, !438, !439}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !392, file: !393, line: 242, baseType: !21, size: 32, align: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !392, file: !393, line: 247, baseType: !18, size: 64, align: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !392, file: !393, line: 248, baseType: !18, size: 64, align: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !392, file: !393, line: 249, baseType: !18, size: 64, align: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !392, file: !393, line: 250, baseType: !18, size: 64, align: 64, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !392, file: !393, line: 251, baseType: !18, size: 64, align: 64, offset: 320)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !392, file: !393, line: 252, baseType: !18, size: 64, align: 64, offset: 384)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !392, file: !393, line: 253, baseType: !18, size: 64, align: 64, offset: 448)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !392, file: !393, line: 254, baseType: !18, size: 64, align: 64, offset: 512)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !392, file: !393, line: 256, baseType: !18, size: 64, align: 64, offset: 576)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !392, file: !393, line: 257, baseType: !18, size: 64, align: 64, offset: 640)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !392, file: !393, line: 258, baseType: !18, size: 64, align: 64, offset: 704)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !392, file: !393, line: 260, baseType: !408, size: 64, align: 64, offset: 768)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !393, line: 156, size: 192, align: 64, elements: !410)
!410 = !{!411, !412, !414}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !409, file: !393, line: 157, baseType: !408, size: 64, align: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !409, file: !393, line: 158, baseType: !413, size: 64, align: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !409, file: !393, line: 162, baseType: !21, size: 32, align: 32, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !392, file: !393, line: 262, baseType: !413, size: 64, align: 64, offset: 832)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !392, file: !393, line: 264, baseType: !21, size: 32, align: 32, offset: 896)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !392, file: !393, line: 268, baseType: !21, size: 32, align: 32, offset: 928)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !392, file: !393, line: 270, baseType: !99, size: 64, align: 64, offset: 960)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !392, file: !393, line: 274, baseType: !420, size: 16, align: 16, offset: 1024)
!420 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !392, file: !393, line: 275, baseType: !422, size: 8, align: 8, offset: 1040)
!422 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !392, file: !393, line: 276, baseType: !424, size: 8, align: 8, offset: 1048)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, align: 8, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 1)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !392, file: !393, line: 280, baseType: !428, size: 64, align: 64, offset: 1088)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !393, line: 150, baseType: null)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !392, file: !393, line: 289, baseType: !68, size: 64, align: 64, offset: 1152)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !392, file: !393, line: 297, baseType: !16, size: 64, align: 64, offset: 1216)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !392, file: !393, line: 298, baseType: !16, size: 64, align: 64, offset: 1280)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !392, file: !393, line: 299, baseType: !16, size: 64, align: 64, offset: 1344)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !392, file: !393, line: 300, baseType: !16, size: 64, align: 64, offset: 1408)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !392, file: !393, line: 302, baseType: !436, size: 64, align: 64, offset: 1472)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !437, line: 216, baseType: !45)
!437 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop")
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !392, file: !393, line: 303, baseType: !21, size: 32, align: 32, offset: 1536)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !392, file: !393, line: 305, baseType: !440, size: 160, align: 8, offset: 1568)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, align: 8, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 20)
!443 = !DILocalVariable(name: "fp", arg: 1, scope: !387, file: !25, line: 142, type: !390)
!444 = !DILocation(line: 142, column: 25, scope: !387)
!445 = !DILocalVariable(name: "prog", arg: 2, scope: !387, file: !25, line: 142, type: !18)
!446 = !DILocation(line: 142, column: 35, scope: !387)
!447 = !DILocation(line: 144, column: 10, scope: !387)
!448 = !DILocation(line: 156, column: 9, scope: !387)
!449 = !DILocation(line: 156, column: 15, scope: !387)
!450 = !DILocation(line: 156, column: 22, scope: !387)
!451 = !DILocation(line: 156, column: 29, scope: !387)
!452 = !DILocation(line: 156, column: 36, scope: !387)
!453 = !DILocation(line: 144, column: 2, scope: !387)
!454 = !DILocation(line: 157, column: 1, scope: !387)
!455 = distinct !DISubprogram(name: "do_compress", scope: !25, file: !25, line: 228, type: !456, isLocal: true, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!456 = !DISubroutineType(types: !457)
!457 = !{!21, !34, !34, !436, !436, !21}
!458 = !DILocalVariable(name: "i_fname", arg: 1, scope: !455, file: !25, line: 228, type: !34)
!459 = !DILocation(line: 228, column: 36, scope: !455)
!460 = !DILocalVariable(name: "o_fname", arg: 2, scope: !455, file: !25, line: 228, type: !34)
!461 = !DILocation(line: 228, column: 57, scope: !455)
!462 = !DILocalVariable(name: "chunk_i", arg: 3, scope: !455, file: !25, line: 229, type: !436)
!463 = !DILocation(line: 229, column: 17, scope: !455)
!464 = !DILocalVariable(name: "chunk_o", arg: 4, scope: !455, file: !25, line: 230, type: !436)
!465 = !DILocation(line: 230, column: 17, scope: !455)
!466 = !DILocalVariable(name: "level", arg: 5, scope: !455, file: !25, line: 230, type: !21)
!467 = !DILocation(line: 230, column: 54, scope: !455)
!468 = !DILocalVariable(name: "mode", scope: !455, file: !25, line: 232, type: !469)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 128, align: 8, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 16)
!472 = !DILocation(line: 232, column: 7, scope: !455)
!473 = !DILocalVariable(name: "ofp", scope: !455, file: !25, line: 233, type: !474)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "gzFile", file: !475, line: 1300, baseType: !476)
!475 = !DIFile(filename: "/usr/local/include/zlib.h", directory: "/home/lichi/Desktop")
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gzFile_s", file: !475, line: 1817, size: 192, align: 64, elements: !478)
!478 = !{!479, !480, !483}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "have", scope: !477, file: !475, line: 1818, baseType: !91, size: 32, align: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !477, file: !475, line: 1819, baseType: !481, size: 64, align: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!482 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !477, file: !475, line: 1820, baseType: !66, size: 64, align: 64, offset: 128)
!484 = !DILocation(line: 233, column: 9, scope: !455)
!485 = !DILocalVariable(name: "ifp", scope: !455, file: !25, line: 234, type: !390)
!486 = !DILocation(line: 234, column: 8, scope: !455)
!487 = !DILocalVariable(name: "len", scope: !455, file: !25, line: 235, type: !488)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !67, line: 102, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !69, line: 172, baseType: !70)
!490 = !DILocation(line: 235, column: 10, scope: !455)
!491 = !DILocalVariable(name: "rc", scope: !455, file: !25, line: 236, type: !21)
!492 = !DILocation(line: 236, column: 6, scope: !455)
!493 = !DILocalVariable(name: "buf", scope: !455, file: !25, line: 237, type: !494)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64, align: 64)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !346, line: 48, baseType: !482)
!496 = !DILocation(line: 237, column: 11, scope: !455)
!497 = !DILocation(line: 239, column: 14, scope: !455)
!498 = !DILocation(line: 239, column: 8, scope: !455)
!499 = !DILocation(line: 239, column: 6, scope: !455)
!500 = !DILocation(line: 240, column: 6, scope: !501)
!501 = distinct !DILexicalBlock(scope: !455, file: !25, line: 240, column: 6)
!502 = !DILocation(line: 240, column: 10, scope: !501)
!503 = !DILocation(line: 240, column: 6, scope: !455)
!504 = !DILocation(line: 241, column: 3, scope: !505)
!505 = distinct !DILexicalBlock(scope: !501, file: !25, line: 240, column: 18)
!506 = distinct !{!506, !504}
!507 = !DILocation(line: 241, column: 2, scope: !508)
!508 = !DILexicalBlockFile(scope: !509, file: !25, discriminator: 1)
!509 = distinct !DILexicalBlock(scope: !505, file: !25, line: 241, column: 6)
!510 = !DILocation(line: 241, column: 47, scope: !508)
!511 = !DILocation(line: 241, column: 4, scope: !508)
!512 = !DILocation(line: 241, column: 3, scope: !508)
!513 = !DILocation(line: 241, column: 56, scope: !514)
!514 = !DILexicalBlockFile(scope: !508, file: !25, discriminator: 2)
!515 = !DILocation(line: 241, column: 8, scope: !516)
!516 = !DILexicalBlockFile(scope: !508, file: !25, discriminator: 3)
!517 = !DILocation(line: 241, column: 6, scope: !508)
!518 = !DILocation(line: 242, column: 3, scope: !505)
!519 = !DILocation(line: 245, column: 15, scope: !455)
!520 = !DILocation(line: 245, column: 8, scope: !455)
!521 = !DILocation(line: 245, column: 6, scope: !455)
!522 = !DILocation(line: 246, column: 13, scope: !523)
!523 = distinct !DILexicalBlock(scope: !455, file: !25, line: 246, column: 5)
!524 = !DILocation(line: 246, column: 10, scope: !523)
!525 = !DILocation(line: 246, column: 5, scope: !455)
!526 = !DILocation(line: 247, column: 3, scope: !527)
!527 = distinct !DILexicalBlock(scope: !523, file: !25, line: 246, column: 18)
!528 = distinct !{!528, !526}
!529 = !DILocation(line: 247, column: 2, scope: !530)
!530 = !DILexicalBlockFile(scope: !531, file: !25, discriminator: 1)
!531 = distinct !DILexicalBlock(scope: !527, file: !25, line: 247, column: 6)
!532 = !DILocation(line: 247, column: 4, scope: !530)
!533 = !DILocation(line: 247, column: 3, scope: !530)
!534 = !DILocation(line: 247, column: 28, scope: !535)
!535 = !DILexicalBlockFile(scope: !530, file: !25, discriminator: 2)
!536 = !DILocation(line: 247, column: 8, scope: !537)
!537 = !DILexicalBlockFile(scope: !530, file: !25, discriminator: 3)
!538 = !DILocation(line: 247, column: 6, scope: !530)
!539 = !DILocation(line: 248, column: 3, scope: !527)
!540 = !DILocation(line: 251, column: 10, scope: !455)
!541 = !DILocation(line: 251, column: 24, scope: !455)
!542 = !DILocation(line: 251, column: 2, scope: !455)
!543 = !DILocation(line: 252, column: 17, scope: !455)
!544 = !DILocation(line: 252, column: 26, scope: !455)
!545 = !DILocation(line: 252, column: 8, scope: !455)
!546 = !DILocation(line: 252, column: 6, scope: !455)
!547 = !DILocation(line: 253, column: 6, scope: !548)
!548 = distinct !DILexicalBlock(scope: !455, file: !25, line: 253, column: 6)
!549 = !DILocation(line: 253, column: 10, scope: !548)
!550 = !DILocation(line: 253, column: 6, scope: !455)
!551 = !DILocation(line: 254, column: 3, scope: !552)
!552 = distinct !DILexicalBlock(scope: !548, file: !25, line: 253, column: 18)
!553 = distinct !{!553, !551}
!554 = !DILocation(line: 254, column: 2, scope: !555)
!555 = !DILexicalBlockFile(scope: !556, file: !25, discriminator: 1)
!556 = distinct !DILexicalBlock(scope: !552, file: !25, line: 254, column: 6)
!557 = !DILocation(line: 254, column: 43, scope: !555)
!558 = !DILocation(line: 254, column: 8, scope: !555)
!559 = !DILocation(line: 254, column: 53, scope: !555)
!560 = !DILocation(line: 255, column: 3, scope: !552)
!561 = !DILocation(line: 259, column: 16, scope: !455)
!562 = !DILocation(line: 259, column: 21, scope: !455)
!563 = !DILocation(line: 259, column: 7, scope: !455)
!564 = !DILocation(line: 259, column: 5, scope: !455)
!565 = !DILocation(line: 260, column: 6, scope: !566)
!566 = distinct !DILexicalBlock(scope: !455, file: !25, line: 260, column: 6)
!567 = !DILocation(line: 260, column: 9, scope: !566)
!568 = !DILocation(line: 260, column: 6, scope: !455)
!569 = !DILocation(line: 261, column: 3, scope: !570)
!570 = distinct !DILexicalBlock(scope: !566, file: !25, line: 260, column: 15)
!571 = distinct !{!571, !569}
!572 = !DILocation(line: 261, column: 2, scope: !573)
!573 = !DILexicalBlockFile(scope: !574, file: !25, discriminator: 1)
!574 = distinct !DILexicalBlock(scope: !570, file: !25, line: 261, column: 6)
!575 = !DILocation(line: 261, column: 61, scope: !573)
!576 = !DILocation(line: 261, column: 8, scope: !573)
!577 = !DILocation(line: 261, column: 66, scope: !573)
!578 = !DILocation(line: 262, column: 3, scope: !570)
!579 = !DILocation(line: 266, column: 2, scope: !455)
!580 = distinct !{!580, !579}
!581 = !DILocation(line: 267, column: 15, scope: !582)
!582 = distinct !DILexicalBlock(scope: !455, file: !25, line: 266, column: 5)
!583 = !DILocation(line: 267, column: 23, scope: !582)
!584 = !DILocation(line: 267, column: 32, scope: !582)
!585 = !DILocation(line: 267, column: 9, scope: !582)
!586 = !DILocation(line: 267, column: 7, scope: !582)
!587 = !DILocation(line: 268, column: 14, scope: !588)
!588 = distinct !DILexicalBlock(scope: !582, file: !25, line: 268, column: 7)
!589 = !DILocation(line: 268, column: 7, scope: !588)
!590 = !DILocation(line: 268, column: 7, scope: !582)
!591 = !DILocation(line: 269, column: 4, scope: !592)
!592 = distinct !DILexicalBlock(scope: !588, file: !25, line: 268, column: 20)
!593 = distinct !{!593, !591}
!594 = !DILocation(line: 269, column: 3, scope: !595)
!595 = !DILexicalBlockFile(scope: !596, file: !25, discriminator: 1)
!596 = distinct !DILexicalBlock(scope: !592, file: !25, line: 269, column: 7)
!597 = !DILocation(line: 269, column: 41, scope: !595)
!598 = !DILocation(line: 269, column: 36, scope: !595)
!599 = !DILocation(line: 269, column: 9, scope: !595)
!600 = !DILocation(line: 269, column: 47, scope: !595)
!601 = !DILocation(line: 270, column: 4, scope: !592)
!602 = !DILocation(line: 272, column: 16, scope: !582)
!603 = !DILocation(line: 272, column: 21, scope: !582)
!604 = !DILocation(line: 272, column: 26, scope: !582)
!605 = !DILocation(line: 272, column: 8, scope: !582)
!606 = !DILocation(line: 272, column: 6, scope: !582)
!607 = !DILocation(line: 273, column: 7, scope: !608)
!608 = distinct !DILexicalBlock(scope: !582, file: !25, line: 273, column: 7)
!609 = !DILocation(line: 273, column: 10, scope: !608)
!610 = !DILocation(line: 273, column: 7, scope: !582)
!611 = !DILocation(line: 274, column: 4, scope: !612)
!612 = distinct !DILexicalBlock(scope: !608, file: !25, line: 273, column: 16)
!613 = distinct !{!613, !611}
!614 = !DILocation(line: 274, column: 3, scope: !615)
!615 = !DILexicalBlockFile(scope: !616, file: !25, discriminator: 1)
!616 = distinct !DILexicalBlock(scope: !612, file: !25, line: 274, column: 7)
!617 = !DILocation(line: 274, column: 37, scope: !615)
!618 = !DILocation(line: 274, column: 9, scope: !615)
!619 = !DILocation(line: 274, column: 42, scope: !615)
!620 = !DILocation(line: 275, column: 4, scope: !612)
!621 = !DILocation(line: 278, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !582, file: !25, line: 278, column: 7)
!623 = !DILocation(line: 278, column: 15, scope: !622)
!624 = !DILocation(line: 278, column: 7, scope: !582)
!625 = !DILocation(line: 279, column: 4, scope: !622)
!626 = distinct !{!626, !625}
!627 = !DILocation(line: 279, column: 3, scope: !628)
!628 = !DILexicalBlockFile(scope: !629, file: !25, discriminator: 1)
!629 = distinct !DILexicalBlock(scope: !622, file: !25, line: 279, column: 7)
!630 = !DILocation(line: 279, column: 55, scope: !628)
!631 = !DILocation(line: 279, column: 46, scope: !628)
!632 = !DILocation(line: 279, column: 9, scope: !633)
!633 = !DILexicalBlockFile(scope: !628, file: !25, discriminator: 3)
!634 = !DILocation(line: 279, column: 62, scope: !628)
!635 = !DILocation(line: 279, column: 62, scope: !636)
!636 = !DILexicalBlockFile(scope: !629, file: !25, discriminator: 2)
!637 = !DILocation(line: 282, column: 2, scope: !582)
!638 = !DILocation(line: 282, column: 17, scope: !639)
!639 = !DILexicalBlockFile(scope: !455, file: !25, discriminator: 1)
!640 = !DILocation(line: 282, column: 12, scope: !639)
!641 = !DILocation(line: 282, column: 11, scope: !639)
!642 = !DILocation(line: 282, column: 2, scope: !639)
!643 = !DILocation(line: 284, column: 10, scope: !455)
!644 = !DILocation(line: 284, column: 2, scope: !455)
!645 = !DILocation(line: 285, column: 7, scope: !455)
!646 = !DILocation(line: 285, column: 2, scope: !455)
!647 = !DILocation(line: 286, column: 9, scope: !455)
!648 = !DILocation(line: 286, column: 2, scope: !455)
!649 = !DILocation(line: 288, column: 2, scope: !455)
!650 = !DILocation(line: 291, column: 10, scope: !455)
!651 = !DILocation(line: 291, column: 2, scope: !455)
!652 = !DILocation(line: 293, column: 7, scope: !455)
!653 = !DILocation(line: 293, column: 2, scope: !455)
!654 = !DILocation(line: 295, column: 9, scope: !455)
!655 = !DILocation(line: 295, column: 2, scope: !455)
!656 = !DILocation(line: 296, column: 2, scope: !455)
!657 = !DILocation(line: 297, column: 1, scope: !455)
!658 = distinct !DISubprogram(name: "do_decompress", scope: !25, file: !25, line: 299, type: !659, isLocal: true, isDefinition: true, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!659 = !DISubroutineType(types: !660)
!660 = !{!21, !34, !34, !436, !436, !66, !488}
!661 = !DILocalVariable(name: "i_fname", arg: 1, scope: !658, file: !25, line: 299, type: !34)
!662 = !DILocation(line: 299, column: 38, scope: !658)
!663 = !DILocalVariable(name: "o_fname", arg: 2, scope: !658, file: !25, line: 299, type: !34)
!664 = !DILocation(line: 299, column: 59, scope: !658)
!665 = !DILocalVariable(name: "chunk_i", arg: 3, scope: !658, file: !25, line: 300, type: !436)
!666 = !DILocation(line: 300, column: 12, scope: !658)
!667 = !DILocalVariable(name: "chunk_o", arg: 4, scope: !658, file: !25, line: 301, type: !436)
!668 = !DILocation(line: 301, column: 12, scope: !658)
!669 = !DILocalVariable(name: "offs", arg: 5, scope: !658, file: !25, line: 302, type: !66)
!670 = !DILocation(line: 302, column: 13, scope: !658)
!671 = !DILocalVariable(name: "size", arg: 6, scope: !658, file: !25, line: 302, type: !488)
!672 = !DILocation(line: 302, column: 27, scope: !658)
!673 = !DILocalVariable(name: "ifp", scope: !658, file: !25, line: 304, type: !474)
!674 = !DILocation(line: 304, column: 9, scope: !658)
!675 = !DILocalVariable(name: "ofp", scope: !658, file: !25, line: 305, type: !390)
!676 = !DILocation(line: 305, column: 8, scope: !658)
!677 = !DILocalVariable(name: "len", scope: !658, file: !25, line: 306, type: !488)
!678 = !DILocation(line: 306, column: 10, scope: !658)
!679 = !DILocalVariable(name: "written_bytes", scope: !658, file: !25, line: 306, type: !488)
!680 = !DILocation(line: 306, column: 15, scope: !658)
!681 = !DILocalVariable(name: "rc", scope: !658, file: !25, line: 307, type: !21)
!682 = !DILocation(line: 307, column: 6, scope: !658)
!683 = !DILocalVariable(name: "buf", scope: !658, file: !25, line: 308, type: !494)
!684 = !DILocation(line: 308, column: 11, scope: !658)
!685 = !DILocation(line: 310, column: 14, scope: !658)
!686 = !DILocation(line: 310, column: 8, scope: !658)
!687 = !DILocation(line: 310, column: 6, scope: !658)
!688 = !DILocation(line: 311, column: 6, scope: !689)
!689 = distinct !DILexicalBlock(scope: !658, file: !25, line: 311, column: 6)
!690 = !DILocation(line: 311, column: 10, scope: !689)
!691 = !DILocation(line: 311, column: 6, scope: !658)
!692 = !DILocation(line: 312, column: 3, scope: !693)
!693 = distinct !DILexicalBlock(scope: !689, file: !25, line: 311, column: 18)
!694 = distinct !{!694, !692}
!695 = !DILocation(line: 312, column: 2, scope: !696)
!696 = !DILexicalBlockFile(scope: !697, file: !25, discriminator: 1)
!697 = distinct !DILexicalBlock(scope: !693, file: !25, line: 312, column: 6)
!698 = !DILocation(line: 312, column: 43, scope: !696)
!699 = !DILocation(line: 312, column: 8, scope: !696)
!700 = !DILocation(line: 312, column: 53, scope: !696)
!701 = !DILocation(line: 313, column: 3, scope: !693)
!702 = !DILocation(line: 316, column: 15, scope: !658)
!703 = !DILocation(line: 316, column: 8, scope: !658)
!704 = !DILocation(line: 316, column: 6, scope: !658)
!705 = !DILocation(line: 317, column: 13, scope: !706)
!706 = distinct !DILexicalBlock(scope: !658, file: !25, line: 317, column: 5)
!707 = !DILocation(line: 317, column: 10, scope: !706)
!708 = !DILocation(line: 317, column: 5, scope: !658)
!709 = !DILocation(line: 318, column: 3, scope: !710)
!710 = distinct !DILexicalBlock(scope: !706, file: !25, line: 317, column: 18)
!711 = distinct !{!711, !709}
!712 = !DILocation(line: 318, column: 2, scope: !713)
!713 = !DILexicalBlockFile(scope: !714, file: !25, discriminator: 1)
!714 = distinct !DILexicalBlock(scope: !710, file: !25, line: 318, column: 6)
!715 = !DILocation(line: 318, column: 4, scope: !713)
!716 = !DILocation(line: 318, column: 3, scope: !713)
!717 = !DILocation(line: 318, column: 28, scope: !718)
!718 = !DILexicalBlockFile(scope: !713, file: !25, discriminator: 2)
!719 = !DILocation(line: 318, column: 8, scope: !720)
!720 = !DILexicalBlockFile(scope: !713, file: !25, discriminator: 3)
!721 = !DILocation(line: 318, column: 6, scope: !713)
!722 = !DILocation(line: 319, column: 3, scope: !710)
!723 = !DILocation(line: 322, column: 15, scope: !658)
!724 = !DILocation(line: 322, column: 8, scope: !658)
!725 = !DILocation(line: 322, column: 6, scope: !658)
!726 = !DILocation(line: 323, column: 6, scope: !727)
!727 = distinct !DILexicalBlock(scope: !658, file: !25, line: 323, column: 6)
!728 = !DILocation(line: 323, column: 10, scope: !727)
!729 = !DILocation(line: 323, column: 6, scope: !658)
!730 = !DILocation(line: 324, column: 3, scope: !731)
!731 = distinct !DILexicalBlock(scope: !727, file: !25, line: 323, column: 18)
!732 = distinct !{!732, !730}
!733 = !DILocation(line: 324, column: 2, scope: !734)
!734 = !DILexicalBlockFile(scope: !735, file: !25, discriminator: 1)
!735 = distinct !DILexicalBlock(scope: !731, file: !25, line: 324, column: 6)
!736 = !DILocation(line: 324, column: 43, scope: !734)
!737 = !DILocation(line: 324, column: 8, scope: !734)
!738 = !DILocation(line: 324, column: 53, scope: !734)
!739 = !DILocation(line: 325, column: 3, scope: !731)
!740 = !DILocation(line: 329, column: 16, scope: !658)
!741 = !DILocation(line: 329, column: 21, scope: !658)
!742 = !DILocation(line: 329, column: 7, scope: !658)
!743 = !DILocation(line: 329, column: 5, scope: !658)
!744 = !DILocation(line: 330, column: 6, scope: !745)
!745 = distinct !DILexicalBlock(scope: !658, file: !25, line: 330, column: 6)
!746 = !DILocation(line: 330, column: 9, scope: !745)
!747 = !DILocation(line: 330, column: 6, scope: !658)
!748 = !DILocation(line: 331, column: 3, scope: !749)
!749 = distinct !DILexicalBlock(scope: !745, file: !25, line: 330, column: 15)
!750 = distinct !{!750, !748}
!751 = !DILocation(line: 331, column: 2, scope: !752)
!752 = !DILexicalBlockFile(scope: !753, file: !25, discriminator: 1)
!753 = distinct !DILexicalBlock(scope: !749, file: !25, line: 331, column: 6)
!754 = !DILocation(line: 331, column: 61, scope: !752)
!755 = !DILocation(line: 331, column: 8, scope: !752)
!756 = !DILocation(line: 331, column: 66, scope: !752)
!757 = !DILocation(line: 332, column: 3, scope: !749)
!758 = !DILocation(line: 338, column: 6, scope: !759)
!759 = distinct !DILexicalBlock(scope: !658, file: !25, line: 338, column: 6)
!760 = !DILocation(line: 338, column: 11, scope: !759)
!761 = !DILocation(line: 338, column: 6, scope: !658)
!762 = !DILocalVariable(name: "offs_rc", scope: !763, file: !25, line: 339, type: !66)
!763 = distinct !DILexicalBlock(scope: !759, file: !25, line: 338, column: 17)
!764 = !DILocation(line: 339, column: 11, scope: !763)
!765 = !DILocation(line: 341, column: 22, scope: !763)
!766 = !DILocation(line: 341, column: 27, scope: !763)
!767 = !DILocation(line: 341, column: 13, scope: !763)
!768 = !DILocation(line: 341, column: 11, scope: !763)
!769 = !DILocation(line: 342, column: 7, scope: !770)
!770 = distinct !DILexicalBlock(scope: !763, file: !25, line: 342, column: 7)
!771 = !DILocation(line: 342, column: 18, scope: !770)
!772 = !DILocation(line: 342, column: 15, scope: !770)
!773 = !DILocation(line: 342, column: 7, scope: !763)
!774 = !DILocation(line: 343, column: 4, scope: !775)
!775 = distinct !DILexicalBlock(scope: !770, file: !25, line: 342, column: 24)
!776 = distinct !{!776, !774}
!777 = !DILocation(line: 343, column: 3, scope: !778)
!778 = !DILexicalBlockFile(scope: !779, file: !25, discriminator: 1)
!779 = distinct !DILexicalBlock(scope: !775, file: !25, line: 343, column: 7)
!780 = !DILocation(line: 343, column: 80, scope: !778)
!781 = !DILocation(line: 343, column: 100, scope: !778)
!782 = !DILocation(line: 343, column: 9, scope: !778)
!783 = !DILocation(line: 343, column: 107, scope: !778)
!784 = !DILocation(line: 345, column: 4, scope: !775)
!785 = !DILocation(line: 347, column: 2, scope: !763)
!786 = !DILocation(line: 349, column: 2, scope: !658)
!787 = distinct !{!787, !786}
!788 = !DILocation(line: 350, column: 16, scope: !789)
!789 = distinct !DILexicalBlock(scope: !658, file: !25, line: 349, column: 5)
!790 = !DILocation(line: 350, column: 21, scope: !789)
!791 = !DILocation(line: 350, column: 26, scope: !789)
!792 = !DILocation(line: 350, column: 9, scope: !789)
!793 = !DILocation(line: 350, column: 7, scope: !789)
!794 = !DILocation(line: 351, column: 7, scope: !795)
!795 = distinct !DILexicalBlock(scope: !789, file: !25, line: 351, column: 7)
!796 = !DILocation(line: 351, column: 11, scope: !795)
!797 = !DILocation(line: 351, column: 7, scope: !789)
!798 = !DILocation(line: 352, column: 4, scope: !799)
!799 = distinct !DILexicalBlock(scope: !795, file: !25, line: 351, column: 16)
!800 = distinct !{!800, !798}
!801 = !DILocation(line: 352, column: 3, scope: !802)
!802 = !DILexicalBlockFile(scope: !803, file: !25, discriminator: 1)
!803 = distinct !DILexicalBlock(scope: !799, file: !25, line: 352, column: 7)
!804 = !DILocation(line: 352, column: 47, scope: !802)
!805 = !DILocation(line: 352, column: 42, scope: !802)
!806 = !DILocation(line: 352, column: 9, scope: !802)
!807 = !DILocation(line: 352, column: 53, scope: !802)
!808 = !DILocation(line: 353, column: 4, scope: !799)
!809 = !DILocation(line: 356, column: 7, scope: !810)
!810 = distinct !DILexicalBlock(scope: !789, file: !25, line: 356, column: 7)
!811 = !DILocation(line: 356, column: 15, scope: !810)
!812 = !DILocation(line: 356, column: 7, scope: !789)
!813 = !DILocation(line: 357, column: 4, scope: !810)
!814 = distinct !{!814, !813}
!815 = !DILocation(line: 357, column: 3, scope: !816)
!816 = !DILexicalBlockFile(scope: !817, file: !25, discriminator: 1)
!817 = distinct !DILexicalBlock(scope: !810, file: !25, line: 357, column: 7)
!818 = !DILocation(line: 357, column: 55, scope: !816)
!819 = !DILocation(line: 357, column: 46, scope: !816)
!820 = !DILocation(line: 357, column: 9, scope: !821)
!821 = !DILexicalBlockFile(scope: !816, file: !25, discriminator: 3)
!822 = !DILocation(line: 357, column: 62, scope: !816)
!823 = !DILocation(line: 357, column: 62, scope: !824)
!824 = !DILexicalBlockFile(scope: !817, file: !25, discriminator: 2)
!825 = !DILocation(line: 360, column: 7, scope: !826)
!826 = distinct !DILexicalBlock(scope: !789, file: !25, line: 360, column: 7)
!827 = !DILocation(line: 360, column: 7, scope: !789)
!828 = !DILocation(line: 361, column: 4, scope: !826)
!829 = distinct !{!829, !828}
!830 = !DILocation(line: 361, column: 3, scope: !831)
!831 = !DILexicalBlockFile(scope: !832, file: !25, discriminator: 1)
!832 = distinct !DILexicalBlock(scope: !826, file: !25, line: 361, column: 7)
!833 = !DILocation(line: 361, column: 39, scope: !831)
!834 = !DILocation(line: 361, column: 9, scope: !831)
!835 = !DILocation(line: 361, column: 45, scope: !831)
!836 = !DILocation(line: 361, column: 45, scope: !837)
!837 = !DILexicalBlockFile(scope: !832, file: !25, discriminator: 2)
!838 = !DILocation(line: 363, column: 7, scope: !839)
!839 = distinct !DILexicalBlock(scope: !789, file: !25, line: 363, column: 7)
!840 = !DILocation(line: 363, column: 11, scope: !839)
!841 = !DILocation(line: 363, column: 7, scope: !789)
!842 = !DILocation(line: 364, column: 4, scope: !839)
!843 = !DILocation(line: 368, column: 7, scope: !844)
!844 = distinct !DILexicalBlock(scope: !789, file: !25, line: 368, column: 7)
!845 = !DILocation(line: 368, column: 12, scope: !844)
!846 = !DILocation(line: 368, column: 7, scope: !789)
!847 = !DILocation(line: 369, column: 8, scope: !848)
!848 = distinct !DILexicalBlock(scope: !844, file: !25, line: 369, column: 8)
!849 = !DILocation(line: 369, column: 24, scope: !848)
!850 = !DILocation(line: 369, column: 22, scope: !848)
!851 = !DILocation(line: 369, column: 30, scope: !848)
!852 = !DILocation(line: 369, column: 28, scope: !848)
!853 = !DILocation(line: 369, column: 8, scope: !844)
!854 = !DILocation(line: 370, column: 11, scope: !848)
!855 = !DILocation(line: 370, column: 18, scope: !848)
!856 = !DILocation(line: 370, column: 16, scope: !848)
!857 = !DILocation(line: 370, column: 9, scope: !848)
!858 = !DILocation(line: 370, column: 5, scope: !848)
!859 = !DILocation(line: 369, column: 30, scope: !860)
!860 = !DILexicalBlockFile(scope: !848, file: !25, discriminator: 1)
!861 = !DILocation(line: 372, column: 7, scope: !862)
!862 = distinct !DILexicalBlock(scope: !789, file: !25, line: 372, column: 7)
!863 = !DILocation(line: 372, column: 7, scope: !789)
!864 = !DILocation(line: 373, column: 4, scope: !862)
!865 = distinct !{!865, !864}
!866 = !DILocation(line: 373, column: 3, scope: !867)
!867 = !DILexicalBlockFile(scope: !868, file: !25, discriminator: 1)
!868 = distinct !DILexicalBlock(scope: !862, file: !25, line: 373, column: 7)
!869 = !DILocation(line: 373, column: 40, scope: !867)
!870 = !DILocation(line: 373, column: 9, scope: !867)
!871 = !DILocation(line: 373, column: 46, scope: !867)
!872 = !DILocation(line: 373, column: 46, scope: !873)
!873 = !DILexicalBlockFile(scope: !868, file: !25, discriminator: 2)
!874 = !DILocation(line: 375, column: 15, scope: !789)
!875 = !DILocation(line: 375, column: 20, scope: !789)
!876 = !DILocation(line: 375, column: 28, scope: !789)
!877 = !DILocation(line: 375, column: 8, scope: !789)
!878 = !DILocation(line: 375, column: 6, scope: !789)
!879 = !DILocation(line: 376, column: 7, scope: !880)
!880 = distinct !DILexicalBlock(scope: !789, file: !25, line: 376, column: 7)
!881 = !DILocation(line: 376, column: 10, scope: !880)
!882 = !DILocation(line: 376, column: 7, scope: !789)
!883 = !DILocation(line: 377, column: 4, scope: !884)
!884 = distinct !DILexicalBlock(scope: !880, file: !25, line: 376, column: 15)
!885 = distinct !{!885, !883}
!886 = !DILocation(line: 377, column: 3, scope: !887)
!887 = !DILexicalBlockFile(scope: !888, file: !25, discriminator: 1)
!888 = distinct !DILexicalBlock(scope: !884, file: !25, line: 377, column: 7)
!889 = !DILocation(line: 377, column: 36, scope: !887)
!890 = !DILocation(line: 377, column: 9, scope: !887)
!891 = !DILocation(line: 377, column: 41, scope: !887)
!892 = !DILocation(line: 378, column: 4, scope: !884)
!893 = !DILocation(line: 381, column: 20, scope: !789)
!894 = !DILocation(line: 381, column: 17, scope: !789)
!895 = !DILocation(line: 385, column: 8, scope: !896)
!896 = distinct !DILexicalBlock(scope: !789, file: !25, line: 385, column: 7)
!897 = !DILocation(line: 385, column: 13, scope: !896)
!898 = !DILocation(line: 385, column: 22, scope: !896)
!899 = !DILocation(line: 385, column: 26, scope: !900)
!900 = !DILexicalBlockFile(scope: !896, file: !25, discriminator: 1)
!901 = !DILocation(line: 385, column: 34, scope: !900)
!902 = !DILocation(line: 385, column: 31, scope: !900)
!903 = !DILocation(line: 385, column: 7, scope: !900)
!904 = !DILocation(line: 386, column: 4, scope: !896)
!905 = !DILocation(line: 388, column: 7, scope: !906)
!906 = distinct !DILexicalBlock(scope: !789, file: !25, line: 388, column: 7)
!907 = !DILocation(line: 388, column: 7, scope: !789)
!908 = !DILocation(line: 389, column: 4, scope: !906)
!909 = distinct !{!909, !908}
!910 = !DILocation(line: 389, column: 3, scope: !911)
!911 = !DILexicalBlockFile(scope: !912, file: !25, discriminator: 1)
!912 = distinct !DILexicalBlock(scope: !906, file: !25, line: 389, column: 7)
!913 = !DILocation(line: 389, column: 59, scope: !911)
!914 = !DILocation(line: 389, column: 75, scope: !911)
!915 = !DILocation(line: 389, column: 9, scope: !911)
!916 = !DILocation(line: 389, column: 85, scope: !911)
!917 = !DILocation(line: 389, column: 85, scope: !918)
!918 = !DILexicalBlockFile(scope: !912, file: !25, discriminator: 2)
!919 = !DILocation(line: 392, column: 2, scope: !789)
!920 = !DILocation(line: 392, column: 11, scope: !921)
!921 = !DILexicalBlockFile(scope: !658, file: !25, discriminator: 1)
!922 = !DILocation(line: 392, column: 23, scope: !921)
!923 = !DILocation(line: 392, column: 18, scope: !921)
!924 = !DILocation(line: 392, column: 15, scope: !921)
!925 = !DILocation(line: 392, column: 2, scope: !921)
!926 = !DILocation(line: 394, column: 15, scope: !658)
!927 = !DILocation(line: 394, column: 7, scope: !658)
!928 = !DILocation(line: 394, column: 5, scope: !658)
!929 = !DILocation(line: 395, column: 6, scope: !930)
!930 = distinct !DILexicalBlock(scope: !658, file: !25, line: 395, column: 6)
!931 = !DILocation(line: 395, column: 9, scope: !930)
!932 = !DILocation(line: 395, column: 6, scope: !658)
!933 = !DILocation(line: 396, column: 3, scope: !934)
!934 = distinct !DILexicalBlock(scope: !930, file: !25, line: 395, column: 17)
!935 = distinct !{!935, !933}
!936 = !DILocation(line: 396, column: 2, scope: !937)
!937 = !DILexicalBlockFile(scope: !938, file: !25, discriminator: 1)
!938 = distinct !DILexicalBlock(scope: !934, file: !25, line: 396, column: 6)
!939 = !DILocation(line: 396, column: 42, scope: !937)
!940 = !DILocation(line: 396, column: 8, scope: !937)
!941 = !DILocation(line: 396, column: 47, scope: !937)
!942 = !DILocation(line: 397, column: 3, scope: !934)
!943 = !DILocation(line: 399, column: 7, scope: !658)
!944 = !DILocation(line: 399, column: 2, scope: !658)
!945 = !DILocation(line: 400, column: 9, scope: !658)
!946 = !DILocation(line: 400, column: 2, scope: !658)
!947 = !DILocation(line: 401, column: 2, scope: !658)
!948 = !DILocation(line: 404, column: 15, scope: !658)
!949 = !DILocation(line: 404, column: 7, scope: !658)
!950 = !DILocation(line: 404, column: 5, scope: !658)
!951 = !DILocation(line: 405, column: 6, scope: !952)
!952 = distinct !DILexicalBlock(scope: !658, file: !25, line: 405, column: 6)
!953 = !DILocation(line: 405, column: 9, scope: !952)
!954 = !DILocation(line: 405, column: 6, scope: !658)
!955 = !DILocation(line: 406, column: 3, scope: !952)
!956 = distinct !{!956, !955}
!957 = !DILocation(line: 406, column: 2, scope: !958)
!958 = !DILexicalBlockFile(scope: !959, file: !25, discriminator: 1)
!959 = distinct !DILexicalBlock(scope: !952, file: !25, line: 406, column: 6)
!960 = !DILocation(line: 406, column: 42, scope: !958)
!961 = !DILocation(line: 406, column: 8, scope: !958)
!962 = !DILocation(line: 406, column: 47, scope: !958)
!963 = !DILocation(line: 406, column: 47, scope: !964)
!964 = !DILexicalBlockFile(scope: !959, file: !25, discriminator: 2)
!965 = !DILocation(line: 405, column: 11, scope: !966)
!966 = !DILexicalBlockFile(scope: !952, file: !25, discriminator: 1)
!967 = !DILocation(line: 408, column: 7, scope: !658)
!968 = !DILocation(line: 408, column: 2, scope: !658)
!969 = !DILocation(line: 410, column: 9, scope: !658)
!970 = !DILocation(line: 410, column: 2, scope: !658)
!971 = !DILocation(line: 411, column: 2, scope: !658)
!972 = !DILocation(line: 412, column: 1, scope: !658)
