; ModuleID = './[inter]unnpk.o.i'
source_filename = "./[inter]unnpk.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.map_entry = type { i32, i8* }
%struct.options = type { i8*, i64, i8*, i32, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.npk_main_hdr = type { i32, i32 }
%struct.npk_part_hdr = type <{ i16, i32 }>
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type opaque
%struct.npk_part_file_item_hdr = type <{ i8, i8, [6 x i8], i32, i8, [1 x i8], i8, i8, [4 x i8], [4 x i8], i32, i16 }>
%struct.npk_part_pkg_info_hdr = type { [16 x i8], i8, [1 x i8], i8, i8, i32, [8 x i8] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [32 x i8] c"You should specify input file.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"You should specify operation.\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"open %s: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"stat %s: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%s is not regular file.\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"chdir %s: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"unknown-pkg\00", align 1
@pkg_name = internal global i8* null, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"munmap\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"MikroTik NPK files unpacker/processor v%s.\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"1.1\00", align 1
@.str.12 = private unnamed_addr constant [568 x i8] c"\0AUsage:\0A  %s {-t|-x} [-v] -f <file> [-C <dir>]\0A  %s -h\0A\0AOptions:\0A  -t         List package content\0A  -x         Extract package content\0A  -f <file>  Specify input file name\0A  -C <dir>   Specify output directory for extraction (should exist)\0A  -v         Be verbose (use twice to get full dump)\0A  -h         Show this cruft\0A\0AExamples:\0A  Get full NPK dump:\0A    %s -tvvf routeros-2.7.npk\0A  Silently extract package to the current directory:\0A    %s -xf routeros-2.7.npk\0A  Verbosly extract package to the specified directory:\0A    %s -xvf routeros-2.7.npk -C routeros-2.7\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"Author: RSA <ryazanov.s.a@gmail.com>\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Unexpected option's argument '%s'.\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Unknown option '%c'.\0A\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"Arg parser state machine internal error.\0A\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"Option '%c' require an argument.\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"Error: File shorter than main header.\0A\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"Error: Invalid file signature should be %08X.\0A\00", align 1
@.str.20 = private unnamed_addr constant [79 x i8] c"Warning: remain size header field great than actual file size. File corrupted?\00", align 1
@.str.21 = private unnamed_addr constant [78 x i8] c"Warning: remain size header field less than actual file size. File corrupted?\00", align 1
@.str.22 = private unnamed_addr constant [58 x i8] c"Error: remain file chunk not enogh for partition header.\0A\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"Error: remain file chunk not enogh for partition data.\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"\0A[Main header]\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"Signature : %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"Remain siz: %u\0A\00", align 1
@array2str.buf = internal global [77 x i8] c"hex:\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.27 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"\0A[Partition header]\0A\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"Type: %u (%s)\0A\00", align 1
@part_types_names = internal constant [12 x %struct.map_entry] [%struct.map_entry { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0) }, %struct.map_entry { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0) }, %struct.map_entry { i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0) }, %struct.map_entry { i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0) }, %struct.map_entry { i32 7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0) }, %struct.map_entry { i32 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0) }, %struct.map_entry { i32 16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0) }, %struct.map_entry { i32 18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i32 0, i32 0) }, %struct.map_entry { i32 21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i32 0, i32 0) }, %struct.map_entry { i32 23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0) }, %struct.map_entry { i32 24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0) }, %struct.map_entry zeroinitializer], align 16
@.str.31 = private unnamed_addr constant [10 x i8] c"Size: %u\0A\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"Package information\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"Package description\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"Files container\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"Install script\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"Uninstall script\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"Package architecture\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"Main package information\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"Squash filesystem image\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"Digest\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"Release type\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"Description: %.*s\0A\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"Script:\0A%.*s\0A\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"1.2.11\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"inflateInit\00", align 1
@.str.47 = private unnamed_addr constant [58 x i8] c"Request additional input data but input buffer is empty.\0A\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"inflate\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"Perm    : %u (%s)\0A\00", align 1
@file_perms_names = internal constant [4 x %struct.map_entry] [%struct.map_entry { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0) }, %struct.map_entry { i32 237, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i32 0, i32 0) }, %struct.map_entry { i32 164, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i32 0, i32 0) }, %struct.map_entry zeroinitializer], align 16
@.str.51 = private unnamed_addr constant [19 x i8] c"Type    : %u (%s)\0A\00", align 1
@file_types_names = internal constant [5 x %struct.map_entry] [%struct.map_entry { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0) }, %struct.map_entry { i32 33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0) }, %struct.map_entry { i32 65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0) }, %struct.map_entry { i32 129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0) }, %struct.map_entry zeroinitializer], align 16
@.str.52 = private unnamed_addr constant [14 x i8] c"Usr/Grp : %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"Time    : %u\0A\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"Revision: %u\0A\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"Unknown : %s\0A\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"Ver min : %u\0A\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"Ver maj : %u\0A\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"Version2: %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"Data sz : %u\0A\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"Name len: %u\0A\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"Name    : %s\0A\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.65 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.68 = private unnamed_addr constant [33 x i8] c"Can't write to the output file.\0A\00", align 1
@.str.69 = private unnamed_addr constant [58 x i8] c"Invalid file container parser internal state. Interrupt.\0A\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"executable\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"not executable\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"regular\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"Arch: %.*s\0A\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"Name      : %s\0A\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"Unknown   : %s\0A\00", align 1
@.str.80 = private unnamed_addr constant [22 x i8] c"Version   : %u.%u.%u\0A\00", align 1
@.str.81 = private unnamed_addr constant [19 x i8] c"Version   : %u.%u\0A\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"Timestamp : %u (%s)\0A\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"%s.squashfs\0A\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"%s.squashfs\00", align 1
@.str.86 = private unnamed_addr constant [44 x i8] c"Error: could not open '%s' for writing: %s\0A\00", align 1
@.str.87 = private unnamed_addr constant [50 x i8] c"Error: could not write SquashFS data to '%s': %s\0A\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"Digest: %.*s\0A\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"Rel. type: %.*s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !113 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.options, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 8
  %11 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !116, metadata !117), !dbg !118
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !119, metadata !117), !dbg !120
  call void @llvm.dbg.declare(metadata i8** %6, metadata !121, metadata !117), !dbg !122
  call void @llvm.dbg.declare(metadata %struct.options* %7, metadata !123, metadata !117), !dbg !124
  call void @llvm.dbg.declare(metadata i32* %8, metadata !125, metadata !117), !dbg !126
  call void @llvm.dbg.declare(metadata i32* %9, metadata !127, metadata !117), !dbg !128
  call void @llvm.dbg.declare(metadata %struct.stat* %10, metadata !129, metadata !117), !dbg !165
  call void @llvm.dbg.declare(metadata i8** %11, metadata !166, metadata !117), !dbg !167
  %12 = load i8**, i8*** %5, align 8, !dbg !168
  %13 = getelementptr inbounds i8*, i8** %12, i64 0, !dbg !168
  %14 = load i8*, i8** %13, align 8, !dbg !168
  %15 = call i8* @strrchr(i8* %14, i32 47) #8, !dbg !169
  store i8* %15, i8** %6, align 8, !dbg !170
  %16 = load i8*, i8** %6, align 8, !dbg !171
  %17 = icmp eq i8* null, %16, !dbg !172
  br i1 %17, label %18, label %22, !dbg !173

; <label>:18:                                     ; preds = %2
  %19 = load i8**, i8*** %5, align 8, !dbg !174
  %20 = getelementptr inbounds i8*, i8** %19, i64 0, !dbg !174
  %21 = load i8*, i8** %20, align 8, !dbg !174
  br label %25, !dbg !176

; <label>:22:                                     ; preds = %2
  %23 = load i8*, i8** %6, align 8, !dbg !177
  %24 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !179
  br label %25, !dbg !180

; <label>:25:                                     ; preds = %22, %18
  %26 = phi i8* [ %21, %18 ], [ %24, %22 ], !dbg !181
  store i8* %26, i8** %6, align 8, !dbg !183
  %27 = bitcast %struct.options* %7 to i8*, !dbg !184
  call void @llvm.memset.p0i8.i64(i8* %27, i8 0, i64 40, i32 8, i1 false), !dbg !184
  %28 = load i32, i32* %4, align 4, !dbg !185
  %29 = icmp eq i32 %28, 1, !dbg !187
  br i1 %29, label %30, label %32, !dbg !188

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %6, align 8, !dbg !189
  call void @usage(i8* %31), !dbg !191
  store i32 0, i32* %3, align 4, !dbg !192
  br label %196, !dbg !192

; <label>:32:                                     ; preds = %25
  %33 = load i32, i32* %4, align 4, !dbg !193
  %34 = load i8**, i8*** %5, align 8, !dbg !195
  %35 = call i32 @parse_args(i32 %33, i8** %34, %struct.options* %7), !dbg !196
  %36 = icmp ne i32 %35, 0, !dbg !197
  br i1 %36, label %37, label %38, !dbg !198

; <label>:37:                                     ; preds = %32
  store i32 1, i32* %3, align 4, !dbg !199
  br label %196, !dbg !199

; <label>:38:                                     ; preds = %32
  %39 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 3, !dbg !201
  %40 = load i32, i32* %39, align 8, !dbg !201
  %41 = icmp eq i32 1, %40, !dbg !203
  br i1 %41, label %42, label %44, !dbg !204

; <label>:42:                                     ; preds = %38
  %43 = load i8*, i8** %6, align 8, !dbg !205
  call void @usage(i8* %43), !dbg !207
  store i32 0, i32* %3, align 4, !dbg !208
  br label %196, !dbg !208

; <label>:44:                                     ; preds = %38
  %45 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 0, !dbg !209
  %46 = load i8*, i8** %45, align 8, !dbg !209
  %47 = icmp eq i8* null, %46, !dbg !211
  br i1 %47, label %48, label %51, !dbg !212

; <label>:48:                                     ; preds = %44
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !213
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0)), !dbg !215
  store i32 1, i32* %3, align 4, !dbg !216
  br label %196, !dbg !216

; <label>:51:                                     ; preds = %44
  %52 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 3, !dbg !217
  %53 = load i32, i32* %52, align 8, !dbg !217
  %54 = icmp eq i32 0, %53, !dbg !219
  br i1 %54, label %55, label %58, !dbg !220

; <label>:55:                                     ; preds = %51
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !221
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0)), !dbg !223
  store i32 1, i32* %3, align 4, !dbg !224
  br label %196, !dbg !224

; <label>:58:                                     ; preds = %51
  br label %59

; <label>:59:                                     ; preds = %58
  br label %60

; <label>:60:                                     ; preds = %59
  br label %61

; <label>:61:                                     ; preds = %60
  br label %62

; <label>:62:                                     ; preds = %61
  %63 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 3, !dbg !225
  %64 = load i32, i32* %63, align 8, !dbg !225
  %65 = icmp eq i32 3, %64, !dbg !227
  br i1 %65, label %66, label %84, !dbg !228

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 4, !dbg !229
  %68 = load i32, i32* %67, align 4, !dbg !229
  %69 = icmp ugt i32 %68, 1, !dbg !232
  br i1 %69, label %70, label %74, !dbg !233

; <label>:70:                                     ; preds = %66
  %71 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 5, !dbg !234
  %72 = load i32, i32* %71, align 8, !dbg !235
  %73 = or i32 %72, 1, !dbg !235
  store i32 %73, i32* %71, align 8, !dbg !235
  br label %83, !dbg !236

; <label>:74:                                     ; preds = %66
  %75 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 4, !dbg !237
  %76 = load i32, i32* %75, align 4, !dbg !237
  %77 = icmp ugt i32 %76, 0, !dbg !239
  br i1 %77, label %78, label %82, !dbg !240

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 5, !dbg !241
  %80 = load i32, i32* %79, align 8, !dbg !242
  %81 = or i32 %80, 2, !dbg !242
  store i32 %81, i32* %79, align 8, !dbg !242
  br label %82, !dbg !243

; <label>:82:                                     ; preds = %78, %74
  br label %83

; <label>:83:                                     ; preds = %82, %70
  br label %102, !dbg !244

; <label>:84:                                     ; preds = %62
  %85 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 3, !dbg !245
  %86 = load i32, i32* %85, align 8, !dbg !245
  %87 = icmp eq i32 2, %86, !dbg !248
  br i1 %87, label %88, label %101, !dbg !249

; <label>:88:                                     ; preds = %84
  %89 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 4, !dbg !250
  %90 = load i32, i32* %89, align 4, !dbg !250
  %91 = icmp ugt i32 %90, 0, !dbg !253
  br i1 %91, label %92, label %96, !dbg !254

; <label>:92:                                     ; preds = %88
  %93 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 5, !dbg !255
  %94 = load i32, i32* %93, align 8, !dbg !256
  %95 = or i32 %94, 1, !dbg !256
  store i32 %95, i32* %93, align 8, !dbg !256
  br label %100, !dbg !257

; <label>:96:                                     ; preds = %88
  %97 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 5, !dbg !258
  %98 = load i32, i32* %97, align 8, !dbg !259
  %99 = or i32 %98, 2, !dbg !259
  store i32 %99, i32* %97, align 8, !dbg !259
  br label %100

; <label>:100:                                    ; preds = %96, %92
  br label %101, !dbg !260

; <label>:101:                                    ; preds = %100, %84
  br label %102

; <label>:102:                                    ; preds = %101, %83
  %103 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 0, !dbg !261
  %104 = load i8*, i8** %103, align 8, !dbg !261
  %105 = call i32 (i8*, i32, ...) @open(i8* %104, i32 0), !dbg !262
  store i32 %105, i32* %8, align 4, !dbg !263
  %106 = load i32, i32* %8, align 4, !dbg !264
  %107 = icmp eq i32 -1, %106, !dbg !266
  br i1 %107, label %108, label %116, !dbg !267

; <label>:108:                                    ; preds = %102
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !268
  %110 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 0, !dbg !270
  %111 = load i8*, i8** %110, align 8, !dbg !270
  %112 = call i32* @__errno_location() #1, !dbg !271
  %113 = load i32, i32* %112, align 4, !dbg !272
  %114 = call i8* @strerror(i32 %113) #7, !dbg !273
  %115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* %111, i8* %114), !dbg !275
  store i32 1, i32* %3, align 4, !dbg !277
  br label %196, !dbg !277

; <label>:116:                                    ; preds = %102
  %117 = load i32, i32* %8, align 4, !dbg !278
  %118 = call i32 @fstat(i32 %117, %struct.stat* %10) #7, !dbg !280
  %119 = icmp eq i32 %118, -1, !dbg !281
  br i1 %119, label %120, label %130, !dbg !282

; <label>:120:                                    ; preds = %116
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !283
  %122 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 0, !dbg !285
  %123 = load i8*, i8** %122, align 8, !dbg !285
  %124 = call i32* @__errno_location() #1, !dbg !286
  %125 = load i32, i32* %124, align 4, !dbg !287
  %126 = call i8* @strerror(i32 %125) #7, !dbg !288
  %127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* %123, i8* %126), !dbg !290
  %128 = load i32, i32* %8, align 4, !dbg !292
  %129 = call i32 @close(i32 %128), !dbg !293
  store i32 1, i32* %3, align 4, !dbg !294
  br label %196, !dbg !294

; <label>:130:                                    ; preds = %116
  %131 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 3, !dbg !295
  %132 = load i32, i32* %131, align 8, !dbg !295
  %133 = and i32 %132, 61440, !dbg !295
  %134 = icmp eq i32 %133, 32768, !dbg !297
  br i1 %134, label %142, label %135, !dbg !298

; <label>:135:                                    ; preds = %130
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !299
  %137 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 0, !dbg !301
  %138 = load i8*, i8** %137, align 8, !dbg !301
  %139 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %136, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8* %138), !dbg !302
  %140 = load i32, i32* %8, align 4, !dbg !303
  %141 = call i32 @close(i32 %140), !dbg !304
  store i32 1, i32* %3, align 4, !dbg !305
  br label %196, !dbg !305

; <label>:142:                                    ; preds = %130
  %143 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8, !dbg !306
  %144 = load i64, i64* %143, align 8, !dbg !306
  %145 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 1, !dbg !307
  store i64 %144, i64* %145, align 8, !dbg !308
  %146 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 1, !dbg !309
  %147 = load i64, i64* %146, align 8, !dbg !309
  %148 = load i32, i32* %8, align 4, !dbg !310
  %149 = call i8* @mmap(i8* null, i64 %147, i32 1, i32 2, i32 %148, i64 0) #7, !dbg !311
  store i8* %149, i8** %11, align 8, !dbg !312
  %150 = load i8*, i8** %11, align 8, !dbg !313
  %151 = icmp eq i8* inttoptr (i64 -1 to i8*), %150, !dbg !315
  br i1 %151, label %152, label %155, !dbg !316

; <label>:152:                                    ; preds = %142
  call void @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)), !dbg !317
  %153 = load i32, i32* %8, align 4, !dbg !319
  %154 = call i32 @close(i32 %153), !dbg !320
  store i32 1, i32* %3, align 4, !dbg !321
  br label %196, !dbg !321

; <label>:155:                                    ; preds = %142
  %156 = load i32, i32* %8, align 4, !dbg !322
  %157 = call i32 @close(i32 %156), !dbg !324
  %158 = icmp eq i32 %157, -1, !dbg !325
  br i1 %158, label %159, label %160, !dbg !326

; <label>:159:                                    ; preds = %155
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)), !dbg !327
  store i32 1, i32* %3, align 4, !dbg !329
  br label %196, !dbg !329

; <label>:160:                                    ; preds = %155
  %161 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 3, !dbg !330
  %162 = load i32, i32* %161, align 8, !dbg !330
  %163 = icmp eq i32 3, %162, !dbg !332
  br i1 %163, label %164, label %182, !dbg !333

; <label>:164:                                    ; preds = %160
  %165 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 2, !dbg !334
  %166 = load i8*, i8** %165, align 8, !dbg !334
  %167 = icmp ne i8* %166, null, !dbg !336
  br i1 %167, label %168, label %182, !dbg !337

; <label>:168:                                    ; preds = %164
  %169 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 2, !dbg !338
  %170 = load i8*, i8** %169, align 8, !dbg !338
  %171 = call i32 @chdir(i8* %170) #7, !dbg !341
  %172 = icmp ne i32 %171, 0, !dbg !342
  br i1 %172, label %173, label %181, !dbg !343

; <label>:173:                                    ; preds = %168
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !344
  %175 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 2, !dbg !346
  %176 = load i8*, i8** %175, align 8, !dbg !346
  %177 = call i32* @__errno_location() #1, !dbg !347
  %178 = load i32, i32* %177, align 4, !dbg !348
  %179 = call i8* @strerror(i32 %178) #7, !dbg !349
  %180 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %174, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* %176, i8* %179), !dbg !351
  store i32 1, i32* %3, align 4, !dbg !353
  br label %196, !dbg !353

; <label>:181:                                    ; preds = %168
  br label %182, !dbg !354

; <label>:182:                                    ; preds = %181, %164, %160
  %183 = call noalias i8* @strdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0)) #7, !dbg !355
  store i8* %183, i8** @pkg_name, align 8, !dbg !356
  %184 = load i8*, i8** %11, align 8, !dbg !357
  %185 = call i32 @proc_main(i8* %184, %struct.options* %7), !dbg !358
  store i32 %185, i32* %9, align 4, !dbg !359
  %186 = load i8*, i8** %11, align 8, !dbg !360
  %187 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 1, !dbg !362
  %188 = load i64, i64* %187, align 8, !dbg !362
  %189 = call i32 @munmap(i8* %186, i64 %188) #7, !dbg !363
  %190 = icmp eq i32 %189, -1, !dbg !364
  br i1 %190, label %191, label %192, !dbg !365

; <label>:191:                                    ; preds = %182
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)), !dbg !366
  store i32 1, i32* %3, align 4, !dbg !368
  br label %196, !dbg !368

; <label>:192:                                    ; preds = %182
  %193 = load i32, i32* %9, align 4, !dbg !369
  %194 = icmp eq i32 0, %193, !dbg !370
  %195 = select i1 %194, i32 0, i32 1, !dbg !371
  store i32 %195, i32* %3, align 4, !dbg !372
  br label %196, !dbg !372

; <label>:196:                                    ; preds = %192, %191, %173, %159, %152, %135, %120, %108, %55, %48, %42, %37, %30
  %197 = load i32, i32* %3, align 4, !dbg !373
  ret i32 %197, !dbg !373
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @usage(i8*) #0 !dbg !374 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !377, metadata !117), !dbg !378
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !379
  %4 = load i8*, i8** %2, align 8, !dbg !380
  %5 = load i8*, i8** %2, align 8, !dbg !381
  %6 = load i8*, i8** %2, align 8, !dbg !382
  %7 = load i8*, i8** %2, align 8, !dbg !383
  %8 = load i8*, i8** %2, align 8, !dbg !384
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([568 x i8], [568 x i8]* @.str.12, i32 0, i32 0), i8* %4, i8* %5, i8* %6, i8* %7, i8* %8), !dbg !385
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0)), !dbg !386
  ret void, !dbg !387
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_args(i32, i8**, %struct.options*) #0 !dbg !28 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.options*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !388, metadata !117), !dbg !389
  store i8** %1, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !390, metadata !117), !dbg !391
  store %struct.options* %2, %struct.options** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.options** %7, metadata !392, metadata !117), !dbg !393
  call void @llvm.dbg.declare(metadata i32* %8, metadata !394, metadata !117), !dbg !395
  call void @llvm.dbg.declare(metadata i32* %9, metadata !396, metadata !117), !dbg !397
  call void @llvm.dbg.declare(metadata i32* %10, metadata !398, metadata !117), !dbg !399
  store i32 0, i32* %10, align 4, !dbg !400
  store i32 1, i32* %8, align 4, !dbg !402
  store i32 0, i32* %9, align 4, !dbg !403
  br label %11, !dbg !404

; <label>:11:                                     ; preds = %208, %3
  %12 = load i32, i32* %8, align 4, !dbg !405
  %13 = load i32, i32* %5, align 4, !dbg !408
  %14 = icmp ult i32 %12, %13, !dbg !409
  br i1 %14, label %15, label %209, !dbg !410

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %10, align 4, !dbg !411
  switch i32 %16, label %179 [
    i32 0, label %17
    i32 2, label %157
    i32 3, label %168
  ], !dbg !413

; <label>:17:                                     ; preds = %15
  %18 = load i32, i32* %9, align 4, !dbg !414
  %19 = icmp eq i32 0, %18, !dbg !417
  br i1 %19, label %20, label %49, !dbg !418

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %8, align 4, !dbg !419
  %22 = zext i32 %21 to i64, !dbg !422
  %23 = load i8**, i8*** %6, align 8, !dbg !422
  %24 = getelementptr inbounds i8*, i8** %23, i64 %22, !dbg !422
  %25 = load i8*, i8** %24, align 8, !dbg !422
  %26 = getelementptr inbounds i8, i8* %25, i64 0, !dbg !422
  %27 = load i8, i8* %26, align 1, !dbg !422
  %28 = sext i8 %27 to i32, !dbg !422
  %29 = icmp ne i32 %28, 45, !dbg !423
  br i1 %29, label %40, label %30, !dbg !424

; <label>:30:                                     ; preds = %20
  %31 = load i32, i32* %8, align 4, !dbg !425
  %32 = zext i32 %31 to i64, !dbg !427
  %33 = load i8**, i8*** %6, align 8, !dbg !427
  %34 = getelementptr inbounds i8*, i8** %33, i64 %32, !dbg !427
  %35 = load i8*, i8** %34, align 8, !dbg !427
  %36 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !427
  %37 = load i8, i8* %36, align 1, !dbg !427
  %38 = sext i8 %37 to i32, !dbg !427
  %39 = icmp eq i32 %38, 0, !dbg !428
  br i1 %39, label %40, label %48, !dbg !429

; <label>:40:                                     ; preds = %30, %20
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !430
  %42 = load i32, i32* %8, align 4, !dbg !432
  %43 = zext i32 %42 to i64, !dbg !433
  %44 = load i8**, i8*** %6, align 8, !dbg !433
  %45 = getelementptr inbounds i8*, i8** %44, i64 %43, !dbg !433
  %46 = load i8*, i8** %45, align 8, !dbg !433
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i32 0, i32 0), i8* %46), !dbg !434
  store i32 1, i32* %4, align 4, !dbg !435
  br label %232, !dbg !435

; <label>:48:                                     ; preds = %30
  br label %156, !dbg !436

; <label>:49:                                     ; preds = %17
  %50 = load i32, i32* %9, align 4, !dbg !437
  %51 = zext i32 %50 to i64, !dbg !440
  %52 = load i32, i32* %8, align 4, !dbg !441
  %53 = zext i32 %52 to i64, !dbg !440
  %54 = load i8**, i8*** %6, align 8, !dbg !440
  %55 = getelementptr inbounds i8*, i8** %54, i64 %53, !dbg !440
  %56 = load i8*, i8** %55, align 8, !dbg !440
  %57 = getelementptr inbounds i8, i8* %56, i64 %51, !dbg !440
  %58 = load i8, i8* %57, align 1, !dbg !440
  %59 = sext i8 %58 to i32, !dbg !440
  %60 = icmp eq i32 102, %59, !dbg !442
  br i1 %60, label %61, label %62, !dbg !443

; <label>:61:                                     ; preds = %49
  store i32 2, i32* %10, align 4, !dbg !444
  br label %155, !dbg !446

; <label>:62:                                     ; preds = %49
  %63 = load i32, i32* %9, align 4, !dbg !447
  %64 = zext i32 %63 to i64, !dbg !450
  %65 = load i32, i32* %8, align 4, !dbg !451
  %66 = zext i32 %65 to i64, !dbg !450
  %67 = load i8**, i8*** %6, align 8, !dbg !450
  %68 = getelementptr inbounds i8*, i8** %67, i64 %66, !dbg !450
  %69 = load i8*, i8** %68, align 8, !dbg !450
  %70 = getelementptr inbounds i8, i8* %69, i64 %64, !dbg !450
  %71 = load i8, i8* %70, align 1, !dbg !450
  %72 = sext i8 %71 to i32, !dbg !450
  %73 = icmp eq i32 67, %72, !dbg !452
  br i1 %73, label %74, label %75, !dbg !453

; <label>:74:                                     ; preds = %62
  store i32 3, i32* %10, align 4, !dbg !454
  br label %154, !dbg !456

; <label>:75:                                     ; preds = %62
  %76 = load i32, i32* %9, align 4, !dbg !457
  %77 = zext i32 %76 to i64, !dbg !460
  %78 = load i32, i32* %8, align 4, !dbg !461
  %79 = zext i32 %78 to i64, !dbg !460
  %80 = load i8**, i8*** %6, align 8, !dbg !460
  %81 = getelementptr inbounds i8*, i8** %80, i64 %79, !dbg !460
  %82 = load i8*, i8** %81, align 8, !dbg !460
  %83 = getelementptr inbounds i8, i8* %82, i64 %77, !dbg !460
  %84 = load i8, i8* %83, align 1, !dbg !460
  %85 = sext i8 %84 to i32, !dbg !460
  %86 = icmp eq i32 116, %85, !dbg !462
  br i1 %86, label %87, label %90, !dbg !463

; <label>:87:                                     ; preds = %75
  %88 = load %struct.options*, %struct.options** %7, align 8, !dbg !464
  %89 = getelementptr inbounds %struct.options, %struct.options* %88, i32 0, i32 3, !dbg !466
  store i32 2, i32* %89, align 8, !dbg !467
  br label %153, !dbg !468

; <label>:90:                                     ; preds = %75
  %91 = load i32, i32* %9, align 4, !dbg !469
  %92 = zext i32 %91 to i64, !dbg !472
  %93 = load i32, i32* %8, align 4, !dbg !473
  %94 = zext i32 %93 to i64, !dbg !472
  %95 = load i8**, i8*** %6, align 8, !dbg !472
  %96 = getelementptr inbounds i8*, i8** %95, i64 %94, !dbg !472
  %97 = load i8*, i8** %96, align 8, !dbg !472
  %98 = getelementptr inbounds i8, i8* %97, i64 %92, !dbg !472
  %99 = load i8, i8* %98, align 1, !dbg !472
  %100 = sext i8 %99 to i32, !dbg !472
  %101 = icmp eq i32 120, %100, !dbg !474
  br i1 %101, label %102, label %105, !dbg !475

; <label>:102:                                    ; preds = %90
  %103 = load %struct.options*, %struct.options** %7, align 8, !dbg !476
  %104 = getelementptr inbounds %struct.options, %struct.options* %103, i32 0, i32 3, !dbg !478
  store i32 3, i32* %104, align 8, !dbg !479
  br label %152, !dbg !480

; <label>:105:                                    ; preds = %90
  %106 = load i32, i32* %9, align 4, !dbg !481
  %107 = zext i32 %106 to i64, !dbg !484
  %108 = load i32, i32* %8, align 4, !dbg !485
  %109 = zext i32 %108 to i64, !dbg !484
  %110 = load i8**, i8*** %6, align 8, !dbg !484
  %111 = getelementptr inbounds i8*, i8** %110, i64 %109, !dbg !484
  %112 = load i8*, i8** %111, align 8, !dbg !484
  %113 = getelementptr inbounds i8, i8* %112, i64 %107, !dbg !484
  %114 = load i8, i8* %113, align 1, !dbg !484
  %115 = sext i8 %114 to i32, !dbg !484
  %116 = icmp eq i32 118, %115, !dbg !486
  br i1 %116, label %117, label %122, !dbg !487

; <label>:117:                                    ; preds = %105
  %118 = load %struct.options*, %struct.options** %7, align 8, !dbg !488
  %119 = getelementptr inbounds %struct.options, %struct.options* %118, i32 0, i32 4, !dbg !490
  %120 = load i32, i32* %119, align 4, !dbg !491
  %121 = add i32 %120, 1, !dbg !491
  store i32 %121, i32* %119, align 4, !dbg !491
  br label %151, !dbg !492

; <label>:122:                                    ; preds = %105
  %123 = load i32, i32* %9, align 4, !dbg !493
  %124 = zext i32 %123 to i64, !dbg !496
  %125 = load i32, i32* %8, align 4, !dbg !497
  %126 = zext i32 %125 to i64, !dbg !496
  %127 = load i8**, i8*** %6, align 8, !dbg !496
  %128 = getelementptr inbounds i8*, i8** %127, i64 %126, !dbg !496
  %129 = load i8*, i8** %128, align 8, !dbg !496
  %130 = getelementptr inbounds i8, i8* %129, i64 %124, !dbg !496
  %131 = load i8, i8* %130, align 1, !dbg !496
  %132 = sext i8 %131 to i32, !dbg !496
  %133 = icmp eq i32 104, %132, !dbg !498
  br i1 %133, label %134, label %137, !dbg !499

; <label>:134:                                    ; preds = %122
  %135 = load %struct.options*, %struct.options** %7, align 8, !dbg !500
  %136 = getelementptr inbounds %struct.options, %struct.options* %135, i32 0, i32 3, !dbg !502
  store i32 1, i32* %136, align 8, !dbg !503
  br label %150, !dbg !504

; <label>:137:                                    ; preds = %122
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !505
  %139 = load i32, i32* %9, align 4, !dbg !507
  %140 = zext i32 %139 to i64, !dbg !508
  %141 = load i32, i32* %8, align 4, !dbg !509
  %142 = zext i32 %141 to i64, !dbg !508
  %143 = load i8**, i8*** %6, align 8, !dbg !508
  %144 = getelementptr inbounds i8*, i8** %143, i64 %142, !dbg !508
  %145 = load i8*, i8** %144, align 8, !dbg !508
  %146 = getelementptr inbounds i8, i8* %145, i64 %140, !dbg !508
  %147 = load i8, i8* %146, align 1, !dbg !508
  %148 = sext i8 %147 to i32, !dbg !508
  %149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %138, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i32 %148), !dbg !510
  store i32 1, i32* %4, align 4, !dbg !511
  br label %232, !dbg !511

; <label>:150:                                    ; preds = %134
  br label %151

; <label>:151:                                    ; preds = %150, %117
  br label %152

; <label>:152:                                    ; preds = %151, %102
  br label %153

; <label>:153:                                    ; preds = %152, %87
  br label %154

; <label>:154:                                    ; preds = %153, %74
  br label %155

; <label>:155:                                    ; preds = %154, %61
  br label %156

; <label>:156:                                    ; preds = %155, %48
  br label %182, !dbg !512

; <label>:157:                                    ; preds = %15
  %158 = load i32, i32* %9, align 4, !dbg !513
  %159 = zext i32 %158 to i64, !dbg !514
  %160 = load i32, i32* %8, align 4, !dbg !515
  %161 = zext i32 %160 to i64, !dbg !514
  %162 = load i8**, i8*** %6, align 8, !dbg !514
  %163 = getelementptr inbounds i8*, i8** %162, i64 %161, !dbg !514
  %164 = load i8*, i8** %163, align 8, !dbg !514
  %165 = getelementptr inbounds i8, i8* %164, i64 %159, !dbg !514
  %166 = load %struct.options*, %struct.options** %7, align 8, !dbg !516
  %167 = getelementptr inbounds %struct.options, %struct.options* %166, i32 0, i32 0, !dbg !517
  store i8* %165, i8** %167, align 8, !dbg !518
  store i32 1, i32* %10, align 4, !dbg !519
  br label %182, !dbg !520

; <label>:168:                                    ; preds = %15
  %169 = load i32, i32* %9, align 4, !dbg !521
  %170 = zext i32 %169 to i64, !dbg !522
  %171 = load i32, i32* %8, align 4, !dbg !523
  %172 = zext i32 %171 to i64, !dbg !522
  %173 = load i8**, i8*** %6, align 8, !dbg !522
  %174 = getelementptr inbounds i8*, i8** %173, i64 %172, !dbg !522
  %175 = load i8*, i8** %174, align 8, !dbg !522
  %176 = getelementptr inbounds i8, i8* %175, i64 %170, !dbg !522
  %177 = load %struct.options*, %struct.options** %7, align 8, !dbg !524
  %178 = getelementptr inbounds %struct.options, %struct.options* %177, i32 0, i32 2, !dbg !525
  store i8* %176, i8** %178, align 8, !dbg !526
  store i32 1, i32* %10, align 4, !dbg !527
  br label %182, !dbg !528

; <label>:179:                                    ; preds = %15
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !529
  %181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %180, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i32 0, i32 0)), !dbg !530
  store i32 1, i32* %4, align 4, !dbg !531
  br label %232, !dbg !531

; <label>:182:                                    ; preds = %168, %157, %156
  %183 = load i32, i32* %10, align 4, !dbg !532
  %184 = icmp eq i32 1, %183, !dbg !534
  br i1 %184, label %198, label %185, !dbg !535

; <label>:185:                                    ; preds = %182
  %186 = load i32, i32* %9, align 4, !dbg !536
  %187 = add i32 %186, 1, !dbg !538
  %188 = zext i32 %187 to i64, !dbg !539
  %189 = load i32, i32* %8, align 4, !dbg !540
  %190 = zext i32 %189 to i64, !dbg !539
  %191 = load i8**, i8*** %6, align 8, !dbg !539
  %192 = getelementptr inbounds i8*, i8** %191, i64 %190, !dbg !539
  %193 = load i8*, i8** %192, align 8, !dbg !539
  %194 = getelementptr inbounds i8, i8* %193, i64 %188, !dbg !539
  %195 = load i8, i8* %194, align 1, !dbg !539
  %196 = sext i8 %195 to i32, !dbg !539
  %197 = icmp eq i32 0, %196, !dbg !541
  br i1 %197, label %198, label %205, !dbg !542

; <label>:198:                                    ; preds = %185, %182
  %199 = load i32, i32* %8, align 4, !dbg !543
  %200 = add i32 %199, 1, !dbg !543
  store i32 %200, i32* %8, align 4, !dbg !543
  store i32 0, i32* %9, align 4, !dbg !545
  %201 = load i32, i32* %10, align 4, !dbg !546
  %202 = icmp eq i32 1, %201, !dbg !548
  br i1 %202, label %203, label %204, !dbg !549

; <label>:203:                                    ; preds = %198
  store i32 0, i32* %10, align 4, !dbg !550
  br label %204, !dbg !551

; <label>:204:                                    ; preds = %203, %198
  br label %208, !dbg !552

; <label>:205:                                    ; preds = %185
  %206 = load i32, i32* %9, align 4, !dbg !553
  %207 = add i32 %206, 1, !dbg !553
  store i32 %207, i32* %9, align 4, !dbg !553
  br label %208

; <label>:208:                                    ; preds = %205, %204
  br label %11, !dbg !555, !llvm.loop !557

; <label>:209:                                    ; preds = %11
  %210 = load i32, i32* %10, align 4, !dbg !559
  %211 = icmp ne i32 %210, 0, !dbg !561
  br i1 %211, label %212, label %231, !dbg !562

; <label>:212:                                    ; preds = %209
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !563
  %214 = load i32, i32* %8, align 4, !dbg !565
  %215 = zext i32 %214 to i64, !dbg !566
  %216 = load i8**, i8*** %6, align 8, !dbg !566
  %217 = getelementptr inbounds i8*, i8** %216, i64 %215, !dbg !566
  %218 = load i8*, i8** %217, align 8, !dbg !566
  %219 = call i64 @strlen(i8* %218) #8, !dbg !567
  %220 = sub i64 %219, 1, !dbg !568
  %221 = load i32, i32* %8, align 4, !dbg !569
  %222 = sub i32 %221, 1, !dbg !570
  %223 = zext i32 %222 to i64, !dbg !571
  %224 = load i8**, i8*** %6, align 8, !dbg !571
  %225 = getelementptr inbounds i8*, i8** %224, i64 %223, !dbg !571
  %226 = load i8*, i8** %225, align 8, !dbg !571
  %227 = getelementptr inbounds i8, i8* %226, i64 %220, !dbg !571
  %228 = load i8, i8* %227, align 1, !dbg !571
  %229 = sext i8 %228 to i32, !dbg !571
  %230 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %213, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0), i32 %229), !dbg !572
  store i32 1, i32* %4, align 4, !dbg !574
  br label %232, !dbg !574

; <label>:231:                                    ; preds = %209
  store i32 0, i32* %4, align 4, !dbg !575
  br label %232, !dbg !575

; <label>:232:                                    ; preds = %231, %212, %179, %137, %40
  %233 = load i32, i32* %4, align 4, !dbg !576
  ret i32 %233, !dbg !576
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

declare i32 @open(i8*, i32, ...) #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #5

declare i32 @close(i32) #4

; Function Attrs: nounwind
declare i8* @mmap(i8*, i64, i32, i32, i32, i64) #5

declare void @perror(i8*) #4

; Function Attrs: nounwind
declare i32 @chdir(i8*) #5

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #5

; Function Attrs: nounwind uwtable
define internal i32 @proc_main(i8*, %struct.options*) #0 !dbg !577 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.options*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.npk_main_hdr*, align 8
  %8 = alloca %struct.npk_part_hdr*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !580, metadata !117), !dbg !581
  store %struct.options* %1, %struct.options** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.options** %5, metadata !582, metadata !117), !dbg !583
  call void @llvm.dbg.declare(metadata i8** %6, metadata !584, metadata !117), !dbg !585
  %9 = load i8*, i8** %4, align 8, !dbg !586
  store i8* %9, i8** %6, align 8, !dbg !585
  call void @llvm.dbg.declare(metadata %struct.npk_main_hdr** %7, metadata !587, metadata !117), !dbg !590
  call void @llvm.dbg.declare(metadata %struct.npk_part_hdr** %8, metadata !591, metadata !117), !dbg !594
  %10 = load %struct.options*, %struct.options** %5, align 8, !dbg !595
  %11 = getelementptr inbounds %struct.options, %struct.options* %10, i32 0, i32 1, !dbg !597
  %12 = load i64, i64* %11, align 8, !dbg !597
  %13 = icmp ugt i64 8, %12, !dbg !598
  br i1 %13, label %14, label %17, !dbg !599

; <label>:14:                                     ; preds = %2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !600
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i32 0, i32 0)), !dbg !602
  store i32 -22, i32* %3, align 4, !dbg !603
  br label %144, !dbg !603

; <label>:17:                                     ; preds = %2
  %18 = load i8*, i8** %6, align 8, !dbg !604
  %19 = bitcast i8* %18 to %struct.npk_main_hdr*, !dbg !605
  store %struct.npk_main_hdr* %19, %struct.npk_main_hdr** %7, align 8, !dbg !606
  %20 = load %struct.npk_main_hdr*, %struct.npk_main_hdr** %7, align 8, !dbg !607
  %21 = getelementptr inbounds %struct.npk_main_hdr, %struct.npk_main_hdr* %20, i32 0, i32 0, !dbg !609
  %22 = load i32, i32* %21, align 1, !dbg !609
  %23 = call i32 @ntohl(i32 %22) #1, !dbg !610
  %24 = icmp ne i32 %23, 519164090, !dbg !611
  br i1 %24, label %25, label %28, !dbg !612

; <label>:25:                                     ; preds = %17
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !613
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i32 0, i32 0), i32 519164090), !dbg !615
  store i32 -22, i32* %3, align 4, !dbg !616
  br label %144, !dbg !616

; <label>:28:                                     ; preds = %17
  %29 = load %struct.npk_main_hdr*, %struct.npk_main_hdr** %7, align 8, !dbg !617
  %30 = getelementptr inbounds %struct.npk_main_hdr, %struct.npk_main_hdr* %29, i32 0, i32 1, !dbg !619
  %31 = load i32, i32* %30, align 1, !dbg !619
  %32 = zext i32 %31 to i64, !dbg !617
  %33 = load %struct.options*, %struct.options** %5, align 8, !dbg !620
  %34 = getelementptr inbounds %struct.options, %struct.options* %33, i32 0, i32 1, !dbg !621
  %35 = load i64, i64* %34, align 8, !dbg !621
  %36 = sub i64 %35, 4, !dbg !622
  %37 = sub i64 %36, 4, !dbg !623
  %38 = icmp ugt i64 %32, %37, !dbg !624
  br i1 %38, label %39, label %42, !dbg !625

; <label>:39:                                     ; preds = %28
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !626
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.20, i32 0, i32 0)), !dbg !627
  br label %57, !dbg !627

; <label>:42:                                     ; preds = %28
  %43 = load %struct.npk_main_hdr*, %struct.npk_main_hdr** %7, align 8, !dbg !628
  %44 = getelementptr inbounds %struct.npk_main_hdr, %struct.npk_main_hdr* %43, i32 0, i32 1, !dbg !630
  %45 = load i32, i32* %44, align 1, !dbg !630
  %46 = zext i32 %45 to i64, !dbg !628
  %47 = load %struct.options*, %struct.options** %5, align 8, !dbg !631
  %48 = getelementptr inbounds %struct.options, %struct.options* %47, i32 0, i32 1, !dbg !632
  %49 = load i64, i64* %48, align 8, !dbg !632
  %50 = sub i64 %49, 4, !dbg !633
  %51 = sub i64 %50, 4, !dbg !634
  %52 = icmp ult i64 %46, %51, !dbg !635
  br i1 %52, label %53, label %56, !dbg !636

; <label>:53:                                     ; preds = %42
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !637
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.21, i32 0, i32 0)), !dbg !638
  br label %56, !dbg !638

; <label>:56:                                     ; preds = %53, %42
  br label %57

; <label>:57:                                     ; preds = %56, %39
  %58 = load %struct.options*, %struct.options** %5, align 8, !dbg !639
  %59 = getelementptr inbounds %struct.options, %struct.options* %58, i32 0, i32 5, !dbg !641
  %60 = load i32, i32* %59, align 8, !dbg !641
  %61 = and i32 %60, 1, !dbg !642
  %62 = icmp ne i32 %61, 0, !dbg !642
  br i1 %62, label %63, label %65, !dbg !643

; <label>:63:                                     ; preds = %57
  %64 = load %struct.npk_main_hdr*, %struct.npk_main_hdr** %7, align 8, !dbg !644
  call void @proc_main_print_main_hdr(%struct.npk_main_hdr* %64), !dbg !645
  br label %65, !dbg !645

; <label>:65:                                     ; preds = %63, %57
  %66 = load i8*, i8** %6, align 8, !dbg !646
  %67 = getelementptr inbounds i8, i8* %66, i64 8, !dbg !646
  store i8* %67, i8** %6, align 8, !dbg !646
  br label %68, !dbg !647

; <label>:68:                                     ; preds = %136, %65
  %69 = load %struct.options*, %struct.options** %5, align 8, !dbg !648
  %70 = getelementptr inbounds %struct.options, %struct.options* %69, i32 0, i32 1, !dbg !650
  %71 = load i64, i64* %70, align 8, !dbg !650
  %72 = load i8*, i8** %6, align 8, !dbg !651
  %73 = load i8*, i8** %4, align 8, !dbg !652
  %74 = ptrtoint i8* %72 to i64, !dbg !653
  %75 = ptrtoint i8* %73 to i64, !dbg !653
  %76 = sub i64 %74, %75, !dbg !653
  %77 = sub nsw i64 %71, %76, !dbg !654
  %78 = icmp ne i64 %77, 0, !dbg !655
  br i1 %78, label %79, label %143, !dbg !656

; <label>:79:                                     ; preds = %68
  %80 = load %struct.options*, %struct.options** %5, align 8, !dbg !657
  %81 = getelementptr inbounds %struct.options, %struct.options* %80, i32 0, i32 1, !dbg !660
  %82 = load i64, i64* %81, align 8, !dbg !660
  %83 = load i8*, i8** %6, align 8, !dbg !661
  %84 = load i8*, i8** %4, align 8, !dbg !662
  %85 = ptrtoint i8* %83 to i64, !dbg !663
  %86 = ptrtoint i8* %84 to i64, !dbg !663
  %87 = sub i64 %85, %86, !dbg !663
  %88 = sub nsw i64 %82, %87, !dbg !664
  %89 = icmp ult i64 %88, 6, !dbg !665
  br i1 %89, label %90, label %93, !dbg !666

; <label>:90:                                     ; preds = %79
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !667
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.22, i32 0, i32 0)), !dbg !669
  store i32 -22, i32* %3, align 4, !dbg !670
  br label %144, !dbg !670

; <label>:93:                                     ; preds = %79
  %94 = load i8*, i8** %6, align 8, !dbg !671
  %95 = bitcast i8* %94 to %struct.npk_part_hdr*, !dbg !672
  store %struct.npk_part_hdr* %95, %struct.npk_part_hdr** %8, align 8, !dbg !673
  %96 = load %struct.options*, %struct.options** %5, align 8, !dbg !674
  %97 = getelementptr inbounds %struct.options, %struct.options* %96, i32 0, i32 5, !dbg !676
  %98 = load i32, i32* %97, align 8, !dbg !676
  %99 = and i32 %98, 1, !dbg !677
  %100 = icmp ne i32 %99, 0, !dbg !677
  br i1 %100, label %101, label %103, !dbg !678

; <label>:101:                                    ; preds = %93
  %102 = load %struct.npk_part_hdr*, %struct.npk_part_hdr** %8, align 8, !dbg !679
  call void @proc_main_print_part_hdr(%struct.npk_part_hdr* %102), !dbg !680
  br label %103, !dbg !680

; <label>:103:                                    ; preds = %101, %93
  %104 = load i8*, i8** %6, align 8, !dbg !681
  %105 = getelementptr inbounds i8, i8* %104, i64 6, !dbg !681
  store i8* %105, i8** %6, align 8, !dbg !681
  %106 = load %struct.options*, %struct.options** %5, align 8, !dbg !682
  %107 = getelementptr inbounds %struct.options, %struct.options* %106, i32 0, i32 1, !dbg !684
  %108 = load i64, i64* %107, align 8, !dbg !684
  %109 = load i8*, i8** %6, align 8, !dbg !685
  %110 = load i8*, i8** %4, align 8, !dbg !686
  %111 = ptrtoint i8* %109 to i64, !dbg !687
  %112 = ptrtoint i8* %110 to i64, !dbg !687
  %113 = sub i64 %111, %112, !dbg !687
  %114 = sub nsw i64 %108, %113, !dbg !688
  %115 = load %struct.npk_part_hdr*, %struct.npk_part_hdr** %8, align 8, !dbg !689
  %116 = getelementptr inbounds %struct.npk_part_hdr, %struct.npk_part_hdr* %115, i32 0, i32 1, !dbg !690
  %117 = load i32, i32* %116, align 1, !dbg !690
  %118 = zext i32 %117 to i64, !dbg !689
  %119 = icmp slt i64 %114, %118, !dbg !691
  br i1 %119, label %120, label %123, !dbg !692

; <label>:120:                                    ; preds = %103
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !693
  %122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.23, i32 0, i32 0)), !dbg !695
  store i32 -22, i32* %3, align 4, !dbg !696
  br label %144, !dbg !696

; <label>:123:                                    ; preds = %103
  %124 = load %struct.npk_part_hdr*, %struct.npk_part_hdr** %8, align 8, !dbg !697
  %125 = getelementptr inbounds %struct.npk_part_hdr, %struct.npk_part_hdr* %124, i32 0, i32 0, !dbg !699
  %126 = load i16, i16* %125, align 1, !dbg !699
  %127 = load %struct.npk_part_hdr*, %struct.npk_part_hdr** %8, align 8, !dbg !700
  %128 = getelementptr inbounds %struct.npk_part_hdr, %struct.npk_part_hdr* %127, i32 0, i32 1, !dbg !701
  %129 = load i32, i32* %128, align 1, !dbg !701
  %130 = load i8*, i8** %6, align 8, !dbg !702
  %131 = load %struct.options*, %struct.options** %5, align 8, !dbg !703
  %132 = call i32 @proc_part_data(i16 zeroext %126, i32 %129, i8* %130, %struct.options* %131), !dbg !704
  %133 = icmp ne i32 %132, 0, !dbg !705
  br i1 %133, label %134, label %135, !dbg !706

; <label>:134:                                    ; preds = %123
  store i32 -22, i32* %3, align 4, !dbg !707
  br label %144, !dbg !707

; <label>:135:                                    ; preds = %123
  br label %136

; <label>:136:                                    ; preds = %135
  %137 = load %struct.npk_part_hdr*, %struct.npk_part_hdr** %8, align 8, !dbg !708
  %138 = getelementptr inbounds %struct.npk_part_hdr, %struct.npk_part_hdr* %137, i32 0, i32 1, !dbg !709
  %139 = load i32, i32* %138, align 1, !dbg !709
  %140 = load i8*, i8** %6, align 8, !dbg !710
  %141 = zext i32 %139 to i64, !dbg !710
  %142 = getelementptr inbounds i8, i8* %140, i64 %141, !dbg !710
  store i8* %142, i8** %6, align 8, !dbg !710
  br label %68, !dbg !711, !llvm.loop !713

; <label>:143:                                    ; preds = %68
  store i32 0, i32* %3, align 4, !dbg !714
  br label %144, !dbg !714

; <label>:144:                                    ; preds = %143, %134, %120, %90, %25, %14
  %145 = load i32, i32* %3, align 4, !dbg !715
  ret i32 %145, !dbg !715
}

; Function Attrs: nounwind
declare i32 @munmap(i8*, i64) #5

declare i32 @printf(i8*, ...) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind readnone
declare i32 @ntohl(i32) #6

; Function Attrs: nounwind uwtable
define internal void @proc_main_print_main_hdr(%struct.npk_main_hdr*) #0 !dbg !716 {
  %2 = alloca %struct.npk_main_hdr*, align 8
  store %struct.npk_main_hdr* %0, %struct.npk_main_hdr** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.npk_main_hdr** %2, metadata !719, metadata !117), !dbg !720
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0)), !dbg !721
  %4 = load %struct.npk_main_hdr*, %struct.npk_main_hdr** %2, align 8, !dbg !722
  %5 = getelementptr inbounds %struct.npk_main_hdr, %struct.npk_main_hdr* %4, i32 0, i32 0, !dbg !723
  %6 = bitcast i32* %5 to i8*, !dbg !724
  %7 = call i8* @array2str(i8* %6, i32 4), !dbg !725
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i8* %7), !dbg !726
  %9 = load %struct.npk_main_hdr*, %struct.npk_main_hdr** %2, align 8, !dbg !728
  %10 = getelementptr inbounds %struct.npk_main_hdr, %struct.npk_main_hdr* %9, i32 0, i32 1, !dbg !729
  %11 = load i32, i32* %10, align 1, !dbg !729
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i32 %11), !dbg !730
  ret void, !dbg !731
}

; Function Attrs: nounwind uwtable
define internal void @proc_main_print_part_hdr(%struct.npk_part_hdr*) #0 !dbg !732 {
  %2 = alloca %struct.npk_part_hdr*, align 8
  store %struct.npk_part_hdr* %0, %struct.npk_part_hdr** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.npk_part_hdr** %2, metadata !735, metadata !117), !dbg !736
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0)), !dbg !737
  %4 = load %struct.npk_part_hdr*, %struct.npk_part_hdr** %2, align 8, !dbg !738
  %5 = getelementptr inbounds %struct.npk_part_hdr, %struct.npk_part_hdr* %4, i32 0, i32 0, !dbg !739
  %6 = load i16, i16* %5, align 1, !dbg !739
  %7 = zext i16 %6 to i32, !dbg !738
  %8 = load %struct.npk_part_hdr*, %struct.npk_part_hdr** %2, align 8, !dbg !740
  %9 = getelementptr inbounds %struct.npk_part_hdr, %struct.npk_part_hdr* %8, i32 0, i32 0, !dbg !741
  %10 = load i16, i16* %9, align 1, !dbg !741
  %11 = zext i16 %10 to i32, !dbg !740
  %12 = call i8* @type2name(%struct.map_entry* getelementptr inbounds ([12 x %struct.map_entry], [12 x %struct.map_entry]* @part_types_names, i32 0, i32 0), i32 %11), !dbg !742
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i32 %7, i8* %12), !dbg !743
  %14 = load %struct.npk_part_hdr*, %struct.npk_part_hdr** %2, align 8, !dbg !745
  %15 = getelementptr inbounds %struct.npk_part_hdr, %struct.npk_part_hdr* %14, i32 0, i32 1, !dbg !746
  %16 = load i32, i32* %15, align 1, !dbg !746
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i32 %16), !dbg !747
  ret void, !dbg !748
}

; Function Attrs: nounwind uwtable
define internal i32 @proc_part_data(i16 zeroext, i32, i8*, %struct.options*) #0 !dbg !749 {
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.options*, align 8
  store i16 %0, i16* %6, align 2
  call void @llvm.dbg.declare(metadata i16* %6, metadata !753, metadata !117), !dbg !754
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !755, metadata !117), !dbg !756
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !757, metadata !117), !dbg !758
  store %struct.options* %3, %struct.options** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.options** %9, metadata !759, metadata !117), !dbg !760
  %10 = load i16, i16* %6, align 2, !dbg !761
  %11 = zext i16 %10 to i32, !dbg !761
  switch i32 %11, label %52 [
    i32 2, label %12
    i32 7, label %17
    i32 8, label %17
    i32 4, label %22
    i32 16, label %27
    i32 1, label %32
    i32 18, label %32
    i32 21, label %37
    i32 23, label %42
    i32 24, label %47
  ], !dbg !762

; <label>:12:                                     ; preds = %4
  %13 = load i8*, i8** %8, align 8, !dbg !763
  %14 = load i32, i32* %7, align 4, !dbg !765
  %15 = load %struct.options*, %struct.options** %9, align 8, !dbg !766
  %16 = call i32 @proc_part_data_pkg_desc(i8* %13, i32 %14, %struct.options* %15), !dbg !767
  store i32 %16, i32* %5, align 4, !dbg !768
  br label %53, !dbg !768

; <label>:17:                                     ; preds = %4, %4
  %18 = load i8*, i8** %8, align 8, !dbg !769
  %19 = load i32, i32* %7, align 4, !dbg !770
  %20 = load %struct.options*, %struct.options** %9, align 8, !dbg !771
  %21 = call i32 @proc_part_data_script(i8* %18, i32 %19, %struct.options* %20), !dbg !772
  store i32 %21, i32* %5, align 4, !dbg !773
  br label %53, !dbg !773

; <label>:22:                                     ; preds = %4
  %23 = load i8*, i8** %8, align 8, !dbg !774
  %24 = load i32, i32* %7, align 4, !dbg !775
  %25 = load %struct.options*, %struct.options** %9, align 8, !dbg !776
  %26 = call i32 @proc_part_data_files(i8* %23, i32 %24, %struct.options* %25), !dbg !777
  store i32 %26, i32* %5, align 4, !dbg !778
  br label %53, !dbg !778

; <label>:27:                                     ; preds = %4
  %28 = load i8*, i8** %8, align 8, !dbg !779
  %29 = load i32, i32* %7, align 4, !dbg !780
  %30 = load %struct.options*, %struct.options** %9, align 8, !dbg !781
  %31 = call i32 @proc_part_data_pkg_arch(i8* %28, i32 %29, %struct.options* %30), !dbg !782
  store i32 %31, i32* %5, align 4, !dbg !783
  br label %53, !dbg !783

; <label>:32:                                     ; preds = %4, %4
  %33 = load i8*, i8** %8, align 8, !dbg !784
  %34 = load i32, i32* %7, align 4, !dbg !785
  %35 = load %struct.options*, %struct.options** %9, align 8, !dbg !786
  %36 = call i32 @proc_part_data_pkg_info(i8* %33, i32 %34, %struct.options* %35), !dbg !787
  store i32 %36, i32* %5, align 4, !dbg !788
  br label %53, !dbg !788

; <label>:37:                                     ; preds = %4
  %38 = load i8*, i8** %8, align 8, !dbg !789
  %39 = load i32, i32* %7, align 4, !dbg !790
  %40 = load %struct.options*, %struct.options** %9, align 8, !dbg !791
  %41 = call i32 @proc_part_data_squashfs(i8* %38, i32 %39, %struct.options* %40), !dbg !792
  store i32 %41, i32* %5, align 4, !dbg !793
  br label %53, !dbg !793

; <label>:42:                                     ; preds = %4
  %43 = load i8*, i8** %8, align 8, !dbg !794
  %44 = load i32, i32* %7, align 4, !dbg !795
  %45 = load %struct.options*, %struct.options** %9, align 8, !dbg !796
  %46 = call i32 @proc_part_data_digest(i8* %43, i32 %44, %struct.options* %45), !dbg !797
  store i32 %46, i32* %5, align 4, !dbg !798
  br label %53, !dbg !798

; <label>:47:                                     ; preds = %4
  %48 = load i8*, i8** %8, align 8, !dbg !799
  %49 = load i32, i32* %7, align 4, !dbg !800
  %50 = load %struct.options*, %struct.options** %9, align 8, !dbg !801
  %51 = call i32 @proc_part_data_reltype(i8* %48, i32 %49, %struct.options* %50), !dbg !802
  store i32 %51, i32* %5, align 4, !dbg !803
  br label %53, !dbg !803

; <label>:52:                                     ; preds = %4
  store i32 0, i32* %5, align 4, !dbg !804
  br label %53, !dbg !804

; <label>:53:                                     ; preds = %52, %47, %42, %37, %32, %27, %22, %17, %12
  %54 = load i32, i32* %5, align 4, !dbg !805
  ret i32 %54, !dbg !805
}

; Function Attrs: nounwind uwtable
define internal i8* @array2str(i8*, i32) #0 !dbg !84 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !806, metadata !117), !dbg !807
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !808, metadata !117), !dbg !809
  call void @llvm.dbg.declare(metadata i8** %5, metadata !810, metadata !117), !dbg !811
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @array2str.buf, i32 0, i64 4), i8** %5, align 8, !dbg !811
  call void @llvm.dbg.declare(metadata i32* %6, metadata !812, metadata !117), !dbg !813
  store i32 0, i32* %6, align 4, !dbg !814
  br label %7, !dbg !816

; <label>:7:                                      ; preds = %36, %2
  %8 = load i32, i32* %6, align 4, !dbg !817
  %9 = load i32, i32* %4, align 4, !dbg !820
  %10 = icmp ult i32 %8, %9, !dbg !821
  br i1 %10, label %11, label %39, !dbg !822

; <label>:11:                                     ; preds = %7
  %12 = load i8*, i8** %5, align 8, !dbg !823
  %13 = load i32, i32* %6, align 4, !dbg !825
  %14 = zext i32 %13 to i64, !dbg !826
  %15 = load i8*, i8** %3, align 8, !dbg !826
  %16 = getelementptr inbounds i8, i8* %15, i64 %14, !dbg !826
  %17 = load i8, i8* %16, align 1, !dbg !826
  %18 = zext i8 %17 to i32, !dbg !826
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %18) #7, !dbg !827
  %20 = load i8*, i8** %5, align 8, !dbg !828
  %21 = sext i32 %19 to i64, !dbg !828
  %22 = getelementptr inbounds i8, i8* %20, i64 %21, !dbg !828
  store i8* %22, i8** %5, align 8, !dbg !828
  %23 = load i8*, i8** %5, align 8, !dbg !829
  %24 = ptrtoint i8* %23 to i64, !dbg !831
  %25 = sub i64 ptrtoint (i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @array2str.buf, i32 0, i32 0), i64 77) to i64), %24, !dbg !831
  %26 = icmp sle i64 %25, 4, !dbg !832
  br i1 %26, label %27, label %35, !dbg !833

; <label>:27:                                     ; preds = %11
  %28 = load i32, i32* %4, align 4, !dbg !834
  %29 = load i32, i32* %6, align 4, !dbg !836
  %30 = sub i32 %28, %29, !dbg !837
  %31 = icmp ugt i32 %30, 2, !dbg !838
  br i1 %31, label %32, label %35, !dbg !839

; <label>:32:                                     ; preds = %27
  %33 = load i8*, i8** %5, align 8, !dbg !840
  %34 = call i8* @strcpy(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0)) #7, !dbg !842
  br label %39, !dbg !843

; <label>:35:                                     ; preds = %27, %11
  br label %36, !dbg !844

; <label>:36:                                     ; preds = %35
  %37 = load i32, i32* %6, align 4, !dbg !845
  %38 = add i32 %37, 1, !dbg !845
  store i32 %38, i32* %6, align 4, !dbg !845
  br label %7, !dbg !847, !llvm.loop !848

; <label>:39:                                     ; preds = %32, %7
  %40 = load i32, i32* %4, align 4, !dbg !850
  %41 = load i32, i32* %6, align 4, !dbg !852
  %42 = icmp eq i32 %40, %41, !dbg !853
  br i1 %42, label %43, label %46, !dbg !854

; <label>:43:                                     ; preds = %39
  %44 = load i8*, i8** %5, align 8, !dbg !855
  %45 = getelementptr inbounds i8, i8* %44, i32 -1, !dbg !855
  store i8* %45, i8** %5, align 8, !dbg !855
  store i8 0, i8* %45, align 1, !dbg !856
  br label %46, !dbg !857

; <label>:46:                                     ; preds = %43, %39
  ret i8* getelementptr inbounds ([77 x i8], [77 x i8]* @array2str.buf, i32 0, i32 0), !dbg !858
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal i8* @type2name(%struct.map_entry*, i32) #0 !dbg !859 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.map_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.map_entry*, align 8
  store %struct.map_entry* %0, %struct.map_entry** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.map_entry** %4, metadata !863, metadata !117), !dbg !864
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !865, metadata !117), !dbg !866
  call void @llvm.dbg.declare(metadata %struct.map_entry** %6, metadata !867, metadata !117), !dbg !868
  %7 = load %struct.map_entry*, %struct.map_entry** %4, align 8, !dbg !869
  store %struct.map_entry* %7, %struct.map_entry** %6, align 8, !dbg !868
  br label %8, !dbg !870

; <label>:8:                                      ; preds = %23, %2
  %9 = load %struct.map_entry*, %struct.map_entry** %6, align 8, !dbg !871
  %10 = getelementptr inbounds %struct.map_entry, %struct.map_entry* %9, i32 0, i32 1, !dbg !873
  %11 = load i8*, i8** %10, align 8, !dbg !873
  %12 = icmp ne i8* %11, null, !dbg !874
  br i1 %12, label %13, label %26, !dbg !875

; <label>:13:                                     ; preds = %8
  %14 = load %struct.map_entry*, %struct.map_entry** %6, align 8, !dbg !876
  %15 = getelementptr inbounds %struct.map_entry, %struct.map_entry* %14, i32 0, i32 0, !dbg !879
  %16 = load i32, i32* %15, align 8, !dbg !879
  %17 = load i32, i32* %5, align 4, !dbg !880
  %18 = icmp eq i32 %16, %17, !dbg !881
  br i1 %18, label %19, label %23, !dbg !882

; <label>:19:                                     ; preds = %13
  %20 = load %struct.map_entry*, %struct.map_entry** %6, align 8, !dbg !883
  %21 = getelementptr inbounds %struct.map_entry, %struct.map_entry* %20, i32 0, i32 1, !dbg !884
  %22 = load i8*, i8** %21, align 8, !dbg !884
  store i8* %22, i8** %3, align 8, !dbg !885
  br label %30, !dbg !885

; <label>:23:                                     ; preds = %13
  %24 = load %struct.map_entry*, %struct.map_entry** %6, align 8, !dbg !886
  %25 = getelementptr inbounds %struct.map_entry, %struct.map_entry* %24, i32 1, !dbg !886
  store %struct.map_entry* %25, %struct.map_entry** %6, align 8, !dbg !886
  br label %8, !dbg !887, !llvm.loop !889

; <label>:26:                                     ; preds = %8
  %27 = load %struct.map_entry*, %struct.map_entry** %4, align 8, !dbg !890
  %28 = getelementptr inbounds %struct.map_entry, %struct.map_entry* %27, i32 0, i32 1, !dbg !891
  %29 = load i8*, i8** %28, align 8, !dbg !891
  store i8* %29, i8** %3, align 8, !dbg !892
  br label %30, !dbg !892

; <label>:30:                                     ; preds = %26, %19
  %31 = load i8*, i8** %3, align 8, !dbg !893
  ret i8* %31, !dbg !893
}

; Function Attrs: nounwind uwtable
define internal i32 @proc_part_data_pkg_desc(i8*, i32, %struct.options*) #0 !dbg !894 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.options*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !895, metadata !117), !dbg !896
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !897, metadata !117), !dbg !898
  store %struct.options* %2, %struct.options** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.options** %7, metadata !899, metadata !117), !dbg !900
  %13 = load i32, i32* %6, align 4, !dbg !901
  %14 = add i32 %13, 1, !dbg !902
  %15 = zext i32 %14 to i64, !dbg !903
  %16 = call i8* @llvm.stacksave(), !dbg !903
  store i8* %16, i8** %8, align 8, !dbg !903
  %17 = alloca i8, i64 %15, align 16, !dbg !903
  call void @llvm.dbg.declare(metadata i8* %17, metadata !904, metadata !908), !dbg !909
  call void @llvm.dbg.declare(metadata i8** %9, metadata !910, metadata !117), !dbg !911
  call void @llvm.dbg.declare(metadata i8** %10, metadata !912, metadata !117), !dbg !913
  call void @llvm.dbg.declare(metadata i64* %11, metadata !914, metadata !117), !dbg !917
  %18 = load i8*, i8** %5, align 8, !dbg !918
  %19 = load i32, i32* %6, align 4, !dbg !919
  %20 = zext i32 %19 to i64, !dbg !919
  %21 = call i64 @strnlen(i8* %18, i64 %20) #8, !dbg !920
  store i64 %21, i64* %11, align 8, !dbg !917
  %22 = load %struct.options*, %struct.options** %7, align 8, !dbg !921
  %23 = getelementptr inbounds %struct.options, %struct.options* %22, i32 0, i32 5, !dbg !923
  %24 = load i32, i32* %23, align 8, !dbg !923
  %25 = and i32 %24, 1, !dbg !924
  %26 = icmp eq i32 %25, 0, !dbg !925
  br i1 %26, label %27, label %28, !dbg !926

; <label>:27:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !927
  store i32 1, i32* %12, align 4
  br label %78, !dbg !927

; <label>:28:                                     ; preds = %3
  %29 = load i8*, i8** %5, align 8, !dbg !928
  %30 = load i64, i64* %11, align 8, !dbg !929
  %31 = call i8* @strncpy(i8* %17, i8* %29, i64 %30) #7, !dbg !930
  %32 = load i64, i64* %11, align 8, !dbg !931
  %33 = getelementptr inbounds i8, i8* %17, i64 %32, !dbg !932
  store i8 0, i8* %33, align 1, !dbg !933
  store i8* %17, i8** %9, align 8, !dbg !934
  %34 = load i64, i64* %11, align 8, !dbg !935
  %35 = getelementptr inbounds i8, i8* %17, i64 %34, !dbg !936
  %36 = getelementptr inbounds i8, i8* %35, i64 -1, !dbg !937
  store i8* %36, i8** %10, align 8, !dbg !938
  br label %37, !dbg !939

; <label>:37:                                     ; preds = %49, %28
  %38 = load i8*, i8** %9, align 8, !dbg !940
  %39 = load i8, i8* %38, align 1, !dbg !942
  %40 = sext i8 %39 to i32, !dbg !942
  %41 = icmp eq i32 %40, 10, !dbg !943
  br i1 %41, label %47, label %42, !dbg !944

; <label>:42:                                     ; preds = %37
  %43 = load i8*, i8** %9, align 8, !dbg !945
  %44 = load i8, i8* %43, align 1, !dbg !947
  %45 = sext i8 %44 to i32, !dbg !947
  %46 = icmp eq i32 %45, 32, !dbg !948
  br label %47, !dbg !949

; <label>:47:                                     ; preds = %42, %37
  %48 = phi i1 [ true, %37 ], [ %46, %42 ]
  br i1 %48, label %49, label %52, !dbg !950

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !952
  %51 = getelementptr inbounds i8, i8* %50, i32 1, !dbg !952
  store i8* %51, i8** %9, align 8, !dbg !952
  br label %37, !dbg !953, !llvm.loop !955

; <label>:52:                                     ; preds = %47
  br label %53, !dbg !956

; <label>:53:                                     ; preds = %65, %52
  %54 = load i8*, i8** %10, align 8, !dbg !957
  %55 = load i8, i8* %54, align 1, !dbg !958
  %56 = sext i8 %55 to i32, !dbg !958
  %57 = icmp eq i32 %56, 10, !dbg !959
  br i1 %57, label %63, label %58, !dbg !960

; <label>:58:                                     ; preds = %53
  %59 = load i8*, i8** %10, align 8, !dbg !961
  %60 = load i8, i8* %59, align 1, !dbg !962
  %61 = sext i8 %60 to i32, !dbg !962
  %62 = icmp eq i32 %61, 32, !dbg !963
  br label %63, !dbg !964

; <label>:63:                                     ; preds = %58, %53
  %64 = phi i1 [ true, %53 ], [ %62, %58 ]
  br i1 %64, label %65, label %68, !dbg !965

; <label>:65:                                     ; preds = %63
  %66 = load i8*, i8** %10, align 8, !dbg !966
  %67 = getelementptr inbounds i8, i8* %66, i32 -1, !dbg !966
  store i8* %67, i8** %10, align 8, !dbg !966
  br label %53, !dbg !967, !llvm.loop !968

; <label>:68:                                     ; preds = %63
  %69 = load i8*, i8** %10, align 8, !dbg !969
  %70 = load i8*, i8** %9, align 8, !dbg !970
  %71 = ptrtoint i8* %69 to i64, !dbg !971
  %72 = ptrtoint i8* %70 to i64, !dbg !971
  %73 = sub i64 %71, %72, !dbg !971
  %74 = add nsw i64 %73, 1, !dbg !972
  %75 = trunc i64 %74 to i32, !dbg !973
  %76 = load i8*, i8** %9, align 8, !dbg !974
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i32 0, i32 0), i32 %75, i8* %76), !dbg !975
  store i32 0, i32* %4, align 4, !dbg !976
  store i32 1, i32* %12, align 4
  br label %78, !dbg !976

; <label>:78:                                     ; preds = %68, %27
  %79 = load i8*, i8** %8, align 8, !dbg !977
  call void @llvm.stackrestore(i8* %79), !dbg !977
  %80 = load i32, i32* %4, align 4, !dbg !977
  ret i32 %80, !dbg !977
}

; Function Attrs: nounwind uwtable
define internal i32 @proc_part_data_script(i8*, i32, %struct.options*) #0 !dbg !978 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.options*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !981, metadata !117), !dbg !982
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !983, metadata !117), !dbg !984
  store %struct.options* %2, %struct.options** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.options** %7, metadata !985, metadata !117), !dbg !986
  %8 = load %struct.options*, %struct.options** %7, align 8, !dbg !987
  %9 = getelementptr inbounds %struct.options, %struct.options* %8, i32 0, i32 4, !dbg !989
  %10 = load i32, i32* %9, align 4, !dbg !989
  %11 = icmp ult i32 %10, 2, !dbg !990
  br i1 %11, label %12, label %13, !dbg !991

; <label>:12:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !992
  br label %17, !dbg !992

; <label>:13:                                     ; preds = %3
  %14 = load i32, i32* %6, align 4, !dbg !993
  %15 = load i8*, i8** %5, align 8, !dbg !994
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i32 %14, i8* %15), !dbg !995
  store i32 0, i32* %4, align 4, !dbg !996
  br label %17, !dbg !996

; <label>:17:                                     ; preds = %13, %12
  %18 = load i32, i32* %4, align 4, !dbg !997
  ret i32 %18, !dbg !997
}

; Function Attrs: nounwind uwtable
define internal i32 @proc_part_data_files(i8*, i32, %struct.options*) #0 !dbg !42 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.options*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.z_stream_s, align 8
  %11 = alloca [16384 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca %struct.npk_part_file_item_hdr, align 1
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !998, metadata !117), !dbg !999
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1000, metadata !117), !dbg !1001
  store %struct.options* %2, %struct.options** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.options** %7, metadata !1002, metadata !117), !dbg !1003
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1004, metadata !117), !dbg !1005
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1006, metadata !117), !dbg !1007
  call void @llvm.dbg.declare(metadata %struct.z_stream_s* %10, metadata !1008, metadata !117), !dbg !1044
  call void @llvm.dbg.declare(metadata [16384 x i8]* %11, metadata !1045, metadata !117), !dbg !1049
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1050, metadata !117), !dbg !1051
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1052, metadata !117), !dbg !1053
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %14, metadata !1054, metadata !117), !dbg !1106
  store %struct._IO_FILE* null, %struct._IO_FILE** %14, align 8, !dbg !1106
  call void @llvm.dbg.declare(metadata %struct.npk_part_file_item_hdr* %15, metadata !1107, metadata !117), !dbg !1127
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1128, metadata !117), !dbg !1129
  %17 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 8, !dbg !1130
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %17, align 8, !dbg !1131
  %18 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 9, !dbg !1132
  store void (i8*, i8*)* null, void (i8*, i8*)** %18, align 8, !dbg !1133
  %19 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 10, !dbg !1134
  store i8* null, i8** %19, align 8, !dbg !1135
  %20 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1, !dbg !1136
  store i32 0, i32* %20, align 8, !dbg !1137
  %21 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 0, !dbg !1138
  store i8* null, i8** %21, align 8, !dbg !1139
  %22 = call i32 @inflateInit_(%struct.z_stream_s* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 112), !dbg !1140
  store i32 %22, i32* %8, align 4, !dbg !1141
  %23 = load i32, i32* %8, align 4, !dbg !1142
  %24 = icmp ne i32 %23, 0, !dbg !1144
  br i1 %24, label %25, label %26, !dbg !1145

; <label>:25:                                     ; preds = %3
  call void @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0)), !dbg !1146
  store i32 -22, i32* %4, align 4, !dbg !1148
  br label %371, !dbg !1148

; <label>:26:                                     ; preds = %3
  %27 = load i32, i32* %6, align 4, !dbg !1149
  %28 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1, !dbg !1150
  store i32 %27, i32* %28, align 8, !dbg !1151
  %29 = load i8*, i8** %5, align 8, !dbg !1152
  %30 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 0, !dbg !1153
  store i8* %29, i8** %30, align 8, !dbg !1154
  store i32 0, i32* %16, align 4, !dbg !1155
  store i32 0, i32* %9, align 4, !dbg !1156
  br label %31, !dbg !1157

; <label>:31:                                     ; preds = %368, %26
  %32 = load i32, i32* %16, align 4, !dbg !1158
  %33 = icmp ne i32 %32, 6, !dbg !1160
  br i1 %33, label %34, label %369, !dbg !1161

; <label>:34:                                     ; preds = %31
  %35 = load i32, i32* %16, align 4, !dbg !1162
  switch i32 %35, label %368 [
    i32 0, label %36
    i32 1, label %36
    i32 2, label %36
    i32 3, label %96
    i32 4, label %172
    i32 5, label %301
    i32 6, label %365
  ], !dbg !1164

; <label>:36:                                     ; preds = %34, %34, %34
  %37 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1, !dbg !1165
  %38 = load i32, i32* %37, align 8, !dbg !1165
  %39 = icmp eq i32 0, %38, !dbg !1168
  br i1 %39, label %40, label %47, !dbg !1169

; <label>:40:                                     ; preds = %36
  %41 = load i32, i32* %16, align 4, !dbg !1170
  %42 = icmp ne i32 0, %41, !dbg !1173
  br i1 %42, label %43, label %46, !dbg !1174

; <label>:43:                                     ; preds = %40
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1175
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.47, i32 0, i32 0)), !dbg !1176
  br label %46, !dbg !1176

; <label>:46:                                     ; preds = %43, %40
  store i32 6, i32* %16, align 4, !dbg !1177
  br label %368, !dbg !1178

; <label>:47:                                     ; preds = %36
  %48 = load i32, i32* %9, align 4, !dbg !1179
  %49 = icmp ne i32 %48, 0, !dbg !1179
  br i1 %49, label %50, label %55, !dbg !1181

; <label>:50:                                     ; preds = %47
  %51 = getelementptr inbounds [16384 x i8], [16384 x i8]* %11, i32 0, i32 0, !dbg !1182
  %52 = load i8*, i8** %12, align 8, !dbg !1183
  %53 = load i32, i32* %9, align 4, !dbg !1184
  %54 = zext i32 %53 to i64, !dbg !1184
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %51, i8* %52, i64 %54, i32 1, i1 false), !dbg !1182
  br label %55, !dbg !1182

; <label>:55:                                     ; preds = %50, %47
  %56 = getelementptr inbounds [16384 x i8], [16384 x i8]* %11, i32 0, i32 0, !dbg !1185
  store i8* %56, i8** %12, align 8, !dbg !1186
  %57 = load i32, i32* %9, align 4, !dbg !1187
  %58 = zext i32 %57 to i64, !dbg !1187
  %59 = sub i64 16384, %58, !dbg !1188
  %60 = trunc i64 %59 to i32, !dbg !1189
  %61 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 4, !dbg !1190
  store i32 %60, i32* %61, align 8, !dbg !1191
  %62 = getelementptr inbounds [16384 x i8], [16384 x i8]* %11, i32 0, i32 0, !dbg !1192
  %63 = load i32, i32* %9, align 4, !dbg !1193
  %64 = zext i32 %63 to i64, !dbg !1194
  %65 = getelementptr inbounds i8, i8* %62, i64 %64, !dbg !1194
  %66 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 3, !dbg !1195
  store i8* %65, i8** %66, align 8, !dbg !1196
  %67 = call i32 @inflate(%struct.z_stream_s* %10, i32 0), !dbg !1197
  store i32 %67, i32* %8, align 4, !dbg !1198
  %68 = load i32, i32* %8, align 4, !dbg !1199
  %69 = icmp ne i32 %68, 0, !dbg !1201
  br i1 %69, label %70, label %75, !dbg !1202

; <label>:70:                                     ; preds = %55
  %71 = load i32, i32* %8, align 4, !dbg !1203
  %72 = icmp ne i32 %71, 1, !dbg !1205
  br i1 %72, label %73, label %75, !dbg !1206

; <label>:73:                                     ; preds = %70
  %74 = call i32 @inflateEnd(%struct.z_stream_s* %10), !dbg !1207
  call void @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0)), !dbg !1209
  store i32 -22, i32* %4, align 4, !dbg !1210
  br label %371, !dbg !1210

; <label>:75:                                     ; preds = %70, %55
  %76 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 4, !dbg !1211
  %77 = load i32, i32* %76, align 8, !dbg !1211
  %78 = zext i32 %77 to i64, !dbg !1212
  %79 = sub i64 16384, %78, !dbg !1213
  %80 = trunc i64 %79 to i32, !dbg !1214
  store i32 %80, i32* %9, align 4, !dbg !1215
  %81 = load i32, i32* %16, align 4, !dbg !1216
  %82 = icmp eq i32 0, %81, !dbg !1218
  br i1 %82, label %83, label %84, !dbg !1219

; <label>:83:                                     ; preds = %75
  store i32 3, i32* %16, align 4, !dbg !1220
  br label %95, !dbg !1221

; <label>:84:                                     ; preds = %75
  %85 = load i32, i32* %16, align 4, !dbg !1222
  %86 = icmp eq i32 1, %85, !dbg !1224
  br i1 %86, label %87, label %88, !dbg !1225

; <label>:87:                                     ; preds = %84
  store i32 4, i32* %16, align 4, !dbg !1226
  br label %94, !dbg !1227

; <label>:88:                                     ; preds = %84
  %89 = load i32, i32* %16, align 4, !dbg !1228
  %90 = icmp eq i32 2, %89, !dbg !1230
  br i1 %90, label %91, label %92, !dbg !1231

; <label>:91:                                     ; preds = %88
  store i32 5, i32* %16, align 4, !dbg !1232
  br label %93, !dbg !1233

; <label>:92:                                     ; preds = %88
  store i32 6, i32* %16, align 4, !dbg !1234
  br label %93

; <label>:93:                                     ; preds = %92, %91
  br label %94

; <label>:94:                                     ; preds = %93, %87
  br label %95

; <label>:95:                                     ; preds = %94, %83
  br label %368, !dbg !1235

; <label>:96:                                     ; preds = %34
  %97 = load i32, i32* %9, align 4, !dbg !1236
  %98 = zext i32 %97 to i64, !dbg !1236
  %99 = icmp ult i64 %98, 30, !dbg !1238
  br i1 %99, label %100, label %101, !dbg !1239

; <label>:100:                                    ; preds = %96
  store i32 0, i32* %16, align 4, !dbg !1240
  br label %368, !dbg !1242

; <label>:101:                                    ; preds = %96
  %102 = bitcast %struct.npk_part_file_item_hdr* %15 to i8*, !dbg !1243
  %103 = load i8*, i8** %12, align 8, !dbg !1244
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %102, i8* %103, i64 30, i32 1, i1 false), !dbg !1243
  %104 = load %struct.options*, %struct.options** %7, align 8, !dbg !1245
  %105 = getelementptr inbounds %struct.options, %struct.options* %104, i32 0, i32 5, !dbg !1247
  %106 = load i32, i32* %105, align 8, !dbg !1247
  %107 = and i32 %106, 1, !dbg !1248
  %108 = icmp ne i32 %107, 0, !dbg !1248
  br i1 %108, label %109, label %165, !dbg !1249

; <label>:109:                                    ; preds = %101
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i32 0, i32 0)), !dbg !1250
  %111 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 0, !dbg !1252
  %112 = load i8, i8* %111, align 1, !dbg !1252
  %113 = zext i8 %112 to i32, !dbg !1253
  %114 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 0, !dbg !1254
  %115 = load i8, i8* %114, align 1, !dbg !1254
  %116 = zext i8 %115 to i32, !dbg !1255
  %117 = call i8* @type2name(%struct.map_entry* getelementptr inbounds ([4 x %struct.map_entry], [4 x %struct.map_entry]* @file_perms_names, i32 0, i32 0), i32 %116), !dbg !1256
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i32 0, i32 0), i32 %113, i8* %117), !dbg !1257
  %119 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 1, !dbg !1259
  %120 = load i8, i8* %119, align 1, !dbg !1259
  %121 = zext i8 %120 to i32, !dbg !1260
  %122 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 1, !dbg !1261
  %123 = load i8, i8* %122, align 1, !dbg !1261
  %124 = zext i8 %123 to i32, !dbg !1262
  %125 = call i8* @type2name(%struct.map_entry* getelementptr inbounds ([5 x %struct.map_entry], [5 x %struct.map_entry]* @file_types_names, i32 0, i32 0), i32 %124), !dbg !1263
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i32 0, i32 0), i32 %121, i8* %125), !dbg !1264
  %127 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 2, !dbg !1265
  %128 = getelementptr inbounds [6 x i8], [6 x i8]* %127, i32 0, i32 0, !dbg !1266
  %129 = call i8* @array2str(i8* %128, i32 6), !dbg !1267
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), i8* %129), !dbg !1268
  %131 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 3, !dbg !1269
  %132 = load i32, i32* %131, align 1, !dbg !1269
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), i32 %132), !dbg !1270
  %134 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 4, !dbg !1271
  %135 = load i8, i8* %134, align 1, !dbg !1271
  %136 = zext i8 %135 to i32, !dbg !1272
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), i32 %136), !dbg !1273
  %138 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 5, !dbg !1274
  %139 = getelementptr inbounds [1 x i8], [1 x i8]* %138, i32 0, i32 0, !dbg !1275
  %140 = call i8* @array2str(i8* %139, i32 1), !dbg !1276
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i32 0, i32 0), i8* %140), !dbg !1277
  %142 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 6, !dbg !1278
  %143 = load i8, i8* %142, align 1, !dbg !1278
  %144 = zext i8 %143 to i32, !dbg !1279
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), i32 %144), !dbg !1280
  %146 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 7, !dbg !1281
  %147 = load i8, i8* %146, align 1, !dbg !1281
  %148 = zext i8 %147 to i32, !dbg !1282
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), i32 %148), !dbg !1283
  %150 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 8, !dbg !1284
  %151 = getelementptr inbounds [4 x i8], [4 x i8]* %150, i32 0, i32 0, !dbg !1285
  %152 = call i8* @array2str(i8* %151, i32 4), !dbg !1286
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0), i8* %152), !dbg !1287
  %154 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 9, !dbg !1288
  %155 = getelementptr inbounds [4 x i8], [4 x i8]* %154, i32 0, i32 0, !dbg !1289
  %156 = call i8* @array2str(i8* %155, i32 4), !dbg !1290
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i32 0, i32 0), i8* %156), !dbg !1291
  %158 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 10, !dbg !1292
  %159 = load i32, i32* %158, align 1, !dbg !1292
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), i32 %159), !dbg !1293
  %161 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 11, !dbg !1294
  %162 = load i16, i16* %161, align 1, !dbg !1294
  %163 = zext i16 %162 to i32, !dbg !1295
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0), i32 %163), !dbg !1296
  br label %165, !dbg !1297

; <label>:165:                                    ; preds = %109, %101
  %166 = load i8*, i8** %12, align 8, !dbg !1298
  %167 = getelementptr inbounds i8, i8* %166, i64 30, !dbg !1298
  store i8* %167, i8** %12, align 8, !dbg !1298
  %168 = load i32, i32* %9, align 4, !dbg !1299
  %169 = zext i32 %168 to i64, !dbg !1299
  %170 = sub i64 %169, 30, !dbg !1299
  %171 = trunc i64 %170 to i32, !dbg !1299
  store i32 %171, i32* %9, align 4, !dbg !1299
  store i32 4, i32* %16, align 4, !dbg !1300
  br label %368, !dbg !1301

; <label>:172:                                    ; preds = %34
  %173 = load i32, i32* %9, align 4, !dbg !1302
  %174 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 11, !dbg !1304
  %175 = load i16, i16* %174, align 1, !dbg !1304
  %176 = zext i16 %175 to i32, !dbg !1305
  %177 = icmp ult i32 %173, %176, !dbg !1306
  br i1 %177, label %178, label %179, !dbg !1307

; <label>:178:                                    ; preds = %172
  store i32 1, i32* %16, align 4, !dbg !1308
  br label %368, !dbg !1310

; <label>:179:                                    ; preds = %172
  %180 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 11, !dbg !1311
  %181 = load i16, i16* %180, align 1, !dbg !1311
  %182 = zext i16 %181 to i32, !dbg !1312
  %183 = load i32, i32* %9, align 4, !dbg !1313
  %184 = sub i32 %183, %182, !dbg !1313
  store i32 %184, i32* %9, align 4, !dbg !1313
  store i32 5, i32* %16, align 4, !dbg !1314
  %185 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 11, !dbg !1315
  %186 = load i16, i16* %185, align 1, !dbg !1315
  %187 = zext i16 %186 to i32, !dbg !1316
  %188 = add nsw i32 %187, 1, !dbg !1317
  %189 = sext i32 %188 to i64, !dbg !1316
  %190 = call noalias i8* @malloc(i64 %189) #7, !dbg !1318
  store i8* %190, i8** %13, align 8, !dbg !1319
  %191 = load i8*, i8** %13, align 8, !dbg !1320
  %192 = icmp eq i8* null, %191, !dbg !1322
  br i1 %192, label %193, label %200, !dbg !1323

; <label>:193:                                    ; preds = %179
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0)), !dbg !1324
  %194 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 11, !dbg !1326
  %195 = load i16, i16* %194, align 1, !dbg !1326
  %196 = zext i16 %195 to i32, !dbg !1327
  %197 = load i8*, i8** %12, align 8, !dbg !1328
  %198 = sext i32 %196 to i64, !dbg !1328
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !1328
  store i8* %199, i8** %12, align 8, !dbg !1328
  br label %368, !dbg !1329

; <label>:200:                                    ; preds = %179
  %201 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 11, !dbg !1330
  %202 = load i16, i16* %201, align 1, !dbg !1330
  %203 = zext i16 %202 to i64, !dbg !1331
  %204 = load i8*, i8** %13, align 8, !dbg !1331
  %205 = getelementptr inbounds i8, i8* %204, i64 %203, !dbg !1331
  store i8 0, i8* %205, align 1, !dbg !1332
  %206 = load i8*, i8** %13, align 8, !dbg !1333
  %207 = load i8*, i8** %12, align 8, !dbg !1334
  %208 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 11, !dbg !1335
  %209 = load i16, i16* %208, align 1, !dbg !1335
  %210 = zext i16 %209 to i64, !dbg !1336
  %211 = call i8* @strncpy(i8* %206, i8* %207, i64 %210) #7, !dbg !1337
  %212 = load %struct.options*, %struct.options** %7, align 8, !dbg !1338
  %213 = getelementptr inbounds %struct.options, %struct.options* %212, i32 0, i32 5, !dbg !1340
  %214 = load i32, i32* %213, align 8, !dbg !1340
  %215 = and i32 %214, 1, !dbg !1341
  %216 = icmp ne i32 %215, 0, !dbg !1341
  br i1 %216, label %217, label %220, !dbg !1342

; <label>:217:                                    ; preds = %200
  %218 = load i8*, i8** %13, align 8, !dbg !1343
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i32 0, i32 0), i8* %218), !dbg !1345
  br label %250, !dbg !1346

; <label>:220:                                    ; preds = %200
  %221 = load %struct.options*, %struct.options** %7, align 8, !dbg !1347
  %222 = getelementptr inbounds %struct.options, %struct.options* %221, i32 0, i32 5, !dbg !1350
  %223 = load i32, i32* %222, align 8, !dbg !1350
  %224 = and i32 %223, 2, !dbg !1351
  %225 = icmp ne i32 %224, 0, !dbg !1351
  br i1 %225, label %226, label %249, !dbg !1347

; <label>:226:                                    ; preds = %220
  %227 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 1, !dbg !1352
  %228 = load i8, i8* %227, align 1, !dbg !1352
  %229 = zext i8 %228 to i32, !dbg !1355
  %230 = icmp eq i32 65, %229, !dbg !1356
  br i1 %230, label %231, label %245, !dbg !1357

; <label>:231:                                    ; preds = %226
  %232 = load i8*, i8** %13, align 8, !dbg !1358
  %233 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 11, !dbg !1359
  %234 = load i16, i16* %233, align 1, !dbg !1359
  %235 = zext i16 %234 to i32, !dbg !1360
  %236 = sub nsw i32 %235, 1, !dbg !1361
  %237 = sext i32 %236 to i64, !dbg !1362
  %238 = load i8*, i8** %13, align 8, !dbg !1362
  %239 = getelementptr inbounds i8, i8* %238, i64 %237, !dbg !1362
  %240 = load i8, i8* %239, align 1, !dbg !1362
  %241 = sext i8 %240 to i32, !dbg !1362
  %242 = icmp ne i32 %241, 47, !dbg !1363
  %243 = select i1 %242, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.65, i32 0, i32 0), !dbg !1362
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i8* %232, i8* %243), !dbg !1364
  br label %248, !dbg !1364

; <label>:245:                                    ; preds = %226
  %246 = load i8*, i8** %13, align 8, !dbg !1365
  %247 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0), i8* %246), !dbg !1366
  br label %248

; <label>:248:                                    ; preds = %245, %231
  br label %249, !dbg !1367

; <label>:249:                                    ; preds = %248, %220
  br label %250

; <label>:250:                                    ; preds = %249, %217
  %251 = load %struct.options*, %struct.options** %7, align 8, !dbg !1368
  %252 = getelementptr inbounds %struct.options, %struct.options* %251, i32 0, i32 3, !dbg !1370
  %253 = load i32, i32* %252, align 8, !dbg !1370
  %254 = icmp eq i32 %253, 3, !dbg !1371
  br i1 %254, label %255, label %293, !dbg !1372

; <label>:255:                                    ; preds = %250
  %256 = load i8*, i8** %12, align 8, !dbg !1373
  %257 = load i8, i8* %256, align 1, !dbg !1376
  %258 = sext i8 %257 to i32, !dbg !1376
  %259 = icmp eq i32 %258, 47, !dbg !1377
  br i1 %259, label %260, label %263, !dbg !1378

; <label>:260:                                    ; preds = %255
  %261 = load i8*, i8** %13, align 8, !dbg !1379
  %262 = getelementptr inbounds i8, i8* %261, i32 1, !dbg !1379
  store i8* %262, i8** %13, align 8, !dbg !1379
  br label %263, !dbg !1379

; <label>:263:                                    ; preds = %260, %255
  %264 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 1, !dbg !1380
  %265 = load i8, i8* %264, align 1, !dbg !1380
  %266 = zext i8 %265 to i32, !dbg !1382
  %267 = icmp eq i32 65, %266, !dbg !1383
  br i1 %267, label %268, label %270, !dbg !1384

; <label>:268:                                    ; preds = %263
  %269 = load i8*, i8** %13, align 8, !dbg !1385
  call void @create_path(i8* %269), !dbg !1387
  br label %284, !dbg !1388

; <label>:270:                                    ; preds = %263
  %271 = load i8*, i8** %13, align 8, !dbg !1389
  call void @create_file_path(i8* %271), !dbg !1391
  %272 = load i8*, i8** %13, align 8, !dbg !1392
  %273 = call %struct._IO_FILE* @fopen(i8* %272, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0)), !dbg !1393
  store %struct._IO_FILE* %273, %struct._IO_FILE** %14, align 8, !dbg !1394
  %274 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !1395
  %275 = icmp eq %struct._IO_FILE* null, %274, !dbg !1397
  br i1 %275, label %276, label %283, !dbg !1398

; <label>:276:                                    ; preds = %270
  %277 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1399
  %278 = load i8*, i8** %13, align 8, !dbg !1401
  %279 = call i32* @__errno_location() #1, !dbg !1402
  %280 = load i32, i32* %279, align 4, !dbg !1403
  %281 = call i8* @strerror(i32 %280) #7, !dbg !1404
  %282 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %277, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* %278, i8* %281), !dbg !1406
  store i32 -1, i32* %4, align 4, !dbg !1408
  br label %371, !dbg !1408

; <label>:283:                                    ; preds = %270
  br label %284

; <label>:284:                                    ; preds = %283, %268
  %285 = load i8*, i8** %12, align 8, !dbg !1409
  %286 = load i8, i8* %285, align 1, !dbg !1411
  %287 = sext i8 %286 to i32, !dbg !1411
  %288 = icmp eq i32 %287, 47, !dbg !1412
  br i1 %288, label %289, label %292, !dbg !1413

; <label>:289:                                    ; preds = %284
  %290 = load i8*, i8** %13, align 8, !dbg !1414
  %291 = getelementptr inbounds i8, i8* %290, i32 -1, !dbg !1414
  store i8* %291, i8** %13, align 8, !dbg !1414
  br label %292, !dbg !1414

; <label>:292:                                    ; preds = %289, %284
  br label %293, !dbg !1415

; <label>:293:                                    ; preds = %292, %250
  %294 = load i8*, i8** %13, align 8, !dbg !1416
  call void @free(i8* %294) #7, !dbg !1417
  %295 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 11, !dbg !1418
  %296 = load i16, i16* %295, align 1, !dbg !1418
  %297 = zext i16 %296 to i32, !dbg !1419
  %298 = load i8*, i8** %12, align 8, !dbg !1420
  %299 = sext i32 %297 to i64, !dbg !1420
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !1420
  store i8* %300, i8** %12, align 8, !dbg !1420
  br label %368, !dbg !1421

; <label>:301:                                    ; preds = %34
  %302 = load i32, i32* %9, align 4, !dbg !1422
  %303 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 10, !dbg !1424
  %304 = load i32, i32* %303, align 1, !dbg !1424
  %305 = icmp uge i32 %302, %304, !dbg !1425
  br i1 %305, label %306, label %339, !dbg !1426

; <label>:306:                                    ; preds = %301
  %307 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !1427
  %308 = icmp ne %struct._IO_FILE* %307, null, !dbg !1430
  br i1 %308, label %309, label %329, !dbg !1431

; <label>:309:                                    ; preds = %306
  %310 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 10, !dbg !1432
  %311 = load i32, i32* %310, align 1, !dbg !1432
  %312 = icmp ne i32 %311, 0, !dbg !1435
  br i1 %312, label %313, label %326, !dbg !1436

; <label>:313:                                    ; preds = %309
  %314 = load i8*, i8** %12, align 8, !dbg !1437
  %315 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 10, !dbg !1439
  %316 = load i32, i32* %315, align 1, !dbg !1439
  %317 = zext i32 %316 to i64, !dbg !1440
  %318 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !1441
  %319 = call i64 @fwrite(i8* %314, i64 %317, i64 1, %struct._IO_FILE* %318), !dbg !1442
  %320 = icmp ne i64 1, %319, !dbg !1443
  br i1 %320, label %321, label %326, !dbg !1444

; <label>:321:                                    ; preds = %313
  %322 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !1445
  %323 = call i32 @fclose(%struct._IO_FILE* %322), !dbg !1447
  %324 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1448
  %325 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %324, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.68, i32 0, i32 0)), !dbg !1449
  store i32 -5, i32* %4, align 4, !dbg !1450
  br label %371, !dbg !1450

; <label>:326:                                    ; preds = %313, %309
  %327 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !1451
  %328 = call i32 @fclose(%struct._IO_FILE* %327), !dbg !1452
  store %struct._IO_FILE* null, %struct._IO_FILE** %14, align 8, !dbg !1453
  br label %329, !dbg !1454

; <label>:329:                                    ; preds = %326, %306
  %330 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 10, !dbg !1455
  %331 = load i32, i32* %330, align 1, !dbg !1455
  %332 = load i32, i32* %9, align 4, !dbg !1456
  %333 = sub i32 %332, %331, !dbg !1456
  store i32 %333, i32* %9, align 4, !dbg !1456
  %334 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 10, !dbg !1457
  %335 = load i32, i32* %334, align 1, !dbg !1457
  %336 = load i8*, i8** %12, align 8, !dbg !1458
  %337 = zext i32 %335 to i64, !dbg !1458
  %338 = getelementptr inbounds i8, i8* %336, i64 %337, !dbg !1458
  store i8* %338, i8** %12, align 8, !dbg !1458
  store i32 3, i32* %16, align 4, !dbg !1459
  br label %364, !dbg !1460

; <label>:339:                                    ; preds = %301
  %340 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !1461
  %341 = icmp ne %struct._IO_FILE* %340, null, !dbg !1464
  br i1 %341, label %342, label %355, !dbg !1465

; <label>:342:                                    ; preds = %339
  %343 = load i8*, i8** %12, align 8, !dbg !1466
  %344 = load i32, i32* %9, align 4, !dbg !1469
  %345 = zext i32 %344 to i64, !dbg !1469
  %346 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !1470
  %347 = call i64 @fwrite(i8* %343, i64 %345, i64 1, %struct._IO_FILE* %346), !dbg !1471
  %348 = icmp ne i64 1, %347, !dbg !1472
  br i1 %348, label %349, label %354, !dbg !1473

; <label>:349:                                    ; preds = %342
  %350 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !1474
  %351 = call i32 @fclose(%struct._IO_FILE* %350), !dbg !1476
  %352 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1477
  %353 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %352, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.68, i32 0, i32 0)), !dbg !1478
  store i32 -5, i32* %4, align 4, !dbg !1479
  br label %371, !dbg !1479

; <label>:354:                                    ; preds = %342
  br label %355, !dbg !1480

; <label>:355:                                    ; preds = %354, %339
  %356 = load i32, i32* %9, align 4, !dbg !1481
  %357 = getelementptr inbounds %struct.npk_part_file_item_hdr, %struct.npk_part_file_item_hdr* %15, i32 0, i32 10, !dbg !1482
  %358 = load i32, i32* %357, align 1, !dbg !1483
  %359 = sub i32 %358, %356, !dbg !1483
  store i32 %359, i32* %357, align 1, !dbg !1483
  %360 = load i32, i32* %9, align 4, !dbg !1484
  %361 = load i8*, i8** %12, align 8, !dbg !1485
  %362 = zext i32 %360 to i64, !dbg !1485
  %363 = getelementptr inbounds i8, i8* %361, i64 %362, !dbg !1485
  store i8* %363, i8** %12, align 8, !dbg !1485
  store i32 0, i32* %9, align 4, !dbg !1486
  store i32 2, i32* %16, align 4, !dbg !1487
  br label %364

; <label>:364:                                    ; preds = %355, %329
  br label %368, !dbg !1488

; <label>:365:                                    ; preds = %34
  %366 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1489
  %367 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %366, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.69, i32 0, i32 0)), !dbg !1490
  br label %368, !dbg !1491

; <label>:368:                                    ; preds = %34, %365, %364, %293, %193, %178, %165, %100, %95, %46
  br label %31, !dbg !1492, !llvm.loop !1494

; <label>:369:                                    ; preds = %31
  %370 = call i32 @inflateEnd(%struct.z_stream_s* %10), !dbg !1495
  store i32 0, i32* %4, align 4, !dbg !1496
  br label %371, !dbg !1496

; <label>:371:                                    ; preds = %369, %349, %321, %276, %73, %25
  %372 = load i32, i32* %4, align 4, !dbg !1497
  ret i32 %372, !dbg !1497
}

; Function Attrs: nounwind uwtable
define internal i32 @proc_part_data_pkg_arch(i8*, i32, %struct.options*) #0 !dbg !1498 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.options*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1499, metadata !117), !dbg !1500
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1501, metadata !117), !dbg !1502
  store %struct.options* %2, %struct.options** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.options** %7, metadata !1503, metadata !117), !dbg !1504
  %8 = load %struct.options*, %struct.options** %7, align 8, !dbg !1505
  %9 = getelementptr inbounds %struct.options, %struct.options* %8, i32 0, i32 5, !dbg !1507
  %10 = load i32, i32* %9, align 8, !dbg !1507
  %11 = and i32 %10, 1, !dbg !1508
  %12 = icmp eq i32 %11, 0, !dbg !1509
  br i1 %12, label %13, label %14, !dbg !1510

; <label>:13:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !1511
  br label %18, !dbg !1511

; <label>:14:                                     ; preds = %3
  %15 = load i32, i32* %6, align 4, !dbg !1512
  %16 = load i8*, i8** %5, align 8, !dbg !1513
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i32 0, i32 0), i32 %15, i8* %16), !dbg !1514
  store i32 0, i32* %4, align 4, !dbg !1515
  br label %18, !dbg !1515

; <label>:18:                                     ; preds = %14, %13
  %19 = load i32, i32* %4, align 4, !dbg !1516
  ret i32 %19, !dbg !1516
}

; Function Attrs: nounwind uwtable
define internal i32 @proc_part_data_pkg_info(i8*, i32, %struct.options*) #0 !dbg !1517 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.options*, align 8
  %8 = alloca %struct.npk_part_pkg_info_hdr*, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.tm, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1518, metadata !117), !dbg !1519
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1520, metadata !117), !dbg !1521
  store %struct.options* %2, %struct.options** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.options** %7, metadata !1522, metadata !117), !dbg !1523
  call void @llvm.dbg.declare(metadata %struct.npk_part_pkg_info_hdr** %8, metadata !1524, metadata !117), !dbg !1541
  %12 = load i8*, i8** %5, align 8, !dbg !1542
  %13 = bitcast i8* %12 to %struct.npk_part_pkg_info_hdr*, !dbg !1543
  store %struct.npk_part_pkg_info_hdr* %13, %struct.npk_part_pkg_info_hdr** %8, align 8, !dbg !1541
  call void @llvm.dbg.declare(metadata [128 x i8]* %9, metadata !1544, metadata !117), !dbg !1548
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1549, metadata !117), !dbg !1550
  call void @llvm.dbg.declare(metadata %struct.tm* %11, metadata !1551, metadata !117), !dbg !1565
  %14 = load %struct.npk_part_pkg_info_hdr*, %struct.npk_part_pkg_info_hdr** %8, align 8, !dbg !1566
  %15 = getelementptr inbounds %struct.npk_part_pkg_info_hdr, %struct.npk_part_pkg_info_hdr* %14, i32 0, i32 0, !dbg !1567
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i32 0, i32 0, !dbg !1566
  %17 = call i64 @strnlen(i8* %16, i64 16) #8, !dbg !1568
  %18 = add i64 %17, 1, !dbg !1569
  %19 = trunc i64 %18 to i32, !dbg !1568
  store i32 %19, i32* %10, align 4, !dbg !1570
  %20 = load i8*, i8** @pkg_name, align 8, !dbg !1571
  %21 = load i32, i32* %10, align 4, !dbg !1572
  %22 = zext i32 %21 to i64, !dbg !1572
  %23 = call i8* @realloc(i8* %20, i64 %22) #7, !dbg !1573
  store i8* %23, i8** @pkg_name, align 8, !dbg !1574
  %24 = load i8*, i8** @pkg_name, align 8, !dbg !1575
  %25 = icmp ne i8* %24, null, !dbg !1575
  br i1 %25, label %27, label %26, !dbg !1577

; <label>:26:                                     ; preds = %3
  call void @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0)), !dbg !1578
  store i32 -12, i32* %4, align 4, !dbg !1580
  br label %99, !dbg !1580

; <label>:27:                                     ; preds = %3
  %28 = load i8*, i8** @pkg_name, align 8, !dbg !1581
  %29 = load %struct.npk_part_pkg_info_hdr*, %struct.npk_part_pkg_info_hdr** %8, align 8, !dbg !1582
  %30 = getelementptr inbounds %struct.npk_part_pkg_info_hdr, %struct.npk_part_pkg_info_hdr* %29, i32 0, i32 0, !dbg !1583
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %30, i32 0, i32 0, !dbg !1584
  %32 = load i32, i32* %10, align 4, !dbg !1585
  %33 = sub i32 %32, 1, !dbg !1586
  %34 = zext i32 %33 to i64, !dbg !1585
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %31, i64 %34, i32 1, i1 false), !dbg !1584
  %35 = load i32, i32* %10, align 4, !dbg !1587
  %36 = sub i32 %35, 1, !dbg !1588
  %37 = zext i32 %36 to i64, !dbg !1589
  %38 = load i8*, i8** @pkg_name, align 8, !dbg !1589
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !1589
  store i8 0, i8* %39, align 1, !dbg !1590
  %40 = load %struct.options*, %struct.options** %7, align 8, !dbg !1591
  %41 = getelementptr inbounds %struct.options, %struct.options* %40, i32 0, i32 5, !dbg !1593
  %42 = load i32, i32* %41, align 8, !dbg !1593
  %43 = and i32 %42, 1, !dbg !1594
  %44 = icmp eq i32 %43, 0, !dbg !1595
  br i1 %44, label %45, label %46, !dbg !1596

; <label>:45:                                     ; preds = %27
  store i32 0, i32* %4, align 4, !dbg !1597
  br label %99, !dbg !1597

; <label>:46:                                     ; preds = %27
  %47 = load i8*, i8** @pkg_name, align 8, !dbg !1598
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.78, i32 0, i32 0), i8* %47), !dbg !1599
  %49 = load %struct.npk_part_pkg_info_hdr*, %struct.npk_part_pkg_info_hdr** %8, align 8, !dbg !1600
  %50 = getelementptr inbounds %struct.npk_part_pkg_info_hdr, %struct.npk_part_pkg_info_hdr* %49, i32 0, i32 2, !dbg !1601
  %51 = getelementptr inbounds [1 x i8], [1 x i8]* %50, i32 0, i32 0, !dbg !1600
  %52 = call i8* @array2str(i8* %51, i32 1), !dbg !1602
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i32 0, i32 0), i8* %52), !dbg !1603
  %54 = load %struct.npk_part_pkg_info_hdr*, %struct.npk_part_pkg_info_hdr** %8, align 8, !dbg !1605
  %55 = getelementptr inbounds %struct.npk_part_pkg_info_hdr, %struct.npk_part_pkg_info_hdr* %54, i32 0, i32 1, !dbg !1607
  %56 = load i8, i8* %55, align 1, !dbg !1607
  %57 = icmp ne i8 %56, 0, !dbg !1605
  br i1 %57, label %58, label %72, !dbg !1608

; <label>:58:                                     ; preds = %46
  %59 = load %struct.npk_part_pkg_info_hdr*, %struct.npk_part_pkg_info_hdr** %8, align 8, !dbg !1609
  %60 = getelementptr inbounds %struct.npk_part_pkg_info_hdr, %struct.npk_part_pkg_info_hdr* %59, i32 0, i32 4, !dbg !1610
  %61 = load i8, i8* %60, align 1, !dbg !1610
  %62 = zext i8 %61 to i32, !dbg !1609
  %63 = load %struct.npk_part_pkg_info_hdr*, %struct.npk_part_pkg_info_hdr** %8, align 8, !dbg !1611
  %64 = getelementptr inbounds %struct.npk_part_pkg_info_hdr, %struct.npk_part_pkg_info_hdr* %63, i32 0, i32 3, !dbg !1612
  %65 = load i8, i8* %64, align 1, !dbg !1612
  %66 = zext i8 %65 to i32, !dbg !1611
  %67 = load %struct.npk_part_pkg_info_hdr*, %struct.npk_part_pkg_info_hdr** %8, align 8, !dbg !1613
  %68 = getelementptr inbounds %struct.npk_part_pkg_info_hdr, %struct.npk_part_pkg_info_hdr* %67, i32 0, i32 1, !dbg !1614
  %69 = load i8, i8* %68, align 1, !dbg !1614
  %70 = zext i8 %69 to i32, !dbg !1613
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.80, i32 0, i32 0), i32 %62, i32 %66, i32 %70), !dbg !1615
  br label %82, !dbg !1615

; <label>:72:                                     ; preds = %46
  %73 = load %struct.npk_part_pkg_info_hdr*, %struct.npk_part_pkg_info_hdr** %8, align 8, !dbg !1616
  %74 = getelementptr inbounds %struct.npk_part_pkg_info_hdr, %struct.npk_part_pkg_info_hdr* %73, i32 0, i32 4, !dbg !1617
  %75 = load i8, i8* %74, align 1, !dbg !1617
  %76 = zext i8 %75 to i32, !dbg !1616
  %77 = load %struct.npk_part_pkg_info_hdr*, %struct.npk_part_pkg_info_hdr** %8, align 8, !dbg !1618
  %78 = getelementptr inbounds %struct.npk_part_pkg_info_hdr, %struct.npk_part_pkg_info_hdr* %77, i32 0, i32 3, !dbg !1619
  %79 = load i8, i8* %78, align 1, !dbg !1619
  %80 = zext i8 %79 to i32, !dbg !1618
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.81, i32 0, i32 0), i32 %76, i32 %80), !dbg !1620
  br label %82

; <label>:82:                                     ; preds = %72, %58
  %83 = load %struct.npk_part_pkg_info_hdr*, %struct.npk_part_pkg_info_hdr** %8, align 8, !dbg !1621
  %84 = getelementptr inbounds %struct.npk_part_pkg_info_hdr, %struct.npk_part_pkg_info_hdr* %83, i32 0, i32 5, !dbg !1622
  %85 = bitcast i32* %84 to i64*, !dbg !1623
  %86 = call %struct.tm* @gmtime_r(i64* %85, %struct.tm* %11) #7, !dbg !1624
  %87 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i32 0, i32 0, !dbg !1625
  %88 = call i64 @strftime(i8* %87, i64 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i32 0, i32 0), %struct.tm* %11) #7, !dbg !1626
  %89 = load %struct.npk_part_pkg_info_hdr*, %struct.npk_part_pkg_info_hdr** %8, align 8, !dbg !1627
  %90 = getelementptr inbounds %struct.npk_part_pkg_info_hdr, %struct.npk_part_pkg_info_hdr* %89, i32 0, i32 5, !dbg !1628
  %91 = load i32, i32* %90, align 1, !dbg !1628
  %92 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i32 0, i32 0, !dbg !1629
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.83, i32 0, i32 0), i32 %91, i8* %92), !dbg !1630
  %94 = load %struct.npk_part_pkg_info_hdr*, %struct.npk_part_pkg_info_hdr** %8, align 8, !dbg !1631
  %95 = getelementptr inbounds %struct.npk_part_pkg_info_hdr, %struct.npk_part_pkg_info_hdr* %94, i32 0, i32 6, !dbg !1632
  %96 = getelementptr inbounds [8 x i8], [8 x i8]* %95, i32 0, i32 0, !dbg !1631
  %97 = call i8* @array2str(i8* %96, i32 8), !dbg !1633
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i32 0, i32 0), i8* %97), !dbg !1634
  store i32 0, i32* %4, align 4, !dbg !1635
  br label %99, !dbg !1635

; <label>:99:                                     ; preds = %82, %45, %26
  %100 = load i32, i32* %4, align 4, !dbg !1636
  ret i32 %100, !dbg !1636
}

; Function Attrs: nounwind uwtable
define internal i32 @proc_part_data_squashfs(i8*, i32, %struct.options*) #0 !dbg !1637 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.options*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1638, metadata !117), !dbg !1639
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1640, metadata !117), !dbg !1641
  store %struct.options* %2, %struct.options** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.options** %7, metadata !1642, metadata !117), !dbg !1643
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1644, metadata !117), !dbg !1645
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1646, metadata !117), !dbg !1647
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %10, metadata !1648, metadata !117), !dbg !1649
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1650, metadata !117), !dbg !1651
  %12 = load %struct.options*, %struct.options** %7, align 8, !dbg !1652
  %13 = getelementptr inbounds %struct.options, %struct.options* %12, i32 0, i32 5, !dbg !1654
  %14 = load i32, i32* %13, align 8, !dbg !1654
  %15 = and i32 %14, 1, !dbg !1655
  %16 = icmp ne i32 %15, 0, !dbg !1655
  br i1 %16, label %17, label %18, !dbg !1656

; <label>:17:                                     ; preds = %3
  br label %28, !dbg !1657

; <label>:18:                                     ; preds = %3
  %19 = load %struct.options*, %struct.options** %7, align 8, !dbg !1659
  %20 = getelementptr inbounds %struct.options, %struct.options* %19, i32 0, i32 5, !dbg !1662
  %21 = load i32, i32* %20, align 8, !dbg !1662
  %22 = and i32 %21, 2, !dbg !1663
  %23 = icmp ne i32 %22, 0, !dbg !1663
  br i1 %23, label %24, label %27, !dbg !1659

; <label>:24:                                     ; preds = %18
  %25 = load i8*, i8** @pkg_name, align 8, !dbg !1664
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.84, i32 0, i32 0), i8* %25), !dbg !1666
  br label %27, !dbg !1667

; <label>:27:                                     ; preds = %24, %18
  br label %28

; <label>:28:                                     ; preds = %27, %17
  %29 = load %struct.options*, %struct.options** %7, align 8, !dbg !1668
  %30 = getelementptr inbounds %struct.options, %struct.options* %29, i32 0, i32 3, !dbg !1670
  %31 = load i32, i32* %30, align 8, !dbg !1670
  %32 = icmp ne i32 3, %31, !dbg !1671
  br i1 %32, label %33, label %34, !dbg !1672

; <label>:33:                                     ; preds = %28
  store i32 0, i32* %4, align 4, !dbg !1673
  br label %90, !dbg !1673

; <label>:34:                                     ; preds = %28
  %35 = load i8*, i8** @pkg_name, align 8, !dbg !1674
  %36 = call i64 @strlen(i8* %35) #8, !dbg !1675
  %37 = add i64 %36, 10, !dbg !1676
  store i64 %37, i64* %9, align 8, !dbg !1677
  %38 = load i64, i64* %9, align 8, !dbg !1678
  %39 = call noalias i8* @malloc(i64 %38) #7, !dbg !1679
  store i8* %39, i8** %8, align 8, !dbg !1680
  %40 = load i8*, i8** %8, align 8, !dbg !1681
  %41 = icmp ne i8* %40, null, !dbg !1681
  br i1 %41, label %43, label %42, !dbg !1683

; <label>:42:                                     ; preds = %34
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0)), !dbg !1684
  store i32 -12, i32* %4, align 4, !dbg !1686
  br label %90, !dbg !1686

; <label>:43:                                     ; preds = %34
  %44 = load i8*, i8** %8, align 8, !dbg !1687
  %45 = load i64, i64* %9, align 8, !dbg !1688
  %46 = load i8*, i8** @pkg_name, align 8, !dbg !1689
  %47 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %44, i64 %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.85, i32 0, i32 0), i8* %46) #7, !dbg !1690
  %48 = load i8*, i8** %8, align 8, !dbg !1691
  %49 = call %struct._IO_FILE* @fopen(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0)), !dbg !1692
  store %struct._IO_FILE* %49, %struct._IO_FILE** %10, align 8, !dbg !1693
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !1694
  %51 = icmp ne %struct._IO_FILE* %50, null, !dbg !1694
  br i1 %51, label %63, label %52, !dbg !1696

; <label>:52:                                     ; preds = %43
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1697
  %54 = load i8*, i8** %8, align 8, !dbg !1699
  %55 = call i32* @__errno_location() #1, !dbg !1700
  %56 = load i32, i32* %55, align 4, !dbg !1701
  %57 = call i8* @strerror(i32 %56) #7, !dbg !1702
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.86, i32 0, i32 0), i8* %54, i8* %57), !dbg !1704
  %59 = load i8*, i8** %8, align 8, !dbg !1705
  call void @free(i8* %59) #7, !dbg !1706
  %60 = call i32* @__errno_location() #1, !dbg !1707
  %61 = load i32, i32* %60, align 4, !dbg !1708
  %62 = sub nsw i32 0, %61, !dbg !1709
  store i32 %62, i32* %4, align 4, !dbg !1710
  br label %90, !dbg !1710

; <label>:63:                                     ; preds = %43
  %64 = load i8*, i8** %5, align 8, !dbg !1711
  %65 = load i32, i32* %6, align 4, !dbg !1712
  %66 = zext i32 %65 to i64, !dbg !1712
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !1713
  %68 = call i64 @fwrite(i8* %64, i64 1, i64 %66, %struct._IO_FILE* %67), !dbg !1714
  store i64 %68, i64* %11, align 8, !dbg !1715
  %69 = load i64, i64* %11, align 8, !dbg !1716
  %70 = load i32, i32* %6, align 4, !dbg !1718
  %71 = zext i32 %70 to i64, !dbg !1718
  %72 = icmp ne i64 %69, %71, !dbg !1719
  br i1 %72, label %73, label %86, !dbg !1720

; <label>:73:                                     ; preds = %63
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1721
  %75 = load i8*, i8** %8, align 8, !dbg !1723
  %76 = call i32* @__errno_location() #1, !dbg !1724
  %77 = load i32, i32* %76, align 4, !dbg !1725
  %78 = call i8* @strerror(i32 %77) #7, !dbg !1726
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.87, i32 0, i32 0), i8* %75, i8* %78), !dbg !1728
  %80 = load i8*, i8** %8, align 8, !dbg !1729
  call void @free(i8* %80) #7, !dbg !1730
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !1731
  %82 = call i32 @fclose(%struct._IO_FILE* %81), !dbg !1732
  %83 = call i32* @__errno_location() #1, !dbg !1733
  %84 = load i32, i32* %83, align 4, !dbg !1734
  %85 = sub nsw i32 0, %84, !dbg !1735
  store i32 %85, i32* %4, align 4, !dbg !1736
  br label %90, !dbg !1736

; <label>:86:                                     ; preds = %63
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !1737
  %88 = call i32 @fclose(%struct._IO_FILE* %87), !dbg !1738
  %89 = load i8*, i8** %8, align 8, !dbg !1739
  call void @free(i8* %89) #7, !dbg !1740
  store i32 0, i32* %4, align 4, !dbg !1741
  br label %90, !dbg !1741

; <label>:90:                                     ; preds = %86, %73, %52, %42, %33
  %91 = load i32, i32* %4, align 4, !dbg !1742
  ret i32 %91, !dbg !1742
}

; Function Attrs: nounwind uwtable
define internal i32 @proc_part_data_digest(i8*, i32, %struct.options*) #0 !dbg !1743 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.options*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1744, metadata !117), !dbg !1745
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1746, metadata !117), !dbg !1747
  store %struct.options* %2, %struct.options** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.options** %7, metadata !1748, metadata !117), !dbg !1749
  %8 = load %struct.options*, %struct.options** %7, align 8, !dbg !1750
  %9 = getelementptr inbounds %struct.options, %struct.options* %8, i32 0, i32 5, !dbg !1752
  %10 = load i32, i32* %9, align 8, !dbg !1752
  %11 = and i32 %10, 1, !dbg !1753
  %12 = icmp eq i32 %11, 0, !dbg !1754
  br i1 %12, label %13, label %14, !dbg !1755

; <label>:13:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !1756
  br label %18, !dbg !1756

; <label>:14:                                     ; preds = %3
  %15 = load i32, i32* %6, align 4, !dbg !1757
  %16 = load i8*, i8** %5, align 8, !dbg !1758
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.88, i32 0, i32 0), i32 %15, i8* %16), !dbg !1759
  store i32 0, i32* %4, align 4, !dbg !1760
  br label %18, !dbg !1760

; <label>:18:                                     ; preds = %14, %13
  %19 = load i32, i32* %4, align 4, !dbg !1761
  ret i32 %19, !dbg !1761
}

; Function Attrs: nounwind uwtable
define internal i32 @proc_part_data_reltype(i8*, i32, %struct.options*) #0 !dbg !1762 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.options*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1763, metadata !117), !dbg !1764
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1765, metadata !117), !dbg !1766
  store %struct.options* %2, %struct.options** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.options** %7, metadata !1767, metadata !117), !dbg !1768
  %8 = load %struct.options*, %struct.options** %7, align 8, !dbg !1769
  %9 = getelementptr inbounds %struct.options, %struct.options* %8, i32 0, i32 5, !dbg !1771
  %10 = load i32, i32* %9, align 8, !dbg !1771
  %11 = and i32 %10, 1, !dbg !1772
  %12 = icmp eq i32 %11, 0, !dbg !1773
  br i1 %12, label %13, label %14, !dbg !1774

; <label>:13:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !1775
  br label %18, !dbg !1775

; <label>:14:                                     ; preds = %3
  %15 = load i32, i32* %6, align 4, !dbg !1776
  %16 = load i8*, i8** %5, align 8, !dbg !1777
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.89, i32 0, i32 0), i32 %15, i8* %16), !dbg !1778
  store i32 0, i32* %4, align 4, !dbg !1779
  br label %18, !dbg !1779

; <label>:18:                                     ; preds = %14, %13
  %19 = load i32, i32* %4, align 4, !dbg !1780
  ret i32 %19, !dbg !1780
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #7

; Function Attrs: nounwind readonly
declare i64 @strnlen(i8*, i64) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #5

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #7

declare i32 @inflateInit_(%struct.z_stream_s*, i8*, i32) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i32 @inflate(%struct.z_stream_s*, i32) #4

declare i32 @inflateEnd(%struct.z_stream_s*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

; Function Attrs: nounwind uwtable
define internal void @create_path(i8*) #0 !dbg !1781 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1784, metadata !117), !dbg !1785
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1786, metadata !117), !dbg !1787
  %4 = load i8*, i8** %2, align 8, !dbg !1788
  %5 = call i32 @mkdir(i8* %4, i32 511) #7, !dbg !1790
  %6 = icmp eq i32 %5, 0, !dbg !1791
  br i1 %6, label %7, label %8, !dbg !1792

; <label>:7:                                      ; preds = %1
  br label %31, !dbg !1793

; <label>:8:                                      ; preds = %1
  %9 = call i32* @__errno_location() #1, !dbg !1794
  %10 = load i32, i32* %9, align 4, !dbg !1796
  %11 = icmp eq i32 17, %10, !dbg !1797
  br i1 %11, label %12, label %13, !dbg !1798

; <label>:12:                                     ; preds = %8
  br label %31, !dbg !1799

; <label>:13:                                     ; preds = %8
  %14 = call i32* @__errno_location() #1, !dbg !1800
  %15 = load i32, i32* %14, align 4, !dbg !1802
  %16 = icmp eq i32 2, %15, !dbg !1803
  br i1 %16, label %17, label %30, !dbg !1804

; <label>:17:                                     ; preds = %13
  %18 = load i8*, i8** %2, align 8, !dbg !1805
  %19 = call i8* @strrchr(i8* %18, i32 47) #8, !dbg !1807
  store i8* %19, i8** %3, align 8, !dbg !1808
  %20 = load i8*, i8** %3, align 8, !dbg !1809
  %21 = icmp eq i8* null, %20, !dbg !1811
  br i1 %21, label %22, label %23, !dbg !1812

; <label>:22:                                     ; preds = %17
  br label %29, !dbg !1813

; <label>:23:                                     ; preds = %17
  %24 = load i8*, i8** %3, align 8, !dbg !1815
  store i8 0, i8* %24, align 1, !dbg !1817
  %25 = load i8*, i8** %2, align 8, !dbg !1818
  call void @create_path(i8* %25), !dbg !1819
  %26 = load i8*, i8** %3, align 8, !dbg !1820
  store i8 47, i8* %26, align 1, !dbg !1821
  %27 = load i8*, i8** %2, align 8, !dbg !1822
  %28 = call i32 @mkdir(i8* %27, i32 511) #7, !dbg !1823
  br label %29

; <label>:29:                                     ; preds = %23, %22
  br label %31, !dbg !1824

; <label>:30:                                     ; preds = %13
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0)), !dbg !1825
  br label %31

; <label>:31:                                     ; preds = %7, %12, %30, %29
  ret void, !dbg !1827
}

; Function Attrs: nounwind uwtable
define internal void @create_file_path(i8*) #0 !dbg !1828 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1829, metadata !117), !dbg !1830
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1831, metadata !117), !dbg !1832
  %4 = load i8*, i8** %2, align 8, !dbg !1833
  %5 = call i8* @strrchr(i8* %4, i32 47) #8, !dbg !1834
  store i8* %5, i8** %3, align 8, !dbg !1835
  %6 = load i8*, i8** %3, align 8, !dbg !1836
  %7 = icmp eq i8* null, %6, !dbg !1838
  br i1 %7, label %8, label %9, !dbg !1839

; <label>:8:                                      ; preds = %1
  br label %21, !dbg !1840

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !1841
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1843
  %12 = load i8, i8* %11, align 1, !dbg !1844
  %13 = sext i8 %12 to i32, !dbg !1844
  %14 = icmp eq i32 0, %13, !dbg !1845
  br i1 %14, label %15, label %17, !dbg !1846

; <label>:15:                                     ; preds = %9
  %16 = load i8*, i8** %2, align 8, !dbg !1847
  call void @create_path(i8* %16), !dbg !1849
  br label %21, !dbg !1850

; <label>:17:                                     ; preds = %9
  %18 = load i8*, i8** %3, align 8, !dbg !1851
  store i8 0, i8* %18, align 1, !dbg !1853
  %19 = load i8*, i8** %2, align 8, !dbg !1854
  call void @create_path(i8* %19), !dbg !1855
  %20 = load i8*, i8** %3, align 8, !dbg !1856
  store i8 47, i8* %20, align 1, !dbg !1857
  br label %21

; <label>:21:                                     ; preds = %8, %17, %15
  ret void, !dbg !1858
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

; Function Attrs: nounwind
declare void @free(i8*) #5

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #4

declare i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #5

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #5

; Function Attrs: nounwind
declare %struct.tm* @gmtime_r(i64*, %struct.tm*) #5

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #5

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!110, !111}
!llvm.ident = !{!112}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !61, globals: !81)
!1 = !DIFile(filename: "[inter]unnpk.o.i", directory: "/home/lichi/Desktop/npk-tools/[task]unnpk")
!2 = !{!3, !27, !41}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !5, file: !4, line: 46, size: 32, align: 32, elements: !22)
!4 = !DIFile(filename: "unnpk.c", directory: "/home/lichi/Desktop/npk-tools/[task]unnpk")
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "options", file: !4, line: 42, size: 320, align: 64, elements: !6)
!6 = !{!7, !11, !17, !18, !19, !21}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "file_in", scope: !5, file: !4, line: 43, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "file_in_size", scope: !5, file: !4, line: 44, baseType: !12, size: 64, align: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !13, line: 90, baseType: !14)
!13 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/npk-tools/[task]unnpk")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !15, line: 131, baseType: !16)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/npk-tools/[task]unnpk")
!16 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "dir_out", scope: !5, file: !4, line: 45, baseType: !8, size: 64, align: 64, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !5, file: !4, line: 51, baseType: !3, size: 32, align: 32, offset: 192)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "verb", scope: !5, file: !4, line: 52, baseType: !20, size: 32, align: 32, offset: 224)
!20 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5, file: !4, line: 53, baseType: !20, size: 32, align: 32, offset: 256)
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "OP_UNKNOWN", value: 0)
!24 = !DIEnumerator(name: "OP_HELP", value: 1)
!25 = !DIEnumerator(name: "OP_LIST", value: 2)
!26 = !DIEnumerator(name: "OP_EXTRACT", value: 3)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !28, file: !4, line: 725, size: 32, align: 32, elements: !36)
!28 = distinct !DISubprogram(name: "parse_args", scope: !4, file: !4, line: 722, type: !29, isLocal: true, isDefinition: true, scopeLine: 723, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !35)
!29 = !DISubroutineType(types: !30)
!30 = !{!31, !32, !33, !34}
!31 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!35 = !{}
!36 = !{!37, !38, !39, !40}
!37 = !DIEnumerator(name: "ST_SEARCH", value: 0)
!38 = !DIEnumerator(name: "ST_NEXT_ARG", value: 1)
!39 = !DIEnumerator(name: "ST_OPT_FILE", value: 2)
!40 = !DIEnumerator(name: "ST_OPT_DIR", value: 3)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !42, file: !4, line: 243, size: 32, align: 32, elements: !53)
!42 = distinct !DISubprogram(name: "proc_part_data_files", scope: !4, file: !4, line: 234, type: !43, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !35)
!43 = !DISubroutineType(types: !44)
!44 = !{!31, !45, !49, !51}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !47, line: 48, baseType: !48)
!47 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/npk-tools/[task]unnpk")
!48 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !47, line: 51, baseType: !20)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!53 = !{!54, !55, !56, !57, !58, !59, !60}
!54 = !DIEnumerator(name: "ST_INFLATE_HDR", value: 0)
!55 = !DIEnumerator(name: "ST_INFLATE_NAME", value: 1)
!56 = !DIEnumerator(name: "ST_INFLATE_DATA", value: 2)
!57 = !DIEnumerator(name: "ST_DUMP_HDR", value: 3)
!58 = !DIEnumerator(name: "ST_DUMP_NAME", value: 4)
!59 = !DIEnumerator(name: "ST_DUMP_DATA", value: 5)
!60 = !DIEnumerator(name: "ST_DONE", value: 6)
!61 = !{!62, !63, !69, !45, !76, !31, !77}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "npk_main_hdr", file: !65, line: 33, size: 64, align: 8, elements: !66)
!65 = !DIFile(filename: "npk.h", directory: "/home/lichi/Desktop/npk-tools/[task]unnpk")
!66 = !{!67, !68}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !64, file: !65, line: 34, baseType: !50, size: 32, align: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "remain_sz", scope: !64, file: !65, line: 35, baseType: !50, size: 32, align: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "npk_part_hdr", file: !65, line: 51, size: 48, align: 8, elements: !71)
!71 = !{!72, !75}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !70, file: !65, line: 52, baseType: !73, size: 16, align: 16)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !47, line: 49, baseType: !74)
!74 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !70, file: !65, line: 53, baseType: !50, size: 32, align: 32, offset: 16)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !79, line: 75, baseType: !80)
!79 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/npk-tools/[task]unnpk")
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !15, line: 139, baseType: !16)
!81 = !{!82, !83, !93, !102, !106}
!82 = distinct !DIGlobalVariable(name: "pkg_name", scope: !0, file: !4, line: 95, type: !76, isLocal: true, isDefinition: true, variable: i8** @pkg_name)
!83 = distinct !DIGlobalVariable(name: "buf", scope: !84, file: !4, line: 127, type: !90, isLocal: true, isDefinition: true, variable: [77 x i8]* @array2str.buf)
!84 = distinct !DISubprogram(name: "array2str", scope: !4, file: !4, line: 125, type: !85, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !35)
!85 = !DISubroutineType(types: !86)
!86 = !{!76, !87, !89}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 616, align: 8, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 77)
!93 = distinct !DIGlobalVariable(name: "part_types_names", scope: !0, file: !4, line: 63, type: !94, isLocal: true, isDefinition: true, variable: [12 x %struct.map_entry]* @part_types_names)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 1536, align: 64, elements: !100)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "map_entry", file: !4, line: 57, size: 128, align: 64, elements: !97)
!97 = !{!98, !99}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !96, file: !4, line: 58, baseType: !20, size: 32, align: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !96, file: !4, line: 59, baseType: !76, size: 64, align: 64, offset: 64)
!100 = !{!101}
!101 = !DISubrange(count: 12)
!102 = distinct !DIGlobalVariable(name: "file_perms_names", scope: !0, file: !4, line: 79, type: !103, isLocal: true, isDefinition: true, variable: [4 x %struct.map_entry]* @file_perms_names)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 512, align: 64, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 4)
!106 = distinct !DIGlobalVariable(name: "file_types_names", scope: !0, file: !4, line: 87, type: !107, isLocal: true, isDefinition: true, variable: [5 x %struct.map_entry]* @file_types_names)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 640, align: 64, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 5)
!110 = !{i32 2, !"Dwarf Version", i32 4}
!111 = !{i32 2, !"Debug Info Version", i32 3}
!112 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!113 = distinct !DISubprogram(name: "main", scope: !4, file: !4, line: 793, type: !114, isLocal: false, isDefinition: true, scopeLine: 794, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !35)
!114 = !DISubroutineType(types: !115)
!115 = !{!31, !32, !33}
!116 = !DILocalVariable(name: "argc", arg: 1, scope: !113, file: !4, line: 793, type: !32)
!117 = !DIExpression()
!118 = !DILocation(line: 793, column: 20, scope: !113)
!119 = !DILocalVariable(name: "argv", arg: 2, scope: !113, file: !4, line: 793, type: !33)
!120 = !DILocation(line: 793, column: 38, scope: !113)
!121 = !DILocalVariable(name: "name", scope: !113, file: !4, line: 795, type: !8)
!122 = !DILocation(line: 795, column: 14, scope: !113)
!123 = !DILocalVariable(name: "opt", scope: !113, file: !4, line: 796, type: !5)
!124 = !DILocation(line: 796, column: 17, scope: !113)
!125 = !DILocalVariable(name: "fd", scope: !113, file: !4, line: 797, type: !31)
!126 = !DILocation(line: 797, column: 6, scope: !113)
!127 = !DILocalVariable(name: "ret", scope: !113, file: !4, line: 797, type: !31)
!128 = !DILocation(line: 797, column: 10, scope: !113)
!129 = !DILocalVariable(name: "sb", scope: !113, file: !4, line: 798, type: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !131, line: 46, size: 1152, align: 64, elements: !132)
!131 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/npk-tools/[task]unnpk")
!132 = !{!133, !136, !138, !140, !142, !144, !146, !147, !148, !149, !151, !153, !159, !160, !161}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !130, file: !131, line: 48, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !15, line: 124, baseType: !135)
!135 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !130, file: !131, line: 53, baseType: !137, size: 64, align: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !15, line: 127, baseType: !135)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !130, file: !131, line: 61, baseType: !139, size: 64, align: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !15, line: 130, baseType: !135)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !130, file: !131, line: 62, baseType: !141, size: 32, align: 32, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !15, line: 129, baseType: !20)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !130, file: !131, line: 64, baseType: !143, size: 32, align: 32, offset: 224)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !15, line: 125, baseType: !20)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !130, file: !131, line: 65, baseType: !145, size: 32, align: 32, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !15, line: 126, baseType: !20)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !130, file: !131, line: 67, baseType: !31, size: 32, align: 32, offset: 288)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !130, file: !131, line: 69, baseType: !134, size: 64, align: 64, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !130, file: !131, line: 74, baseType: !14, size: 64, align: 64, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !130, file: !131, line: 78, baseType: !150, size: 64, align: 64, offset: 448)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !15, line: 153, baseType: !16)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !130, file: !131, line: 80, baseType: !152, size: 64, align: 64, offset: 512)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !15, line: 158, baseType: !16)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !130, file: !131, line: 91, baseType: !154, size: 128, align: 64, offset: 576)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !79, line: 120, size: 128, align: 64, elements: !155)
!155 = !{!156, !157}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !154, file: !79, line: 122, baseType: !80, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !154, file: !79, line: 123, baseType: !158, size: 64, align: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !15, line: 175, baseType: !16)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !130, file: !131, line: 92, baseType: !154, size: 128, align: 64, offset: 704)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !130, file: !131, line: 93, baseType: !154, size: 128, align: 64, offset: 832)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !130, file: !131, line: 106, baseType: !162, size: 192, align: 64, offset: 960)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 192, align: 64, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 3)
!165 = !DILocation(line: 798, column: 14, scope: !113)
!166 = !DILocalVariable(name: "base", scope: !113, file: !4, line: 799, type: !45)
!167 = !DILocation(line: 799, column: 11, scope: !113)
!168 = !DILocation(line: 801, column: 17, scope: !113)
!169 = !DILocation(line: 801, column: 9, scope: !113)
!170 = !DILocation(line: 801, column: 7, scope: !113)
!171 = !DILocation(line: 802, column: 16, scope: !113)
!172 = !DILocation(line: 802, column: 13, scope: !113)
!173 = !DILocation(line: 802, column: 8, scope: !113)
!174 = !DILocation(line: 802, column: 23, scope: !175)
!175 = !DILexicalBlockFile(scope: !113, file: !4, discriminator: 1)
!176 = !DILocation(line: 802, column: 8, scope: !175)
!177 = !DILocation(line: 802, column: 33, scope: !178)
!178 = !DILexicalBlockFile(scope: !113, file: !4, discriminator: 2)
!179 = !DILocation(line: 802, column: 38, scope: !178)
!180 = !DILocation(line: 802, column: 8, scope: !178)
!181 = !DILocation(line: 802, column: 8, scope: !182)
!182 = !DILexicalBlockFile(scope: !113, file: !4, discriminator: 3)
!183 = !DILocation(line: 802, column: 7, scope: !182)
!184 = !DILocation(line: 804, column: 2, scope: !113)
!185 = !DILocation(line: 806, column: 6, scope: !186)
!186 = distinct !DILexicalBlock(scope: !113, file: !4, line: 806, column: 6)
!187 = !DILocation(line: 806, column: 11, scope: !186)
!188 = !DILocation(line: 806, column: 6, scope: !113)
!189 = !DILocation(line: 807, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !4, line: 806, column: 17)
!191 = !DILocation(line: 807, column: 3, scope: !190)
!192 = !DILocation(line: 808, column: 3, scope: !190)
!193 = !DILocation(line: 809, column: 24, scope: !194)
!194 = distinct !DILexicalBlock(scope: !186, file: !4, line: 809, column: 13)
!195 = !DILocation(line: 809, column: 30, scope: !194)
!196 = !DILocation(line: 809, column: 13, scope: !194)
!197 = !DILocation(line: 809, column: 42, scope: !194)
!198 = !DILocation(line: 809, column: 13, scope: !186)
!199 = !DILocation(line: 810, column: 3, scope: !200)
!200 = distinct !DILexicalBlock(scope: !194, file: !4, line: 809, column: 48)
!201 = !DILocation(line: 811, column: 28, scope: !202)
!202 = distinct !DILexicalBlock(scope: !194, file: !4, line: 811, column: 13)
!203 = !DILocation(line: 811, column: 21, scope: !202)
!204 = !DILocation(line: 811, column: 13, scope: !194)
!205 = !DILocation(line: 812, column: 9, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !4, line: 811, column: 32)
!207 = !DILocation(line: 812, column: 3, scope: !206)
!208 = !DILocation(line: 813, column: 3, scope: !206)
!209 = !DILocation(line: 814, column: 24, scope: !210)
!210 = distinct !DILexicalBlock(scope: !202, file: !4, line: 814, column: 12)
!211 = !DILocation(line: 814, column: 17, scope: !210)
!212 = !DILocation(line: 814, column: 12, scope: !202)
!213 = !DILocation(line: 815, column: 10, scope: !214)
!214 = distinct !DILexicalBlock(scope: !210, file: !4, line: 814, column: 33)
!215 = !DILocation(line: 815, column: 3, scope: !214)
!216 = !DILocation(line: 816, column: 3, scope: !214)
!217 = !DILocation(line: 817, column: 31, scope: !218)
!218 = distinct !DILexicalBlock(scope: !210, file: !4, line: 817, column: 13)
!219 = !DILocation(line: 817, column: 24, scope: !218)
!220 = !DILocation(line: 817, column: 13, scope: !210)
!221 = !DILocation(line: 818, column: 10, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !4, line: 817, column: 35)
!223 = !DILocation(line: 818, column: 3, scope: !222)
!224 = !DILocation(line: 819, column: 3, scope: !222)
!225 = !DILocation(line: 822, column: 24, scope: !226)
!226 = distinct !DILexicalBlock(scope: !113, file: !4, line: 822, column: 6)
!227 = !DILocation(line: 822, column: 17, scope: !226)
!228 = !DILocation(line: 822, column: 6, scope: !113)
!229 = !DILocation(line: 823, column: 11, scope: !230)
!230 = distinct !DILexicalBlock(scope: !231, file: !4, line: 823, column: 7)
!231 = distinct !DILexicalBlock(scope: !226, file: !4, line: 822, column: 28)
!232 = !DILocation(line: 823, column: 16, scope: !230)
!233 = !DILocation(line: 823, column: 7, scope: !231)
!234 = !DILocation(line: 824, column: 8, scope: !230)
!235 = !DILocation(line: 824, column: 14, scope: !230)
!236 = !DILocation(line: 824, column: 4, scope: !230)
!237 = !DILocation(line: 825, column: 16, scope: !238)
!238 = distinct !DILexicalBlock(scope: !230, file: !4, line: 825, column: 12)
!239 = !DILocation(line: 825, column: 21, scope: !238)
!240 = !DILocation(line: 825, column: 12, scope: !230)
!241 = !DILocation(line: 826, column: 8, scope: !238)
!242 = !DILocation(line: 826, column: 14, scope: !238)
!243 = !DILocation(line: 826, column: 4, scope: !238)
!244 = !DILocation(line: 827, column: 2, scope: !231)
!245 = !DILocation(line: 827, column: 28, scope: !246)
!246 = !DILexicalBlockFile(scope: !247, file: !4, discriminator: 1)
!247 = distinct !DILexicalBlock(scope: !226, file: !4, line: 827, column: 13)
!248 = !DILocation(line: 827, column: 21, scope: !246)
!249 = !DILocation(line: 827, column: 13, scope: !246)
!250 = !DILocation(line: 828, column: 11, scope: !251)
!251 = distinct !DILexicalBlock(scope: !252, file: !4, line: 828, column: 7)
!252 = distinct !DILexicalBlock(scope: !247, file: !4, line: 827, column: 32)
!253 = !DILocation(line: 828, column: 16, scope: !251)
!254 = !DILocation(line: 828, column: 7, scope: !252)
!255 = !DILocation(line: 829, column: 8, scope: !251)
!256 = !DILocation(line: 829, column: 14, scope: !251)
!257 = !DILocation(line: 829, column: 4, scope: !251)
!258 = !DILocation(line: 831, column: 8, scope: !251)
!259 = !DILocation(line: 831, column: 14, scope: !251)
!260 = !DILocation(line: 832, column: 2, scope: !252)
!261 = !DILocation(line: 834, column: 16, scope: !113)
!262 = !DILocation(line: 834, column: 7, scope: !113)
!263 = !DILocation(line: 834, column: 5, scope: !113)
!264 = !DILocation(line: 835, column: 12, scope: !265)
!265 = distinct !DILexicalBlock(scope: !113, file: !4, line: 835, column: 6)
!266 = !DILocation(line: 835, column: 9, scope: !265)
!267 = !DILocation(line: 835, column: 6, scope: !113)
!268 = !DILocation(line: 836, column: 10, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !4, line: 835, column: 16)
!270 = !DILocation(line: 836, column: 39, scope: !269)
!271 = !DILocation(line: 836, column: 59, scope: !269)
!272 = !DILocation(line: 836, column: 58, scope: !269)
!273 = !DILocation(line: 836, column: 48, scope: !274)
!274 = !DILexicalBlockFile(scope: !269, file: !4, discriminator: 1)
!275 = !DILocation(line: 836, column: 3, scope: !276)
!276 = !DILexicalBlockFile(scope: !269, file: !4, discriminator: 2)
!277 = !DILocation(line: 837, column: 3, scope: !269)
!278 = !DILocation(line: 840, column: 12, scope: !279)
!279 = distinct !DILexicalBlock(scope: !113, file: !4, line: 840, column: 6)
!280 = !DILocation(line: 840, column: 6, scope: !279)
!281 = !DILocation(line: 840, column: 21, scope: !279)
!282 = !DILocation(line: 840, column: 6, scope: !113)
!283 = !DILocation(line: 841, column: 10, scope: !284)
!284 = distinct !DILexicalBlock(scope: !279, file: !4, line: 840, column: 28)
!285 = !DILocation(line: 841, column: 39, scope: !284)
!286 = !DILocation(line: 841, column: 59, scope: !284)
!287 = !DILocation(line: 841, column: 58, scope: !284)
!288 = !DILocation(line: 841, column: 48, scope: !289)
!289 = !DILexicalBlockFile(scope: !284, file: !4, discriminator: 1)
!290 = !DILocation(line: 841, column: 3, scope: !291)
!291 = !DILexicalBlockFile(scope: !284, file: !4, discriminator: 2)
!292 = !DILocation(line: 842, column: 9, scope: !284)
!293 = !DILocation(line: 842, column: 3, scope: !284)
!294 = !DILocation(line: 843, column: 3, scope: !284)
!295 = !DILocation(line: 846, column: 9, scope: !296)
!296 = distinct !DILexicalBlock(scope: !113, file: !4, line: 846, column: 6)
!297 = !DILocation(line: 846, column: 20, scope: !296)
!298 = !DILocation(line: 846, column: 6, scope: !113)
!299 = !DILocation(line: 847, column: 10, scope: !300)
!300 = distinct !DILexicalBlock(scope: !296, file: !4, line: 846, column: 27)
!301 = !DILocation(line: 847, column: 51, scope: !300)
!302 = !DILocation(line: 847, column: 3, scope: !300)
!303 = !DILocation(line: 848, column: 9, scope: !300)
!304 = !DILocation(line: 848, column: 3, scope: !300)
!305 = !DILocation(line: 849, column: 3, scope: !300)
!306 = !DILocation(line: 851, column: 24, scope: !113)
!307 = !DILocation(line: 851, column: 6, scope: !113)
!308 = !DILocation(line: 851, column: 19, scope: !113)
!309 = !DILocation(line: 853, column: 21, scope: !113)
!310 = !DILocation(line: 853, column: 58, scope: !113)
!311 = !DILocation(line: 853, column: 9, scope: !113)
!312 = !DILocation(line: 853, column: 7, scope: !113)
!313 = !DILocation(line: 854, column: 19, scope: !314)
!314 = distinct !DILexicalBlock(scope: !113, file: !4, line: 854, column: 5)
!315 = !DILocation(line: 854, column: 16, scope: !314)
!316 = !DILocation(line: 854, column: 5, scope: !113)
!317 = !DILocation(line: 855, column: 3, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !4, line: 854, column: 25)
!319 = !DILocation(line: 856, column: 9, scope: !318)
!320 = !DILocation(line: 856, column: 3, scope: !318)
!321 = !DILocation(line: 857, column: 3, scope: !318)
!322 = !DILocation(line: 860, column: 12, scope: !323)
!323 = distinct !DILexicalBlock(scope: !113, file: !4, line: 860, column: 6)
!324 = !DILocation(line: 860, column: 6, scope: !323)
!325 = !DILocation(line: 860, column: 16, scope: !323)
!326 = !DILocation(line: 860, column: 6, scope: !113)
!327 = !DILocation(line: 861, column: 3, scope: !328)
!328 = distinct !DILexicalBlock(scope: !323, file: !4, line: 860, column: 23)
!329 = !DILocation(line: 862, column: 3, scope: !328)
!330 = !DILocation(line: 865, column: 24, scope: !331)
!331 = distinct !DILexicalBlock(scope: !113, file: !4, line: 865, column: 6)
!332 = !DILocation(line: 865, column: 17, scope: !331)
!333 = !DILocation(line: 865, column: 27, scope: !331)
!334 = !DILocation(line: 865, column: 34, scope: !335)
!335 = !DILexicalBlockFile(scope: !331, file: !4, discriminator: 1)
!336 = !DILocation(line: 865, column: 42, scope: !335)
!337 = !DILocation(line: 865, column: 6, scope: !335)
!338 = !DILocation(line: 866, column: 17, scope: !339)
!339 = distinct !DILexicalBlock(scope: !340, file: !4, line: 866, column: 7)
!340 = distinct !DILexicalBlock(scope: !331, file: !4, line: 865, column: 50)
!341 = !DILocation(line: 866, column: 7, scope: !339)
!342 = !DILocation(line: 866, column: 26, scope: !339)
!343 = !DILocation(line: 866, column: 7, scope: !340)
!344 = !DILocation(line: 867, column: 11, scope: !345)
!345 = distinct !DILexicalBlock(scope: !339, file: !4, line: 866, column: 32)
!346 = !DILocation(line: 867, column: 41, scope: !345)
!347 = !DILocation(line: 867, column: 61, scope: !345)
!348 = !DILocation(line: 867, column: 60, scope: !345)
!349 = !DILocation(line: 867, column: 50, scope: !350)
!350 = !DILexicalBlockFile(scope: !345, file: !4, discriminator: 1)
!351 = !DILocation(line: 867, column: 4, scope: !352)
!352 = !DILexicalBlockFile(scope: !345, file: !4, discriminator: 2)
!353 = !DILocation(line: 868, column: 4, scope: !345)
!354 = !DILocation(line: 870, column: 2, scope: !340)
!355 = !DILocation(line: 872, column: 13, scope: !113)
!356 = !DILocation(line: 872, column: 11, scope: !113)
!357 = !DILocation(line: 874, column: 18, scope: !113)
!358 = !DILocation(line: 874, column: 8, scope: !113)
!359 = !DILocation(line: 874, column: 6, scope: !113)
!360 = !DILocation(line: 876, column: 13, scope: !361)
!361 = distinct !DILexicalBlock(scope: !113, file: !4, line: 876, column: 6)
!362 = !DILocation(line: 876, column: 23, scope: !361)
!363 = !DILocation(line: 876, column: 6, scope: !361)
!364 = !DILocation(line: 876, column: 37, scope: !361)
!365 = !DILocation(line: 876, column: 6, scope: !113)
!366 = !DILocation(line: 877, column: 3, scope: !367)
!367 = distinct !DILexicalBlock(scope: !361, file: !4, line: 876, column: 44)
!368 = !DILocation(line: 878, column: 3, scope: !367)
!369 = !DILocation(line: 881, column: 14, scope: !113)
!370 = !DILocation(line: 881, column: 11, scope: !113)
!371 = !DILocation(line: 881, column: 9, scope: !113)
!372 = !DILocation(line: 881, column: 2, scope: !113)
!373 = !DILocation(line: 882, column: 1, scope: !113)
!374 = distinct !DISubprogram(name: "usage", scope: !4, file: !4, line: 684, type: !375, isLocal: true, isDefinition: true, scopeLine: 685, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !35)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !8}
!377 = !DILocalVariable(name: "name", arg: 1, scope: !374, file: !4, line: 684, type: !8)
!378 = !DILocation(line: 684, column: 31, scope: !374)
!379 = !DILocation(line: 686, column: 2, scope: !374)
!380 = !DILocation(line: 709, column: 3, scope: !374)
!381 = !DILocation(line: 709, column: 9, scope: !374)
!382 = !DILocation(line: 709, column: 15, scope: !374)
!383 = !DILocation(line: 709, column: 21, scope: !374)
!384 = !DILocation(line: 709, column: 27, scope: !374)
!385 = !DILocation(line: 687, column: 2, scope: !374)
!386 = !DILocation(line: 711, column: 2, scope: !374)
!387 = !DILocation(line: 712, column: 1, scope: !374)
!388 = !DILocalVariable(name: "argc", arg: 1, scope: !28, file: !4, line: 722, type: !32)
!389 = !DILocation(line: 722, column: 33, scope: !28)
!390 = !DILocalVariable(name: "argv", arg: 2, scope: !28, file: !4, line: 722, type: !33)
!391 = !DILocation(line: 722, column: 51, scope: !28)
!392 = !DILocalVariable(name: "opt", arg: 3, scope: !28, file: !4, line: 722, type: !34)
!393 = !DILocation(line: 722, column: 75, scope: !28)
!394 = !DILocalVariable(name: "i", scope: !28, file: !4, line: 724, type: !20)
!395 = !DILocation(line: 724, column: 11, scope: !28)
!396 = !DILocalVariable(name: "j", scope: !28, file: !4, line: 724, type: !20)
!397 = !DILocation(line: 724, column: 14, scope: !28)
!398 = !DILocalVariable(name: "state", scope: !28, file: !4, line: 730, type: !27)
!399 = !DILocation(line: 730, column: 4, scope: !28)
!400 = !DILocation(line: 732, column: 13, scope: !401)
!401 = distinct !DILexicalBlock(scope: !28, file: !4, line: 732, column: 2)
!402 = !DILocation(line: 732, column: 28, scope: !401)
!403 = !DILocation(line: 732, column: 35, scope: !401)
!404 = !DILocation(line: 732, column: 7, scope: !401)
!405 = !DILocation(line: 732, column: 40, scope: !406)
!406 = !DILexicalBlockFile(scope: !407, file: !4, discriminator: 1)
!407 = distinct !DILexicalBlock(scope: !401, file: !4, line: 732, column: 2)
!408 = !DILocation(line: 732, column: 44, scope: !406)
!409 = !DILocation(line: 732, column: 42, scope: !406)
!410 = !DILocation(line: 732, column: 2, scope: !406)
!411 = !DILocation(line: 734, column: 11, scope: !412)
!412 = distinct !DILexicalBlock(scope: !407, file: !4, line: 732, column: 52)
!413 = !DILocation(line: 734, column: 3, scope: !412)
!414 = !DILocation(line: 736, column: 13, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !4, line: 736, column: 8)
!416 = distinct !DILexicalBlock(scope: !412, file: !4, line: 734, column: 18)
!417 = !DILocation(line: 736, column: 10, scope: !415)
!418 = !DILocation(line: 736, column: 8, scope: !416)
!419 = !DILocation(line: 737, column: 14, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !4, line: 737, column: 9)
!421 = distinct !DILexicalBlock(scope: !415, file: !4, line: 736, column: 16)
!422 = !DILocation(line: 737, column: 9, scope: !420)
!423 = !DILocation(line: 737, column: 20, scope: !420)
!424 = !DILocation(line: 737, column: 27, scope: !420)
!425 = !DILocation(line: 737, column: 35, scope: !426)
!426 = !DILexicalBlockFile(scope: !420, file: !4, discriminator: 1)
!427 = !DILocation(line: 737, column: 30, scope: !426)
!428 = !DILocation(line: 737, column: 41, scope: !426)
!429 = !DILocation(line: 737, column: 9, scope: !426)
!430 = !DILocation(line: 738, column: 13, scope: !431)
!431 = distinct !DILexicalBlock(scope: !420, file: !4, line: 737, column: 50)
!432 = !DILocation(line: 738, column: 66, scope: !431)
!433 = !DILocation(line: 738, column: 61, scope: !431)
!434 = !DILocation(line: 738, column: 6, scope: !431)
!435 = !DILocation(line: 739, column: 6, scope: !431)
!436 = !DILocation(line: 741, column: 4, scope: !421)
!437 = !DILocation(line: 741, column: 30, scope: !438)
!438 = !DILexicalBlockFile(scope: !439, file: !4, discriminator: 1)
!439 = distinct !DILexicalBlock(scope: !415, file: !4, line: 741, column: 15)
!440 = !DILocation(line: 741, column: 22, scope: !438)
!441 = !DILocation(line: 741, column: 27, scope: !438)
!442 = !DILocation(line: 741, column: 19, scope: !438)
!443 = !DILocation(line: 741, column: 15, scope: !438)
!444 = !DILocation(line: 742, column: 11, scope: !445)
!445 = distinct !DILexicalBlock(scope: !439, file: !4, line: 741, column: 34)
!446 = !DILocation(line: 743, column: 4, scope: !445)
!447 = !DILocation(line: 743, column: 30, scope: !448)
!448 = !DILexicalBlockFile(scope: !449, file: !4, discriminator: 1)
!449 = distinct !DILexicalBlock(scope: !439, file: !4, line: 743, column: 15)
!450 = !DILocation(line: 743, column: 22, scope: !448)
!451 = !DILocation(line: 743, column: 27, scope: !448)
!452 = !DILocation(line: 743, column: 19, scope: !448)
!453 = !DILocation(line: 743, column: 15, scope: !448)
!454 = !DILocation(line: 744, column: 11, scope: !455)
!455 = distinct !DILexicalBlock(scope: !449, file: !4, line: 743, column: 34)
!456 = !DILocation(line: 745, column: 4, scope: !455)
!457 = !DILocation(line: 745, column: 30, scope: !458)
!458 = !DILexicalBlockFile(scope: !459, file: !4, discriminator: 1)
!459 = distinct !DILexicalBlock(scope: !449, file: !4, line: 745, column: 15)
!460 = !DILocation(line: 745, column: 22, scope: !458)
!461 = !DILocation(line: 745, column: 27, scope: !458)
!462 = !DILocation(line: 745, column: 19, scope: !458)
!463 = !DILocation(line: 745, column: 15, scope: !458)
!464 = !DILocation(line: 746, column: 5, scope: !465)
!465 = distinct !DILexicalBlock(scope: !459, file: !4, line: 745, column: 34)
!466 = !DILocation(line: 746, column: 10, scope: !465)
!467 = !DILocation(line: 746, column: 13, scope: !465)
!468 = !DILocation(line: 747, column: 4, scope: !465)
!469 = !DILocation(line: 747, column: 30, scope: !470)
!470 = !DILexicalBlockFile(scope: !471, file: !4, discriminator: 1)
!471 = distinct !DILexicalBlock(scope: !459, file: !4, line: 747, column: 15)
!472 = !DILocation(line: 747, column: 22, scope: !470)
!473 = !DILocation(line: 747, column: 27, scope: !470)
!474 = !DILocation(line: 747, column: 19, scope: !470)
!475 = !DILocation(line: 747, column: 15, scope: !470)
!476 = !DILocation(line: 748, column: 5, scope: !477)
!477 = distinct !DILexicalBlock(scope: !471, file: !4, line: 747, column: 34)
!478 = !DILocation(line: 748, column: 10, scope: !477)
!479 = !DILocation(line: 748, column: 13, scope: !477)
!480 = !DILocation(line: 749, column: 4, scope: !477)
!481 = !DILocation(line: 749, column: 30, scope: !482)
!482 = !DILexicalBlockFile(scope: !483, file: !4, discriminator: 1)
!483 = distinct !DILexicalBlock(scope: !471, file: !4, line: 749, column: 15)
!484 = !DILocation(line: 749, column: 22, scope: !482)
!485 = !DILocation(line: 749, column: 27, scope: !482)
!486 = !DILocation(line: 749, column: 19, scope: !482)
!487 = !DILocation(line: 749, column: 15, scope: !482)
!488 = !DILocation(line: 750, column: 8, scope: !489)
!489 = distinct !DILexicalBlock(scope: !483, file: !4, line: 749, column: 34)
!490 = !DILocation(line: 750, column: 13, scope: !489)
!491 = !DILocation(line: 750, column: 5, scope: !489)
!492 = !DILocation(line: 751, column: 4, scope: !489)
!493 = !DILocation(line: 751, column: 30, scope: !494)
!494 = !DILexicalBlockFile(scope: !495, file: !4, discriminator: 1)
!495 = distinct !DILexicalBlock(scope: !483, file: !4, line: 751, column: 15)
!496 = !DILocation(line: 751, column: 22, scope: !494)
!497 = !DILocation(line: 751, column: 27, scope: !494)
!498 = !DILocation(line: 751, column: 19, scope: !494)
!499 = !DILocation(line: 751, column: 15, scope: !494)
!500 = !DILocation(line: 752, column: 5, scope: !501)
!501 = distinct !DILexicalBlock(scope: !495, file: !4, line: 751, column: 34)
!502 = !DILocation(line: 752, column: 10, scope: !501)
!503 = !DILocation(line: 752, column: 13, scope: !501)
!504 = !DILocation(line: 753, column: 4, scope: !501)
!505 = !DILocation(line: 754, column: 12, scope: !506)
!506 = distinct !DILexicalBlock(scope: !495, file: !4, line: 753, column: 11)
!507 = !DILocation(line: 754, column: 54, scope: !506)
!508 = !DILocation(line: 754, column: 46, scope: !506)
!509 = !DILocation(line: 754, column: 51, scope: !506)
!510 = !DILocation(line: 754, column: 5, scope: !506)
!511 = !DILocation(line: 755, column: 5, scope: !506)
!512 = !DILocation(line: 757, column: 4, scope: !416)
!513 = !DILocation(line: 760, column: 28, scope: !416)
!514 = !DILocation(line: 760, column: 20, scope: !416)
!515 = !DILocation(line: 760, column: 25, scope: !416)
!516 = !DILocation(line: 760, column: 4, scope: !416)
!517 = !DILocation(line: 760, column: 9, scope: !416)
!518 = !DILocation(line: 760, column: 17, scope: !416)
!519 = !DILocation(line: 761, column: 10, scope: !416)
!520 = !DILocation(line: 762, column: 4, scope: !416)
!521 = !DILocation(line: 765, column: 28, scope: !416)
!522 = !DILocation(line: 765, column: 20, scope: !416)
!523 = !DILocation(line: 765, column: 25, scope: !416)
!524 = !DILocation(line: 765, column: 4, scope: !416)
!525 = !DILocation(line: 765, column: 9, scope: !416)
!526 = !DILocation(line: 765, column: 17, scope: !416)
!527 = !DILocation(line: 766, column: 10, scope: !416)
!528 = !DILocation(line: 767, column: 4, scope: !416)
!529 = !DILocation(line: 770, column: 11, scope: !416)
!530 = !DILocation(line: 770, column: 4, scope: !416)
!531 = !DILocation(line: 771, column: 4, scope: !416)
!532 = !DILocation(line: 775, column: 22, scope: !533)
!533 = distinct !DILexicalBlock(scope: !412, file: !4, line: 775, column: 7)
!534 = !DILocation(line: 775, column: 19, scope: !533)
!535 = !DILocation(line: 775, column: 28, scope: !533)
!536 = !DILocation(line: 775, column: 47, scope: !537)
!537 = !DILexicalBlockFile(scope: !533, file: !4, discriminator: 1)
!538 = !DILocation(line: 775, column: 49, scope: !537)
!539 = !DILocation(line: 775, column: 39, scope: !537)
!540 = !DILocation(line: 775, column: 44, scope: !537)
!541 = !DILocation(line: 775, column: 36, scope: !537)
!542 = !DILocation(line: 775, column: 7, scope: !537)
!543 = !DILocation(line: 776, column: 4, scope: !544)
!544 = distinct !DILexicalBlock(scope: !533, file: !4, line: 775, column: 55)
!545 = !DILocation(line: 777, column: 6, scope: !544)
!546 = !DILocation(line: 778, column: 23, scope: !547)
!547 = distinct !DILexicalBlock(scope: !544, file: !4, line: 778, column: 8)
!548 = !DILocation(line: 778, column: 20, scope: !547)
!549 = !DILocation(line: 778, column: 8, scope: !544)
!550 = !DILocation(line: 779, column: 11, scope: !547)
!551 = !DILocation(line: 779, column: 5, scope: !547)
!552 = !DILocation(line: 780, column: 3, scope: !544)
!553 = !DILocation(line: 781, column: 4, scope: !554)
!554 = distinct !DILexicalBlock(scope: !533, file: !4, line: 780, column: 10)
!555 = !DILocation(line: 732, column: 2, scope: !556)
!556 = !DILexicalBlockFile(scope: !407, file: !4, discriminator: 2)
!557 = distinct !{!557, !558}
!558 = !DILocation(line: 732, column: 2, scope: !28)
!559 = !DILocation(line: 784, column: 6, scope: !560)
!560 = distinct !DILexicalBlock(scope: !28, file: !4, line: 784, column: 6)
!561 = !DILocation(line: 784, column: 12, scope: !560)
!562 = !DILocation(line: 784, column: 6, scope: !28)
!563 = !DILocation(line: 785, column: 10, scope: !564)
!564 = distinct !DILexicalBlock(scope: !560, file: !4, line: 784, column: 26)
!565 = !DILocation(line: 785, column: 80, scope: !564)
!566 = !DILocation(line: 785, column: 75, scope: !564)
!567 = !DILocation(line: 785, column: 68, scope: !564)
!568 = !DILocation(line: 785, column: 84, scope: !564)
!569 = !DILocation(line: 785, column: 61, scope: !564)
!570 = !DILocation(line: 785, column: 63, scope: !564)
!571 = !DILocation(line: 785, column: 56, scope: !564)
!572 = !DILocation(line: 785, column: 3, scope: !573)
!573 = !DILexicalBlockFile(scope: !564, file: !4, discriminator: 1)
!574 = !DILocation(line: 786, column: 3, scope: !564)
!575 = !DILocation(line: 789, column: 2, scope: !28)
!576 = !DILocation(line: 790, column: 1, scope: !28)
!577 = distinct !DISubprogram(name: "proc_main", scope: !4, file: !4, line: 635, type: !578, isLocal: true, isDefinition: true, scopeLine: 636, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !35)
!578 = !DISubroutineType(types: !579)
!579 = !{!31, !45, !51}
!580 = !DILocalVariable(name: "base", arg: 1, scope: !577, file: !4, line: 635, type: !45)
!581 = !DILocation(line: 635, column: 31, scope: !577)
!582 = !DILocalVariable(name: "opt", arg: 2, scope: !577, file: !4, line: 635, type: !51)
!583 = !DILocation(line: 635, column: 59, scope: !577)
!584 = !DILocalVariable(name: "ptr", scope: !577, file: !4, line: 637, type: !45)
!585 = !DILocation(line: 637, column: 11, scope: !577)
!586 = !DILocation(line: 637, column: 17, scope: !577)
!587 = !DILocalVariable(name: "mhdr", scope: !577, file: !4, line: 638, type: !588)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64, align: 64)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!590 = !DILocation(line: 638, column: 29, scope: !577)
!591 = !DILocalVariable(name: "phdr", scope: !577, file: !4, line: 639, type: !592)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64, align: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!594 = !DILocation(line: 639, column: 29, scope: !577)
!595 = !DILocation(line: 643, column: 36, scope: !596)
!596 = distinct !DILexicalBlock(scope: !577, file: !4, line: 643, column: 6)
!597 = !DILocation(line: 643, column: 41, scope: !596)
!598 = !DILocation(line: 643, column: 34, scope: !596)
!599 = !DILocation(line: 643, column: 6, scope: !577)
!600 = !DILocation(line: 644, column: 10, scope: !601)
!601 = distinct !DILexicalBlock(scope: !596, file: !4, line: 643, column: 55)
!602 = !DILocation(line: 644, column: 3, scope: !601)
!603 = !DILocation(line: 645, column: 3, scope: !601)
!604 = !DILocation(line: 647, column: 32, scope: !577)
!605 = !DILocation(line: 647, column: 9, scope: !577)
!606 = !DILocation(line: 647, column: 7, scope: !577)
!607 = !DILocation(line: 648, column: 12, scope: !608)
!608 = distinct !DILexicalBlock(scope: !577, file: !4, line: 648, column: 6)
!609 = !DILocation(line: 648, column: 18, scope: !608)
!610 = !DILocation(line: 648, column: 6, scope: !608)
!611 = !DILocation(line: 648, column: 24, scope: !608)
!612 = !DILocation(line: 648, column: 6, scope: !577)
!613 = !DILocation(line: 649, column: 10, scope: !614)
!614 = distinct !DILexicalBlock(scope: !608, file: !4, line: 648, column: 39)
!615 = !DILocation(line: 649, column: 3, scope: !614)
!616 = !DILocation(line: 650, column: 3, scope: !614)
!617 = !DILocation(line: 652, column: 6, scope: !618)
!618 = distinct !DILexicalBlock(scope: !577, file: !4, line: 652, column: 6)
!619 = !DILocation(line: 652, column: 12, scope: !618)
!620 = !DILocation(line: 652, column: 25, scope: !618)
!621 = !DILocation(line: 652, column: 30, scope: !618)
!622 = !DILocation(line: 652, column: 43, scope: !618)
!623 = !DILocation(line: 652, column: 64, scope: !618)
!624 = !DILocation(line: 652, column: 22, scope: !618)
!625 = !DILocation(line: 652, column: 6, scope: !577)
!626 = !DILocation(line: 653, column: 10, scope: !618)
!627 = !DILocation(line: 653, column: 3, scope: !618)
!628 = !DILocation(line: 654, column: 11, scope: !629)
!629 = distinct !DILexicalBlock(scope: !618, file: !4, line: 654, column: 11)
!630 = !DILocation(line: 654, column: 17, scope: !629)
!631 = !DILocation(line: 654, column: 30, scope: !629)
!632 = !DILocation(line: 654, column: 35, scope: !629)
!633 = !DILocation(line: 654, column: 48, scope: !629)
!634 = !DILocation(line: 654, column: 69, scope: !629)
!635 = !DILocation(line: 654, column: 27, scope: !629)
!636 = !DILocation(line: 654, column: 11, scope: !618)
!637 = !DILocation(line: 655, column: 10, scope: !629)
!638 = !DILocation(line: 655, column: 3, scope: !629)
!639 = !DILocation(line: 656, column: 6, scope: !640)
!640 = distinct !DILexicalBlock(scope: !577, file: !4, line: 656, column: 6)
!641 = !DILocation(line: 656, column: 11, scope: !640)
!642 = !DILocation(line: 656, column: 17, scope: !640)
!643 = !DILocation(line: 656, column: 6, scope: !577)
!644 = !DILocation(line: 657, column: 28, scope: !640)
!645 = !DILocation(line: 657, column: 3, scope: !640)
!646 = !DILocation(line: 658, column: 6, scope: !577)
!647 = !DILocation(line: 661, column: 2, scope: !577)
!648 = !DILocation(line: 661, column: 10, scope: !649)
!649 = !DILexicalBlockFile(scope: !577, file: !4, discriminator: 1)
!650 = !DILocation(line: 661, column: 15, scope: !649)
!651 = !DILocation(line: 661, column: 31, scope: !649)
!652 = !DILocation(line: 661, column: 37, scope: !649)
!653 = !DILocation(line: 661, column: 35, scope: !649)
!654 = !DILocation(line: 661, column: 28, scope: !649)
!655 = !DILocation(line: 661, column: 44, scope: !649)
!656 = !DILocation(line: 661, column: 2, scope: !649)
!657 = !DILocation(line: 662, column: 8, scope: !658)
!658 = distinct !DILexicalBlock(scope: !659, file: !4, line: 662, column: 7)
!659 = distinct !DILexicalBlock(scope: !577, file: !4, line: 661, column: 50)
!660 = !DILocation(line: 662, column: 13, scope: !658)
!661 = !DILocation(line: 662, column: 29, scope: !658)
!662 = !DILocation(line: 662, column: 35, scope: !658)
!663 = !DILocation(line: 662, column: 33, scope: !658)
!664 = !DILocation(line: 662, column: 26, scope: !658)
!665 = !DILocation(line: 662, column: 42, scope: !658)
!666 = !DILocation(line: 662, column: 7, scope: !659)
!667 = !DILocation(line: 663, column: 11, scope: !668)
!668 = distinct !DILexicalBlock(scope: !658, file: !4, line: 662, column: 73)
!669 = !DILocation(line: 663, column: 4, scope: !668)
!670 = !DILocation(line: 664, column: 4, scope: !668)
!671 = !DILocation(line: 666, column: 33, scope: !659)
!672 = !DILocation(line: 666, column: 10, scope: !659)
!673 = !DILocation(line: 666, column: 8, scope: !659)
!674 = !DILocation(line: 667, column: 7, scope: !675)
!675 = distinct !DILexicalBlock(scope: !659, file: !4, line: 667, column: 7)
!676 = !DILocation(line: 667, column: 12, scope: !675)
!677 = !DILocation(line: 667, column: 18, scope: !675)
!678 = !DILocation(line: 667, column: 7, scope: !659)
!679 = !DILocation(line: 668, column: 29, scope: !675)
!680 = !DILocation(line: 668, column: 4, scope: !675)
!681 = !DILocation(line: 669, column: 7, scope: !659)
!682 = !DILocation(line: 671, column: 8, scope: !683)
!683 = distinct !DILexicalBlock(scope: !659, file: !4, line: 671, column: 7)
!684 = !DILocation(line: 671, column: 13, scope: !683)
!685 = !DILocation(line: 671, column: 29, scope: !683)
!686 = !DILocation(line: 671, column: 35, scope: !683)
!687 = !DILocation(line: 671, column: 33, scope: !683)
!688 = !DILocation(line: 671, column: 26, scope: !683)
!689 = !DILocation(line: 671, column: 44, scope: !683)
!690 = !DILocation(line: 671, column: 50, scope: !683)
!691 = !DILocation(line: 671, column: 42, scope: !683)
!692 = !DILocation(line: 671, column: 7, scope: !659)
!693 = !DILocation(line: 672, column: 11, scope: !694)
!694 = distinct !DILexicalBlock(scope: !683, file: !4, line: 671, column: 56)
!695 = !DILocation(line: 672, column: 4, scope: !694)
!696 = !DILocation(line: 673, column: 4, scope: !694)
!697 = !DILocation(line: 674, column: 29, scope: !698)
!698 = distinct !DILexicalBlock(scope: !683, file: !4, line: 674, column: 14)
!699 = !DILocation(line: 674, column: 35, scope: !698)
!700 = !DILocation(line: 674, column: 41, scope: !698)
!701 = !DILocation(line: 674, column: 47, scope: !698)
!702 = !DILocation(line: 674, column: 53, scope: !698)
!703 = !DILocation(line: 674, column: 58, scope: !698)
!704 = !DILocation(line: 674, column: 14, scope: !698)
!705 = !DILocation(line: 674, column: 63, scope: !698)
!706 = !DILocation(line: 674, column: 14, scope: !683)
!707 = !DILocation(line: 675, column: 4, scope: !698)
!708 = !DILocation(line: 676, column: 10, scope: !659)
!709 = !DILocation(line: 676, column: 16, scope: !659)
!710 = !DILocation(line: 676, column: 7, scope: !659)
!711 = !DILocation(line: 661, column: 2, scope: !712)
!712 = !DILexicalBlockFile(scope: !577, file: !4, discriminator: 2)
!713 = distinct !{!713, !647}
!714 = !DILocation(line: 680, column: 2, scope: !577)
!715 = !DILocation(line: 681, column: 1, scope: !577)
!716 = distinct !DISubprogram(name: "proc_main_print_main_hdr", scope: !4, file: !4, line: 614, type: !717, isLocal: true, isDefinition: true, scopeLine: 615, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !35)
!717 = !DISubroutineType(types: !718)
!718 = !{null, !588}
!719 = !DILocalVariable(name: "hdr", arg: 1, scope: !716, file: !4, line: 614, type: !588)
!720 = !DILocation(line: 614, column: 65, scope: !716)
!721 = !DILocation(line: 616, column: 2, scope: !716)
!722 = !DILocation(line: 617, column: 51, scope: !716)
!723 = !DILocation(line: 617, column: 56, scope: !716)
!724 = !DILocation(line: 617, column: 39, scope: !716)
!725 = !DILocation(line: 617, column: 29, scope: !716)
!726 = !DILocation(line: 617, column: 2, scope: !727)
!727 = !DILexicalBlockFile(scope: !716, file: !4, discriminator: 1)
!728 = !DILocation(line: 618, column: 29, scope: !716)
!729 = !DILocation(line: 618, column: 34, scope: !716)
!730 = !DILocation(line: 618, column: 2, scope: !716)
!731 = !DILocation(line: 619, column: 1, scope: !716)
!732 = distinct !DISubprogram(name: "proc_main_print_part_hdr", scope: !4, file: !4, line: 622, type: !733, isLocal: true, isDefinition: true, scopeLine: 623, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !35)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !592}
!735 = !DILocalVariable(name: "hdr", arg: 1, scope: !732, file: !4, line: 622, type: !592)
!736 = !DILocation(line: 622, column: 65, scope: !732)
!737 = !DILocation(line: 624, column: 2, scope: !732)
!738 = !DILocation(line: 625, column: 28, scope: !732)
!739 = !DILocation(line: 625, column: 33, scope: !732)
!740 = !DILocation(line: 625, column: 67, scope: !732)
!741 = !DILocation(line: 625, column: 72, scope: !732)
!742 = !DILocation(line: 625, column: 39, scope: !732)
!743 = !DILocation(line: 625, column: 2, scope: !744)
!744 = !DILexicalBlockFile(scope: !732, file: !4, discriminator: 1)
!745 = !DILocation(line: 626, column: 23, scope: !732)
!746 = !DILocation(line: 626, column: 28, scope: !732)
!747 = !DILocation(line: 626, column: 2, scope: !732)
!748 = !DILocation(line: 627, column: 1, scope: !732)
!749 = distinct !DISubprogram(name: "proc_part_data", scope: !4, file: !4, line: 588, type: !750, isLocal: true, isDefinition: true, scopeLine: 589, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !35)
!750 = !DISubroutineType(types: !751)
!751 = !{!31, !752, !49, !45, !51}
!752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!753 = !DILocalVariable(name: "type", arg: 1, scope: !749, file: !4, line: 588, type: !752)
!754 = !DILocation(line: 588, column: 42, scope: !749)
!755 = !DILocalVariable(name: "size", arg: 2, scope: !749, file: !4, line: 588, type: !49)
!756 = !DILocation(line: 588, column: 63, scope: !749)
!757 = !DILocalVariable(name: "data", arg: 3, scope: !749, file: !4, line: 588, type: !45)
!758 = !DILocation(line: 588, column: 78, scope: !749)
!759 = !DILocalVariable(name: "opt", arg: 4, scope: !749, file: !4, line: 588, type: !51)
!760 = !DILocation(line: 588, column: 106, scope: !749)
!761 = !DILocation(line: 590, column: 10, scope: !749)
!762 = !DILocation(line: 590, column: 2, scope: !749)
!763 = !DILocation(line: 592, column: 34, scope: !764)
!764 = distinct !DILexicalBlock(scope: !749, file: !4, line: 590, column: 16)
!765 = !DILocation(line: 592, column: 40, scope: !764)
!766 = !DILocation(line: 592, column: 46, scope: !764)
!767 = !DILocation(line: 592, column: 10, scope: !764)
!768 = !DILocation(line: 592, column: 3, scope: !764)
!769 = !DILocation(line: 595, column: 32, scope: !764)
!770 = !DILocation(line: 595, column: 38, scope: !764)
!771 = !DILocation(line: 595, column: 44, scope: !764)
!772 = !DILocation(line: 595, column: 10, scope: !764)
!773 = !DILocation(line: 595, column: 3, scope: !764)
!774 = !DILocation(line: 597, column: 31, scope: !764)
!775 = !DILocation(line: 597, column: 37, scope: !764)
!776 = !DILocation(line: 597, column: 43, scope: !764)
!777 = !DILocation(line: 597, column: 10, scope: !764)
!778 = !DILocation(line: 597, column: 3, scope: !764)
!779 = !DILocation(line: 599, column: 34, scope: !764)
!780 = !DILocation(line: 599, column: 40, scope: !764)
!781 = !DILocation(line: 599, column: 46, scope: !764)
!782 = !DILocation(line: 599, column: 10, scope: !764)
!783 = !DILocation(line: 599, column: 3, scope: !764)
!784 = !DILocation(line: 602, column: 34, scope: !764)
!785 = !DILocation(line: 602, column: 40, scope: !764)
!786 = !DILocation(line: 602, column: 46, scope: !764)
!787 = !DILocation(line: 602, column: 10, scope: !764)
!788 = !DILocation(line: 602, column: 3, scope: !764)
!789 = !DILocation(line: 604, column: 34, scope: !764)
!790 = !DILocation(line: 604, column: 40, scope: !764)
!791 = !DILocation(line: 604, column: 46, scope: !764)
!792 = !DILocation(line: 604, column: 10, scope: !764)
!793 = !DILocation(line: 604, column: 3, scope: !764)
!794 = !DILocation(line: 606, column: 32, scope: !764)
!795 = !DILocation(line: 606, column: 38, scope: !764)
!796 = !DILocation(line: 606, column: 44, scope: !764)
!797 = !DILocation(line: 606, column: 10, scope: !764)
!798 = !DILocation(line: 606, column: 3, scope: !764)
!799 = !DILocation(line: 608, column: 33, scope: !764)
!800 = !DILocation(line: 608, column: 39, scope: !764)
!801 = !DILocation(line: 608, column: 45, scope: !764)
!802 = !DILocation(line: 608, column: 10, scope: !764)
!803 = !DILocation(line: 608, column: 3, scope: !764)
!804 = !DILocation(line: 610, column: 2, scope: !749)
!805 = !DILocation(line: 611, column: 1, scope: !749)
!806 = !DILocalVariable(name: "array", arg: 1, scope: !84, file: !4, line: 125, type: !87)
!807 = !DILocation(line: 125, column: 39, scope: !84)
!808 = !DILocalVariable(name: "len", arg: 2, scope: !84, file: !4, line: 125, type: !89)
!809 = !DILocation(line: 125, column: 61, scope: !84)
!810 = !DILocalVariable(name: "p", scope: !84, file: !4, line: 128, type: !76)
!811 = !DILocation(line: 128, column: 8, scope: !84)
!812 = !DILocalVariable(name: "i", scope: !84, file: !4, line: 129, type: !20)
!813 = !DILocation(line: 129, column: 11, scope: !84)
!814 = !DILocation(line: 131, column: 9, scope: !815)
!815 = distinct !DILexicalBlock(scope: !84, file: !4, line: 131, column: 2)
!816 = !DILocation(line: 131, column: 7, scope: !815)
!817 = !DILocation(line: 131, column: 14, scope: !818)
!818 = !DILexicalBlockFile(scope: !819, file: !4, discriminator: 1)
!819 = distinct !DILexicalBlock(scope: !815, file: !4, line: 131, column: 2)
!820 = !DILocation(line: 131, column: 18, scope: !818)
!821 = !DILocation(line: 131, column: 16, scope: !818)
!822 = !DILocation(line: 131, column: 2, scope: !818)
!823 = !DILocation(line: 132, column: 16, scope: !824)
!824 = distinct !DILexicalBlock(scope: !819, file: !4, line: 131, column: 28)
!825 = !DILocation(line: 132, column: 34, scope: !824)
!826 = !DILocation(line: 132, column: 28, scope: !824)
!827 = !DILocation(line: 132, column: 8, scope: !824)
!828 = !DILocation(line: 132, column: 5, scope: !824)
!829 = !DILocation(line: 133, column: 29, scope: !830)
!830 = distinct !DILexicalBlock(scope: !824, file: !4, line: 133, column: 7)
!831 = !DILocation(line: 133, column: 27, scope: !830)
!832 = !DILocation(line: 133, column: 32, scope: !830)
!833 = !DILocation(line: 133, column: 38, scope: !830)
!834 = !DILocation(line: 133, column: 42, scope: !835)
!835 = !DILexicalBlockFile(scope: !830, file: !4, discriminator: 1)
!836 = !DILocation(line: 133, column: 48, scope: !835)
!837 = !DILocation(line: 133, column: 46, scope: !835)
!838 = !DILocation(line: 133, column: 51, scope: !835)
!839 = !DILocation(line: 133, column: 7, scope: !835)
!840 = !DILocation(line: 134, column: 11, scope: !841)
!841 = distinct !DILexicalBlock(scope: !830, file: !4, line: 133, column: 56)
!842 = !DILocation(line: 134, column: 4, scope: !841)
!843 = !DILocation(line: 135, column: 4, scope: !841)
!844 = !DILocation(line: 137, column: 2, scope: !824)
!845 = !DILocation(line: 131, column: 23, scope: !846)
!846 = !DILexicalBlockFile(scope: !819, file: !4, discriminator: 2)
!847 = !DILocation(line: 131, column: 2, scope: !846)
!848 = distinct !{!848, !849}
!849 = !DILocation(line: 131, column: 2, scope: !84)
!850 = !DILocation(line: 138, column: 6, scope: !851)
!851 = distinct !DILexicalBlock(scope: !84, file: !4, line: 138, column: 6)
!852 = !DILocation(line: 138, column: 13, scope: !851)
!853 = !DILocation(line: 138, column: 10, scope: !851)
!854 = !DILocation(line: 138, column: 6, scope: !84)
!855 = !DILocation(line: 139, column: 5, scope: !851)
!856 = !DILocation(line: 139, column: 10, scope: !851)
!857 = !DILocation(line: 139, column: 3, scope: !851)
!858 = !DILocation(line: 141, column: 2, scope: !84)
!859 = distinct !DISubprogram(name: "type2name", scope: !4, file: !4, line: 106, type: !860, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !35)
!860 = !DISubroutineType(types: !861)
!861 = !{!8, !862, !89}
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!863 = !DILocalVariable(name: "map", arg: 1, scope: !859, file: !4, line: 106, type: !862)
!864 = !DILocation(line: 106, column: 54, scope: !859)
!865 = !DILocalVariable(name: "type", arg: 2, scope: !859, file: !4, line: 106, type: !89)
!866 = !DILocation(line: 106, column: 74, scope: !859)
!867 = !DILocalVariable(name: "e", scope: !859, file: !4, line: 108, type: !862)
!868 = !DILocation(line: 108, column: 26, scope: !859)
!869 = !DILocation(line: 108, column: 30, scope: !859)
!870 = !DILocation(line: 110, column: 2, scope: !859)
!871 = !DILocation(line: 110, column: 9, scope: !872)
!872 = !DILexicalBlockFile(scope: !859, file: !4, discriminator: 1)
!873 = !DILocation(line: 110, column: 12, scope: !872)
!874 = !DILocation(line: 110, column: 17, scope: !872)
!875 = !DILocation(line: 110, column: 2, scope: !872)
!876 = !DILocation(line: 111, column: 7, scope: !877)
!877 = distinct !DILexicalBlock(scope: !878, file: !4, line: 111, column: 7)
!878 = distinct !DILexicalBlock(scope: !859, file: !4, line: 110, column: 25)
!879 = !DILocation(line: 111, column: 10, scope: !877)
!880 = !DILocation(line: 111, column: 16, scope: !877)
!881 = !DILocation(line: 111, column: 13, scope: !877)
!882 = !DILocation(line: 111, column: 7, scope: !878)
!883 = !DILocation(line: 112, column: 11, scope: !877)
!884 = !DILocation(line: 112, column: 14, scope: !877)
!885 = !DILocation(line: 112, column: 4, scope: !877)
!886 = !DILocation(line: 113, column: 3, scope: !878)
!887 = !DILocation(line: 110, column: 2, scope: !888)
!888 = !DILexicalBlockFile(scope: !859, file: !4, discriminator: 2)
!889 = distinct !{!889, !870}
!890 = !DILocation(line: 116, column: 9, scope: !859)
!891 = !DILocation(line: 116, column: 14, scope: !859)
!892 = !DILocation(line: 116, column: 2, scope: !859)
!893 = !DILocation(line: 117, column: 1, scope: !859)
!894 = distinct !DISubprogram(name: "proc_part_data_pkg_desc", scope: !4, file: !4, line: 200, type: !43, isLocal: true, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !35)
!895 = !DILocalVariable(name: "data", arg: 1, scope: !894, file: !4, line: 200, type: !45)
!896 = !DILocation(line: 200, column: 45, scope: !894)
!897 = !DILocalVariable(name: "size", arg: 2, scope: !894, file: !4, line: 200, type: !49)
!898 = !DILocation(line: 200, column: 66, scope: !894)
!899 = !DILocalVariable(name: "opt", arg: 3, scope: !894, file: !4, line: 201, type: !51)
!900 = !DILocation(line: 201, column: 30, scope: !894)
!901 = !DILocation(line: 203, column: 11, scope: !894)
!902 = !DILocation(line: 203, column: 16, scope: !894)
!903 = !DILocation(line: 203, column: 2, scope: !894)
!904 = !DILocalVariable(name: "buf", scope: !894, file: !4, line: 203, type: !905)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, align: 8, elements: !906)
!906 = !{!907}
!907 = !DISubrange(count: -1)
!908 = !DIExpression(DW_OP_deref)
!909 = !DILocation(line: 203, column: 7, scope: !894)
!910 = !DILocalVariable(name: "p", scope: !894, file: !4, line: 203, type: !76)
!911 = !DILocation(line: 203, column: 23, scope: !894)
!912 = !DILocalVariable(name: "e", scope: !894, file: !4, line: 203, type: !76)
!913 = !DILocation(line: 203, column: 27, scope: !894)
!914 = !DILocalVariable(name: "len", scope: !894, file: !4, line: 204, type: !915)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !916, line: 216, baseType: !135)
!916 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/npk-tools/[task]unnpk")
!917 = !DILocation(line: 204, column: 9, scope: !894)
!918 = !DILocation(line: 204, column: 31, scope: !894)
!919 = !DILocation(line: 204, column: 37, scope: !894)
!920 = !DILocation(line: 204, column: 15, scope: !894)
!921 = !DILocation(line: 206, column: 7, scope: !922)
!922 = distinct !DILexicalBlock(scope: !894, file: !4, line: 206, column: 6)
!923 = !DILocation(line: 206, column: 12, scope: !922)
!924 = !DILocation(line: 206, column: 18, scope: !922)
!925 = !DILocation(line: 206, column: 26, scope: !922)
!926 = !DILocation(line: 206, column: 6, scope: !894)
!927 = !DILocation(line: 207, column: 3, scope: !922)
!928 = !DILocation(line: 209, column: 23, scope: !894)
!929 = !DILocation(line: 209, column: 29, scope: !894)
!930 = !DILocation(line: 209, column: 2, scope: !894)
!931 = !DILocation(line: 210, column: 6, scope: !894)
!932 = !DILocation(line: 210, column: 2, scope: !894)
!933 = !DILocation(line: 210, column: 11, scope: !894)
!934 = !DILocation(line: 212, column: 4, scope: !894)
!935 = !DILocation(line: 213, column: 12, scope: !894)
!936 = !DILocation(line: 213, column: 10, scope: !894)
!937 = !DILocation(line: 213, column: 16, scope: !894)
!938 = !DILocation(line: 213, column: 4, scope: !894)
!939 = !DILocation(line: 216, column: 2, scope: !894)
!940 = !DILocation(line: 216, column: 10, scope: !941)
!941 = !DILexicalBlockFile(scope: !894, file: !4, discriminator: 1)
!942 = !DILocation(line: 216, column: 9, scope: !941)
!943 = !DILocation(line: 216, column: 12, scope: !941)
!944 = !DILocation(line: 216, column: 20, scope: !941)
!945 = !DILocation(line: 216, column: 24, scope: !946)
!946 = !DILexicalBlockFile(scope: !894, file: !4, discriminator: 2)
!947 = !DILocation(line: 216, column: 23, scope: !946)
!948 = !DILocation(line: 216, column: 26, scope: !946)
!949 = !DILocation(line: 216, column: 20, scope: !946)
!950 = !DILocation(line: 216, column: 2, scope: !951)
!951 = !DILexicalBlockFile(scope: !894, file: !4, discriminator: 3)
!952 = !DILocation(line: 217, column: 4, scope: !894)
!953 = !DILocation(line: 216, column: 2, scope: !954)
!954 = !DILexicalBlockFile(scope: !894, file: !4, discriminator: 4)
!955 = distinct !{!955, !939}
!956 = !DILocation(line: 219, column: 2, scope: !894)
!957 = !DILocation(line: 219, column: 10, scope: !941)
!958 = !DILocation(line: 219, column: 9, scope: !941)
!959 = !DILocation(line: 219, column: 12, scope: !941)
!960 = !DILocation(line: 219, column: 20, scope: !941)
!961 = !DILocation(line: 219, column: 24, scope: !946)
!962 = !DILocation(line: 219, column: 23, scope: !946)
!963 = !DILocation(line: 219, column: 26, scope: !946)
!964 = !DILocation(line: 219, column: 20, scope: !946)
!965 = !DILocation(line: 219, column: 2, scope: !951)
!966 = !DILocation(line: 220, column: 4, scope: !894)
!967 = !DILocation(line: 219, column: 2, scope: !954)
!968 = distinct !{!968, !956}
!969 = !DILocation(line: 222, column: 38, scope: !894)
!970 = !DILocation(line: 222, column: 42, scope: !894)
!971 = !DILocation(line: 222, column: 40, scope: !894)
!972 = !DILocation(line: 222, column: 44, scope: !894)
!973 = !DILocation(line: 222, column: 32, scope: !894)
!974 = !DILocation(line: 222, column: 50, scope: !894)
!975 = !DILocation(line: 222, column: 2, scope: !894)
!976 = !DILocation(line: 224, column: 2, scope: !894)
!977 = !DILocation(line: 225, column: 1, scope: !894)
!978 = distinct !DISubprogram(name: "proc_part_data_script", scope: !4, file: !4, line: 418, type: !979, isLocal: true, isDefinition: true, scopeLine: 419, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !35)
!979 = !DISubroutineType(types: !980)
!980 = !{!31, !87, !49, !51}
!981 = !DILocalVariable(name: "data", arg: 1, scope: !978, file: !4, line: 418, type: !87)
!982 = !DILocation(line: 418, column: 49, scope: !978)
!983 = !DILocalVariable(name: "size", arg: 2, scope: !978, file: !4, line: 418, type: !49)
!984 = !DILocation(line: 418, column: 70, scope: !978)
!985 = !DILocalVariable(name: "opt", arg: 3, scope: !978, file: !4, line: 418, type: !51)
!986 = !DILocation(line: 418, column: 98, scope: !978)
!987 = !DILocation(line: 420, column: 6, scope: !988)
!988 = distinct !DILexicalBlock(scope: !978, file: !4, line: 420, column: 6)
!989 = !DILocation(line: 420, column: 11, scope: !988)
!990 = !DILocation(line: 420, column: 16, scope: !988)
!991 = !DILocation(line: 420, column: 6, scope: !978)
!992 = !DILocation(line: 421, column: 3, scope: !988)
!993 = !DILocation(line: 423, column: 28, scope: !978)
!994 = !DILocation(line: 423, column: 34, scope: !978)
!995 = !DILocation(line: 423, column: 2, scope: !978)
!996 = !DILocation(line: 425, column: 2, scope: !978)
!997 = !DILocation(line: 426, column: 1, scope: !978)
!998 = !DILocalVariable(name: "data", arg: 1, scope: !42, file: !4, line: 234, type: !45)
!999 = !DILocation(line: 234, column: 42, scope: !42)
!1000 = !DILocalVariable(name: "size", arg: 2, scope: !42, file: !4, line: 234, type: !49)
!1001 = !DILocation(line: 234, column: 63, scope: !42)
!1002 = !DILocalVariable(name: "opt", arg: 3, scope: !42, file: !4, line: 234, type: !51)
!1003 = !DILocation(line: 234, column: 91, scope: !42)
!1004 = !DILocalVariable(name: "ret", scope: !42, file: !4, line: 236, type: !31)
!1005 = !DILocation(line: 236, column: 6, scope: !42)
!1006 = !DILocalVariable(name: "have", scope: !42, file: !4, line: 237, type: !20)
!1007 = !DILocation(line: 237, column: 11, scope: !42)
!1008 = !DILocalVariable(name: "zstm", scope: !42, file: !4, line: 238, type: !1009)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !1010, line: 106, baseType: !1011)
!1010 = !DIFile(filename: "/usr/local/include/zlib.h", directory: "/home/lichi/Desktop/npk-tools/[task]unnpk")
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !1010, line: 86, size: 896, align: 64, elements: !1012)
!1012 = !{!1013, !1018, !1020, !1022, !1023, !1024, !1025, !1026, !1029, !1035, !1040, !1041, !1042, !1043}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !1011, file: !1010, line: 87, baseType: !1014, size: 64, align: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64, align: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bytef", file: !1016, line: 400, baseType: !1017)
!1016 = !DIFile(filename: "/usr/local/include/zconf.h", directory: "/home/lichi/Desktop/npk-tools/[task]unnpk")
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !1016, line: 391, baseType: !48)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !1011, file: !1010, line: 88, baseType: !1019, size: 32, align: 32, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "uInt", file: !1016, line: 393, baseType: !20)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !1011, file: !1010, line: 89, baseType: !1021, size: 64, align: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !1016, line: 394, baseType: !135)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !1011, file: !1010, line: 91, baseType: !1014, size: 64, align: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !1011, file: !1010, line: 92, baseType: !1019, size: 32, align: 32, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !1011, file: !1010, line: 93, baseType: !1021, size: 64, align: 64, offset: 320)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !1011, file: !1010, line: 95, baseType: !76, size: 64, align: 64, offset: 384)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1011, file: !1010, line: 96, baseType: !1027, size: 64, align: 64, offset: 448)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64, align: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !1010, line: 84, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "zalloc", scope: !1011, file: !1010, line: 98, baseType: !1030, size: 64, align: 64, offset: 512)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_func", file: !1010, line: 81, baseType: !1031)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64, align: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!1034, !1034, !1019, !1019}
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidpf", file: !1016, line: 409, baseType: !62)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "zfree", scope: !1011, file: !1010, line: 99, baseType: !1036, size: 64, align: 64, offset: 576)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "free_func", file: !1010, line: 82, baseType: !1037)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64, align: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{null, !1034, !1034}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !1011, file: !1010, line: 100, baseType: !1034, size: 64, align: 64, offset: 640)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !1011, file: !1010, line: 102, baseType: !31, size: 32, align: 32, offset: 704)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !1011, file: !1010, line: 104, baseType: !1021, size: 64, align: 64, offset: 768)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1011, file: !1010, line: 105, baseType: !1021, size: 64, align: 64, offset: 832)
!1044 = !DILocation(line: 238, column: 11, scope: !42)
!1045 = !DILocalVariable(name: "out", scope: !42, file: !4, line: 239, type: !1046)
!1046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 131072, align: 8, elements: !1047)
!1047 = !{!1048}
!1048 = !DISubrange(count: 16384)
!1049 = !DILocation(line: 239, column: 10, scope: !42)
!1050 = !DILocalVariable(name: "p", scope: !42, file: !4, line: 239, type: !45)
!1051 = !DILocation(line: 239, column: 27, scope: !42)
!1052 = !DILocalVariable(name: "tmp", scope: !42, file: !4, line: 240, type: !76)
!1053 = !DILocation(line: 240, column: 8, scope: !42)
!1054 = !DILocalVariable(name: "file_out", scope: !42, file: !4, line: 241, type: !1055)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64, align: 64)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !13, line: 48, baseType: !1057)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1058, line: 241, size: 1728, align: 64, elements: !1059)
!1058 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/npk-tools/[task]unnpk")
!1059 = !{!1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1080, !1081, !1082, !1083, !1084, !1085, !1087, !1091, !1094, !1096, !1097, !1098, !1099, !1100, !1101, !1102}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1057, file: !1058, line: 242, baseType: !31, size: 32, align: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1057, file: !1058, line: 247, baseType: !76, size: 64, align: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1057, file: !1058, line: 248, baseType: !76, size: 64, align: 64, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1057, file: !1058, line: 249, baseType: !76, size: 64, align: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1057, file: !1058, line: 250, baseType: !76, size: 64, align: 64, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1057, file: !1058, line: 251, baseType: !76, size: 64, align: 64, offset: 320)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1057, file: !1058, line: 252, baseType: !76, size: 64, align: 64, offset: 384)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1057, file: !1058, line: 253, baseType: !76, size: 64, align: 64, offset: 448)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1057, file: !1058, line: 254, baseType: !76, size: 64, align: 64, offset: 512)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1057, file: !1058, line: 256, baseType: !76, size: 64, align: 64, offset: 576)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1057, file: !1058, line: 257, baseType: !76, size: 64, align: 64, offset: 640)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1057, file: !1058, line: 258, baseType: !76, size: 64, align: 64, offset: 704)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1057, file: !1058, line: 260, baseType: !1073, size: 64, align: 64, offset: 768)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64, align: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1058, line: 156, size: 192, align: 64, elements: !1075)
!1075 = !{!1076, !1077, !1079}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1074, file: !1058, line: 157, baseType: !1073, size: 64, align: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1074, file: !1058, line: 158, baseType: !1078, size: 64, align: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64, align: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1074, file: !1058, line: 162, baseType: !31, size: 32, align: 32, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1057, file: !1058, line: 262, baseType: !1078, size: 64, align: 64, offset: 832)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1057, file: !1058, line: 264, baseType: !31, size: 32, align: 32, offset: 896)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1057, file: !1058, line: 268, baseType: !31, size: 32, align: 32, offset: 928)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1057, file: !1058, line: 270, baseType: !14, size: 64, align: 64, offset: 960)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1057, file: !1058, line: 274, baseType: !74, size: 16, align: 16, offset: 1024)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1057, file: !1058, line: 275, baseType: !1086, size: 8, align: 8, offset: 1040)
!1086 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1057, file: !1058, line: 276, baseType: !1088, size: 8, align: 8, offset: 1048)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8, align: 8, elements: !1089)
!1089 = !{!1090}
!1090 = !DISubrange(count: 1)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1057, file: !1058, line: 280, baseType: !1092, size: 64, align: 64, offset: 1088)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64, align: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1058, line: 150, baseType: null)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1057, file: !1058, line: 289, baseType: !1095, size: 64, align: 64, offset: 1152)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !15, line: 132, baseType: !16)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1057, file: !1058, line: 297, baseType: !62, size: 64, align: 64, offset: 1216)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1057, file: !1058, line: 298, baseType: !62, size: 64, align: 64, offset: 1280)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1057, file: !1058, line: 299, baseType: !62, size: 64, align: 64, offset: 1344)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1057, file: !1058, line: 300, baseType: !62, size: 64, align: 64, offset: 1408)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1057, file: !1058, line: 302, baseType: !915, size: 64, align: 64, offset: 1472)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1057, file: !1058, line: 303, baseType: !31, size: 32, align: 32, offset: 1536)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1057, file: !1058, line: 305, baseType: !1103, size: 160, align: 8, offset: 1568)
!1103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 160, align: 8, elements: !1104)
!1104 = !{!1105}
!1105 = !DISubrange(count: 20)
!1106 = !DILocation(line: 241, column: 8, scope: !42)
!1107 = !DILocalVariable(name: "hdr", scope: !42, file: !4, line: 242, type: !1108)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "npk_part_file_item_hdr", file: !65, line: 78, size: 240, align: 8, elements: !1109)
!1109 = !{!1110, !1111, !1112, !1116, !1117, !1118, !1120, !1121, !1122, !1124, !1125, !1126}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1108, file: !65, line: 79, baseType: !46, size: 8, align: 8)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1108, file: !65, line: 80, baseType: !46, size: 8, align: 8, offset: 8)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "usr_or_grp", scope: !1108, file: !65, line: 81, baseType: !1113, size: 48, align: 8, offset: 16)
!1113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 48, align: 8, elements: !1114)
!1114 = !{!1115}
!1115 = !DISubrange(count: 6)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1108, file: !65, line: 82, baseType: !50, size: 32, align: 32, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !1108, file: !65, line: 83, baseType: !46, size: 8, align: 8, offset: 96)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "unk_10", scope: !1108, file: !65, line: 84, baseType: !1119, size: 8, align: 8, offset: 104)
!1119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8, align: 8, elements: !1089)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "ver_min", scope: !1108, file: !65, line: 85, baseType: !46, size: 8, align: 8, offset: 112)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "ver_maj", scope: !1108, file: !65, line: 86, baseType: !46, size: 8, align: 8, offset: 120)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "ver_2", scope: !1108, file: !65, line: 87, baseType: !1123, size: 32, align: 8, offset: 128)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32, align: 8, elements: !104)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "unk_20", scope: !1108, file: !65, line: 88, baseType: !1123, size: 32, align: 8, offset: 160)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !1108, file: !65, line: 89, baseType: !50, size: 32, align: 32, offset: 192)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "name_len", scope: !1108, file: !65, line: 90, baseType: !73, size: 16, align: 16, offset: 224)
!1127 = !DILocation(line: 242, column: 32, scope: !42)
!1128 = !DILocalVariable(name: "state", scope: !42, file: !4, line: 251, type: !41)
!1129 = !DILocation(line: 251, column: 4, scope: !42)
!1130 = !DILocation(line: 253, column: 7, scope: !42)
!1131 = !DILocation(line: 253, column: 14, scope: !42)
!1132 = !DILocation(line: 254, column: 7, scope: !42)
!1133 = !DILocation(line: 254, column: 13, scope: !42)
!1134 = !DILocation(line: 255, column: 7, scope: !42)
!1135 = !DILocation(line: 255, column: 14, scope: !42)
!1136 = !DILocation(line: 256, column: 7, scope: !42)
!1137 = !DILocation(line: 256, column: 16, scope: !42)
!1138 = !DILocation(line: 257, column: 7, scope: !42)
!1139 = !DILocation(line: 257, column: 15, scope: !42)
!1140 = !DILocation(line: 258, column: 7, scope: !42)
!1141 = !DILocation(line: 258, column: 6, scope: !42)
!1142 = !DILocation(line: 259, column: 6, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !42, file: !4, line: 259, column: 6)
!1144 = !DILocation(line: 259, column: 10, scope: !1143)
!1145 = !DILocation(line: 259, column: 6, scope: !42)
!1146 = !DILocation(line: 260, column: 3, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1143, file: !4, line: 259, column: 18)
!1148 = !DILocation(line: 261, column: 3, scope: !1147)
!1149 = !DILocation(line: 264, column: 18, scope: !42)
!1150 = !DILocation(line: 264, column: 7, scope: !42)
!1151 = !DILocation(line: 264, column: 16, scope: !42)
!1152 = !DILocation(line: 265, column: 17, scope: !42)
!1153 = !DILocation(line: 265, column: 7, scope: !42)
!1154 = !DILocation(line: 265, column: 15, scope: !42)
!1155 = !DILocation(line: 266, column: 8, scope: !42)
!1156 = !DILocation(line: 267, column: 7, scope: !42)
!1157 = !DILocation(line: 269, column: 2, scope: !42)
!1158 = !DILocation(line: 269, column: 9, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !42, file: !4, discriminator: 1)
!1160 = !DILocation(line: 269, column: 15, scope: !1159)
!1161 = !DILocation(line: 269, column: 2, scope: !1159)
!1162 = !DILocation(line: 270, column: 11, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !42, file: !4, line: 269, column: 27)
!1164 = !DILocation(line: 270, column: 3, scope: !1163)
!1165 = !DILocation(line: 274, column: 18, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !4, line: 274, column: 8)
!1167 = distinct !DILexicalBlock(scope: !1163, file: !4, line: 270, column: 18)
!1168 = !DILocation(line: 274, column: 10, scope: !1166)
!1169 = !DILocation(line: 274, column: 8, scope: !1167)
!1170 = !DILocation(line: 275, column: 27, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !4, line: 275, column: 9)
!1172 = distinct !DILexicalBlock(scope: !1166, file: !4, line: 274, column: 28)
!1173 = !DILocation(line: 275, column: 24, scope: !1171)
!1174 = !DILocation(line: 275, column: 9, scope: !1172)
!1175 = !DILocation(line: 276, column: 13, scope: !1171)
!1176 = !DILocation(line: 276, column: 6, scope: !1171)
!1177 = !DILocation(line: 277, column: 11, scope: !1172)
!1178 = !DILocation(line: 278, column: 5, scope: !1172)
!1179 = !DILocation(line: 280, column: 8, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1167, file: !4, line: 280, column: 8)
!1181 = !DILocation(line: 280, column: 8, scope: !1167)
!1182 = !DILocation(line: 281, column: 5, scope: !1180)
!1183 = !DILocation(line: 281, column: 18, scope: !1180)
!1184 = !DILocation(line: 281, column: 21, scope: !1180)
!1185 = !DILocation(line: 282, column: 8, scope: !1167)
!1186 = !DILocation(line: 282, column: 6, scope: !1167)
!1187 = !DILocation(line: 283, column: 35, scope: !1167)
!1188 = !DILocation(line: 283, column: 33, scope: !1167)
!1189 = !DILocation(line: 283, column: 21, scope: !1167)
!1190 = !DILocation(line: 283, column: 9, scope: !1167)
!1191 = !DILocation(line: 283, column: 19, scope: !1167)
!1192 = !DILocation(line: 284, column: 20, scope: !1167)
!1193 = !DILocation(line: 284, column: 26, scope: !1167)
!1194 = !DILocation(line: 284, column: 24, scope: !1167)
!1195 = !DILocation(line: 284, column: 9, scope: !1167)
!1196 = !DILocation(line: 284, column: 18, scope: !1167)
!1197 = !DILocation(line: 285, column: 10, scope: !1167)
!1198 = !DILocation(line: 285, column: 8, scope: !1167)
!1199 = !DILocation(line: 286, column: 8, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1167, file: !4, line: 286, column: 8)
!1201 = !DILocation(line: 286, column: 12, scope: !1200)
!1202 = !DILocation(line: 286, column: 19, scope: !1200)
!1203 = !DILocation(line: 286, column: 22, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !1200, file: !4, discriminator: 1)
!1205 = !DILocation(line: 286, column: 26, scope: !1204)
!1206 = !DILocation(line: 286, column: 8, scope: !1204)
!1207 = !DILocation(line: 287, column: 11, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1200, file: !4, line: 286, column: 43)
!1209 = !DILocation(line: 288, column: 5, scope: !1208)
!1210 = !DILocation(line: 289, column: 5, scope: !1208)
!1211 = !DILocation(line: 291, column: 30, scope: !1167)
!1212 = !DILocation(line: 291, column: 25, scope: !1167)
!1213 = !DILocation(line: 291, column: 23, scope: !1167)
!1214 = !DILocation(line: 291, column: 11, scope: !1167)
!1215 = !DILocation(line: 291, column: 9, scope: !1167)
!1216 = !DILocation(line: 292, column: 26, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1167, file: !4, line: 292, column: 8)
!1218 = !DILocation(line: 292, column: 23, scope: !1217)
!1219 = !DILocation(line: 292, column: 8, scope: !1167)
!1220 = !DILocation(line: 293, column: 11, scope: !1217)
!1221 = !DILocation(line: 293, column: 5, scope: !1217)
!1222 = !DILocation(line: 294, column: 32, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1217, file: !4, line: 294, column: 13)
!1224 = !DILocation(line: 294, column: 29, scope: !1223)
!1225 = !DILocation(line: 294, column: 13, scope: !1217)
!1226 = !DILocation(line: 295, column: 11, scope: !1223)
!1227 = !DILocation(line: 295, column: 5, scope: !1223)
!1228 = !DILocation(line: 296, column: 32, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1223, file: !4, line: 296, column: 13)
!1230 = !DILocation(line: 296, column: 29, scope: !1229)
!1231 = !DILocation(line: 296, column: 13, scope: !1223)
!1232 = !DILocation(line: 297, column: 11, scope: !1229)
!1233 = !DILocation(line: 297, column: 5, scope: !1229)
!1234 = !DILocation(line: 299, column: 11, scope: !1229)
!1235 = !DILocation(line: 300, column: 4, scope: !1167)
!1236 = !DILocation(line: 303, column: 8, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1167, file: !4, line: 303, column: 8)
!1238 = !DILocation(line: 303, column: 13, scope: !1237)
!1239 = !DILocation(line: 303, column: 8, scope: !1167)
!1240 = !DILocation(line: 304, column: 11, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !4, line: 303, column: 28)
!1242 = !DILocation(line: 305, column: 5, scope: !1241)
!1243 = !DILocation(line: 307, column: 4, scope: !1167)
!1244 = !DILocation(line: 307, column: 17, scope: !1167)
!1245 = !DILocation(line: 308, column: 8, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1167, file: !4, line: 308, column: 8)
!1247 = !DILocation(line: 308, column: 13, scope: !1246)
!1248 = !DILocation(line: 308, column: 19, scope: !1246)
!1249 = !DILocation(line: 308, column: 8, scope: !1167)
!1250 = !DILocation(line: 309, column: 5, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1246, file: !4, line: 308, column: 27)
!1252 = !DILocation(line: 310, column: 39, scope: !1251)
!1253 = !DILocation(line: 310, column: 35, scope: !1251)
!1254 = !DILocation(line: 310, column: 77, scope: !1251)
!1255 = !DILocation(line: 310, column: 73, scope: !1251)
!1256 = !DILocation(line: 310, column: 45, scope: !1251)
!1257 = !DILocation(line: 310, column: 5, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !1251, file: !4, discriminator: 1)
!1259 = !DILocation(line: 311, column: 39, scope: !1251)
!1260 = !DILocation(line: 311, column: 35, scope: !1251)
!1261 = !DILocation(line: 311, column: 77, scope: !1251)
!1262 = !DILocation(line: 311, column: 73, scope: !1251)
!1263 = !DILocation(line: 311, column: 45, scope: !1251)
!1264 = !DILocation(line: 311, column: 5, scope: !1258)
!1265 = !DILocation(line: 312, column: 44, scope: !1251)
!1266 = !DILocation(line: 312, column: 40, scope: !1251)
!1267 = !DILocation(line: 312, column: 30, scope: !1251)
!1268 = !DILocation(line: 312, column: 5, scope: !1258)
!1269 = !DILocation(line: 313, column: 34, scope: !1251)
!1270 = !DILocation(line: 313, column: 5, scope: !1251)
!1271 = !DILocation(line: 314, column: 34, scope: !1251)
!1272 = !DILocation(line: 314, column: 30, scope: !1251)
!1273 = !DILocation(line: 314, column: 5, scope: !1251)
!1274 = !DILocation(line: 315, column: 44, scope: !1251)
!1275 = !DILocation(line: 315, column: 40, scope: !1251)
!1276 = !DILocation(line: 315, column: 30, scope: !1251)
!1277 = !DILocation(line: 315, column: 5, scope: !1258)
!1278 = !DILocation(line: 316, column: 34, scope: !1251)
!1279 = !DILocation(line: 316, column: 30, scope: !1251)
!1280 = !DILocation(line: 316, column: 5, scope: !1251)
!1281 = !DILocation(line: 317, column: 34, scope: !1251)
!1282 = !DILocation(line: 317, column: 30, scope: !1251)
!1283 = !DILocation(line: 317, column: 5, scope: !1251)
!1284 = !DILocation(line: 318, column: 44, scope: !1251)
!1285 = !DILocation(line: 318, column: 40, scope: !1251)
!1286 = !DILocation(line: 318, column: 30, scope: !1251)
!1287 = !DILocation(line: 318, column: 5, scope: !1258)
!1288 = !DILocation(line: 319, column: 44, scope: !1251)
!1289 = !DILocation(line: 319, column: 40, scope: !1251)
!1290 = !DILocation(line: 319, column: 30, scope: !1251)
!1291 = !DILocation(line: 319, column: 5, scope: !1258)
!1292 = !DILocation(line: 320, column: 34, scope: !1251)
!1293 = !DILocation(line: 320, column: 5, scope: !1251)
!1294 = !DILocation(line: 321, column: 34, scope: !1251)
!1295 = !DILocation(line: 321, column: 30, scope: !1251)
!1296 = !DILocation(line: 321, column: 5, scope: !1251)
!1297 = !DILocation(line: 322, column: 4, scope: !1251)
!1298 = !DILocation(line: 323, column: 6, scope: !1167)
!1299 = !DILocation(line: 324, column: 9, scope: !1167)
!1300 = !DILocation(line: 325, column: 10, scope: !1167)
!1301 = !DILocation(line: 326, column: 4, scope: !1167)
!1302 = !DILocation(line: 329, column: 8, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1167, file: !4, line: 329, column: 8)
!1304 = !DILocation(line: 329, column: 19, scope: !1303)
!1305 = !DILocation(line: 329, column: 15, scope: !1303)
!1306 = !DILocation(line: 329, column: 13, scope: !1303)
!1307 = !DILocation(line: 329, column: 8, scope: !1167)
!1308 = !DILocation(line: 330, column: 11, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1303, file: !4, line: 329, column: 29)
!1310 = !DILocation(line: 331, column: 5, scope: !1309)
!1311 = !DILocation(line: 333, column: 16, scope: !1167)
!1312 = !DILocation(line: 333, column: 12, scope: !1167)
!1313 = !DILocation(line: 333, column: 9, scope: !1167)
!1314 = !DILocation(line: 334, column: 10, scope: !1167)
!1315 = !DILocation(line: 335, column: 21, scope: !1167)
!1316 = !DILocation(line: 335, column: 17, scope: !1167)
!1317 = !DILocation(line: 335, column: 30, scope: !1167)
!1318 = !DILocation(line: 335, column: 10, scope: !1167)
!1319 = !DILocation(line: 335, column: 8, scope: !1167)
!1320 = !DILocation(line: 336, column: 15, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1167, file: !4, line: 336, column: 7)
!1322 = !DILocation(line: 336, column: 12, scope: !1321)
!1323 = !DILocation(line: 336, column: 7, scope: !1167)
!1324 = !DILocation(line: 337, column: 5, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1321, file: !4, line: 336, column: 20)
!1326 = !DILocation(line: 338, column: 14, scope: !1325)
!1327 = !DILocation(line: 338, column: 10, scope: !1325)
!1328 = !DILocation(line: 338, column: 7, scope: !1325)
!1329 = !DILocation(line: 339, column: 5, scope: !1325)
!1330 = !DILocation(line: 341, column: 12, scope: !1167)
!1331 = !DILocation(line: 341, column: 4, scope: !1167)
!1332 = !DILocation(line: 341, column: 22, scope: !1167)
!1333 = !DILocation(line: 342, column: 12, scope: !1167)
!1334 = !DILocation(line: 342, column: 25, scope: !1167)
!1335 = !DILocation(line: 342, column: 32, scope: !1167)
!1336 = !DILocation(line: 342, column: 28, scope: !1167)
!1337 = !DILocation(line: 342, column: 4, scope: !1167)
!1338 = !DILocation(line: 343, column: 8, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1167, file: !4, line: 343, column: 8)
!1340 = !DILocation(line: 343, column: 13, scope: !1339)
!1341 = !DILocation(line: 343, column: 19, scope: !1339)
!1342 = !DILocation(line: 343, column: 8, scope: !1167)
!1343 = !DILocation(line: 344, column: 30, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1339, file: !4, line: 343, column: 27)
!1345 = !DILocation(line: 344, column: 5, scope: !1344)
!1346 = !DILocation(line: 345, column: 4, scope: !1344)
!1347 = !DILocation(line: 345, column: 15, scope: !1348)
!1348 = !DILexicalBlockFile(scope: !1349, file: !4, discriminator: 1)
!1349 = distinct !DILexicalBlock(scope: !1339, file: !4, line: 345, column: 15)
!1350 = !DILocation(line: 345, column: 20, scope: !1348)
!1351 = !DILocation(line: 345, column: 26, scope: !1348)
!1352 = !DILocation(line: 346, column: 19, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !4, line: 346, column: 9)
!1354 = distinct !DILexicalBlock(scope: !1349, file: !4, line: 345, column: 34)
!1355 = !DILocation(line: 346, column: 15, scope: !1353)
!1356 = !DILocation(line: 346, column: 12, scope: !1353)
!1357 = !DILocation(line: 346, column: 9, scope: !1354)
!1358 = !DILocation(line: 347, column: 23, scope: !1353)
!1359 = !DILocation(line: 347, column: 36, scope: !1353)
!1360 = !DILocation(line: 347, column: 32, scope: !1353)
!1361 = !DILocation(line: 347, column: 45, scope: !1353)
!1362 = !DILocation(line: 347, column: 28, scope: !1353)
!1363 = !DILocation(line: 347, column: 50, scope: !1353)
!1364 = !DILocation(line: 347, column: 6, scope: !1353)
!1365 = !DILocation(line: 349, column: 21, scope: !1353)
!1366 = !DILocation(line: 349, column: 6, scope: !1353)
!1367 = !DILocation(line: 350, column: 4, scope: !1354)
!1368 = !DILocation(line: 351, column: 8, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1167, file: !4, line: 351, column: 8)
!1370 = !DILocation(line: 351, column: 13, scope: !1369)
!1371 = !DILocation(line: 351, column: 16, scope: !1369)
!1372 = !DILocation(line: 351, column: 8, scope: !1167)
!1373 = !DILocation(line: 352, column: 18, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !4, line: 352, column: 9)
!1375 = distinct !DILexicalBlock(scope: !1369, file: !4, line: 351, column: 31)
!1376 = !DILocation(line: 352, column: 9, scope: !1374)
!1377 = !DILocation(line: 352, column: 20, scope: !1374)
!1378 = !DILocation(line: 352, column: 9, scope: !1375)
!1379 = !DILocation(line: 353, column: 6, scope: !1374)
!1380 = !DILocation(line: 354, column: 19, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1375, file: !4, line: 354, column: 9)
!1382 = !DILocation(line: 354, column: 15, scope: !1381)
!1383 = !DILocation(line: 354, column: 12, scope: !1381)
!1384 = !DILocation(line: 354, column: 9, scope: !1375)
!1385 = !DILocation(line: 355, column: 18, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1381, file: !4, line: 354, column: 25)
!1387 = !DILocation(line: 355, column: 6, scope: !1386)
!1388 = !DILocation(line: 356, column: 5, scope: !1386)
!1389 = !DILocation(line: 357, column: 23, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1381, file: !4, line: 356, column: 12)
!1391 = !DILocation(line: 357, column: 6, scope: !1390)
!1392 = !DILocation(line: 358, column: 23, scope: !1390)
!1393 = !DILocation(line: 358, column: 17, scope: !1390)
!1394 = !DILocation(line: 358, column: 15, scope: !1390)
!1395 = !DILocation(line: 359, column: 17, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1390, file: !4, line: 359, column: 9)
!1397 = !DILocation(line: 359, column: 14, scope: !1396)
!1398 = !DILocation(line: 359, column: 9, scope: !1390)
!1399 = !DILocation(line: 360, column: 14, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !4, line: 359, column: 27)
!1401 = !DILocation(line: 360, column: 39, scope: !1400)
!1402 = !DILocation(line: 360, column: 55, scope: !1400)
!1403 = !DILocation(line: 360, column: 54, scope: !1400)
!1404 = !DILocation(line: 360, column: 44, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1400, file: !4, discriminator: 1)
!1406 = !DILocation(line: 360, column: 7, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !1400, file: !4, discriminator: 2)
!1408 = !DILocation(line: 361, column: 7, scope: !1400)
!1409 = !DILocation(line: 364, column: 18, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1375, file: !4, line: 364, column: 9)
!1411 = !DILocation(line: 364, column: 9, scope: !1410)
!1412 = !DILocation(line: 364, column: 20, scope: !1410)
!1413 = !DILocation(line: 364, column: 9, scope: !1375)
!1414 = !DILocation(line: 365, column: 6, scope: !1410)
!1415 = !DILocation(line: 366, column: 4, scope: !1375)
!1416 = !DILocation(line: 367, column: 9, scope: !1167)
!1417 = !DILocation(line: 367, column: 4, scope: !1167)
!1418 = !DILocation(line: 368, column: 13, scope: !1167)
!1419 = !DILocation(line: 368, column: 9, scope: !1167)
!1420 = !DILocation(line: 368, column: 6, scope: !1167)
!1421 = !DILocation(line: 369, column: 4, scope: !1167)
!1422 = !DILocation(line: 372, column: 8, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1167, file: !4, line: 372, column: 8)
!1424 = !DILocation(line: 372, column: 20, scope: !1423)
!1425 = !DILocation(line: 372, column: 13, scope: !1423)
!1426 = !DILocation(line: 372, column: 8, scope: !1167)
!1427 = !DILocation(line: 373, column: 9, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !4, line: 373, column: 9)
!1429 = distinct !DILexicalBlock(scope: !1423, file: !4, line: 372, column: 31)
!1430 = !DILocation(line: 373, column: 18, scope: !1428)
!1431 = !DILocation(line: 373, column: 9, scope: !1429)
!1432 = !DILocation(line: 374, column: 14, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !4, line: 374, column: 10)
!1434 = distinct !DILexicalBlock(scope: !1428, file: !4, line: 373, column: 26)
!1435 = !DILocation(line: 374, column: 24, scope: !1433)
!1436 = !DILocation(line: 374, column: 29, scope: !1433)
!1437 = !DILocation(line: 374, column: 44, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1433, file: !4, discriminator: 1)
!1439 = !DILocation(line: 374, column: 51, scope: !1438)
!1440 = !DILocation(line: 374, column: 47, scope: !1438)
!1441 = !DILocation(line: 374, column: 65, scope: !1438)
!1442 = !DILocation(line: 374, column: 37, scope: !1438)
!1443 = !DILocation(line: 374, column: 34, scope: !1438)
!1444 = !DILocation(line: 374, column: 10, scope: !1438)
!1445 = !DILocation(line: 375, column: 14, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1433, file: !4, line: 374, column: 76)
!1447 = !DILocation(line: 375, column: 7, scope: !1446)
!1448 = !DILocation(line: 376, column: 14, scope: !1446)
!1449 = !DILocation(line: 376, column: 7, scope: !1446)
!1450 = !DILocation(line: 377, column: 7, scope: !1446)
!1451 = !DILocation(line: 379, column: 13, scope: !1434)
!1452 = !DILocation(line: 379, column: 6, scope: !1434)
!1453 = !DILocation(line: 380, column: 15, scope: !1434)
!1454 = !DILocation(line: 381, column: 5, scope: !1434)
!1455 = !DILocation(line: 382, column: 17, scope: !1429)
!1456 = !DILocation(line: 382, column: 10, scope: !1429)
!1457 = !DILocation(line: 383, column: 14, scope: !1429)
!1458 = !DILocation(line: 383, column: 7, scope: !1429)
!1459 = !DILocation(line: 384, column: 11, scope: !1429)
!1460 = !DILocation(line: 385, column: 4, scope: !1429)
!1461 = !DILocation(line: 386, column: 9, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !4, line: 386, column: 9)
!1463 = distinct !DILexicalBlock(scope: !1423, file: !4, line: 385, column: 11)
!1464 = !DILocation(line: 386, column: 18, scope: !1462)
!1465 = !DILocation(line: 386, column: 9, scope: !1463)
!1466 = !DILocation(line: 387, column: 22, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !4, line: 387, column: 10)
!1468 = distinct !DILexicalBlock(scope: !1462, file: !4, line: 386, column: 26)
!1469 = !DILocation(line: 387, column: 25, scope: !1467)
!1470 = !DILocation(line: 387, column: 34, scope: !1467)
!1471 = !DILocation(line: 387, column: 15, scope: !1467)
!1472 = !DILocation(line: 387, column: 12, scope: !1467)
!1473 = !DILocation(line: 387, column: 10, scope: !1468)
!1474 = !DILocation(line: 388, column: 14, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1467, file: !4, line: 387, column: 45)
!1476 = !DILocation(line: 388, column: 7, scope: !1475)
!1477 = !DILocation(line: 389, column: 14, scope: !1475)
!1478 = !DILocation(line: 389, column: 7, scope: !1475)
!1479 = !DILocation(line: 390, column: 7, scope: !1475)
!1480 = !DILocation(line: 392, column: 5, scope: !1468)
!1481 = !DILocation(line: 393, column: 22, scope: !1463)
!1482 = !DILocation(line: 393, column: 9, scope: !1463)
!1483 = !DILocation(line: 393, column: 19, scope: !1463)
!1484 = !DILocation(line: 394, column: 10, scope: !1463)
!1485 = !DILocation(line: 394, column: 7, scope: !1463)
!1486 = !DILocation(line: 395, column: 10, scope: !1463)
!1487 = !DILocation(line: 396, column: 11, scope: !1463)
!1488 = !DILocation(line: 398, column: 4, scope: !1167)
!1489 = !DILocation(line: 401, column: 11, scope: !1167)
!1490 = !DILocation(line: 401, column: 4, scope: !1167)
!1491 = !DILocation(line: 402, column: 4, scope: !1167)
!1492 = !DILocation(line: 269, column: 2, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !42, file: !4, discriminator: 2)
!1494 = distinct !{!1494, !1157}
!1495 = !DILocation(line: 406, column: 8, scope: !42)
!1496 = !DILocation(line: 408, column: 2, scope: !42)
!1497 = !DILocation(line: 409, column: 1, scope: !42)
!1498 = distinct !DISubprogram(name: "proc_part_data_pkg_arch", scope: !4, file: !4, line: 435, type: !43, isLocal: true, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !35)
!1499 = !DILocalVariable(name: "data", arg: 1, scope: !1498, file: !4, line: 435, type: !45)
!1500 = !DILocation(line: 435, column: 45, scope: !1498)
!1501 = !DILocalVariable(name: "size", arg: 2, scope: !1498, file: !4, line: 435, type: !49)
!1502 = !DILocation(line: 435, column: 66, scope: !1498)
!1503 = !DILocalVariable(name: "opt", arg: 3, scope: !1498, file: !4, line: 436, type: !51)
!1504 = !DILocation(line: 436, column: 30, scope: !1498)
!1505 = !DILocation(line: 438, column: 7, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1498, file: !4, line: 438, column: 6)
!1507 = !DILocation(line: 438, column: 12, scope: !1506)
!1508 = !DILocation(line: 438, column: 18, scope: !1506)
!1509 = !DILocation(line: 438, column: 26, scope: !1506)
!1510 = !DILocation(line: 438, column: 6, scope: !1498)
!1511 = !DILocation(line: 439, column: 3, scope: !1506)
!1512 = !DILocation(line: 441, column: 25, scope: !1498)
!1513 = !DILocation(line: 441, column: 31, scope: !1498)
!1514 = !DILocation(line: 441, column: 2, scope: !1498)
!1515 = !DILocation(line: 443, column: 2, scope: !1498)
!1516 = !DILocation(line: 444, column: 1, scope: !1498)
!1517 = distinct !DISubprogram(name: "proc_part_data_pkg_info", scope: !4, file: !4, line: 453, type: !43, isLocal: true, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !35)
!1518 = !DILocalVariable(name: "data", arg: 1, scope: !1517, file: !4, line: 453, type: !45)
!1519 = !DILocation(line: 453, column: 45, scope: !1517)
!1520 = !DILocalVariable(name: "size", arg: 2, scope: !1517, file: !4, line: 453, type: !49)
!1521 = !DILocation(line: 453, column: 66, scope: !1517)
!1522 = !DILocalVariable(name: "opt", arg: 3, scope: !1517, file: !4, line: 454, type: !51)
!1523 = !DILocation(line: 454, column: 30, scope: !1517)
!1524 = !DILocalVariable(name: "hdr", scope: !1517, file: !4, line: 456, type: !1525)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64, align: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "npk_part_pkg_info_hdr", file: !65, line: 60, size: 256, align: 8, elements: !1527)
!1527 = !{!1528, !1532, !1533, !1534, !1535, !1536, !1537}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1526, file: !65, line: 61, baseType: !1529, size: 128, align: 8)
!1529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 128, align: 8, elements: !1530)
!1530 = !{!1531}
!1531 = !DISubrange(count: 16)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !1526, file: !65, line: 62, baseType: !46, size: 8, align: 8, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "unk_20", scope: !1526, file: !65, line: 63, baseType: !1119, size: 8, align: 8, offset: 136)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "ver_min", scope: !1526, file: !65, line: 64, baseType: !46, size: 8, align: 8, offset: 144)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ver_maj", scope: !1526, file: !65, line: 65, baseType: !46, size: 8, align: 8, offset: 152)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !1526, file: !65, line: 66, baseType: !50, size: 32, align: 32, offset: 160)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "unk_30", scope: !1526, file: !65, line: 67, baseType: !1538, size: 64, align: 8, offset: 192)
!1538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, align: 8, elements: !1539)
!1539 = !{!1540}
!1540 = !DISubrange(count: 8)
!1541 = !DILocation(line: 456, column: 32, scope: !1517)
!1542 = !DILocation(line: 456, column: 46, scope: !1517)
!1543 = !DILocation(line: 456, column: 38, scope: !1517)
!1544 = !DILocalVariable(name: "buf", scope: !1517, file: !4, line: 457, type: !1545)
!1545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1024, align: 8, elements: !1546)
!1546 = !{!1547}
!1547 = !DISubrange(count: 128)
!1548 = !DILocation(line: 457, column: 7, scope: !1517)
!1549 = !DILocalVariable(name: "len", scope: !1517, file: !4, line: 458, type: !20)
!1550 = !DILocation(line: 458, column: 11, scope: !1517)
!1551 = !DILocalVariable(name: "tm", scope: !1517, file: !4, line: 459, type: !1552)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !79, line: 133, size: 448, align: 64, elements: !1553)
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !1552, file: !79, line: 135, baseType: !31, size: 32, align: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !1552, file: !79, line: 136, baseType: !31, size: 32, align: 32, offset: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !1552, file: !79, line: 137, baseType: !31, size: 32, align: 32, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !1552, file: !79, line: 138, baseType: !31, size: 32, align: 32, offset: 96)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !1552, file: !79, line: 139, baseType: !31, size: 32, align: 32, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !1552, file: !79, line: 140, baseType: !31, size: 32, align: 32, offset: 160)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !1552, file: !79, line: 141, baseType: !31, size: 32, align: 32, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !1552, file: !79, line: 142, baseType: !31, size: 32, align: 32, offset: 224)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !1552, file: !79, line: 143, baseType: !31, size: 32, align: 32, offset: 256)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !1552, file: !79, line: 146, baseType: !16, size: 64, align: 64, offset: 320)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !1552, file: !79, line: 147, baseType: !8, size: 64, align: 64, offset: 384)
!1565 = !DILocation(line: 459, column: 12, scope: !1517)
!1566 = !DILocation(line: 461, column: 16, scope: !1517)
!1567 = !DILocation(line: 461, column: 21, scope: !1517)
!1568 = !DILocation(line: 461, column: 8, scope: !1517)
!1569 = !DILocation(line: 461, column: 46, scope: !1517)
!1570 = !DILocation(line: 461, column: 6, scope: !1517)
!1571 = !DILocation(line: 462, column: 21, scope: !1517)
!1572 = !DILocation(line: 462, column: 31, scope: !1517)
!1573 = !DILocation(line: 462, column: 13, scope: !1517)
!1574 = !DILocation(line: 462, column: 11, scope: !1517)
!1575 = !DILocation(line: 463, column: 7, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1517, file: !4, line: 463, column: 6)
!1577 = !DILocation(line: 463, column: 6, scope: !1517)
!1578 = !DILocation(line: 464, column: 3, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1576, file: !4, line: 463, column: 17)
!1580 = !DILocation(line: 465, column: 3, scope: !1579)
!1581 = !DILocation(line: 467, column: 9, scope: !1517)
!1582 = !DILocation(line: 467, column: 19, scope: !1517)
!1583 = !DILocation(line: 467, column: 24, scope: !1517)
!1584 = !DILocation(line: 467, column: 2, scope: !1517)
!1585 = !DILocation(line: 467, column: 30, scope: !1517)
!1586 = !DILocation(line: 467, column: 34, scope: !1517)
!1587 = !DILocation(line: 468, column: 11, scope: !1517)
!1588 = !DILocation(line: 468, column: 15, scope: !1517)
!1589 = !DILocation(line: 468, column: 2, scope: !1517)
!1590 = !DILocation(line: 468, column: 20, scope: !1517)
!1591 = !DILocation(line: 470, column: 7, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1517, file: !4, line: 470, column: 6)
!1593 = !DILocation(line: 470, column: 12, scope: !1592)
!1594 = !DILocation(line: 470, column: 18, scope: !1592)
!1595 = !DILocation(line: 470, column: 26, scope: !1592)
!1596 = !DILocation(line: 470, column: 6, scope: !1517)
!1597 = !DILocation(line: 471, column: 3, scope: !1592)
!1598 = !DILocation(line: 473, column: 29, scope: !1517)
!1599 = !DILocation(line: 473, column: 2, scope: !1517)
!1600 = !DILocation(line: 474, column: 39, scope: !1517)
!1601 = !DILocation(line: 474, column: 44, scope: !1517)
!1602 = !DILocation(line: 474, column: 29, scope: !1517)
!1603 = !DILocation(line: 474, column: 2, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !1517, file: !4, discriminator: 1)
!1605 = !DILocation(line: 475, column: 6, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1517, file: !4, line: 475, column: 6)
!1607 = !DILocation(line: 475, column: 11, scope: !1606)
!1608 = !DILocation(line: 475, column: 6, scope: !1517)
!1609 = !DILocation(line: 476, column: 36, scope: !1606)
!1610 = !DILocation(line: 476, column: 41, scope: !1606)
!1611 = !DILocation(line: 476, column: 50, scope: !1606)
!1612 = !DILocation(line: 476, column: 55, scope: !1606)
!1613 = !DILocation(line: 477, column: 10, scope: !1606)
!1614 = !DILocation(line: 477, column: 15, scope: !1606)
!1615 = !DILocation(line: 476, column: 3, scope: !1606)
!1616 = !DILocation(line: 479, column: 33, scope: !1606)
!1617 = !DILocation(line: 479, column: 38, scope: !1606)
!1618 = !DILocation(line: 479, column: 47, scope: !1606)
!1619 = !DILocation(line: 479, column: 52, scope: !1606)
!1620 = !DILocation(line: 479, column: 3, scope: !1606)
!1621 = !DILocation(line: 480, column: 22, scope: !1517)
!1622 = !DILocation(line: 480, column: 27, scope: !1517)
!1623 = !DILocation(line: 480, column: 11, scope: !1517)
!1624 = !DILocation(line: 480, column: 2, scope: !1517)
!1625 = !DILocation(line: 481, column: 11, scope: !1517)
!1626 = !DILocation(line: 481, column: 2, scope: !1517)
!1627 = !DILocation(line: 482, column: 34, scope: !1517)
!1628 = !DILocation(line: 482, column: 39, scope: !1517)
!1629 = !DILocation(line: 482, column: 50, scope: !1517)
!1630 = !DILocation(line: 482, column: 2, scope: !1517)
!1631 = !DILocation(line: 483, column: 39, scope: !1517)
!1632 = !DILocation(line: 483, column: 44, scope: !1517)
!1633 = !DILocation(line: 483, column: 29, scope: !1517)
!1634 = !DILocation(line: 483, column: 2, scope: !1604)
!1635 = !DILocation(line: 485, column: 2, scope: !1517)
!1636 = !DILocation(line: 486, column: 1, scope: !1517)
!1637 = distinct !DISubprogram(name: "proc_part_data_squashfs", scope: !4, file: !4, line: 495, type: !43, isLocal: true, isDefinition: true, scopeLine: 497, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !35)
!1638 = !DILocalVariable(name: "data", arg: 1, scope: !1637, file: !4, line: 495, type: !45)
!1639 = !DILocation(line: 495, column: 45, scope: !1637)
!1640 = !DILocalVariable(name: "size", arg: 2, scope: !1637, file: !4, line: 495, type: !49)
!1641 = !DILocation(line: 495, column: 66, scope: !1637)
!1642 = !DILocalVariable(name: "opt", arg: 3, scope: !1637, file: !4, line: 496, type: !51)
!1643 = !DILocation(line: 496, column: 30, scope: !1637)
!1644 = !DILocalVariable(name: "imgname", scope: !1637, file: !4, line: 498, type: !76)
!1645 = !DILocation(line: 498, column: 8, scope: !1637)
!1646 = !DILocalVariable(name: "namelen", scope: !1637, file: !4, line: 499, type: !915)
!1647 = !DILocation(line: 499, column: 9, scope: !1637)
!1648 = !DILocalVariable(name: "fp", scope: !1637, file: !4, line: 500, type: !1055)
!1649 = !DILocation(line: 500, column: 8, scope: !1637)
!1650 = !DILocalVariable(name: "wres", scope: !1637, file: !4, line: 501, type: !915)
!1651 = !DILocation(line: 501, column: 9, scope: !1637)
!1652 = !DILocation(line: 503, column: 6, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1637, file: !4, line: 503, column: 6)
!1654 = !DILocation(line: 503, column: 11, scope: !1653)
!1655 = !DILocation(line: 503, column: 17, scope: !1653)
!1656 = !DILocation(line: 503, column: 6, scope: !1637)
!1657 = !DILocation(line: 505, column: 2, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1653, file: !4, line: 503, column: 25)
!1659 = !DILocation(line: 505, column: 13, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !1661, file: !4, discriminator: 1)
!1661 = distinct !DILexicalBlock(scope: !1653, file: !4, line: 505, column: 13)
!1662 = !DILocation(line: 505, column: 18, scope: !1660)
!1663 = !DILocation(line: 505, column: 24, scope: !1660)
!1664 = !DILocation(line: 506, column: 27, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1661, file: !4, line: 505, column: 32)
!1666 = !DILocation(line: 506, column: 3, scope: !1665)
!1667 = !DILocation(line: 507, column: 2, scope: !1665)
!1668 = !DILocation(line: 509, column: 20, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1637, file: !4, line: 509, column: 6)
!1670 = !DILocation(line: 509, column: 25, scope: !1669)
!1671 = !DILocation(line: 509, column: 17, scope: !1669)
!1672 = !DILocation(line: 509, column: 6, scope: !1637)
!1673 = !DILocation(line: 510, column: 3, scope: !1669)
!1674 = !DILocation(line: 513, column: 19, scope: !1637)
!1675 = !DILocation(line: 513, column: 12, scope: !1637)
!1676 = !DILocation(line: 513, column: 29, scope: !1637)
!1677 = !DILocation(line: 513, column: 10, scope: !1637)
!1678 = !DILocation(line: 514, column: 19, scope: !1637)
!1679 = !DILocation(line: 514, column: 12, scope: !1637)
!1680 = !DILocation(line: 514, column: 10, scope: !1637)
!1681 = !DILocation(line: 515, column: 7, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1637, file: !4, line: 515, column: 6)
!1683 = !DILocation(line: 515, column: 6, scope: !1637)
!1684 = !DILocation(line: 516, column: 3, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1682, file: !4, line: 515, column: 16)
!1686 = !DILocation(line: 517, column: 3, scope: !1685)
!1687 = !DILocation(line: 519, column: 11, scope: !1637)
!1688 = !DILocation(line: 519, column: 20, scope: !1637)
!1689 = !DILocation(line: 519, column: 44, scope: !1637)
!1690 = !DILocation(line: 519, column: 2, scope: !1637)
!1691 = !DILocation(line: 521, column: 13, scope: !1637)
!1692 = !DILocation(line: 521, column: 7, scope: !1637)
!1693 = !DILocation(line: 521, column: 5, scope: !1637)
!1694 = !DILocation(line: 522, column: 7, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1637, file: !4, line: 522, column: 6)
!1696 = !DILocation(line: 522, column: 6, scope: !1637)
!1697 = !DILocation(line: 523, column: 10, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1695, file: !4, line: 522, column: 11)
!1699 = !DILocation(line: 524, column: 4, scope: !1698)
!1700 = !DILocation(line: 524, column: 23, scope: !1698)
!1701 = !DILocation(line: 524, column: 22, scope: !1698)
!1702 = !DILocation(line: 524, column: 13, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1698, file: !4, discriminator: 1)
!1704 = !DILocation(line: 523, column: 3, scope: !1698)
!1705 = !DILocation(line: 525, column: 8, scope: !1698)
!1706 = !DILocation(line: 525, column: 3, scope: !1698)
!1707 = !DILocation(line: 526, column: 12, scope: !1698)
!1708 = !DILocation(line: 526, column: 11, scope: !1698)
!1709 = !DILocation(line: 526, column: 10, scope: !1698)
!1710 = !DILocation(line: 526, column: 3, scope: !1698)
!1711 = !DILocation(line: 529, column: 16, scope: !1637)
!1712 = !DILocation(line: 529, column: 25, scope: !1637)
!1713 = !DILocation(line: 529, column: 31, scope: !1637)
!1714 = !DILocation(line: 529, column: 9, scope: !1637)
!1715 = !DILocation(line: 529, column: 7, scope: !1637)
!1716 = !DILocation(line: 530, column: 6, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1637, file: !4, line: 530, column: 6)
!1718 = !DILocation(line: 530, column: 14, scope: !1717)
!1719 = !DILocation(line: 530, column: 11, scope: !1717)
!1720 = !DILocation(line: 530, column: 6, scope: !1637)
!1721 = !DILocation(line: 531, column: 10, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1717, file: !4, line: 530, column: 20)
!1723 = !DILocation(line: 532, column: 4, scope: !1722)
!1724 = !DILocation(line: 532, column: 23, scope: !1722)
!1725 = !DILocation(line: 532, column: 22, scope: !1722)
!1726 = !DILocation(line: 532, column: 13, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1722, file: !4, discriminator: 1)
!1728 = !DILocation(line: 531, column: 3, scope: !1722)
!1729 = !DILocation(line: 533, column: 8, scope: !1722)
!1730 = !DILocation(line: 533, column: 3, scope: !1722)
!1731 = !DILocation(line: 534, column: 10, scope: !1722)
!1732 = !DILocation(line: 534, column: 3, scope: !1722)
!1733 = !DILocation(line: 535, column: 12, scope: !1722)
!1734 = !DILocation(line: 535, column: 11, scope: !1722)
!1735 = !DILocation(line: 535, column: 10, scope: !1722)
!1736 = !DILocation(line: 535, column: 3, scope: !1722)
!1737 = !DILocation(line: 538, column: 9, scope: !1637)
!1738 = !DILocation(line: 538, column: 2, scope: !1637)
!1739 = !DILocation(line: 539, column: 7, scope: !1637)
!1740 = !DILocation(line: 539, column: 2, scope: !1637)
!1741 = !DILocation(line: 541, column: 2, scope: !1637)
!1742 = !DILocation(line: 542, column: 1, scope: !1637)
!1743 = distinct !DISubprogram(name: "proc_part_data_digest", scope: !4, file: !4, line: 551, type: !43, isLocal: true, isDefinition: true, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !35)
!1744 = !DILocalVariable(name: "data", arg: 1, scope: !1743, file: !4, line: 551, type: !45)
!1745 = !DILocation(line: 551, column: 43, scope: !1743)
!1746 = !DILocalVariable(name: "size", arg: 2, scope: !1743, file: !4, line: 551, type: !49)
!1747 = !DILocation(line: 551, column: 64, scope: !1743)
!1748 = !DILocalVariable(name: "opt", arg: 3, scope: !1743, file: !4, line: 552, type: !51)
!1749 = !DILocation(line: 552, column: 28, scope: !1743)
!1750 = !DILocation(line: 554, column: 7, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1743, file: !4, line: 554, column: 6)
!1752 = !DILocation(line: 554, column: 12, scope: !1751)
!1753 = !DILocation(line: 554, column: 18, scope: !1751)
!1754 = !DILocation(line: 554, column: 26, scope: !1751)
!1755 = !DILocation(line: 554, column: 6, scope: !1743)
!1756 = !DILocation(line: 555, column: 3, scope: !1751)
!1757 = !DILocation(line: 557, column: 27, scope: !1743)
!1758 = !DILocation(line: 557, column: 33, scope: !1743)
!1759 = !DILocation(line: 557, column: 2, scope: !1743)
!1760 = !DILocation(line: 559, column: 2, scope: !1743)
!1761 = !DILocation(line: 560, column: 1, scope: !1743)
!1762 = distinct !DISubprogram(name: "proc_part_data_reltype", scope: !4, file: !4, line: 569, type: !43, isLocal: true, isDefinition: true, scopeLine: 571, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !35)
!1763 = !DILocalVariable(name: "data", arg: 1, scope: !1762, file: !4, line: 569, type: !45)
!1764 = !DILocation(line: 569, column: 44, scope: !1762)
!1765 = !DILocalVariable(name: "size", arg: 2, scope: !1762, file: !4, line: 569, type: !49)
!1766 = !DILocation(line: 569, column: 65, scope: !1762)
!1767 = !DILocalVariable(name: "opt", arg: 3, scope: !1762, file: !4, line: 570, type: !51)
!1768 = !DILocation(line: 570, column: 29, scope: !1762)
!1769 = !DILocation(line: 572, column: 7, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1762, file: !4, line: 572, column: 6)
!1771 = !DILocation(line: 572, column: 12, scope: !1770)
!1772 = !DILocation(line: 572, column: 18, scope: !1770)
!1773 = !DILocation(line: 572, column: 26, scope: !1770)
!1774 = !DILocation(line: 572, column: 6, scope: !1762)
!1775 = !DILocation(line: 573, column: 3, scope: !1770)
!1776 = !DILocation(line: 575, column: 30, scope: !1762)
!1777 = !DILocation(line: 575, column: 36, scope: !1762)
!1778 = !DILocation(line: 575, column: 2, scope: !1762)
!1779 = !DILocation(line: 577, column: 2, scope: !1762)
!1780 = !DILocation(line: 578, column: 1, scope: !1762)
!1781 = distinct !DISubprogram(name: "create_path", scope: !4, file: !4, line: 149, type: !1782, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !35)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{null, !76}
!1784 = !DILocalVariable(name: "path", arg: 1, scope: !1781, file: !4, line: 149, type: !76)
!1785 = !DILocation(line: 149, column: 31, scope: !1781)
!1786 = !DILocalVariable(name: "p", scope: !1781, file: !4, line: 151, type: !76)
!1787 = !DILocation(line: 151, column: 8, scope: !1781)
!1788 = !DILocation(line: 153, column: 12, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1781, file: !4, line: 153, column: 6)
!1790 = !DILocation(line: 153, column: 6, scope: !1789)
!1791 = !DILocation(line: 153, column: 24, scope: !1789)
!1792 = !DILocation(line: 153, column: 6, scope: !1781)
!1793 = !DILocation(line: 154, column: 3, scope: !1789)
!1794 = !DILocation(line: 155, column: 17, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1781, file: !4, line: 155, column: 5)
!1796 = !DILocation(line: 155, column: 16, scope: !1795)
!1797 = !DILocation(line: 155, column: 12, scope: !1795)
!1798 = !DILocation(line: 155, column: 5, scope: !1781)
!1799 = !DILocation(line: 156, column: 3, scope: !1795)
!1800 = !DILocation(line: 157, column: 17, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1781, file: !4, line: 157, column: 5)
!1802 = !DILocation(line: 157, column: 16, scope: !1801)
!1803 = !DILocation(line: 157, column: 12, scope: !1801)
!1804 = !DILocation(line: 157, column: 5, scope: !1781)
!1805 = !DILocation(line: 158, column: 15, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1801, file: !4, line: 157, column: 22)
!1807 = !DILocation(line: 158, column: 7, scope: !1806)
!1808 = !DILocation(line: 158, column: 5, scope: !1806)
!1809 = !DILocation(line: 159, column: 14, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1806, file: !4, line: 159, column: 6)
!1811 = !DILocation(line: 159, column: 11, scope: !1810)
!1812 = !DILocation(line: 159, column: 6, scope: !1806)
!1813 = !DILocation(line: 160, column: 3, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1810, file: !4, line: 159, column: 17)
!1815 = !DILocation(line: 161, column: 5, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1810, file: !4, line: 160, column: 10)
!1817 = !DILocation(line: 161, column: 7, scope: !1816)
!1818 = !DILocation(line: 162, column: 16, scope: !1816)
!1819 = !DILocation(line: 162, column: 4, scope: !1816)
!1820 = !DILocation(line: 163, column: 5, scope: !1816)
!1821 = !DILocation(line: 163, column: 7, scope: !1816)
!1822 = !DILocation(line: 164, column: 10, scope: !1816)
!1823 = !DILocation(line: 164, column: 4, scope: !1816)
!1824 = !DILocation(line: 166, column: 2, scope: !1806)
!1825 = !DILocation(line: 167, column: 3, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1801, file: !4, line: 166, column: 9)
!1827 = !DILocation(line: 169, column: 1, scope: !1781)
!1828 = distinct !DISubprogram(name: "create_file_path", scope: !4, file: !4, line: 177, type: !1782, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !35)
!1829 = !DILocalVariable(name: "path", arg: 1, scope: !1828, file: !4, line: 177, type: !76)
!1830 = !DILocation(line: 177, column: 36, scope: !1828)
!1831 = !DILocalVariable(name: "p", scope: !1828, file: !4, line: 179, type: !76)
!1832 = !DILocation(line: 179, column: 8, scope: !1828)
!1833 = !DILocation(line: 181, column: 14, scope: !1828)
!1834 = !DILocation(line: 181, column: 6, scope: !1828)
!1835 = !DILocation(line: 181, column: 4, scope: !1828)
!1836 = !DILocation(line: 182, column: 13, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1828, file: !4, line: 182, column: 5)
!1838 = !DILocation(line: 182, column: 10, scope: !1837)
!1839 = !DILocation(line: 182, column: 5, scope: !1828)
!1840 = !DILocation(line: 183, column: 3, scope: !1837)
!1841 = !DILocation(line: 184, column: 16, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1828, file: !4, line: 184, column: 6)
!1843 = !DILocation(line: 184, column: 18, scope: !1842)
!1844 = !DILocation(line: 184, column: 14, scope: !1842)
!1845 = !DILocation(line: 184, column: 11, scope: !1842)
!1846 = !DILocation(line: 184, column: 6, scope: !1828)
!1847 = !DILocation(line: 185, column: 15, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1842, file: !4, line: 184, column: 24)
!1849 = !DILocation(line: 185, column: 3, scope: !1848)
!1850 = !DILocation(line: 186, column: 2, scope: !1848)
!1851 = !DILocation(line: 187, column: 4, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1842, file: !4, line: 186, column: 9)
!1853 = !DILocation(line: 187, column: 6, scope: !1852)
!1854 = !DILocation(line: 188, column: 15, scope: !1852)
!1855 = !DILocation(line: 188, column: 3, scope: !1852)
!1856 = !DILocation(line: 189, column: 4, scope: !1852)
!1857 = !DILocation(line: 189, column: 6, scope: !1852)
!1858 = !DILocation(line: 191, column: 1, scope: !1828)
