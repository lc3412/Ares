; ModuleID = '/home/lichi/Desktop/genwqe/[task]tools--genwqe_vpdupdate/[inter]tools--genwqe_vpdupdate.o.i'
source_filename = "/home/lichi/Desktop/genwqe/[task]tools--genwqe_vpdupdate/[inter]tools--genwqe_vpdupdate.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.card_dev_t = type opaque
%struct.genwqe_vpd = type { [512 x i8] }

@verbose_flag = global i32 0, align 4
@_dbg_flag = global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"vdusC:f:Vh\00", align 1
@long_options = internal global [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 1, i32* null, i32 67 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i32 0, i32* null, i32 86 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option zeroinitializer], align 16
@optarg = external global i8*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@version = internal global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Please give only -u or -s Option.\0A\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"Input from stdin.\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Input File: <%s>\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"%s:%u: Error: %s Open Errno: <%s>\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"genwqe_vpdupdate.c\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Output to stdout.\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"%s:%u: Error: %s Open Err: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Please give -u or -s Option\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"GENWQE_SIM\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"%s:%u: Error: driver / HW simulation active !\0A\00", align 1
@.str.14 = private unnamed_addr constant [62 x i8] c"%s:%u: Error: Specify a valid GENWQE Card number (e.g. -C 0)\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Try to open Card: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"%s:%u: Error: cannot open Genwqe Card: %d (err: %d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"card\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.26 = private unnamed_addr constant [989 x i8] c"Usage: %s [OPTIONS]...\0A\0AMandatory arguments to long options are mandatory for short options too.\0A  -h, --help\09      print usage information\0A  -V, --version      print version\0A  -C, --card=CARDNO\0A  -f, --file=VPD.BIN\0A  -d, --dump\09      use multiple d to increase dump info\0A  -u, --update\09      set this flag for update VPD\0A  -s, --show\09      set this flag to display VPD from a card\0A  -v, --verbose      verbose level, use multiple v's to increase\0A\0AThis utility updates the Genwqes FLASH with new VPD\0Ainformation from a *.bin file. Do not disconnect the card from power\0Awhile updating. Ensure you have the correct update\0Aimage. Use of incorrect images or interrupting the update\0Awill make the card unusable. In this case you need a\0AUSB-Blaster utility or similar to get it working again.\0A\0AExample flashing new vpd to GenWQE card:\0A  %s -C0 -f vpd.bin\0AExample to display vpd from GenWQE card to stdout:\0A  %s -C0 -s\0AExample to display and dump vpd from GenWQE card to stdout:\0A  %s -C0 -s -d\0A\0A\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"4.0.20-5-g2944\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"Checking now Binary VPD data from Card\0A\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"Found Good VPD CRC\0A\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"%s:%u: Error: Wrong CRC in VPD 0x%x\0A\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"Display VPD data from Card\0A\00", align 1
@.str.32 = private unnamed_addr constant [57 x i8] c"%s:%u: Error: Invalid VPD. Use -dd option to dump data.\0A\00", align 1
@.str.33 = private unnamed_addr constant [66 x i8] c"%s:%u: Error: Faild to read VPD from Card (%d). Check -C option.\0A\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"Input data CRC OK, Updating Card Now.\0A\00", align 1
@.str.35 = private unnamed_addr constant [50 x i8] c"%s:%u: Error: Invalid input file. Use -v option.\0A\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"%s:%u: Error: Invalid CRC: 0x%x in input file.\0A\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"%s:%u: Error: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !35 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.card_dev_t*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct._IO_FILE*, align 8
  %16 = alloca %struct._IO_FILE*, align 8
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !38, metadata !39), !dbg !40
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !41, metadata !39), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %6, metadata !43, metadata !39), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %7, metadata !45, metadata !39), !dbg !46
  store i32 0, i32* %7, align 4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %8, metadata !47, metadata !39), !dbg !48
  call void @llvm.dbg.declare(metadata i32* %9, metadata !49, metadata !39), !dbg !50
  store i32 -1, i32* %9, align 4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %10, metadata !51, metadata !39), !dbg !52
  store i32 0, i32* %10, align 4, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %11, metadata !53, metadata !39), !dbg !54
  store i32 0, i32* %11, align 4, !dbg !54
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %12, metadata !55, metadata !39), !dbg !60
  call void @llvm.dbg.declare(metadata i8** %13, metadata !61, metadata !39), !dbg !62
  call void @llvm.dbg.declare(metadata i8** %14, metadata !63, metadata !39), !dbg !64
  store i8* null, i8** %14, align 8, !dbg !64
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %15, metadata !65, metadata !39), !dbg !125
  store %struct._IO_FILE* null, %struct._IO_FILE** %15, align 8, !dbg !125
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %16, metadata !126, metadata !39), !dbg !127
  store %struct._IO_FILE* null, %struct._IO_FILE** %16, align 8, !dbg !127
  br label %18, !dbg !128

; <label>:18:                                     ; preds = %2, %53
  call void @llvm.dbg.declare(metadata i32* %17, metadata !129, metadata !39), !dbg !131
  store i32 0, i32* %17, align 4, !dbg !131
  %19 = load i32, i32* %4, align 4, !dbg !132
  %20 = load i8**, i8*** %5, align 8, !dbg !133
  %21 = call i32 @getopt_long(i32 %19, i8** %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @long_options, i32 0, i32 0), i32* %17) #7, !dbg !134
  store i32 %21, i32* %6, align 4, !dbg !135
  %22 = load i32, i32* %6, align 4, !dbg !136
  %23 = icmp eq i32 %22, -1, !dbg !138
  br i1 %23, label %24, label %25, !dbg !139

; <label>:24:                                     ; preds = %18
  br label %54, !dbg !140

; <label>:25:                                     ; preds = %18
  %26 = load i32, i32* %6, align 4, !dbg !141
  switch i32 %26, label %49 [
    i32 67, label %27
    i32 102, label %31
    i32 117, label %33
    i32 115, label %34
    i32 104, label %35
    i32 86, label %39
    i32 118, label %43
    i32 100, label %46
  ], !dbg !142

; <label>:27:                                     ; preds = %25
  %28 = load i8*, i8** @optarg, align 8, !dbg !143
  %29 = call i64 @strtol(i8* %28, i8** null, i32 0) #7, !dbg !145
  %30 = trunc i64 %29 to i32, !dbg !145
  store i32 %30, i32* %9, align 4, !dbg !146
  br label %53, !dbg !147

; <label>:31:                                     ; preds = %25
  %32 = load i8*, i8** @optarg, align 8, !dbg !148
  store i8* %32, i8** %14, align 8, !dbg !149
  br label %53, !dbg !150

; <label>:33:                                     ; preds = %25
  store i32 1, i32* %10, align 4, !dbg !151
  br label %53, !dbg !152

; <label>:34:                                     ; preds = %25
  store i32 1, i32* %11, align 4, !dbg !153
  br label %53, !dbg !154

; <label>:35:                                     ; preds = %25
  %36 = load i8**, i8*** %5, align 8, !dbg !155
  %37 = getelementptr inbounds i8*, i8** %36, i64 0, !dbg !155
  %38 = load i8*, i8** %37, align 8, !dbg !155
  call void @usage(i8* %38), !dbg !156
  call void @exit(i32 0) #8, !dbg !157
  unreachable, !dbg !157

; <label>:39:                                     ; preds = %25
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !158
  %41 = load i8*, i8** @version, align 8, !dbg !159
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* %41), !dbg !160
  call void @exit(i32 0) #8, !dbg !161
  unreachable, !dbg !161

; <label>:43:                                     ; preds = %25
  %44 = load i32, i32* @verbose_flag, align 4, !dbg !162
  %45 = add nsw i32 %44, 1, !dbg !162
  store i32 %45, i32* @verbose_flag, align 4, !dbg !162
  br label %53, !dbg !163

; <label>:46:                                     ; preds = %25
  %47 = load i32, i32* @_dbg_flag, align 4, !dbg !164
  %48 = add nsw i32 %47, 1, !dbg !164
  store i32 %48, i32* @_dbg_flag, align 4, !dbg !164
  br label %53, !dbg !165

; <label>:49:                                     ; preds = %25
  %50 = load i8**, i8*** %5, align 8, !dbg !166
  %51 = getelementptr inbounds i8*, i8** %50, i64 0, !dbg !166
  %52 = load i8*, i8** %51, align 8, !dbg !166
  call void @usage(i8* %52), !dbg !167
  call void @exit(i32 1) #8, !dbg !168
  unreachable, !dbg !168

; <label>:53:                                     ; preds = %46, %43, %34, %33, %31, %27
  br label %18, !dbg !169, !llvm.loop !171

; <label>:54:                                     ; preds = %24
  %55 = load i32, i32* %10, align 4, !dbg !172
  %56 = icmp ne i32 %55, 0, !dbg !172
  br i1 %56, label %57, label %63, !dbg !174

; <label>:57:                                     ; preds = %54
  %58 = load i32, i32* %11, align 4, !dbg !175
  %59 = icmp ne i32 %58, 0, !dbg !175
  br i1 %59, label %60, label %63, !dbg !177

; <label>:60:                                     ; preds = %57
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !178
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0)), !dbg !180
  call void @exit(i32 1) #8, !dbg !181
  unreachable, !dbg !181

; <label>:63:                                     ; preds = %57, %54
  %64 = load i32, i32* %10, align 4, !dbg !182
  %65 = icmp ne i32 %64, 0, !dbg !182
  br i1 %65, label %66, label %105, !dbg !184

; <label>:66:                                     ; preds = %63
  %67 = load i8*, i8** %14, align 8, !dbg !185
  %68 = icmp eq i8* null, %67, !dbg !188
  br i1 %68, label %69, label %79, !dbg !189

; <label>:69:                                     ; preds = %66
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !190
  store %struct._IO_FILE* %70, %struct._IO_FILE** %15, align 8, !dbg !192
  br label %71, !dbg !193, !llvm.loop !194

; <label>:71:                                     ; preds = %69
  %72 = load i32, i32* @verbose_flag, align 4, !dbg !195
  %73 = icmp ne i32 %72, 0, !dbg !195
  br i1 %73, label %74, label %77, !dbg !195

; <label>:74:                                     ; preds = %71
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !199
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0)), !dbg !201
  br label %77, !dbg !201

; <label>:77:                                     ; preds = %74, %71
  br label %78, !dbg !202

; <label>:78:                                     ; preds = %77
  br label %104, !dbg !204

; <label>:79:                                     ; preds = %66
  br label %80, !dbg !205, !llvm.loop !207

; <label>:80:                                     ; preds = %79
  %81 = load i32, i32* @verbose_flag, align 4, !dbg !208
  %82 = icmp ne i32 %81, 0, !dbg !208
  br i1 %82, label %83, label %87, !dbg !208

; <label>:83:                                     ; preds = %80
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !212
  %85 = load i8*, i8** %14, align 8, !dbg !214
  %86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* %85), !dbg !214
  br label %87, !dbg !214

; <label>:87:                                     ; preds = %83, %80
  br label %88, !dbg !215

; <label>:88:                                     ; preds = %87
  %89 = load i8*, i8** %14, align 8, !dbg !217
  %90 = call %struct._IO_FILE* @fopen(i8* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !dbg !218
  store %struct._IO_FILE* %90, %struct._IO_FILE** %15, align 8, !dbg !219
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8, !dbg !220
  %92 = icmp eq %struct._IO_FILE* null, %91, !dbg !222
  br i1 %92, label %93, label %102, !dbg !223

; <label>:93:                                     ; preds = %88
  br label %94, !dbg !224, !llvm.loop !226

; <label>:94:                                     ; preds = %93
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !227
  %96 = load i8*, i8** %14, align 8, !dbg !230
  %97 = call i32* @__errno_location() #1, !dbg !231
  %98 = load i32, i32* %97, align 4, !dbg !232
  %99 = call i8* @strerror(i32 %98) #7, !dbg !233
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 212, i8* %96, i8* %99), !dbg !235
  br label %101, !dbg !237

; <label>:101:                                    ; preds = %94
  call void @exit(i32 1) #8, !dbg !238
  unreachable, !dbg !238

; <label>:102:                                    ; preds = %88
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !239
  store %struct._IO_FILE* %103, %struct._IO_FILE** %16, align 8, !dbg !240
  br label %104

; <label>:104:                                    ; preds = %102, %78
  br label %105, !dbg !241

; <label>:105:                                    ; preds = %104, %63
  %106 = load i32, i32* %11, align 4, !dbg !242
  %107 = icmp ne i32 %106, 0, !dbg !242
  br i1 %107, label %108, label %137, !dbg !244

; <label>:108:                                    ; preds = %105
  %109 = load i8*, i8** %14, align 8, !dbg !245
  %110 = icmp eq i8* null, %109, !dbg !248
  br i1 %110, label %111, label %121, !dbg !249

; <label>:111:                                    ; preds = %108
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !250
  store %struct._IO_FILE* %112, %struct._IO_FILE** %16, align 8, !dbg !252
  br label %113, !dbg !253, !llvm.loop !254

; <label>:113:                                    ; preds = %111
  %114 = load i32, i32* @verbose_flag, align 4, !dbg !255
  %115 = icmp ne i32 %114, 0, !dbg !255
  br i1 %115, label %116, label %119, !dbg !255

; <label>:116:                                    ; preds = %113
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !259
  %118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0)), !dbg !261
  br label %119, !dbg !261

; <label>:119:                                    ; preds = %116, %113
  br label %120, !dbg !262

; <label>:120:                                    ; preds = %119
  br label %136, !dbg !264

; <label>:121:                                    ; preds = %108
  %122 = load i8*, i8** %14, align 8, !dbg !265
  %123 = call %struct._IO_FILE* @fopen(i8* %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)), !dbg !267
  store %struct._IO_FILE* %123, %struct._IO_FILE** %16, align 8, !dbg !268
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8, !dbg !269
  %125 = icmp eq %struct._IO_FILE* null, %124, !dbg !271
  br i1 %125, label %126, label %135, !dbg !272

; <label>:126:                                    ; preds = %121
  br label %127, !dbg !273, !llvm.loop !275

; <label>:127:                                    ; preds = %126
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !276
  %129 = load i8*, i8** %14, align 8, !dbg !279
  %130 = call i32* @__errno_location() #1, !dbg !280
  %131 = load i32, i32* %130, align 4, !dbg !281
  %132 = call i8* @strerror(i32 %131) #7, !dbg !282
  %133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 226, i8* %129, i8* %132), !dbg !284
  br label %134, !dbg !286

; <label>:134:                                    ; preds = %127
  call void @exit(i32 1) #8, !dbg !287
  unreachable, !dbg !287

; <label>:135:                                    ; preds = %121
  br label %136

; <label>:136:                                    ; preds = %135, %120
  br label %137, !dbg !288

; <label>:137:                                    ; preds = %136, %105
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8, !dbg !289
  %139 = icmp eq %struct._IO_FILE* null, %138, !dbg !291
  br i1 %139, label %140, label %146, !dbg !292

; <label>:140:                                    ; preds = %137
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8, !dbg !293
  %142 = icmp eq %struct._IO_FILE* null, %141, !dbg !295
  br i1 %142, label %143, label %146, !dbg !296

; <label>:143:                                    ; preds = %140
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !297
  %145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %144, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0)), !dbg !299
  call void @exit(i32 1) #8, !dbg !300
  unreachable, !dbg !300

; <label>:146:                                    ; preds = %140, %137
  %147 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0)) #7, !dbg !301
  store i8* %147, i8** %13, align 8, !dbg !302
  %148 = load i8*, i8** %13, align 8, !dbg !303
  %149 = icmp ne i8* %148, null, !dbg !305
  br i1 %149, label %150, label %177, !dbg !306

; <label>:150:                                    ; preds = %146
  %151 = load i8*, i8** %13, align 8, !dbg !307
  %152 = call i32 @atoi(i8* %151) #9, !dbg !309
  %153 = icmp sgt i32 %152, 0, !dbg !310
  br i1 %153, label %154, label %177, !dbg !311

; <label>:154:                                    ; preds = %150
  br label %155, !dbg !312, !llvm.loop !314

; <label>:155:                                    ; preds = %154
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !315
  %157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %156, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 239), !dbg !318
  br label %158, !dbg !319

; <label>:158:                                    ; preds = %155
  %159 = load i32, i32* %11, align 4, !dbg !320
  %160 = icmp ne i32 %159, 0, !dbg !320
  br i1 %160, label %161, label %167, !dbg !322

; <label>:161:                                    ; preds = %158
  %162 = load i8*, i8** %14, align 8, !dbg !323
  %163 = icmp ne i8* %162, null, !dbg !323
  br i1 %163, label %164, label %167, !dbg !325

; <label>:164:                                    ; preds = %161
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8, !dbg !326
  %166 = call i32 @fclose(%struct._IO_FILE* %165), !dbg !328
  br label %167, !dbg !328

; <label>:167:                                    ; preds = %164, %161, %158
  %168 = load i32, i32* %10, align 4, !dbg !329
  %169 = icmp ne i32 %168, 0, !dbg !329
  br i1 %169, label %170, label %176, !dbg !331

; <label>:170:                                    ; preds = %167
  %171 = load i8*, i8** %14, align 8, !dbg !332
  %172 = icmp ne i8* %171, null, !dbg !332
  br i1 %172, label %173, label %176, !dbg !334

; <label>:173:                                    ; preds = %170
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8, !dbg !335
  %175 = call i32 @fclose(%struct._IO_FILE* %174), !dbg !337
  br label %176, !dbg !337

; <label>:176:                                    ; preds = %173, %170, %167
  call void @exit(i32 1) #8, !dbg !338
  unreachable, !dbg !338

; <label>:177:                                    ; preds = %150, %146
  %178 = load i32, i32* %9, align 4, !dbg !339
  %179 = icmp eq i32 -1, %178, !dbg !341
  br i1 %179, label %180, label %203, !dbg !342

; <label>:180:                                    ; preds = %177
  br label %181, !dbg !343, !llvm.loop !345

; <label>:181:                                    ; preds = %180
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !346
  %183 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %182, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 247), !dbg !349
  br label %184, !dbg !350

; <label>:184:                                    ; preds = %181
  %185 = load i32, i32* %11, align 4, !dbg !351
  %186 = icmp ne i32 %185, 0, !dbg !351
  br i1 %186, label %187, label %193, !dbg !353

; <label>:187:                                    ; preds = %184
  %188 = load i8*, i8** %14, align 8, !dbg !354
  %189 = icmp ne i8* %188, null, !dbg !354
  br i1 %189, label %190, label %193, !dbg !356

; <label>:190:                                    ; preds = %187
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8, !dbg !357
  %192 = call i32 @fclose(%struct._IO_FILE* %191), !dbg !359
  br label %193, !dbg !359

; <label>:193:                                    ; preds = %190, %187, %184
  %194 = load i32, i32* %10, align 4, !dbg !360
  %195 = icmp ne i32 %194, 0, !dbg !360
  br i1 %195, label %196, label %202, !dbg !362

; <label>:196:                                    ; preds = %193
  %197 = load i8*, i8** %14, align 8, !dbg !363
  %198 = icmp ne i8* %197, null, !dbg !363
  br i1 %198, label %199, label %202, !dbg !365

; <label>:199:                                    ; preds = %196
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8, !dbg !366
  %201 = call i32 @fclose(%struct._IO_FILE* %200), !dbg !368
  br label %202, !dbg !368

; <label>:202:                                    ; preds = %199, %196, %193
  call void @exit(i32 1) #8, !dbg !369
  unreachable, !dbg !369

; <label>:203:                                    ; preds = %177
  br label %204, !dbg !370, !llvm.loop !371

; <label>:204:                                    ; preds = %203
  %205 = load i32, i32* @verbose_flag, align 4, !dbg !372
  %206 = icmp ne i32 %205, 0, !dbg !372
  br i1 %206, label %207, label %211, !dbg !372

; <label>:207:                                    ; preds = %204
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !376
  %209 = load i32, i32* %9, align 4, !dbg !378
  %210 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %208, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i32 %209), !dbg !379
  br label %211, !dbg !379

; <label>:211:                                    ; preds = %207, %204
  br label %212, !dbg !380

; <label>:212:                                    ; preds = %211
  %213 = load i32, i32* %9, align 4, !dbg !382
  %214 = call %struct.card_dev_t* @genwqe_card_open(i32 %213, i32 4, i32* %8, i64 0, i64 0), !dbg !383
  store %struct.card_dev_t* %214, %struct.card_dev_t** %12, align 8, !dbg !384
  %215 = load %struct.card_dev_t*, %struct.card_dev_t** %12, align 8, !dbg !385
  %216 = icmp eq %struct.card_dev_t* null, %215, !dbg !387
  br i1 %216, label %217, label %242, !dbg !388

; <label>:217:                                    ; preds = %212
  br label %218, !dbg !389, !llvm.loop !391

; <label>:218:                                    ; preds = %217
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !392
  %220 = load i32, i32* %9, align 4, !dbg !395
  %221 = load i32, i32* %8, align 4, !dbg !396
  %222 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %219, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 257, i32 %220, i32 %221), !dbg !397
  br label %223, !dbg !398

; <label>:223:                                    ; preds = %218
  %224 = load i32, i32* %11, align 4, !dbg !399
  %225 = icmp ne i32 %224, 0, !dbg !399
  br i1 %225, label %226, label %232, !dbg !401

; <label>:226:                                    ; preds = %223
  %227 = load i8*, i8** %14, align 8, !dbg !402
  %228 = icmp ne i8* %227, null, !dbg !402
  br i1 %228, label %229, label %232, !dbg !404

; <label>:229:                                    ; preds = %226
  %230 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8, !dbg !405
  %231 = call i32 @fclose(%struct._IO_FILE* %230), !dbg !407
  br label %232, !dbg !407

; <label>:232:                                    ; preds = %229, %226, %223
  %233 = load i32, i32* %10, align 4, !dbg !408
  %234 = icmp ne i32 %233, 0, !dbg !408
  br i1 %234, label %235, label %241, !dbg !410

; <label>:235:                                    ; preds = %232
  %236 = load i8*, i8** %14, align 8, !dbg !411
  %237 = icmp ne i8* %236, null, !dbg !411
  br i1 %237, label %238, label %241, !dbg !413

; <label>:238:                                    ; preds = %235
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8, !dbg !414
  %240 = call i32 @fclose(%struct._IO_FILE* %239), !dbg !416
  br label %241, !dbg !416

; <label>:241:                                    ; preds = %238, %235, %232
  call void @exit(i32 1) #8, !dbg !417
  unreachable, !dbg !417

; <label>:242:                                    ; preds = %212
  call void @genwqe_crc32_setup_lut(), !dbg !418
  %243 = load i32, i32* %11, align 4, !dbg !419
  %244 = icmp ne i32 %243, 0, !dbg !419
  br i1 %244, label %245, label %250, !dbg !421

; <label>:245:                                    ; preds = %242
  %246 = load %struct.card_dev_t*, %struct.card_dev_t** %12, align 8, !dbg !422
  %247 = load i32, i32* @_dbg_flag, align 4, !dbg !423
  %248 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8, !dbg !424
  %249 = call i32 @__dump_vpd(%struct.card_dev_t* %246, i32 %247, %struct._IO_FILE* %248), !dbg !425
  store i32 %249, i32* %7, align 4, !dbg !426
  br label %250, !dbg !427

; <label>:250:                                    ; preds = %245, %242
  %251 = load i32, i32* %10, align 4, !dbg !428
  %252 = icmp ne i32 %251, 0, !dbg !428
  br i1 %252, label %253, label %257, !dbg !430

; <label>:253:                                    ; preds = %250
  %254 = load %struct.card_dev_t*, %struct.card_dev_t** %12, align 8, !dbg !431
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8, !dbg !432
  %256 = call i32 @__update_vpd(%struct.card_dev_t* %254, %struct._IO_FILE* %255), !dbg !433
  store i32 %256, i32* %7, align 4, !dbg !434
  br label %257, !dbg !435

; <label>:257:                                    ; preds = %253, %250
  %258 = load %struct.card_dev_t*, %struct.card_dev_t** %12, align 8, !dbg !436
  %259 = call i32 @genwqe_card_close(%struct.card_dev_t* %258), !dbg !437
  %260 = load i32, i32* %11, align 4, !dbg !438
  %261 = icmp ne i32 %260, 0, !dbg !438
  br i1 %261, label %262, label %268, !dbg !440

; <label>:262:                                    ; preds = %257
  %263 = load i8*, i8** %14, align 8, !dbg !441
  %264 = icmp ne i8* %263, null, !dbg !441
  br i1 %264, label %265, label %268, !dbg !443

; <label>:265:                                    ; preds = %262
  %266 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8, !dbg !444
  %267 = call i32 @fclose(%struct._IO_FILE* %266), !dbg !446
  br label %268, !dbg !446

; <label>:268:                                    ; preds = %265, %262, %257
  %269 = load i32, i32* %10, align 4, !dbg !447
  %270 = icmp ne i32 %269, 0, !dbg !447
  br i1 %270, label %271, label %277, !dbg !449

; <label>:271:                                    ; preds = %268
  %272 = load i8*, i8** %14, align 8, !dbg !450
  %273 = icmp ne i8* %272, null, !dbg !450
  br i1 %273, label %274, label %277, !dbg !452

; <label>:274:                                    ; preds = %271
  %275 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8, !dbg !453
  %276 = call i32 @fclose(%struct._IO_FILE* %275), !dbg !455
  br label %277, !dbg !455

; <label>:277:                                    ; preds = %274, %271, %268
  %278 = load i32, i32* %7, align 4, !dbg !456
  call void @exit(i32 %278) #8, !dbg !457
  unreachable, !dbg !457
                                                  ; No predecessors!
  %280 = load i32, i32* %3, align 4, !dbg !458
  ret i32 %280, !dbg !458
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: nounwind uwtable
define internal void @usage(i8*) #0 !dbg !459 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !462, metadata !39), !dbg !463
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !464
  %4 = load i8*, i8** %2, align 8, !dbg !465
  %5 = load i8*, i8** %2, align 8, !dbg !466
  %6 = load i8*, i8** %2, align 8, !dbg !467
  %7 = load i8*, i8** %2, align 8, !dbg !468
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([989 x i8], [989 x i8]* @.str.26, i32 0, i32 0), i8* %4, i8* %5, i8* %6, i8* %7), !dbg !469
  ret void, !dbg !470
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #6

declare i32 @fclose(%struct._IO_FILE*) #4

declare %struct.card_dev_t* @genwqe_card_open(i32, i32, i32*, i64, i64) #4

declare void @genwqe_crc32_setup_lut() #4

; Function Attrs: nounwind uwtable
define internal i32 @__dump_vpd(%struct.card_dev_t*, i32, %struct._IO_FILE*) #0 !dbg !471 {
  %4 = alloca %struct.card_dev_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.genwqe_vpd, align 1
  %10 = alloca i32, align 4
  store %struct.card_dev_t* %0, %struct.card_dev_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %4, metadata !474, metadata !39), !dbg !475
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !476, metadata !39), !dbg !477
  store %struct._IO_FILE* %2, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !478, metadata !39), !dbg !479
  call void @llvm.dbg.declare(metadata i8* %7, metadata !480, metadata !39), !dbg !482
  store i8 0, i8* %7, align 1, !dbg !482
  call void @llvm.dbg.declare(metadata i32* %8, metadata !483, metadata !39), !dbg !484
  store i32 1, i32* %8, align 4, !dbg !484
  call void @llvm.dbg.declare(metadata %struct.genwqe_vpd* %9, metadata !485, metadata !39), !dbg !493
  call void @llvm.dbg.declare(metadata i32* %10, metadata !494, metadata !39), !dbg !497
  store i32 0, i32* %10, align 4, !dbg !497
  %11 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !498
  %12 = call i32 @genwqe_read_vpd(%struct.card_dev_t* %11, %struct.genwqe_vpd* %9), !dbg !499
  store i32 %12, i32* %8, align 4, !dbg !500
  %13 = load i32, i32* %8, align 4, !dbg !501
  %14 = icmp eq i32 0, %13, !dbg !503
  br i1 %14, label %15, label %71, !dbg !504

; <label>:15:                                     ; preds = %3
  %16 = load i32, i32* %5, align 4, !dbg !505
  %17 = icmp ne i32 %16, 0, !dbg !505
  br i1 %17, label %18, label %21, !dbg !508

; <label>:18:                                     ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !509
  %20 = bitcast %struct.genwqe_vpd* %9 to i8*, !dbg !510
  call void @genwqe_hexdump(%struct._IO_FILE* %19, i8* %20, i32 101), !dbg !511
  br label %21, !dbg !511

; <label>:21:                                     ; preds = %18, %15
  br label %22, !dbg !512, !llvm.loop !513

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* @verbose_flag, align 4, !dbg !514
  %24 = icmp ne i32 %23, 0, !dbg !514
  br i1 %24, label %25, label %28, !dbg !514

; <label>:25:                                     ; preds = %22
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !518
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i32 0, i32 0)), !dbg !520
  br label %28, !dbg !520

; <label>:28:                                     ; preds = %25, %22
  br label %29, !dbg !521

; <label>:29:                                     ; preds = %28
  %30 = bitcast %struct.genwqe_vpd* %9 to i8*, !dbg !523
  %31 = call i32 @genwqe_crc32_gen(i8* %30, i64 101, i32 -1), !dbg !524
  store i32 %31, i32* %10, align 4, !dbg !525
  %32 = load i32, i32* %10, align 4, !dbg !526
  %33 = icmp eq i32 0, %32, !dbg !528
  br i1 %33, label %34, label %43, !dbg !529

; <label>:34:                                     ; preds = %29
  br label %35, !dbg !530, !llvm.loop !531

; <label>:35:                                     ; preds = %34
  %36 = load i32, i32* @verbose_flag, align 4, !dbg !532
  %37 = icmp ne i32 %36, 0, !dbg !532
  br i1 %37, label %38, label %41, !dbg !532

; <label>:38:                                     ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !536
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0)), !dbg !538
  br label %41, !dbg !538

; <label>:41:                                     ; preds = %38, %35
  br label %42, !dbg !539

; <label>:42:                                     ; preds = %41
  br label %49, !dbg !541

; <label>:43:                                     ; preds = %29
  br label %44, !dbg !543, !llvm.loop !544

; <label>:44:                                     ; preds = %43
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !545
  %46 = load i32, i32* %10, align 4, !dbg !548
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 92, i32 %46), !dbg !549
  br label %48, !dbg !550

; <label>:48:                                     ; preds = %44
  br label %49

; <label>:49:                                     ; preds = %48, %42
  br label %50, !dbg !551, !llvm.loop !552

; <label>:50:                                     ; preds = %49
  %51 = load i32, i32* @verbose_flag, align 4, !dbg !553
  %52 = icmp ne i32 %51, 0, !dbg !553
  br i1 %52, label %53, label %56, !dbg !553

; <label>:53:                                     ; preds = %50
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !557
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0)), !dbg !559
  br label %56, !dbg !559

; <label>:56:                                     ; preds = %53, %50
  br label %57, !dbg !560

; <label>:57:                                     ; preds = %56
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !562
  %59 = bitcast %struct.genwqe_vpd* %9 to i8*, !dbg !563
  %60 = call zeroext i1 @bin_2_csv(%struct._IO_FILE* %58, i32 101, i8* %59), !dbg !564
  %61 = zext i1 %60 to i8, !dbg !565
  store i8 %61, i8* %7, align 1, !dbg !565
  %62 = load i8, i8* %7, align 1, !dbg !566
  %63 = trunc i8 %62 to i1, !dbg !566
  br i1 %63, label %64, label %65, !dbg !568

; <label>:64:                                     ; preds = %57
  store i32 0, i32* %8, align 4, !dbg !569
  br label %70, !dbg !570

; <label>:65:                                     ; preds = %57
  br label %66, !dbg !571, !llvm.loop !572

; <label>:66:                                     ; preds = %65
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !573
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 97), !dbg !576
  br label %69, !dbg !577

; <label>:69:                                     ; preds = %66
  br label %70

; <label>:70:                                     ; preds = %69, %64
  br label %77, !dbg !578

; <label>:71:                                     ; preds = %3
  br label %72, !dbg !579, !llvm.loop !581

; <label>:72:                                     ; preds = %71
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !583
  %74 = load i32, i32* %8, align 4, !dbg !586
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 98, i32 %74), !dbg !587
  br label %76, !dbg !588

; <label>:76:                                     ; preds = %72
  br label %77

; <label>:77:                                     ; preds = %76, %70
  %78 = load i32, i32* %8, align 4, !dbg !589
  ret i32 %78, !dbg !590
}

; Function Attrs: nounwind uwtable
define internal i32 @__update_vpd(%struct.card_dev_t*, %struct._IO_FILE*) #0 !dbg !591 {
  %3 = alloca %struct.card_dev_t*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.genwqe_vpd, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.card_dev_t* %0, %struct.card_dev_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %3, metadata !594, metadata !39), !dbg !595
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !596, metadata !39), !dbg !597
  call void @llvm.dbg.declare(metadata i8* %5, metadata !598, metadata !39), !dbg !599
  store i8 0, i8* %5, align 1, !dbg !599
  call void @llvm.dbg.declare(metadata i32* %6, metadata !600, metadata !39), !dbg !601
  store i32 1, i32* %6, align 4, !dbg !601
  call void @llvm.dbg.declare(metadata %struct.genwqe_vpd* %7, metadata !602, metadata !39), !dbg !603
  call void @llvm.dbg.declare(metadata i32* %8, metadata !604, metadata !39), !dbg !605
  call void @llvm.dbg.declare(metadata i32* %9, metadata !606, metadata !39), !dbg !607
  store i32 0, i32* %9, align 4, !dbg !607
  %10 = bitcast %struct.genwqe_vpd* %7 to i8*, !dbg !608
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !609
  %12 = call i64 @fread(i8* %10, i64 1, i64 101, %struct._IO_FILE* %11), !dbg !610
  %13 = trunc i64 %12 to i32, !dbg !610
  store i32 %13, i32* %8, align 4, !dbg !611
  %14 = load i32, i32* %8, align 4, !dbg !612
  %15 = sext i32 %14 to i64, !dbg !612
  %16 = icmp eq i64 101, %15, !dbg !614
  br i1 %16, label %17, label %57, !dbg !615

; <label>:17:                                     ; preds = %2
  %18 = bitcast %struct.genwqe_vpd* %7 to i8*, !dbg !616
  %19 = call i32 @genwqe_crc32_gen(i8* %18, i64 101, i32 -1), !dbg !618
  store i32 %19, i32* %9, align 4, !dbg !619
  %20 = load i32, i32* %9, align 4, !dbg !620
  %21 = icmp eq i32 0, %20, !dbg !622
  br i1 %21, label %22, label %50, !dbg !623

; <label>:22:                                     ; preds = %17
  br label %23, !dbg !624, !llvm.loop !626

; <label>:23:                                     ; preds = %22
  %24 = load i32, i32* @_dbg_flag, align 4, !dbg !627
  %25 = icmp ne i32 %24, 0, !dbg !627
  br i1 %25, label %26, label %29, !dbg !627

; <label>:26:                                     ; preds = %23
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !631
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i32 0, i32 0)), !dbg !633
  br label %29, !dbg !633

; <label>:29:                                     ; preds = %26, %23
  br label %30, !dbg !634

; <label>:30:                                     ; preds = %29
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !636
  %32 = bitcast %struct.genwqe_vpd* %7 to i8*, !dbg !637
  %33 = call zeroext i1 @bin_2_csv(%struct._IO_FILE* %31, i32 101, i8* %32), !dbg !638
  %34 = zext i1 %33 to i8, !dbg !639
  store i8 %34, i8* %5, align 1, !dbg !639
  %35 = load i8, i8* %5, align 1, !dbg !640
  %36 = trunc i8 %35 to i1, !dbg !640
  br i1 %36, label %37, label %44, !dbg !642

; <label>:37:                                     ; preds = %30
  %38 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !643
  %39 = call i32 @genwqe_write_vpd(%struct.card_dev_t* %38, %struct.genwqe_vpd* %7), !dbg !645
  store i32 %39, i32* %6, align 4, !dbg !646
  %40 = load i32, i32* %6, align 4, !dbg !647
  %41 = icmp eq i32 %40, 0, !dbg !649
  br i1 %41, label %42, label %43, !dbg !650

; <label>:42:                                     ; preds = %37
  store i32 0, i32* %6, align 4, !dbg !651
  br label %43, !dbg !652

; <label>:43:                                     ; preds = %42, %37
  br label %49, !dbg !653

; <label>:44:                                     ; preds = %30
  br label %45, !dbg !654, !llvm.loop !656

; <label>:45:                                     ; preds = %44
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !658
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 120), !dbg !661
  br label %48, !dbg !662

; <label>:48:                                     ; preds = %45
  br label %49

; <label>:49:                                     ; preds = %48, %43
  br label %56, !dbg !663

; <label>:50:                                     ; preds = %17
  br label %51, !dbg !664, !llvm.loop !666

; <label>:51:                                     ; preds = %50
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !668
  %53 = load i32, i32* %9, align 4, !dbg !671
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 121, i32 %53), !dbg !672
  br label %55, !dbg !673

; <label>:55:                                     ; preds = %51
  br label %56

; <label>:56:                                     ; preds = %55, %49
  br label %65, !dbg !674

; <label>:57:                                     ; preds = %2
  br label %58, !dbg !675, !llvm.loop !677

; <label>:58:                                     ; preds = %57
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !679
  %60 = call i32* @__errno_location() #1, !dbg !682
  %61 = load i32, i32* %60, align 4, !dbg !683
  %62 = call i8* @strerror(i32 %61) #7, !dbg !684
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 122, i8* %62), !dbg !686
  br label %64, !dbg !688

; <label>:64:                                     ; preds = %58
  br label %65

; <label>:65:                                     ; preds = %64, %56
  %66 = load i32, i32* %6, align 4, !dbg !689
  ret i32 %66, !dbg !690
}

declare i32 @genwqe_card_close(%struct.card_dev_t*) #4

declare i32 @genwqe_read_vpd(%struct.card_dev_t*, %struct.genwqe_vpd*) #4

declare void @genwqe_hexdump(%struct._IO_FILE*, i8*, i32) #4

declare i32 @genwqe_crc32_gen(i8*, i64, i32) #4

declare zeroext i1 @bin_2_csv(%struct._IO_FILE*, i32, i8*) #4

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #4

declare i32 @genwqe_write_vpd(%struct.card_dev_t*, %struct.genwqe_vpd*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!32, !33}
!llvm.ident = !{!34}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !12)
!1 = !DIFile(filename: "/home/lichi/Desktop/genwqe/[task]tools--genwqe_vpdupdate/[inter]tools--genwqe_vpdupdate.o.i", directory: "/home/lichi/Desktop")
!2 = !{}
!3 = !{!4, !7, !8}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !10, line: 48, baseType: !11)
!10 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop")
!11 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!12 = !{!13, !16, !17, !31}
!13 = distinct !DIGlobalVariable(name: "verbose_flag", scope: !0, file: !14, line: 35, type: !15, isLocal: false, isDefinition: true, variable: i32* @verbose_flag)
!14 = !DIFile(filename: "genwqe_vpdupdate.c", directory: "/home/lichi/Desktop")
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = distinct !DIGlobalVariable(name: "_dbg_flag", scope: !0, file: !14, line: 36, type: !15, isLocal: false, isDefinition: true, variable: i32* @_dbg_flag)
!17 = distinct !DIGlobalVariable(name: "long_options", scope: !0, file: !14, line: 126, type: !18, isLocal: true, isDefinition: true, variable: [10 x %struct.option]* @long_options)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2560, align: 64, elements: !29)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !20, line: 104, size: 256, align: 64, elements: !21)
!20 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/lichi/Desktop")
!21 = !{!22, !25, !26, !28}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !19, file: !20, line: 106, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !19, file: !20, line: 109, baseType: !15, size: 32, align: 32, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !19, file: !20, line: 110, baseType: !27, size: 64, align: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !19, file: !20, line: 111, baseType: !15, size: 32, align: 32, offset: 192)
!29 = !{!30}
!30 = !DISubrange(count: 10)
!31 = distinct !DIGlobalVariable(name: "version", scope: !0, file: !14, line: 38, type: !23, isLocal: true, isDefinition: true, variable: i8** @version)
!32 = !{i32 2, !"Dwarf Version", i32 4}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!35 = distinct !DISubprogram(name: "main", scope: !14, file: !14, line: 144, type: !36, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!36 = !DISubroutineType(types: !37)
!37 = !{!15, !15, !4}
!38 = !DILocalVariable(name: "argc", arg: 1, scope: !35, file: !14, line: 144, type: !15)
!39 = !DIExpression()
!40 = !DILocation(line: 144, column: 14, scope: !35)
!41 = !DILocalVariable(name: "argv", arg: 2, scope: !35, file: !14, line: 144, type: !4)
!42 = !DILocation(line: 144, column: 26, scope: !35)
!43 = !DILocalVariable(name: "ch", scope: !35, file: !14, line: 146, type: !15)
!44 = !DILocation(line: 146, column: 6, scope: !35)
!45 = !DILocalVariable(name: "rc", scope: !35, file: !14, line: 146, type: !15)
!46 = !DILocation(line: 146, column: 10, scope: !35)
!47 = !DILocalVariable(name: "err_code", scope: !35, file: !14, line: 146, type: !15)
!48 = !DILocation(line: 146, column: 16, scope: !35)
!49 = !DILocalVariable(name: "card_no", scope: !35, file: !14, line: 147, type: !15)
!50 = !DILocation(line: 147, column: 6, scope: !35)
!51 = !DILocalVariable(name: "update_vpd", scope: !35, file: !14, line: 148, type: !15)
!52 = !DILocation(line: 148, column: 6, scope: !35)
!53 = !DILocalVariable(name: "show_vpd", scope: !35, file: !14, line: 149, type: !15)
!54 = !DILocation(line: 149, column: 6, scope: !35)
!55 = !DILocalVariable(name: "card", scope: !35, file: !14, line: 150, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "card_handle_t", file: !57, line: 95, baseType: !58)
!57 = !DIFile(filename: "../include/libcard.h", directory: "/home/lichi/Desktop")
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "card_dev_t", file: !57, line: 95, flags: DIFlagFwdDecl)
!60 = !DILocation(line: 150, column: 16, scope: !35)
!61 = !DILocalVariable(name: "env", scope: !35, file: !14, line: 151, type: !5)
!62 = !DILocation(line: 151, column: 8, scope: !35)
!63 = !DILocalVariable(name: "fname", scope: !35, file: !14, line: 152, type: !5)
!64 = !DILocation(line: 152, column: 8, scope: !35)
!65 = !DILocalVariable(name: "fp_in", scope: !35, file: !14, line: 153, type: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !68, line: 48, baseType: !69)
!68 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !70, line: 241, size: 1728, align: 64, elements: !71)
!70 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop")
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !92, !93, !94, !95, !99, !101, !103, !107, !110, !112, !113, !114, !115, !116, !120, !121}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !69, file: !70, line: 242, baseType: !15, size: 32, align: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !69, file: !70, line: 247, baseType: !5, size: 64, align: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !69, file: !70, line: 248, baseType: !5, size: 64, align: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !69, file: !70, line: 249, baseType: !5, size: 64, align: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !69, file: !70, line: 250, baseType: !5, size: 64, align: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !69, file: !70, line: 251, baseType: !5, size: 64, align: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !69, file: !70, line: 252, baseType: !5, size: 64, align: 64, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !69, file: !70, line: 253, baseType: !5, size: 64, align: 64, offset: 448)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !69, file: !70, line: 254, baseType: !5, size: 64, align: 64, offset: 512)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !69, file: !70, line: 256, baseType: !5, size: 64, align: 64, offset: 576)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !69, file: !70, line: 257, baseType: !5, size: 64, align: 64, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !69, file: !70, line: 258, baseType: !5, size: 64, align: 64, offset: 704)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !69, file: !70, line: 260, baseType: !85, size: 64, align: 64, offset: 768)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !70, line: 156, size: 192, align: 64, elements: !87)
!87 = !{!88, !89, !91}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !86, file: !70, line: 157, baseType: !85, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !86, file: !70, line: 158, baseType: !90, size: 64, align: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !86, file: !70, line: 162, baseType: !15, size: 32, align: 32, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !69, file: !70, line: 262, baseType: !90, size: 64, align: 64, offset: 832)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !69, file: !70, line: 264, baseType: !15, size: 32, align: 32, offset: 896)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !69, file: !70, line: 268, baseType: !15, size: 32, align: 32, offset: 928)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !69, file: !70, line: 270, baseType: !96, size: 64, align: 64, offset: 960)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !97, line: 131, baseType: !98)
!97 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop")
!98 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !69, file: !70, line: 274, baseType: !100, size: 16, align: 16, offset: 1024)
!100 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !69, file: !70, line: 275, baseType: !102, size: 8, align: 8, offset: 1040)
!102 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !69, file: !70, line: 276, baseType: !104, size: 8, align: 8, offset: 1048)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 8, align: 8, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 1)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !69, file: !70, line: 280, baseType: !108, size: 64, align: 64, offset: 1088)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !70, line: 150, baseType: null)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !69, file: !70, line: 289, baseType: !111, size: 64, align: 64, offset: 1152)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !97, line: 132, baseType: !98)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !69, file: !70, line: 297, baseType: !7, size: 64, align: 64, offset: 1216)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !69, file: !70, line: 298, baseType: !7, size: 64, align: 64, offset: 1280)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !69, file: !70, line: 299, baseType: !7, size: 64, align: 64, offset: 1344)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !69, file: !70, line: 300, baseType: !7, size: 64, align: 64, offset: 1408)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !69, file: !70, line: 302, baseType: !117, size: 64, align: 64, offset: 1472)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !118, line: 216, baseType: !119)
!118 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop")
!119 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !69, file: !70, line: 303, baseType: !15, size: 32, align: 32, offset: 1536)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !69, file: !70, line: 305, baseType: !122, size: 160, align: 8, offset: 1568)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 160, align: 8, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 20)
!125 = !DILocation(line: 153, column: 8, scope: !35)
!126 = !DILocalVariable(name: "fp_out", scope: !35, file: !14, line: 154, type: !66)
!127 = !DILocation(line: 154, column: 8, scope: !35)
!128 = !DILocation(line: 156, column: 2, scope: !35)
!129 = !DILocalVariable(name: "option_index", scope: !130, file: !14, line: 157, type: !15)
!130 = distinct !DILexicalBlock(scope: !35, file: !14, line: 156, column: 12)
!131 = !DILocation(line: 157, column: 7, scope: !130)
!132 = !DILocation(line: 158, column: 20, scope: !130)
!133 = !DILocation(line: 158, column: 26, scope: !130)
!134 = !DILocation(line: 158, column: 8, scope: !130)
!135 = !DILocation(line: 158, column: 6, scope: !130)
!136 = !DILocation(line: 162, column: 7, scope: !137)
!137 = distinct !DILexicalBlock(scope: !130, file: !14, line: 162, column: 7)
!138 = !DILocation(line: 162, column: 10, scope: !137)
!139 = !DILocation(line: 162, column: 7, scope: !130)
!140 = !DILocation(line: 163, column: 4, scope: !137)
!141 = !DILocation(line: 165, column: 11, scope: !130)
!142 = !DILocation(line: 165, column: 3, scope: !130)
!143 = !DILocation(line: 168, column: 21, scope: !144)
!144 = distinct !DILexicalBlock(scope: !130, file: !14, line: 165, column: 15)
!145 = !DILocation(line: 168, column: 14, scope: !144)
!146 = !DILocation(line: 168, column: 12, scope: !144)
!147 = !DILocation(line: 169, column: 4, scope: !144)
!148 = !DILocation(line: 171, column: 12, scope: !144)
!149 = !DILocation(line: 171, column: 10, scope: !144)
!150 = !DILocation(line: 172, column: 4, scope: !144)
!151 = !DILocation(line: 174, column: 15, scope: !144)
!152 = !DILocation(line: 175, column: 4, scope: !144)
!153 = !DILocation(line: 177, column: 13, scope: !144)
!154 = !DILocation(line: 178, column: 4, scope: !144)
!155 = !DILocation(line: 180, column: 10, scope: !144)
!156 = !DILocation(line: 180, column: 4, scope: !144)
!157 = !DILocation(line: 181, column: 4, scope: !144)
!158 = !DILocation(line: 184, column: 11, scope: !144)
!159 = !DILocation(line: 184, column: 27, scope: !144)
!160 = !DILocation(line: 184, column: 4, scope: !144)
!161 = !DILocation(line: 185, column: 4, scope: !144)
!162 = !DILocation(line: 187, column: 16, scope: !144)
!163 = !DILocation(line: 188, column: 4, scope: !144)
!164 = !DILocation(line: 190, column: 13, scope: !144)
!165 = !DILocation(line: 191, column: 4, scope: !144)
!166 = !DILocation(line: 193, column: 10, scope: !144)
!167 = !DILocation(line: 193, column: 4, scope: !144)
!168 = !DILocation(line: 194, column: 4, scope: !144)
!169 = !DILocation(line: 156, column: 2, scope: !170)
!170 = !DILexicalBlockFile(scope: !35, file: !14, discriminator: 1)
!171 = distinct !{!171, !128}
!172 = !DILocation(line: 198, column: 6, scope: !173)
!173 = distinct !DILexicalBlock(scope: !35, file: !14, line: 198, column: 6)
!174 = !DILocation(line: 198, column: 17, scope: !173)
!175 = !DILocation(line: 198, column: 20, scope: !176)
!176 = !DILexicalBlockFile(scope: !173, file: !14, discriminator: 1)
!177 = !DILocation(line: 198, column: 6, scope: !176)
!178 = !DILocation(line: 199, column: 10, scope: !179)
!179 = distinct !DILexicalBlock(scope: !173, file: !14, line: 198, column: 30)
!180 = !DILocation(line: 199, column: 3, scope: !179)
!181 = !DILocation(line: 200, column: 3, scope: !179)
!182 = !DILocation(line: 203, column: 6, scope: !183)
!183 = distinct !DILexicalBlock(scope: !35, file: !14, line: 203, column: 6)
!184 = !DILocation(line: 203, column: 6, scope: !35)
!185 = !DILocation(line: 204, column: 14, scope: !186)
!186 = distinct !DILexicalBlock(scope: !187, file: !14, line: 204, column: 6)
!187 = distinct !DILexicalBlock(scope: !183, file: !14, line: 203, column: 18)
!188 = !DILocation(line: 204, column: 11, scope: !186)
!189 = !DILocation(line: 204, column: 6, scope: !187)
!190 = !DILocation(line: 205, column: 11, scope: !191)
!191 = distinct !DILexicalBlock(scope: !186, file: !14, line: 204, column: 21)
!192 = !DILocation(line: 205, column: 10, scope: !191)
!193 = !DILocation(line: 206, column: 4, scope: !191)
!194 = distinct !{!194, !193}
!195 = !DILocation(line: 206, column: 13, scope: !196)
!196 = !DILexicalBlockFile(scope: !197, file: !14, discriminator: 1)
!197 = distinct !DILexicalBlock(scope: !198, file: !14, line: 206, column: 13)
!198 = distinct !DILexicalBlock(scope: !191, file: !14, line: 206, column: 7)
!199 = !DILocation(line: 206, column: 3, scope: !200)
!200 = !DILexicalBlockFile(scope: !197, file: !14, discriminator: 2)
!201 = !DILocation(line: 206, column: 27, scope: !200)
!202 = !DILocation(line: 206, column: 29, scope: !203)
!203 = !DILexicalBlockFile(scope: !198, file: !14, discriminator: 3)
!204 = !DILocation(line: 207, column: 3, scope: !191)
!205 = !DILocation(line: 208, column: 4, scope: !206)
!206 = distinct !DILexicalBlock(scope: !186, file: !14, line: 207, column: 10)
!207 = distinct !{!207, !205}
!208 = !DILocation(line: 208, column: 13, scope: !209)
!209 = !DILexicalBlockFile(scope: !210, file: !14, discriminator: 1)
!210 = distinct !DILexicalBlock(scope: !211, file: !14, line: 208, column: 13)
!211 = distinct !DILexicalBlock(scope: !206, file: !14, line: 208, column: 7)
!212 = !DILocation(line: 208, column: 3, scope: !213)
!213 = !DILexicalBlockFile(scope: !210, file: !14, discriminator: 2)
!214 = !DILocation(line: 208, column: 27, scope: !213)
!215 = !DILocation(line: 208, column: 35, scope: !216)
!216 = !DILexicalBlockFile(scope: !211, file: !14, discriminator: 3)
!217 = !DILocation(line: 209, column: 18, scope: !206)
!218 = !DILocation(line: 209, column: 12, scope: !206)
!219 = !DILocation(line: 209, column: 10, scope: !206)
!220 = !DILocation(line: 210, column: 15, scope: !221)
!221 = distinct !DILexicalBlock(scope: !206, file: !14, line: 210, column: 7)
!222 = !DILocation(line: 210, column: 12, scope: !221)
!223 = !DILocation(line: 210, column: 7, scope: !206)
!224 = !DILocation(line: 211, column: 5, scope: !225)
!225 = distinct !DILexicalBlock(scope: !221, file: !14, line: 210, column: 22)
!226 = distinct !{!226, !224}
!227 = !DILocation(line: 211, column: 4, scope: !228)
!228 = !DILexicalBlockFile(scope: !229, file: !14, discriminator: 1)
!229 = distinct !DILexicalBlock(scope: !225, file: !14, line: 211, column: 8)
!230 = !DILocation(line: 211, column: 7, scope: !228)
!231 = !DILocation(line: 211, column: 6, scope: !228)
!232 = !DILocation(line: 211, column: 5, scope: !228)
!233 = !DILocation(line: 211, column: 14, scope: !234)
!234 = !DILexicalBlockFile(scope: !228, file: !14, discriminator: 2)
!235 = !DILocation(line: 211, column: 10, scope: !236)
!236 = !DILexicalBlockFile(scope: !228, file: !14, discriminator: 3)
!237 = !DILocation(line: 211, column: 8, scope: !228)
!238 = !DILocation(line: 213, column: 5, scope: !225)
!239 = !DILocation(line: 215, column: 12, scope: !206)
!240 = !DILocation(line: 215, column: 11, scope: !206)
!241 = !DILocation(line: 217, column: 2, scope: !187)
!242 = !DILocation(line: 218, column: 6, scope: !243)
!243 = distinct !DILexicalBlock(scope: !35, file: !14, line: 218, column: 6)
!244 = !DILocation(line: 218, column: 6, scope: !35)
!245 = !DILocation(line: 219, column: 14, scope: !246)
!246 = distinct !DILexicalBlock(scope: !247, file: !14, line: 219, column: 6)
!247 = distinct !DILexicalBlock(scope: !243, file: !14, line: 218, column: 16)
!248 = !DILocation(line: 219, column: 11, scope: !246)
!249 = !DILocation(line: 219, column: 6, scope: !247)
!250 = !DILocation(line: 220, column: 12, scope: !251)
!251 = distinct !DILexicalBlock(scope: !246, file: !14, line: 219, column: 21)
!252 = !DILocation(line: 220, column: 11, scope: !251)
!253 = !DILocation(line: 221, column: 4, scope: !251)
!254 = distinct !{!254, !253}
!255 = !DILocation(line: 221, column: 13, scope: !256)
!256 = !DILexicalBlockFile(scope: !257, file: !14, discriminator: 1)
!257 = distinct !DILexicalBlock(scope: !258, file: !14, line: 221, column: 13)
!258 = distinct !DILexicalBlock(scope: !251, file: !14, line: 221, column: 7)
!259 = !DILocation(line: 221, column: 3, scope: !260)
!260 = !DILexicalBlockFile(scope: !257, file: !14, discriminator: 2)
!261 = !DILocation(line: 221, column: 27, scope: !260)
!262 = !DILocation(line: 221, column: 29, scope: !263)
!263 = !DILexicalBlockFile(scope: !258, file: !14, discriminator: 3)
!264 = !DILocation(line: 222, column: 3, scope: !251)
!265 = !DILocation(line: 223, column: 19, scope: !266)
!266 = distinct !DILexicalBlock(scope: !246, file: !14, line: 222, column: 10)
!267 = !DILocation(line: 223, column: 13, scope: !266)
!268 = !DILocation(line: 223, column: 11, scope: !266)
!269 = !DILocation(line: 224, column: 15, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !14, line: 224, column: 7)
!271 = !DILocation(line: 224, column: 12, scope: !270)
!272 = !DILocation(line: 224, column: 7, scope: !266)
!273 = !DILocation(line: 225, column: 5, scope: !274)
!274 = distinct !DILexicalBlock(scope: !270, file: !14, line: 224, column: 23)
!275 = distinct !{!275, !273}
!276 = !DILocation(line: 225, column: 4, scope: !277)
!277 = !DILexicalBlockFile(scope: !278, file: !14, discriminator: 1)
!278 = distinct !DILexicalBlock(scope: !274, file: !14, line: 225, column: 8)
!279 = !DILocation(line: 225, column: 7, scope: !277)
!280 = !DILocation(line: 225, column: 6, scope: !277)
!281 = !DILocation(line: 225, column: 5, scope: !277)
!282 = !DILocation(line: 225, column: 14, scope: !283)
!283 = !DILexicalBlockFile(scope: !277, file: !14, discriminator: 2)
!284 = !DILocation(line: 225, column: 10, scope: !285)
!285 = !DILexicalBlockFile(scope: !277, file: !14, discriminator: 3)
!286 = !DILocation(line: 225, column: 8, scope: !277)
!287 = !DILocation(line: 227, column: 5, scope: !274)
!288 = !DILocation(line: 230, column: 2, scope: !247)
!289 = !DILocation(line: 231, column: 14, scope: !290)
!290 = distinct !DILexicalBlock(scope: !35, file: !14, line: 231, column: 6)
!291 = !DILocation(line: 231, column: 11, scope: !290)
!292 = !DILocation(line: 231, column: 21, scope: !290)
!293 = !DILocation(line: 231, column: 33, scope: !294)
!294 = !DILexicalBlockFile(scope: !290, file: !14, discriminator: 1)
!295 = !DILocation(line: 231, column: 30, scope: !294)
!296 = !DILocation(line: 231, column: 6, scope: !294)
!297 = !DILocation(line: 232, column: 10, scope: !298)
!298 = distinct !DILexicalBlock(scope: !290, file: !14, line: 231, column: 42)
!299 = !DILocation(line: 232, column: 3, scope: !298)
!300 = !DILocation(line: 233, column: 3, scope: !298)
!301 = !DILocation(line: 237, column: 8, scope: !35)
!302 = !DILocation(line: 237, column: 6, scope: !35)
!303 = !DILocation(line: 238, column: 7, scope: !304)
!304 = distinct !DILexicalBlock(scope: !35, file: !14, line: 238, column: 6)
!305 = !DILocation(line: 238, column: 6, scope: !304)
!306 = !DILocation(line: 238, column: 12, scope: !304)
!307 = !DILocation(line: 238, column: 21, scope: !308)
!308 = !DILexicalBlockFile(scope: !304, file: !14, discriminator: 1)
!309 = !DILocation(line: 238, column: 16, scope: !308)
!310 = !DILocation(line: 238, column: 26, scope: !308)
!311 = !DILocation(line: 238, column: 6, scope: !308)
!312 = !DILocation(line: 239, column: 3, scope: !313)
!313 = distinct !DILexicalBlock(scope: !304, file: !14, line: 238, column: 32)
!314 = distinct !{!314, !312}
!315 = !DILocation(line: 239, column: 2, scope: !316)
!316 = !DILexicalBlockFile(scope: !317, file: !14, discriminator: 1)
!317 = distinct !DILexicalBlock(scope: !313, file: !14, line: 239, column: 6)
!318 = !DILocation(line: 239, column: 8, scope: !316)
!319 = !DILocation(line: 239, column: 86, scope: !316)
!320 = !DILocation(line: 240, column: 7, scope: !321)
!321 = distinct !DILexicalBlock(scope: !313, file: !14, line: 240, column: 7)
!322 = !DILocation(line: 240, column: 16, scope: !321)
!323 = !DILocation(line: 240, column: 19, scope: !324)
!324 = !DILexicalBlockFile(scope: !321, file: !14, discriminator: 1)
!325 = !DILocation(line: 240, column: 7, scope: !324)
!326 = !DILocation(line: 240, column: 33, scope: !327)
!327 = !DILexicalBlockFile(scope: !321, file: !14, discriminator: 2)
!328 = !DILocation(line: 240, column: 26, scope: !327)
!329 = !DILocation(line: 241, column: 7, scope: !330)
!330 = distinct !DILexicalBlock(scope: !313, file: !14, line: 241, column: 7)
!331 = !DILocation(line: 241, column: 18, scope: !330)
!332 = !DILocation(line: 241, column: 21, scope: !333)
!333 = !DILexicalBlockFile(scope: !330, file: !14, discriminator: 1)
!334 = !DILocation(line: 241, column: 7, scope: !333)
!335 = !DILocation(line: 241, column: 35, scope: !336)
!336 = !DILexicalBlockFile(scope: !330, file: !14, discriminator: 2)
!337 = !DILocation(line: 241, column: 28, scope: !336)
!338 = !DILocation(line: 242, column: 3, scope: !313)
!339 = !DILocation(line: 246, column: 12, scope: !340)
!340 = distinct !DILexicalBlock(scope: !35, file: !14, line: 246, column: 6)
!341 = !DILocation(line: 246, column: 9, scope: !340)
!342 = !DILocation(line: 246, column: 6, scope: !35)
!343 = !DILocation(line: 247, column: 3, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !14, line: 246, column: 21)
!345 = distinct !{!345, !343}
!346 = !DILocation(line: 247, column: 2, scope: !347)
!347 = !DILexicalBlockFile(scope: !348, file: !14, discriminator: 1)
!348 = distinct !DILexicalBlock(scope: !344, file: !14, line: 247, column: 6)
!349 = !DILocation(line: 247, column: 8, scope: !347)
!350 = !DILocation(line: 247, column: 101, scope: !347)
!351 = !DILocation(line: 248, column: 7, scope: !352)
!352 = distinct !DILexicalBlock(scope: !344, file: !14, line: 248, column: 7)
!353 = !DILocation(line: 248, column: 16, scope: !352)
!354 = !DILocation(line: 248, column: 19, scope: !355)
!355 = !DILexicalBlockFile(scope: !352, file: !14, discriminator: 1)
!356 = !DILocation(line: 248, column: 7, scope: !355)
!357 = !DILocation(line: 248, column: 33, scope: !358)
!358 = !DILexicalBlockFile(scope: !352, file: !14, discriminator: 2)
!359 = !DILocation(line: 248, column: 26, scope: !358)
!360 = !DILocation(line: 249, column: 7, scope: !361)
!361 = distinct !DILexicalBlock(scope: !344, file: !14, line: 249, column: 7)
!362 = !DILocation(line: 249, column: 18, scope: !361)
!363 = !DILocation(line: 249, column: 21, scope: !364)
!364 = !DILexicalBlockFile(scope: !361, file: !14, discriminator: 1)
!365 = !DILocation(line: 249, column: 7, scope: !364)
!366 = !DILocation(line: 249, column: 35, scope: !367)
!367 = !DILexicalBlockFile(scope: !361, file: !14, discriminator: 2)
!368 = !DILocation(line: 249, column: 28, scope: !367)
!369 = !DILocation(line: 250, column: 3, scope: !344)
!370 = !DILocation(line: 252, column: 2, scope: !35)
!371 = distinct !{!371, !370}
!372 = !DILocation(line: 252, column: 11, scope: !373)
!373 = !DILexicalBlockFile(scope: !374, file: !14, discriminator: 1)
!374 = distinct !DILexicalBlock(scope: !375, file: !14, line: 252, column: 11)
!375 = distinct !DILexicalBlock(scope: !35, file: !14, line: 252, column: 5)
!376 = !DILocation(line: 252, column: 1, scope: !377)
!377 = !DILexicalBlockFile(scope: !374, file: !14, discriminator: 2)
!378 = !DILocation(line: 252, column: 29, scope: !377)
!379 = !DILocation(line: 252, column: 25, scope: !377)
!380 = !DILocation(line: 252, column: 39, scope: !381)
!381 = !DILexicalBlockFile(scope: !375, file: !14, discriminator: 3)
!382 = !DILocation(line: 253, column: 26, scope: !35)
!383 = !DILocation(line: 253, column: 9, scope: !35)
!384 = !DILocation(line: 253, column: 7, scope: !35)
!385 = !DILocation(line: 255, column: 13, scope: !386)
!386 = distinct !DILexicalBlock(scope: !35, file: !14, line: 255, column: 5)
!387 = !DILocation(line: 255, column: 10, scope: !386)
!388 = !DILocation(line: 255, column: 5, scope: !35)
!389 = !DILocation(line: 256, column: 3, scope: !390)
!390 = distinct !DILexicalBlock(scope: !386, file: !14, line: 255, column: 19)
!391 = distinct !{!391, !389}
!392 = !DILocation(line: 256, column: 2, scope: !393)
!393 = !DILexicalBlockFile(scope: !394, file: !14, discriminator: 1)
!394 = distinct !DILexicalBlock(scope: !390, file: !14, line: 256, column: 6)
!395 = !DILocation(line: 256, column: 5, scope: !393)
!396 = !DILocation(line: 256, column: 14, scope: !393)
!397 = !DILocation(line: 256, column: 8, scope: !393)
!398 = !DILocation(line: 256, column: 25, scope: !393)
!399 = !DILocation(line: 258, column: 7, scope: !400)
!400 = distinct !DILexicalBlock(scope: !390, file: !14, line: 258, column: 7)
!401 = !DILocation(line: 258, column: 16, scope: !400)
!402 = !DILocation(line: 258, column: 19, scope: !403)
!403 = !DILexicalBlockFile(scope: !400, file: !14, discriminator: 1)
!404 = !DILocation(line: 258, column: 7, scope: !403)
!405 = !DILocation(line: 258, column: 33, scope: !406)
!406 = !DILexicalBlockFile(scope: !400, file: !14, discriminator: 2)
!407 = !DILocation(line: 258, column: 26, scope: !406)
!408 = !DILocation(line: 259, column: 7, scope: !409)
!409 = distinct !DILexicalBlock(scope: !390, file: !14, line: 259, column: 7)
!410 = !DILocation(line: 259, column: 18, scope: !409)
!411 = !DILocation(line: 259, column: 21, scope: !412)
!412 = !DILexicalBlockFile(scope: !409, file: !14, discriminator: 1)
!413 = !DILocation(line: 259, column: 7, scope: !412)
!414 = !DILocation(line: 259, column: 35, scope: !415)
!415 = !DILexicalBlockFile(scope: !409, file: !14, discriminator: 2)
!416 = !DILocation(line: 259, column: 28, scope: !415)
!417 = !DILocation(line: 260, column: 3, scope: !390)
!418 = !DILocation(line: 264, column: 2, scope: !35)
!419 = !DILocation(line: 265, column: 6, scope: !420)
!420 = distinct !DILexicalBlock(scope: !35, file: !14, line: 265, column: 6)
!421 = !DILocation(line: 265, column: 6, scope: !35)
!422 = !DILocation(line: 266, column: 19, scope: !420)
!423 = !DILocation(line: 266, column: 25, scope: !420)
!424 = !DILocation(line: 266, column: 36, scope: !420)
!425 = !DILocation(line: 266, column: 8, scope: !420)
!426 = !DILocation(line: 266, column: 6, scope: !420)
!427 = !DILocation(line: 266, column: 3, scope: !420)
!428 = !DILocation(line: 267, column: 6, scope: !429)
!429 = distinct !DILexicalBlock(scope: !35, file: !14, line: 267, column: 6)
!430 = !DILocation(line: 267, column: 6, scope: !35)
!431 = !DILocation(line: 268, column: 21, scope: !429)
!432 = !DILocation(line: 268, column: 27, scope: !429)
!433 = !DILocation(line: 268, column: 8, scope: !429)
!434 = !DILocation(line: 268, column: 6, scope: !429)
!435 = !DILocation(line: 268, column: 3, scope: !429)
!436 = !DILocation(line: 269, column: 20, scope: !35)
!437 = !DILocation(line: 269, column: 2, scope: !35)
!438 = !DILocation(line: 272, column: 6, scope: !439)
!439 = distinct !DILexicalBlock(scope: !35, file: !14, line: 272, column: 6)
!440 = !DILocation(line: 272, column: 15, scope: !439)
!441 = !DILocation(line: 272, column: 18, scope: !442)
!442 = !DILexicalBlockFile(scope: !439, file: !14, discriminator: 1)
!443 = !DILocation(line: 272, column: 6, scope: !442)
!444 = !DILocation(line: 272, column: 32, scope: !445)
!445 = !DILexicalBlockFile(scope: !439, file: !14, discriminator: 2)
!446 = !DILocation(line: 272, column: 25, scope: !445)
!447 = !DILocation(line: 273, column: 6, scope: !448)
!448 = distinct !DILexicalBlock(scope: !35, file: !14, line: 273, column: 6)
!449 = !DILocation(line: 273, column: 17, scope: !448)
!450 = !DILocation(line: 273, column: 20, scope: !451)
!451 = !DILexicalBlockFile(scope: !448, file: !14, discriminator: 1)
!452 = !DILocation(line: 273, column: 6, scope: !451)
!453 = !DILocation(line: 273, column: 34, scope: !454)
!454 = !DILexicalBlockFile(scope: !448, file: !14, discriminator: 2)
!455 = !DILocation(line: 273, column: 27, scope: !454)
!456 = !DILocation(line: 274, column: 7, scope: !35)
!457 = !DILocation(line: 274, column: 2, scope: !35)
!458 = !DILocation(line: 275, column: 1, scope: !35)
!459 = distinct !DISubprogram(name: "usage", scope: !14, file: !14, line: 45, type: !460, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !23}
!462 = !DILocalVariable(name: "prog", arg: 1, scope: !459, file: !14, line: 45, type: !23)
!463 = !DILocation(line: 45, column: 31, scope: !459)
!464 = !DILocation(line: 47, column: 9, scope: !459)
!465 = !DILocation(line: 73, column: 3, scope: !459)
!466 = !DILocation(line: 73, column: 9, scope: !459)
!467 = !DILocation(line: 73, column: 15, scope: !459)
!468 = !DILocation(line: 73, column: 21, scope: !459)
!469 = !DILocation(line: 47, column: 2, scope: !459)
!470 = !DILocation(line: 74, column: 1, scope: !459)
!471 = distinct !DISubprogram(name: "__dump_vpd", scope: !14, file: !14, line: 76, type: !472, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!472 = !DISubroutineType(types: !473)
!473 = !{!15, !56, !15, !66}
!474 = !DILocalVariable(name: "card", arg: 1, scope: !471, file: !14, line: 76, type: !56)
!475 = !DILocation(line: 76, column: 37, scope: !471)
!476 = !DILocalVariable(name: "dump_level", arg: 2, scope: !471, file: !14, line: 76, type: !15)
!477 = !DILocation(line: 76, column: 47, scope: !471)
!478 = !DILocalVariable(name: "fp", arg: 3, scope: !471, file: !14, line: 76, type: !66)
!479 = !DILocation(line: 76, column: 65, scope: !471)
!480 = !DILocalVariable(name: "bin_ok", scope: !471, file: !14, line: 78, type: !481)
!481 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!482 = !DILocation(line: 78, column: 6, scope: !471)
!483 = !DILocalVariable(name: "rc", scope: !471, file: !14, line: 79, type: !15)
!484 = !DILocation(line: 79, column: 6, scope: !471)
!485 = !DILocalVariable(name: "vpd", scope: !471, file: !14, line: 80, type: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "genwqe_vpd", file: !57, line: 379, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "genwqe_vpd", file: !57, line: 377, size: 4096, align: 8, elements: !488)
!488 = !{!489}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "csv_vpd_data", scope: !487, file: !57, line: 378, baseType: !490, size: 4096, align: 8)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 4096, align: 8, elements: !491)
!491 = !{!492}
!492 = !DISubrange(count: 512)
!493 = !DILocation(line: 80, column: 13, scope: !471)
!494 = !DILocalVariable(name: "crc", scope: !471, file: !14, line: 81, type: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !10, line: 51, baseType: !496)
!496 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!497 = !DILocation(line: 81, column: 11, scope: !471)
!498 = !DILocation(line: 83, column: 23, scope: !471)
!499 = !DILocation(line: 83, column: 7, scope: !471)
!500 = !DILocation(line: 83, column: 5, scope: !471)
!501 = !DILocation(line: 84, column: 11, scope: !502)
!502 = distinct !DILexicalBlock(scope: !471, file: !14, line: 84, column: 6)
!503 = !DILocation(line: 84, column: 8, scope: !502)
!504 = !DILocation(line: 84, column: 6, scope: !471)
!505 = !DILocation(line: 85, column: 7, scope: !506)
!506 = distinct !DILexicalBlock(scope: !507, file: !14, line: 85, column: 7)
!507 = distinct !DILexicalBlock(scope: !502, file: !14, line: 84, column: 15)
!508 = !DILocation(line: 85, column: 7, scope: !507)
!509 = !DILocation(line: 86, column: 19, scope: !506)
!510 = !DILocation(line: 86, column: 23, scope: !506)
!511 = !DILocation(line: 86, column: 4, scope: !506)
!512 = !DILocation(line: 88, column: 3, scope: !507)
!513 = distinct !{!513, !512}
!514 = !DILocation(line: 88, column: 12, scope: !515)
!515 = !DILexicalBlockFile(scope: !516, file: !14, discriminator: 1)
!516 = distinct !DILexicalBlock(scope: !517, file: !14, line: 88, column: 12)
!517 = distinct !DILexicalBlock(scope: !507, file: !14, line: 88, column: 6)
!518 = !DILocation(line: 88, column: 2, scope: !519)
!519 = !DILexicalBlockFile(scope: !516, file: !14, discriminator: 2)
!520 = !DILocation(line: 88, column: 26, scope: !519)
!521 = !DILocation(line: 88, column: 49, scope: !522)
!522 = !DILexicalBlockFile(scope: !517, file: !14, discriminator: 3)
!523 = !DILocation(line: 89, column: 26, scope: !507)
!524 = !DILocation(line: 89, column: 9, scope: !507)
!525 = !DILocation(line: 89, column: 7, scope: !507)
!526 = !DILocation(line: 90, column: 12, scope: !527)
!527 = distinct !DILexicalBlock(scope: !507, file: !14, line: 90, column: 7)
!528 = !DILocation(line: 90, column: 9, scope: !527)
!529 = !DILocation(line: 90, column: 7, scope: !507)
!530 = !DILocation(line: 91, column: 4, scope: !527)
!531 = distinct !{!531, !530}
!532 = !DILocation(line: 91, column: 13, scope: !533)
!533 = !DILexicalBlockFile(scope: !534, file: !14, discriminator: 1)
!534 = distinct !DILexicalBlock(scope: !535, file: !14, line: 91, column: 13)
!535 = distinct !DILexicalBlock(scope: !527, file: !14, line: 91, column: 7)
!536 = !DILocation(line: 91, column: 3, scope: !537)
!537 = !DILexicalBlockFile(scope: !534, file: !14, discriminator: 2)
!538 = !DILocation(line: 91, column: 27, scope: !537)
!539 = !DILocation(line: 91, column: 30, scope: !540)
!540 = !DILexicalBlockFile(scope: !535, file: !14, discriminator: 3)
!541 = !DILocation(line: 91, column: 30, scope: !542)
!542 = !DILexicalBlockFile(scope: !535, file: !14, discriminator: 4)
!543 = !DILocation(line: 92, column: 8, scope: !527)
!544 = distinct !{!544, !543}
!545 = !DILocation(line: 92, column: 7, scope: !546)
!546 = !DILexicalBlockFile(scope: !547, file: !14, discriminator: 1)
!547 = distinct !DILexicalBlock(scope: !527, file: !14, line: 92, column: 11)
!548 = !DILocation(line: 92, column: 79, scope: !546)
!549 = !DILocation(line: 92, column: 13, scope: !546)
!550 = !DILocation(line: 92, column: 85, scope: !546)
!551 = !DILocation(line: 93, column: 3, scope: !507)
!552 = distinct !{!552, !551}
!553 = !DILocation(line: 93, column: 12, scope: !554)
!554 = !DILexicalBlockFile(scope: !555, file: !14, discriminator: 1)
!555 = distinct !DILexicalBlock(scope: !556, file: !14, line: 93, column: 12)
!556 = distinct !DILexicalBlock(scope: !507, file: !14, line: 93, column: 6)
!557 = !DILocation(line: 93, column: 2, scope: !558)
!558 = !DILexicalBlockFile(scope: !555, file: !14, discriminator: 2)
!559 = !DILocation(line: 93, column: 26, scope: !558)
!560 = !DILocation(line: 93, column: 37, scope: !561)
!561 = !DILexicalBlockFile(scope: !556, file: !14, discriminator: 3)
!562 = !DILocation(line: 94, column: 22, scope: !507)
!563 = !DILocation(line: 94, column: 202, scope: !507)
!564 = !DILocation(line: 94, column: 12, scope: !507)
!565 = !DILocation(line: 94, column: 10, scope: !507)
!566 = !DILocation(line: 95, column: 7, scope: !567)
!567 = distinct !DILexicalBlock(scope: !507, file: !14, line: 95, column: 7)
!568 = !DILocation(line: 95, column: 7, scope: !507)
!569 = !DILocation(line: 96, column: 7, scope: !567)
!570 = !DILocation(line: 96, column: 4, scope: !567)
!571 = !DILocation(line: 97, column: 8, scope: !567)
!572 = distinct !{!572, !571}
!573 = !DILocation(line: 97, column: 7, scope: !574)
!574 = !DILexicalBlockFile(scope: !575, file: !14, discriminator: 1)
!575 = distinct !DILexicalBlock(scope: !567, file: !14, line: 97, column: 11)
!576 = !DILocation(line: 97, column: 13, scope: !574)
!577 = !DILocation(line: 97, column: 100, scope: !574)
!578 = !DILocation(line: 98, column: 2, scope: !507)
!579 = !DILocation(line: 98, column: 9, scope: !580)
!580 = !DILexicalBlockFile(scope: !502, file: !14, discriminator: 1)
!581 = distinct !{!581, !582}
!582 = !DILocation(line: 98, column: 9, scope: !502)
!583 = !DILocation(line: 98, column: 8, scope: !584)
!584 = !DILexicalBlockFile(scope: !585, file: !14, discriminator: 2)
!585 = distinct !DILexicalBlock(scope: !502, file: !14, line: 98, column: 12)
!586 = !DILocation(line: 98, column: 109, scope: !584)
!587 = !DILocation(line: 98, column: 14, scope: !584)
!588 = !DILocation(line: 98, column: 114, scope: !584)
!589 = !DILocation(line: 99, column: 9, scope: !471)
!590 = !DILocation(line: 99, column: 2, scope: !471)
!591 = distinct !DISubprogram(name: "__update_vpd", scope: !14, file: !14, line: 102, type: !592, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!592 = !DISubroutineType(types: !593)
!593 = !{!15, !56, !66}
!594 = !DILocalVariable(name: "card", arg: 1, scope: !591, file: !14, line: 102, type: !56)
!595 = !DILocation(line: 102, column: 39, scope: !591)
!596 = !DILocalVariable(name: "fp", arg: 2, scope: !591, file: !14, line: 102, type: !66)
!597 = !DILocation(line: 102, column: 51, scope: !591)
!598 = !DILocalVariable(name: "bin_ok", scope: !591, file: !14, line: 104, type: !481)
!599 = !DILocation(line: 104, column: 6, scope: !591)
!600 = !DILocalVariable(name: "rc", scope: !591, file: !14, line: 105, type: !15)
!601 = !DILocation(line: 105, column: 6, scope: !591)
!602 = !DILocalVariable(name: "vpd", scope: !591, file: !14, line: 106, type: !486)
!603 = !DILocation(line: 106, column: 13, scope: !591)
!604 = !DILocalVariable(name: "n", scope: !591, file: !14, line: 107, type: !15)
!605 = !DILocation(line: 107, column: 6, scope: !591)
!606 = !DILocalVariable(name: "crc", scope: !591, file: !14, line: 108, type: !495)
!607 = !DILocation(line: 108, column: 11, scope: !591)
!608 = !DILocation(line: 110, column: 12, scope: !591)
!609 = !DILocation(line: 110, column: 209, scope: !591)
!610 = !DILocation(line: 110, column: 6, scope: !591)
!611 = !DILocation(line: 110, column: 4, scope: !591)
!612 = !DILocation(line: 111, column: 184, scope: !613)
!613 = distinct !DILexicalBlock(scope: !591, file: !14, line: 111, column: 6)
!614 = !DILocation(line: 111, column: 181, scope: !613)
!615 = !DILocation(line: 111, column: 6, scope: !591)
!616 = !DILocation(line: 112, column: 26, scope: !617)
!617 = distinct !DILexicalBlock(scope: !613, file: !14, line: 111, column: 187)
!618 = !DILocation(line: 112, column: 9, scope: !617)
!619 = !DILocation(line: 112, column: 7, scope: !617)
!620 = !DILocation(line: 113, column: 12, scope: !621)
!621 = distinct !DILexicalBlock(scope: !617, file: !14, line: 113, column: 7)
!622 = !DILocation(line: 113, column: 9, scope: !621)
!623 = !DILocation(line: 113, column: 7, scope: !617)
!624 = !DILocation(line: 114, column: 4, scope: !625)
!625 = distinct !DILexicalBlock(scope: !621, file: !14, line: 113, column: 17)
!626 = distinct !{!626, !624}
!627 = !DILocation(line: 114, column: 13, scope: !628)
!628 = !DILexicalBlockFile(scope: !629, file: !14, discriminator: 1)
!629 = distinct !DILexicalBlock(scope: !630, file: !14, line: 114, column: 13)
!630 = distinct !DILexicalBlock(scope: !625, file: !14, line: 114, column: 7)
!631 = !DILocation(line: 114, column: 3, scope: !632)
!632 = !DILexicalBlockFile(scope: !629, file: !14, discriminator: 2)
!633 = !DILocation(line: 114, column: 24, scope: !632)
!634 = !DILocation(line: 114, column: 49, scope: !635)
!635 = !DILexicalBlockFile(scope: !630, file: !14, discriminator: 3)
!636 = !DILocation(line: 115, column: 22, scope: !625)
!637 = !DILocation(line: 115, column: 206, scope: !625)
!638 = !DILocation(line: 115, column: 13, scope: !625)
!639 = !DILocation(line: 115, column: 11, scope: !625)
!640 = !DILocation(line: 116, column: 8, scope: !641)
!641 = distinct !DILexicalBlock(scope: !625, file: !14, line: 116, column: 8)
!642 = !DILocation(line: 116, column: 8, scope: !625)
!643 = !DILocation(line: 117, column: 27, scope: !644)
!644 = distinct !DILexicalBlock(scope: !641, file: !14, line: 116, column: 16)
!645 = !DILocation(line: 117, column: 10, scope: !644)
!646 = !DILocation(line: 117, column: 8, scope: !644)
!647 = !DILocation(line: 118, column: 9, scope: !648)
!648 = distinct !DILexicalBlock(scope: !644, file: !14, line: 118, column: 9)
!649 = !DILocation(line: 118, column: 12, scope: !648)
!650 = !DILocation(line: 118, column: 9, scope: !644)
!651 = !DILocation(line: 119, column: 9, scope: !648)
!652 = !DILocation(line: 119, column: 6, scope: !648)
!653 = !DILocation(line: 120, column: 4, scope: !644)
!654 = !DILocation(line: 120, column: 11, scope: !655)
!655 = !DILexicalBlockFile(scope: !641, file: !14, discriminator: 1)
!656 = distinct !{!656, !657}
!657 = !DILocation(line: 120, column: 11, scope: !641)
!658 = !DILocation(line: 120, column: 10, scope: !659)
!659 = !DILexicalBlockFile(scope: !660, file: !14, discriminator: 2)
!660 = distinct !DILexicalBlock(scope: !641, file: !14, line: 120, column: 14)
!661 = !DILocation(line: 120, column: 16, scope: !659)
!662 = !DILocation(line: 120, column: 97, scope: !659)
!663 = !DILocation(line: 121, column: 3, scope: !625)
!664 = !DILocation(line: 121, column: 10, scope: !665)
!665 = !DILexicalBlockFile(scope: !621, file: !14, discriminator: 1)
!666 = distinct !{!666, !667}
!667 = !DILocation(line: 121, column: 10, scope: !621)
!668 = !DILocation(line: 121, column: 9, scope: !669)
!669 = !DILexicalBlockFile(scope: !670, file: !14, discriminator: 2)
!670 = distinct !DILexicalBlock(scope: !621, file: !14, line: 121, column: 13)
!671 = !DILocation(line: 121, column: 93, scope: !669)
!672 = !DILocation(line: 121, column: 15, scope: !669)
!673 = !DILocation(line: 121, column: 99, scope: !669)
!674 = !DILocation(line: 122, column: 2, scope: !617)
!675 = !DILocation(line: 122, column: 9, scope: !676)
!676 = !DILexicalBlockFile(scope: !613, file: !14, discriminator: 1)
!677 = distinct !{!677, !678}
!678 = !DILocation(line: 122, column: 9, scope: !613)
!679 = !DILocation(line: 122, column: 8, scope: !680)
!680 = !DILexicalBlockFile(scope: !681, file: !14, discriminator: 2)
!681 = distinct !DILexicalBlock(scope: !613, file: !14, line: 122, column: 12)
!682 = !DILocation(line: 122, column: 10, scope: !680)
!683 = !DILocation(line: 122, column: 9, scope: !680)
!684 = !DILocation(line: 122, column: 62, scope: !685)
!685 = !DILexicalBlockFile(scope: !680, file: !14, discriminator: 3)
!686 = !DILocation(line: 122, column: 14, scope: !687)
!687 = !DILexicalBlockFile(scope: !680, file: !14, discriminator: 4)
!688 = !DILocation(line: 122, column: 12, scope: !680)
!689 = !DILocation(line: 123, column: 9, scope: !591)
!690 = !DILocation(line: 123, column: 2, scope: !591)
