; ModuleID = '/home/lichi/Desktop/genwqe/[task]tools--genwqe_peek/[inter]tools--genwqe_peek.o.i'
source_filename = "/home/lichi/Desktop/genwqe/[task]tools--genwqe_peek/[inter]tools--genwqe_peek.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.card_dev_t = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@verbose_flag = global i32 0, align 4
@main.long_options = internal global [15 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 1, i32* null, i32 67 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 1, i32* null, i32 65 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 1, i32* null, i32 88 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 1, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 1, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 1, i32* null, i32 101 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 1, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 1, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 0, i32* null, i32 86 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"card\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"accelerator-type\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"interval\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"must-be\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"must-not-be\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"and-mask\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"psl-bar\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"p:C:A:X:w:i:c:e:n:a:Vqvh\00", align 1
@optarg = external global i8*, align 8
@.str.15 = private unnamed_addr constant [7 x i8] c"GENWQE\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"CAPI\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@version = internal global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), align 8
@optind = external global i32, align 4
@.str.18 = private unnamed_addr constant [33 x i8] c"(%d) is a invalid Card number !\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [45 x i8] c"err: failed to open card %u type %u (%d/%s)\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"err: could not read [%08x] rc=%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"err: [%08x] %016llx != %016llx\0A\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"err: [%08x] %016llx == %016llx\0A\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"[%08x] %016llx\0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"4.0.20-5-g2944\00", align 1
@.str.25 = private unnamed_addr constant [1104 x i8] c"Usage: %s [-h] [-v,--verbose]\0A  -C,--card <cardno> can be (0...3)\0A  -A, --accelerator-type=GENWQE|CAPI CAPI is only available for System p\0A  -V, --version             print version.\0A  -q, --quiet               quiece output.\0A  -w, --width <32|64>       access width, 64: default\0A  -X, --cpu <id>            only run on this CPU.\0A  -i, --interval <intv>     interval in usec, 0: default.\0A  -c, --count <num>         number of peeks do be done, 1: default.\0A  -e, --must-be <value>     compare and exit if not equal.\0A  -n, --must-not-be <value> compare and exit if equal.\0A  -a, --and-mask <value>    mask read value before compare.\0A  -p, --psl-bar <bar>       access PSL bar (CAPI only)\0A  <addr>\0A\0AExample:\0A  genwqe_peek 0x0000\0A  [00000000] 000000021032a178\0A\0A  for CAPI card (-A CAPI)\0A    Reg 0x0000 CAPI Card Version Reg 1 (RO)\0A    Reg 0x0008 CAPI Card Version Reg 2 (RO)\0A    Reg 0x0080 CAPI Card Free Run Timer in 4 nsec (RO)\0A    Reg 0x0180 Queue Work Time in 4 nsec (RO)\0A    Reg 0x1000 ... 0x1028  6 Fir Registers (RW)\0A\0A   Only CAPI (debugging):\0A     genwqe_peek -ACAPI -C0 --psl-bar=2 --width=64 0x150\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"/sys/class/cxl/card%u/device/resource%u\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"err: Can not open %s %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"err: Can not mmap %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"err: Illegal width %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !28 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.card_dev_t*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !48, metadata !49), !dbg !50
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !51, metadata !49), !dbg !52
  call void @llvm.dbg.declare(metadata i32* %6, metadata !53, metadata !49), !dbg !54
  call void @llvm.dbg.declare(metadata i32* %7, metadata !55, metadata !49), !dbg !56
  store i32 0, i32* %7, align 4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %8, metadata !57, metadata !49), !dbg !58
  store i32 0, i32* %8, align 4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %9, metadata !59, metadata !49), !dbg !60
  store i32 0, i32* %9, align 4, !dbg !60
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %10, metadata !61, metadata !49), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %11, metadata !67, metadata !49), !dbg !68
  store i32 0, i32* %11, align 4, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %12, metadata !69, metadata !49), !dbg !70
  store i32 -1, i32* %12, align 4, !dbg !70
  call void @llvm.dbg.declare(metadata i32* %13, metadata !71, metadata !49), !dbg !72
  store i32 64, i32* %13, align 4, !dbg !72
  call void @llvm.dbg.declare(metadata i32* %14, metadata !73, metadata !49), !dbg !74
  call void @llvm.dbg.declare(metadata i64* %15, metadata !75, metadata !49), !dbg !76
  store i64 -1, i64* %15, align 8, !dbg !76
  call void @llvm.dbg.declare(metadata i64* %16, metadata !77, metadata !49), !dbg !78
  store i64 -1, i64* %16, align 8, !dbg !78
  call void @llvm.dbg.declare(metadata i64* %17, metadata !79, metadata !49), !dbg !80
  %28 = load i64, i64* %15, align 8, !dbg !81
  store i64 %28, i64* %17, align 8, !dbg !80
  call void @llvm.dbg.declare(metadata i64* %18, metadata !82, metadata !49), !dbg !83
  %29 = load i64, i64* %15, align 8, !dbg !84
  store i64 %29, i64* %18, align 8, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %19, metadata !85, metadata !49), !dbg !86
  store i32 0, i32* %19, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %20, metadata !87, metadata !49), !dbg !88
  store i32 0, i32* %20, align 4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %21, metadata !89, metadata !49), !dbg !90
  store i32 0, i32* %21, align 4, !dbg !90
  call void @llvm.dbg.declare(metadata i64* %22, metadata !91, metadata !49), !dbg !92
  call void @llvm.dbg.declare(metadata i64* %23, metadata !93, metadata !49), !dbg !94
  store i64 1, i64* %23, align 8, !dbg !94
  call void @llvm.dbg.declare(metadata i64* %24, metadata !95, metadata !49), !dbg !96
  store i64 0, i64* %24, align 8, !dbg !96
  call void @llvm.dbg.declare(metadata i32* %25, metadata !97, metadata !49), !dbg !98
  store i32 2, i32* %25, align 4, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %26, metadata !99, metadata !49), !dbg !100
  store i32 -1, i32* %26, align 4, !dbg !100
  br label %30, !dbg !101

; <label>:30:                                     ; preds = %2, %99
  call void @llvm.dbg.declare(metadata i32* %27, metadata !102, metadata !49), !dbg !104
  store i32 0, i32* %27, align 4, !dbg !104
  %31 = load i32, i32* %4, align 4, !dbg !105
  %32 = load i8**, i8*** %5, align 8, !dbg !106
  %33 = call i32 @getopt_long(i32 %31, i8** %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0), %struct.option* getelementptr inbounds ([15 x %struct.option], [15 x %struct.option]* @main.long_options, i32 0, i32 0), i32* %27) #8, !dbg !107
  store i32 %33, i32* %6, align 4, !dbg !108
  %34 = load i32, i32* %6, align 4, !dbg !109
  %35 = icmp eq i32 %34, -1, !dbg !111
  br i1 %35, label %36, label %37, !dbg !112

; <label>:36:                                     ; preds = %30
  br label %100, !dbg !113

; <label>:37:                                     ; preds = %30
  %38 = load i32, i32* %6, align 4, !dbg !114
  switch i32 %38, label %95 [
    i32 67, label %39
    i32 65, label %43
    i32 88, label %57
    i32 119, label %61
    i32 112, label %65
    i32 105, label %69
    i32 99, label %72
    i32 101, label %75
    i32 110, label %78
    i32 97, label %81
    i32 86, label %84
    i32 113, label %87
    i32 118, label %90
    i32 104, label %91
  ], !dbg !115

; <label>:39:                                     ; preds = %37
  %40 = load i8*, i8** @optarg, align 8, !dbg !116
  %41 = call i64 @strtol(i8* %40, i8** null, i32 0) #8, !dbg !118
  %42 = trunc i64 %41 to i32, !dbg !118
  store i32 %42, i32* %8, align 4, !dbg !119
  br label %99, !dbg !120

; <label>:43:                                     ; preds = %37
  %44 = load i8*, i8** @optarg, align 8, !dbg !121
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)) #9, !dbg !123
  %46 = icmp eq i32 %45, 0, !dbg !124
  br i1 %46, label %47, label %48, !dbg !125

; <label>:47:                                     ; preds = %43
  store i32 0, i32* %9, align 4, !dbg !126
  br label %99, !dbg !128

; <label>:48:                                     ; preds = %43
  %49 = load i8*, i8** @optarg, align 8, !dbg !129
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0)) #9, !dbg !131
  %51 = icmp eq i32 %50, 0, !dbg !132
  br i1 %51, label %52, label %53, !dbg !133

; <label>:52:                                     ; preds = %48
  store i32 2, i32* %9, align 4, !dbg !134
  br label %99, !dbg !136

; <label>:53:                                     ; preds = %48
  %54 = load i8*, i8** @optarg, align 8, !dbg !137
  %55 = call i64 @strtol(i8* %54, i8** null, i32 0) #8, !dbg !138
  %56 = trunc i64 %55 to i32, !dbg !138
  store i32 %56, i32* %9, align 4, !dbg !139
  br label %99, !dbg !140

; <label>:57:                                     ; preds = %37
  %58 = load i8*, i8** @optarg, align 8, !dbg !141
  %59 = call i64 @strtoul(i8* %58, i8** null, i32 0) #8, !dbg !142
  %60 = trunc i64 %59 to i32, !dbg !142
  store i32 %60, i32* %12, align 4, !dbg !143
  br label %99, !dbg !144

; <label>:61:                                     ; preds = %37
  %62 = load i8*, i8** @optarg, align 8, !dbg !145
  %63 = call i64 @strtoul(i8* %62, i8** null, i32 0) #8, !dbg !146
  %64 = trunc i64 %63 to i32, !dbg !146
  store i32 %64, i32* %13, align 4, !dbg !147
  br label %99, !dbg !148

; <label>:65:                                     ; preds = %37
  %66 = load i8*, i8** @optarg, align 8, !dbg !149
  %67 = call i64 @strtol(i8* %66, i8** null, i32 0) #8, !dbg !150
  %68 = trunc i64 %67 to i32, !dbg !150
  store i32 %68, i32* %26, align 4, !dbg !151
  br label %99, !dbg !152

; <label>:69:                                     ; preds = %37
  %70 = load i8*, i8** @optarg, align 8, !dbg !153
  %71 = call i64 @strtol(i8* %70, i8** null, i32 0) #8, !dbg !154
  store i64 %71, i64* %24, align 8, !dbg !155
  br label %99, !dbg !156

; <label>:72:                                     ; preds = %37
  %73 = load i8*, i8** @optarg, align 8, !dbg !157
  %74 = call i64 @strtol(i8* %73, i8** null, i32 0) #8, !dbg !158
  store i64 %74, i64* %23, align 8, !dbg !159
  br label %99, !dbg !160

; <label>:75:                                     ; preds = %37
  store i32 1, i32* %19, align 4, !dbg !161
  %76 = load i8*, i8** @optarg, align 8, !dbg !162
  %77 = call i64 @strtoull(i8* %76, i8** null, i32 0) #8, !dbg !163
  store i64 %77, i64* %17, align 8, !dbg !164
  br label %99, !dbg !165

; <label>:78:                                     ; preds = %37
  store i32 1, i32* %20, align 4, !dbg !166
  %79 = load i8*, i8** @optarg, align 8, !dbg !167
  %80 = call i64 @strtoull(i8* %79, i8** null, i32 0) #8, !dbg !168
  store i64 %80, i64* %18, align 8, !dbg !169
  br label %99, !dbg !170

; <label>:81:                                     ; preds = %37
  %82 = load i8*, i8** @optarg, align 8, !dbg !171
  %83 = call i64 @strtoull(i8* %82, i8** null, i32 0) #8, !dbg !172
  store i64 %83, i64* %16, align 8, !dbg !173
  br label %99, !dbg !174

; <label>:84:                                     ; preds = %37
  %85 = load i8*, i8** @version, align 8, !dbg !175
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* %85), !dbg !176
  call void @exit(i32 0) #10, !dbg !177
  unreachable, !dbg !177

; <label>:87:                                     ; preds = %37
  %88 = load i32, i32* %21, align 4, !dbg !178
  %89 = add nsw i32 %88, 1, !dbg !178
  store i32 %89, i32* %21, align 4, !dbg !178
  br label %99, !dbg !179

; <label>:90:                                     ; preds = %37
  store i32 1, i32* @verbose_flag, align 4, !dbg !180
  br label %99, !dbg !181

; <label>:91:                                     ; preds = %37
  %92 = load i8**, i8*** %5, align 8, !dbg !182
  %93 = getelementptr inbounds i8*, i8** %92, i64 0, !dbg !182
  %94 = load i8*, i8** %93, align 8, !dbg !182
  call void @usage(i8* %94), !dbg !183
  call void @exit(i32 0) #10, !dbg !184
  unreachable, !dbg !184

; <label>:95:                                     ; preds = %37
  %96 = load i8**, i8*** %5, align 8, !dbg !185
  %97 = getelementptr inbounds i8*, i8** %96, i64 0, !dbg !185
  %98 = load i8*, i8** %97, align 8, !dbg !185
  call void @usage(i8* %98), !dbg !186
  call void @exit(i32 1) #10, !dbg !187
  unreachable, !dbg !187

; <label>:99:                                     ; preds = %90, %87, %81, %78, %75, %72, %69, %65, %61, %57, %53, %52, %47, %39
  br label %30, !dbg !188, !llvm.loop !190

; <label>:100:                                    ; preds = %36
  %101 = load i32, i32* @optind, align 4, !dbg !191
  %102 = add nsw i32 %101, 1, !dbg !193
  %103 = load i32, i32* %4, align 4, !dbg !194
  %104 = icmp ne i32 %102, %103, !dbg !195
  br i1 %104, label %105, label %109, !dbg !196

; <label>:105:                                    ; preds = %100
  %106 = load i8**, i8*** %5, align 8, !dbg !197
  %107 = getelementptr inbounds i8*, i8** %106, i64 0, !dbg !197
  %108 = load i8*, i8** %107, align 8, !dbg !197
  call void @usage(i8* %108), !dbg !199
  call void @exit(i32 1) #10, !dbg !200
  unreachable, !dbg !200

; <label>:109:                                    ; preds = %100
  %110 = load i32, i32* @optind, align 4, !dbg !201
  %111 = sext i32 %110 to i64, !dbg !202
  %112 = load i8**, i8*** %5, align 8, !dbg !202
  %113 = getelementptr inbounds i8*, i8** %112, i64 %111, !dbg !202
  %114 = load i8*, i8** %113, align 8, !dbg !202
  %115 = call i64 @strtoull(i8* %114, i8** null, i32 0) #8, !dbg !203
  %116 = trunc i64 %115 to i32, !dbg !203
  store i32 %116, i32* %14, align 4, !dbg !204
  %117 = load i32, i32* %19, align 4, !dbg !205
  %118 = icmp ne i32 %117, 0, !dbg !205
  br i1 %118, label %119, label %126, !dbg !207

; <label>:119:                                    ; preds = %109
  %120 = load i32, i32* %20, align 4, !dbg !208
  %121 = icmp ne i32 %120, 0, !dbg !208
  br i1 %121, label %122, label %126, !dbg !210

; <label>:122:                                    ; preds = %119
  %123 = load i8**, i8*** %5, align 8, !dbg !211
  %124 = getelementptr inbounds i8*, i8** %123, i64 0, !dbg !211
  %125 = load i8*, i8** %124, align 8, !dbg !211
  call void @usage(i8* %125), !dbg !213
  call void @exit(i32 1) #10, !dbg !214
  unreachable, !dbg !214

; <label>:126:                                    ; preds = %119, %109
  %127 = load i32, i32* %12, align 4, !dbg !215
  %128 = load i32, i32* @verbose_flag, align 4, !dbg !216
  %129 = call i32 @switch_cpu(i32 %127, i32 %128), !dbg !217
  %130 = load i32, i32* %9, align 4, !dbg !218
  %131 = icmp eq i32 2, %130, !dbg !220
  br i1 %131, label %132, label %142, !dbg !221

; <label>:132:                                    ; preds = %126
  %133 = load i32, i32* %26, align 4, !dbg !222
  %134 = icmp ne i32 %133, -1, !dbg !224
  br i1 %134, label %135, label %142, !dbg !225

; <label>:135:                                    ; preds = %132
  %136 = load i32, i32* %8, align 4, !dbg !226
  %137 = load i32, i32* %26, align 4, !dbg !228
  %138 = load i32, i32* %13, align 4, !dbg !229
  %139 = load i32, i32* %14, align 4, !dbg !230
  %140 = zext i32 %139 to i64, !dbg !230
  %141 = call i32 @capi_read_psl_bar(i32 %136, i32 %137, i32 %138, i64 %140, i64* %15), !dbg !231
  br label %252, !dbg !232

; <label>:142:                                    ; preds = %132, %126
  %143 = load i32, i32* @verbose_flag, align 4, !dbg !233
  call void @ddcb_debug(i32 %143), !dbg !234
  %144 = load i32, i32* %9, align 4, !dbg !235
  %145 = icmp eq i32 2, %144, !dbg !237
  br i1 %145, label %146, label %149, !dbg !238

; <label>:146:                                    ; preds = %142
  %147 = load i32, i32* %25, align 4, !dbg !239
  %148 = or i32 %147, 134217728, !dbg !239
  store i32 %148, i32* %25, align 4, !dbg !239
  br label %149, !dbg !240

; <label>:149:                                    ; preds = %146, %142
  %150 = load i32, i32* %8, align 4, !dbg !241
  %151 = icmp slt i32 %150, 0, !dbg !243
  br i1 %151, label %155, label %152, !dbg !244

; <label>:152:                                    ; preds = %149
  %153 = load i32, i32* %8, align 4, !dbg !245
  %154 = icmp sgt i32 %153, 4, !dbg !247
  br i1 %154, label %155, label %161, !dbg !248

; <label>:155:                                    ; preds = %152, %149
  %156 = load i32, i32* %8, align 4, !dbg !249
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0), i32 %156), !dbg !251
  %158 = load i8**, i8*** %5, align 8, !dbg !252
  %159 = getelementptr inbounds i8*, i8** %158, i64 0, !dbg !252
  %160 = load i8*, i8** %159, align 8, !dbg !252
  call void @usage(i8* %160), !dbg !253
  call void @exit(i32 1) #10, !dbg !254
  unreachable, !dbg !254

; <label>:161:                                    ; preds = %152
  %162 = load i32, i32* %8, align 4, !dbg !255
  %163 = load i32, i32* %9, align 4, !dbg !256
  %164 = load i32, i32* %25, align 4, !dbg !257
  %165 = call %struct.card_dev_t* @accel_open(i32 %162, i32 %163, i32 %164, i32* %11, i64 0, i64 0), !dbg !258
  store %struct.card_dev_t* %165, %struct.card_dev_t** %10, align 8, !dbg !259
  %166 = load %struct.card_dev_t*, %struct.card_dev_t** %10, align 8, !dbg !260
  %167 = icmp eq %struct.card_dev_t* %166, null, !dbg !262
  br i1 %167, label %168, label %177, !dbg !263

; <label>:168:                                    ; preds = %161
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !264
  %170 = load i32, i32* %8, align 4, !dbg !266
  %171 = load i32, i32* %9, align 4, !dbg !267
  %172 = load i32, i32* %11, align 4, !dbg !268
  %173 = load %struct.card_dev_t*, %struct.card_dev_t** %10, align 8, !dbg !269
  %174 = load i32, i32* %11, align 4, !dbg !270
  %175 = call i8* @accel_strerror(%struct.card_dev_t* %173, i32 %174), !dbg !271
  %176 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %169, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i32 0, i32 0), i32 %170, i32 %171, i32 %172, i8* %175), !dbg !272
  call void @exit(i32 1) #10, !dbg !273
  unreachable, !dbg !273

; <label>:177:                                    ; preds = %161
  store i64 0, i64* %22, align 8, !dbg !274
  br label %178, !dbg !276

; <label>:178:                                    ; preds = %246, %177
  %179 = load i64, i64* %22, align 8, !dbg !277
  %180 = load i64, i64* %23, align 8, !dbg !280
  %181 = icmp ult i64 %179, %180, !dbg !281
  br i1 %181, label %182, label %249, !dbg !282

; <label>:182:                                    ; preds = %178
  %183 = load i32, i32* %13, align 4, !dbg !283
  switch i32 %183, label %189 [
    i32 32, label %184
    i32 64, label %190
  ], !dbg !285

; <label>:184:                                    ; preds = %182
  %185 = load %struct.card_dev_t*, %struct.card_dev_t** %10, align 8, !dbg !286
  %186 = load i32, i32* %14, align 4, !dbg !288
  %187 = call i32 @accel_read_reg32(%struct.card_dev_t* %185, i32 %186, i32* %7), !dbg !289
  %188 = zext i32 %187 to i64, !dbg !289
  store i64 %188, i64* %15, align 8, !dbg !290
  br label %194, !dbg !291

; <label>:189:                                    ; preds = %182
  br label %190, !dbg !292

; <label>:190:                                    ; preds = %182, %189
  %191 = load %struct.card_dev_t*, %struct.card_dev_t** %10, align 8, !dbg !294
  %192 = load i32, i32* %14, align 4, !dbg !295
  %193 = call i64 @accel_read_reg64(%struct.card_dev_t* %191, i32 %192, i32* %7), !dbg !296
  store i64 %193, i64* %15, align 8, !dbg !297
  br label %194, !dbg !298

; <label>:194:                                    ; preds = %190, %184
  %195 = load i32, i32* %7, align 4, !dbg !299
  %196 = icmp ne i32 %195, 0, !dbg !301
  br i1 %196, label %197, label %204, !dbg !302

; <label>:197:                                    ; preds = %194
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !303
  %199 = load i32, i32* %14, align 4, !dbg !305
  %200 = load i32, i32* %7, align 4, !dbg !306
  %201 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %198, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i32 0, i32 0), i32 %199, i32 %200), !dbg !307
  %202 = load %struct.card_dev_t*, %struct.card_dev_t** %10, align 8, !dbg !308
  %203 = call i32 @accel_close(%struct.card_dev_t* %202), !dbg !309
  call void @exit(i32 1) #10, !dbg !310
  unreachable, !dbg !310

; <label>:204:                                    ; preds = %194
  %205 = load i32, i32* %19, align 4, !dbg !311
  %206 = icmp ne i32 %205, 0, !dbg !313
  br i1 %206, label %207, label %221, !dbg !314

; <label>:207:                                    ; preds = %204
  %208 = load i64, i64* %17, align 8, !dbg !315
  %209 = load i64, i64* %15, align 8, !dbg !316
  %210 = load i64, i64* %16, align 8, !dbg !317
  %211 = and i64 %209, %210, !dbg !318
  %212 = icmp ne i64 %208, %211, !dbg !319
  br i1 %212, label %213, label %221, !dbg !320

; <label>:213:                                    ; preds = %207
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !322
  %215 = load i32, i32* %14, align 4, !dbg !324
  %216 = load i64, i64* %15, align 8, !dbg !325
  %217 = load i64, i64* %17, align 8, !dbg !326
  %218 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %214, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i32 0, i32 0), i32 %215, i64 %216, i64 %217), !dbg !327
  %219 = load %struct.card_dev_t*, %struct.card_dev_t** %10, align 8, !dbg !328
  %220 = call i32 @accel_close(%struct.card_dev_t* %219), !dbg !329
  call void @exit(i32 81) #10, !dbg !330
  unreachable, !dbg !330

; <label>:221:                                    ; preds = %207, %204
  %222 = load i32, i32* %20, align 4, !dbg !331
  %223 = icmp ne i32 %222, 0, !dbg !333
  br i1 %223, label %224, label %238, !dbg !334

; <label>:224:                                    ; preds = %221
  %225 = load i64, i64* %18, align 8, !dbg !335
  %226 = load i64, i64* %15, align 8, !dbg !336
  %227 = load i64, i64* %16, align 8, !dbg !337
  %228 = and i64 %226, %227, !dbg !338
  %229 = icmp eq i64 %225, %228, !dbg !339
  br i1 %229, label %230, label %238, !dbg !340

; <label>:230:                                    ; preds = %224
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !341
  %232 = load i32, i32* %14, align 4, !dbg !343
  %233 = load i64, i64* %15, align 8, !dbg !344
  %234 = load i64, i64* %18, align 8, !dbg !345
  %235 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %231, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i32 0, i32 0), i32 %232, i64 %233, i64 %234), !dbg !346
  %236 = load %struct.card_dev_t*, %struct.card_dev_t** %10, align 8, !dbg !347
  %237 = call i32 @accel_close(%struct.card_dev_t* %236), !dbg !348
  call void @exit(i32 81) #10, !dbg !349
  unreachable, !dbg !349

; <label>:238:                                    ; preds = %224, %221
  %239 = load i64, i64* %24, align 8, !dbg !350
  %240 = icmp ne i64 %239, 0, !dbg !350
  br i1 %240, label %241, label %245, !dbg !352

; <label>:241:                                    ; preds = %238
  %242 = load i64, i64* %24, align 8, !dbg !353
  %243 = trunc i64 %242 to i32, !dbg !353
  %244 = call i32 @usleep(i32 %243), !dbg !354
  br label %245, !dbg !354

; <label>:245:                                    ; preds = %241, %238
  br label %246, !dbg !355

; <label>:246:                                    ; preds = %245
  %247 = load i64, i64* %22, align 8, !dbg !356
  %248 = add i64 %247, 1, !dbg !356
  store i64 %248, i64* %22, align 8, !dbg !356
  br label %178, !dbg !358, !llvm.loop !359

; <label>:249:                                    ; preds = %178
  %250 = load %struct.card_dev_t*, %struct.card_dev_t** %10, align 8, !dbg !361
  %251 = call i32 @accel_close(%struct.card_dev_t* %250), !dbg !362
  br label %252, !dbg !362

; <label>:252:                                    ; preds = %249, %135
  %253 = load i32, i32* %21, align 4, !dbg !363
  %254 = icmp ne i32 %253, 0, !dbg !363
  br i1 %254, label %259, label %255, !dbg !365

; <label>:255:                                    ; preds = %252
  %256 = load i32, i32* %14, align 4, !dbg !366
  %257 = load i64, i64* %15, align 8, !dbg !367
  %258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i32 %256, i64 %257), !dbg !368
  br label %259, !dbg !368

; <label>:259:                                    ; preds = %255, %252
  call void @exit(i32 0) #10, !dbg !369
  unreachable, !dbg !369
                                                  ; No predecessors!
  %261 = load i32, i32* %3, align 4, !dbg !370
  ret i32 %261, !dbg !370
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
declare i64 @strtoull(i8*, i8**, i32) #2

declare i32 @printf(i8*, ...) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind uwtable
define internal void @usage(i8*) #0 !dbg !371 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !374, metadata !49), !dbg !375
  %3 = load i8*, i8** %2, align 8, !dbg !376
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1104 x i8], [1104 x i8]* @.str.25, i32 0, i32 0), i8* %3), !dbg !377
  ret void, !dbg !378
}

declare i32 @switch_cpu(i32, i32) #4

; Function Attrs: nounwind uwtable
define internal i32 @capi_read_psl_bar(i32, i32, i32, i64, i64*) #0 !dbg !379 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.stat, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [128 x i8], align 16
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !387, metadata !49), !dbg !388
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !389, metadata !49), !dbg !390
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !391, metadata !49), !dbg !392
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !393, metadata !49), !dbg !394
  store i64* %4, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !395, metadata !49), !dbg !396
  call void @llvm.dbg.declare(metadata i32* %11, metadata !397, metadata !49), !dbg !398
  call void @llvm.dbg.declare(metadata i32* %12, metadata !399, metadata !49), !dbg !400
  store i32 0, i32* %12, align 4, !dbg !400
  call void @llvm.dbg.declare(metadata %struct.stat* %13, metadata !401, metadata !49), !dbg !438
  call void @llvm.dbg.declare(metadata i8** %14, metadata !439, metadata !49), !dbg !440
  call void @llvm.dbg.declare(metadata i8** %15, metadata !441, metadata !49), !dbg !442
  call void @llvm.dbg.declare(metadata [128 x i8]* %16, metadata !443, metadata !49), !dbg !447
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i32 0, i32 0, !dbg !448
  %18 = load i32, i32* %6, align 4, !dbg !449
  %19 = load i32, i32* %7, align 4, !dbg !450
  %20 = call i32 (i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i32 0, i32 0), i32 %18, i32 %19) #8, !dbg !451
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i32 0, i32 0, !dbg !452
  %22 = call i32 (i8*, i32, ...) @open(i8* %21, i32 2), !dbg !453
  store i32 %22, i32* %11, align 4, !dbg !454
  %23 = load i32, i32* %11, align 4, !dbg !455
  %24 = icmp slt i32 %23, 0, !dbg !457
  br i1 %24, label %25, label %32, !dbg !458

; <label>:25:                                     ; preds = %5
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !459
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i32 0, i32 0, !dbg !461
  %28 = call i32* @__errno_location() #1, !dbg !462
  %29 = load i32, i32* %28, align 4, !dbg !463
  %30 = call i8* @strerror(i32 %29) #8, !dbg !464
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0), i8* %27, i8* %30), !dbg !466
  call void @exit(i32 1) #10, !dbg !467
  unreachable, !dbg !467

; <label>:32:                                     ; preds = %5
  %33 = load i32, i32* %11, align 4, !dbg !468
  %34 = call i32 @fstat(i32 %33, %struct.stat* %13) #8, !dbg !469
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 8, !dbg !470
  %36 = load i64, i64* %35, align 8, !dbg !470
  %37 = load i32, i32* %11, align 4, !dbg !471
  %38 = call i8* @mmap(i8* null, i64 %36, i32 3, i32 1, i32 %37, i64 0) #8, !dbg !472
  store i8* %38, i8** %14, align 8, !dbg !473
  %39 = load i8*, i8** %14, align 8, !dbg !474
  %40 = icmp eq i8* %39, inttoptr (i64 -1 to i8*), !dbg !476
  br i1 %40, label %41, label %45, !dbg !477

; <label>:41:                                     ; preds = %32
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !478
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i32 0, i32 0, !dbg !480
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0), i8* %43), !dbg !481
  call void @exit(i32 1) #10, !dbg !482
  unreachable, !dbg !482

; <label>:45:                                     ; preds = %32
  %46 = load i8*, i8** %14, align 8, !dbg !483
  %47 = load i64, i64* %9, align 8, !dbg !484
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 8, !dbg !485
  %49 = load i64, i64* %48, align 8, !dbg !485
  %50 = sub nsw i64 %49, 1, !dbg !486
  %51 = and i64 %47, %50, !dbg !487
  %52 = getelementptr i8, i8* %46, i64 %51, !dbg !488
  store i8* %52, i8** %15, align 8, !dbg !489
  %53 = load i32, i32* %8, align 4, !dbg !490
  switch i32 %53, label %75 [
    i32 32, label %54
    i32 64, label %65
  ], !dbg !491

; <label>:54:                                     ; preds = %45
  %55 = load i64*, i64** %10, align 8, !dbg !492
  %56 = icmp ne i64* %55, null, !dbg !492
  br i1 %56, label %57, label %64, !dbg !495

; <label>:57:                                     ; preds = %54
  %58 = load i8*, i8** %15, align 8, !dbg !496
  %59 = bitcast i8* %58 to i32*, !dbg !497
  %60 = load i32, i32* %59, align 4, !dbg !498
  %61 = call i32 @__fswab32(i32 %60), !dbg !499
  %62 = zext i32 %61 to i64, !dbg !498
  %63 = load i64*, i64** %10, align 8, !dbg !500
  store i64 %62, i64* %63, align 8, !dbg !501
  br label %64, !dbg !502

; <label>:64:                                     ; preds = %57, %54
  br label %79, !dbg !503

; <label>:65:                                     ; preds = %45
  %66 = load i64*, i64** %10, align 8, !dbg !504
  %67 = icmp ne i64* %66, null, !dbg !504
  br i1 %67, label %68, label %74, !dbg !506

; <label>:68:                                     ; preds = %65
  %69 = load i8*, i8** %15, align 8, !dbg !507
  %70 = bitcast i8* %69 to i64*, !dbg !508
  %71 = load i64, i64* %70, align 8, !dbg !509
  %72 = call i64 @__fswab64(i64 %71), !dbg !510
  %73 = load i64*, i64** %10, align 8, !dbg !511
  store i64 %72, i64* %73, align 8, !dbg !512
  br label %74, !dbg !513

; <label>:74:                                     ; preds = %68, %65
  br label %79, !dbg !514

; <label>:75:                                     ; preds = %45
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !515
  %77 = load i32, i32* %8, align 4, !dbg !516
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0), i32 %77), !dbg !517
  store i32 -1, i32* %12, align 4, !dbg !518
  br label %79, !dbg !519

; <label>:79:                                     ; preds = %75, %74, %64
  %80 = load i8*, i8** %14, align 8, !dbg !520
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 8, !dbg !521
  %82 = load i64, i64* %81, align 8, !dbg !521
  %83 = call i32 @munmap(i8* %80, i64 %82) #8, !dbg !522
  %84 = load i32, i32* %11, align 4, !dbg !523
  %85 = call i32 @close(i32 %84), !dbg !524
  %86 = load i32, i32* %12, align 4, !dbg !525
  ret i32 %86, !dbg !526
}

declare void @ddcb_debug(i32) #4

declare %struct.card_dev_t* @accel_open(i32, i32, i32, i32*, i64, i64) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

declare i8* @accel_strerror(%struct.card_dev_t*, i32) #4

declare i32 @accel_read_reg32(%struct.card_dev_t*, i32, i32*) #4

declare i64 @accel_read_reg64(%struct.card_dev_t*, i32, i32*) #4

declare i32 @accel_close(%struct.card_dev_t*) #4

declare i32 @usleep(i32) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i32 @open(i8*, i32, ...) #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #2

; Function Attrs: nounwind
declare i8* @mmap(i8*, i64, i32, i32, i32, i64) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__fswab32(i32) #7 !dbg !527 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !531, metadata !49), !dbg !532
  %3 = load i32, i32* %2, align 4, !dbg !533
  %4 = call i32 @__arch_swab32(i32 %3), !dbg !534
  ret i32 %4, !dbg !535
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @__fswab64(i64) #7 !dbg !536 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !539, metadata !49), !dbg !540
  %3 = load i64, i64* %2, align 8, !dbg !541
  %4 = call i64 @__arch_swab64(i64 %3), !dbg !542
  ret i64 %4, !dbg !543
}

; Function Attrs: nounwind
declare i32 @munmap(i8*, i64) #2

declare i32 @close(i32) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__arch_swab32(i32) #7 !dbg !544 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !546, metadata !49), !dbg !547
  %3 = load i32, i32* %2, align 4, !dbg !548
  %4 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %3) #1, !dbg !549, !srcloc !550
  store i32 %4, i32* %2, align 4, !dbg !549
  %5 = load i32, i32* %2, align 4, !dbg !551
  ret i32 %5, !dbg !552
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @__arch_swab64(i64) #7 !dbg !553 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !554, metadata !49), !dbg !555
  %3 = load i64, i64* %2, align 8, !dbg !556
  %4 = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %3) #1, !dbg !557, !srcloc !558
  store i64 %4, i64* %2, align 8, !dbg !557
  %5 = load i64, i64* %2, align 8, !dbg !559
  ret i64 %5, !dbg !560
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
!llvm.module.flags = !{!45, !46}
!llvm.ident = !{!47}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !23)
!1 = !DIFile(filename: "/home/lichi/Desktop/genwqe/[task]tools--genwqe_peek/[inter]tools--genwqe_peek.o.i", directory: "/home/lichi/Desktop")
!2 = !{}
!3 = !{!4, !7, !8, !9, !12, !14, !17, !19, !20}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!8 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 26, baseType: !11)
!10 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop")
!11 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !13, line: 30, baseType: !9)
!13 = !DIFile(filename: "/usr/include/linux/types.h", directory: "/home/lichi/Desktop")
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !16, line: 51, baseType: !11)
!16 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 30, baseType: !18)
!18 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be64", file: !13, line: 32, baseType: !17)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !16, line: 55, baseType: !22)
!22 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!23 = !{!24, !27, !44}
!24 = distinct !DIGlobalVariable(name: "verbose_flag", scope: !0, file: !25, line: 29, type: !26, isLocal: false, isDefinition: true, variable: i32* @verbose_flag)
!25 = !DIFile(filename: "genwqe_peek.c", directory: "/home/lichi/Desktop")
!26 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!27 = distinct !DIGlobalVariable(name: "long_options", scope: !28, file: !25, line: 160, type: !31, isLocal: true, isDefinition: true, variable: [15 x %struct.option]* @main.long_options)
!28 = distinct !DISubprogram(name: "main", scope: !25, file: !25, line: 137, type: !29, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!29 = !DISubroutineType(types: !30)
!30 = !{!26, !26, !4}
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 3840, align: 64, elements: !42)
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
!43 = !DISubrange(count: 15)
!44 = distinct !DIGlobalVariable(name: "version", scope: !0, file: !25, line: 31, type: !36, isLocal: true, isDefinition: true, variable: i8** @version)
!45 = !{i32 2, !"Dwarf Version", i32 4}
!46 = !{i32 2, !"Debug Info Version", i32 3}
!47 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!48 = !DILocalVariable(name: "argc", arg: 1, scope: !28, file: !25, line: 137, type: !26)
!49 = !DIExpression()
!50 = !DILocation(line: 137, column: 14, scope: !28)
!51 = !DILocalVariable(name: "argv", arg: 2, scope: !28, file: !25, line: 137, type: !4)
!52 = !DILocation(line: 137, column: 26, scope: !28)
!53 = !DILocalVariable(name: "ch", scope: !28, file: !25, line: 139, type: !26)
!54 = !DILocation(line: 139, column: 6, scope: !28)
!55 = !DILocalVariable(name: "rc", scope: !28, file: !25, line: 139, type: !26)
!56 = !DILocation(line: 139, column: 10, scope: !28)
!57 = !DILocalVariable(name: "card_no", scope: !28, file: !25, line: 140, type: !26)
!58 = !DILocation(line: 140, column: 6, scope: !28)
!59 = !DILocalVariable(name: "card_type", scope: !28, file: !25, line: 141, type: !26)
!60 = !DILocation(line: 141, column: 6, scope: !28)
!61 = !DILocalVariable(name: "card", scope: !28, file: !25, line: 142, type: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "accel_t", file: !63, line: 198, baseType: !64)
!63 = !DIFile(filename: "../include/libddcb.h", directory: "/home/lichi/Desktop")
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "card_dev_t", file: !63, line: 198, flags: DIFlagFwdDecl)
!66 = !DILocation(line: 142, column: 10, scope: !28)
!67 = !DILocalVariable(name: "err_code", scope: !28, file: !25, line: 143, type: !26)
!68 = !DILocation(line: 143, column: 6, scope: !28)
!69 = !DILocalVariable(name: "cpu", scope: !28, file: !25, line: 144, type: !26)
!70 = !DILocation(line: 144, column: 6, scope: !28)
!71 = !DILocalVariable(name: "width", scope: !28, file: !25, line: 145, type: !26)
!72 = !DILocation(line: 145, column: 6, scope: !28)
!73 = !DILocalVariable(name: "offs", scope: !28, file: !25, line: 146, type: !15)
!74 = !DILocation(line: 146, column: 11, scope: !28)
!75 = !DILocalVariable(name: "val", scope: !28, file: !25, line: 147, type: !21)
!76 = !DILocation(line: 147, column: 11, scope: !28)
!77 = !DILocalVariable(name: "and_mask", scope: !28, file: !25, line: 148, type: !21)
!78 = !DILocation(line: 148, column: 11, scope: !28)
!79 = !DILocalVariable(name: "equal_val", scope: !28, file: !25, line: 149, type: !21)
!80 = !DILocation(line: 149, column: 11, scope: !28)
!81 = !DILocation(line: 149, column: 23, scope: !28)
!82 = !DILocalVariable(name: "not_equal_val", scope: !28, file: !25, line: 150, type: !21)
!83 = !DILocation(line: 150, column: 11, scope: !28)
!84 = !DILocation(line: 150, column: 27, scope: !28)
!85 = !DILocalVariable(name: "equal", scope: !28, file: !25, line: 151, type: !26)
!86 = !DILocation(line: 151, column: 6, scope: !28)
!87 = !DILocalVariable(name: "not_equal", scope: !28, file: !25, line: 151, type: !26)
!88 = !DILocation(line: 151, column: 17, scope: !28)
!89 = !DILocalVariable(name: "quiet", scope: !28, file: !25, line: 152, type: !26)
!90 = !DILocation(line: 152, column: 6, scope: !28)
!91 = !DILocalVariable(name: "i", scope: !28, file: !25, line: 153, type: !22)
!92 = !DILocation(line: 153, column: 16, scope: !28)
!93 = !DILocalVariable(name: "count", scope: !28, file: !25, line: 153, type: !22)
!94 = !DILocation(line: 153, column: 19, scope: !28)
!95 = !DILocalVariable(name: "interval", scope: !28, file: !25, line: 154, type: !22)
!96 = !DILocation(line: 154, column: 16, scope: !28)
!97 = !DILocalVariable(name: "mode", scope: !28, file: !25, line: 155, type: !26)
!98 = !DILocation(line: 155, column: 6, scope: !28)
!99 = !DILocalVariable(name: "psl_bar", scope: !28, file: !25, line: 156, type: !26)
!100 = !DILocation(line: 156, column: 6, scope: !28)
!101 = !DILocation(line: 158, column: 2, scope: !28)
!102 = !DILocalVariable(name: "option_index", scope: !103, file: !25, line: 159, type: !26)
!103 = distinct !DILexicalBlock(scope: !28, file: !25, line: 158, column: 12)
!104 = !DILocation(line: 159, column: 7, scope: !103)
!105 = !DILocation(line: 186, column: 20, scope: !103)
!106 = !DILocation(line: 186, column: 26, scope: !103)
!107 = !DILocation(line: 186, column: 8, scope: !103)
!108 = !DILocation(line: 186, column: 6, scope: !103)
!109 = !DILocation(line: 189, column: 7, scope: !110)
!110 = distinct !DILexicalBlock(scope: !103, file: !25, line: 189, column: 7)
!111 = !DILocation(line: 189, column: 10, scope: !110)
!112 = !DILocation(line: 189, column: 7, scope: !103)
!113 = !DILocation(line: 190, column: 4, scope: !110)
!114 = !DILocation(line: 192, column: 11, scope: !103)
!115 = !DILocation(line: 192, column: 3, scope: !103)
!116 = !DILocation(line: 195, column: 21, scope: !117)
!117 = distinct !DILexicalBlock(scope: !103, file: !25, line: 192, column: 15)
!118 = !DILocation(line: 195, column: 14, scope: !117)
!119 = !DILocation(line: 195, column: 12, scope: !117)
!120 = !DILocation(line: 196, column: 4, scope: !117)
!121 = !DILocation(line: 198, column: 15, scope: !122)
!122 = distinct !DILexicalBlock(scope: !117, file: !25, line: 198, column: 8)
!123 = !DILocation(line: 198, column: 8, scope: !122)
!124 = !DILocation(line: 198, column: 33, scope: !122)
!125 = !DILocation(line: 198, column: 8, scope: !117)
!126 = !DILocation(line: 199, column: 15, scope: !127)
!127 = distinct !DILexicalBlock(scope: !122, file: !25, line: 198, column: 39)
!128 = !DILocation(line: 200, column: 5, scope: !127)
!129 = !DILocation(line: 202, column: 15, scope: !130)
!130 = distinct !DILexicalBlock(scope: !117, file: !25, line: 202, column: 8)
!131 = !DILocation(line: 202, column: 8, scope: !130)
!132 = !DILocation(line: 202, column: 31, scope: !130)
!133 = !DILocation(line: 202, column: 8, scope: !117)
!134 = !DILocation(line: 203, column: 15, scope: !135)
!135 = distinct !DILexicalBlock(scope: !130, file: !25, line: 202, column: 37)
!136 = !DILocation(line: 204, column: 5, scope: !135)
!137 = !DILocation(line: 206, column: 23, scope: !117)
!138 = !DILocation(line: 206, column: 16, scope: !117)
!139 = !DILocation(line: 206, column: 14, scope: !117)
!140 = !DILocation(line: 207, column: 4, scope: !117)
!141 = !DILocation(line: 209, column: 18, scope: !117)
!142 = !DILocation(line: 209, column: 10, scope: !117)
!143 = !DILocation(line: 209, column: 8, scope: !117)
!144 = !DILocation(line: 210, column: 4, scope: !117)
!145 = !DILocation(line: 212, column: 20, scope: !117)
!146 = !DILocation(line: 212, column: 12, scope: !117)
!147 = !DILocation(line: 212, column: 10, scope: !117)
!148 = !DILocation(line: 213, column: 4, scope: !117)
!149 = !DILocation(line: 215, column: 21, scope: !117)
!150 = !DILocation(line: 215, column: 14, scope: !117)
!151 = !DILocation(line: 215, column: 12, scope: !117)
!152 = !DILocation(line: 216, column: 4, scope: !117)
!153 = !DILocation(line: 218, column: 22, scope: !117)
!154 = !DILocation(line: 218, column: 15, scope: !117)
!155 = !DILocation(line: 218, column: 13, scope: !117)
!156 = !DILocation(line: 219, column: 4, scope: !117)
!157 = !DILocation(line: 221, column: 19, scope: !117)
!158 = !DILocation(line: 221, column: 12, scope: !117)
!159 = !DILocation(line: 221, column: 10, scope: !117)
!160 = !DILocation(line: 222, column: 4, scope: !117)
!161 = !DILocation(line: 224, column: 10, scope: !117)
!162 = !DILocation(line: 225, column: 25, scope: !117)
!163 = !DILocation(line: 225, column: 16, scope: !117)
!164 = !DILocation(line: 225, column: 14, scope: !117)
!165 = !DILocation(line: 226, column: 4, scope: !117)
!166 = !DILocation(line: 228, column: 14, scope: !117)
!167 = !DILocation(line: 229, column: 29, scope: !117)
!168 = !DILocation(line: 229, column: 20, scope: !117)
!169 = !DILocation(line: 229, column: 18, scope: !117)
!170 = !DILocation(line: 230, column: 4, scope: !117)
!171 = !DILocation(line: 232, column: 24, scope: !117)
!172 = !DILocation(line: 232, column: 15, scope: !117)
!173 = !DILocation(line: 232, column: 13, scope: !117)
!174 = !DILocation(line: 233, column: 4, scope: !117)
!175 = !DILocation(line: 236, column: 19, scope: !117)
!176 = !DILocation(line: 236, column: 4, scope: !117)
!177 = !DILocation(line: 237, column: 4, scope: !117)
!178 = !DILocation(line: 239, column: 9, scope: !117)
!179 = !DILocation(line: 240, column: 4, scope: !117)
!180 = !DILocation(line: 242, column: 17, scope: !117)
!181 = !DILocation(line: 243, column: 4, scope: !117)
!182 = !DILocation(line: 245, column: 10, scope: !117)
!183 = !DILocation(line: 245, column: 4, scope: !117)
!184 = !DILocation(line: 246, column: 4, scope: !117)
!185 = !DILocation(line: 250, column: 10, scope: !117)
!186 = !DILocation(line: 250, column: 4, scope: !117)
!187 = !DILocation(line: 251, column: 4, scope: !117)
!188 = !DILocation(line: 158, column: 2, scope: !189)
!189 = !DILexicalBlockFile(scope: !28, file: !25, discriminator: 1)
!190 = distinct !{!190, !101}
!191 = !DILocation(line: 255, column: 6, scope: !192)
!192 = distinct !DILexicalBlock(scope: !28, file: !25, line: 255, column: 6)
!193 = !DILocation(line: 255, column: 13, scope: !192)
!194 = !DILocation(line: 255, column: 20, scope: !192)
!195 = !DILocation(line: 255, column: 17, scope: !192)
!196 = !DILocation(line: 255, column: 6, scope: !28)
!197 = !DILocation(line: 256, column: 9, scope: !198)
!198 = distinct !DILexicalBlock(scope: !192, file: !25, line: 255, column: 26)
!199 = !DILocation(line: 256, column: 3, scope: !198)
!200 = !DILocation(line: 257, column: 3, scope: !198)
!201 = !DILocation(line: 259, column: 23, scope: !28)
!202 = !DILocation(line: 259, column: 18, scope: !28)
!203 = !DILocation(line: 259, column: 9, scope: !28)
!204 = !DILocation(line: 259, column: 7, scope: !28)
!205 = !DILocation(line: 261, column: 6, scope: !206)
!206 = distinct !DILexicalBlock(scope: !28, file: !25, line: 261, column: 6)
!207 = !DILocation(line: 261, column: 12, scope: !206)
!208 = !DILocation(line: 261, column: 15, scope: !209)
!209 = !DILexicalBlockFile(scope: !206, file: !25, discriminator: 1)
!210 = !DILocation(line: 261, column: 6, scope: !209)
!211 = !DILocation(line: 262, column: 9, scope: !212)
!212 = distinct !DILexicalBlock(scope: !206, file: !25, line: 261, column: 26)
!213 = !DILocation(line: 262, column: 3, scope: !212)
!214 = !DILocation(line: 263, column: 3, scope: !212)
!215 = !DILocation(line: 266, column: 13, scope: !28)
!216 = !DILocation(line: 266, column: 18, scope: !28)
!217 = !DILocation(line: 266, column: 2, scope: !28)
!218 = !DILocation(line: 268, column: 17, scope: !219)
!219 = distinct !DILexicalBlock(scope: !28, file: !25, line: 268, column: 6)
!220 = !DILocation(line: 268, column: 14, scope: !219)
!221 = !DILocation(line: 268, column: 28, scope: !219)
!222 = !DILocation(line: 268, column: 32, scope: !223)
!223 = !DILexicalBlockFile(scope: !219, file: !25, discriminator: 1)
!224 = !DILocation(line: 268, column: 40, scope: !223)
!225 = !DILocation(line: 268, column: 6, scope: !223)
!226 = !DILocation(line: 269, column: 21, scope: !227)
!227 = distinct !DILexicalBlock(scope: !219, file: !25, line: 268, column: 48)
!228 = !DILocation(line: 269, column: 30, scope: !227)
!229 = !DILocation(line: 269, column: 39, scope: !227)
!230 = !DILocation(line: 269, column: 46, scope: !227)
!231 = !DILocation(line: 269, column: 3, scope: !227)
!232 = !DILocation(line: 270, column: 3, scope: !227)
!233 = !DILocation(line: 273, column: 13, scope: !28)
!234 = !DILocation(line: 273, column: 2, scope: !28)
!235 = !DILocation(line: 276, column: 16, scope: !236)
!236 = distinct !DILexicalBlock(scope: !28, file: !25, line: 276, column: 6)
!237 = !DILocation(line: 276, column: 13, scope: !236)
!238 = !DILocation(line: 276, column: 6, scope: !28)
!239 = !DILocation(line: 277, column: 8, scope: !236)
!240 = !DILocation(line: 277, column: 3, scope: !236)
!241 = !DILocation(line: 279, column: 7, scope: !242)
!242 = distinct !DILexicalBlock(scope: !28, file: !25, line: 279, column: 6)
!243 = !DILocation(line: 279, column: 15, scope: !242)
!244 = !DILocation(line: 279, column: 20, scope: !242)
!245 = !DILocation(line: 279, column: 24, scope: !246)
!246 = !DILexicalBlockFile(scope: !242, file: !25, discriminator: 1)
!247 = !DILocation(line: 279, column: 32, scope: !246)
!248 = !DILocation(line: 279, column: 6, scope: !246)
!249 = !DILocation(line: 280, column: 47, scope: !250)
!250 = distinct !DILexicalBlock(scope: !242, file: !25, line: 279, column: 38)
!251 = !DILocation(line: 280, column: 3, scope: !250)
!252 = !DILocation(line: 281, column: 9, scope: !250)
!253 = !DILocation(line: 281, column: 3, scope: !250)
!254 = !DILocation(line: 282, column: 3, scope: !250)
!255 = !DILocation(line: 285, column: 20, scope: !28)
!256 = !DILocation(line: 285, column: 29, scope: !28)
!257 = !DILocation(line: 285, column: 40, scope: !28)
!258 = !DILocation(line: 285, column: 9, scope: !28)
!259 = !DILocation(line: 285, column: 7, scope: !28)
!260 = !DILocation(line: 287, column: 6, scope: !261)
!261 = distinct !DILexicalBlock(scope: !28, file: !25, line: 287, column: 6)
!262 = !DILocation(line: 287, column: 11, scope: !261)
!263 = !DILocation(line: 287, column: 6, scope: !28)
!264 = !DILocation(line: 288, column: 10, scope: !265)
!265 = distinct !DILexicalBlock(scope: !261, file: !25, line: 287, column: 19)
!266 = !DILocation(line: 289, column: 17, scope: !265)
!267 = !DILocation(line: 289, column: 26, scope: !265)
!268 = !DILocation(line: 289, column: 37, scope: !265)
!269 = !DILocation(line: 290, column: 19, scope: !265)
!270 = !DILocation(line: 290, column: 25, scope: !265)
!271 = !DILocation(line: 290, column: 4, scope: !265)
!272 = !DILocation(line: 288, column: 3, scope: !265)
!273 = !DILocation(line: 291, column: 3, scope: !265)
!274 = !DILocation(line: 294, column: 9, scope: !275)
!275 = distinct !DILexicalBlock(scope: !28, file: !25, line: 294, column: 2)
!276 = !DILocation(line: 294, column: 7, scope: !275)
!277 = !DILocation(line: 294, column: 14, scope: !278)
!278 = !DILexicalBlockFile(scope: !279, file: !25, discriminator: 1)
!279 = distinct !DILexicalBlock(scope: !275, file: !25, line: 294, column: 2)
!280 = !DILocation(line: 294, column: 18, scope: !278)
!281 = !DILocation(line: 294, column: 16, scope: !278)
!282 = !DILocation(line: 294, column: 2, scope: !278)
!283 = !DILocation(line: 295, column: 11, scope: !284)
!284 = distinct !DILexicalBlock(scope: !279, file: !25, line: 294, column: 30)
!285 = !DILocation(line: 295, column: 3, scope: !284)
!286 = !DILocation(line: 297, column: 27, scope: !287)
!287 = distinct !DILexicalBlock(scope: !284, file: !25, line: 295, column: 18)
!288 = !DILocation(line: 297, column: 33, scope: !287)
!289 = !DILocation(line: 297, column: 10, scope: !287)
!290 = !DILocation(line: 297, column: 8, scope: !287)
!291 = !DILocation(line: 298, column: 4, scope: !287)
!292 = !DILocation(line: 298, column: 4, scope: !293)
!293 = !DILexicalBlockFile(scope: !287, file: !25, discriminator: 1)
!294 = !DILocation(line: 301, column: 27, scope: !287)
!295 = !DILocation(line: 301, column: 33, scope: !287)
!296 = !DILocation(line: 301, column: 10, scope: !287)
!297 = !DILocation(line: 301, column: 8, scope: !287)
!298 = !DILocation(line: 302, column: 4, scope: !287)
!299 = !DILocation(line: 305, column: 7, scope: !300)
!300 = distinct !DILexicalBlock(scope: !284, file: !25, line: 305, column: 7)
!301 = !DILocation(line: 305, column: 10, scope: !300)
!302 = !DILocation(line: 305, column: 7, scope: !284)
!303 = !DILocation(line: 306, column: 11, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !25, line: 305, column: 16)
!305 = !DILocation(line: 307, column: 5, scope: !304)
!306 = !DILocation(line: 307, column: 11, scope: !304)
!307 = !DILocation(line: 306, column: 4, scope: !304)
!308 = !DILocation(line: 308, column: 16, scope: !304)
!309 = !DILocation(line: 308, column: 4, scope: !304)
!310 = !DILocation(line: 309, column: 4, scope: !304)
!311 = !DILocation(line: 311, column: 8, scope: !312)
!312 = distinct !DILexicalBlock(scope: !284, file: !25, line: 311, column: 7)
!313 = !DILocation(line: 311, column: 7, scope: !312)
!314 = !DILocation(line: 311, column: 15, scope: !312)
!315 = !DILocation(line: 312, column: 8, scope: !312)
!316 = !DILocation(line: 312, column: 22, scope: !312)
!317 = !DILocation(line: 312, column: 28, scope: !312)
!318 = !DILocation(line: 312, column: 26, scope: !312)
!319 = !DILocation(line: 312, column: 18, scope: !312)
!320 = !DILocation(line: 311, column: 7, scope: !321)
!321 = !DILexicalBlockFile(scope: !284, file: !25, discriminator: 1)
!322 = !DILocation(line: 313, column: 11, scope: !323)
!323 = distinct !DILexicalBlock(scope: !312, file: !25, line: 312, column: 40)
!324 = !DILocation(line: 314, column: 5, scope: !323)
!325 = !DILocation(line: 314, column: 22, scope: !323)
!326 = !DILocation(line: 314, column: 38, scope: !323)
!327 = !DILocation(line: 313, column: 4, scope: !323)
!328 = !DILocation(line: 315, column: 16, scope: !323)
!329 = !DILocation(line: 315, column: 4, scope: !323)
!330 = !DILocation(line: 316, column: 4, scope: !323)
!331 = !DILocation(line: 318, column: 8, scope: !332)
!332 = distinct !DILexicalBlock(scope: !284, file: !25, line: 318, column: 7)
!333 = !DILocation(line: 318, column: 7, scope: !332)
!334 = !DILocation(line: 318, column: 19, scope: !332)
!335 = !DILocation(line: 319, column: 8, scope: !332)
!336 = !DILocation(line: 319, column: 26, scope: !332)
!337 = !DILocation(line: 319, column: 32, scope: !332)
!338 = !DILocation(line: 319, column: 30, scope: !332)
!339 = !DILocation(line: 319, column: 22, scope: !332)
!340 = !DILocation(line: 318, column: 7, scope: !321)
!341 = !DILocation(line: 320, column: 11, scope: !342)
!342 = distinct !DILexicalBlock(scope: !332, file: !25, line: 319, column: 44)
!343 = !DILocation(line: 321, column: 5, scope: !342)
!344 = !DILocation(line: 321, column: 22, scope: !342)
!345 = !DILocation(line: 322, column: 16, scope: !342)
!346 = !DILocation(line: 320, column: 4, scope: !342)
!347 = !DILocation(line: 323, column: 16, scope: !342)
!348 = !DILocation(line: 323, column: 4, scope: !342)
!349 = !DILocation(line: 324, column: 4, scope: !342)
!350 = !DILocation(line: 327, column: 7, scope: !351)
!351 = distinct !DILexicalBlock(scope: !284, file: !25, line: 327, column: 7)
!352 = !DILocation(line: 327, column: 7, scope: !284)
!353 = !DILocation(line: 328, column: 11, scope: !351)
!354 = !DILocation(line: 328, column: 4, scope: !351)
!355 = !DILocation(line: 329, column: 2, scope: !284)
!356 = !DILocation(line: 294, column: 26, scope: !357)
!357 = !DILexicalBlockFile(scope: !279, file: !25, discriminator: 2)
!358 = !DILocation(line: 294, column: 2, scope: !357)
!359 = distinct !{!359, !360}
!360 = !DILocation(line: 294, column: 2, scope: !28)
!361 = !DILocation(line: 331, column: 14, scope: !28)
!362 = !DILocation(line: 331, column: 2, scope: !28)
!363 = !DILocation(line: 334, column: 7, scope: !364)
!364 = distinct !DILexicalBlock(scope: !28, file: !25, line: 334, column: 6)
!365 = !DILocation(line: 334, column: 6, scope: !28)
!366 = !DILocation(line: 335, column: 30, scope: !364)
!367 = !DILocation(line: 335, column: 47, scope: !364)
!368 = !DILocation(line: 335, column: 3, scope: !364)
!369 = !DILocation(line: 337, column: 2, scope: !28)
!370 = !DILocation(line: 338, column: 1, scope: !28)
!371 = distinct !DISubprogram(name: "usage", scope: !25, file: !25, line: 38, type: !372, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !36}
!374 = !DILocalVariable(name: "prog", arg: 1, scope: !371, file: !25, line: 38, type: !36)
!375 = !DILocation(line: 38, column: 31, scope: !371)
!376 = !DILocation(line: 69, column: 9, scope: !371)
!377 = !DILocation(line: 40, column: 2, scope: !371)
!378 = !DILocation(line: 70, column: 1, scope: !371)
!379 = distinct !DISubprogram(name: "capi_read_psl_bar", scope: !25, file: !25, line: 86, type: !380, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!380 = !DISubroutineType(types: !381)
!381 = !{!26, !11, !11, !26, !382, !20}
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !383, line: 90, baseType: !384)
!383 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop")
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !385, line: 131, baseType: !386)
!385 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop")
!386 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!387 = !DILocalVariable(name: "card_no", arg: 1, scope: !379, file: !25, line: 86, type: !11)
!388 = !DILocation(line: 86, column: 43, scope: !379)
!389 = !DILocalVariable(name: "res_no", arg: 2, scope: !379, file: !25, line: 86, type: !11)
!390 = !DILocation(line: 86, column: 65, scope: !379)
!391 = !DILocalVariable(name: "width", arg: 3, scope: !379, file: !25, line: 87, type: !26)
!392 = !DILocation(line: 87, column: 13, scope: !379)
!393 = !DILocalVariable(name: "offset", arg: 4, scope: !379, file: !25, line: 87, type: !382)
!394 = !DILocation(line: 87, column: 26, scope: !379)
!395 = !DILocalVariable(name: "val", arg: 5, scope: !379, file: !25, line: 87, type: !20)
!396 = !DILocation(line: 87, column: 44, scope: !379)
!397 = !DILocalVariable(name: "fd", scope: !379, file: !25, line: 89, type: !26)
!398 = !DILocation(line: 89, column: 6, scope: !379)
!399 = !DILocalVariable(name: "rc", scope: !379, file: !25, line: 89, type: !26)
!400 = !DILocation(line: 89, column: 10, scope: !379)
!401 = !DILocalVariable(name: "sb", scope: !379, file: !25, line: 90, type: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !403, line: 46, size: 1152, align: 64, elements: !404)
!403 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop")
!404 = !{!405, !407, !409, !411, !413, !415, !417, !418, !419, !420, !422, !424, !432, !433, !434}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !402, file: !403, line: 48, baseType: !406, size: 64, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !385, line: 124, baseType: !22)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !402, file: !403, line: 53, baseType: !408, size: 64, align: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !385, line: 127, baseType: !22)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !402, file: !403, line: 61, baseType: !410, size: 64, align: 64, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !385, line: 130, baseType: !22)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !402, file: !403, line: 62, baseType: !412, size: 32, align: 32, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !385, line: 129, baseType: !11)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !402, file: !403, line: 64, baseType: !414, size: 32, align: 32, offset: 224)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !385, line: 125, baseType: !11)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !402, file: !403, line: 65, baseType: !416, size: 32, align: 32, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !385, line: 126, baseType: !11)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !402, file: !403, line: 67, baseType: !26, size: 32, align: 32, offset: 288)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !402, file: !403, line: 69, baseType: !406, size: 64, align: 64, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !402, file: !403, line: 74, baseType: !384, size: 64, align: 64, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !402, file: !403, line: 78, baseType: !421, size: 64, align: 64, offset: 448)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !385, line: 153, baseType: !386)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !402, file: !403, line: 80, baseType: !423, size: 64, align: 64, offset: 512)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !385, line: 158, baseType: !386)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !402, file: !403, line: 91, baseType: !425, size: 128, align: 64, offset: 576)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !426, line: 120, size: 128, align: 64, elements: !427)
!426 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop")
!427 = !{!428, !430}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !425, file: !426, line: 122, baseType: !429, size: 64, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !385, line: 139, baseType: !386)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !425, file: !426, line: 123, baseType: !431, size: 64, align: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !385, line: 175, baseType: !386)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !402, file: !403, line: 92, baseType: !425, size: 128, align: 64, offset: 704)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !402, file: !403, line: 93, baseType: !425, size: 128, align: 64, offset: 832)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !402, file: !403, line: 106, baseType: !435, size: 192, align: 64, offset: 960)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 192, align: 64, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 3)
!438 = !DILocation(line: 90, column: 14, scope: !379)
!439 = !DILocalVariable(name: "memblk", scope: !379, file: !25, line: 91, type: !7)
!440 = !DILocation(line: 91, column: 8, scope: !379)
!441 = !DILocalVariable(name: "addr", scope: !379, file: !25, line: 91, type: !7)
!442 = !DILocation(line: 91, column: 17, scope: !379)
!443 = !DILocalVariable(name: "res", scope: !379, file: !25, line: 92, type: !444)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1024, align: 8, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 128)
!447 = !DILocation(line: 92, column: 7, scope: !379)
!448 = !DILocation(line: 94, column: 10, scope: !379)
!449 = !DILocation(line: 95, column: 3, scope: !379)
!450 = !DILocation(line: 95, column: 12, scope: !379)
!451 = !DILocation(line: 94, column: 2, scope: !379)
!452 = !DILocation(line: 97, column: 12, scope: !379)
!453 = !DILocation(line: 97, column: 7, scope: !379)
!454 = !DILocation(line: 97, column: 5, scope: !379)
!455 = !DILocation(line: 98, column: 6, scope: !456)
!456 = distinct !DILexicalBlock(scope: !379, file: !25, line: 98, column: 6)
!457 = !DILocation(line: 98, column: 9, scope: !456)
!458 = !DILocation(line: 98, column: 6, scope: !379)
!459 = !DILocation(line: 99, column: 10, scope: !460)
!460 = distinct !DILexicalBlock(scope: !456, file: !25, line: 98, column: 14)
!461 = !DILocation(line: 100, column: 4, scope: !460)
!462 = !DILocation(line: 100, column: 19, scope: !460)
!463 = !DILocation(line: 100, column: 18, scope: !460)
!464 = !DILocation(line: 100, column: 9, scope: !465)
!465 = !DILexicalBlockFile(scope: !460, file: !25, discriminator: 1)
!466 = !DILocation(line: 99, column: 3, scope: !460)
!467 = !DILocation(line: 101, column: 3, scope: !460)
!468 = !DILocation(line: 104, column: 8, scope: !379)
!469 = !DILocation(line: 104, column: 2, scope: !379)
!470 = !DILocation(line: 105, column: 24, scope: !379)
!471 = !DILocation(line: 106, column: 20, scope: !379)
!472 = !DILocation(line: 105, column: 11, scope: !379)
!473 = !DILocation(line: 105, column: 9, scope: !379)
!474 = !DILocation(line: 107, column: 6, scope: !475)
!475 = distinct !DILexicalBlock(scope: !379, file: !25, line: 107, column: 6)
!476 = !DILocation(line: 107, column: 13, scope: !475)
!477 = !DILocation(line: 107, column: 6, scope: !379)
!478 = !DILocation(line: 108, column: 10, scope: !479)
!479 = distinct !DILexicalBlock(scope: !475, file: !25, line: 107, column: 27)
!480 = !DILocation(line: 108, column: 44, scope: !479)
!481 = !DILocation(line: 108, column: 3, scope: !479)
!482 = !DILocation(line: 109, column: 3, scope: !479)
!483 = !DILocation(line: 112, column: 9, scope: !379)
!484 = !DILocation(line: 112, column: 19, scope: !379)
!485 = !DILocation(line: 112, column: 32, scope: !379)
!486 = !DILocation(line: 112, column: 40, scope: !379)
!487 = !DILocation(line: 112, column: 26, scope: !379)
!488 = !DILocation(line: 112, column: 16, scope: !379)
!489 = !DILocation(line: 112, column: 7, scope: !379)
!490 = !DILocation(line: 114, column: 10, scope: !379)
!491 = !DILocation(line: 114, column: 2, scope: !379)
!492 = !DILocation(line: 116, column: 7, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !25, line: 116, column: 7)
!494 = distinct !DILexicalBlock(scope: !379, file: !25, line: 114, column: 17)
!495 = !DILocation(line: 116, column: 7, scope: !494)
!496 = !DILocation(line: 117, column: 24, scope: !493)
!497 = !DILocation(line: 117, column: 12, scope: !493)
!498 = !DILocation(line: 117, column: 10, scope: !493)
!499 = !DILocation(line: 117, column: 47, scope: !493)
!500 = !DILocation(line: 117, column: 5, scope: !493)
!501 = !DILocation(line: 117, column: 9, scope: !493)
!502 = !DILocation(line: 117, column: 4, scope: !493)
!503 = !DILocation(line: 118, column: 3, scope: !494)
!504 = !DILocation(line: 120, column: 7, scope: !505)
!505 = distinct !DILexicalBlock(scope: !494, file: !25, line: 120, column: 7)
!506 = !DILocation(line: 120, column: 7, scope: !494)
!507 = !DILocation(line: 121, column: 24, scope: !505)
!508 = !DILocation(line: 121, column: 12, scope: !505)
!509 = !DILocation(line: 121, column: 10, scope: !505)
!510 = !DILocation(line: 121, column: 56, scope: !505)
!511 = !DILocation(line: 121, column: 5, scope: !505)
!512 = !DILocation(line: 121, column: 9, scope: !505)
!513 = !DILocation(line: 121, column: 4, scope: !505)
!514 = !DILocation(line: 122, column: 3, scope: !494)
!515 = !DILocation(line: 124, column: 10, scope: !494)
!516 = !DILocation(line: 124, column: 45, scope: !494)
!517 = !DILocation(line: 124, column: 3, scope: !494)
!518 = !DILocation(line: 125, column: 6, scope: !494)
!519 = !DILocation(line: 126, column: 2, scope: !494)
!520 = !DILocation(line: 128, column: 9, scope: !379)
!521 = !DILocation(line: 128, column: 19, scope: !379)
!522 = !DILocation(line: 128, column: 2, scope: !379)
!523 = !DILocation(line: 129, column: 8, scope: !379)
!524 = !DILocation(line: 129, column: 2, scope: !379)
!525 = !DILocation(line: 130, column: 9, scope: !379)
!526 = !DILocation(line: 130, column: 2, scope: !379)
!527 = distinct !DISubprogram(name: "__fswab32", scope: !528, file: !528, line: 57, type: !529, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!528 = !DIFile(filename: "/usr/include/linux/swab.h", directory: "/home/lichi/Desktop")
!529 = !DISubroutineType(types: !530)
!530 = !{!9, !9}
!531 = !DILocalVariable(name: "val", arg: 1, scope: !527, file: !528, line: 57, type: !9)
!532 = !DILocation(line: 57, column: 41, scope: !527)
!533 = !DILocation(line: 62, column: 23, scope: !527)
!534 = !DILocation(line: 62, column: 9, scope: !527)
!535 = !DILocation(line: 62, column: 2, scope: !527)
!536 = distinct !DISubprogram(name: "__fswab64", scope: !528, file: !528, line: 68, type: !537, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!537 = !DISubroutineType(types: !538)
!538 = !{!17, !17}
!539 = !DILocalVariable(name: "val", arg: 1, scope: !536, file: !528, line: 68, type: !17)
!540 = !DILocation(line: 68, column: 41, scope: !536)
!541 = !DILocation(line: 73, column: 23, scope: !536)
!542 = !DILocation(line: 73, column: 9, scope: !536)
!543 = !DILocation(line: 73, column: 2, scope: !536)
!544 = distinct !DISubprogram(name: "__arch_swab32", scope: !545, file: !545, line: 7, type: !529, isLocal: true, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!545 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/asm/swab.h", directory: "/home/lichi/Desktop")
!546 = !DILocalVariable(name: "val", arg: 1, scope: !544, file: !545, line: 7, type: !9)
!547 = !DILocation(line: 7, column: 45, scope: !544)
!548 = !DILocation(line: 9, column: 42, scope: !544)
!549 = !DILocation(line: 9, column: 2, scope: !544)
!550 = !{i32 75742}
!551 = !DILocation(line: 10, column: 9, scope: !544)
!552 = !DILocation(line: 10, column: 2, scope: !544)
!553 = distinct !DISubprogram(name: "__arch_swab64", scope: !545, file: !545, line: 14, type: !537, isLocal: true, isDefinition: true, scopeLine: 15, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!554 = !DILocalVariable(name: "val", arg: 1, scope: !553, file: !545, line: 14, type: !17)
!555 = !DILocation(line: 14, column: 45, scope: !553)
!556 = !DILocation(line: 30, column: 42, scope: !553)
!557 = !DILocation(line: 30, column: 2, scope: !553)
!558 = !{i32 75910}
!559 = !DILocation(line: 31, column: 9, scope: !553)
!560 = !DILocation(line: 31, column: 2, scope: !553)
