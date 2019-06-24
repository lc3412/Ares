; ModuleID = '/home/lichi/Desktop/genwqe/[task]tools--genwqe_poke/[inter]tools--genwqe_poke.o.i'
source_filename = "/home/lichi/Desktop/genwqe/[task]tools--genwqe_poke/[inter]tools--genwqe_poke.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.card_dev_t = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@verbose_flag = global i32 0, align 4
@main.long_options = internal global [14 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 1, i32* null, i32 67 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 1, i32* null, i32 65 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 1, i32* null, i32 88 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 1, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 1, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 1, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 1, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 0, i32* null, i32 86 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"card\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"accelerator-type\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"interval\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"rd-back\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"psl-bar\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"m:p:C:A:X:w:i:c:Vqrvh\00", align 1
@optarg = external global i8*, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"GENWQE\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"CAPI\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@version = internal global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), align 8
@quiet = internal global i32 0, align 4
@optind = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.17 = private unnamed_addr constant [37 x i8] c"err: (%d) is a invalid card number!\0A\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"err: failed to open card %u type %u (%d/%s)\0A\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"err: could not write %016llx to [%08x]\0A  %s: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"err: read back failed\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"err: post verify failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"[%08x] %016llx\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"4.0.20-5-g2944\00", align 1
@.str.24 = private unnamed_addr constant [1148 x i8] c"Usage: %s [-h] [-v,--verbose]\0A  -C,--card <cardno> can be (0...3)\0A  -A, --accelerator-type=GENWQE|CAPI CAPI is only available for System p\0A  -V, --version             print version.\0A  -q, --quiet               quiece output.\0A  -w, --width <32|64>       access width, 64: default\0A  -X, --cpu <id>            only run on this CPU.\0A  -i, --interval <intv>     interval in usec, 0: default.\0A  -c, --count <mum>         number of pokes, 1: default\0A  -r, --read-back           read back and verify.\0A  -p, --psl-bar <bar>       access PSL bar (CAPI only)\0A  -m, --mask <mask>         x = (x & ~mask) | (val & mask)\0A  <addr> <val>\0A\0AExample:\0A  genwqe_poke 0x0000000 0xdeadbeef\0A\0ATestcase to trigger error recovery code on genwqe card:\0A   Fatal GFIR:\0A     genwqe_poke -C0 0x00000008 0x001\0A   Info GFIR by writing to VF:\0A     genwqe_poke -C2 0x00020020 0x800\0A\0A   Registers for Capi card (-A CAPI)\0A     FIR Reg:      0x1000 ... 0x1028, 6 Regs\0A     Err. Inj Reg: 0x1800 and 0x1808\0A     Agr. Regs:    0x2000 and 0x2078\0A     Gzip Regs:    0x2100 and 0x2178\0A\0A   Only CAPI (debugging):\0A     genwqe_poke -ACAPI -C0 --psl-bar=2 --width=64 --mask <mask> <offs> <data>\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"/sys/class/cxl/card%u/device/resource%u\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"err: Can not open %s %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"err: Can not mmap %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"err: Illegal width %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !28 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.card_dev_t*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !49, metadata !50), !dbg !51
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !52, metadata !50), !dbg !53
  call void @llvm.dbg.declare(metadata i32* %6, metadata !54, metadata !50), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %7, metadata !56, metadata !50), !dbg !57
  call void @llvm.dbg.declare(metadata i32* %8, metadata !58, metadata !50), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %9, metadata !60, metadata !50), !dbg !61
  store i32 0, i32* %9, align 4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %10, metadata !62, metadata !50), !dbg !63
  store i32 0, i32* %10, align 4, !dbg !63
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %11, metadata !64, metadata !50), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %12, metadata !70, metadata !50), !dbg !71
  store i32 0, i32* %12, align 4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %13, metadata !72, metadata !50), !dbg !73
  store i32 -1, i32* %13, align 4, !dbg !73
  call void @llvm.dbg.declare(metadata i32* %14, metadata !74, metadata !50), !dbg !75
  store i32 64, i32* %14, align 4, !dbg !75
  call void @llvm.dbg.declare(metadata i32* %15, metadata !76, metadata !50), !dbg !77
  store i32 0, i32* %15, align 4, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %16, metadata !78, metadata !50), !dbg !79
  call void @llvm.dbg.declare(metadata i64* %17, metadata !80, metadata !50), !dbg !81
  call void @llvm.dbg.declare(metadata i64* %18, metadata !82, metadata !50), !dbg !83
  call void @llvm.dbg.declare(metadata i64* %19, metadata !84, metadata !50), !dbg !85
  store i64 0, i64* %19, align 8, !dbg !85
  call void @llvm.dbg.declare(metadata i64* %20, metadata !86, metadata !50), !dbg !87
  call void @llvm.dbg.declare(metadata i64* %21, metadata !88, metadata !50), !dbg !89
  store i64 1, i64* %21, align 8, !dbg !89
  call void @llvm.dbg.declare(metadata i64* %22, metadata !90, metadata !50), !dbg !91
  store i64 0, i64* %22, align 8, !dbg !91
  call void @llvm.dbg.declare(metadata i32* %23, metadata !92, metadata !50), !dbg !93
  store i32 2, i32* %23, align 4, !dbg !93
  call void @llvm.dbg.declare(metadata i32* %24, metadata !94, metadata !50), !dbg !95
  store i32 -1, i32* %24, align 4, !dbg !95
  call void @llvm.dbg.declare(metadata i32* %25, metadata !96, metadata !50), !dbg !97
  br label %27, !dbg !98

; <label>:27:                                     ; preds = %2, %95
  call void @llvm.dbg.declare(metadata i32* %26, metadata !99, metadata !50), !dbg !101
  store i32 0, i32* %26, align 4, !dbg !101
  %28 = load i32, i32* %4, align 4, !dbg !102
  %29 = load i8**, i8*** %5, align 8, !dbg !103
  %30 = call i32 @getopt_long(i32 %28, i8** %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), %struct.option* getelementptr inbounds ([14 x %struct.option], [14 x %struct.option]* @main.long_options, i32 0, i32 0), i32* %26) #8, !dbg !104
  store i32 %30, i32* %6, align 4, !dbg !105
  %31 = load i32, i32* %6, align 4, !dbg !106
  %32 = icmp eq i32 %31, -1, !dbg !108
  br i1 %32, label %33, label %34, !dbg !109

; <label>:33:                                     ; preds = %27
  br label %96, !dbg !110

; <label>:34:                                     ; preds = %27
  %35 = load i32, i32* %6, align 4, !dbg !111
  switch i32 %35, label %91 [
    i32 67, label %36
    i32 65, label %40
    i32 88, label %54
    i32 119, label %58
    i32 112, label %62
    i32 109, label %66
    i32 105, label %69
    i32 99, label %72
    i32 86, label %75
    i32 113, label %78
    i32 114, label %81
    i32 118, label %84
    i32 104, label %87
  ], !dbg !112

; <label>:36:                                     ; preds = %34
  %37 = load i8*, i8** @optarg, align 8, !dbg !113
  %38 = call i64 @strtol(i8* %37, i8** null, i32 0) #8, !dbg !115
  %39 = trunc i64 %38 to i32, !dbg !115
  store i32 %39, i32* %9, align 4, !dbg !116
  br label %95, !dbg !117

; <label>:40:                                     ; preds = %34
  %41 = load i8*, i8** @optarg, align 8, !dbg !118
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)) #9, !dbg !120
  %43 = icmp eq i32 %42, 0, !dbg !121
  br i1 %43, label %44, label %45, !dbg !122

; <label>:44:                                     ; preds = %40
  store i32 0, i32* %10, align 4, !dbg !123
  br label %95, !dbg !125

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** @optarg, align 8, !dbg !126
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)) #9, !dbg !128
  %48 = icmp eq i32 %47, 0, !dbg !129
  br i1 %48, label %49, label %50, !dbg !130

; <label>:49:                                     ; preds = %45
  store i32 2, i32* %10, align 4, !dbg !131
  br label %95, !dbg !133

; <label>:50:                                     ; preds = %45
  %51 = load i8*, i8** @optarg, align 8, !dbg !134
  %52 = call i64 @strtol(i8* %51, i8** null, i32 0) #8, !dbg !135
  %53 = trunc i64 %52 to i32, !dbg !135
  store i32 %53, i32* %10, align 4, !dbg !136
  br label %95, !dbg !137

; <label>:54:                                     ; preds = %34
  %55 = load i8*, i8** @optarg, align 8, !dbg !138
  %56 = call i64 @strtoul(i8* %55, i8** null, i32 0) #8, !dbg !139
  %57 = trunc i64 %56 to i32, !dbg !139
  store i32 %57, i32* %13, align 4, !dbg !140
  br label %95, !dbg !141

; <label>:58:                                     ; preds = %34
  %59 = load i8*, i8** @optarg, align 8, !dbg !142
  %60 = call i64 @strtoul(i8* %59, i8** null, i32 0) #8, !dbg !143
  %61 = trunc i64 %60 to i32, !dbg !143
  store i32 %61, i32* %14, align 4, !dbg !144
  br label %95, !dbg !145

; <label>:62:                                     ; preds = %34
  %63 = load i8*, i8** @optarg, align 8, !dbg !146
  %64 = call i64 @strtol(i8* %63, i8** null, i32 0) #8, !dbg !147
  %65 = trunc i64 %64 to i32, !dbg !147
  store i32 %65, i32* %24, align 4, !dbg !148
  br label %95, !dbg !149

; <label>:66:                                     ; preds = %34
  %67 = load i8*, i8** @optarg, align 8, !dbg !150
  %68 = call i64 @strtoll(i8* %67, i8** null, i32 0) #8, !dbg !151
  store i64 %68, i64* %19, align 8, !dbg !152
  br label %95, !dbg !153

; <label>:69:                                     ; preds = %34
  %70 = load i8*, i8** @optarg, align 8, !dbg !154
  %71 = call i64 @strtol(i8* %70, i8** null, i32 0) #8, !dbg !155
  store i64 %71, i64* %22, align 8, !dbg !156
  br label %95, !dbg !157

; <label>:72:                                     ; preds = %34
  %73 = load i8*, i8** @optarg, align 8, !dbg !158
  %74 = call i64 @strtol(i8* %73, i8** null, i32 0) #8, !dbg !159
  store i64 %74, i64* %21, align 8, !dbg !160
  br label %95, !dbg !161

; <label>:75:                                     ; preds = %34
  %76 = load i8*, i8** @version, align 8, !dbg !162
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* %76), !dbg !163
  call void @exit(i32 0) #10, !dbg !164
  unreachable, !dbg !164

; <label>:78:                                     ; preds = %34
  %79 = load i32, i32* @quiet, align 4, !dbg !165
  %80 = add nsw i32 %79, 1, !dbg !165
  store i32 %80, i32* @quiet, align 4, !dbg !165
  br label %95, !dbg !166

; <label>:81:                                     ; preds = %34
  %82 = load i32, i32* %15, align 4, !dbg !167
  %83 = add nsw i32 %82, 1, !dbg !167
  store i32 %83, i32* %15, align 4, !dbg !167
  br label %95, !dbg !168

; <label>:84:                                     ; preds = %34
  %85 = load i32, i32* @verbose_flag, align 4, !dbg !169
  %86 = add nsw i32 %85, 1, !dbg !169
  store i32 %86, i32* @verbose_flag, align 4, !dbg !169
  br label %95, !dbg !170

; <label>:87:                                     ; preds = %34
  %88 = load i8**, i8*** %5, align 8, !dbg !171
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !171
  %90 = load i8*, i8** %89, align 8, !dbg !171
  call void @usage(i8* %90), !dbg !172
  call void @exit(i32 0) #10, !dbg !173
  unreachable, !dbg !173

; <label>:91:                                     ; preds = %34
  %92 = load i8**, i8*** %5, align 8, !dbg !174
  %93 = getelementptr inbounds i8*, i8** %92, i64 0, !dbg !174
  %94 = load i8*, i8** %93, align 8, !dbg !174
  call void @usage(i8* %94), !dbg !175
  call void @exit(i32 1) #10, !dbg !176
  unreachable, !dbg !176

; <label>:95:                                     ; preds = %84, %81, %78, %72, %69, %66, %62, %58, %54, %50, %49, %44, %36
  br label %27, !dbg !177, !llvm.loop !179

; <label>:96:                                     ; preds = %33
  %97 = load i32, i32* @optind, align 4, !dbg !180
  %98 = add nsw i32 %97, 2, !dbg !182
  %99 = load i32, i32* %4, align 4, !dbg !183
  %100 = icmp ne i32 %98, %99, !dbg !184
  br i1 %100, label %101, label %105, !dbg !185

; <label>:101:                                    ; preds = %96
  %102 = load i8**, i8*** %5, align 8, !dbg !186
  %103 = getelementptr inbounds i8*, i8** %102, i64 0, !dbg !186
  %104 = load i8*, i8** %103, align 8, !dbg !186
  call void @usage(i8* %104), !dbg !188
  call void @exit(i32 1) #10, !dbg !189
  unreachable, !dbg !189

; <label>:105:                                    ; preds = %96
  %106 = load i32, i32* @optind, align 4, !dbg !190
  %107 = add nsw i32 %106, 1, !dbg !190
  store i32 %107, i32* @optind, align 4, !dbg !190
  %108 = sext i32 %106 to i64, !dbg !191
  %109 = load i8**, i8*** %5, align 8, !dbg !191
  %110 = getelementptr inbounds i8*, i8** %109, i64 %108, !dbg !191
  %111 = load i8*, i8** %110, align 8, !dbg !191
  %112 = call i64 @strtoull(i8* %111, i8** null, i32 0) #8, !dbg !192
  %113 = trunc i64 %112 to i32, !dbg !192
  store i32 %113, i32* %16, align 4, !dbg !193
  %114 = load i32, i32* @optind, align 4, !dbg !194
  %115 = add nsw i32 %114, 1, !dbg !194
  store i32 %115, i32* @optind, align 4, !dbg !194
  %116 = sext i32 %114 to i64, !dbg !195
  %117 = load i8**, i8*** %5, align 8, !dbg !195
  %118 = getelementptr inbounds i8*, i8** %117, i64 %116, !dbg !195
  %119 = load i8*, i8** %118, align 8, !dbg !195
  %120 = call i64 @strtoull(i8* %119, i8** null, i32 0) #8, !dbg !196
  store i64 %120, i64* %17, align 8, !dbg !197
  %121 = load i64, i64* %17, align 8, !dbg !198
  %122 = xor i64 %121, -1, !dbg !199
  store i64 %122, i64* %18, align 8, !dbg !200
  %123 = load i32, i32* %13, align 4, !dbg !201
  %124 = load i32, i32* @verbose_flag, align 4, !dbg !202
  %125 = call i32 @switch_cpu(i32 %123, i32 %124), !dbg !203
  %126 = load i32, i32* %10, align 4, !dbg !204
  %127 = icmp eq i32 2, %126, !dbg !206
  br i1 %127, label %128, label %140, !dbg !207

; <label>:128:                                    ; preds = %105
  %129 = load i32, i32* %24, align 4, !dbg !208
  %130 = icmp ne i32 %129, -1, !dbg !210
  br i1 %130, label %131, label %140, !dbg !211

; <label>:131:                                    ; preds = %128
  %132 = load i32, i32* %9, align 4, !dbg !212
  %133 = load i32, i32* %24, align 4, !dbg !214
  %134 = load i32, i32* %14, align 4, !dbg !215
  %135 = load i32, i32* %16, align 4, !dbg !216
  %136 = zext i32 %135 to i64, !dbg !216
  %137 = load i64, i64* %17, align 8, !dbg !217
  %138 = load i64, i64* %19, align 8, !dbg !218
  %139 = call i32 @capi_write_psl_bar(i32 %132, i32 %133, i32 %134, i64 %136, i64 %137, i64 %138), !dbg !219
  br label %264, !dbg !220

; <label>:140:                                    ; preds = %128, %105
  %141 = load i32, i32* @verbose_flag, align 4, !dbg !221
  call void @ddcb_debug(i32 %141), !dbg !222
  %142 = load i32, i32* %10, align 4, !dbg !223
  %143 = icmp eq i32 2, %142, !dbg !225
  br i1 %143, label %144, label %147, !dbg !226

; <label>:144:                                    ; preds = %140
  %145 = load i32, i32* %23, align 4, !dbg !227
  %146 = or i32 %145, 134217728, !dbg !227
  store i32 %146, i32* %23, align 4, !dbg !227
  br label %147, !dbg !228

; <label>:147:                                    ; preds = %144, %140
  %148 = load i32, i32* %9, align 4, !dbg !229
  %149 = icmp slt i32 %148, 0, !dbg !231
  br i1 %149, label %153, label %150, !dbg !232

; <label>:150:                                    ; preds = %147
  %151 = load i32, i32* %9, align 4, !dbg !233
  %152 = icmp sgt i32 %151, 4, !dbg !235
  br i1 %152, label %153, label %160, !dbg !236

; <label>:153:                                    ; preds = %150, %147
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !237
  %155 = load i32, i32* %9, align 4, !dbg !239
  %156 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %154, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i32 0, i32 0), i32 %155), !dbg !240
  %157 = load i8**, i8*** %5, align 8, !dbg !241
  %158 = getelementptr inbounds i8*, i8** %157, i64 0, !dbg !241
  %159 = load i8*, i8** %158, align 8, !dbg !241
  call void @usage(i8* %159), !dbg !242
  call void @exit(i32 1) #10, !dbg !243
  unreachable, !dbg !243

; <label>:160:                                    ; preds = %150
  %161 = load i32, i32* %9, align 4, !dbg !244
  %162 = load i32, i32* %10, align 4, !dbg !245
  %163 = load i32, i32* %23, align 4, !dbg !246
  %164 = call %struct.card_dev_t* @accel_open(i32 %161, i32 %162, i32 %163, i32* %12, i64 0, i64 0), !dbg !247
  store %struct.card_dev_t* %164, %struct.card_dev_t** %11, align 8, !dbg !248
  %165 = load %struct.card_dev_t*, %struct.card_dev_t** %11, align 8, !dbg !249
  %166 = icmp eq %struct.card_dev_t* %165, null, !dbg !251
  br i1 %166, label %167, label %176, !dbg !252

; <label>:167:                                    ; preds = %160
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !253
  %169 = load i32, i32* %9, align 4, !dbg !255
  %170 = load i32, i32* %10, align 4, !dbg !256
  %171 = load i32, i32* %12, align 4, !dbg !257
  %172 = load %struct.card_dev_t*, %struct.card_dev_t** %11, align 8, !dbg !258
  %173 = load i32, i32* %12, align 4, !dbg !259
  %174 = call i8* @accel_strerror(%struct.card_dev_t* %172, i32 %173), !dbg !260
  %175 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %168, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i32 %169, i32 %170, i32 %171, i8* %174), !dbg !261
  call void @exit(i32 1) #10, !dbg !262
  unreachable, !dbg !262

; <label>:176:                                    ; preds = %160
  store i64 0, i64* %20, align 8, !dbg !263
  br label %177, !dbg !265

; <label>:177:                                    ; preds = %258, %176
  %178 = load i64, i64* %20, align 8, !dbg !266
  %179 = load i64, i64* %21, align 8, !dbg !269
  %180 = icmp ult i64 %178, %179, !dbg !270
  br i1 %180, label %181, label %261, !dbg !271

; <label>:181:                                    ; preds = %177
  %182 = load i32, i32* %14, align 4, !dbg !272
  switch i32 %182, label %199 [
    i32 32, label %183
    i32 64, label %200
  ], !dbg !274

; <label>:183:                                    ; preds = %181
  %184 = load %struct.card_dev_t*, %struct.card_dev_t** %11, align 8, !dbg !275
  %185 = load i32, i32* %16, align 4, !dbg !277
  %186 = load i64, i64* %17, align 8, !dbg !278
  %187 = trunc i64 %186 to i32, !dbg !279
  %188 = call i32 @accel_write_reg32(%struct.card_dev_t* %184, i32 %185, i32 %187), !dbg !280
  store i32 %188, i32* %7, align 4, !dbg !281
  %189 = call i32* @__errno_location() #1, !dbg !282
  %190 = load i32, i32* %189, align 4, !dbg !283
  store i32 %190, i32* %25, align 4, !dbg !284
  %191 = load i32, i32* %15, align 4, !dbg !285
  %192 = icmp ne i32 %191, 0, !dbg !285
  br i1 %192, label %193, label %198, !dbg !287

; <label>:193:                                    ; preds = %183
  %194 = load %struct.card_dev_t*, %struct.card_dev_t** %11, align 8, !dbg !288
  %195 = load i32, i32* %16, align 4, !dbg !289
  %196 = call i32 @accel_read_reg32(%struct.card_dev_t* %194, i32 %195, i32* %8), !dbg !290
  %197 = zext i32 %196 to i64, !dbg !290
  store i64 %197, i64* %18, align 8, !dbg !291
  br label %198, !dbg !292

; <label>:198:                                    ; preds = %193, %183
  br label %214, !dbg !293

; <label>:199:                                    ; preds = %181
  br label %200, !dbg !294

; <label>:200:                                    ; preds = %181, %199
  %201 = load %struct.card_dev_t*, %struct.card_dev_t** %11, align 8, !dbg !296
  %202 = load i32, i32* %16, align 4, !dbg !297
  %203 = load i64, i64* %17, align 8, !dbg !298
  %204 = call i32 @accel_write_reg64(%struct.card_dev_t* %201, i32 %202, i64 %203), !dbg !299
  store i32 %204, i32* %7, align 4, !dbg !300
  %205 = call i32* @__errno_location() #1, !dbg !301
  %206 = load i32, i32* %205, align 4, !dbg !302
  store i32 %206, i32* %25, align 4, !dbg !303
  %207 = load i32, i32* %15, align 4, !dbg !304
  %208 = icmp ne i32 %207, 0, !dbg !304
  br i1 %208, label %209, label %213, !dbg !306

; <label>:209:                                    ; preds = %200
  %210 = load %struct.card_dev_t*, %struct.card_dev_t** %11, align 8, !dbg !307
  %211 = load i32, i32* %16, align 4, !dbg !308
  %212 = call i64 @accel_read_reg64(%struct.card_dev_t* %210, i32 %211, i32* %8), !dbg !309
  store i64 %212, i64* %18, align 8, !dbg !310
  br label %213, !dbg !311

; <label>:213:                                    ; preds = %209, %200
  br label %214, !dbg !312

; <label>:214:                                    ; preds = %213, %198
  %215 = load i32, i32* %7, align 4, !dbg !313
  %216 = icmp ne i32 %215, 0, !dbg !315
  br i1 %216, label %217, label %229, !dbg !316

; <label>:217:                                    ; preds = %214
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !317
  %219 = load i64, i64* %17, align 8, !dbg !319
  %220 = load i32, i32* %16, align 4, !dbg !320
  %221 = load %struct.card_dev_t*, %struct.card_dev_t** %11, align 8, !dbg !321
  %222 = load i32, i32* %7, align 4, !dbg !322
  %223 = call i8* @accel_strerror(%struct.card_dev_t* %221, i32 %222), !dbg !323
  %224 = load i32, i32* %25, align 4, !dbg !324
  %225 = call i8* @strerror(i32 %224) #8, !dbg !325
  %226 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %218, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i32 0, i32 0), i64 %219, i32 %220, i8* %223, i8* %225), !dbg !327
  %227 = load %struct.card_dev_t*, %struct.card_dev_t** %11, align 8, !dbg !328
  %228 = call i32 @accel_close(%struct.card_dev_t* %227), !dbg !329
  call void @exit(i32 1) #10, !dbg !330
  unreachable, !dbg !330

; <label>:229:                                    ; preds = %214
  %230 = load i32, i32* %15, align 4, !dbg !331
  %231 = icmp ne i32 %230, 0, !dbg !331
  br i1 %231, label %232, label %250, !dbg !333

; <label>:232:                                    ; preds = %229
  %233 = load i32, i32* %8, align 4, !dbg !334
  %234 = icmp ne i32 %233, 0, !dbg !337
  br i1 %234, label %235, label %240, !dbg !338

; <label>:235:                                    ; preds = %232
  %236 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !339
  %237 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %236, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0)), !dbg !341
  %238 = load %struct.card_dev_t*, %struct.card_dev_t** %11, align 8, !dbg !342
  %239 = call i32 @accel_close(%struct.card_dev_t* %238), !dbg !343
  call void @exit(i32 1) #10, !dbg !344
  unreachable, !dbg !344

; <label>:240:                                    ; preds = %232
  %241 = load i64, i64* %17, align 8, !dbg !345
  %242 = load i64, i64* %18, align 8, !dbg !347
  %243 = icmp ne i64 %241, %242, !dbg !348
  br i1 %243, label %244, label %249, !dbg !349

; <label>:244:                                    ; preds = %240
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !350
  %246 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %245, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0)), !dbg !352
  %247 = load %struct.card_dev_t*, %struct.card_dev_t** %11, align 8, !dbg !353
  %248 = call i32 @accel_close(%struct.card_dev_t* %247), !dbg !354
  call void @exit(i32 1) #10, !dbg !355
  unreachable, !dbg !355

; <label>:249:                                    ; preds = %240
  br label %250, !dbg !356

; <label>:250:                                    ; preds = %249, %229
  %251 = load i64, i64* %22, align 8, !dbg !357
  %252 = icmp ne i64 %251, 0, !dbg !357
  br i1 %252, label %253, label %257, !dbg !359

; <label>:253:                                    ; preds = %250
  %254 = load i64, i64* %22, align 8, !dbg !360
  %255 = trunc i64 %254 to i32, !dbg !360
  %256 = call i32 @usleep(i32 %255), !dbg !361
  br label %257, !dbg !361

; <label>:257:                                    ; preds = %253, %250
  br label %258, !dbg !362

; <label>:258:                                    ; preds = %257
  %259 = load i64, i64* %20, align 8, !dbg !363
  %260 = add i64 %259, 1, !dbg !363
  store i64 %260, i64* %20, align 8, !dbg !363
  br label %177, !dbg !365, !llvm.loop !366

; <label>:261:                                    ; preds = %177
  %262 = load %struct.card_dev_t*, %struct.card_dev_t** %11, align 8, !dbg !368
  %263 = call i32 @accel_close(%struct.card_dev_t* %262), !dbg !369
  br label %264, !dbg !369

; <label>:264:                                    ; preds = %261, %131
  %265 = load i32, i32* @quiet, align 4, !dbg !370
  %266 = icmp ne i32 %265, 0, !dbg !370
  br i1 %266, label %271, label %267, !dbg !372

; <label>:267:                                    ; preds = %264
  %268 = load i32, i32* %16, align 4, !dbg !373
  %269 = load i64, i64* %17, align 8, !dbg !374
  %270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i32 %268, i64 %269), !dbg !375
  br label %271, !dbg !375

; <label>:271:                                    ; preds = %267, %264
  call void @exit(i32 0) #10, !dbg !376
  unreachable, !dbg !376
                                                  ; No predecessors!
  %273 = load i32, i32* %3, align 4, !dbg !377
  ret i32 %273, !dbg !377
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #2

; Function Attrs: nounwind
declare i64 @strtoll(i8*, i8**, i32) #2

declare i32 @printf(i8*, ...) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind uwtable
define internal void @usage(i8*) #0 !dbg !378 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !381, metadata !50), !dbg !382
  %3 = load i8*, i8** %2, align 8, !dbg !383
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1148 x i8], [1148 x i8]* @.str.24, i32 0, i32 0), i8* %3), !dbg !384
  ret void, !dbg !385
}

; Function Attrs: nounwind
declare i64 @strtoull(i8*, i8**, i32) #2

declare i32 @switch_cpu(i32, i32) #4

; Function Attrs: nounwind uwtable
define internal i32 @capi_write_psl_bar(i32, i32, i32, i64, i64, i64) #0 !dbg !386 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.stat, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca [128 x i8], align 16
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !394, metadata !50), !dbg !395
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !396, metadata !50), !dbg !397
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !398, metadata !50), !dbg !399
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !400, metadata !50), !dbg !401
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !402, metadata !50), !dbg !403
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !404, metadata !50), !dbg !405
  call void @llvm.dbg.declare(metadata i32* %13, metadata !406, metadata !50), !dbg !407
  call void @llvm.dbg.declare(metadata i32* %14, metadata !408, metadata !50), !dbg !409
  store i32 0, i32* %14, align 4, !dbg !409
  call void @llvm.dbg.declare(metadata %struct.stat* %15, metadata !410, metadata !50), !dbg !447
  call void @llvm.dbg.declare(metadata i8** %16, metadata !448, metadata !50), !dbg !449
  call void @llvm.dbg.declare(metadata i8** %17, metadata !450, metadata !50), !dbg !451
  call void @llvm.dbg.declare(metadata i64* %18, metadata !452, metadata !50), !dbg !453
  call void @llvm.dbg.declare(metadata [128 x i8]* %19, metadata !454, metadata !50), !dbg !458
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i32 0, i32 0, !dbg !459
  %21 = load i32, i32* %7, align 4, !dbg !460
  %22 = load i32, i32* %8, align 4, !dbg !461
  %23 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i32 0, i32 0), i32 %21, i32 %22) #8, !dbg !462
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i32 0, i32 0, !dbg !463
  %25 = call i32 (i8*, i32, ...) @open(i8* %24, i32 2), !dbg !464
  store i32 %25, i32* %13, align 4, !dbg !465
  %26 = load i32, i32* %13, align 4, !dbg !466
  %27 = icmp slt i32 %26, 0, !dbg !468
  br i1 %27, label %28, label %35, !dbg !469

; <label>:28:                                     ; preds = %6
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !470
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i32 0, i32 0, !dbg !472
  %31 = call i32* @__errno_location() #1, !dbg !473
  %32 = load i32, i32* %31, align 4, !dbg !474
  %33 = call i8* @strerror(i32 %32) #8, !dbg !475
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), i8* %30, i8* %33), !dbg !477
  call void @exit(i32 1) #10, !dbg !478
  unreachable, !dbg !478

; <label>:35:                                     ; preds = %6
  %36 = load i32, i32* %13, align 4, !dbg !479
  %37 = call i32 @fstat(i32 %36, %struct.stat* %15) #8, !dbg !480
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 8, !dbg !481
  %39 = load i64, i64* %38, align 8, !dbg !481
  %40 = load i32, i32* %13, align 4, !dbg !482
  %41 = call i8* @mmap(i8* null, i64 %39, i32 3, i32 1, i32 %40, i64 0) #8, !dbg !483
  store i8* %41, i8** %16, align 8, !dbg !484
  %42 = load i8*, i8** %16, align 8, !dbg !485
  %43 = icmp eq i8* %42, inttoptr (i64 -1 to i8*), !dbg !487
  br i1 %43, label %44, label %48, !dbg !488

; <label>:44:                                     ; preds = %35
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !489
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i32 0, i32 0, !dbg !491
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0), i8* %46), !dbg !492
  call void @exit(i32 1) #10, !dbg !493
  unreachable, !dbg !493

; <label>:48:                                     ; preds = %35
  %49 = load i8*, i8** %16, align 8, !dbg !494
  %50 = load i64, i64* %10, align 8, !dbg !495
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 8, !dbg !496
  %52 = load i64, i64* %51, align 8, !dbg !496
  %53 = sub nsw i64 %52, 1, !dbg !497
  %54 = and i64 %50, %53, !dbg !498
  %55 = getelementptr i8, i8* %49, i64 %54, !dbg !499
  store i8* %55, i8** %17, align 8, !dbg !500
  %56 = load i32, i32* %9, align 4, !dbg !501
  switch i32 %56, label %113 [
    i32 32, label %57
    i32 64, label %86
  ], !dbg !502

; <label>:57:                                     ; preds = %48
  %58 = load i64, i64* %12, align 8, !dbg !503
  %59 = icmp eq i64 %58, 0, !dbg !506
  br i1 %59, label %60, label %66, !dbg !507

; <label>:60:                                     ; preds = %57
  %61 = load i64, i64* %11, align 8, !dbg !508
  %62 = trunc i64 %61 to i32, !dbg !509
  %63 = call i32 @__fswab32(i32 %62), !dbg !510
  %64 = load i8*, i8** %17, align 8, !dbg !511
  %65 = bitcast i8* %64 to i32*, !dbg !512
  store i32 %63, i32* %65, align 4, !dbg !513
  br label %85, !dbg !514

; <label>:66:                                     ; preds = %57
  %67 = load i8*, i8** %17, align 8, !dbg !515
  %68 = bitcast i8* %67 to i32*, !dbg !517
  %69 = load i32, i32* %68, align 4, !dbg !518
  %70 = call i32 @__fswab32(i32 %69), !dbg !519
  %71 = zext i32 %70 to i64, !dbg !518
  store i64 %71, i64* %18, align 8, !dbg !520
  %72 = load i64, i64* %18, align 8, !dbg !521
  %73 = load i64, i64* %12, align 8, !dbg !522
  %74 = xor i64 %73, -1, !dbg !523
  %75 = and i64 %72, %74, !dbg !524
  %76 = load i64, i64* %11, align 8, !dbg !525
  %77 = load i64, i64* %12, align 8, !dbg !526
  %78 = and i64 %76, %77, !dbg !527
  %79 = or i64 %75, %78, !dbg !528
  store i64 %79, i64* %18, align 8, !dbg !529
  %80 = load i64, i64* %18, align 8, !dbg !530
  %81 = trunc i64 %80 to i32, !dbg !531
  %82 = call i32 @__fswab32(i32 %81), !dbg !532
  %83 = load i8*, i8** %17, align 8, !dbg !533
  %84 = bitcast i8* %83 to i32*, !dbg !534
  store i32 %82, i32* %84, align 4, !dbg !535
  br label %85

; <label>:85:                                     ; preds = %66, %60
  br label %117, !dbg !536

; <label>:86:                                     ; preds = %48
  %87 = load i64, i64* %12, align 8, !dbg !537
  %88 = icmp eq i64 %87, 0, !dbg !539
  br i1 %88, label %89, label %94, !dbg !540

; <label>:89:                                     ; preds = %86
  %90 = load i64, i64* %11, align 8, !dbg !541
  %91 = call i64 @__fswab64(i64 %90), !dbg !542
  %92 = load i8*, i8** %17, align 8, !dbg !543
  %93 = bitcast i8* %92 to i64*, !dbg !544
  store i64 %91, i64* %93, align 8, !dbg !545
  br label %112, !dbg !546

; <label>:94:                                     ; preds = %86
  %95 = load i8*, i8** %17, align 8, !dbg !547
  %96 = bitcast i8* %95 to i32*, !dbg !549
  %97 = load i32, i32* %96, align 4, !dbg !550
  %98 = zext i32 %97 to i64, !dbg !551
  %99 = call i64 @__fswab64(i64 %98), !dbg !552
  store i64 %99, i64* %18, align 8, !dbg !553
  %100 = load i64, i64* %18, align 8, !dbg !554
  %101 = load i64, i64* %12, align 8, !dbg !555
  %102 = xor i64 %101, -1, !dbg !556
  %103 = and i64 %100, %102, !dbg !557
  %104 = load i64, i64* %11, align 8, !dbg !558
  %105 = load i64, i64* %12, align 8, !dbg !559
  %106 = and i64 %104, %105, !dbg !560
  %107 = or i64 %103, %106, !dbg !561
  store i64 %107, i64* %18, align 8, !dbg !562
  %108 = load i64, i64* %18, align 8, !dbg !563
  %109 = call i64 @__fswab64(i64 %108), !dbg !564
  %110 = load i8*, i8** %17, align 8, !dbg !565
  %111 = bitcast i8* %110 to i64*, !dbg !566
  store i64 %109, i64* %111, align 8, !dbg !567
  br label %112

; <label>:112:                                    ; preds = %94, %89
  br label %117, !dbg !568

; <label>:113:                                    ; preds = %48
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !569
  %115 = load i32, i32* %9, align 4, !dbg !570
  %116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0), i32 %115), !dbg !571
  store i32 -1, i32* %14, align 4, !dbg !572
  br label %117, !dbg !573

; <label>:117:                                    ; preds = %113, %112, %85
  %118 = load i8*, i8** %16, align 8, !dbg !574
  %119 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 8, !dbg !575
  %120 = load i64, i64* %119, align 8, !dbg !575
  %121 = call i32 @munmap(i8* %118, i64 %120) #8, !dbg !576
  %122 = load i32, i32* %13, align 4, !dbg !577
  %123 = call i32 @close(i32 %122), !dbg !578
  %124 = load i32, i32* %14, align 4, !dbg !579
  ret i32 %124, !dbg !580
}

declare void @ddcb_debug(i32) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

declare %struct.card_dev_t* @accel_open(i32, i32, i32, i32*, i64, i64) #4

declare i8* @accel_strerror(%struct.card_dev_t*, i32) #4

declare i32 @accel_write_reg32(%struct.card_dev_t*, i32, i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i32 @accel_read_reg32(%struct.card_dev_t*, i32, i32*) #4

declare i32 @accel_write_reg64(%struct.card_dev_t*, i32, i64) #4

declare i64 @accel_read_reg64(%struct.card_dev_t*, i32, i32*) #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

declare i32 @accel_close(%struct.card_dev_t*) #4

declare i32 @usleep(i32) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i32 @open(i8*, i32, ...) #4

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #2

; Function Attrs: nounwind
declare i8* @mmap(i8*, i64, i32, i32, i32, i64) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__fswab32(i32) #7 !dbg !581 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !585, metadata !50), !dbg !586
  %3 = load i32, i32* %2, align 4, !dbg !587
  %4 = call i32 @__arch_swab32(i32 %3), !dbg !588
  ret i32 %4, !dbg !589
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @__fswab64(i64) #7 !dbg !590 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !593, metadata !50), !dbg !594
  %3 = load i64, i64* %2, align 8, !dbg !595
  %4 = call i64 @__arch_swab64(i64 %3), !dbg !596
  ret i64 %4, !dbg !597
}

; Function Attrs: nounwind
declare i32 @munmap(i8*, i64) #2

declare i32 @close(i32) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__arch_swab32(i32) #7 !dbg !598 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !600, metadata !50), !dbg !601
  %3 = load i32, i32* %2, align 4, !dbg !602
  %4 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %3) #1, !dbg !603, !srcloc !604
  store i32 %4, i32* %2, align 4, !dbg !603
  %5 = load i32, i32* %2, align 4, !dbg !605
  ret i32 %5, !dbg !606
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @__arch_swab64(i64) #7 !dbg !607 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !608, metadata !50), !dbg !609
  %3 = load i64, i64* %2, align 8, !dbg !610
  %4 = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %3) #1, !dbg !611, !srcloc !612
  store i64 %4, i64* %2, align 8, !dbg !611
  %5 = load i64, i64* %2, align 8, !dbg !613
  ret i64 %5, !dbg !614
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!46, !47}
!llvm.ident = !{!48}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !23)
!1 = !DIFile(filename: "/home/lichi/Desktop/genwqe/[task]tools--genwqe_poke/[inter]tools--genwqe_poke.o.i", directory: "/home/lichi/Desktop")
!2 = !{}
!3 = !{!4, !7, !8, !11, !12, !13, !17, !15, !18, !20, !19}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 51, baseType: !10)
!9 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop")
!10 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!11 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!12 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !14, line: 30, baseType: !15)
!14 = !DIFile(filename: "/usr/include/linux/types.h", directory: "/home/lichi/Desktop")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !16, line: 26, baseType: !10)
!16 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop")
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be64", file: !14, line: 32, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !16, line: 30, baseType: !11)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !9, line: 55, baseType: !22)
!22 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!23 = !{!24, !27, !44, !45}
!24 = distinct !DIGlobalVariable(name: "verbose_flag", scope: !0, file: !25, line: 29, type: !26, isLocal: false, isDefinition: true, variable: i32* @verbose_flag)
!25 = !DIFile(filename: "genwqe_poke.c", directory: "/home/lichi/Desktop")
!26 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!27 = distinct !DIGlobalVariable(name: "long_options", scope: !28, file: !25, line: 178, type: !31, isLocal: true, isDefinition: true, variable: [14 x %struct.option]* @main.long_options)
!28 = distinct !DISubprogram(name: "main", scope: !25, file: !25, line: 157, type: !29, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!29 = !DISubroutineType(types: !30)
!30 = !{!26, !26, !4}
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 3584, align: 64, elements: !42)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !33, line: 104, size: 256, align: 64, elements: !34)
!33 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/lichi/Desktop")
!34 = !{!35, !38, !39, !41}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !32, file: !33, line: 106, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !32, file: !33, line: 109, baseType: !26, size: 32, align: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !32, file: !33, line: 110, baseType: !40, size: 64, align: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !32, file: !33, line: 111, baseType: !26, size: 32, align: 32, offset: 192)
!42 = !{!43}
!43 = !DISubrange(count: 14)
!44 = distinct !DIGlobalVariable(name: "version", scope: !0, file: !25, line: 31, type: !36, isLocal: true, isDefinition: true, variable: i8** @version)
!45 = distinct !DIGlobalVariable(name: "quiet", scope: !0, file: !25, line: 30, type: !26, isLocal: true, isDefinition: true, variable: i32* @quiet)
!46 = !{i32 2, !"Dwarf Version", i32 4}
!47 = !{i32 2, !"Debug Info Version", i32 3}
!48 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!49 = !DILocalVariable(name: "argc", arg: 1, scope: !28, file: !25, line: 157, type: !26)
!50 = !DIExpression()
!51 = !DILocation(line: 157, column: 14, scope: !28)
!52 = !DILocalVariable(name: "argv", arg: 2, scope: !28, file: !25, line: 157, type: !4)
!53 = !DILocation(line: 157, column: 26, scope: !28)
!54 = !DILocalVariable(name: "ch", scope: !28, file: !25, line: 159, type: !26)
!55 = !DILocation(line: 159, column: 6, scope: !28)
!56 = !DILocalVariable(name: "rc", scope: !28, file: !25, line: 159, type: !26)
!57 = !DILocation(line: 159, column: 10, scope: !28)
!58 = !DILocalVariable(name: "rbrc", scope: !28, file: !25, line: 159, type: !26)
!59 = !DILocation(line: 159, column: 14, scope: !28)
!60 = !DILocalVariable(name: "card_no", scope: !28, file: !25, line: 160, type: !26)
!61 = !DILocation(line: 160, column: 6, scope: !28)
!62 = !DILocalVariable(name: "card_type", scope: !28, file: !25, line: 161, type: !26)
!63 = !DILocation(line: 161, column: 6, scope: !28)
!64 = !DILocalVariable(name: "card", scope: !28, file: !25, line: 162, type: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "accel_t", file: !66, line: 198, baseType: !67)
!66 = !DIFile(filename: "../include/libddcb.h", directory: "/home/lichi/Desktop")
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "card_dev_t", file: !66, line: 198, flags: DIFlagFwdDecl)
!69 = !DILocation(line: 162, column: 10, scope: !28)
!70 = !DILocalVariable(name: "err_code", scope: !28, file: !25, line: 163, type: !26)
!71 = !DILocation(line: 163, column: 6, scope: !28)
!72 = !DILocalVariable(name: "cpu", scope: !28, file: !25, line: 164, type: !26)
!73 = !DILocation(line: 164, column: 6, scope: !28)
!74 = !DILocalVariable(name: "width", scope: !28, file: !25, line: 165, type: !26)
!75 = !DILocation(line: 165, column: 6, scope: !28)
!76 = !DILocalVariable(name: "rd_back", scope: !28, file: !25, line: 166, type: !26)
!77 = !DILocation(line: 166, column: 6, scope: !28)
!78 = !DILocalVariable(name: "offs", scope: !28, file: !25, line: 167, type: !8)
!79 = !DILocation(line: 167, column: 11, scope: !28)
!80 = !DILocalVariable(name: "val", scope: !28, file: !25, line: 168, type: !21)
!81 = !DILocation(line: 168, column: 11, scope: !28)
!82 = !DILocalVariable(name: "rbval", scope: !28, file: !25, line: 168, type: !21)
!83 = !DILocation(line: 168, column: 16, scope: !28)
!84 = !DILocalVariable(name: "mask", scope: !28, file: !25, line: 169, type: !21)
!85 = !DILocation(line: 169, column: 11, scope: !28)
!86 = !DILocalVariable(name: "i", scope: !28, file: !25, line: 170, type: !22)
!87 = !DILocation(line: 170, column: 16, scope: !28)
!88 = !DILocalVariable(name: "count", scope: !28, file: !25, line: 170, type: !22)
!89 = !DILocation(line: 170, column: 19, scope: !28)
!90 = !DILocalVariable(name: "interval", scope: !28, file: !25, line: 171, type: !22)
!91 = !DILocation(line: 171, column: 16, scope: !28)
!92 = !DILocalVariable(name: "mode", scope: !28, file: !25, line: 172, type: !26)
!93 = !DILocation(line: 172, column: 6, scope: !28)
!94 = !DILocalVariable(name: "psl_bar", scope: !28, file: !25, line: 173, type: !26)
!95 = !DILocation(line: 173, column: 6, scope: !28)
!96 = !DILocalVariable(name: "xerrno", scope: !28, file: !25, line: 174, type: !26)
!97 = !DILocation(line: 174, column: 6, scope: !28)
!98 = !DILocation(line: 176, column: 2, scope: !28)
!99 = !DILocalVariable(name: "option_index", scope: !100, file: !25, line: 177, type: !26)
!100 = distinct !DILexicalBlock(scope: !28, file: !25, line: 176, column: 12)
!101 = !DILocation(line: 177, column: 7, scope: !100)
!102 = !DILocation(line: 204, column: 20, scope: !100)
!103 = !DILocation(line: 204, column: 26, scope: !100)
!104 = !DILocation(line: 204, column: 8, scope: !100)
!105 = !DILocation(line: 204, column: 6, scope: !100)
!106 = !DILocation(line: 206, column: 7, scope: !107)
!107 = distinct !DILexicalBlock(scope: !100, file: !25, line: 206, column: 7)
!108 = !DILocation(line: 206, column: 10, scope: !107)
!109 = !DILocation(line: 206, column: 7, scope: !100)
!110 = !DILocation(line: 207, column: 4, scope: !107)
!111 = !DILocation(line: 209, column: 11, scope: !100)
!112 = !DILocation(line: 209, column: 3, scope: !100)
!113 = !DILocation(line: 212, column: 21, scope: !114)
!114 = distinct !DILexicalBlock(scope: !100, file: !25, line: 209, column: 15)
!115 = !DILocation(line: 212, column: 14, scope: !114)
!116 = !DILocation(line: 212, column: 12, scope: !114)
!117 = !DILocation(line: 213, column: 4, scope: !114)
!118 = !DILocation(line: 215, column: 15, scope: !119)
!119 = distinct !DILexicalBlock(scope: !114, file: !25, line: 215, column: 8)
!120 = !DILocation(line: 215, column: 8, scope: !119)
!121 = !DILocation(line: 215, column: 33, scope: !119)
!122 = !DILocation(line: 215, column: 8, scope: !114)
!123 = !DILocation(line: 216, column: 15, scope: !124)
!124 = distinct !DILexicalBlock(scope: !119, file: !25, line: 215, column: 39)
!125 = !DILocation(line: 217, column: 5, scope: !124)
!126 = !DILocation(line: 219, column: 15, scope: !127)
!127 = distinct !DILexicalBlock(scope: !114, file: !25, line: 219, column: 8)
!128 = !DILocation(line: 219, column: 8, scope: !127)
!129 = !DILocation(line: 219, column: 31, scope: !127)
!130 = !DILocation(line: 219, column: 8, scope: !114)
!131 = !DILocation(line: 220, column: 15, scope: !132)
!132 = distinct !DILexicalBlock(scope: !127, file: !25, line: 219, column: 37)
!133 = !DILocation(line: 221, column: 5, scope: !132)
!134 = !DILocation(line: 223, column: 23, scope: !114)
!135 = !DILocation(line: 223, column: 16, scope: !114)
!136 = !DILocation(line: 223, column: 14, scope: !114)
!137 = !DILocation(line: 224, column: 4, scope: !114)
!138 = !DILocation(line: 226, column: 18, scope: !114)
!139 = !DILocation(line: 226, column: 10, scope: !114)
!140 = !DILocation(line: 226, column: 8, scope: !114)
!141 = !DILocation(line: 227, column: 4, scope: !114)
!142 = !DILocation(line: 229, column: 20, scope: !114)
!143 = !DILocation(line: 229, column: 12, scope: !114)
!144 = !DILocation(line: 229, column: 10, scope: !114)
!145 = !DILocation(line: 230, column: 4, scope: !114)
!146 = !DILocation(line: 232, column: 21, scope: !114)
!147 = !DILocation(line: 232, column: 14, scope: !114)
!148 = !DILocation(line: 232, column: 12, scope: !114)
!149 = !DILocation(line: 233, column: 4, scope: !114)
!150 = !DILocation(line: 235, column: 19, scope: !114)
!151 = !DILocation(line: 235, column: 11, scope: !114)
!152 = !DILocation(line: 235, column: 9, scope: !114)
!153 = !DILocation(line: 236, column: 4, scope: !114)
!154 = !DILocation(line: 238, column: 22, scope: !114)
!155 = !DILocation(line: 238, column: 15, scope: !114)
!156 = !DILocation(line: 238, column: 13, scope: !114)
!157 = !DILocation(line: 239, column: 4, scope: !114)
!158 = !DILocation(line: 241, column: 19, scope: !114)
!159 = !DILocation(line: 241, column: 12, scope: !114)
!160 = !DILocation(line: 241, column: 10, scope: !114)
!161 = !DILocation(line: 242, column: 4, scope: !114)
!162 = !DILocation(line: 245, column: 19, scope: !114)
!163 = !DILocation(line: 245, column: 4, scope: !114)
!164 = !DILocation(line: 246, column: 4, scope: !114)
!165 = !DILocation(line: 248, column: 9, scope: !114)
!166 = !DILocation(line: 249, column: 4, scope: !114)
!167 = !DILocation(line: 251, column: 11, scope: !114)
!168 = !DILocation(line: 252, column: 4, scope: !114)
!169 = !DILocation(line: 254, column: 16, scope: !114)
!170 = !DILocation(line: 255, column: 4, scope: !114)
!171 = !DILocation(line: 257, column: 10, scope: !114)
!172 = !DILocation(line: 257, column: 4, scope: !114)
!173 = !DILocation(line: 258, column: 4, scope: !114)
!174 = !DILocation(line: 262, column: 10, scope: !114)
!175 = !DILocation(line: 262, column: 4, scope: !114)
!176 = !DILocation(line: 263, column: 4, scope: !114)
!177 = !DILocation(line: 176, column: 2, scope: !178)
!178 = !DILexicalBlockFile(scope: !28, file: !25, discriminator: 1)
!179 = distinct !{!179, !98}
!180 = !DILocation(line: 267, column: 6, scope: !181)
!181 = distinct !DILexicalBlock(scope: !28, file: !25, line: 267, column: 6)
!182 = !DILocation(line: 267, column: 13, scope: !181)
!183 = !DILocation(line: 267, column: 20, scope: !181)
!184 = !DILocation(line: 267, column: 17, scope: !181)
!185 = !DILocation(line: 267, column: 6, scope: !28)
!186 = !DILocation(line: 268, column: 9, scope: !187)
!187 = distinct !DILexicalBlock(scope: !181, file: !25, line: 267, column: 26)
!188 = !DILocation(line: 268, column: 3, scope: !187)
!189 = !DILocation(line: 269, column: 3, scope: !187)
!190 = !DILocation(line: 272, column: 29, scope: !28)
!191 = !DILocation(line: 272, column: 18, scope: !28)
!192 = !DILocation(line: 272, column: 9, scope: !28)
!193 = !DILocation(line: 272, column: 7, scope: !28)
!194 = !DILocation(line: 273, column: 28, scope: !28)
!195 = !DILocation(line: 273, column: 17, scope: !28)
!196 = !DILocation(line: 273, column: 8, scope: !28)
!197 = !DILocation(line: 273, column: 6, scope: !28)
!198 = !DILocation(line: 274, column: 11, scope: !28)
!199 = !DILocation(line: 274, column: 10, scope: !28)
!200 = !DILocation(line: 274, column: 8, scope: !28)
!201 = !DILocation(line: 275, column: 13, scope: !28)
!202 = !DILocation(line: 275, column: 18, scope: !28)
!203 = !DILocation(line: 275, column: 2, scope: !28)
!204 = !DILocation(line: 277, column: 17, scope: !205)
!205 = distinct !DILexicalBlock(scope: !28, file: !25, line: 277, column: 6)
!206 = !DILocation(line: 277, column: 14, scope: !205)
!207 = !DILocation(line: 277, column: 28, scope: !205)
!208 = !DILocation(line: 277, column: 32, scope: !209)
!209 = !DILexicalBlockFile(scope: !205, file: !25, discriminator: 1)
!210 = !DILocation(line: 277, column: 40, scope: !209)
!211 = !DILocation(line: 277, column: 6, scope: !209)
!212 = !DILocation(line: 278, column: 22, scope: !213)
!213 = distinct !DILexicalBlock(scope: !205, file: !25, line: 277, column: 48)
!214 = !DILocation(line: 278, column: 31, scope: !213)
!215 = !DILocation(line: 278, column: 40, scope: !213)
!216 = !DILocation(line: 278, column: 47, scope: !213)
!217 = !DILocation(line: 278, column: 53, scope: !213)
!218 = !DILocation(line: 278, column: 58, scope: !213)
!219 = !DILocation(line: 278, column: 3, scope: !213)
!220 = !DILocation(line: 279, column: 3, scope: !213)
!221 = !DILocation(line: 282, column: 13, scope: !28)
!222 = !DILocation(line: 282, column: 2, scope: !28)
!223 = !DILocation(line: 285, column: 16, scope: !224)
!224 = distinct !DILexicalBlock(scope: !28, file: !25, line: 285, column: 6)
!225 = !DILocation(line: 285, column: 13, scope: !224)
!226 = !DILocation(line: 285, column: 6, scope: !28)
!227 = !DILocation(line: 286, column: 8, scope: !224)
!228 = !DILocation(line: 286, column: 3, scope: !224)
!229 = !DILocation(line: 288, column: 7, scope: !230)
!230 = distinct !DILexicalBlock(scope: !28, file: !25, line: 288, column: 6)
!231 = !DILocation(line: 288, column: 15, scope: !230)
!232 = !DILocation(line: 288, column: 20, scope: !230)
!233 = !DILocation(line: 288, column: 24, scope: !234)
!234 = !DILexicalBlockFile(scope: !230, file: !25, discriminator: 1)
!235 = !DILocation(line: 288, column: 32, scope: !234)
!236 = !DILocation(line: 288, column: 6, scope: !234)
!237 = !DILocation(line: 289, column: 10, scope: !238)
!238 = distinct !DILexicalBlock(scope: !230, file: !25, line: 288, column: 38)
!239 = !DILocation(line: 290, column: 4, scope: !238)
!240 = !DILocation(line: 289, column: 3, scope: !238)
!241 = !DILocation(line: 291, column: 9, scope: !238)
!242 = !DILocation(line: 291, column: 3, scope: !238)
!243 = !DILocation(line: 292, column: 3, scope: !238)
!244 = !DILocation(line: 295, column: 20, scope: !28)
!245 = !DILocation(line: 295, column: 29, scope: !28)
!246 = !DILocation(line: 295, column: 40, scope: !28)
!247 = !DILocation(line: 295, column: 9, scope: !28)
!248 = !DILocation(line: 295, column: 7, scope: !28)
!249 = !DILocation(line: 297, column: 6, scope: !250)
!250 = distinct !DILexicalBlock(scope: !28, file: !25, line: 297, column: 6)
!251 = !DILocation(line: 297, column: 11, scope: !250)
!252 = !DILocation(line: 297, column: 6, scope: !28)
!253 = !DILocation(line: 298, column: 10, scope: !254)
!254 = distinct !DILexicalBlock(scope: !250, file: !25, line: 297, column: 19)
!255 = !DILocation(line: 299, column: 17, scope: !254)
!256 = !DILocation(line: 299, column: 26, scope: !254)
!257 = !DILocation(line: 299, column: 37, scope: !254)
!258 = !DILocation(line: 300, column: 19, scope: !254)
!259 = !DILocation(line: 300, column: 25, scope: !254)
!260 = !DILocation(line: 300, column: 4, scope: !254)
!261 = !DILocation(line: 298, column: 3, scope: !254)
!262 = !DILocation(line: 301, column: 3, scope: !254)
!263 = !DILocation(line: 304, column: 9, scope: !264)
!264 = distinct !DILexicalBlock(scope: !28, file: !25, line: 304, column: 2)
!265 = !DILocation(line: 304, column: 7, scope: !264)
!266 = !DILocation(line: 304, column: 14, scope: !267)
!267 = !DILexicalBlockFile(scope: !268, file: !25, discriminator: 1)
!268 = distinct !DILexicalBlock(scope: !264, file: !25, line: 304, column: 2)
!269 = !DILocation(line: 304, column: 18, scope: !267)
!270 = !DILocation(line: 304, column: 16, scope: !267)
!271 = !DILocation(line: 304, column: 2, scope: !267)
!272 = !DILocation(line: 305, column: 11, scope: !273)
!273 = distinct !DILexicalBlock(scope: !268, file: !25, line: 304, column: 30)
!274 = !DILocation(line: 305, column: 3, scope: !273)
!275 = !DILocation(line: 307, column: 27, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !25, line: 305, column: 18)
!277 = !DILocation(line: 307, column: 33, scope: !276)
!278 = !DILocation(line: 307, column: 49, scope: !276)
!279 = !DILocation(line: 307, column: 39, scope: !276)
!280 = !DILocation(line: 307, column: 9, scope: !276)
!281 = !DILocation(line: 307, column: 7, scope: !276)
!282 = !DILocation(line: 308, column: 14, scope: !276)
!283 = !DILocation(line: 308, column: 13, scope: !276)
!284 = !DILocation(line: 308, column: 11, scope: !276)
!285 = !DILocation(line: 309, column: 8, scope: !286)
!286 = distinct !DILexicalBlock(scope: !276, file: !25, line: 309, column: 8)
!287 = !DILocation(line: 309, column: 8, scope: !276)
!288 = !DILocation(line: 310, column: 30, scope: !286)
!289 = !DILocation(line: 310, column: 36, scope: !286)
!290 = !DILocation(line: 310, column: 13, scope: !286)
!291 = !DILocation(line: 310, column: 11, scope: !286)
!292 = !DILocation(line: 310, column: 5, scope: !286)
!293 = !DILocation(line: 311, column: 4, scope: !276)
!294 = !DILocation(line: 311, column: 4, scope: !295)
!295 = !DILexicalBlockFile(scope: !276, file: !25, discriminator: 1)
!296 = !DILocation(line: 314, column: 27, scope: !276)
!297 = !DILocation(line: 314, column: 33, scope: !276)
!298 = !DILocation(line: 314, column: 39, scope: !276)
!299 = !DILocation(line: 314, column: 9, scope: !276)
!300 = !DILocation(line: 314, column: 7, scope: !276)
!301 = !DILocation(line: 315, column: 14, scope: !276)
!302 = !DILocation(line: 315, column: 13, scope: !276)
!303 = !DILocation(line: 315, column: 11, scope: !276)
!304 = !DILocation(line: 316, column: 8, scope: !305)
!305 = distinct !DILexicalBlock(scope: !276, file: !25, line: 316, column: 8)
!306 = !DILocation(line: 316, column: 8, scope: !276)
!307 = !DILocation(line: 317, column: 30, scope: !305)
!308 = !DILocation(line: 317, column: 36, scope: !305)
!309 = !DILocation(line: 317, column: 13, scope: !305)
!310 = !DILocation(line: 317, column: 11, scope: !305)
!311 = !DILocation(line: 317, column: 5, scope: !305)
!312 = !DILocation(line: 318, column: 4, scope: !276)
!313 = !DILocation(line: 321, column: 7, scope: !314)
!314 = distinct !DILexicalBlock(scope: !273, file: !25, line: 321, column: 7)
!315 = !DILocation(line: 321, column: 10, scope: !314)
!316 = !DILocation(line: 321, column: 7, scope: !273)
!317 = !DILocation(line: 322, column: 11, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !25, line: 321, column: 16)
!319 = !DILocation(line: 324, column: 39, scope: !318)
!320 = !DILocation(line: 324, column: 44, scope: !318)
!321 = !DILocation(line: 325, column: 20, scope: !318)
!322 = !DILocation(line: 325, column: 26, scope: !318)
!323 = !DILocation(line: 325, column: 5, scope: !318)
!324 = !DILocation(line: 325, column: 40, scope: !318)
!325 = !DILocation(line: 325, column: 31, scope: !326)
!326 = !DILexicalBlockFile(scope: !318, file: !25, discriminator: 1)
!327 = !DILocation(line: 322, column: 4, scope: !318)
!328 = !DILocation(line: 326, column: 16, scope: !318)
!329 = !DILocation(line: 326, column: 4, scope: !318)
!330 = !DILocation(line: 327, column: 4, scope: !318)
!331 = !DILocation(line: 329, column: 7, scope: !332)
!332 = distinct !DILexicalBlock(scope: !273, file: !25, line: 329, column: 7)
!333 = !DILocation(line: 329, column: 7, scope: !273)
!334 = !DILocation(line: 330, column: 8, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !25, line: 330, column: 8)
!336 = distinct !DILexicalBlock(scope: !332, file: !25, line: 329, column: 16)
!337 = !DILocation(line: 330, column: 13, scope: !335)
!338 = !DILocation(line: 330, column: 8, scope: !336)
!339 = !DILocation(line: 331, column: 12, scope: !340)
!340 = distinct !DILexicalBlock(scope: !335, file: !25, line: 330, column: 19)
!341 = !DILocation(line: 331, column: 5, scope: !340)
!342 = !DILocation(line: 332, column: 17, scope: !340)
!343 = !DILocation(line: 332, column: 5, scope: !340)
!344 = !DILocation(line: 333, column: 5, scope: !340)
!345 = !DILocation(line: 335, column: 8, scope: !346)
!346 = distinct !DILexicalBlock(scope: !336, file: !25, line: 335, column: 8)
!347 = !DILocation(line: 335, column: 15, scope: !346)
!348 = !DILocation(line: 335, column: 12, scope: !346)
!349 = !DILocation(line: 335, column: 8, scope: !336)
!350 = !DILocation(line: 336, column: 12, scope: !351)
!351 = distinct !DILexicalBlock(scope: !346, file: !25, line: 335, column: 22)
!352 = !DILocation(line: 336, column: 5, scope: !351)
!353 = !DILocation(line: 337, column: 17, scope: !351)
!354 = !DILocation(line: 337, column: 5, scope: !351)
!355 = !DILocation(line: 338, column: 5, scope: !351)
!356 = !DILocation(line: 340, column: 3, scope: !336)
!357 = !DILocation(line: 342, column: 7, scope: !358)
!358 = distinct !DILexicalBlock(scope: !273, file: !25, line: 342, column: 7)
!359 = !DILocation(line: 342, column: 7, scope: !273)
!360 = !DILocation(line: 343, column: 11, scope: !358)
!361 = !DILocation(line: 343, column: 4, scope: !358)
!362 = !DILocation(line: 344, column: 2, scope: !273)
!363 = !DILocation(line: 304, column: 26, scope: !364)
!364 = !DILexicalBlockFile(scope: !268, file: !25, discriminator: 2)
!365 = !DILocation(line: 304, column: 2, scope: !364)
!366 = distinct !{!366, !367}
!367 = !DILocation(line: 304, column: 2, scope: !28)
!368 = !DILocation(line: 346, column: 14, scope: !28)
!369 = !DILocation(line: 346, column: 2, scope: !28)
!370 = !DILocation(line: 349, column: 7, scope: !371)
!371 = distinct !DILexicalBlock(scope: !28, file: !25, line: 349, column: 6)
!372 = !DILocation(line: 349, column: 6, scope: !28)
!373 = !DILocation(line: 350, column: 30, scope: !371)
!374 = !DILocation(line: 350, column: 47, scope: !371)
!375 = !DILocation(line: 350, column: 3, scope: !371)
!376 = !DILocation(line: 352, column: 2, scope: !28)
!377 = !DILocation(line: 353, column: 1, scope: !28)
!378 = distinct !DISubprogram(name: "usage", scope: !25, file: !25, line: 47, type: !379, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !36}
!381 = !DILocalVariable(name: "prog", arg: 1, scope: !378, file: !25, line: 47, type: !36)
!382 = !DILocation(line: 47, column: 31, scope: !378)
!383 = !DILocation(line: 82, column: 9, scope: !378)
!384 = !DILocation(line: 49, column: 2, scope: !378)
!385 = !DILocation(line: 83, column: 1, scope: !378)
!386 = distinct !DISubprogram(name: "capi_write_psl_bar", scope: !25, file: !25, line: 95, type: !387, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!387 = !DISubroutineType(types: !388)
!388 = !{!26, !10, !10, !26, !389, !21, !21}
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !390, line: 90, baseType: !391)
!390 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop")
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !392, line: 131, baseType: !393)
!392 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop")
!393 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!394 = !DILocalVariable(name: "card_no", arg: 1, scope: !386, file: !25, line: 95, type: !10)
!395 = !DILocation(line: 95, column: 44, scope: !386)
!396 = !DILocalVariable(name: "res_no", arg: 2, scope: !386, file: !25, line: 95, type: !10)
!397 = !DILocation(line: 95, column: 66, scope: !386)
!398 = !DILocalVariable(name: "width", arg: 3, scope: !386, file: !25, line: 96, type: !26)
!399 = !DILocation(line: 96, column: 14, scope: !386)
!400 = !DILocalVariable(name: "offset", arg: 4, scope: !386, file: !25, line: 96, type: !389)
!401 = !DILocation(line: 96, column: 27, scope: !386)
!402 = !DILocalVariable(name: "val", arg: 5, scope: !386, file: !25, line: 96, type: !21)
!403 = !DILocation(line: 96, column: 44, scope: !386)
!404 = !DILocalVariable(name: "mask", arg: 6, scope: !386, file: !25, line: 97, type: !21)
!405 = !DILocation(line: 97, column: 19, scope: !386)
!406 = !DILocalVariable(name: "fd", scope: !386, file: !25, line: 99, type: !26)
!407 = !DILocation(line: 99, column: 6, scope: !386)
!408 = !DILocalVariable(name: "rc", scope: !386, file: !25, line: 99, type: !26)
!409 = !DILocation(line: 99, column: 10, scope: !386)
!410 = !DILocalVariable(name: "sb", scope: !386, file: !25, line: 100, type: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !412, line: 46, size: 1152, align: 64, elements: !413)
!412 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop")
!413 = !{!414, !416, !418, !420, !422, !424, !426, !427, !428, !429, !431, !433, !441, !442, !443}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !411, file: !412, line: 48, baseType: !415, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !392, line: 124, baseType: !22)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !411, file: !412, line: 53, baseType: !417, size: 64, align: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !392, line: 127, baseType: !22)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !411, file: !412, line: 61, baseType: !419, size: 64, align: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !392, line: 130, baseType: !22)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !411, file: !412, line: 62, baseType: !421, size: 32, align: 32, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !392, line: 129, baseType: !10)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !411, file: !412, line: 64, baseType: !423, size: 32, align: 32, offset: 224)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !392, line: 125, baseType: !10)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !411, file: !412, line: 65, baseType: !425, size: 32, align: 32, offset: 256)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !392, line: 126, baseType: !10)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !411, file: !412, line: 67, baseType: !26, size: 32, align: 32, offset: 288)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !411, file: !412, line: 69, baseType: !415, size: 64, align: 64, offset: 320)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !411, file: !412, line: 74, baseType: !391, size: 64, align: 64, offset: 384)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !411, file: !412, line: 78, baseType: !430, size: 64, align: 64, offset: 448)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !392, line: 153, baseType: !393)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !411, file: !412, line: 80, baseType: !432, size: 64, align: 64, offset: 512)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !392, line: 158, baseType: !393)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !411, file: !412, line: 91, baseType: !434, size: 128, align: 64, offset: 576)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !435, line: 120, size: 128, align: 64, elements: !436)
!435 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop")
!436 = !{!437, !439}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !434, file: !435, line: 122, baseType: !438, size: 64, align: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !392, line: 139, baseType: !393)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !434, file: !435, line: 123, baseType: !440, size: 64, align: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !392, line: 175, baseType: !393)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !411, file: !412, line: 92, baseType: !434, size: 128, align: 64, offset: 704)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !411, file: !412, line: 93, baseType: !434, size: 128, align: 64, offset: 832)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !411, file: !412, line: 106, baseType: !444, size: 192, align: 64, offset: 960)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 192, align: 64, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 3)
!447 = !DILocation(line: 100, column: 14, scope: !386)
!448 = !DILocalVariable(name: "memblk", scope: !386, file: !25, line: 101, type: !7)
!449 = !DILocation(line: 101, column: 8, scope: !386)
!450 = !DILocalVariable(name: "addr", scope: !386, file: !25, line: 101, type: !7)
!451 = !DILocation(line: 101, column: 17, scope: !386)
!452 = !DILocalVariable(name: "val64", scope: !386, file: !25, line: 102, type: !21)
!453 = !DILocation(line: 102, column: 11, scope: !386)
!454 = !DILocalVariable(name: "res", scope: !386, file: !25, line: 103, type: !455)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1024, align: 8, elements: !456)
!456 = !{!457}
!457 = !DISubrange(count: 128)
!458 = !DILocation(line: 103, column: 7, scope: !386)
!459 = !DILocation(line: 105, column: 10, scope: !386)
!460 = !DILocation(line: 106, column: 3, scope: !386)
!461 = !DILocation(line: 106, column: 12, scope: !386)
!462 = !DILocation(line: 105, column: 2, scope: !386)
!463 = !DILocation(line: 108, column: 12, scope: !386)
!464 = !DILocation(line: 108, column: 7, scope: !386)
!465 = !DILocation(line: 108, column: 5, scope: !386)
!466 = !DILocation(line: 109, column: 6, scope: !467)
!467 = distinct !DILexicalBlock(scope: !386, file: !25, line: 109, column: 6)
!468 = !DILocation(line: 109, column: 9, scope: !467)
!469 = !DILocation(line: 109, column: 6, scope: !386)
!470 = !DILocation(line: 110, column: 10, scope: !471)
!471 = distinct !DILexicalBlock(scope: !467, file: !25, line: 109, column: 14)
!472 = !DILocation(line: 111, column: 4, scope: !471)
!473 = !DILocation(line: 111, column: 19, scope: !471)
!474 = !DILocation(line: 111, column: 18, scope: !471)
!475 = !DILocation(line: 111, column: 9, scope: !476)
!476 = !DILexicalBlockFile(scope: !471, file: !25, discriminator: 1)
!477 = !DILocation(line: 110, column: 3, scope: !471)
!478 = !DILocation(line: 112, column: 3, scope: !471)
!479 = !DILocation(line: 115, column: 8, scope: !386)
!480 = !DILocation(line: 115, column: 2, scope: !386)
!481 = !DILocation(line: 116, column: 24, scope: !386)
!482 = !DILocation(line: 117, column: 20, scope: !386)
!483 = !DILocation(line: 116, column: 11, scope: !386)
!484 = !DILocation(line: 116, column: 9, scope: !386)
!485 = !DILocation(line: 118, column: 6, scope: !486)
!486 = distinct !DILexicalBlock(scope: !386, file: !25, line: 118, column: 6)
!487 = !DILocation(line: 118, column: 13, scope: !486)
!488 = !DILocation(line: 118, column: 6, scope: !386)
!489 = !DILocation(line: 119, column: 10, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !25, line: 118, column: 27)
!491 = !DILocation(line: 119, column: 44, scope: !490)
!492 = !DILocation(line: 119, column: 3, scope: !490)
!493 = !DILocation(line: 120, column: 3, scope: !490)
!494 = !DILocation(line: 123, column: 9, scope: !386)
!495 = !DILocation(line: 123, column: 19, scope: !386)
!496 = !DILocation(line: 123, column: 32, scope: !386)
!497 = !DILocation(line: 123, column: 40, scope: !386)
!498 = !DILocation(line: 123, column: 26, scope: !386)
!499 = !DILocation(line: 123, column: 16, scope: !386)
!500 = !DILocation(line: 123, column: 7, scope: !386)
!501 = !DILocation(line: 125, column: 10, scope: !386)
!502 = !DILocation(line: 125, column: 2, scope: !386)
!503 = !DILocation(line: 127, column: 7, scope: !504)
!504 = distinct !DILexicalBlock(scope: !505, file: !25, line: 127, column: 7)
!505 = distinct !DILexicalBlock(scope: !386, file: !25, line: 125, column: 17)
!506 = !DILocation(line: 127, column: 12, scope: !504)
!507 = !DILocation(line: 127, column: 7, scope: !505)
!508 = !DILocation(line: 128, column: 25, scope: !504)
!509 = !DILocation(line: 128, column: 72, scope: !504)
!510 = !DILocation(line: 128, column: 62, scope: !504)
!511 = !DILocation(line: 128, column: 18, scope: !504)
!512 = !DILocation(line: 128, column: 6, scope: !504)
!513 = !DILocation(line: 128, column: 24, scope: !504)
!514 = !DILocation(line: 128, column: 4, scope: !504)
!515 = !DILocation(line: 130, column: 25, scope: !516)
!516 = distinct !DILexicalBlock(scope: !504, file: !25, line: 129, column: 8)
!517 = !DILocation(line: 130, column: 13, scope: !516)
!518 = !DILocation(line: 130, column: 11, scope: !516)
!519 = !DILocation(line: 130, column: 48, scope: !516)
!520 = !DILocation(line: 130, column: 10, scope: !516)
!521 = !DILocation(line: 131, column: 13, scope: !516)
!522 = !DILocation(line: 131, column: 22, scope: !516)
!523 = !DILocation(line: 131, column: 21, scope: !516)
!524 = !DILocation(line: 131, column: 19, scope: !516)
!525 = !DILocation(line: 131, column: 31, scope: !516)
!526 = !DILocation(line: 131, column: 37, scope: !516)
!527 = !DILocation(line: 131, column: 35, scope: !516)
!528 = !DILocation(line: 131, column: 28, scope: !516)
!529 = !DILocation(line: 131, column: 10, scope: !516)
!530 = !DILocation(line: 132, column: 25, scope: !516)
!531 = !DILocation(line: 132, column: 72, scope: !516)
!532 = !DILocation(line: 132, column: 62, scope: !516)
!533 = !DILocation(line: 132, column: 18, scope: !516)
!534 = !DILocation(line: 132, column: 6, scope: !516)
!535 = !DILocation(line: 132, column: 24, scope: !516)
!536 = !DILocation(line: 134, column: 3, scope: !505)
!537 = !DILocation(line: 136, column: 7, scope: !538)
!538 = distinct !DILexicalBlock(scope: !505, file: !25, line: 136, column: 7)
!539 = !DILocation(line: 136, column: 12, scope: !538)
!540 = !DILocation(line: 136, column: 7, scope: !505)
!541 = !DILocation(line: 137, column: 25, scope: !538)
!542 = !DILocation(line: 137, column: 71, scope: !538)
!543 = !DILocation(line: 137, column: 18, scope: !538)
!544 = !DILocation(line: 137, column: 6, scope: !538)
!545 = !DILocation(line: 137, column: 24, scope: !538)
!546 = !DILocation(line: 137, column: 4, scope: !538)
!547 = !DILocation(line: 139, column: 25, scope: !548)
!548 = distinct !DILexicalBlock(scope: !538, file: !25, line: 138, column: 8)
!549 = !DILocation(line: 139, column: 13, scope: !548)
!550 = !DILocation(line: 139, column: 11, scope: !548)
!551 = !DILocation(line: 139, column: 74, scope: !548)
!552 = !DILocation(line: 139, column: 57, scope: !548)
!553 = !DILocation(line: 139, column: 10, scope: !548)
!554 = !DILocation(line: 140, column: 13, scope: !548)
!555 = !DILocation(line: 140, column: 22, scope: !548)
!556 = !DILocation(line: 140, column: 21, scope: !548)
!557 = !DILocation(line: 140, column: 19, scope: !548)
!558 = !DILocation(line: 140, column: 31, scope: !548)
!559 = !DILocation(line: 140, column: 37, scope: !548)
!560 = !DILocation(line: 140, column: 35, scope: !548)
!561 = !DILocation(line: 140, column: 28, scope: !548)
!562 = !DILocation(line: 140, column: 10, scope: !548)
!563 = !DILocation(line: 141, column: 25, scope: !548)
!564 = !DILocation(line: 141, column: 71, scope: !548)
!565 = !DILocation(line: 141, column: 18, scope: !548)
!566 = !DILocation(line: 141, column: 6, scope: !548)
!567 = !DILocation(line: 141, column: 24, scope: !548)
!568 = !DILocation(line: 143, column: 3, scope: !505)
!569 = !DILocation(line: 145, column: 10, scope: !505)
!570 = !DILocation(line: 145, column: 45, scope: !505)
!571 = !DILocation(line: 145, column: 3, scope: !505)
!572 = !DILocation(line: 146, column: 6, scope: !505)
!573 = !DILocation(line: 147, column: 2, scope: !505)
!574 = !DILocation(line: 149, column: 9, scope: !386)
!575 = !DILocation(line: 149, column: 19, scope: !386)
!576 = !DILocation(line: 149, column: 2, scope: !386)
!577 = !DILocation(line: 150, column: 8, scope: !386)
!578 = !DILocation(line: 150, column: 2, scope: !386)
!579 = !DILocation(line: 151, column: 9, scope: !386)
!580 = !DILocation(line: 151, column: 2, scope: !386)
!581 = distinct !DISubprogram(name: "__fswab32", scope: !582, file: !582, line: 57, type: !583, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!582 = !DIFile(filename: "/usr/include/linux/swab.h", directory: "/home/lichi/Desktop")
!583 = !DISubroutineType(types: !584)
!584 = !{!15, !15}
!585 = !DILocalVariable(name: "val", arg: 1, scope: !581, file: !582, line: 57, type: !15)
!586 = !DILocation(line: 57, column: 41, scope: !581)
!587 = !DILocation(line: 62, column: 23, scope: !581)
!588 = !DILocation(line: 62, column: 9, scope: !581)
!589 = !DILocation(line: 62, column: 2, scope: !581)
!590 = distinct !DISubprogram(name: "__fswab64", scope: !582, file: !582, line: 68, type: !591, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!591 = !DISubroutineType(types: !592)
!592 = !{!19, !19}
!593 = !DILocalVariable(name: "val", arg: 1, scope: !590, file: !582, line: 68, type: !19)
!594 = !DILocation(line: 68, column: 41, scope: !590)
!595 = !DILocation(line: 73, column: 23, scope: !590)
!596 = !DILocation(line: 73, column: 9, scope: !590)
!597 = !DILocation(line: 73, column: 2, scope: !590)
!598 = distinct !DISubprogram(name: "__arch_swab32", scope: !599, file: !599, line: 7, type: !583, isLocal: true, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!599 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/asm/swab.h", directory: "/home/lichi/Desktop")
!600 = !DILocalVariable(name: "val", arg: 1, scope: !598, file: !599, line: 7, type: !15)
!601 = !DILocation(line: 7, column: 45, scope: !598)
!602 = !DILocation(line: 9, column: 42, scope: !598)
!603 = !DILocation(line: 9, column: 2, scope: !598)
!604 = !{i32 75742}
!605 = !DILocation(line: 10, column: 9, scope: !598)
!606 = !DILocation(line: 10, column: 2, scope: !598)
!607 = distinct !DISubprogram(name: "__arch_swab64", scope: !599, file: !599, line: 14, type: !591, isLocal: true, isDefinition: true, scopeLine: 15, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!608 = !DILocalVariable(name: "val", arg: 1, scope: !607, file: !599, line: 14, type: !19)
!609 = !DILocation(line: 14, column: 45, scope: !607)
!610 = !DILocation(line: 30, column: 42, scope: !607)
!611 = !DILocation(line: 30, column: 2, scope: !607)
!612 = !{i32 75910}
!613 = !DILocation(line: 31, column: 9, scope: !607)
!614 = !DILocation(line: 31, column: 2, scope: !607)
