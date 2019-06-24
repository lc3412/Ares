; ModuleID = '/home/lichi/Desktop/genwqe/[task]tools--genwqe_vpdconv/[inter]tools--genwqe_vpdconv.o.i'
source_filename = "/home/lichi/Desktop/genwqe/[task]tools--genwqe_vpdconv/[inter]tools--genwqe_vpdconv.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.swap_me = type { i32 }
%struct.anon.0 = type { [4 x i8] }

@verbose_flag = global i32 0, align 4
@_dbg_flag = global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"i:o:vVh\00", align 1
@long_options = internal global [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 1, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 1, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 0, i32* null, i32 86 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 0, i32* @make_crc, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i32 0, i32* @reverse_mode, i32 1 }, %struct.option zeroinitializer], align 16
@optarg = external global i8*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@version = internal global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), align 8
@optind = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"%s:%u: Error: Too many args\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"genwqe_vpdconv.c\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Input File:   <%s>\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"%s:%u: Error: %s Open: <%s>\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Output File:  <%s>\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Read from stdin\0A\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"Write to stdout\0A\00", align 1
@reverse_mode = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"Bin file now in buffer = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"%s:%u: Error: Your Binary input does have %d of %d Bytes\0A\00", align 1
@make_crc = internal global i32 1, align 4
@.str.13 = private unnamed_addr constant [52 x i8] c"Input CRC: 0x%x -> Good CRC: 0x%x added to Output.\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"%s:%u: Error: Malloc(%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Close Input and Output.\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"Exit with rc: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"crcoff\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.24 = private unnamed_addr constant [719 x i8] c"Usage: %s [OPTIONS]...\0A\0AMandatory arguments to long options are mandatory for short options too.\0A  -h, --help\09print usage information\0A  -V, --version\09print version\0A  -i, --input=FILE\09input filename, uses stdin if option is missing\0A  -o, --output=FILE output filename, uses stdout if option is missing\0A  -v, --verbose\09verbose mode, multiple v's to increase verbosity\0A  --crcoff\09\09do not check and correct crc in output File\0A  --reverse\09\09takes as input a binaray file and creates a CSV output file\0A\0AThis utility converts a comma separated VPD file (CSV file) for the GenWQE Card\0Ato a binary file which can be used for flash programming for VPD data.\0AThe CVS input file format (0x%x) is fix. Only the data can be changed.\0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"4.0.20-5-g2944\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !36 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %union.swap_me, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !41, metadata !42), !dbg !43
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !44, metadata !42), !dbg !45
  call void @llvm.dbg.declare(metadata i32* %6, metadata !46, metadata !42), !dbg !47
  call void @llvm.dbg.declare(metadata i8** %7, metadata !48, metadata !42), !dbg !49
  store i8* null, i8** %7, align 8, !dbg !49
  call void @llvm.dbg.declare(metadata i8** %8, metadata !50, metadata !42), !dbg !51
  store i8* null, i8** %8, align 8, !dbg !51
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %9, metadata !52, metadata !42), !dbg !112
  store %struct._IO_FILE* null, %struct._IO_FILE** %9, align 8, !dbg !112
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %10, metadata !113, metadata !42), !dbg !114
  store %struct._IO_FILE* null, %struct._IO_FILE** %10, align 8, !dbg !114
  call void @llvm.dbg.declare(metadata i8** %11, metadata !115, metadata !42), !dbg !120
  store i8* null, i8** %11, align 8, !dbg !120
  call void @llvm.dbg.declare(metadata i32* %12, metadata !121, metadata !42), !dbg !123
  call void @llvm.dbg.declare(metadata i32* %13, metadata !124, metadata !42), !dbg !125
  call void @llvm.dbg.declare(metadata i32* %14, metadata !126, metadata !42), !dbg !127
  call void @llvm.dbg.declare(metadata i32* %15, metadata !128, metadata !42), !dbg !129
  store i32 0, i32* %15, align 4, !dbg !129
  call void @llvm.dbg.declare(metadata %union.swap_me* %16, metadata !130, metadata !42), !dbg !150
  call void @llvm.dbg.declare(metadata i64* %17, metadata !151, metadata !42), !dbg !152
  br label %19, !dbg !153

; <label>:19:                                     ; preds = %2, %70
  call void @llvm.dbg.declare(metadata i32* %18, metadata !154, metadata !42), !dbg !156
  store i32 0, i32* %18, align 4, !dbg !156
  %20 = load i32, i32* %4, align 4, !dbg !157
  %21 = load i8**, i8*** %5, align 8, !dbg !158
  %22 = call i32 @getopt_long(i32 %20, i8** %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @long_options, i32 0, i32 0), i32* %18) #7, !dbg !159
  store i32 %22, i32* %6, align 4, !dbg !160
  %23 = load i32, i32* %6, align 4, !dbg !161
  %24 = icmp eq i32 -1, %23, !dbg !163
  br i1 %24, label %25, label %26, !dbg !164

; <label>:25:                                     ; preds = %19
  br label %71, !dbg !165

; <label>:26:                                     ; preds = %19
  %27 = load i32, i32* %6, align 4, !dbg !166
  switch i32 %27, label %66 [
    i32 0, label %28
    i32 105, label %29
    i32 111, label %39
    i32 104, label %49
    i32 86, label %53
    i32 118, label %57
  ], !dbg !167

; <label>:28:                                     ; preds = %26
  br label %70, !dbg !168

; <label>:29:                                     ; preds = %26
  %30 = load i8*, i8** @optarg, align 8, !dbg !170
  %31 = icmp ne i8* null, %30, !dbg !172
  br i1 %31, label %32, label %34, !dbg !173

; <label>:32:                                     ; preds = %29
  %33 = load i8*, i8** @optarg, align 8, !dbg !174
  store i8* %33, i8** %7, align 8, !dbg !175
  br label %38, !dbg !176

; <label>:34:                                     ; preds = %29
  %35 = load i8**, i8*** %5, align 8, !dbg !177
  %36 = getelementptr inbounds i8*, i8** %35, i64 0, !dbg !177
  %37 = load i8*, i8** %36, align 8, !dbg !177
  call void @usage(i8* %37), !dbg !179
  call void @exit(i32 1) #8, !dbg !180
  unreachable, !dbg !180

; <label>:38:                                     ; preds = %32
  br label %70, !dbg !181

; <label>:39:                                     ; preds = %26
  %40 = load i8*, i8** @optarg, align 8, !dbg !182
  %41 = icmp ne i8* null, %40, !dbg !184
  br i1 %41, label %42, label %44, !dbg !185

; <label>:42:                                     ; preds = %39
  %43 = load i8*, i8** @optarg, align 8, !dbg !186
  store i8* %43, i8** %8, align 8, !dbg !187
  br label %48, !dbg !188

; <label>:44:                                     ; preds = %39
  %45 = load i8**, i8*** %5, align 8, !dbg !189
  %46 = getelementptr inbounds i8*, i8** %45, i64 0, !dbg !189
  %47 = load i8*, i8** %46, align 8, !dbg !189
  call void @usage(i8* %47), !dbg !191
  call void @exit(i32 1) #8, !dbg !192
  unreachable, !dbg !192

; <label>:48:                                     ; preds = %42
  br label %70, !dbg !193

; <label>:49:                                     ; preds = %26
  %50 = load i8**, i8*** %5, align 8, !dbg !194
  %51 = getelementptr inbounds i8*, i8** %50, i64 0, !dbg !194
  %52 = load i8*, i8** %51, align 8, !dbg !194
  call void @usage(i8* %52), !dbg !195
  call void @exit(i32 0) #8, !dbg !196
  unreachable, !dbg !196

; <label>:53:                                     ; preds = %26
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !197
  %55 = load i8*, i8** @version, align 8, !dbg !198
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* %55), !dbg !199
  call void @exit(i32 0) #8, !dbg !200
  unreachable, !dbg !200

; <label>:57:                                     ; preds = %26
  %58 = load i32, i32* @verbose_flag, align 4, !dbg !201
  %59 = add nsw i32 %58, 1, !dbg !201
  store i32 %59, i32* @verbose_flag, align 4, !dbg !201
  %60 = load i32, i32* @verbose_flag, align 4, !dbg !202
  %61 = icmp sgt i32 %60, 1, !dbg !204
  br i1 %61, label %62, label %65, !dbg !205

; <label>:62:                                     ; preds = %57
  %63 = load i32, i32* @_dbg_flag, align 4, !dbg !206
  %64 = add nsw i32 %63, 1, !dbg !206
  store i32 %64, i32* @_dbg_flag, align 4, !dbg !206
  br label %65, !dbg !207

; <label>:65:                                     ; preds = %62, %57
  br label %70, !dbg !208

; <label>:66:                                     ; preds = %26
  %67 = load i8**, i8*** %5, align 8, !dbg !209
  %68 = getelementptr inbounds i8*, i8** %67, i64 0, !dbg !209
  %69 = load i8*, i8** %68, align 8, !dbg !209
  call void @usage(i8* %69), !dbg !210
  call void @exit(i32 1) #8, !dbg !211
  unreachable, !dbg !211

; <label>:70:                                     ; preds = %65, %48, %38, %28
  br label %19, !dbg !212, !llvm.loop !214

; <label>:71:                                     ; preds = %25
  %72 = load i32, i32* @optind, align 4, !dbg !215
  %73 = load i32, i32* %4, align 4, !dbg !217
  %74 = icmp slt i32 %72, %73, !dbg !218
  br i1 %74, label %75, label %102, !dbg !219

; <label>:75:                                     ; preds = %71
  %76 = load i32, i32* @optind, align 4, !dbg !220
  %77 = add nsw i32 %76, 1, !dbg !220
  store i32 %77, i32* @optind, align 4, !dbg !220
  %78 = sext i32 %76 to i64, !dbg !222
  %79 = load i8**, i8*** %5, align 8, !dbg !222
  %80 = getelementptr inbounds i8*, i8** %79, i64 %78, !dbg !222
  %81 = load i8*, i8** %80, align 8, !dbg !222
  store i8* %81, i8** %7, align 8, !dbg !223
  %82 = load i32, i32* @optind, align 4, !dbg !224
  %83 = load i32, i32* %4, align 4, !dbg !226
  %84 = icmp slt i32 %82, %83, !dbg !227
  br i1 %84, label %85, label %101, !dbg !228

; <label>:85:                                     ; preds = %75
  %86 = load i32, i32* @optind, align 4, !dbg !229
  %87 = add nsw i32 %86, 1, !dbg !229
  store i32 %87, i32* @optind, align 4, !dbg !229
  %88 = sext i32 %86 to i64, !dbg !231
  %89 = load i8**, i8*** %5, align 8, !dbg !231
  %90 = getelementptr inbounds i8*, i8** %89, i64 %88, !dbg !231
  %91 = load i8*, i8** %90, align 8, !dbg !231
  store i8* %91, i8** %8, align 8, !dbg !232
  %92 = load i32, i32* @optind, align 4, !dbg !233
  %93 = load i32, i32* %4, align 4, !dbg !235
  %94 = icmp slt i32 %92, %93, !dbg !236
  br i1 %94, label %95, label %100, !dbg !237

; <label>:95:                                     ; preds = %85
  br label %96, !dbg !238, !llvm.loop !240

; <label>:96:                                     ; preds = %95
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !241
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 148), !dbg !244
  br label %99, !dbg !245

; <label>:99:                                     ; preds = %96
  call void @exit(i32 1) #8, !dbg !246
  unreachable, !dbg !246

; <label>:100:                                    ; preds = %85
  br label %101, !dbg !247

; <label>:101:                                    ; preds = %100, %75
  br label %102, !dbg !248

; <label>:102:                                    ; preds = %101, %71
  %103 = load i8*, i8** %7, align 8, !dbg !249
  %104 = icmp ne i8* %103, null, !dbg !249
  br i1 %104, label %105, label %129, !dbg !251

; <label>:105:                                    ; preds = %102
  br label %106, !dbg !252, !llvm.loop !254

; <label>:106:                                    ; preds = %105
  %107 = load i32, i32* @_dbg_flag, align 4, !dbg !255
  %108 = icmp ne i32 %107, 0, !dbg !255
  br i1 %108, label %109, label %113, !dbg !255

; <label>:109:                                    ; preds = %106
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !259
  %111 = load i8*, i8** %7, align 8, !dbg !261
  %112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* %111), !dbg !262
  br label %113, !dbg !262

; <label>:113:                                    ; preds = %109, %106
  br label %114, !dbg !263

; <label>:114:                                    ; preds = %113
  %115 = load i8*, i8** %7, align 8, !dbg !265
  %116 = call %struct._IO_FILE* @fopen(i8* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !dbg !266
  store %struct._IO_FILE* %116, %struct._IO_FILE** %9, align 8, !dbg !267
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !268
  %118 = icmp eq %struct._IO_FILE* null, %117, !dbg !270
  br i1 %118, label %119, label %128, !dbg !271

; <label>:119:                                    ; preds = %114
  br label %120, !dbg !272, !llvm.loop !274

; <label>:120:                                    ; preds = %119
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !275
  %122 = call i32* @__errno_location() #1, !dbg !278
  %123 = load i32, i32* %122, align 4, !dbg !279
  %124 = call i8* @strerror(i32 %123) #7, !dbg !280
  %125 = load i8*, i8** %7, align 8, !dbg !282
  %126 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 157, i8* %124, i8* %125), !dbg !283
  br label %127, !dbg !285

; <label>:127:                                    ; preds = %120
  call void @exit(i32 1) #8, !dbg !286
  unreachable, !dbg !286

; <label>:128:                                    ; preds = %114
  br label %129, !dbg !287

; <label>:129:                                    ; preds = %128, %102
  %130 = load i8*, i8** %8, align 8, !dbg !288
  %131 = icmp ne i8* %130, null, !dbg !288
  br i1 %131, label %132, label %162, !dbg !290

; <label>:132:                                    ; preds = %129
  br label %133, !dbg !291, !llvm.loop !293

; <label>:133:                                    ; preds = %132
  %134 = load i32, i32* @_dbg_flag, align 4, !dbg !294
  %135 = icmp ne i32 %134, 0, !dbg !294
  br i1 %135, label %136, label %140, !dbg !294

; <label>:136:                                    ; preds = %133
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !298
  %138 = load i8*, i8** %8, align 8, !dbg !300
  %139 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %137, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* %138), !dbg !301
  br label %140, !dbg !301

; <label>:140:                                    ; preds = %136, %133
  br label %141, !dbg !302

; <label>:141:                                    ; preds = %140
  %142 = load i8*, i8** %8, align 8, !dbg !304
  %143 = call %struct._IO_FILE* @fopen(i8* %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)), !dbg !305
  store %struct._IO_FILE* %143, %struct._IO_FILE** %10, align 8, !dbg !306
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !307
  %145 = icmp eq %struct._IO_FILE* null, %144, !dbg !309
  br i1 %145, label %146, label %161, !dbg !310

; <label>:146:                                    ; preds = %141
  br label %147, !dbg !311, !llvm.loop !313

; <label>:147:                                    ; preds = %146
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !314
  %149 = call i32* @__errno_location() #1, !dbg !317
  %150 = load i32, i32* %149, align 4, !dbg !318
  %151 = call i8* @strerror(i32 %150) #7, !dbg !319
  %152 = load i8*, i8** %8, align 8, !dbg !321
  %153 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %148, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 165, i8* %151, i8* %152), !dbg !322
  br label %154, !dbg !324

; <label>:154:                                    ; preds = %147
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !325
  %156 = icmp ne %struct._IO_FILE* %155, null, !dbg !325
  br i1 %156, label %157, label %160, !dbg !327

; <label>:157:                                    ; preds = %154
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !328
  %159 = call i32 @fclose(%struct._IO_FILE* %158), !dbg !330
  br label %160, !dbg !330

; <label>:160:                                    ; preds = %157, %154
  call void @exit(i32 1) #8, !dbg !331
  unreachable, !dbg !331

; <label>:161:                                    ; preds = %141
  br label %162, !dbg !332

; <label>:162:                                    ; preds = %161, %129
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !333
  %164 = icmp eq %struct._IO_FILE* null, %163, !dbg !335
  br i1 %164, label %165, label %175, !dbg !336

; <label>:165:                                    ; preds = %162
  br label %166, !dbg !337, !llvm.loop !339

; <label>:166:                                    ; preds = %165
  %167 = load i32, i32* @_dbg_flag, align 4, !dbg !340
  %168 = icmp ne i32 %167, 0, !dbg !340
  br i1 %168, label %169, label %172, !dbg !340

; <label>:169:                                    ; preds = %166
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !344
  %171 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %170, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0)), !dbg !346
  br label %172, !dbg !346

; <label>:172:                                    ; preds = %169, %166
  br label %173, !dbg !347

; <label>:173:                                    ; preds = %172
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !349
  store %struct._IO_FILE* %174, %struct._IO_FILE** %9, align 8, !dbg !350
  br label %175, !dbg !351

; <label>:175:                                    ; preds = %173, %162
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !352
  %177 = icmp eq %struct._IO_FILE* null, %176, !dbg !354
  br i1 %177, label %178, label %188, !dbg !355

; <label>:178:                                    ; preds = %175
  br label %179, !dbg !356, !llvm.loop !358

; <label>:179:                                    ; preds = %178
  %180 = load i32, i32* @_dbg_flag, align 4, !dbg !359
  %181 = icmp ne i32 %180, 0, !dbg !359
  br i1 %181, label %182, label %185, !dbg !359

; <label>:182:                                    ; preds = %179
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !363
  %184 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %183, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0)), !dbg !365
  br label %185, !dbg !365

; <label>:185:                                    ; preds = %182, %179
  br label %186, !dbg !366

; <label>:186:                                    ; preds = %185
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !368
  store %struct._IO_FILE* %187, %struct._IO_FILE** %10, align 8, !dbg !369
  br label %188, !dbg !370

; <label>:188:                                    ; preds = %186, %175
  %189 = call noalias i8* @malloc(i64 65536) #7, !dbg !371
  store i8* %189, i8** %11, align 8, !dbg !372
  %190 = load i8*, i8** %11, align 8, !dbg !373
  %191 = icmp ne i8* %190, null, !dbg !373
  br i1 %191, label %192, label %300, !dbg !375

; <label>:192:                                    ; preds = %188
  call void @genwqe_crc32_setup_lut(), !dbg !376
  %193 = load i32, i32* @reverse_mode, align 4, !dbg !378
  %194 = icmp eq i32 1, %193, !dbg !380
  br i1 %194, label %195, label %225, !dbg !381

; <label>:195:                                    ; preds = %192
  %196 = load i8*, i8** %11, align 8, !dbg !382
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !384
  %198 = call i64 @fread(i8* %196, i64 1, i64 65536, %struct._IO_FILE* %197), !dbg !385
  store i64 %198, i64* %17, align 8, !dbg !386
  br label %199, !dbg !387, !llvm.loop !388

; <label>:199:                                    ; preds = %195
  %200 = load i32, i32* @_dbg_flag, align 4, !dbg !389
  %201 = icmp ne i32 %200, 0, !dbg !389
  br i1 %201, label %202, label %207, !dbg !389

; <label>:202:                                    ; preds = %199
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !393
  %204 = load i64, i64* %17, align 8, !dbg !395
  %205 = trunc i64 %204 to i32, !dbg !396
  %206 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %203, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0), i32 %205), !dbg !397
  br label %207, !dbg !397

; <label>:207:                                    ; preds = %202, %199
  br label %208, !dbg !398

; <label>:208:                                    ; preds = %207
  %209 = load i64, i64* %17, align 8, !dbg !400
  %210 = icmp ne i64 101, %209, !dbg !402
  br i1 %210, label %211, label %218, !dbg !403

; <label>:211:                                    ; preds = %208
  br label %212, !dbg !404, !llvm.loop !406

; <label>:212:                                    ; preds = %211
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !407
  %214 = load i64, i64* %17, align 8, !dbg !410
  %215 = trunc i64 %214 to i32, !dbg !411
  %216 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %213, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 190, i32 %215, i32 101), !dbg !412
  br label %217, !dbg !413

; <label>:217:                                    ; preds = %212
  br label %224, !dbg !414

; <label>:218:                                    ; preds = %208
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !415
  %220 = load i64, i64* %17, align 8, !dbg !417
  %221 = trunc i64 %220 to i32, !dbg !417
  %222 = load i8*, i8** %11, align 8, !dbg !418
  %223 = call zeroext i1 @bin_2_csv(%struct._IO_FILE* %219, i32 %221, i8* %222), !dbg !419
  br label %224

; <label>:224:                                    ; preds = %218, %217
  br label %298, !dbg !420

; <label>:225:                                    ; preds = %192
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !421
  %227 = load i8*, i8** %11, align 8, !dbg !424
  %228 = call zeroext i1 @csv_2_bin(%struct._IO_FILE* %226, i8* %227, i32* %14, i32* %12, i32* %13), !dbg !425
  br i1 %228, label %229, label %296, !dbg !426

; <label>:229:                                    ; preds = %225
  %230 = load i32, i32* %12, align 4, !dbg !427
  %231 = icmp ne i32 0, %230, !dbg !430
  br i1 %231, label %232, label %290, !dbg !431

; <label>:232:                                    ; preds = %229
  %233 = load i32, i32* @make_crc, align 4, !dbg !432
  %234 = icmp eq i32 1, %233, !dbg !434
  br i1 %234, label %235, label %290, !dbg !435

; <label>:235:                                    ; preds = %232
  %236 = load i8*, i8** %11, align 8, !dbg !436
  %237 = load i32, i32* %14, align 4, !dbg !438
  %238 = sub nsw i32 %237, 4, !dbg !439
  %239 = sext i32 %238 to i64, !dbg !438
  %240 = call i32 @genwqe_crc32_gen(i8* %236, i64 %239, i32 -1), !dbg !440
  store i32 %240, i32* %12, align 4, !dbg !441
  %241 = load i32, i32* %12, align 4, !dbg !442
  %242 = call i32 @__fswab32(i32 %241), !dbg !443
  %243 = bitcast %union.swap_me* %16 to i32*, !dbg !444
  store i32 %242, i32* %243, align 4, !dbg !445
  %244 = bitcast %union.swap_me* %16 to %struct.anon.0*, !dbg !446
  %245 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %244, i32 0, i32 0, !dbg !447
  %246 = getelementptr inbounds [4 x i8], [4 x i8]* %245, i64 0, i64 0, !dbg !448
  %247 = load i8, i8* %246, align 4, !dbg !448
  %248 = load i32, i32* %14, align 4, !dbg !449
  %249 = sub nsw i32 %248, 4, !dbg !450
  %250 = sext i32 %249 to i64, !dbg !451
  %251 = load i8*, i8** %11, align 8, !dbg !451
  %252 = getelementptr inbounds i8, i8* %251, i64 %250, !dbg !451
  store i8 %247, i8* %252, align 1, !dbg !452
  %253 = bitcast %union.swap_me* %16 to %struct.anon.0*, !dbg !453
  %254 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %253, i32 0, i32 0, !dbg !454
  %255 = getelementptr inbounds [4 x i8], [4 x i8]* %254, i64 0, i64 1, !dbg !455
  %256 = load i8, i8* %255, align 1, !dbg !455
  %257 = load i32, i32* %14, align 4, !dbg !456
  %258 = sub nsw i32 %257, 3, !dbg !457
  %259 = sext i32 %258 to i64, !dbg !458
  %260 = load i8*, i8** %11, align 8, !dbg !458
  %261 = getelementptr inbounds i8, i8* %260, i64 %259, !dbg !458
  store i8 %256, i8* %261, align 1, !dbg !459
  %262 = bitcast %union.swap_me* %16 to %struct.anon.0*, !dbg !460
  %263 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %262, i32 0, i32 0, !dbg !461
  %264 = getelementptr inbounds [4 x i8], [4 x i8]* %263, i64 0, i64 2, !dbg !462
  %265 = load i8, i8* %264, align 2, !dbg !462
  %266 = load i32, i32* %14, align 4, !dbg !463
  %267 = sub nsw i32 %266, 2, !dbg !464
  %268 = sext i32 %267 to i64, !dbg !465
  %269 = load i8*, i8** %11, align 8, !dbg !465
  %270 = getelementptr inbounds i8, i8* %269, i64 %268, !dbg !465
  store i8 %265, i8* %270, align 1, !dbg !466
  %271 = bitcast %union.swap_me* %16 to %struct.anon.0*, !dbg !467
  %272 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %271, i32 0, i32 0, !dbg !468
  %273 = getelementptr inbounds [4 x i8], [4 x i8]* %272, i64 0, i64 3, !dbg !469
  %274 = load i8, i8* %273, align 1, !dbg !469
  %275 = load i32, i32* %14, align 4, !dbg !470
  %276 = sub nsw i32 %275, 1, !dbg !471
  %277 = sext i32 %276 to i64, !dbg !472
  %278 = load i8*, i8** %11, align 8, !dbg !472
  %279 = getelementptr inbounds i8, i8* %278, i64 %277, !dbg !472
  store i8 %274, i8* %279, align 1, !dbg !473
  br label %280, !dbg !474, !llvm.loop !475

; <label>:280:                                    ; preds = %235
  %281 = load i32, i32* @verbose_flag, align 4, !dbg !476
  %282 = icmp ne i32 %281, 0, !dbg !476
  br i1 %282, label %283, label %288, !dbg !476

; <label>:283:                                    ; preds = %280
  %284 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !480
  %285 = load i32, i32* %13, align 4, !dbg !482
  %286 = load i32, i32* %12, align 4, !dbg !483
  %287 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %284, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i32 0, i32 0), i32 %285, i32 %286), !dbg !484
  br label %288, !dbg !484

; <label>:288:                                    ; preds = %283, %280
  br label %289, !dbg !485

; <label>:289:                                    ; preds = %288
  br label %290, !dbg !487

; <label>:290:                                    ; preds = %289, %232, %229
  %291 = load i8*, i8** %11, align 8, !dbg !488
  %292 = load i32, i32* %14, align 4, !dbg !489
  %293 = sext i32 %292 to i64, !dbg !489
  %294 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !490
  %295 = call i64 @fwrite(i8* %291, i64 1, i64 %293, %struct._IO_FILE* %294), !dbg !491
  br label %297, !dbg !492

; <label>:296:                                    ; preds = %225
  store i32 1, i32* %15, align 4, !dbg !493
  br label %297

; <label>:297:                                    ; preds = %296, %290
  br label %298

; <label>:298:                                    ; preds = %297, %224
  %299 = load i8*, i8** %11, align 8, !dbg !495
  call void @free(i8* %299) #7, !dbg !496
  br label %305, !dbg !497

; <label>:300:                                    ; preds = %188
  br label %301, !dbg !498, !llvm.loop !500

; <label>:301:                                    ; preds = %300
  %302 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !501
  %303 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %302, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 211, i32 65536), !dbg !504
  br label %304, !dbg !505

; <label>:304:                                    ; preds = %301
  store i32 1, i32* %15, align 4, !dbg !506
  br label %305

; <label>:305:                                    ; preds = %304, %298
  br label %306, !dbg !507, !llvm.loop !508

; <label>:306:                                    ; preds = %305
  %307 = load i32, i32* @_dbg_flag, align 4, !dbg !509
  %308 = icmp ne i32 %307, 0, !dbg !509
  br i1 %308, label %309, label %312, !dbg !509

; <label>:309:                                    ; preds = %306
  %310 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !513
  %311 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %310, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0)), !dbg !515
  br label %312, !dbg !515

; <label>:312:                                    ; preds = %309, %306
  br label %313, !dbg !516

; <label>:313:                                    ; preds = %312
  %314 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !518
  %315 = call i32 @fclose(%struct._IO_FILE* %314), !dbg !519
  %316 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !520
  %317 = call i32 @fclose(%struct._IO_FILE* %316), !dbg !521
  br label %318, !dbg !522, !llvm.loop !523

; <label>:318:                                    ; preds = %313
  %319 = load i32, i32* @verbose_flag, align 4, !dbg !524
  %320 = icmp ne i32 %319, 0, !dbg !524
  br i1 %320, label %321, label %325, !dbg !524

; <label>:321:                                    ; preds = %318
  %322 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !528
  %323 = load i32, i32* %15, align 4, !dbg !530
  %324 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %322, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), i32 %323), !dbg !530
  br label %325, !dbg !530

; <label>:325:                                    ; preds = %321, %318
  br label %326, !dbg !531

; <label>:326:                                    ; preds = %325
  %327 = load i32, i32* %15, align 4, !dbg !533
  call void @exit(i32 %327) #8, !dbg !534
  unreachable, !dbg !534
                                                  ; No predecessors!
  %329 = load i32, i32* %3, align 4, !dbg !535
  ret i32 %329, !dbg !535
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

; Function Attrs: nounwind uwtable
define internal void @usage(i8*) #0 !dbg !536 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !539, metadata !42), !dbg !540
  %3 = load i8*, i8** %2, align 8, !dbg !541
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([719 x i8], [719 x i8]* @.str.24, i32 0, i32 0), i8* %3, i32 258), !dbg !542
  ret void, !dbg !543
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare void @genwqe_crc32_setup_lut() #4

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #4

declare zeroext i1 @bin_2_csv(%struct._IO_FILE*, i32, i8*) #4

declare zeroext i1 @csv_2_bin(%struct._IO_FILE*, i8*, i32*, i32*, i32*) #4

declare i32 @genwqe_crc32_gen(i8*, i64, i32) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__fswab32(i32) #6 !dbg !544 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !548, metadata !42), !dbg !549
  %3 = load i32, i32* %2, align 4, !dbg !550
  %4 = call i32 @__arch_swab32(i32 %3), !dbg !551
  ret i32 %4, !dbg !552
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i32 @printf(i8*, ...) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__arch_swab32(i32) #6 !dbg !553 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !555, metadata !42), !dbg !556
  %3 = load i32, i32* %2, align 4, !dbg !557
  %4 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %3) #1, !dbg !558, !srcloc !559
  store i32 %4, i32* %2, align 4, !dbg !558
  %5 = load i32, i32* %2, align 4, !dbg !560
  ret i32 %5, !dbg !561
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!33, !34}
!llvm.ident = !{!35}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !11)
!1 = !DIFile(filename: "/home/lichi/Desktop/genwqe/[task]tools--genwqe_vpdconv/[inter]tools--genwqe_vpdconv.o.i", directory: "/home/lichi/Desktop")
!2 = !{}
!3 = !{!4, !5, !6, !9}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !7, line: 26, baseType: !8)
!7 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop")
!8 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !10, line: 30, baseType: !6)
!10 = !DIFile(filename: "/usr/include/linux/types.h", directory: "/home/lichi/Desktop")
!11 = !{!12, !14, !15, !30, !31, !32}
!12 = distinct !DIGlobalVariable(name: "verbose_flag", scope: !0, file: !13, line: 43, type: !5, isLocal: false, isDefinition: true, variable: i32* @verbose_flag)
!13 = !DIFile(filename: "genwqe_vpdconv.c", directory: "/home/lichi/Desktop")
!14 = distinct !DIGlobalVariable(name: "_dbg_flag", scope: !0, file: !13, line: 44, type: !5, isLocal: false, isDefinition: true, variable: i32* @_dbg_flag)
!15 = distinct !DIGlobalVariable(name: "long_options", scope: !0, file: !13, line: 69, type: !16, isLocal: true, isDefinition: true, variable: [8 x %struct.option]* @long_options)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2048, align: 64, elements: !28)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !18, line: 104, size: 256, align: 64, elements: !19)
!18 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/lichi/Desktop")
!19 = !{!20, !24, !25, !27}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !17, file: !18, line: 106, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !17, file: !18, line: 109, baseType: !5, size: 32, align: 32, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !17, file: !18, line: 110, baseType: !26, size: 64, align: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !17, file: !18, line: 111, baseType: !5, size: 32, align: 32, offset: 192)
!28 = !{!29}
!29 = !DISubrange(count: 8)
!30 = distinct !DIGlobalVariable(name: "version", scope: !0, file: !13, line: 42, type: !21, isLocal: true, isDefinition: true, variable: i8** @version)
!31 = distinct !DIGlobalVariable(name: "reverse_mode", scope: !0, file: !13, line: 67, type: !5, isLocal: true, isDefinition: true, variable: i32* @reverse_mode)
!32 = distinct !DIGlobalVariable(name: "make_crc", scope: !0, file: !13, line: 66, type: !5, isLocal: true, isDefinition: true, variable: i32* @make_crc)
!33 = !{i32 2, !"Dwarf Version", i32 4}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!36 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 83, type: !37, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!37 = !DISubroutineType(types: !38)
!38 = !{!5, !5, !39}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!41 = !DILocalVariable(name: "argc", arg: 1, scope: !36, file: !13, line: 83, type: !5)
!42 = !DIExpression()
!43 = !DILocation(line: 83, column: 14, scope: !36)
!44 = !DILocalVariable(name: "argv", arg: 2, scope: !36, file: !13, line: 83, type: !39)
!45 = !DILocation(line: 83, column: 26, scope: !36)
!46 = !DILocalVariable(name: "option", scope: !36, file: !13, line: 85, type: !5)
!47 = !DILocation(line: 85, column: 9, scope: !36)
!48 = !DILocalVariable(name: "input_file", scope: !36, file: !13, line: 86, type: !40)
!49 = !DILocation(line: 86, column: 11, scope: !36)
!50 = !DILocalVariable(name: "output_file", scope: !36, file: !13, line: 87, type: !40)
!51 = !DILocation(line: 87, column: 11, scope: !36)
!52 = !DILocalVariable(name: "ip", scope: !36, file: !13, line: 88, type: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !55, line: 48, baseType: !56)
!55 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !57, line: 241, size: 1728, align: 64, elements: !58)
!57 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop")
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !79, !80, !81, !82, !86, !88, !90, !94, !97, !99, !100, !101, !102, !103, !107, !108}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !56, file: !57, line: 242, baseType: !5, size: 32, align: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !56, file: !57, line: 247, baseType: !40, size: 64, align: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !56, file: !57, line: 248, baseType: !40, size: 64, align: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !56, file: !57, line: 249, baseType: !40, size: 64, align: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !56, file: !57, line: 250, baseType: !40, size: 64, align: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !56, file: !57, line: 251, baseType: !40, size: 64, align: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !56, file: !57, line: 252, baseType: !40, size: 64, align: 64, offset: 384)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !56, file: !57, line: 253, baseType: !40, size: 64, align: 64, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !56, file: !57, line: 254, baseType: !40, size: 64, align: 64, offset: 512)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !56, file: !57, line: 256, baseType: !40, size: 64, align: 64, offset: 576)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !56, file: !57, line: 257, baseType: !40, size: 64, align: 64, offset: 640)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !56, file: !57, line: 258, baseType: !40, size: 64, align: 64, offset: 704)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !56, file: !57, line: 260, baseType: !72, size: 64, align: 64, offset: 768)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !57, line: 156, size: 192, align: 64, elements: !74)
!74 = !{!75, !76, !78}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !73, file: !57, line: 157, baseType: !72, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !73, file: !57, line: 158, baseType: !77, size: 64, align: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !73, file: !57, line: 162, baseType: !5, size: 32, align: 32, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !56, file: !57, line: 262, baseType: !77, size: 64, align: 64, offset: 832)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !56, file: !57, line: 264, baseType: !5, size: 32, align: 32, offset: 896)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !56, file: !57, line: 268, baseType: !5, size: 32, align: 32, offset: 928)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !56, file: !57, line: 270, baseType: !83, size: 64, align: 64, offset: 960)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !84, line: 131, baseType: !85)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop")
!85 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !56, file: !57, line: 274, baseType: !87, size: 16, align: 16, offset: 1024)
!87 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !56, file: !57, line: 275, baseType: !89, size: 8, align: 8, offset: 1040)
!89 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !56, file: !57, line: 276, baseType: !91, size: 8, align: 8, offset: 1048)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, align: 8, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 1)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !56, file: !57, line: 280, baseType: !95, size: 64, align: 64, offset: 1088)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !57, line: 150, baseType: null)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !56, file: !57, line: 289, baseType: !98, size: 64, align: 64, offset: 1152)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !84, line: 132, baseType: !85)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !56, file: !57, line: 297, baseType: !4, size: 64, align: 64, offset: 1216)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !56, file: !57, line: 298, baseType: !4, size: 64, align: 64, offset: 1280)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !56, file: !57, line: 299, baseType: !4, size: 64, align: 64, offset: 1344)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !56, file: !57, line: 300, baseType: !4, size: 64, align: 64, offset: 1408)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !56, file: !57, line: 302, baseType: !104, size: 64, align: 64, offset: 1472)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 216, baseType: !106)
!105 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop")
!106 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !56, file: !57, line: 303, baseType: !5, size: 32, align: 32, offset: 1536)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !56, file: !57, line: 305, baseType: !109, size: 160, align: 8, offset: 1568)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, align: 8, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 20)
!112 = !DILocation(line: 88, column: 11, scope: !36)
!113 = !DILocalVariable(name: "op", scope: !36, file: !13, line: 88, type: !53)
!114 = !DILocation(line: 88, column: 22, scope: !36)
!115 = !DILocalVariable(name: "buffer", scope: !36, file: !13, line: 89, type: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !118, line: 48, baseType: !119)
!118 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop")
!119 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!120 = !DILocation(line: 89, column: 14, scope: !36)
!121 = !DILocalVariable(name: "crc32", scope: !36, file: !13, line: 90, type: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !118, line: 51, baseType: !8)
!123 = !DILocation(line: 90, column: 14, scope: !36)
!124 = !DILocalVariable(name: "crc32_from_csv", scope: !36, file: !13, line: 90, type: !122)
!125 = !DILocation(line: 90, column: 21, scope: !36)
!126 = !DILocalVariable(name: "size", scope: !36, file: !13, line: 91, type: !5)
!127 = !DILocation(line: 91, column: 9, scope: !36)
!128 = !DILocalVariable(name: "rc", scope: !36, file: !13, line: 91, type: !5)
!129 = !DILocation(line: 91, column: 15, scope: !36)
!130 = !DILocalVariable(name: "new_crc32", scope: !36, file: !13, line: 92, type: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "swap_me", file: !132, line: 69, size: 32, align: 32, elements: !133)
!132 = !DIFile(filename: "../include/genwqe_vpd.h", directory: "/home/lichi/Desktop")
!133 = !{!134, !135, !143}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ui32", scope: !131, file: !132, line: 70, baseType: !122, size: 32, align: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "WORD", scope: !131, file: !132, line: 73, baseType: !136, size: 32, align: 16)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !131, file: !132, line: 71, size: 32, align: 16, elements: !137)
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "uw16", scope: !136, file: !132, line: 72, baseType: !139, size: 32, align: 16)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 32, align: 16, elements: !141)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !118, line: 49, baseType: !87)
!141 = !{!142}
!142 = !DISubrange(count: 2)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "BYTE", scope: !131, file: !132, line: 76, baseType: !144, size: 32, align: 8)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !131, file: !132, line: 74, size: 32, align: 8, elements: !145)
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "ub8", scope: !144, file: !132, line: 75, baseType: !147, size: 32, align: 8)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 32, align: 8, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 4)
!150 = !DILocation(line: 92, column: 19, scope: !36)
!151 = !DILocalVariable(name: "file_size", scope: !36, file: !13, line: 93, type: !104)
!152 = !DILocation(line: 93, column: 12, scope: !36)
!153 = !DILocation(line: 96, column: 5, scope: !36)
!154 = !DILocalVariable(name: "option_index", scope: !155, file: !13, line: 97, type: !5)
!155 = distinct !DILexicalBlock(scope: !36, file: !13, line: 96, column: 15)
!156 = !DILocation(line: 97, column: 6, scope: !155)
!157 = !DILocation(line: 98, column: 23, scope: !155)
!158 = !DILocation(line: 98, column: 29, scope: !155)
!159 = !DILocation(line: 98, column: 11, scope: !155)
!160 = !DILocation(line: 98, column: 9, scope: !155)
!161 = !DILocation(line: 100, column: 12, scope: !162)
!162 = distinct !DILexicalBlock(scope: !155, file: !13, line: 100, column: 5)
!163 = !DILocation(line: 100, column: 9, scope: !162)
!164 = !DILocation(line: 100, column: 5, scope: !155)
!165 = !DILocation(line: 101, column: 6, scope: !162)
!166 = !DILocation(line: 103, column: 10, scope: !155)
!167 = !DILocation(line: 103, column: 2, scope: !155)
!168 = !DILocation(line: 106, column: 6, scope: !169)
!169 = distinct !DILexicalBlock(scope: !155, file: !13, line: 103, column: 18)
!170 = !DILocation(line: 108, column: 17, scope: !171)
!171 = distinct !DILexicalBlock(scope: !169, file: !13, line: 108, column: 9)
!172 = !DILocation(line: 108, column: 14, scope: !171)
!173 = !DILocation(line: 108, column: 9, scope: !169)
!174 = !DILocation(line: 109, column: 16, scope: !171)
!175 = !DILocation(line: 109, column: 14, scope: !171)
!176 = !DILocation(line: 109, column: 3, scope: !171)
!177 = !DILocation(line: 111, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !171, file: !13, line: 110, column: 11)
!179 = !DILocation(line: 111, column: 3, scope: !178)
!180 = !DILocation(line: 112, column: 3, scope: !178)
!181 = !DILocation(line: 114, column: 6, scope: !169)
!182 = !DILocation(line: 116, column: 17, scope: !183)
!183 = distinct !DILexicalBlock(scope: !169, file: !13, line: 116, column: 9)
!184 = !DILocation(line: 116, column: 14, scope: !183)
!185 = !DILocation(line: 116, column: 9, scope: !169)
!186 = !DILocation(line: 117, column: 17, scope: !183)
!187 = !DILocation(line: 117, column: 15, scope: !183)
!188 = !DILocation(line: 117, column: 3, scope: !183)
!189 = !DILocation(line: 119, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !183, file: !13, line: 118, column: 11)
!191 = !DILocation(line: 119, column: 3, scope: !190)
!192 = !DILocation(line: 120, column: 3, scope: !190)
!193 = !DILocation(line: 122, column: 6, scope: !169)
!194 = !DILocation(line: 124, column: 12, scope: !169)
!195 = !DILocation(line: 124, column: 6, scope: !169)
!196 = !DILocation(line: 125, column: 6, scope: !169)
!197 = !DILocation(line: 128, column: 13, scope: !169)
!198 = !DILocation(line: 128, column: 29, scope: !169)
!199 = !DILocation(line: 128, column: 6, scope: !169)
!200 = !DILocation(line: 129, column: 6, scope: !169)
!201 = !DILocation(line: 132, column: 18, scope: !169)
!202 = !DILocation(line: 133, column: 10, scope: !203)
!203 = distinct !DILexicalBlock(scope: !169, file: !13, line: 133, column: 10)
!204 = !DILocation(line: 133, column: 23, scope: !203)
!205 = !DILocation(line: 133, column: 10, scope: !169)
!206 = !DILocation(line: 134, column: 12, scope: !203)
!207 = !DILocation(line: 134, column: 3, scope: !203)
!208 = !DILocation(line: 135, column: 6, scope: !169)
!209 = !DILocation(line: 137, column: 12, scope: !169)
!210 = !DILocation(line: 137, column: 6, scope: !169)
!211 = !DILocation(line: 138, column: 6, scope: !169)
!212 = !DILocation(line: 96, column: 5, scope: !213)
!213 = !DILexicalBlockFile(scope: !36, file: !13, discriminator: 1)
!214 = distinct !{!214, !153}
!215 = !DILocation(line: 143, column: 9, scope: !216)
!216 = distinct !DILexicalBlock(scope: !36, file: !13, line: 143, column: 9)
!217 = !DILocation(line: 143, column: 18, scope: !216)
!218 = !DILocation(line: 143, column: 16, scope: !216)
!219 = !DILocation(line: 143, column: 9, scope: !36)
!220 = !DILocation(line: 144, column: 26, scope: !221)
!221 = distinct !DILexicalBlock(scope: !216, file: !13, line: 143, column: 24)
!222 = !DILocation(line: 144, column: 15, scope: !221)
!223 = !DILocation(line: 144, column: 13, scope: !221)
!224 = !DILocation(line: 145, column: 6, scope: !225)
!225 = distinct !DILexicalBlock(scope: !221, file: !13, line: 145, column: 6)
!226 = !DILocation(line: 145, column: 15, scope: !225)
!227 = !DILocation(line: 145, column: 13, scope: !225)
!228 = !DILocation(line: 145, column: 6, scope: !221)
!229 = !DILocation(line: 146, column: 31, scope: !230)
!230 = distinct !DILexicalBlock(scope: !225, file: !13, line: 145, column: 21)
!231 = !DILocation(line: 146, column: 20, scope: !230)
!232 = !DILocation(line: 146, column: 18, scope: !230)
!233 = !DILocation(line: 147, column: 10, scope: !234)
!234 = distinct !DILexicalBlock(scope: !230, file: !13, line: 147, column: 10)
!235 = !DILocation(line: 147, column: 19, scope: !234)
!236 = !DILocation(line: 147, column: 17, scope: !234)
!237 = !DILocation(line: 147, column: 10, scope: !230)
!238 = !DILocation(line: 148, column: 3, scope: !239)
!239 = distinct !DILexicalBlock(scope: !234, file: !13, line: 147, column: 25)
!240 = distinct !{!240, !238}
!241 = !DILocation(line: 148, column: 2, scope: !242)
!242 = !DILexicalBlockFile(scope: !243, file: !13, discriminator: 1)
!243 = distinct !DILexicalBlock(scope: !239, file: !13, line: 148, column: 6)
!244 = !DILocation(line: 148, column: 8, scope: !242)
!245 = !DILocation(line: 148, column: 66, scope: !242)
!246 = !DILocation(line: 149, column: 3, scope: !239)
!247 = !DILocation(line: 151, column: 2, scope: !230)
!248 = !DILocation(line: 152, column: 5, scope: !221)
!249 = !DILocation(line: 153, column: 9, scope: !250)
!250 = distinct !DILexicalBlock(scope: !36, file: !13, line: 153, column: 9)
!251 = !DILocation(line: 153, column: 9, scope: !36)
!252 = !DILocation(line: 154, column: 2, scope: !253)
!253 = distinct !DILexicalBlock(scope: !250, file: !13, line: 153, column: 21)
!254 = distinct !{!254, !252}
!255 = !DILocation(line: 154, column: 11, scope: !256)
!256 = !DILexicalBlockFile(scope: !257, file: !13, discriminator: 1)
!257 = distinct !DILexicalBlock(scope: !258, file: !13, line: 154, column: 11)
!258 = distinct !DILexicalBlock(scope: !253, file: !13, line: 154, column: 5)
!259 = !DILocation(line: 154, column: 1, scope: !260)
!260 = !DILexicalBlockFile(scope: !257, file: !13, discriminator: 2)
!261 = !DILocation(line: 154, column: 27, scope: !260)
!262 = !DILocation(line: 154, column: 22, scope: !260)
!263 = !DILocation(line: 154, column: 40, scope: !264)
!264 = !DILexicalBlockFile(scope: !258, file: !13, discriminator: 3)
!265 = !DILocation(line: 155, column: 13, scope: !253)
!266 = !DILocation(line: 155, column: 7, scope: !253)
!267 = !DILocation(line: 155, column: 5, scope: !253)
!268 = !DILocation(line: 156, column: 13, scope: !269)
!269 = distinct !DILexicalBlock(scope: !253, file: !13, line: 156, column: 5)
!270 = !DILocation(line: 156, column: 10, scope: !269)
!271 = !DILocation(line: 156, column: 5, scope: !253)
!272 = !DILocation(line: 157, column: 6, scope: !273)
!273 = distinct !DILexicalBlock(scope: !269, file: !13, line: 156, column: 17)
!274 = distinct !{!274, !272}
!275 = !DILocation(line: 157, column: 5, scope: !276)
!276 = !DILexicalBlockFile(scope: !277, file: !13, discriminator: 1)
!277 = distinct !DILexicalBlock(scope: !273, file: !13, line: 157, column: 9)
!278 = !DILocation(line: 157, column: 7, scope: !276)
!279 = !DILocation(line: 157, column: 6, scope: !276)
!280 = !DILocation(line: 157, column: 68, scope: !281)
!281 = !DILexicalBlockFile(scope: !276, file: !13, discriminator: 2)
!282 = !DILocation(line: 157, column: 8, scope: !276)
!283 = !DILocation(line: 157, column: 11, scope: !284)
!284 = !DILexicalBlockFile(scope: !276, file: !13, discriminator: 3)
!285 = !DILocation(line: 157, column: 21, scope: !276)
!286 = !DILocation(line: 158, column: 6, scope: !273)
!287 = !DILocation(line: 160, column: 5, scope: !253)
!288 = !DILocation(line: 161, column: 9, scope: !289)
!289 = distinct !DILexicalBlock(scope: !36, file: !13, line: 161, column: 9)
!290 = !DILocation(line: 161, column: 9, scope: !36)
!291 = !DILocation(line: 162, column: 2, scope: !292)
!292 = distinct !DILexicalBlock(scope: !289, file: !13, line: 161, column: 22)
!293 = distinct !{!293, !291}
!294 = !DILocation(line: 162, column: 11, scope: !295)
!295 = !DILexicalBlockFile(scope: !296, file: !13, discriminator: 1)
!296 = distinct !DILexicalBlock(scope: !297, file: !13, line: 162, column: 11)
!297 = distinct !DILexicalBlock(scope: !292, file: !13, line: 162, column: 5)
!298 = !DILocation(line: 162, column: 1, scope: !299)
!299 = !DILexicalBlockFile(scope: !296, file: !13, discriminator: 2)
!300 = !DILocation(line: 162, column: 27, scope: !299)
!301 = !DILocation(line: 162, column: 22, scope: !299)
!302 = !DILocation(line: 162, column: 41, scope: !303)
!303 = !DILexicalBlockFile(scope: !297, file: !13, discriminator: 3)
!304 = !DILocation(line: 163, column: 13, scope: !292)
!305 = !DILocation(line: 163, column: 7, scope: !292)
!306 = !DILocation(line: 163, column: 5, scope: !292)
!307 = !DILocation(line: 164, column: 13, scope: !308)
!308 = distinct !DILexicalBlock(scope: !292, file: !13, line: 164, column: 5)
!309 = !DILocation(line: 164, column: 10, scope: !308)
!310 = !DILocation(line: 164, column: 5, scope: !292)
!311 = !DILocation(line: 165, column: 6, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !13, line: 164, column: 17)
!313 = distinct !{!313, !311}
!314 = !DILocation(line: 165, column: 5, scope: !315)
!315 = !DILexicalBlockFile(scope: !316, file: !13, discriminator: 1)
!316 = distinct !DILexicalBlock(scope: !312, file: !13, line: 165, column: 9)
!317 = !DILocation(line: 165, column: 7, scope: !315)
!318 = !DILocation(line: 165, column: 6, scope: !315)
!319 = !DILocation(line: 165, column: 68, scope: !320)
!320 = !DILexicalBlockFile(scope: !315, file: !13, discriminator: 2)
!321 = !DILocation(line: 165, column: 8, scope: !315)
!322 = !DILocation(line: 165, column: 11, scope: !323)
!323 = !DILexicalBlockFile(scope: !315, file: !13, discriminator: 3)
!324 = !DILocation(line: 165, column: 22, scope: !315)
!325 = !DILocation(line: 166, column: 10, scope: !326)
!326 = distinct !DILexicalBlock(scope: !312, file: !13, line: 166, column: 10)
!327 = !DILocation(line: 166, column: 10, scope: !312)
!328 = !DILocation(line: 166, column: 21, scope: !329)
!329 = !DILexicalBlockFile(scope: !326, file: !13, discriminator: 1)
!330 = !DILocation(line: 166, column: 14, scope: !329)
!331 = !DILocation(line: 167, column: 6, scope: !312)
!332 = !DILocation(line: 169, column: 5, scope: !292)
!333 = !DILocation(line: 172, column: 16, scope: !334)
!334 = distinct !DILexicalBlock(scope: !36, file: !13, line: 172, column: 8)
!335 = !DILocation(line: 172, column: 13, scope: !334)
!336 = !DILocation(line: 172, column: 8, scope: !36)
!337 = !DILocation(line: 173, column: 2, scope: !338)
!338 = distinct !DILexicalBlock(scope: !334, file: !13, line: 172, column: 20)
!339 = distinct !{!339, !337}
!340 = !DILocation(line: 173, column: 11, scope: !341)
!341 = !DILexicalBlockFile(scope: !342, file: !13, discriminator: 1)
!342 = distinct !DILexicalBlock(scope: !343, file: !13, line: 173, column: 11)
!343 = distinct !DILexicalBlock(scope: !338, file: !13, line: 173, column: 5)
!344 = !DILocation(line: 173, column: 1, scope: !345)
!345 = !DILexicalBlockFile(scope: !342, file: !13, discriminator: 2)
!346 = !DILocation(line: 173, column: 22, scope: !345)
!347 = !DILocation(line: 173, column: 25, scope: !348)
!348 = !DILexicalBlockFile(scope: !343, file: !13, discriminator: 3)
!349 = !DILocation(line: 174, column: 6, scope: !338)
!350 = !DILocation(line: 174, column: 5, scope: !338)
!351 = !DILocation(line: 175, column: 5, scope: !338)
!352 = !DILocation(line: 177, column: 16, scope: !353)
!353 = distinct !DILexicalBlock(scope: !36, file: !13, line: 177, column: 8)
!354 = !DILocation(line: 177, column: 13, scope: !353)
!355 = !DILocation(line: 177, column: 8, scope: !36)
!356 = !DILocation(line: 178, column: 2, scope: !357)
!357 = distinct !DILexicalBlock(scope: !353, file: !13, line: 177, column: 20)
!358 = distinct !{!358, !356}
!359 = !DILocation(line: 178, column: 11, scope: !360)
!360 = !DILexicalBlockFile(scope: !361, file: !13, discriminator: 1)
!361 = distinct !DILexicalBlock(scope: !362, file: !13, line: 178, column: 11)
!362 = distinct !DILexicalBlock(scope: !357, file: !13, line: 178, column: 5)
!363 = !DILocation(line: 178, column: 1, scope: !364)
!364 = !DILexicalBlockFile(scope: !361, file: !13, discriminator: 2)
!365 = !DILocation(line: 178, column: 22, scope: !364)
!366 = !DILocation(line: 178, column: 25, scope: !367)
!367 = !DILexicalBlockFile(scope: !362, file: !13, discriminator: 3)
!368 = !DILocation(line: 179, column: 6, scope: !357)
!369 = !DILocation(line: 179, column: 5, scope: !357)
!370 = !DILocation(line: 180, column: 5, scope: !357)
!371 = !DILocation(line: 182, column: 14, scope: !36)
!372 = !DILocation(line: 182, column: 12, scope: !36)
!373 = !DILocation(line: 183, column: 9, scope: !374)
!374 = distinct !DILexicalBlock(scope: !36, file: !13, line: 183, column: 9)
!375 = !DILocation(line: 183, column: 9, scope: !36)
!376 = !DILocation(line: 184, column: 2, scope: !377)
!377 = distinct !DILexicalBlock(scope: !374, file: !13, line: 183, column: 17)
!378 = !DILocation(line: 185, column: 11, scope: !379)
!379 = distinct !DILexicalBlock(scope: !377, file: !13, line: 185, column: 6)
!380 = !DILocation(line: 185, column: 8, scope: !379)
!381 = !DILocation(line: 185, column: 6, scope: !377)
!382 = !DILocation(line: 186, column: 24, scope: !383)
!383 = distinct !DILexicalBlock(scope: !379, file: !13, line: 185, column: 25)
!384 = !DILocation(line: 186, column: 46, scope: !383)
!385 = !DILocation(line: 186, column: 18, scope: !383)
!386 = !DILocation(line: 186, column: 16, scope: !383)
!387 = !DILocation(line: 187, column: 6, scope: !383)
!388 = distinct !{!388, !387}
!389 = !DILocation(line: 187, column: 15, scope: !390)
!390 = !DILexicalBlockFile(scope: !391, file: !13, discriminator: 1)
!391 = distinct !DILexicalBlock(scope: !392, file: !13, line: 187, column: 15)
!392 = distinct !DILexicalBlock(scope: !383, file: !13, line: 187, column: 9)
!393 = !DILocation(line: 187, column: 5, scope: !394)
!394 = !DILexicalBlockFile(scope: !391, file: !13, discriminator: 2)
!395 = !DILocation(line: 187, column: 45, scope: !394)
!396 = !DILocation(line: 187, column: 40, scope: !394)
!397 = !DILocation(line: 187, column: 26, scope: !394)
!398 = !DILocation(line: 187, column: 57, scope: !399)
!399 = !DILexicalBlockFile(scope: !392, file: !13, discriminator: 3)
!400 = !DILocation(line: 188, column: 188, scope: !401)
!401 = distinct !DILexicalBlock(scope: !383, file: !13, line: 188, column: 10)
!402 = !DILocation(line: 188, column: 185, scope: !401)
!403 = !DILocation(line: 188, column: 10, scope: !383)
!404 = !DILocation(line: 189, column: 3, scope: !405)
!405 = distinct !DILexicalBlock(scope: !401, file: !13, line: 188, column: 199)
!406 = distinct !{!406, !404}
!407 = !DILocation(line: 189, column: 2, scope: !408)
!408 = !DILexicalBlockFile(scope: !409, file: !13, discriminator: 1)
!409 = distinct !DILexicalBlock(scope: !405, file: !13, line: 189, column: 6)
!410 = !DILocation(line: 189, column: 10, scope: !408)
!411 = !DILocation(line: 189, column: 5, scope: !408)
!412 = !DILocation(line: 189, column: 8, scope: !408)
!413 = !DILocation(line: 189, column: 203, scope: !408)
!414 = !DILocation(line: 191, column: 6, scope: !405)
!415 = !DILocation(line: 191, column: 23, scope: !416)
!416 = !DILexicalBlockFile(scope: !401, file: !13, discriminator: 1)
!417 = !DILocation(line: 191, column: 27, scope: !416)
!418 = !DILocation(line: 191, column: 38, scope: !416)
!419 = !DILocation(line: 191, column: 13, scope: !416)
!420 = !DILocation(line: 192, column: 2, scope: !383)
!421 = !DILocation(line: 193, column: 20, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !13, line: 193, column: 10)
!423 = distinct !DILexicalBlock(scope: !379, file: !13, line: 192, column: 9)
!424 = !DILocation(line: 193, column: 24, scope: !422)
!425 = !DILocation(line: 193, column: 10, scope: !422)
!426 = !DILocation(line: 193, column: 10, scope: !423)
!427 = !DILocation(line: 194, column: 13, scope: !428)
!428 = distinct !DILexicalBlock(scope: !429, file: !13, line: 194, column: 7)
!429 = distinct !DILexicalBlock(scope: !422, file: !13, line: 193, column: 65)
!430 = !DILocation(line: 194, column: 10, scope: !428)
!431 = !DILocation(line: 194, column: 20, scope: !428)
!432 = !DILocation(line: 194, column: 29, scope: !433)
!433 = !DILexicalBlockFile(scope: !428, file: !13, discriminator: 1)
!434 = !DILocation(line: 194, column: 26, scope: !433)
!435 = !DILocation(line: 194, column: 7, scope: !433)
!436 = !DILocation(line: 195, column: 32, scope: !437)
!437 = distinct !DILexicalBlock(scope: !428, file: !13, line: 194, column: 40)
!438 = !DILocation(line: 195, column: 40, scope: !437)
!439 = !DILocation(line: 195, column: 44, scope: !437)
!440 = !DILocation(line: 195, column: 15, scope: !437)
!441 = !DILocation(line: 195, column: 13, scope: !437)
!442 = !DILocation(line: 196, column: 23, scope: !437)
!443 = !DILocation(line: 196, column: 60, scope: !437)
!444 = !DILocation(line: 196, column: 17, scope: !437)
!445 = !DILocation(line: 196, column: 22, scope: !437)
!446 = !DILocation(line: 197, column: 34, scope: !437)
!447 = !DILocation(line: 197, column: 39, scope: !437)
!448 = !DILocation(line: 197, column: 24, scope: !437)
!449 = !DILocation(line: 197, column: 14, scope: !437)
!450 = !DILocation(line: 197, column: 18, scope: !437)
!451 = !DILocation(line: 197, column: 7, scope: !437)
!452 = !DILocation(line: 197, column: 22, scope: !437)
!453 = !DILocation(line: 198, column: 34, scope: !437)
!454 = !DILocation(line: 198, column: 39, scope: !437)
!455 = !DILocation(line: 198, column: 24, scope: !437)
!456 = !DILocation(line: 198, column: 14, scope: !437)
!457 = !DILocation(line: 198, column: 18, scope: !437)
!458 = !DILocation(line: 198, column: 7, scope: !437)
!459 = !DILocation(line: 198, column: 22, scope: !437)
!460 = !DILocation(line: 199, column: 34, scope: !437)
!461 = !DILocation(line: 199, column: 39, scope: !437)
!462 = !DILocation(line: 199, column: 24, scope: !437)
!463 = !DILocation(line: 199, column: 14, scope: !437)
!464 = !DILocation(line: 199, column: 18, scope: !437)
!465 = !DILocation(line: 199, column: 7, scope: !437)
!466 = !DILocation(line: 199, column: 22, scope: !437)
!467 = !DILocation(line: 200, column: 34, scope: !437)
!468 = !DILocation(line: 200, column: 39, scope: !437)
!469 = !DILocation(line: 200, column: 24, scope: !437)
!470 = !DILocation(line: 200, column: 14, scope: !437)
!471 = !DILocation(line: 200, column: 18, scope: !437)
!472 = !DILocation(line: 200, column: 7, scope: !437)
!473 = !DILocation(line: 200, column: 22, scope: !437)
!474 = !DILocation(line: 201, column: 7, scope: !437)
!475 = distinct !{!475, !474}
!476 = !DILocation(line: 201, column: 16, scope: !477)
!477 = !DILexicalBlockFile(scope: !478, file: !13, discriminator: 1)
!478 = distinct !DILexicalBlock(scope: !479, file: !13, line: 201, column: 16)
!479 = distinct !DILexicalBlock(scope: !437, file: !13, line: 201, column: 10)
!480 = !DILocation(line: 201, column: 6, scope: !481)
!481 = !DILexicalBlockFile(scope: !478, file: !13, discriminator: 2)
!482 = !DILocation(line: 201, column: 64, scope: !481)
!483 = !DILocation(line: 201, column: 80, scope: !481)
!484 = !DILocation(line: 201, column: 30, scope: !481)
!485 = !DILocation(line: 201, column: 88, scope: !486)
!486 = !DILexicalBlockFile(scope: !479, file: !13, discriminator: 3)
!487 = !DILocation(line: 203, column: 3, scope: !437)
!488 = !DILocation(line: 204, column: 10, scope: !429)
!489 = !DILocation(line: 204, column: 21, scope: !429)
!490 = !DILocation(line: 204, column: 27, scope: !429)
!491 = !DILocation(line: 204, column: 3, scope: !429)
!492 = !DILocation(line: 205, column: 6, scope: !429)
!493 = !DILocation(line: 206, column: 6, scope: !494)
!494 = distinct !DILexicalBlock(scope: !422, file: !13, line: 205, column: 13)
!495 = !DILocation(line: 209, column: 7, scope: !377)
!496 = !DILocation(line: 209, column: 2, scope: !377)
!497 = !DILocation(line: 210, column: 5, scope: !377)
!498 = !DILocation(line: 211, column: 2, scope: !499)
!499 = distinct !DILexicalBlock(scope: !374, file: !13, line: 210, column: 12)
!500 = distinct !{!500, !498}
!501 = !DILocation(line: 211, column: 1, scope: !502)
!502 = !DILexicalBlockFile(scope: !503, file: !13, discriminator: 1)
!503 = distinct !DILexicalBlock(scope: !499, file: !13, line: 211, column: 5)
!504 = !DILocation(line: 211, column: 7, scope: !502)
!505 = !DILocation(line: 211, column: 73, scope: !502)
!506 = !DILocation(line: 212, column: 5, scope: !499)
!507 = !DILocation(line: 214, column: 5, scope: !36)
!508 = distinct !{!508, !507}
!509 = !DILocation(line: 214, column: 14, scope: !510)
!510 = !DILexicalBlockFile(scope: !511, file: !13, discriminator: 1)
!511 = distinct !DILexicalBlock(scope: !512, file: !13, line: 214, column: 14)
!512 = distinct !DILexicalBlock(scope: !36, file: !13, line: 214, column: 8)
!513 = !DILocation(line: 214, column: 4, scope: !514)
!514 = !DILexicalBlockFile(scope: !511, file: !13, discriminator: 2)
!515 = !DILocation(line: 214, column: 25, scope: !514)
!516 = !DILocation(line: 214, column: 36, scope: !517)
!517 = !DILexicalBlockFile(scope: !512, file: !13, discriminator: 3)
!518 = !DILocation(line: 215, column: 12, scope: !36)
!519 = !DILocation(line: 215, column: 5, scope: !36)
!520 = !DILocation(line: 216, column: 12, scope: !36)
!521 = !DILocation(line: 216, column: 5, scope: !36)
!522 = !DILocation(line: 217, column: 5, scope: !36)
!523 = distinct !{!523, !522}
!524 = !DILocation(line: 217, column: 14, scope: !525)
!525 = !DILexicalBlockFile(scope: !526, file: !13, discriminator: 1)
!526 = distinct !DILexicalBlock(scope: !527, file: !13, line: 217, column: 14)
!527 = distinct !DILexicalBlock(scope: !36, file: !13, line: 217, column: 8)
!528 = !DILocation(line: 217, column: 4, scope: !529)
!529 = !DILexicalBlockFile(scope: !526, file: !13, discriminator: 2)
!530 = !DILocation(line: 217, column: 28, scope: !529)
!531 = !DILocation(line: 217, column: 33, scope: !532)
!532 = !DILexicalBlockFile(scope: !527, file: !13, discriminator: 3)
!533 = !DILocation(line: 218, column: 10, scope: !36)
!534 = !DILocation(line: 218, column: 5, scope: !36)
!535 = !DILocation(line: 219, column: 1, scope: !36)
!536 = distinct !DISubprogram(name: "usage", scope: !13, file: !13, line: 46, type: !537, isLocal: true, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !40}
!539 = !DILocalVariable(name: "name", arg: 1, scope: !536, file: !13, line: 46, type: !40)
!540 = !DILocation(line: 46, column: 25, scope: !536)
!541 = !DILocation(line: 62, column: 5, scope: !536)
!542 = !DILocation(line: 48, column: 5, scope: !536)
!543 = !DILocation(line: 63, column: 1, scope: !536)
!544 = distinct !DISubprogram(name: "__fswab32", scope: !545, file: !545, line: 57, type: !546, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!545 = !DIFile(filename: "/usr/include/linux/swab.h", directory: "/home/lichi/Desktop")
!546 = !DISubroutineType(types: !547)
!547 = !{!6, !6}
!548 = !DILocalVariable(name: "val", arg: 1, scope: !544, file: !545, line: 57, type: !6)
!549 = !DILocation(line: 57, column: 41, scope: !544)
!550 = !DILocation(line: 62, column: 23, scope: !544)
!551 = !DILocation(line: 62, column: 9, scope: !544)
!552 = !DILocation(line: 62, column: 2, scope: !544)
!553 = distinct !DISubprogram(name: "__arch_swab32", scope: !554, file: !554, line: 7, type: !546, isLocal: true, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!554 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/asm/swab.h", directory: "/home/lichi/Desktop")
!555 = !DILocalVariable(name: "val", arg: 1, scope: !553, file: !554, line: 7, type: !6)
!556 = !DILocation(line: 7, column: 45, scope: !553)
!557 = !DILocation(line: 9, column: 42, scope: !553)
!558 = !DILocation(line: 9, column: 2, scope: !553)
!559 = !{i32 91293}
!560 = !DILocation(line: 10, column: 9, scope: !553)
!561 = !DILocation(line: 10, column: 2, scope: !553)
