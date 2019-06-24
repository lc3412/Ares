; ModuleID = '/home/lichi/Desktop/genwqe/[task]tools--genwqe_ffdc/[inter]tools--genwqe_ffdc.o.i'
source_filename = "/home/lichi/Desktop/genwqe/[task]tools--genwqe_ffdc/[inter]tools--genwqe_ffdc.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.card_dev_t = type opaque

@verbose_flag = global i32 0, align 4
@main.long_options = internal global [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 1, i32* null, i32 67 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 0, i32* null, i32 81 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 0, i32* null, i32 86 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"card\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"dump-queues\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"C:QVvh\00", align 1
@optarg = external global i8*, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@version = internal global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), align 8
@optind = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [44 x i8] c"%s:%u: Error: opening genwqe card (err=%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"genwqe_ffdc.c\00", align 1
@.str.9 = private unnamed_addr constant [199 x i8] c"Utility to do first failure data capture (FFDC).\0A\0AUsage: %s [-h] [-v,--verbose]\0A\09[-C, --card <cardno>]\0A\09[-Q, --dump-queues] Dump DDCB queue registers of all funcs\0A\09[-V, --version]\0A\09[-v, --verbose]\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"4.0.20-5-g2944\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.11 = private unnamed_addr constant [46 x i8] c"[%s] Genwqe queue config and debug registers\0A\00", align 1
@__func__.do_dump_queues = private unnamed_addr constant [15 x i8] c"do_dump_queues\00", align 1
@.str.12 = private unnamed_addr constant [311 x i8] c"PCI FUNCTION %d\0A  0x%08x %016llx IO_QUEUE_CONFIG\0A  0x%08x %016llx IO_QUEUE_STATUS\0A  0x%08x %016llx IO_QUEUE_SEGMENT\0A  0x%08x %016llx IO_QUEUE_INITSQN\0A  0x%08x %016llx IO_QUEUE_WRAP\0A  0x%08x %016llx IO_QUEUE_OFFSET\0A  0x%08x %016llx IO_QUEUE_WTIME\0A  0x%08x %016llx IO_QUEUE_ERRCNTS\0A  0x%08x %016llx IO_QUEUE_LRW\0A\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"warn: genwqe_card_write_reg64 returned %d errno=%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"warn: genwqe_card_read_reg64 returned %d errno=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !17 {
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
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !37, metadata !38), !dbg !39
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !40, metadata !38), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %6, metadata !42, metadata !38), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %7, metadata !44, metadata !38), !dbg !45
  store i32 0, i32* %7, align 4, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %8, metadata !46, metadata !38), !dbg !47
  store i32 0, i32* %8, align 4, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %9, metadata !48, metadata !38), !dbg !49
  call void @llvm.dbg.declare(metadata i32* %10, metadata !50, metadata !38), !dbg !51
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %11, metadata !52, metadata !38), !dbg !57
  br label %13, !dbg !58

; <label>:13:                                     ; preds = %2, %41
  call void @llvm.dbg.declare(metadata i32* %12, metadata !59, metadata !38), !dbg !61
  store i32 0, i32* %12, align 4, !dbg !61
  %14 = load i32, i32* %4, align 4, !dbg !62
  %15 = load i8**, i8*** %5, align 8, !dbg !63
  %16 = call i32 @getopt_long(i32 %14, i8** %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @main.long_options, i32 0, i32 0), i32* %12) #6, !dbg !64
  store i32 %16, i32* %6, align 4, !dbg !65
  %17 = load i32, i32* %6, align 4, !dbg !66
  %18 = icmp eq i32 %17, -1, !dbg !68
  br i1 %18, label %19, label %20, !dbg !69

; <label>:19:                                     ; preds = %13
  br label %42, !dbg !70

; <label>:20:                                     ; preds = %13
  %21 = load i32, i32* %6, align 4, !dbg !71
  switch i32 %21, label %37 [
    i32 67, label %22
    i32 81, label %26
    i32 104, label %27
    i32 86, label %31
    i32 118, label %34
  ], !dbg !72

; <label>:22:                                     ; preds = %20
  %23 = load i8*, i8** @optarg, align 8, !dbg !73
  %24 = call i64 @strtol(i8* %23, i8** null, i32 0) #6, !dbg !75
  %25 = trunc i64 %24 to i32, !dbg !75
  store i32 %25, i32* %8, align 4, !dbg !76
  br label %41, !dbg !77

; <label>:26:                                     ; preds = %20
  store i32 1, i32* %7, align 4, !dbg !78
  br label %41, !dbg !79

; <label>:27:                                     ; preds = %20
  %28 = load i8**, i8*** %5, align 8, !dbg !80
  %29 = getelementptr inbounds i8*, i8** %28, i64 0, !dbg !80
  %30 = load i8*, i8** %29, align 8, !dbg !80
  call void @usage(i8* %30), !dbg !81
  call void @exit(i32 0) #7, !dbg !82
  unreachable, !dbg !82

; <label>:31:                                     ; preds = %20
  %32 = load i8*, i8** @version, align 8, !dbg !83
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* %32), !dbg !84
  call void @exit(i32 0) #7, !dbg !85
  unreachable, !dbg !85

; <label>:34:                                     ; preds = %20
  %35 = load i32, i32* @verbose_flag, align 4, !dbg !86
  %36 = add nsw i32 %35, 1, !dbg !86
  store i32 %36, i32* @verbose_flag, align 4, !dbg !86
  br label %41, !dbg !87

; <label>:37:                                     ; preds = %20
  %38 = load i8**, i8*** %5, align 8, !dbg !88
  %39 = getelementptr inbounds i8*, i8** %38, i64 0, !dbg !88
  %40 = load i8*, i8** %39, align 8, !dbg !88
  call void @usage(i8* %40), !dbg !89
  call void @exit(i32 1) #7, !dbg !90
  unreachable, !dbg !90

; <label>:41:                                     ; preds = %34, %26, %22
  br label %13, !dbg !91, !llvm.loop !93

; <label>:42:                                     ; preds = %19
  %43 = load i32, i32* @optind, align 4, !dbg !94
  %44 = load i32, i32* %4, align 4, !dbg !96
  %45 = icmp ne i32 %43, %44, !dbg !97
  br i1 %45, label %46, label %50, !dbg !98

; <label>:46:                                     ; preds = %42
  %47 = load i8**, i8*** %5, align 8, !dbg !99
  %48 = getelementptr inbounds i8*, i8** %47, i64 0, !dbg !99
  %49 = load i8*, i8** %48, align 8, !dbg !99
  call void @usage(i8* %49), !dbg !101
  call void @exit(i32 1) #7, !dbg !102
  unreachable, !dbg !102

; <label>:50:                                     ; preds = %42
  %51 = load i32, i32* %8, align 4, !dbg !103
  %52 = call %struct.card_dev_t* @genwqe_card_open(i32 %51, i32 4, i32* %9, i64 0, i64 0), !dbg !104
  store %struct.card_dev_t* %52, %struct.card_dev_t** %11, align 8, !dbg !105
  %53 = load %struct.card_dev_t*, %struct.card_dev_t** %11, align 8, !dbg !106
  %54 = icmp eq %struct.card_dev_t* %53, null, !dbg !108
  br i1 %54, label %55, label %61, !dbg !109

; <label>:55:                                     ; preds = %50
  br label %56, !dbg !110, !llvm.loop !112

; <label>:56:                                     ; preds = %55
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !113
  %58 = load i32, i32* %9, align 4, !dbg !116
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 184, i32 %58), !dbg !117
  br label %60, !dbg !118

; <label>:60:                                     ; preds = %56
  call void @exit(i32 1) #7, !dbg !119
  unreachable, !dbg !119

; <label>:61:                                     ; preds = %50
  %62 = load i32, i32* @verbose_flag, align 4, !dbg !120
  call void @genwqe_card_lib_debug(i32 %62), !dbg !121
  store i32 1, i32* %10, align 4, !dbg !122
  %63 = load i32, i32* %7, align 4, !dbg !123
  %64 = icmp ne i32 %63, 0, !dbg !123
  br i1 %64, label %65, label %67, !dbg !125

; <label>:65:                                     ; preds = %61
  %66 = load %struct.card_dev_t*, %struct.card_dev_t** %11, align 8, !dbg !126
  call void @do_dump_queues(%struct.card_dev_t* %66), !dbg !128
  store i32 0, i32* %10, align 4, !dbg !129
  br label %67, !dbg !130

; <label>:67:                                     ; preds = %65, %61
  %68 = load %struct.card_dev_t*, %struct.card_dev_t** %11, align 8, !dbg !131
  %69 = call i32 @genwqe_card_close(%struct.card_dev_t* %68), !dbg !132
  %70 = load i32, i32* %10, align 4, !dbg !133
  %71 = icmp eq i32 %70, 1, !dbg !135
  br i1 %71, label %72, label %76, !dbg !136

; <label>:72:                                     ; preds = %67
  %73 = load i8**, i8*** %5, align 8, !dbg !137
  %74 = getelementptr inbounds i8*, i8** %73, i64 0, !dbg !137
  %75 = load i8*, i8** %74, align 8, !dbg !137
  call void @usage(i8* %75), !dbg !138
  br label %76, !dbg !138

; <label>:76:                                     ; preds = %72, %67
  %77 = load i32, i32* %10, align 4, !dbg !139
  call void @exit(i32 %77) #7, !dbg !140
  unreachable, !dbg !140
                                                  ; No predecessors!
  %79 = load i32, i32* %3, align 4, !dbg !141
  ret i32 %79, !dbg !141
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: nounwind uwtable
define internal void @usage(i8*) #0 !dbg !142 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !145, metadata !38), !dbg !146
  %3 = load i8*, i8** %2, align 8, !dbg !147
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([199 x i8], [199 x i8]* @.str.9, i32 0, i32 0), i8* %3), !dbg !148
  ret void, !dbg !149
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @printf(i8*, ...) #4

declare %struct.card_dev_t* @genwqe_card_open(i32, i32, i32*, i64, i64) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

declare void @genwqe_card_lib_debug(i32) #4

; Function Attrs: nounwind uwtable
define internal void @do_dump_queues(%struct.card_dev_t*) #0 !dbg !150 {
  %2 = alloca %struct.card_dev_t*, align 8
  %3 = alloca i32, align 4
  store %struct.card_dev_t* %0, %struct.card_dev_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %2, metadata !153, metadata !38), !dbg !154
  call void @llvm.dbg.declare(metadata i32* %3, metadata !155, metadata !38), !dbg !156
  br label %4, !dbg !157, !llvm.loop !158

; <label>:4:                                      ; preds = %1
  %5 = load i32, i32* @verbose_flag, align 4, !dbg !159
  %6 = icmp ne i32 %5, 0, !dbg !159
  br i1 %6, label %7, label %10, !dbg !159

; <label>:7:                                      ; preds = %4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !163
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.do_dump_queues, i32 0, i32 0)), !dbg !165
  br label %10, !dbg !165

; <label>:10:                                     ; preds = %7, %4
  br label %11, !dbg !166

; <label>:11:                                     ; preds = %10
  store i32 0, i32* %3, align 4, !dbg !168
  br label %12, !dbg !170

; <label>:12:                                     ; preds = %45, %11
  %13 = load i32, i32* %3, align 4, !dbg !171
  %14 = icmp slt i32 %13, 16, !dbg !174
  br i1 %14, label %15, label %48, !dbg !175

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %3, align 4, !dbg !176
  %17 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !178
  %18 = load i32, i32* %3, align 4, !dbg !179
  %19 = call i64 @vreadq(%struct.card_dev_t* %17, i32 327696, i32 %18), !dbg !180
  %20 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !181
  %21 = load i32, i32* %3, align 4, !dbg !182
  %22 = call i64 @vreadq(%struct.card_dev_t* %20, i32 327936, i32 %21), !dbg !183
  %23 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !184
  %24 = load i32, i32* %3, align 4, !dbg !185
  %25 = call i64 @vreadq(%struct.card_dev_t* %23, i32 327680, i32 %24), !dbg !186
  %26 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !187
  %27 = load i32, i32* %3, align 4, !dbg !188
  %28 = call i64 @vreadq(%struct.card_dev_t* %26, i32 327712, i32 %27), !dbg !189
  %29 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !190
  %30 = load i32, i32* %3, align 4, !dbg !191
  %31 = call i64 @vreadq(%struct.card_dev_t* %29, i32 327720, i32 %30), !dbg !192
  %32 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !193
  %33 = load i32, i32* %3, align 4, !dbg !194
  %34 = call i64 @vreadq(%struct.card_dev_t* %32, i32 327688, i32 %33), !dbg !195
  %35 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !196
  %36 = load i32, i32* %3, align 4, !dbg !197
  %37 = call i64 @vreadq(%struct.card_dev_t* %35, i32 327728, i32 %36), !dbg !198
  %38 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !199
  %39 = load i32, i32* %3, align 4, !dbg !200
  %40 = call i64 @vreadq(%struct.card_dev_t* %38, i32 327736, i32 %39), !dbg !201
  %41 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !202
  %42 = load i32, i32* %3, align 4, !dbg !203
  %43 = call i64 @vreadq(%struct.card_dev_t* %41, i32 327744, i32 %42), !dbg !204
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([311 x i8], [311 x i8]* @.str.12, i32 0, i32 0), i32 %16, i32 65552, i64 %19, i32 65792, i64 %22, i32 65536, i64 %25, i32 65568, i64 %28, i32 65576, i64 %31, i32 65544, i64 %34, i32 65584, i64 %37, i32 65592, i64 %40, i32 65600, i64 %43), !dbg !205
  br label %45, !dbg !206

; <label>:45:                                     ; preds = %15
  %46 = load i32, i32* %3, align 4, !dbg !207
  %47 = add nsw i32 %46, 1, !dbg !207
  store i32 %47, i32* %3, align 4, !dbg !207
  br label %12, !dbg !209, !llvm.loop !210

; <label>:48:                                     ; preds = %12
  ret void, !dbg !212
}

declare i32 @genwqe_card_close(%struct.card_dev_t*) #4

; Function Attrs: nounwind uwtable
define internal i64 @vreadq(%struct.card_dev_t*, i32, i32) #0 !dbg !213 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.card_dev_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %5, metadata !218, metadata !38), !dbg !219
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !220, metadata !38), !dbg !221
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !222, metadata !38), !dbg !223
  call void @llvm.dbg.declare(metadata i32* %8, metadata !224, metadata !38), !dbg !225
  call void @llvm.dbg.declare(metadata i64* %9, metadata !226, metadata !38), !dbg !227
  %10 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !228
  %11 = load i32, i32* %7, align 4, !dbg !229
  %12 = and i32 %11, 15, !dbg !230
  %13 = sext i32 %12 to i64, !dbg !229
  %14 = call i32 @genwqe_card_write_reg64(%struct.card_dev_t* %10, i32 393216, i64 %13), !dbg !231
  store i32 %14, i32* %8, align 4, !dbg !232
  %15 = load i32, i32* %8, align 4, !dbg !233
  %16 = icmp ne i32 %15, 0, !dbg !235
  br i1 %16, label %17, label %23, !dbg !236

; <label>:17:                                     ; preds = %3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !237
  %19 = load i32, i32* %8, align 4, !dbg !239
  %20 = call i32* @__errno_location() #1, !dbg !240
  %21 = load i32, i32* %20, align 4, !dbg !241
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i32 0, i32 0), i32 %19, i32 %21), !dbg !242
  store i64 -1, i64* %4, align 8, !dbg !243
  br label %37, !dbg !243

; <label>:23:                                     ; preds = %3
  %24 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !244
  %25 = load i32, i32* %6, align 4, !dbg !245
  %26 = call i64 @genwqe_card_read_reg64(%struct.card_dev_t* %24, i32 %25, i32* %8), !dbg !246
  store i64 %26, i64* %9, align 8, !dbg !247
  %27 = load i32, i32* %8, align 4, !dbg !248
  %28 = icmp ne i32 %27, 0, !dbg !250
  br i1 %28, label %29, label %35, !dbg !251

; <label>:29:                                     ; preds = %23
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !252
  %31 = load i32, i32* %8, align 4, !dbg !254
  %32 = call i32* @__errno_location() #1, !dbg !255
  %33 = load i32, i32* %32, align 4, !dbg !256
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i32 0, i32 0), i32 %31, i32 %33), !dbg !257
  store i64 -1, i64* %4, align 8, !dbg !258
  br label %37, !dbg !258

; <label>:35:                                     ; preds = %23
  %36 = load i64, i64* %9, align 8, !dbg !259
  store i64 %36, i64* %4, align 8, !dbg !260
  br label %37, !dbg !260

; <label>:37:                                     ; preds = %35, %29, %17
  %38 = load i64, i64* %4, align 8, !dbg !261
  ret i64 %38, !dbg !261
}

declare i32 @genwqe_card_write_reg64(%struct.card_dev_t*, i32, i64) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i64 @genwqe_card_read_reg64(%struct.card_dev_t*, i32, i32*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!34, !35}
!llvm.ident = !{!36}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !12)
!1 = !DIFile(filename: "/home/lichi/Desktop/genwqe/[task]tools--genwqe_ffdc/[inter]tools--genwqe_ffdc.o.i", directory: "/home/lichi/Desktop")
!2 = !{}
!3 = !{!4, !7, !8, !9}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!8 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !10, line: 55, baseType: !11)
!10 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop")
!11 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!12 = !{!13, !16, !33}
!13 = distinct !DIGlobalVariable(name: "verbose_flag", scope: !0, file: !14, line: 24, type: !15, isLocal: false, isDefinition: true, variable: i32* @verbose_flag)
!14 = !DIFile(filename: "genwqe_ffdc.c", directory: "/home/lichi/Desktop")
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = distinct !DIGlobalVariable(name: "long_options", scope: !17, file: !14, line: 128, type: !20, isLocal: true, isDefinition: true, variable: [6 x %struct.option]* @main.long_options)
!17 = distinct !DISubprogram(name: "main", scope: !14, file: !14, line: 117, type: !18, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!18 = !DISubroutineType(types: !19)
!19 = !{!15, !15, !4}
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 1536, align: 64, elements: !31)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !22, line: 104, size: 256, align: 64, elements: !23)
!22 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/lichi/Desktop")
!23 = !{!24, !27, !28, !30}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !21, file: !22, line: 106, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !21, file: !22, line: 109, baseType: !15, size: 32, align: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !21, file: !22, line: 110, baseType: !29, size: 64, align: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !21, file: !22, line: 111, baseType: !15, size: 32, align: 32, offset: 192)
!31 = !{!32}
!32 = !DISubrange(count: 6)
!33 = distinct !DIGlobalVariable(name: "version", scope: !0, file: !14, line: 23, type: !25, isLocal: true, isDefinition: true, variable: i8** @version)
!34 = !{i32 2, !"Dwarf Version", i32 4}
!35 = !{i32 2, !"Debug Info Version", i32 3}
!36 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!37 = !DILocalVariable(name: "argc", arg: 1, scope: !17, file: !14, line: 117, type: !15)
!38 = !DIExpression()
!39 = !DILocation(line: 117, column: 14, scope: !17)
!40 = !DILocalVariable(name: "argv", arg: 2, scope: !17, file: !14, line: 117, type: !4)
!41 = !DILocation(line: 117, column: 26, scope: !17)
!42 = !DILocalVariable(name: "ch", scope: !17, file: !14, line: 119, type: !15)
!43 = !DILocation(line: 119, column: 6, scope: !17)
!44 = !DILocalVariable(name: "dump_queues", scope: !17, file: !14, line: 120, type: !15)
!45 = !DILocation(line: 120, column: 6, scope: !17)
!46 = !DILocalVariable(name: "card_no", scope: !17, file: !14, line: 121, type: !15)
!47 = !DILocation(line: 121, column: 6, scope: !17)
!48 = !DILocalVariable(name: "err_code", scope: !17, file: !14, line: 122, type: !15)
!49 = !DILocation(line: 122, column: 6, scope: !17)
!50 = !DILocalVariable(name: "rc", scope: !17, file: !14, line: 123, type: !15)
!51 = !DILocation(line: 123, column: 6, scope: !17)
!52 = !DILocalVariable(name: "card", scope: !17, file: !14, line: 124, type: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "card_handle_t", file: !54, line: 95, baseType: !55)
!54 = !DIFile(filename: "../include/libcard.h", directory: "/home/lichi/Desktop")
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "card_dev_t", file: !54, line: 95, flags: DIFlagFwdDecl)
!57 = !DILocation(line: 124, column: 16, scope: !17)
!58 = !DILocation(line: 126, column: 2, scope: !17)
!59 = !DILocalVariable(name: "option_index", scope: !60, file: !14, line: 127, type: !15)
!60 = distinct !DILexicalBlock(scope: !17, file: !14, line: 126, column: 12)
!61 = !DILocation(line: 127, column: 7, scope: !60)
!62 = !DILocation(line: 141, column: 20, scope: !60)
!63 = !DILocation(line: 141, column: 26, scope: !60)
!64 = !DILocation(line: 141, column: 8, scope: !60)
!65 = !DILocation(line: 141, column: 6, scope: !60)
!66 = !DILocation(line: 143, column: 7, scope: !67)
!67 = distinct !DILexicalBlock(scope: !60, file: !14, line: 143, column: 7)
!68 = !DILocation(line: 143, column: 10, scope: !67)
!69 = !DILocation(line: 143, column: 7, scope: !60)
!70 = !DILocation(line: 144, column: 4, scope: !67)
!71 = !DILocation(line: 146, column: 11, scope: !60)
!72 = !DILocation(line: 146, column: 3, scope: !60)
!73 = !DILocation(line: 149, column: 21, scope: !74)
!74 = distinct !DILexicalBlock(scope: !60, file: !14, line: 146, column: 15)
!75 = !DILocation(line: 149, column: 14, scope: !74)
!76 = !DILocation(line: 149, column: 12, scope: !74)
!77 = !DILocation(line: 150, column: 4, scope: !74)
!78 = !DILocation(line: 153, column: 16, scope: !74)
!79 = !DILocation(line: 154, column: 4, scope: !74)
!80 = !DILocation(line: 157, column: 10, scope: !74)
!81 = !DILocation(line: 157, column: 4, scope: !74)
!82 = !DILocation(line: 158, column: 4, scope: !74)
!83 = !DILocation(line: 162, column: 19, scope: !74)
!84 = !DILocation(line: 162, column: 4, scope: !74)
!85 = !DILocation(line: 163, column: 4, scope: !74)
!86 = !DILocation(line: 166, column: 16, scope: !74)
!87 = !DILocation(line: 167, column: 4, scope: !74)
!88 = !DILocation(line: 170, column: 10, scope: !74)
!89 = !DILocation(line: 170, column: 4, scope: !74)
!90 = !DILocation(line: 171, column: 4, scope: !74)
!91 = !DILocation(line: 126, column: 2, scope: !92)
!92 = !DILexicalBlockFile(scope: !17, file: !14, discriminator: 1)
!93 = distinct !{!93, !58}
!94 = !DILocation(line: 175, column: 6, scope: !95)
!95 = distinct !DILexicalBlock(scope: !17, file: !14, line: 175, column: 6)
!96 = !DILocation(line: 175, column: 16, scope: !95)
!97 = !DILocation(line: 175, column: 13, scope: !95)
!98 = !DILocation(line: 175, column: 6, scope: !17)
!99 = !DILocation(line: 176, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !95, file: !14, line: 175, column: 22)
!101 = !DILocation(line: 176, column: 3, scope: !100)
!102 = !DILocation(line: 177, column: 3, scope: !100)
!103 = !DILocation(line: 181, column: 26, scope: !17)
!104 = !DILocation(line: 181, column: 9, scope: !17)
!105 = !DILocation(line: 181, column: 7, scope: !17)
!106 = !DILocation(line: 183, column: 6, scope: !107)
!107 = distinct !DILexicalBlock(scope: !17, file: !14, line: 183, column: 6)
!108 = !DILocation(line: 183, column: 11, scope: !107)
!109 = !DILocation(line: 183, column: 6, scope: !17)
!110 = !DILocation(line: 184, column: 3, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !14, line: 183, column: 19)
!112 = distinct !{!112, !110}
!113 = !DILocation(line: 184, column: 2, scope: !114)
!114 = !DILexicalBlockFile(scope: !115, file: !14, discriminator: 1)
!115 = distinct !DILexicalBlock(scope: !111, file: !14, line: 184, column: 6)
!116 = !DILocation(line: 184, column: 77, scope: !114)
!117 = !DILocation(line: 184, column: 8, scope: !114)
!118 = !DILocation(line: 184, column: 88, scope: !114)
!119 = !DILocation(line: 185, column: 3, scope: !111)
!120 = !DILocation(line: 187, column: 24, scope: !17)
!121 = !DILocation(line: 187, column: 2, scope: !17)
!122 = !DILocation(line: 189, column: 5, scope: !17)
!123 = !DILocation(line: 190, column: 6, scope: !124)
!124 = distinct !DILexicalBlock(scope: !17, file: !14, line: 190, column: 6)
!125 = !DILocation(line: 190, column: 6, scope: !17)
!126 = !DILocation(line: 191, column: 18, scope: !127)
!127 = distinct !DILexicalBlock(scope: !124, file: !14, line: 190, column: 19)
!128 = !DILocation(line: 191, column: 3, scope: !127)
!129 = !DILocation(line: 192, column: 6, scope: !127)
!130 = !DILocation(line: 193, column: 2, scope: !127)
!131 = !DILocation(line: 195, column: 20, scope: !17)
!132 = !DILocation(line: 195, column: 2, scope: !17)
!133 = !DILocation(line: 196, column: 6, scope: !134)
!134 = distinct !DILexicalBlock(scope: !17, file: !14, line: 196, column: 6)
!135 = !DILocation(line: 196, column: 9, scope: !134)
!136 = !DILocation(line: 196, column: 6, scope: !17)
!137 = !DILocation(line: 197, column: 9, scope: !134)
!138 = !DILocation(line: 197, column: 3, scope: !134)
!139 = !DILocation(line: 199, column: 7, scope: !17)
!140 = !DILocation(line: 199, column: 2, scope: !17)
!141 = !DILocation(line: 200, column: 1, scope: !17)
!142 = distinct !DISubprogram(name: "usage", scope: !14, file: !14, line: 43, type: !143, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !25}
!145 = !DILocalVariable(name: "prog", arg: 1, scope: !142, file: !14, line: 43, type: !25)
!146 = !DILocation(line: 43, column: 31, scope: !142)
!147 = !DILocation(line: 52, column: 15, scope: !142)
!148 = !DILocation(line: 45, column: 2, scope: !142)
!149 = !DILocation(line: 53, column: 1, scope: !142)
!150 = distinct !DISubprogram(name: "do_dump_queues", scope: !14, file: !14, line: 79, type: !151, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !53}
!153 = !DILocalVariable(name: "c", arg: 1, scope: !150, file: !14, line: 79, type: !53)
!154 = !DILocation(line: 79, column: 42, scope: !150)
!155 = !DILocalVariable(name: "func", scope: !150, file: !14, line: 81, type: !15)
!156 = !DILocation(line: 81, column: 6, scope: !150)
!157 = !DILocation(line: 83, column: 2, scope: !150)
!158 = distinct !{!158, !157}
!159 = !DILocation(line: 83, column: 11, scope: !160)
!160 = !DILexicalBlockFile(scope: !161, file: !14, discriminator: 1)
!161 = distinct !DILexicalBlock(scope: !162, file: !14, line: 83, column: 11)
!162 = distinct !DILexicalBlock(scope: !150, file: !14, line: 83, column: 5)
!163 = !DILocation(line: 83, column: 1, scope: !164)
!164 = !DILexicalBlockFile(scope: !161, file: !14, discriminator: 2)
!165 = !DILocation(line: 83, column: 25, scope: !164)
!166 = !DILocation(line: 83, column: 64, scope: !167)
!167 = !DILexicalBlockFile(scope: !162, file: !14, discriminator: 3)
!168 = !DILocation(line: 85, column: 12, scope: !169)
!169 = distinct !DILexicalBlock(scope: !150, file: !14, line: 85, column: 2)
!170 = !DILocation(line: 85, column: 7, scope: !169)
!171 = !DILocation(line: 85, column: 17, scope: !172)
!172 = !DILexicalBlockFile(scope: !173, file: !14, discriminator: 1)
!173 = distinct !DILexicalBlock(scope: !169, file: !14, line: 85, column: 2)
!174 = !DILocation(line: 85, column: 22, scope: !172)
!175 = !DILocation(line: 85, column: 2, scope: !172)
!176 = !DILocation(line: 95, column: 45, scope: !177)
!177 = distinct !DILexicalBlock(scope: !173, file: !14, line: 85, column: 36)
!178 = !DILocation(line: 97, column: 28, scope: !177)
!179 = !DILocation(line: 97, column: 43, scope: !177)
!180 = !DILocation(line: 97, column: 21, scope: !177)
!181 = !DILocation(line: 99, column: 28, scope: !177)
!182 = !DILocation(line: 99, column: 43, scope: !177)
!183 = !DILocation(line: 99, column: 21, scope: !177)
!184 = !DILocation(line: 101, column: 28, scope: !177)
!185 = !DILocation(line: 101, column: 43, scope: !177)
!186 = !DILocation(line: 101, column: 21, scope: !177)
!187 = !DILocation(line: 103, column: 28, scope: !177)
!188 = !DILocation(line: 103, column: 43, scope: !177)
!189 = !DILocation(line: 103, column: 21, scope: !177)
!190 = !DILocation(line: 105, column: 28, scope: !177)
!191 = !DILocation(line: 105, column: 43, scope: !177)
!192 = !DILocation(line: 105, column: 21, scope: !177)
!193 = !DILocation(line: 107, column: 28, scope: !177)
!194 = !DILocation(line: 107, column: 43, scope: !177)
!195 = !DILocation(line: 107, column: 21, scope: !177)
!196 = !DILocation(line: 109, column: 28, scope: !177)
!197 = !DILocation(line: 109, column: 43, scope: !177)
!198 = !DILocation(line: 109, column: 21, scope: !177)
!199 = !DILocation(line: 111, column: 28, scope: !177)
!200 = !DILocation(line: 111, column: 43, scope: !177)
!201 = !DILocation(line: 111, column: 21, scope: !177)
!202 = !DILocation(line: 113, column: 28, scope: !177)
!203 = !DILocation(line: 113, column: 43, scope: !177)
!204 = !DILocation(line: 113, column: 21, scope: !177)
!205 = !DILocation(line: 86, column: 3, scope: !177)
!206 = !DILocation(line: 114, column: 2, scope: !177)
!207 = !DILocation(line: 85, column: 32, scope: !208)
!208 = !DILexicalBlockFile(scope: !173, file: !14, discriminator: 2)
!209 = !DILocation(line: 85, column: 2, scope: !208)
!210 = distinct !{!210, !211}
!211 = !DILocation(line: 85, column: 2, scope: !150)
!212 = !DILocation(line: 115, column: 1, scope: !150)
!213 = distinct !DISubprogram(name: "vreadq", scope: !14, file: !14, line: 55, type: !214, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!214 = !DISubroutineType(types: !215)
!215 = !{!9, !53, !216, !15}
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !10, line: 51, baseType: !217)
!217 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!218 = !DILocalVariable(name: "c", arg: 1, scope: !213, file: !14, line: 55, type: !53)
!219 = !DILocation(line: 55, column: 38, scope: !213)
!220 = !DILocalVariable(name: "reg", arg: 2, scope: !213, file: !14, line: 55, type: !216)
!221 = !DILocation(line: 55, column: 50, scope: !213)
!222 = !DILocalVariable(name: "func", arg: 3, scope: !213, file: !14, line: 55, type: !15)
!223 = !DILocation(line: 55, column: 59, scope: !213)
!224 = !DILocalVariable(name: "rc", scope: !213, file: !14, line: 57, type: !15)
!225 = !DILocation(line: 57, column: 6, scope: !213)
!226 = !DILocalVariable(name: "val", scope: !213, file: !14, line: 58, type: !9)
!227 = !DILocation(line: 58, column: 11, scope: !213)
!228 = !DILocation(line: 60, column: 31, scope: !213)
!229 = !DILocation(line: 60, column: 46, scope: !213)
!230 = !DILocation(line: 60, column: 51, scope: !213)
!231 = !DILocation(line: 60, column: 7, scope: !213)
!232 = !DILocation(line: 60, column: 5, scope: !213)
!233 = !DILocation(line: 61, column: 6, scope: !234)
!234 = distinct !DILexicalBlock(scope: !213, file: !14, line: 61, column: 6)
!235 = !DILocation(line: 61, column: 9, scope: !234)
!236 = !DILocation(line: 61, column: 6, scope: !213)
!237 = !DILocation(line: 62, column: 10, scope: !238)
!238 = distinct !DILexicalBlock(scope: !234, file: !14, line: 61, column: 15)
!239 = !DILocation(line: 64, column: 4, scope: !238)
!240 = !DILocation(line: 64, column: 9, scope: !238)
!241 = !DILocation(line: 64, column: 8, scope: !238)
!242 = !DILocation(line: 62, column: 3, scope: !238)
!243 = !DILocation(line: 65, column: 3, scope: !238)
!244 = !DILocation(line: 68, column: 31, scope: !213)
!245 = !DILocation(line: 68, column: 34, scope: !213)
!246 = !DILocation(line: 68, column: 8, scope: !213)
!247 = !DILocation(line: 68, column: 6, scope: !213)
!248 = !DILocation(line: 69, column: 6, scope: !249)
!249 = distinct !DILexicalBlock(scope: !213, file: !14, line: 69, column: 6)
!250 = !DILocation(line: 69, column: 9, scope: !249)
!251 = !DILocation(line: 69, column: 6, scope: !213)
!252 = !DILocation(line: 70, column: 10, scope: !253)
!253 = distinct !DILexicalBlock(scope: !249, file: !14, line: 69, column: 15)
!254 = !DILocation(line: 72, column: 4, scope: !253)
!255 = !DILocation(line: 72, column: 9, scope: !253)
!256 = !DILocation(line: 72, column: 8, scope: !253)
!257 = !DILocation(line: 70, column: 3, scope: !253)
!258 = !DILocation(line: 73, column: 3, scope: !253)
!259 = !DILocation(line: 76, column: 9, scope: !213)
!260 = !DILocation(line: 76, column: 2, scope: !213)
!261 = !DILocation(line: 77, column: 1, scope: !213)
