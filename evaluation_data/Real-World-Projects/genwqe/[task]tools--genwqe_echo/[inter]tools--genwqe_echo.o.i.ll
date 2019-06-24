; ModuleID = '/home/lichi/Desktop/genwqe/[task]tools--genwqe_echo/[inter]tools--genwqe_echo.o.i'
source_filename = "/home/lichi/Desktop/genwqe/[task]tools--genwqe_echo/[inter]tools--genwqe_echo.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.card_dev_t = type opaque
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.ddcb_cmd = type { i64, i64, i8, i8, i8, i8, i16, i16, i16, i16, i32, i64, i64, i64, i64, [64 x i8], %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i64, [96 x i8] }

@verbose_flag = global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ABCDEF_echo test [123456789abcde]\00", align 1
@tstring_default = global i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), align 8
@main.long_options = internal global [17 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32* null, i32 67 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i32 1, i32* null, i32 65 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 1, i32* null, i32 88 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 1, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 1, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 1, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 1, i32* null, i32 101 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 0, i32* null, i32 86 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32 0, i32* null, i32 72 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 0, i32* null, i32 68 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"card\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"accelerator-type\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"preload\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"interval\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"exit-on-err\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"flood\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"hardware-version\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"polling\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"pDC:A:c:fhl:i:s:qvX:HVe:\00", align 1
@optarg = external global i8*, align 8
@.str.18 = private unnamed_addr constant [4 x i8] c"RED\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"GENWQE\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"CAPI\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"WARNING: Limited string to %d bytes\0A\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@version = internal global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), align 8
@optind = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.23 = private unnamed_addr constant [45 x i8] c"err: failed to open card %u type %u (%d/%s)\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.24 = private unnamed_addr constant [35 x i8] c"Start DDCB Echo '%s' for unit #%x\0A\00", align 1
@stop_echoing = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [55 x i8] c"%d x %u bytes from UNIT #%x: echo_req time=%2.1f usec\0A\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.27 = private unnamed_addr constant [118 x i8] c"--- UNIT #%x echo statistics ---\0A%ld packets transmitted, %ld received, %ld lost, %ld%% packet loss, queue %lld usec\0A\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"4.0.20-5-g2944\00", align 1
@.str.29 = private unnamed_addr constant [803 x i8] c"Usage: %s [OPTIONS]\0A  -h, --help\0A  -v, --verbose\0A  -C, --card=CARDNO|RED  Note: RED is for Card Redundant mode\0A  -A, --accelerator-type=GENWQE|CAPI CAPI is only available for System p\0A  -q, --quiet            quiece output\0A  -V, --version\0A  -H, --hardware-version\0A  -c, --count=COUNT\0A  -X, --cpu=CPU          only run on this CPU number\0A  -D, --debug            create extended debug data on failure\0A  -e, --exit-on-err      exit program when seeing an error\0A  -f, --flood\0A  -l, --preload=1..N     N <= 64\0A  -i, --interval=INTERVAL_USEC\0A  -s, --string=TESTSTRING\0A  -p, --polling          use DDCB polling mode.\0A\0AThis utility sends echo DDCBs either to the service layer\0Aor other chip units. It can be used to check the cards\0Ahealth and/or to produce stress on the card to verify its\0Acorrect function.\0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"err: failed to alloc cmd memory\0A\00", align 1
@.str.31 = private unnamed_addr constant [89 x i8] c"err: Echo DDCB failed: %s (%d)\0A     errno=%d %s\0A     RETC: %03x %s ATTN: %02x PROGR: %x\0A\00", align 1
@.str.32 = private unnamed_addr constant [43 x i8] c"\0ADDCB echo compare failed\0A    retc=%x %s:\0A\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"  original: \00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"\0A            \00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"\0A  received: \00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"Echo OK (retc=%x %s)\0A\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"test string too long (%u)\0A\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"%u ECHO DDCBs prepared (%u bytes to send)\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !70 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8, align 1
  %19 = alloca %struct.card_dev_t*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.timeval, align 8
  %32 = alloca %struct.timeval, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !89, metadata !90), !dbg !91
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !92, metadata !90), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %6, metadata !94, metadata !90), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %7, metadata !96, metadata !90), !dbg !97
  store i32 0, i32* %7, align 4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %8, metadata !98, metadata !90), !dbg !99
  store i32 0, i32* %8, align 4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %9, metadata !100, metadata !90), !dbg !101
  store i32 0, i32* %9, align 4, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %10, metadata !102, metadata !90), !dbg !103
  store i32 1, i32* %10, align 4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %11, metadata !104, metadata !90), !dbg !105
  store i32 0, i32* %11, align 4, !dbg !105
  call void @llvm.dbg.declare(metadata i8* %12, metadata !106, metadata !90), !dbg !108
  store i8 0, i8* %12, align 1, !dbg !108
  call void @llvm.dbg.declare(metadata i32* %13, metadata !109, metadata !90), !dbg !110
  store i32 0, i32* %13, align 4, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %14, metadata !111, metadata !90), !dbg !112
  store i32 1, i32* %14, align 4, !dbg !112
  call void @llvm.dbg.declare(metadata i64* %15, metadata !113, metadata !90), !dbg !114
  store i64 0, i64* %15, align 8, !dbg !114
  call void @llvm.dbg.declare(metadata i32* %16, metadata !115, metadata !90), !dbg !116
  store i32 1, i32* %16, align 4, !dbg !116
  call void @llvm.dbg.declare(metadata i64* %17, metadata !117, metadata !90), !dbg !118
  store i64 1000000, i64* %17, align 8, !dbg !118
  call void @llvm.dbg.declare(metadata i8* %18, metadata !119, metadata !90), !dbg !122
  store i8 1, i8* %18, align 1, !dbg !122
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %19, metadata !123, metadata !90), !dbg !127
  call void @llvm.dbg.declare(metadata i8** %20, metadata !128, metadata !90), !dbg !129
  %33 = load i8*, i8** @tstring_default, align 8, !dbg !130
  store i8* %33, i8** %20, align 8, !dbg !129
  call void @llvm.dbg.declare(metadata i64* %21, metadata !131, metadata !90), !dbg !132
  store i64 0, i64* %21, align 8, !dbg !132
  call void @llvm.dbg.declare(metadata i64* %22, metadata !133, metadata !90), !dbg !134
  store i64 0, i64* %22, align 8, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %23, metadata !135, metadata !90), !dbg !136
  store i32 -1, i32* %23, align 4, !dbg !136
  call void @llvm.dbg.declare(metadata i32* %24, metadata !137, metadata !90), !dbg !138
  store i32 0, i32* %24, align 4, !dbg !138
  call void @llvm.dbg.declare(metadata i64* %25, metadata !139, metadata !90), !dbg !140
  call void @llvm.dbg.declare(metadata i64* %26, metadata !141, metadata !90), !dbg !142
  store i64 0, i64* %26, align 8, !dbg !142
  call void @llvm.dbg.declare(metadata i64* %27, metadata !143, metadata !90), !dbg !144
  store i64 0, i64* %27, align 8, !dbg !144
  call void @llvm.dbg.declare(metadata i64* %28, metadata !145, metadata !90), !dbg !146
  store i64 0, i64* %28, align 8, !dbg !146
  call void @llvm.dbg.declare(metadata i32* %29, metadata !147, metadata !90), !dbg !148
  store i32 12, i32* %29, align 4, !dbg !148
  br label %34, !dbg !149

; <label>:34:                                     ; preds = %2, %117
  call void @llvm.dbg.declare(metadata i32* %30, metadata !150, metadata !90), !dbg !152
  store i32 0, i32* %30, align 4, !dbg !152
  %35 = load i32, i32* %4, align 4, !dbg !153
  %36 = load i8**, i8*** %5, align 8, !dbg !154
  %37 = call i32 @getopt_long(i32 %35, i8** %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0), %struct.option* getelementptr inbounds ([17 x %struct.option], [17 x %struct.option]* @main.long_options, i32 0, i32 0), i32* %30) #7, !dbg !155
  store i32 %37, i32* %6, align 4, !dbg !156
  %38 = load i32, i32* %6, align 4, !dbg !157
  %39 = icmp eq i32 %38, -1, !dbg !159
  br i1 %39, label %40, label %41, !dbg !160

; <label>:40:                                     ; preds = %34
  br label %118, !dbg !161

; <label>:41:                                     ; preds = %34
  %42 = load i32, i32* %6, align 4, !dbg !162
  switch i32 %42, label %113 [
    i32 67, label %43
    i32 65, label %52
    i32 88, label %66
    i32 99, label %70
    i32 108, label %73
    i32 105, label %77
    i32 102, label %80
    i32 115, label %81
    i32 101, label %91
    i32 86, label %95
    i32 68, label %98
    i32 112, label %99
    i32 113, label %102
    i32 118, label %105
    i32 104, label %108
    i32 72, label %112
  ], !dbg !163

; <label>:43:                                     ; preds = %41
  %44 = load i8*, i8** @optarg, align 8, !dbg !164
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0)) #8, !dbg !167
  %46 = icmp eq i32 %45, 0, !dbg !168
  br i1 %46, label %47, label %48, !dbg !169

; <label>:47:                                     ; preds = %43
  store i32 -1, i32* %8, align 4, !dbg !170
  br label %117, !dbg !172

; <label>:48:                                     ; preds = %43
  %49 = load i8*, i8** @optarg, align 8, !dbg !173
  %50 = call i64 @strtol(i8* %49, i8** null, i32 0) #7, !dbg !174
  %51 = trunc i64 %50 to i32, !dbg !174
  store i32 %51, i32* %8, align 4, !dbg !175
  br label %117, !dbg !176

; <label>:52:                                     ; preds = %41
  %53 = load i8*, i8** @optarg, align 8, !dbg !177
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)) #8, !dbg !179
  %55 = icmp eq i32 %54, 0, !dbg !180
  br i1 %55, label %56, label %57, !dbg !181

; <label>:56:                                     ; preds = %52
  store i32 0, i32* %9, align 4, !dbg !182
  br label %117, !dbg !184

; <label>:57:                                     ; preds = %52
  %58 = load i8*, i8** @optarg, align 8, !dbg !185
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0)) #8, !dbg !187
  %60 = icmp eq i32 %59, 0, !dbg !188
  br i1 %60, label %61, label %62, !dbg !189

; <label>:61:                                     ; preds = %57
  store i32 2, i32* %9, align 4, !dbg !190
  br label %117, !dbg !192

; <label>:62:                                     ; preds = %57
  %63 = load i8*, i8** @optarg, align 8, !dbg !193
  %64 = call i64 @strtol(i8* %63, i8** null, i32 0) #7, !dbg !194
  %65 = trunc i64 %64 to i32, !dbg !194
  store i32 %65, i32* %9, align 4, !dbg !195
  br label %117, !dbg !196

; <label>:66:                                     ; preds = %41
  %67 = load i8*, i8** @optarg, align 8, !dbg !197
  %68 = call i64 @strtoul(i8* %67, i8** null, i32 0) #7, !dbg !198
  %69 = trunc i64 %68 to i32, !dbg !198
  store i32 %69, i32* %23, align 4, !dbg !199
  br label %117, !dbg !200

; <label>:70:                                     ; preds = %41
  %71 = load i8*, i8** @optarg, align 8, !dbg !201
  %72 = call i64 @strtol(i8* %71, i8** null, i32 0) #7, !dbg !202
  store i64 %72, i64* %15, align 8, !dbg !203
  store i32 0, i32* %16, align 4, !dbg !204
  br label %117, !dbg !205

; <label>:73:                                     ; preds = %41
  %74 = load i8*, i8** @optarg, align 8, !dbg !206
  %75 = call i64 @strtol(i8* %74, i8** null, i32 0) #7, !dbg !207
  %76 = trunc i64 %75 to i32, !dbg !207
  store i32 %76, i32* %10, align 4, !dbg !208
  br label %117, !dbg !209

; <label>:77:                                     ; preds = %41
  %78 = load i8*, i8** @optarg, align 8, !dbg !210
  %79 = call i64 @strtol(i8* %78, i8** null, i32 0) #7, !dbg !211
  store i64 %79, i64* %17, align 8, !dbg !212
  br label %117, !dbg !213

; <label>:80:                                     ; preds = %41
  store i32 1, i32* %11, align 4, !dbg !214
  store i64 0, i64* %17, align 8, !dbg !215
  br label %117, !dbg !216

; <label>:81:                                     ; preds = %41
  %82 = load i8*, i8** @optarg, align 8, !dbg !217
  store i8* %82, i8** %20, align 8, !dbg !218
  %83 = load i8*, i8** %20, align 8, !dbg !219
  %84 = call i64 @strlen(i8* %83) #8, !dbg !221
  %85 = icmp ugt i64 %84, 64, !dbg !222
  br i1 %85, label %86, label %90, !dbg !223

; <label>:86:                                     ; preds = %81
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i32 0, i32 0), i32 64), !dbg !224
  %88 = load i8*, i8** %20, align 8, !dbg !226
  %89 = getelementptr inbounds i8, i8* %88, i64 64, !dbg !226
  store i8 0, i8* %89, align 1, !dbg !227
  br label %90, !dbg !228

; <label>:90:                                     ; preds = %86, %81
  br label %117, !dbg !229

; <label>:91:                                     ; preds = %41
  %92 = load i8*, i8** @optarg, align 8, !dbg !230
  %93 = call i64 @strtol(i8* %92, i8** null, i32 0) #7, !dbg !231
  %94 = trunc i64 %93 to i32, !dbg !231
  store i32 %94, i32* %14, align 4, !dbg !232
  br label %117, !dbg !233

; <label>:95:                                     ; preds = %41
  %96 = load i8*, i8** @version, align 8, !dbg !234
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* %96), !dbg !235
  call void @exit(i32 0) #9, !dbg !236
  unreachable, !dbg !236

; <label>:98:                                     ; preds = %41
  br label %117, !dbg !237

; <label>:99:                                     ; preds = %41
  %100 = load i32, i32* %29, align 4, !dbg !238
  %101 = or i32 %100, 32, !dbg !238
  store i32 %101, i32* %29, align 4, !dbg !238
  br label %117, !dbg !239

; <label>:102:                                    ; preds = %41
  %103 = load i32, i32* %13, align 4, !dbg !240
  %104 = add nsw i32 %103, 1, !dbg !240
  store i32 %104, i32* %13, align 4, !dbg !240
  br label %117, !dbg !241

; <label>:105:                                    ; preds = %41
  %106 = load i32, i32* @verbose_flag, align 4, !dbg !242
  %107 = add nsw i32 %106, 1, !dbg !242
  store i32 %107, i32* @verbose_flag, align 4, !dbg !242
  br label %117, !dbg !243

; <label>:108:                                    ; preds = %41
  %109 = load i8**, i8*** %5, align 8, !dbg !244
  %110 = getelementptr inbounds i8*, i8** %109, i64 0, !dbg !244
  %111 = load i8*, i8** %110, align 8, !dbg !244
  call void @usage(i8* %111), !dbg !245
  call void @exit(i32 0) #9, !dbg !246
  unreachable, !dbg !246

; <label>:112:                                    ; preds = %41
  store i8 1, i8* %12, align 1, !dbg !247
  br label %117, !dbg !248

; <label>:113:                                    ; preds = %41
  %114 = load i8**, i8*** %5, align 8, !dbg !249
  %115 = getelementptr inbounds i8*, i8** %114, i64 0, !dbg !249
  %116 = load i8*, i8** %115, align 8, !dbg !249
  call void @usage(i8* %116), !dbg !250
  call void @exit(i32 1) #9, !dbg !251
  unreachable, !dbg !251

; <label>:117:                                    ; preds = %112, %105, %102, %99, %98, %91, %90, %80, %77, %73, %70, %66, %62, %61, %56, %48, %47
  br label %34, !dbg !252, !llvm.loop !254

; <label>:118:                                    ; preds = %40
  %119 = load i32, i32* @optind, align 4, !dbg !255
  %120 = load i32, i32* %4, align 4, !dbg !257
  %121 = icmp ne i32 %119, %120, !dbg !258
  br i1 %121, label %122, label %126, !dbg !259

; <label>:122:                                    ; preds = %118
  %123 = load i8**, i8*** %5, align 8, !dbg !260
  %124 = getelementptr inbounds i8*, i8** %123, i64 0, !dbg !260
  %125 = load i8*, i8** %124, align 8, !dbg !260
  call void @usage(i8* %125), !dbg !262
  call void @exit(i32 1) #9, !dbg !263
  unreachable, !dbg !263

; <label>:126:                                    ; preds = %118
  %127 = load i32, i32* %23, align 4, !dbg !264
  %128 = load i32, i32* @verbose_flag, align 4, !dbg !265
  %129 = call i32 @switch_cpu(i32 %127, i32 %128), !dbg !266
  %130 = load i32, i32* @verbose_flag, align 4, !dbg !267
  call void @ddcb_debug(i32 %130), !dbg !268
  %131 = load i32, i32* %8, align 4, !dbg !269
  %132 = load i32, i32* %9, align 4, !dbg !270
  %133 = load i32, i32* %29, align 4, !dbg !271
  %134 = call %struct.card_dev_t* @accel_open(i32 %131, i32 %132, i32 %133, i32* %24, i64 0, i64 0), !dbg !272
  store %struct.card_dev_t* %134, %struct.card_dev_t** %19, align 8, !dbg !273
  %135 = load %struct.card_dev_t*, %struct.card_dev_t** %19, align 8, !dbg !274
  %136 = icmp eq %struct.card_dev_t* %135, null, !dbg !276
  br i1 %136, label %137, label %147, !dbg !277

; <label>:137:                                    ; preds = %126
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !278
  %139 = load i32, i32* %8, align 4, !dbg !280
  %140 = load i32, i32* %9, align 4, !dbg !281
  %141 = load i32, i32* %24, align 4, !dbg !282
  %142 = load %struct.card_dev_t*, %struct.card_dev_t** %19, align 8, !dbg !283
  %143 = load i32, i32* %24, align 4, !dbg !284
  %144 = call i8* @accel_strerror(%struct.card_dev_t* %142, i32 %143), !dbg !285
  %145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %138, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.23, i32 0, i32 0), i32 %139, i32 %140, i32 %141, i8* %144), !dbg !286
  %146 = load i32, i32* %24, align 4, !dbg !287
  store i32 %146, i32* %7, align 4, !dbg !288
  br label %278, !dbg !289

; <label>:147:                                    ; preds = %126
  %148 = load i8, i8* %12, align 1, !dbg !290
  %149 = trunc i8 %148 to i1, !dbg !290
  br i1 %149, label %150, label %153, !dbg !292

; <label>:150:                                    ; preds = %147
  %151 = load %struct.card_dev_t*, %struct.card_dev_t** %19, align 8, !dbg !293
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !295
  call void @accel_dump_hardware_version(%struct.card_dev_t* %151, %struct._IO_FILE* %152), !dbg !296
  br label %267, !dbg !297

; <label>:153:                                    ; preds = %147
  br label %154, !dbg !298, !llvm.loop !299

; <label>:154:                                    ; preds = %153
  %155 = load i32, i32* @verbose_flag, align 4, !dbg !300
  %156 = icmp ne i32 %155, 0, !dbg !300
  br i1 %156, label %157, label %163, !dbg !300

; <label>:157:                                    ; preds = %154
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !304
  %159 = load i8*, i8** %20, align 8, !dbg !306
  %160 = load i8, i8* %18, align 1, !dbg !307
  %161 = zext i8 %160 to i32, !dbg !307
  %162 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %158, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0), i8* %159, i32 %161), !dbg !308
  br label %163, !dbg !308

; <label>:163:                                    ; preds = %157, %154
  br label %164, !dbg !309

; <label>:164:                                    ; preds = %163
  %165 = load i32, i32* %10, align 4, !dbg !311
  %166 = icmp slt i32 %165, 1, !dbg !313
  br i1 %166, label %167, label %168, !dbg !314

; <label>:167:                                    ; preds = %164
  store i32 1, i32* %10, align 4, !dbg !315
  br label %168, !dbg !316

; <label>:168:                                    ; preds = %167, %164
  %169 = call void (i32)* @signal(i32 2, void (i32)* @INT_handler) #7, !dbg !317
  %170 = load %struct.card_dev_t*, %struct.card_dev_t** %19, align 8, !dbg !318
  %171 = call i64 @accel_get_queue_work_time(%struct.card_dev_t* %170), !dbg !319
  store i64 %171, i64* %27, align 8, !dbg !320
  br label %172, !dbg !321

; <label>:172:                                    ; preds = %249, %168
  %173 = load i32, i32* @stop_echoing, align 4, !dbg !322
  %174 = icmp ne i32 %173, 0, !dbg !323
  %175 = xor i1 %174, true, !dbg !323
  br i1 %175, label %176, label %250, !dbg !324

; <label>:176:                                    ; preds = %172
  call void @llvm.dbg.declare(metadata %struct.timeval* %31, metadata !325, metadata !90), !dbg !336
  call void @llvm.dbg.declare(metadata %struct.timeval* %32, metadata !337, metadata !90), !dbg !338
  %177 = load i32, i32* %16, align 4, !dbg !339
  %178 = icmp ne i32 %177, 0, !dbg !339
  br i1 %178, label %183, label %179, !dbg !341

; <label>:179:                                    ; preds = %176
  %180 = load i64, i64* %15, align 8, !dbg !342
  %181 = icmp ne i64 %180, 0, !dbg !342
  br i1 %181, label %183, label %182, !dbg !344

; <label>:182:                                    ; preds = %179
  br label %250, !dbg !345

; <label>:183:                                    ; preds = %179, %176
  %184 = call i32 @gettimeofday(%struct.timeval* %31, %struct.timezone* null) #7, !dbg !346
  %185 = load %struct.card_dev_t*, %struct.card_dev_t** %19, align 8, !dbg !347
  %186 = load i32, i32* %10, align 4, !dbg !348
  %187 = load i8, i8* %18, align 1, !dbg !349
  %188 = load i8*, i8** %20, align 8, !dbg !350
  %189 = call i32 @do_echo(%struct.card_dev_t* %185, i32 %186, i8 zeroext %187, i8* %188), !dbg !351
  store i32 %189, i32* %7, align 4, !dbg !352
  %190 = call i32 @gettimeofday(%struct.timeval* %32, %struct.timezone* null) #7, !dbg !353
  %191 = load i64, i64* %21, align 8, !dbg !354
  %192 = add i64 %191, 1, !dbg !354
  store i64 %192, i64* %21, align 8, !dbg !354
  %193 = load i32, i32* %7, align 4, !dbg !355
  %194 = icmp eq i32 %193, 0, !dbg !357
  br i1 %194, label %195, label %226, !dbg !358

; <label>:195:                                    ; preds = %183
  %196 = load i32, i32* %11, align 4, !dbg !359
  %197 = icmp ne i32 %196, 0, !dbg !359
  br i1 %197, label %223, label %198, !dbg !362

; <label>:198:                                    ; preds = %195
  %199 = load i32, i32* %13, align 4, !dbg !363
  %200 = icmp ne i32 %199, 0, !dbg !363
  br i1 %200, label %223, label %201, !dbg !365

; <label>:201:                                    ; preds = %198
  %202 = load i32, i32* %10, align 4, !dbg !366
  %203 = load i8*, i8** %20, align 8, !dbg !368
  %204 = call i64 @strlen(i8* %203) #8, !dbg !369
  %205 = trunc i64 %204 to i32, !dbg !370
  %206 = load i8, i8* %18, align 1, !dbg !371
  %207 = zext i8 %206 to i32, !dbg !371
  %208 = getelementptr inbounds %struct.timeval, %struct.timeval* %32, i32 0, i32 0, !dbg !372
  %209 = load i64, i64* %208, align 8, !dbg !372
  %210 = mul nsw i64 %209, 1000000, !dbg !373
  %211 = getelementptr inbounds %struct.timeval, %struct.timeval* %32, i32 0, i32 1, !dbg !374
  %212 = load i64, i64* %211, align 8, !dbg !374
  %213 = add nsw i64 %210, %212, !dbg !375
  %214 = getelementptr inbounds %struct.timeval, %struct.timeval* %31, i32 0, i32 0, !dbg !376
  %215 = load i64, i64* %214, align 8, !dbg !376
  %216 = mul nsw i64 %215, 1000000, !dbg !377
  %217 = getelementptr inbounds %struct.timeval, %struct.timeval* %31, i32 0, i32 1, !dbg !378
  %218 = load i64, i64* %217, align 8, !dbg !378
  %219 = add nsw i64 %216, %218, !dbg !379
  %220 = sub nsw i64 %213, %219, !dbg !380
  %221 = sitofp i64 %220 to double, !dbg !381
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.25, i32 0, i32 0), i32 %202, i32 %205, i32 %207, double %221), !dbg !382
  br label %223, !dbg !383

; <label>:223:                                    ; preds = %201, %198, %195
  %224 = load i64, i64* %22, align 8, !dbg !384
  %225 = add i64 %224, 1, !dbg !384
  store i64 %225, i64* %22, align 8, !dbg !384
  br label %226, !dbg !385

; <label>:226:                                    ; preds = %223, %183
  %227 = load i64, i64* %15, align 8, !dbg !386
  %228 = add i64 %227, -1, !dbg !386
  store i64 %228, i64* %15, align 8, !dbg !386
  %229 = load i32, i32* %16, align 4, !dbg !387
  %230 = icmp ne i32 %229, 0, !dbg !387
  br i1 %230, label %235, label %231, !dbg !389

; <label>:231:                                    ; preds = %226
  %232 = load i64, i64* %15, align 8, !dbg !390
  %233 = icmp ne i64 %232, 0, !dbg !390
  br i1 %233, label %235, label %234, !dbg !392

; <label>:234:                                    ; preds = %231
  br label %250, !dbg !393

; <label>:235:                                    ; preds = %231, %226
  %236 = load i64, i64* %17, align 8, !dbg !394
  %237 = icmp ne i64 %236, 0, !dbg !394
  br i1 %237, label %238, label %242, !dbg !396

; <label>:238:                                    ; preds = %235
  %239 = load i64, i64* %17, align 8, !dbg !397
  %240 = trunc i64 %239 to i32, !dbg !397
  %241 = call i32 @usleep(i32 %240), !dbg !398
  br label %242, !dbg !398

; <label>:242:                                    ; preds = %238, %235
  %243 = load i32, i32* %14, align 4, !dbg !399
  %244 = icmp ne i32 %243, 0, !dbg !399
  br i1 %244, label %245, label %249, !dbg !401

; <label>:245:                                    ; preds = %242
  %246 = load i32, i32* %7, align 4, !dbg !402
  %247 = icmp ne i32 %246, 0, !dbg !404
  br i1 %247, label %248, label %249, !dbg !405

; <label>:248:                                    ; preds = %245
  br label %250, !dbg !406

; <label>:249:                                    ; preds = %245, %242
  br label %172, !dbg !407, !llvm.loop !409

; <label>:250:                                    ; preds = %248, %234, %182, %172
  %251 = load %struct.card_dev_t*, %struct.card_dev_t** %19, align 8, !dbg !410
  %252 = call i64 @accel_get_queue_work_time(%struct.card_dev_t* %251), !dbg !411
  store i64 %252, i64* %28, align 8, !dbg !412
  %253 = load %struct.card_dev_t*, %struct.card_dev_t** %19, align 8, !dbg !413
  %254 = call i64 @accel_get_frequency(%struct.card_dev_t* %253), !dbg !414
  store i64 %254, i64* %25, align 8, !dbg !415
  %255 = load i64, i64* %25, align 8, !dbg !416
  %256 = icmp ne i64 %255, 0, !dbg !416
  br i1 %256, label %257, label %264, !dbg !416

; <label>:257:                                    ; preds = %250
  %258 = load i64, i64* %28, align 8, !dbg !417
  %259 = load i64, i64* %27, align 8, !dbg !418
  %260 = sub i64 %258, %259, !dbg !419
  %261 = load i64, i64* %25, align 8, !dbg !420
  %262 = udiv i64 %261, 1000000, !dbg !421
  %263 = udiv i64 %260, %262, !dbg !422
  br label %265, !dbg !423

; <label>:264:                                    ; preds = %250
  br label %265, !dbg !424

; <label>:265:                                    ; preds = %264, %257
  %266 = phi i64 [ %263, %257 ], [ 0, %264 ], !dbg !425
  store i64 %266, i64* %26, align 8, !dbg !427
  br label %267, !dbg !428

; <label>:267:                                    ; preds = %265, %150
  %268 = load %struct.card_dev_t*, %struct.card_dev_t** %19, align 8, !dbg !429
  %269 = call i32 @accel_close(%struct.card_dev_t* %268), !dbg !430
  %270 = load i32, i32* %11, align 4, !dbg !431
  %271 = icmp ne i32 %270, 0, !dbg !431
  br i1 %271, label %277, label %272, !dbg !433

; <label>:272:                                    ; preds = %267
  %273 = load i32, i32* %13, align 4, !dbg !434
  %274 = icmp ne i32 %273, 0, !dbg !434
  br i1 %274, label %277, label %275, !dbg !436

; <label>:275:                                    ; preds = %272
  %276 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)), !dbg !437
  br label %277, !dbg !437

; <label>:277:                                    ; preds = %275, %272, %267
  br label %278, !dbg !438

; <label>:278:                                    ; preds = %277, %137
  %279 = load i32, i32* %13, align 4, !dbg !440
  %280 = icmp ne i32 %279, 0, !dbg !440
  br i1 %280, label %303, label %281, !dbg !442

; <label>:281:                                    ; preds = %278
  %282 = load i8, i8* %18, align 1, !dbg !443
  %283 = zext i8 %282 to i32, !dbg !443
  %284 = load i64, i64* %21, align 8, !dbg !445
  %285 = load i64, i64* %22, align 8, !dbg !446
  %286 = load i64, i64* %21, align 8, !dbg !447
  %287 = load i64, i64* %22, align 8, !dbg !448
  %288 = sub i64 %286, %287, !dbg !449
  %289 = load i64, i64* %21, align 8, !dbg !450
  %290 = icmp ne i64 %289, 0, !dbg !450
  br i1 %290, label %292, label %291, !dbg !451

; <label>:291:                                    ; preds = %281
  br label %299, !dbg !452

; <label>:292:                                    ; preds = %281
  %293 = load i64, i64* %21, align 8, !dbg !454
  %294 = load i64, i64* %22, align 8, !dbg !455
  %295 = sub i64 %293, %294, !dbg !456
  %296 = mul i64 100, %295, !dbg !457
  %297 = load i64, i64* %21, align 8, !dbg !458
  %298 = udiv i64 %296, %297, !dbg !459
  br label %299, !dbg !460

; <label>:299:                                    ; preds = %292, %291
  %300 = phi i64 [ 100, %291 ], [ %298, %292 ], !dbg !462
  %301 = load i64, i64* %26, align 8, !dbg !464
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.27, i32 0, i32 0), i32 %283, i64 %284, i64 %285, i64 %288, i64 %300, i64 %301), !dbg !465
  br label %303, !dbg !466

; <label>:303:                                    ; preds = %299, %278
  %304 = load i32, i32* %7, align 4, !dbg !467
  %305 = icmp ne i32 %304, 0, !dbg !469
  br i1 %305, label %306, label %307, !dbg !470

; <label>:306:                                    ; preds = %303
  call void @exit(i32 1) #9, !dbg !471
  unreachable, !dbg !471

; <label>:307:                                    ; preds = %303
  call void @exit(i32 0) #9, !dbg !472
  unreachable, !dbg !472
                                                  ; No predecessors!
  %309 = load i32, i32* %3, align 4, !dbg !473
  ret i32 %309, !dbg !473
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @printf(i8*, ...) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind uwtable
define internal void @usage(i8*) #0 !dbg !474 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !477, metadata !90), !dbg !478
  %3 = load i8*, i8** %2, align 8, !dbg !479
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([803 x i8], [803 x i8]* @.str.29, i32 0, i32 0), i8* %3), !dbg !480
  ret void, !dbg !481
}

declare i32 @switch_cpu(i32, i32) #4

declare void @ddcb_debug(i32) #4

declare %struct.card_dev_t* @accel_open(i32, i32, i32, i32*, i64, i64) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

declare i8* @accel_strerror(%struct.card_dev_t*, i32) #4

declare void @accel_dump_hardware_version(%struct.card_dev_t*, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #2

; Function Attrs: nounwind uwtable
define internal void @INT_handler(i32) #0 !dbg !482 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !483, metadata !90), !dbg !484
  %3 = load i32, i32* %2, align 4, !dbg !485
  %4 = call void (i32)* @signal(i32 %3, void (i32)* inttoptr (i64 1 to void (i32)*)) #7, !dbg !486
  store i32 1, i32* @stop_echoing, align 4, !dbg !487
  ret void, !dbg !488
}

declare i64 @accel_get_queue_work_time(%struct.card_dev_t*) #4

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

; Function Attrs: nounwind uwtable
define internal i32 @do_echo(%struct.card_dev_t*, i32, i8 zeroext, i8*) #0 !dbg !489 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.card_dev_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ddcb_cmd*, align 8
  %15 = alloca %struct.ddcb_cmd*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %6, metadata !492, metadata !90), !dbg !493
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !494, metadata !90), !dbg !495
  store i8 %2, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !496, metadata !90), !dbg !497
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !498, metadata !90), !dbg !499
  call void @llvm.dbg.declare(metadata i32* %10, metadata !500, metadata !90), !dbg !501
  call void @llvm.dbg.declare(metadata i32* %11, metadata !502, metadata !90), !dbg !503
  call void @llvm.dbg.declare(metadata i32* %12, metadata !504, metadata !90), !dbg !505
  call void @llvm.dbg.declare(metadata i32* %13, metadata !506, metadata !90), !dbg !507
  call void @llvm.dbg.declare(metadata %struct.ddcb_cmd** %14, metadata !508, metadata !90), !dbg !509
  call void @llvm.dbg.declare(metadata %struct.ddcb_cmd** %15, metadata !510, metadata !90), !dbg !511
  %16 = load i32, i32* %7, align 4, !dbg !512
  %17 = sext i32 %16 to i64, !dbg !512
  %18 = mul i64 %17, 232, !dbg !513
  %19 = call noalias i8* @malloc(i64 %18) #7, !dbg !514
  %20 = bitcast i8* %19 to %struct.ddcb_cmd*, !dbg !515
  store %struct.ddcb_cmd* %20, %struct.ddcb_cmd** %14, align 8, !dbg !516
  %21 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %14, align 8, !dbg !517
  %22 = icmp eq %struct.ddcb_cmd* %21, null, !dbg !519
  br i1 %22, label %23, label %26, !dbg !520

; <label>:23:                                     ; preds = %4
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !521
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i32 0, i32 0)), !dbg !523
  store i32 -12, i32* %5, align 4, !dbg !524
  br label %175, !dbg !524

; <label>:26:                                     ; preds = %4
  %27 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %14, align 8, !dbg !525
  %28 = bitcast %struct.ddcb_cmd* %27 to i8*, !dbg !526
  %29 = load i32, i32* %7, align 4, !dbg !527
  %30 = sext i32 %29 to i64, !dbg !527
  %31 = mul i64 %30, 232, !dbg !528
  call void @llvm.memset.p0i8.i64(i8* %28, i8 0, i64 %31, i32 8, i1 false), !dbg !526
  %32 = load i8*, i8** %9, align 8, !dbg !529
  %33 = load i8, i8* %8, align 1, !dbg !530
  %34 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %14, align 8, !dbg !531
  %35 = load i32, i32* %7, align 4, !dbg !532
  call void @preset_echo_cmd(i8* %32, i8 zeroext %33, %struct.ddcb_cmd* %34, i32 %35), !dbg !533
  %36 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %14, align 8, !dbg !534
  store %struct.ddcb_cmd* %36, %struct.ddcb_cmd** %15, align 8, !dbg !535
  %37 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !536
  %38 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %15, align 8, !dbg !537
  %39 = call i32 @accel_ddcb_execute(%struct.card_dev_t* %37, %struct.ddcb_cmd* %38, i32* null, i32* %12), !dbg !538
  store i32 %39, i32* %10, align 4, !dbg !539
  %40 = load i32, i32* %10, align 4, !dbg !540
  %41 = icmp ne i32 %40, 0, !dbg !542
  br i1 %41, label %42, label %67, !dbg !543

; <label>:42:                                     ; preds = %26
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !544
  %44 = load i32, i32* %10, align 4, !dbg !546
  %45 = call i8* @ddcb_strerror(i32 %44), !dbg !547
  %46 = load i32, i32* %10, align 4, !dbg !548
  %47 = load i32, i32* %12, align 4, !dbg !549
  %48 = load i32, i32* %12, align 4, !dbg !550
  %49 = call i8* @strerror(i32 %48) #7, !dbg !551
  %50 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %15, align 8, !dbg !553
  %51 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %50, i32 0, i32 7, !dbg !554
  %52 = load i16, i16* %51, align 2, !dbg !554
  %53 = zext i16 %52 to i32, !dbg !553
  %54 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %15, align 8, !dbg !555
  %55 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %54, i32 0, i32 7, !dbg !556
  %56 = load i16, i16* %55, align 2, !dbg !556
  %57 = zext i16 %56 to i32, !dbg !555
  %58 = call i8* @ddcb_retc_strerror(i32 %57), !dbg !557
  %59 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %15, align 8, !dbg !558
  %60 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %59, i32 0, i32 8, !dbg !559
  %61 = load i16, i16* %60, align 8, !dbg !559
  %62 = zext i16 %61 to i32, !dbg !558
  %63 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %15, align 8, !dbg !560
  %64 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %63, i32 0, i32 10, !dbg !561
  %65 = load i32, i32* %64, align 4, !dbg !561
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.31, i32 0, i32 0), i8* %45, i32 %46, i32 %47, i8* %49, i32 %53, i8* %58, i32 %62, i32 %65), !dbg !562
  br label %171, !dbg !563

; <label>:67:                                     ; preds = %26
  %68 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %14, align 8, !dbg !564
  store %struct.ddcb_cmd* %68, %struct.ddcb_cmd** %15, align 8, !dbg !565
  store i32 0, i32* %10, align 4, !dbg !566
  store i32 0, i32* %11, align 4, !dbg !567
  br label %69, !dbg !569

; <label>:69:                                     ; preds = %167, %67
  %70 = load i32, i32* %11, align 4, !dbg !570
  %71 = load i32, i32* %7, align 4, !dbg !573
  %72 = icmp slt i32 %70, %71, !dbg !574
  br i1 %72, label %73, label %170, !dbg !575

; <label>:73:                                     ; preds = %69
  %74 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %15, align 8, !dbg !576
  %75 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %74, i32 0, i32 15, !dbg !579
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %75, i32 0, i32 0, !dbg !576
  %77 = load i8*, i8** %9, align 8, !dbg !580
  %78 = load i8*, i8** %9, align 8, !dbg !581
  %79 = call i64 @strlen(i8* %78) #8, !dbg !582
  %80 = call i32 @strncmp(i8* %76, i8* %77, i64 %79) #8, !dbg !583
  %81 = icmp ne i32 %80, 0, !dbg !584
  br i1 %81, label %82, label %146, !dbg !585

; <label>:82:                                     ; preds = %73
  %83 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %15, align 8, !dbg !586
  %84 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %83, i32 0, i32 7, !dbg !588
  %85 = load i16, i16* %84, align 2, !dbg !588
  %86 = zext i16 %85 to i32, !dbg !586
  %87 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %15, align 8, !dbg !589
  %88 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %87, i32 0, i32 7, !dbg !590
  %89 = load i16, i16* %88, align 2, !dbg !590
  %90 = zext i16 %89 to i32, !dbg !589
  %91 = call i8* @ddcb_retc_strerror(i32 %90), !dbg !591
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.32, i32 0, i32 0), i32 %86, i8* %91), !dbg !592
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0)), !dbg !593
  store i32 0, i32* %13, align 4, !dbg !594
  br label %94, !dbg !596

; <label>:94:                                     ; preds = %114, %82
  %95 = load i32, i32* %13, align 4, !dbg !597
  %96 = zext i32 %95 to i64, !dbg !597
  %97 = load i8*, i8** %9, align 8, !dbg !600
  %98 = call i64 @strlen(i8* %97) #8, !dbg !601
  %99 = icmp ult i64 %96, %98, !dbg !602
  br i1 %99, label %100, label %117, !dbg !603

; <label>:100:                                    ; preds = %94
  %101 = load i32, i32* %13, align 4, !dbg !604
  %102 = zext i32 %101 to i64, !dbg !606
  %103 = load i8*, i8** %9, align 8, !dbg !606
  %104 = getelementptr inbounds i8, i8* %103, i64 %102, !dbg !606
  %105 = load i8, i8* %104, align 1, !dbg !606
  %106 = sext i8 %105 to i32, !dbg !606
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %106), !dbg !607
  %108 = load i32, i32* %13, align 4, !dbg !608
  %109 = and i32 %108, 15, !dbg !610
  %110 = icmp eq i32 %109, 15, !dbg !611
  br i1 %110, label %111, label %113, !dbg !612

; <label>:111:                                    ; preds = %100
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0)), !dbg !613
  br label %113, !dbg !613

; <label>:113:                                    ; preds = %111, %100
  br label %114, !dbg !614

; <label>:114:                                    ; preds = %113
  %115 = load i32, i32* %13, align 4, !dbg !615
  %116 = add i32 %115, 1, !dbg !615
  store i32 %116, i32* %13, align 4, !dbg !615
  br label %94, !dbg !617, !llvm.loop !618

; <label>:117:                                    ; preds = %94
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0)), !dbg !620
  store i32 0, i32* %13, align 4, !dbg !621
  br label %119, !dbg !623

; <label>:119:                                    ; preds = %141, %117
  %120 = load i32, i32* %13, align 4, !dbg !624
  %121 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %15, align 8, !dbg !627
  %122 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %121, i32 0, i32 5, !dbg !628
  %123 = load i8, i8* %122, align 1, !dbg !628
  %124 = zext i8 %123 to i32, !dbg !627
  %125 = icmp ult i32 %120, %124, !dbg !629
  br i1 %125, label %126, label %144, !dbg !630

; <label>:126:                                    ; preds = %119
  %127 = load i32, i32* %13, align 4, !dbg !631
  %128 = zext i32 %127 to i64, !dbg !633
  %129 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %15, align 8, !dbg !633
  %130 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %129, i32 0, i32 15, !dbg !634
  %131 = getelementptr inbounds [64 x i8], [64 x i8]* %130, i64 0, i64 %128, !dbg !633
  %132 = load i8, i8* %131, align 1, !dbg !633
  %133 = zext i8 %132 to i32, !dbg !633
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %133), !dbg !635
  %135 = load i32, i32* %13, align 4, !dbg !636
  %136 = and i32 %135, 15, !dbg !638
  %137 = icmp eq i32 %136, 15, !dbg !639
  br i1 %137, label %138, label %140, !dbg !640

; <label>:138:                                    ; preds = %126
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0)), !dbg !641
  br label %140, !dbg !641

; <label>:140:                                    ; preds = %138, %126
  br label %141, !dbg !642

; <label>:141:                                    ; preds = %140
  %142 = load i32, i32* %13, align 4, !dbg !643
  %143 = add i32 %142, 1, !dbg !643
  store i32 %143, i32* %13, align 4, !dbg !643
  br label %119, !dbg !645, !llvm.loop !646

; <label>:144:                                    ; preds = %119
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)), !dbg !648
  store i32 81, i32* %10, align 4, !dbg !649
  br label %170, !dbg !650

; <label>:146:                                    ; preds = %73
  br label %147, !dbg !651, !llvm.loop !653

; <label>:147:                                    ; preds = %146
  %148 = load i32, i32* @verbose_flag, align 4, !dbg !654
  %149 = icmp ne i32 %148, 0, !dbg !654
  br i1 %149, label %150, label %162, !dbg !654

; <label>:150:                                    ; preds = %147
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !658
  %152 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %15, align 8, !dbg !660
  %153 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %152, i32 0, i32 7, !dbg !661
  %154 = load i16, i16* %153, align 2, !dbg !661
  %155 = zext i16 %154 to i32, !dbg !660
  %156 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %15, align 8, !dbg !662
  %157 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %156, i32 0, i32 7, !dbg !663
  %158 = load i16, i16* %157, align 2, !dbg !663
  %159 = zext i16 %158 to i32, !dbg !662
  %160 = call i8* @ddcb_retc_strerror(i32 %159), !dbg !664
  %161 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %151, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i32 0, i32 0), i32 %155, i8* %160), !dbg !665
  br label %162, !dbg !667

; <label>:162:                                    ; preds = %150, %147
  br label %163, !dbg !668

; <label>:163:                                    ; preds = %162
  br label %164

; <label>:164:                                    ; preds = %163
  %165 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %15, align 8, !dbg !670
  %166 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %165, i32 1, !dbg !670
  store %struct.ddcb_cmd* %166, %struct.ddcb_cmd** %15, align 8, !dbg !670
  br label %167, !dbg !671

; <label>:167:                                    ; preds = %164
  %168 = load i32, i32* %11, align 4, !dbg !672
  %169 = add nsw i32 %168, 1, !dbg !672
  store i32 %169, i32* %11, align 4, !dbg !672
  br label %69, !dbg !674, !llvm.loop !675

; <label>:170:                                    ; preds = %144, %69
  br label %171, !dbg !677

; <label>:171:                                    ; preds = %170, %42
  %172 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %14, align 8, !dbg !679
  %173 = bitcast %struct.ddcb_cmd* %172 to i8*, !dbg !679
  call void @free(i8* %173) #7, !dbg !680
  %174 = load i32, i32* %10, align 4, !dbg !681
  store i32 %174, i32* %5, align 4, !dbg !682
  br label %175, !dbg !682

; <label>:175:                                    ; preds = %171, %23
  %176 = load i32, i32* %5, align 4, !dbg !683
  ret i32 %176, !dbg !683
}

declare i32 @usleep(i32) #4

declare i64 @accel_get_frequency(%struct.card_dev_t*) #4

declare i32 @accel_close(%struct.card_dev_t*) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define internal void @preset_echo_cmd(i8*, i8 zeroext, %struct.ddcb_cmd*, i32) #0 !dbg !684 {
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.ddcb_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !687, metadata !90), !dbg !688
  store i8 %1, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !689, metadata !90), !dbg !690
  store %struct.ddcb_cmd* %2, %struct.ddcb_cmd** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.ddcb_cmd** %7, metadata !691, metadata !90), !dbg !692
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !693, metadata !90), !dbg !694
  call void @llvm.dbg.declare(metadata i32* %9, metadata !695, metadata !90), !dbg !696
  call void @llvm.dbg.declare(metadata i32* %10, metadata !697, metadata !90), !dbg !698
  call void @llvm.dbg.declare(metadata i32* %11, metadata !699, metadata !90), !dbg !700
  %12 = load i8*, i8** %5, align 8, !dbg !701
  %13 = call i64 @strlen(i8* %12) #8, !dbg !702
  %14 = trunc i64 %13 to i32, !dbg !703
  store i32 %14, i32* %11, align 4, !dbg !704
  %15 = load i32, i32* %11, align 4, !dbg !705
  %16 = add nsw i32 %15, 7, !dbg !706
  %17 = sdiv i32 %16, 8, !dbg !707
  %18 = mul nsw i32 %17, 8, !dbg !708
  store i32 %18, i32* %11, align 4, !dbg !709
  %19 = load i32, i32* %11, align 4, !dbg !710
  %20 = icmp sgt i32 %19, 64, !dbg !712
  br i1 %20, label %21, label %33, !dbg !713

; <label>:21:                                     ; preds = %4
  br label %22, !dbg !714, !llvm.loop !716

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* @verbose_flag, align 4, !dbg !717
  %24 = icmp ne i32 %23, 0, !dbg !717
  br i1 %24, label %25, label %31, !dbg !717

; <label>:25:                                     ; preds = %22
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !721
  %27 = load i8*, i8** %5, align 8, !dbg !723
  %28 = call i64 @strlen(i8* %27) #8, !dbg !724
  %29 = trunc i64 %28 to i32, !dbg !725
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i32 0, i32 0), i32 %29), !dbg !726
  br label %31, !dbg !728

; <label>:31:                                     ; preds = %25, %22
  br label %32, !dbg !729

; <label>:32:                                     ; preds = %31
  store i32 64, i32* %11, align 4, !dbg !731
  br label %33, !dbg !732

; <label>:33:                                     ; preds = %32, %4
  store i32 0, i32* %9, align 4, !dbg !733
  br label %34, !dbg !735

; <label>:34:                                     ; preds = %96, %33
  %35 = load i32, i32* %9, align 4, !dbg !736
  %36 = load i32, i32* %8, align 4, !dbg !739
  %37 = icmp slt i32 %35, %36, !dbg !740
  br i1 %37, label %38, label %99, !dbg !741

; <label>:38:                                     ; preds = %34
  %39 = load i8, i8* %6, align 1, !dbg !742
  %40 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %7, align 8, !dbg !744
  %41 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %40, i32 0, i32 2, !dbg !745
  store i8 %39, i8* %41, align 8, !dbg !746
  %42 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %7, align 8, !dbg !747
  %43 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %42, i32 0, i32 14, !dbg !748
  store i64 0, i64* %43, align 8, !dbg !749
  %44 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %7, align 8, !dbg !750
  %45 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %44, i32 0, i32 3, !dbg !751
  store i8 0, i8* %45, align 1, !dbg !752
  %46 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %7, align 8, !dbg !753
  %47 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %46, i32 0, i32 6, !dbg !754
  store i16 32, i16* %47, align 4, !dbg !755
  %48 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %7, align 8, !dbg !756
  %49 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %48, i32 0, i32 16, !dbg !757
  %50 = bitcast %union.anon* %49 to %struct.anon*, !dbg !757
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 0, !dbg !757
  store i64 0, i64* %51, align 8, !dbg !758
  %52 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %7, align 8, !dbg !759
  %53 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %52, i32 0, i32 16, !dbg !760
  %54 = bitcast %union.anon* %53 to %struct.anon*, !dbg !760
  %55 = getelementptr inbounds %struct.anon, %struct.anon* %54, i32 0, i32 1, !dbg !760
  %56 = getelementptr inbounds [96 x i8], [96 x i8]* %55, i32 0, i32 0, !dbg !759
  %57 = load i8*, i8** %5, align 8, !dbg !761
  %58 = load i32, i32* %11, align 4, !dbg !762
  %59 = sext i32 %58 to i64, !dbg !762
  %60 = call i8* @strncpy(i8* %56, i8* %57, i64 %59) #7, !dbg !763
  %61 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %7, align 8, !dbg !764
  %62 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %61, i32 0, i32 4, !dbg !765
  store i8 64, i8* %62, align 2, !dbg !766
  store i32 0, i32* %10, align 4, !dbg !767
  br label %63, !dbg !769

; <label>:63:                                     ; preds = %72, %38
  %64 = load i32, i32* %10, align 4, !dbg !770
  %65 = icmp slt i32 %64, 64, !dbg !773
  br i1 %65, label %66, label %75, !dbg !774

; <label>:66:                                     ; preds = %63
  %67 = load i32, i32* %10, align 4, !dbg !775
  %68 = sext i32 %67 to i64, !dbg !776
  %69 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %7, align 8, !dbg !776
  %70 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %69, i32 0, i32 15, !dbg !777
  %71 = getelementptr inbounds [64 x i8], [64 x i8]* %70, i64 0, i64 %68, !dbg !776
  store i8 0, i8* %71, align 1, !dbg !778
  br label %72, !dbg !776

; <label>:72:                                     ; preds = %66
  %73 = load i32, i32* %10, align 4, !dbg !779
  %74 = add nsw i32 %73, 1, !dbg !779
  store i32 %74, i32* %10, align 4, !dbg !779
  br label %63, !dbg !781, !llvm.loop !782

; <label>:75:                                     ; preds = %63
  %76 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %7, align 8, !dbg !784
  %77 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %76, i32 0, i32 5, !dbg !785
  store i8 64, i8* %77, align 1, !dbg !786
  %78 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %7, align 8, !dbg !787
  %79 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %78, i32 0, i32 7, !dbg !788
  store i16 0, i16* %79, align 2, !dbg !789
  %80 = load i32, i32* %9, align 4, !dbg !790
  %81 = load i32, i32* %8, align 4, !dbg !792
  %82 = sub nsw i32 %81, 1, !dbg !793
  %83 = icmp slt i32 %80, %82, !dbg !794
  br i1 %83, label %84, label %90, !dbg !795

; <label>:84:                                     ; preds = %75
  %85 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %7, align 8, !dbg !796
  %86 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %85, i64 1, !dbg !797
  %87 = ptrtoint %struct.ddcb_cmd* %86 to i64, !dbg !798
  %88 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %7, align 8, !dbg !799
  %89 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %88, i32 0, i32 0, !dbg !800
  store i64 %87, i64* %89, align 8, !dbg !801
  br label %93, !dbg !799

; <label>:90:                                     ; preds = %75
  %91 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %7, align 8, !dbg !802
  %92 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %91, i32 0, i32 0, !dbg !803
  store i64 0, i64* %92, align 8, !dbg !804
  br label %93

; <label>:93:                                     ; preds = %90, %84
  %94 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %7, align 8, !dbg !805
  %95 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %94, i32 1, !dbg !805
  store %struct.ddcb_cmd* %95, %struct.ddcb_cmd** %7, align 8, !dbg !805
  br label %96, !dbg !806

; <label>:96:                                     ; preds = %93
  %97 = load i32, i32* %9, align 4, !dbg !807
  %98 = add nsw i32 %97, 1, !dbg !807
  store i32 %98, i32* %9, align 4, !dbg !807
  br label %34, !dbg !809, !llvm.loop !810

; <label>:99:                                     ; preds = %34
  br label %100, !dbg !812, !llvm.loop !813

; <label>:100:                                    ; preds = %99
  %101 = load i32, i32* @verbose_flag, align 4, !dbg !814
  %102 = icmp ne i32 %101, 0, !dbg !814
  br i1 %102, label %103, label %108, !dbg !814

; <label>:103:                                    ; preds = %100
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !818
  %105 = load i32, i32* %8, align 4, !dbg !820
  %106 = load i32, i32* %11, align 4, !dbg !821
  %107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i32 0, i32 0), i32 %105, i32 %106), !dbg !822
  br label %108, !dbg !822

; <label>:108:                                    ; preds = %103, %100
  br label %109, !dbg !823

; <label>:109:                                    ; preds = %108
  ret void, !dbg !825
}

declare i32 @accel_ddcb_execute(%struct.card_dev_t*, %struct.ddcb_cmd*, i32*, i32*) #4

declare i8* @ddcb_strerror(i32) #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

declare i8* @ddcb_retc_strerror(i32) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!86, !87}
!llvm.ident = !{!88}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !63)
!1 = !DIFile(filename: "/home/lichi/Desktop/genwqe/[task]tools--genwqe_echo/[inter]tools--genwqe_echo.o.i", directory: "/home/lichi/Desktop")
!2 = !{}
!3 = !{!4, !6, !7, !8, !9, !10, !15, !38, !62}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !11, line: 85, baseType: !12)
!11 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop")
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !8}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ddcb_cmd", file: !17, line: 154, size: 1856, align: 64, elements: !18)
!17 = !DIFile(filename: "../include/libddcb.h", directory: "/home/lichi/Desktop")
!18 = !{!19, !23, !24, !27, !28, !29, !30, !33, !34, !35, !36, !39, !40, !41, !42, !43, !47}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "next_addr", scope: !16, file: !17, line: 155, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !21, line: 30, baseType: !22)
!21 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop")
!22 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !16, file: !17, line: 156, baseType: !20, size: 64, align: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "acfunc", scope: !16, file: !17, line: 158, baseType: !25, size: 8, align: 8, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !21, line: 20, baseType: !26)
!26 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !16, file: !17, line: 159, baseType: !25, size: 8, align: 8, offset: 136)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "asiv_length", scope: !16, file: !17, line: 160, baseType: !25, size: 8, align: 8, offset: 144)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "asv_length", scope: !16, file: !17, line: 161, baseType: !25, size: 8, align: 8, offset: 152)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cmdopts", scope: !16, file: !17, line: 162, baseType: !31, size: 16, align: 16, offset: 160)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !21, line: 23, baseType: !32)
!32 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "retc", scope: !16, file: !17, line: 163, baseType: !31, size: 16, align: 16, offset: 176)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "attn", scope: !16, file: !17, line: 165, baseType: !31, size: 16, align: 16, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "vcrc", scope: !16, file: !17, line: 166, baseType: !31, size: 16, align: 16, offset: 208)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !16, file: !17, line: 167, baseType: !37, size: 32, align: 32, offset: 224)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !21, line: 26, baseType: !38)
!38 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "deque_ts", scope: !16, file: !17, line: 169, baseType: !20, size: 64, align: 64, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "cmplt_ts", scope: !16, file: !17, line: 170, baseType: !20, size: 64, align: 64, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "disp_ts", scope: !16, file: !17, line: 171, baseType: !20, size: 64, align: 64, offset: 384)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "ddata_addr", scope: !16, file: !17, line: 173, baseType: !20, size: 64, align: 64, offset: 448)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "asv", scope: !16, file: !17, line: 175, baseType: !44, size: 512, align: 8, offset: 512)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 512, align: 8, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, scope: !16, file: !17, line: 177, baseType: !48, size: 832, align: 64, offset: 1024)
!48 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !16, file: !17, line: 177, size: 832, align: 64, elements: !49)
!49 = !{!50, !58}
!50 = !DIDerivedType(tag: DW_TAG_member, scope: !48, file: !17, line: 179, baseType: !51, size: 832, align: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !48, file: !17, line: 179, size: 832, align: 64, elements: !52)
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "ats", scope: !51, file: !17, line: 180, baseType: !20, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "asiv", scope: !51, file: !17, line: 181, baseType: !55, size: 768, align: 8, offset: 64)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 768, align: 8, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 96)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "__asiv", scope: !48, file: !17, line: 184, baseType: !59, size: 832, align: 8)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 832, align: 8, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 104)
!62 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!63 = !{!64, !66, !69, !84, !85}
!64 = distinct !DIGlobalVariable(name: "verbose_flag", scope: !0, file: !65, line: 45, type: !8, isLocal: false, isDefinition: true, variable: i32* @verbose_flag)
!65 = !DIFile(filename: "genwqe_echo.c", directory: "/home/lichi/Desktop")
!66 = distinct !DIGlobalVariable(name: "tstring_default", scope: !0, file: !65, line: 48, type: !67, isLocal: false, isDefinition: true, variable: i8** @tstring_default)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!69 = distinct !DIGlobalVariable(name: "long_options", scope: !70, file: !65, line: 249, type: !73, isLocal: true, isDefinition: true, variable: [17 x %struct.option]* @main.long_options)
!70 = distinct !DISubprogram(name: "main", scope: !65, file: !65, line: 225, type: !71, isLocal: false, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!71 = !DISubroutineType(types: !72)
!72 = !{!8, !8, !6}
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 4352, align: 64, elements: !82)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !75, line: 104, size: 256, align: 64, elements: !76)
!75 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/lichi/Desktop")
!76 = !{!77, !78, !79, !81}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !74, file: !75, line: 106, baseType: !67, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !74, file: !75, line: 109, baseType: !8, size: 32, align: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !74, file: !75, line: 110, baseType: !80, size: 64, align: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !74, file: !75, line: 111, baseType: !8, size: 32, align: 32, offset: 192)
!82 = !{!83}
!83 = !DISubrange(count: 17)
!84 = distinct !DIGlobalVariable(name: "version", scope: !0, file: !65, line: 47, type: !67, isLocal: true, isDefinition: true, variable: i8** @version)
!85 = distinct !DIGlobalVariable(name: "stop_echoing", scope: !0, file: !65, line: 86, type: !8, isLocal: true, isDefinition: true, variable: i32* @stop_echoing)
!86 = !{i32 2, !"Dwarf Version", i32 4}
!87 = !{i32 2, !"Debug Info Version", i32 3}
!88 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!89 = !DILocalVariable(name: "argc", arg: 1, scope: !70, file: !65, line: 225, type: !8)
!90 = !DIExpression()
!91 = !DILocation(line: 225, column: 14, scope: !70)
!92 = !DILocalVariable(name: "argv", arg: 2, scope: !70, file: !65, line: 225, type: !6)
!93 = !DILocation(line: 225, column: 26, scope: !70)
!94 = !DILocalVariable(name: "ch", scope: !70, file: !65, line: 227, type: !8)
!95 = !DILocation(line: 227, column: 6, scope: !70)
!96 = !DILocalVariable(name: "rc", scope: !70, file: !65, line: 227, type: !8)
!97 = !DILocation(line: 227, column: 10, scope: !70)
!98 = !DILocalVariable(name: "card_no", scope: !70, file: !65, line: 228, type: !8)
!99 = !DILocation(line: 228, column: 6, scope: !70)
!100 = !DILocalVariable(name: "card_type", scope: !70, file: !65, line: 229, type: !8)
!101 = !DILocation(line: 229, column: 6, scope: !70)
!102 = !DILocalVariable(name: "preload", scope: !70, file: !65, line: 230, type: !8)
!103 = !DILocation(line: 230, column: 6, scope: !70)
!104 = !DILocalVariable(name: "flood", scope: !70, file: !65, line: 231, type: !8)
!105 = !DILocation(line: 231, column: 6, scope: !70)
!106 = !DILocalVariable(name: "print_hardware_version", scope: !70, file: !65, line: 232, type: !107)
!107 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!108 = !DILocation(line: 232, column: 6, scope: !70)
!109 = !DILocalVariable(name: "quiet", scope: !70, file: !65, line: 233, type: !8)
!110 = !DILocation(line: 233, column: 6, scope: !70)
!111 = !DILocalVariable(name: "exit_on_err", scope: !70, file: !65, line: 234, type: !8)
!112 = !DILocation(line: 234, column: 6, scope: !70)
!113 = !DILocalVariable(name: "count", scope: !70, file: !65, line: 235, type: !62)
!114 = !DILocation(line: 235, column: 16, scope: !70)
!115 = !DILocalVariable(name: "run_infinite", scope: !70, file: !65, line: 236, type: !8)
!116 = !DILocation(line: 236, column: 6, scope: !70)
!117 = !DILocalVariable(name: "interval", scope: !70, file: !65, line: 237, type: !62)
!118 = !DILocation(line: 237, column: 16, scope: !70)
!119 = !DILocalVariable(name: "unit", scope: !70, file: !65, line: 238, type: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !121, line: 48, baseType: !26)
!121 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop")
!122 = !DILocation(line: 238, column: 10, scope: !70)
!123 = !DILocalVariable(name: "card", scope: !70, file: !65, line: 239, type: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "accel_t", file: !17, line: 198, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "card_dev_t", file: !17, line: 198, flags: DIFlagFwdDecl)
!127 = !DILocation(line: 239, column: 10, scope: !70)
!128 = !DILocalVariable(name: "teststring", scope: !70, file: !65, line: 240, type: !4)
!129 = !DILocation(line: 240, column: 8, scope: !70)
!130 = !DILocation(line: 240, column: 28, scope: !70)
!131 = !DILocalVariable(name: "packets_send", scope: !70, file: !65, line: 241, type: !62)
!132 = !DILocation(line: 241, column: 16, scope: !70)
!133 = !DILocalVariable(name: "packets_received", scope: !70, file: !65, line: 241, type: !62)
!134 = !DILocation(line: 241, column: 34, scope: !70)
!135 = !DILocalVariable(name: "cpu", scope: !70, file: !65, line: 242, type: !8)
!136 = !DILocation(line: 242, column: 6, scope: !70)
!137 = !DILocalVariable(name: "err_code", scope: !70, file: !65, line: 243, type: !8)
!138 = !DILocation(line: 243, column: 6, scope: !70)
!139 = !DILocalVariable(name: "frequency", scope: !70, file: !65, line: 244, type: !22)
!140 = !DILocation(line: 244, column: 21, scope: !70)
!141 = !DILocalVariable(name: "wtime_usec", scope: !70, file: !65, line: 244, type: !22)
!142 = !DILocation(line: 244, column: 32, scope: !70)
!143 = !DILocalVariable(name: "wtime_s", scope: !70, file: !65, line: 244, type: !22)
!144 = !DILocation(line: 244, column: 48, scope: !70)
!145 = !DILocalVariable(name: "wtime_e", scope: !70, file: !65, line: 244, type: !22)
!146 = !DILocation(line: 244, column: 61, scope: !70)
!147 = !DILocalVariable(name: "mode", scope: !70, file: !65, line: 245, type: !38)
!148 = !DILocation(line: 245, column: 15, scope: !70)
!149 = !DILocation(line: 247, column: 2, scope: !70)
!150 = !DILocalVariable(name: "option_index", scope: !151, file: !65, line: 248, type: !8)
!151 = distinct !DILexicalBlock(scope: !70, file: !65, line: 247, column: 12)
!152 = !DILocation(line: 248, column: 7, scope: !151)
!153 = !DILocation(line: 282, column: 20, scope: !151)
!154 = !DILocation(line: 282, column: 26, scope: !151)
!155 = !DILocation(line: 282, column: 8, scope: !151)
!156 = !DILocation(line: 282, column: 6, scope: !151)
!157 = !DILocation(line: 285, column: 7, scope: !158)
!158 = distinct !DILexicalBlock(scope: !151, file: !65, line: 285, column: 7)
!159 = !DILocation(line: 285, column: 10, scope: !158)
!160 = !DILocation(line: 285, column: 7, scope: !151)
!161 = !DILocation(line: 286, column: 4, scope: !158)
!162 = !DILocation(line: 288, column: 11, scope: !151)
!163 = !DILocation(line: 288, column: 3, scope: !151)
!164 = !DILocation(line: 290, column: 15, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !65, line: 290, column: 8)
!166 = distinct !DILexicalBlock(scope: !151, file: !65, line: 288, column: 15)
!167 = !DILocation(line: 290, column: 8, scope: !165)
!168 = !DILocation(line: 290, column: 30, scope: !165)
!169 = !DILocation(line: 290, column: 8, scope: !166)
!170 = !DILocation(line: 291, column: 13, scope: !171)
!171 = distinct !DILexicalBlock(scope: !165, file: !65, line: 290, column: 36)
!172 = !DILocation(line: 292, column: 5, scope: !171)
!173 = !DILocation(line: 294, column: 21, scope: !166)
!174 = !DILocation(line: 294, column: 14, scope: !166)
!175 = !DILocation(line: 294, column: 12, scope: !166)
!176 = !DILocation(line: 295, column: 4, scope: !166)
!177 = !DILocation(line: 297, column: 15, scope: !178)
!178 = distinct !DILexicalBlock(scope: !166, file: !65, line: 297, column: 8)
!179 = !DILocation(line: 297, column: 8, scope: !178)
!180 = !DILocation(line: 297, column: 33, scope: !178)
!181 = !DILocation(line: 297, column: 8, scope: !166)
!182 = !DILocation(line: 298, column: 15, scope: !183)
!183 = distinct !DILexicalBlock(scope: !178, file: !65, line: 297, column: 39)
!184 = !DILocation(line: 299, column: 5, scope: !183)
!185 = !DILocation(line: 301, column: 15, scope: !186)
!186 = distinct !DILexicalBlock(scope: !166, file: !65, line: 301, column: 8)
!187 = !DILocation(line: 301, column: 8, scope: !186)
!188 = !DILocation(line: 301, column: 31, scope: !186)
!189 = !DILocation(line: 301, column: 8, scope: !166)
!190 = !DILocation(line: 302, column: 15, scope: !191)
!191 = distinct !DILexicalBlock(scope: !186, file: !65, line: 301, column: 37)
!192 = !DILocation(line: 303, column: 5, scope: !191)
!193 = !DILocation(line: 305, column: 23, scope: !166)
!194 = !DILocation(line: 305, column: 16, scope: !166)
!195 = !DILocation(line: 305, column: 14, scope: !166)
!196 = !DILocation(line: 306, column: 4, scope: !166)
!197 = !DILocation(line: 308, column: 18, scope: !166)
!198 = !DILocation(line: 308, column: 10, scope: !166)
!199 = !DILocation(line: 308, column: 8, scope: !166)
!200 = !DILocation(line: 309, column: 4, scope: !166)
!201 = !DILocation(line: 312, column: 19, scope: !166)
!202 = !DILocation(line: 312, column: 12, scope: !166)
!203 = !DILocation(line: 312, column: 10, scope: !166)
!204 = !DILocation(line: 313, column: 17, scope: !166)
!205 = !DILocation(line: 314, column: 4, scope: !166)
!206 = !DILocation(line: 316, column: 21, scope: !166)
!207 = !DILocation(line: 316, column: 14, scope: !166)
!208 = !DILocation(line: 316, column: 12, scope: !166)
!209 = !DILocation(line: 317, column: 4, scope: !166)
!210 = !DILocation(line: 319, column: 22, scope: !166)
!211 = !DILocation(line: 319, column: 15, scope: !166)
!212 = !DILocation(line: 319, column: 13, scope: !166)
!213 = !DILocation(line: 320, column: 4, scope: !166)
!214 = !DILocation(line: 322, column: 10, scope: !166)
!215 = !DILocation(line: 323, column: 13, scope: !166)
!216 = !DILocation(line: 324, column: 4, scope: !166)
!217 = !DILocation(line: 327, column: 17, scope: !166)
!218 = !DILocation(line: 327, column: 15, scope: !166)
!219 = !DILocation(line: 328, column: 15, scope: !220)
!220 = distinct !DILexicalBlock(scope: !166, file: !65, line: 328, column: 8)
!221 = !DILocation(line: 328, column: 8, scope: !220)
!222 = !DILocation(line: 328, column: 27, scope: !220)
!223 = !DILocation(line: 328, column: 8, scope: !166)
!224 = !DILocation(line: 329, column: 8, scope: !225)
!225 = distinct !DILexicalBlock(scope: !220, file: !65, line: 328, column: 33)
!226 = !DILocation(line: 331, column: 8, scope: !225)
!227 = !DILocation(line: 331, column: 23, scope: !225)
!228 = !DILocation(line: 332, column: 4, scope: !225)
!229 = !DILocation(line: 333, column: 4, scope: !166)
!230 = !DILocation(line: 335, column: 25, scope: !166)
!231 = !DILocation(line: 335, column: 18, scope: !166)
!232 = !DILocation(line: 335, column: 16, scope: !166)
!233 = !DILocation(line: 336, column: 4, scope: !166)
!234 = !DILocation(line: 343, column: 19, scope: !166)
!235 = !DILocation(line: 343, column: 4, scope: !166)
!236 = !DILocation(line: 344, column: 4, scope: !166)
!237 = !DILocation(line: 347, column: 4, scope: !166)
!238 = !DILocation(line: 349, column: 9, scope: !166)
!239 = !DILocation(line: 350, column: 4, scope: !166)
!240 = !DILocation(line: 352, column: 9, scope: !166)
!241 = !DILocation(line: 353, column: 4, scope: !166)
!242 = !DILocation(line: 355, column: 16, scope: !166)
!243 = !DILocation(line: 356, column: 4, scope: !166)
!244 = !DILocation(line: 358, column: 10, scope: !166)
!245 = !DILocation(line: 358, column: 4, scope: !166)
!246 = !DILocation(line: 359, column: 4, scope: !166)
!247 = !DILocation(line: 362, column: 27, scope: !166)
!248 = !DILocation(line: 363, column: 4, scope: !166)
!249 = !DILocation(line: 365, column: 10, scope: !166)
!250 = !DILocation(line: 365, column: 4, scope: !166)
!251 = !DILocation(line: 366, column: 4, scope: !166)
!252 = !DILocation(line: 247, column: 2, scope: !253)
!253 = !DILexicalBlockFile(scope: !70, file: !65, discriminator: 1)
!254 = distinct !{!254, !149}
!255 = !DILocation(line: 370, column: 6, scope: !256)
!256 = distinct !DILexicalBlock(scope: !70, file: !65, line: 370, column: 6)
!257 = !DILocation(line: 370, column: 16, scope: !256)
!258 = !DILocation(line: 370, column: 13, scope: !256)
!259 = !DILocation(line: 370, column: 6, scope: !70)
!260 = !DILocation(line: 371, column: 9, scope: !261)
!261 = distinct !DILexicalBlock(scope: !256, file: !65, line: 370, column: 22)
!262 = !DILocation(line: 371, column: 3, scope: !261)
!263 = !DILocation(line: 372, column: 3, scope: !261)
!264 = !DILocation(line: 375, column: 13, scope: !70)
!265 = !DILocation(line: 375, column: 18, scope: !70)
!266 = !DILocation(line: 375, column: 2, scope: !70)
!267 = !DILocation(line: 376, column: 13, scope: !70)
!268 = !DILocation(line: 376, column: 2, scope: !70)
!269 = !DILocation(line: 379, column: 20, scope: !70)
!270 = !DILocation(line: 379, column: 29, scope: !70)
!271 = !DILocation(line: 379, column: 40, scope: !70)
!272 = !DILocation(line: 379, column: 9, scope: !70)
!273 = !DILocation(line: 379, column: 7, scope: !70)
!274 = !DILocation(line: 381, column: 6, scope: !275)
!275 = distinct !DILexicalBlock(scope: !70, file: !65, line: 381, column: 6)
!276 = !DILocation(line: 381, column: 11, scope: !275)
!277 = !DILocation(line: 381, column: 6, scope: !70)
!278 = !DILocation(line: 382, column: 10, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !65, line: 381, column: 19)
!280 = !DILocation(line: 383, column: 17, scope: !279)
!281 = !DILocation(line: 383, column: 26, scope: !279)
!282 = !DILocation(line: 383, column: 37, scope: !279)
!283 = !DILocation(line: 384, column: 19, scope: !279)
!284 = !DILocation(line: 384, column: 25, scope: !279)
!285 = !DILocation(line: 384, column: 4, scope: !279)
!286 = !DILocation(line: 382, column: 3, scope: !279)
!287 = !DILocation(line: 385, column: 8, scope: !279)
!288 = !DILocation(line: 385, column: 6, scope: !279)
!289 = !DILocation(line: 386, column: 3, scope: !279)
!290 = !DILocation(line: 388, column: 6, scope: !291)
!291 = distinct !DILexicalBlock(scope: !70, file: !65, line: 388, column: 6)
!292 = !DILocation(line: 388, column: 6, scope: !70)
!293 = !DILocation(line: 389, column: 31, scope: !294)
!294 = distinct !DILexicalBlock(scope: !291, file: !65, line: 388, column: 30)
!295 = !DILocation(line: 389, column: 36, scope: !294)
!296 = !DILocation(line: 389, column: 3, scope: !294)
!297 = !DILocation(line: 390, column: 3, scope: !294)
!298 = !DILocation(line: 396, column: 2, scope: !70)
!299 = distinct !{!299, !298}
!300 = !DILocation(line: 396, column: 11, scope: !301)
!301 = !DILexicalBlockFile(scope: !302, file: !65, discriminator: 1)
!302 = distinct !DILexicalBlock(scope: !303, file: !65, line: 396, column: 11)
!303 = distinct !DILexicalBlock(scope: !70, file: !65, line: 396, column: 5)
!304 = !DILocation(line: 396, column: 1, scope: !305)
!305 = !DILexicalBlockFile(scope: !302, file: !65, discriminator: 2)
!306 = !DILocation(line: 396, column: 42, scope: !305)
!307 = !DILocation(line: 396, column: 54, scope: !305)
!308 = !DILocation(line: 396, column: 25, scope: !305)
!309 = !DILocation(line: 396, column: 61, scope: !310)
!310 = !DILexicalBlockFile(scope: !303, file: !65, discriminator: 3)
!311 = !DILocation(line: 397, column: 6, scope: !312)
!312 = distinct !DILexicalBlock(scope: !70, file: !65, line: 397, column: 6)
!313 = !DILocation(line: 397, column: 14, scope: !312)
!314 = !DILocation(line: 397, column: 6, scope: !70)
!315 = !DILocation(line: 398, column: 11, scope: !312)
!316 = !DILocation(line: 398, column: 3, scope: !312)
!317 = !DILocation(line: 400, column: 2, scope: !70)
!318 = !DILocation(line: 401, column: 38, scope: !70)
!319 = !DILocation(line: 401, column: 12, scope: !70)
!320 = !DILocation(line: 401, column: 10, scope: !70)
!321 = !DILocation(line: 403, column: 2, scope: !70)
!322 = !DILocation(line: 403, column: 10, scope: !253)
!323 = !DILocation(line: 403, column: 9, scope: !253)
!324 = !DILocation(line: 403, column: 2, scope: !253)
!325 = !DILocalVariable(name: "t0", scope: !326, file: !65, line: 404, type: !327)
!326 = distinct !DILexicalBlock(scope: !70, file: !65, line: 403, column: 24)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !328, line: 30, size: 128, align: 64, elements: !329)
!328 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop")
!329 = !{!330, !334}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !327, file: !328, line: 32, baseType: !331, size: 64, align: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !332, line: 139, baseType: !333)
!332 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop")
!333 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !327, file: !328, line: 33, baseType: !335, size: 64, align: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !332, line: 141, baseType: !333)
!336 = !DILocation(line: 404, column: 18, scope: !326)
!337 = !DILocalVariable(name: "t1", scope: !326, file: !65, line: 404, type: !327)
!338 = !DILocation(line: 404, column: 22, scope: !326)
!339 = !DILocation(line: 406, column: 8, scope: !340)
!340 = distinct !DILexicalBlock(scope: !326, file: !65, line: 406, column: 7)
!341 = !DILocation(line: 406, column: 21, scope: !340)
!342 = !DILocation(line: 406, column: 25, scope: !343)
!343 = !DILexicalBlockFile(scope: !340, file: !65, discriminator: 1)
!344 = !DILocation(line: 406, column: 7, scope: !343)
!345 = !DILocation(line: 407, column: 4, scope: !340)
!346 = !DILocation(line: 409, column: 3, scope: !326)
!347 = !DILocation(line: 410, column: 16, scope: !326)
!348 = !DILocation(line: 410, column: 22, scope: !326)
!349 = !DILocation(line: 410, column: 31, scope: !326)
!350 = !DILocation(line: 410, column: 37, scope: !326)
!351 = !DILocation(line: 410, column: 8, scope: !326)
!352 = !DILocation(line: 410, column: 6, scope: !326)
!353 = !DILocation(line: 411, column: 3, scope: !326)
!354 = !DILocation(line: 413, column: 15, scope: !326)
!355 = !DILocation(line: 414, column: 7, scope: !356)
!356 = distinct !DILexicalBlock(scope: !326, file: !65, line: 414, column: 7)
!357 = !DILocation(line: 414, column: 10, scope: !356)
!358 = !DILocation(line: 414, column: 7, scope: !326)
!359 = !DILocation(line: 415, column: 9, scope: !360)
!360 = distinct !DILexicalBlock(scope: !361, file: !65, line: 415, column: 8)
!361 = distinct !DILexicalBlock(scope: !356, file: !65, line: 414, column: 16)
!362 = !DILocation(line: 415, column: 15, scope: !360)
!363 = !DILocation(line: 415, column: 19, scope: !364)
!364 = !DILexicalBlockFile(scope: !360, file: !65, discriminator: 1)
!365 = !DILocation(line: 415, column: 8, scope: !364)
!366 = !DILocation(line: 418, column: 12, scope: !367)
!367 = distinct !DILexicalBlock(scope: !360, file: !65, line: 415, column: 26)
!368 = !DILocation(line: 418, column: 33, scope: !367)
!369 = !DILocation(line: 418, column: 26, scope: !367)
!370 = !DILocation(line: 418, column: 21, scope: !367)
!371 = !DILocation(line: 419, column: 12, scope: !367)
!372 = !DILocation(line: 419, column: 36, scope: !367)
!373 = !DILocation(line: 419, column: 43, scope: !367)
!374 = !DILocation(line: 419, column: 62, scope: !367)
!375 = !DILocation(line: 419, column: 53, scope: !367)
!376 = !DILocation(line: 419, column: 81, scope: !367)
!377 = !DILocation(line: 419, column: 88, scope: !367)
!378 = !DILocation(line: 419, column: 107, scope: !367)
!379 = !DILocation(line: 419, column: 98, scope: !367)
!380 = !DILocation(line: 419, column: 71, scope: !367)
!381 = !DILocation(line: 419, column: 19, scope: !367)
!382 = !DILocation(line: 416, column: 5, scope: !367)
!383 = !DILocation(line: 420, column: 4, scope: !367)
!384 = !DILocation(line: 421, column: 20, scope: !361)
!385 = !DILocation(line: 422, column: 3, scope: !361)
!386 = !DILocation(line: 424, column: 8, scope: !326)
!387 = !DILocation(line: 425, column: 8, scope: !388)
!388 = distinct !DILexicalBlock(scope: !326, file: !65, line: 425, column: 7)
!389 = !DILocation(line: 425, column: 21, scope: !388)
!390 = !DILocation(line: 425, column: 25, scope: !391)
!391 = !DILexicalBlockFile(scope: !388, file: !65, discriminator: 1)
!392 = !DILocation(line: 425, column: 7, scope: !391)
!393 = !DILocation(line: 426, column: 4, scope: !388)
!394 = !DILocation(line: 428, column: 7, scope: !395)
!395 = distinct !DILexicalBlock(scope: !326, file: !65, line: 428, column: 7)
!396 = !DILocation(line: 428, column: 7, scope: !326)
!397 = !DILocation(line: 429, column: 11, scope: !395)
!398 = !DILocation(line: 429, column: 4, scope: !395)
!399 = !DILocation(line: 431, column: 7, scope: !400)
!400 = distinct !DILexicalBlock(scope: !326, file: !65, line: 431, column: 7)
!401 = !DILocation(line: 431, column: 19, scope: !400)
!402 = !DILocation(line: 431, column: 23, scope: !403)
!403 = !DILexicalBlockFile(scope: !400, file: !65, discriminator: 1)
!404 = !DILocation(line: 431, column: 26, scope: !403)
!405 = !DILocation(line: 431, column: 7, scope: !403)
!406 = !DILocation(line: 432, column: 4, scope: !400)
!407 = !DILocation(line: 403, column: 2, scope: !408)
!408 = !DILexicalBlockFile(scope: !70, file: !65, discriminator: 2)
!409 = distinct !{!409, !321}
!410 = !DILocation(line: 435, column: 38, scope: !70)
!411 = !DILocation(line: 435, column: 12, scope: !70)
!412 = !DILocation(line: 435, column: 10, scope: !70)
!413 = !DILocation(line: 436, column: 34, scope: !70)
!414 = !DILocation(line: 436, column: 14, scope: !70)
!415 = !DILocation(line: 436, column: 12, scope: !70)
!416 = !DILocation(line: 437, column: 15, scope: !70)
!417 = !DILocation(line: 437, column: 28, scope: !253)
!418 = !DILocation(line: 437, column: 38, scope: !253)
!419 = !DILocation(line: 437, column: 36, scope: !253)
!420 = !DILocation(line: 437, column: 50, scope: !253)
!421 = !DILocation(line: 437, column: 59, scope: !253)
!422 = !DILocation(line: 437, column: 47, scope: !253)
!423 = !DILocation(line: 437, column: 15, scope: !253)
!424 = !DILocation(line: 437, column: 15, scope: !408)
!425 = !DILocation(line: 437, column: 15, scope: !426)
!426 = !DILexicalBlockFile(scope: !70, file: !65, discriminator: 3)
!427 = !DILocation(line: 437, column: 13, scope: !426)
!428 = !DILocation(line: 437, column: 2, scope: !426)
!429 = !DILocation(line: 440, column: 14, scope: !70)
!430 = !DILocation(line: 440, column: 2, scope: !70)
!431 = !DILocation(line: 442, column: 7, scope: !432)
!432 = distinct !DILexicalBlock(scope: !70, file: !65, line: 442, column: 6)
!433 = !DILocation(line: 442, column: 13, scope: !432)
!434 = !DILocation(line: 442, column: 17, scope: !435)
!435 = !DILexicalBlockFile(scope: !432, file: !65, discriminator: 1)
!436 = !DILocation(line: 442, column: 6, scope: !435)
!437 = !DILocation(line: 443, column: 3, scope: !432)
!438 = !DILocation(line: 442, column: 17, scope: !439)
!439 = !DILexicalBlockFile(scope: !432, file: !65, discriminator: 2)
!440 = !DILocation(line: 446, column: 7, scope: !441)
!441 = distinct !DILexicalBlock(scope: !70, file: !65, line: 446, column: 6)
!442 = !DILocation(line: 446, column: 6, scope: !70)
!443 = !DILocation(line: 450, column: 10, scope: !444)
!444 = distinct !DILexicalBlock(scope: !441, file: !65, line: 446, column: 14)
!445 = !DILocation(line: 450, column: 16, scope: !444)
!446 = !DILocation(line: 451, column: 10, scope: !444)
!447 = !DILocation(line: 451, column: 29, scope: !444)
!448 = !DILocation(line: 451, column: 44, scope: !444)
!449 = !DILocation(line: 451, column: 42, scope: !444)
!450 = !DILocation(line: 452, column: 11, scope: !444)
!451 = !DILocation(line: 452, column: 10, scope: !444)
!452 = !DILocation(line: 452, column: 10, scope: !453)
!453 = !DILexicalBlockFile(scope: !444, file: !65, discriminator: 1)
!454 = !DILocation(line: 453, column: 17, scope: !444)
!455 = !DILocation(line: 453, column: 32, scope: !444)
!456 = !DILocation(line: 453, column: 30, scope: !444)
!457 = !DILocation(line: 453, column: 14, scope: !444)
!458 = !DILocation(line: 453, column: 50, scope: !444)
!459 = !DILocation(line: 453, column: 49, scope: !444)
!460 = !DILocation(line: 452, column: 10, scope: !461)
!461 = !DILexicalBlockFile(scope: !444, file: !65, discriminator: 2)
!462 = !DILocation(line: 452, column: 10, scope: !463)
!463 = !DILexicalBlockFile(scope: !444, file: !65, discriminator: 3)
!464 = !DILocation(line: 454, column: 10, scope: !444)
!465 = !DILocation(line: 447, column: 3, scope: !444)
!466 = !DILocation(line: 455, column: 2, scope: !444)
!467 = !DILocation(line: 457, column: 6, scope: !468)
!468 = distinct !DILexicalBlock(scope: !70, file: !65, line: 457, column: 6)
!469 = !DILocation(line: 457, column: 9, scope: !468)
!470 = !DILocation(line: 457, column: 6, scope: !70)
!471 = !DILocation(line: 458, column: 3, scope: !468)
!472 = !DILocation(line: 460, column: 2, scope: !70)
!473 = !DILocation(line: 461, column: 1, scope: !70)
!474 = distinct !DISubprogram(name: "usage", scope: !65, file: !65, line: 55, type: !475, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !67}
!477 = !DILocalVariable(name: "prog", arg: 1, scope: !474, file: !65, line: 55, type: !67)
!478 = !DILocation(line: 55, column: 31, scope: !474)
!479 = !DILocation(line: 82, column: 34, scope: !474)
!480 = !DILocation(line: 57, column: 2, scope: !474)
!481 = !DILocation(line: 83, column: 1, scope: !474)
!482 = distinct !DISubprogram(name: "INT_handler", scope: !65, file: !65, line: 88, type: !13, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!483 = !DILocalVariable(name: "sig", arg: 1, scope: !482, file: !65, line: 88, type: !8)
!484 = !DILocation(line: 88, column: 29, scope: !482)
!485 = !DILocation(line: 90, column: 9, scope: !482)
!486 = !DILocation(line: 90, column: 2, scope: !482)
!487 = !DILocation(line: 91, column: 15, scope: !482)
!488 = !DILocation(line: 93, column: 1, scope: !482)
!489 = distinct !DISubprogram(name: "do_echo", scope: !65, file: !65, line: 147, type: !490, isLocal: true, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!490 = !DISubroutineType(types: !491)
!491 = !{!8, !124, !8, !120, !4}
!492 = !DILocalVariable(name: "card", arg: 1, scope: !489, file: !65, line: 147, type: !124)
!493 = !DILocation(line: 147, column: 28, scope: !489)
!494 = !DILocalVariable(name: "preload", arg: 2, scope: !489, file: !65, line: 147, type: !8)
!495 = !DILocation(line: 147, column: 38, scope: !489)
!496 = !DILocalVariable(name: "unit", arg: 3, scope: !489, file: !65, line: 147, type: !120)
!497 = !DILocation(line: 147, column: 55, scope: !489)
!498 = !DILocalVariable(name: "teststring", arg: 4, scope: !489, file: !65, line: 148, type: !4)
!499 = !DILocation(line: 148, column: 12, scope: !489)
!500 = !DILocalVariable(name: "rc", scope: !489, file: !65, line: 150, type: !8)
!501 = !DILocation(line: 150, column: 6, scope: !489)
!502 = !DILocalVariable(name: "j", scope: !489, file: !65, line: 150, type: !8)
!503 = !DILocation(line: 150, column: 10, scope: !489)
!504 = !DILocalVariable(name: "xerrno", scope: !489, file: !65, line: 150, type: !8)
!505 = !DILocation(line: 150, column: 13, scope: !489)
!506 = !DILocalVariable(name: "i", scope: !489, file: !65, line: 151, type: !38)
!507 = !DILocation(line: 151, column: 15, scope: !489)
!508 = !DILocalVariable(name: "cmd", scope: !489, file: !65, line: 152, type: !15)
!509 = !DILocation(line: 152, column: 19, scope: !489)
!510 = !DILocalVariable(name: "pcmd", scope: !489, file: !65, line: 152, type: !15)
!511 = !DILocation(line: 152, column: 25, scope: !489)
!512 = !DILocation(line: 158, column: 34, scope: !489)
!513 = !DILocation(line: 158, column: 42, scope: !489)
!514 = !DILocation(line: 158, column: 27, scope: !489)
!515 = !DILocation(line: 158, column: 8, scope: !489)
!516 = !DILocation(line: 158, column: 6, scope: !489)
!517 = !DILocation(line: 159, column: 6, scope: !518)
!518 = distinct !DILexicalBlock(scope: !489, file: !65, line: 159, column: 6)
!519 = !DILocation(line: 159, column: 10, scope: !518)
!520 = !DILocation(line: 159, column: 6, scope: !489)
!521 = !DILocation(line: 160, column: 10, scope: !522)
!522 = distinct !DILexicalBlock(scope: !518, file: !65, line: 159, column: 18)
!523 = !DILocation(line: 160, column: 3, scope: !522)
!524 = !DILocation(line: 161, column: 3, scope: !522)
!525 = !DILocation(line: 163, column: 9, scope: !489)
!526 = !DILocation(line: 163, column: 2, scope: !489)
!527 = !DILocation(line: 163, column: 17, scope: !489)
!528 = !DILocation(line: 163, column: 25, scope: !489)
!529 = !DILocation(line: 166, column: 18, scope: !489)
!530 = !DILocation(line: 166, column: 30, scope: !489)
!531 = !DILocation(line: 166, column: 36, scope: !489)
!532 = !DILocation(line: 166, column: 41, scope: !489)
!533 = !DILocation(line: 166, column: 2, scope: !489)
!534 = !DILocation(line: 167, column: 9, scope: !489)
!535 = !DILocation(line: 167, column: 7, scope: !489)
!536 = !DILocation(line: 170, column: 26, scope: !489)
!537 = !DILocation(line: 170, column: 32, scope: !489)
!538 = !DILocation(line: 170, column: 7, scope: !489)
!539 = !DILocation(line: 170, column: 5, scope: !489)
!540 = !DILocation(line: 171, column: 6, scope: !541)
!541 = distinct !DILexicalBlock(scope: !489, file: !65, line: 171, column: 6)
!542 = !DILocation(line: 171, column: 9, scope: !541)
!543 = !DILocation(line: 171, column: 6, scope: !489)
!544 = !DILocation(line: 172, column: 10, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !65, line: 171, column: 15)
!546 = !DILocation(line: 176, column: 18, scope: !545)
!547 = !DILocation(line: 176, column: 4, scope: !545)
!548 = !DILocation(line: 176, column: 23, scope: !545)
!549 = !DILocation(line: 176, column: 27, scope: !545)
!550 = !DILocation(line: 176, column: 44, scope: !545)
!551 = !DILocation(line: 176, column: 35, scope: !552)
!552 = !DILexicalBlockFile(scope: !545, file: !65, discriminator: 1)
!553 = !DILocation(line: 177, column: 4, scope: !545)
!554 = !DILocation(line: 177, column: 10, scope: !545)
!555 = !DILocation(line: 177, column: 35, scope: !545)
!556 = !DILocation(line: 177, column: 41, scope: !545)
!557 = !DILocation(line: 177, column: 16, scope: !545)
!558 = !DILocation(line: 178, column: 4, scope: !545)
!559 = !DILocation(line: 178, column: 10, scope: !545)
!560 = !DILocation(line: 178, column: 16, scope: !545)
!561 = !DILocation(line: 178, column: 22, scope: !545)
!562 = !DILocation(line: 172, column: 3, scope: !545)
!563 = !DILocation(line: 180, column: 3, scope: !545)
!564 = !DILocation(line: 184, column: 9, scope: !489)
!565 = !DILocation(line: 184, column: 7, scope: !489)
!566 = !DILocation(line: 185, column: 5, scope: !489)
!567 = !DILocation(line: 186, column: 9, scope: !568)
!568 = distinct !DILexicalBlock(scope: !489, file: !65, line: 186, column: 2)
!569 = !DILocation(line: 186, column: 7, scope: !568)
!570 = !DILocation(line: 186, column: 14, scope: !571)
!571 = !DILexicalBlockFile(scope: !572, file: !65, discriminator: 1)
!572 = distinct !DILexicalBlock(scope: !568, file: !65, line: 186, column: 2)
!573 = !DILocation(line: 186, column: 18, scope: !571)
!574 = !DILocation(line: 186, column: 16, scope: !571)
!575 = !DILocation(line: 186, column: 2, scope: !571)
!576 = !DILocation(line: 187, column: 23, scope: !577)
!577 = distinct !DILexicalBlock(scope: !578, file: !65, line: 187, column: 7)
!578 = distinct !DILexicalBlock(scope: !572, file: !65, line: 186, column: 32)
!579 = !DILocation(line: 187, column: 29, scope: !577)
!580 = !DILocation(line: 187, column: 34, scope: !577)
!581 = !DILocation(line: 188, column: 15, scope: !577)
!582 = !DILocation(line: 188, column: 8, scope: !577)
!583 = !DILocation(line: 187, column: 7, scope: !577)
!584 = !DILocation(line: 188, column: 28, scope: !577)
!585 = !DILocation(line: 187, column: 7, scope: !578)
!586 = !DILocation(line: 192, column: 11, scope: !587)
!587 = distinct !DILexicalBlock(scope: !577, file: !65, line: 188, column: 34)
!588 = !DILocation(line: 192, column: 17, scope: !587)
!589 = !DILocation(line: 192, column: 42, scope: !587)
!590 = !DILocation(line: 192, column: 48, scope: !587)
!591 = !DILocation(line: 192, column: 23, scope: !587)
!592 = !DILocation(line: 190, column: 4, scope: !587)
!593 = !DILocation(line: 194, column: 4, scope: !587)
!594 = !DILocation(line: 195, column: 11, scope: !595)
!595 = distinct !DILexicalBlock(scope: !587, file: !65, line: 195, column: 4)
!596 = !DILocation(line: 195, column: 9, scope: !595)
!597 = !DILocation(line: 195, column: 16, scope: !598)
!598 = !DILexicalBlockFile(scope: !599, file: !65, discriminator: 1)
!599 = distinct !DILexicalBlock(scope: !595, file: !65, line: 195, column: 4)
!600 = !DILocation(line: 195, column: 27, scope: !598)
!601 = !DILocation(line: 195, column: 20, scope: !598)
!602 = !DILocation(line: 195, column: 18, scope: !598)
!603 = !DILocation(line: 195, column: 4, scope: !598)
!604 = !DILocation(line: 196, column: 32, scope: !605)
!605 = distinct !DILexicalBlock(scope: !599, file: !65, line: 195, column: 45)
!606 = !DILocation(line: 196, column: 21, scope: !605)
!607 = !DILocation(line: 196, column: 5, scope: !605)
!608 = !DILocation(line: 197, column: 10, scope: !609)
!609 = distinct !DILexicalBlock(scope: !605, file: !65, line: 197, column: 9)
!610 = !DILocation(line: 197, column: 12, scope: !609)
!611 = !DILocation(line: 197, column: 20, scope: !609)
!612 = !DILocation(line: 197, column: 9, scope: !605)
!613 = !DILocation(line: 198, column: 6, scope: !609)
!614 = !DILocation(line: 199, column: 4, scope: !605)
!615 = !DILocation(line: 195, column: 41, scope: !616)
!616 = !DILexicalBlockFile(scope: !599, file: !65, discriminator: 2)
!617 = !DILocation(line: 195, column: 4, scope: !616)
!618 = distinct !{!618, !619}
!619 = !DILocation(line: 195, column: 4, scope: !587)
!620 = !DILocation(line: 201, column: 4, scope: !587)
!621 = !DILocation(line: 202, column: 11, scope: !622)
!622 = distinct !DILexicalBlock(scope: !587, file: !65, line: 202, column: 4)
!623 = !DILocation(line: 202, column: 9, scope: !622)
!624 = !DILocation(line: 202, column: 16, scope: !625)
!625 = !DILexicalBlockFile(scope: !626, file: !65, discriminator: 1)
!626 = distinct !DILexicalBlock(scope: !622, file: !65, line: 202, column: 4)
!627 = !DILocation(line: 202, column: 20, scope: !625)
!628 = !DILocation(line: 202, column: 26, scope: !625)
!629 = !DILocation(line: 202, column: 18, scope: !625)
!630 = !DILocation(line: 202, column: 4, scope: !625)
!631 = !DILocation(line: 203, column: 31, scope: !632)
!632 = distinct !DILexicalBlock(scope: !626, file: !65, line: 202, column: 43)
!633 = !DILocation(line: 203, column: 21, scope: !632)
!634 = !DILocation(line: 203, column: 27, scope: !632)
!635 = !DILocation(line: 203, column: 5, scope: !632)
!636 = !DILocation(line: 204, column: 10, scope: !637)
!637 = distinct !DILexicalBlock(scope: !632, file: !65, line: 204, column: 9)
!638 = !DILocation(line: 204, column: 12, scope: !637)
!639 = !DILocation(line: 204, column: 20, scope: !637)
!640 = !DILocation(line: 204, column: 9, scope: !632)
!641 = !DILocation(line: 205, column: 6, scope: !637)
!642 = !DILocation(line: 206, column: 4, scope: !632)
!643 = !DILocation(line: 202, column: 39, scope: !644)
!644 = !DILexicalBlockFile(scope: !626, file: !65, discriminator: 2)
!645 = !DILocation(line: 202, column: 4, scope: !644)
!646 = distinct !{!646, !647}
!647 = !DILocation(line: 202, column: 4, scope: !587)
!648 = !DILocation(line: 207, column: 4, scope: !587)
!649 = !DILocation(line: 209, column: 7, scope: !587)
!650 = !DILocation(line: 210, column: 4, scope: !587)
!651 = !DILocation(line: 212, column: 4, scope: !652)
!652 = distinct !DILexicalBlock(scope: !577, file: !65, line: 211, column: 10)
!653 = distinct !{!653, !651}
!654 = !DILocation(line: 212, column: 13, scope: !655)
!655 = !DILexicalBlockFile(scope: !656, file: !65, discriminator: 1)
!656 = distinct !DILexicalBlock(scope: !657, file: !65, line: 212, column: 13)
!657 = distinct !DILexicalBlock(scope: !652, file: !65, line: 212, column: 7)
!658 = !DILocation(line: 212, column: 3, scope: !659)
!659 = !DILexicalBlockFile(scope: !656, file: !65, discriminator: 2)
!660 = !DILocation(line: 212, column: 31, scope: !659)
!661 = !DILocation(line: 212, column: 37, scope: !659)
!662 = !DILocation(line: 212, column: 62, scope: !659)
!663 = !DILocation(line: 212, column: 68, scope: !659)
!664 = !DILocation(line: 212, column: 43, scope: !659)
!665 = !DILocation(line: 212, column: 27, scope: !666)
!666 = !DILexicalBlockFile(scope: !659, file: !65, discriminator: 4)
!667 = !DILocation(line: 212, column: 27, scope: !659)
!668 = !DILocation(line: 212, column: 76, scope: !669)
!669 = !DILexicalBlockFile(scope: !657, file: !65, discriminator: 3)
!670 = !DILocation(line: 215, column: 7, scope: !578)
!671 = !DILocation(line: 216, column: 2, scope: !578)
!672 = !DILocation(line: 186, column: 28, scope: !673)
!673 = !DILexicalBlockFile(scope: !572, file: !65, discriminator: 2)
!674 = !DILocation(line: 186, column: 2, scope: !673)
!675 = distinct !{!675, !676}
!676 = !DILocation(line: 186, column: 2, scope: !489)
!677 = !DILocation(line: 216, column: 2, scope: !678)
!678 = !DILexicalBlockFile(scope: !568, file: !65, discriminator: 1)
!679 = !DILocation(line: 218, column: 7, scope: !489)
!680 = !DILocation(line: 218, column: 2, scope: !489)
!681 = !DILocation(line: 219, column: 9, scope: !489)
!682 = !DILocation(line: 219, column: 2, scope: !489)
!683 = !DILocation(line: 220, column: 1, scope: !489)
!684 = distinct !DISubprogram(name: "preset_echo_cmd", scope: !65, file: !65, line: 106, type: !685, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !4, !120, !15, !8}
!687 = !DILocalVariable(name: "tstring", arg: 1, scope: !684, file: !65, line: 106, type: !4)
!688 = !DILocation(line: 106, column: 35, scope: !684)
!689 = !DILocalVariable(name: "acfunc", arg: 2, scope: !684, file: !65, line: 106, type: !120)
!690 = !DILocation(line: 106, column: 52, scope: !684)
!691 = !DILocalVariable(name: "cmd", arg: 3, scope: !684, file: !65, line: 107, type: !15)
!692 = !DILocation(line: 107, column: 25, scope: !684)
!693 = !DILocalVariable(name: "count", arg: 4, scope: !684, file: !65, line: 107, type: !8)
!694 = !DILocation(line: 107, column: 34, scope: !684)
!695 = !DILocalVariable(name: "i", scope: !684, file: !65, line: 109, type: !8)
!696 = !DILocation(line: 109, column: 6, scope: !684)
!697 = !DILocalVariable(name: "j", scope: !684, file: !65, line: 109, type: !8)
!698 = !DILocation(line: 109, column: 9, scope: !684)
!699 = !DILocalVariable(name: "len", scope: !684, file: !65, line: 110, type: !8)
!700 = !DILocation(line: 110, column: 6, scope: !684)
!701 = !DILocation(line: 113, column: 20, scope: !684)
!702 = !DILocation(line: 113, column: 13, scope: !684)
!703 = !DILocation(line: 113, column: 8, scope: !684)
!704 = !DILocation(line: 113, column: 6, scope: !684)
!705 = !DILocation(line: 114, column: 10, scope: !684)
!706 = !DILocation(line: 114, column: 14, scope: !684)
!707 = !DILocation(line: 114, column: 19, scope: !684)
!708 = !DILocation(line: 114, column: 24, scope: !684)
!709 = !DILocation(line: 114, column: 6, scope: !684)
!710 = !DILocation(line: 115, column: 6, scope: !711)
!711 = distinct !DILexicalBlock(scope: !684, file: !65, line: 115, column: 6)
!712 = !DILocation(line: 115, column: 10, scope: !711)
!713 = !DILocation(line: 115, column: 6, scope: !684)
!714 = !DILocation(line: 116, column: 3, scope: !715)
!715 = distinct !DILexicalBlock(scope: !711, file: !65, line: 115, column: 16)
!716 = distinct !{!716, !714}
!717 = !DILocation(line: 116, column: 12, scope: !718)
!718 = !DILexicalBlockFile(scope: !719, file: !65, discriminator: 1)
!719 = distinct !DILexicalBlock(scope: !720, file: !65, line: 116, column: 12)
!720 = distinct !DILexicalBlock(scope: !715, file: !65, line: 116, column: 6)
!721 = !DILocation(line: 116, column: 2, scope: !722)
!722 = !DILexicalBlockFile(scope: !719, file: !65, discriminator: 2)
!723 = !DILocation(line: 116, column: 56, scope: !722)
!724 = !DILocation(line: 116, column: 49, scope: !722)
!725 = !DILocation(line: 116, column: 35, scope: !722)
!726 = !DILocation(line: 116, column: 26, scope: !727)
!727 = !DILexicalBlockFile(scope: !722, file: !65, discriminator: 4)
!728 = !DILocation(line: 116, column: 26, scope: !722)
!729 = !DILocation(line: 116, column: 67, scope: !730)
!730 = !DILexicalBlockFile(scope: !720, file: !65, discriminator: 3)
!731 = !DILocation(line: 119, column: 7, scope: !715)
!732 = !DILocation(line: 120, column: 2, scope: !715)
!733 = !DILocation(line: 122, column: 9, scope: !734)
!734 = distinct !DILexicalBlock(scope: !684, file: !65, line: 122, column: 2)
!735 = !DILocation(line: 122, column: 7, scope: !734)
!736 = !DILocation(line: 122, column: 14, scope: !737)
!737 = !DILexicalBlockFile(scope: !738, file: !65, discriminator: 1)
!738 = distinct !DILexicalBlock(scope: !734, file: !65, line: 122, column: 2)
!739 = !DILocation(line: 122, column: 18, scope: !737)
!740 = !DILocation(line: 122, column: 16, scope: !737)
!741 = !DILocation(line: 122, column: 2, scope: !737)
!742 = !DILocation(line: 123, column: 17, scope: !743)
!743 = distinct !DILexicalBlock(scope: !738, file: !65, line: 122, column: 30)
!744 = !DILocation(line: 123, column: 3, scope: !743)
!745 = !DILocation(line: 123, column: 8, scope: !743)
!746 = !DILocation(line: 123, column: 15, scope: !743)
!747 = !DILocation(line: 124, column: 3, scope: !743)
!748 = !DILocation(line: 124, column: 8, scope: !743)
!749 = !DILocation(line: 124, column: 19, scope: !743)
!750 = !DILocation(line: 125, column: 3, scope: !743)
!751 = !DILocation(line: 125, column: 8, scope: !743)
!752 = !DILocation(line: 125, column: 12, scope: !743)
!753 = !DILocation(line: 126, column: 3, scope: !743)
!754 = !DILocation(line: 126, column: 8, scope: !743)
!755 = !DILocation(line: 126, column: 16, scope: !743)
!756 = !DILocation(line: 127, column: 3, scope: !743)
!757 = !DILocation(line: 127, column: 8, scope: !743)
!758 = !DILocation(line: 127, column: 12, scope: !743)
!759 = !DILocation(line: 129, column: 19, scope: !743)
!760 = !DILocation(line: 129, column: 24, scope: !743)
!761 = !DILocation(line: 129, column: 30, scope: !743)
!762 = !DILocation(line: 129, column: 39, scope: !743)
!763 = !DILocation(line: 129, column: 3, scope: !743)
!764 = !DILocation(line: 130, column: 3, scope: !743)
!765 = !DILocation(line: 130, column: 8, scope: !743)
!766 = !DILocation(line: 130, column: 20, scope: !743)
!767 = !DILocation(line: 133, column: 9, scope: !768)
!768 = distinct !DILexicalBlock(scope: !743, file: !65, line: 133, column: 3)
!769 = !DILocation(line: 133, column: 8, scope: !768)
!770 = !DILocation(line: 133, column: 13, scope: !771)
!771 = !DILexicalBlockFile(scope: !772, file: !65, discriminator: 1)
!772 = distinct !DILexicalBlock(scope: !768, file: !65, line: 133, column: 3)
!773 = !DILocation(line: 133, column: 15, scope: !771)
!774 = !DILocation(line: 133, column: 3, scope: !771)
!775 = !DILocation(line: 134, column: 13, scope: !772)
!776 = !DILocation(line: 134, column: 4, scope: !772)
!777 = !DILocation(line: 134, column: 9, scope: !772)
!778 = !DILocation(line: 134, column: 16, scope: !772)
!779 = !DILocation(line: 133, column: 22, scope: !780)
!780 = !DILexicalBlockFile(scope: !772, file: !65, discriminator: 2)
!781 = !DILocation(line: 133, column: 3, scope: !780)
!782 = distinct !{!782, !783}
!783 = !DILocation(line: 133, column: 3, scope: !743)
!784 = !DILocation(line: 136, column: 3, scope: !743)
!785 = !DILocation(line: 136, column: 8, scope: !743)
!786 = !DILocation(line: 136, column: 19, scope: !743)
!787 = !DILocation(line: 137, column: 3, scope: !743)
!788 = !DILocation(line: 137, column: 8, scope: !743)
!789 = !DILocation(line: 137, column: 13, scope: !743)
!790 = !DILocation(line: 138, column: 7, scope: !791)
!791 = distinct !DILexicalBlock(scope: !743, file: !65, line: 138, column: 7)
!792 = !DILocation(line: 138, column: 12, scope: !791)
!793 = !DILocation(line: 138, column: 17, scope: !791)
!794 = !DILocation(line: 138, column: 9, scope: !791)
!795 = !DILocation(line: 138, column: 7, scope: !743)
!796 = !DILocation(line: 139, column: 37, scope: !791)
!797 = !DILocation(line: 139, column: 41, scope: !791)
!798 = !DILocation(line: 139, column: 21, scope: !791)
!799 = !DILocation(line: 139, column: 4, scope: !791)
!800 = !DILocation(line: 139, column: 9, scope: !791)
!801 = !DILocation(line: 139, column: 19, scope: !791)
!802 = !DILocation(line: 141, column: 4, scope: !791)
!803 = !DILocation(line: 141, column: 9, scope: !791)
!804 = !DILocation(line: 141, column: 19, scope: !791)
!805 = !DILocation(line: 142, column: 6, scope: !743)
!806 = !DILocation(line: 143, column: 2, scope: !743)
!807 = !DILocation(line: 122, column: 26, scope: !808)
!808 = !DILexicalBlockFile(scope: !738, file: !65, discriminator: 2)
!809 = !DILocation(line: 122, column: 2, scope: !808)
!810 = distinct !{!810, !811}
!811 = !DILocation(line: 122, column: 2, scope: !684)
!812 = !DILocation(line: 144, column: 2, scope: !684)
!813 = distinct !{!813, !812}
!814 = !DILocation(line: 144, column: 11, scope: !815)
!815 = !DILexicalBlockFile(scope: !816, file: !65, discriminator: 1)
!816 = distinct !DILexicalBlock(scope: !817, file: !65, line: 144, column: 11)
!817 = distinct !DILexicalBlock(scope: !684, file: !65, line: 144, column: 5)
!818 = !DILocation(line: 144, column: 1, scope: !819)
!819 = !DILexicalBlockFile(scope: !816, file: !65, discriminator: 2)
!820 = !DILocation(line: 144, column: 50, scope: !819)
!821 = !DILocation(line: 144, column: 57, scope: !819)
!822 = !DILocation(line: 144, column: 25, scope: !819)
!823 = !DILocation(line: 144, column: 63, scope: !824)
!824 = !DILexicalBlockFile(scope: !817, file: !65, discriminator: 3)
!825 = !DILocation(line: 145, column: 1, scope: !684)
