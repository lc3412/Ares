; ModuleID = '/home/lichi/Desktop/genwqe/[task]tools--genwqe_vpdconv/[inter]tools--genwqe_vpd_common.o.i'
source_filename = "/home/lichi/Desktop/genwqe/[task]tools--genwqe_vpdconv/[inter]tools--genwqe_vpd_common.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.vpd_layout = type { i8*, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.swap_me = type { i32 }
%struct.anon.0 = type { [4 x i8] }

@genwqe_crc32_lut = internal global [256 x i32] zeroinitializer, align 16
@vpd_ref_102 = internal constant [10 x %struct.vpd_layout] [%struct.vpd_layout { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0) }, %struct.vpd_layout { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i32 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0) }, %struct.vpd_layout { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i32 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0) }, %struct.vpd_layout { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i32 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0) }, %struct.vpd_layout { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32 13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0) }, %struct.vpd_layout { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0) }, %struct.vpd_layout { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0) }, %struct.vpd_layout { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i32 6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0) }, %struct.vpd_layout { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i32 6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0) }, %struct.vpd_layout { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0) }], align 16
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [46 x i8] c"%s:%u: Error: Binary File Got: %s Expect: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"genwqe_vpd_common.c\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"%s:%u: Error: Binary File Got: %d Expect: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"%s:%u: Error: Binary File Got: %c Expect: %c\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"\22%s\22,%d,\22%c\22,\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"%s:%u: Error: Wrong Version: %x Expect: %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%2.2x\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@verbose_flag = external global i32, align 4
@stdout = external global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [40 x i8] c"Check for %d of %d tokens in bin file.\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"%s:%u: Error: %d of %d tokens fond in input.\0A\00", align 1
@_dbg_flag = external global i32, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"Line (#%d) %d: <%s>\0A\00", align 1
@crc_token = internal global [3 x i8] c"CS\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"%s:%u: Error: Wrong VPD Version found %x\0A\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"%s:%u: Error: Line# %d Field: %d Syndrom: <%s>\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Skip Line# %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"Line# %d OK Num Fields %d Offset: %d Size: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"%s:%u: Error: Exit due to out of buffer size %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"RV\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"PN\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"FN\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"SN\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"FC\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"CC\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"M0\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"M1\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"CS\00", align 1

; Function Attrs: nounwind uwtable
define void @genwqe_crc32_setup_lut() #0 !dbg !59 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !63, metadata !64), !dbg !65
  call void @llvm.dbg.declare(metadata i32* %2, metadata !66, metadata !64), !dbg !67
  call void @llvm.dbg.declare(metadata i32* %3, metadata !68, metadata !64), !dbg !69
  store i32 0, i32* %1, align 4, !dbg !70
  br label %4, !dbg !72

; <label>:4:                                      ; preds = %34, %0
  %5 = load i32, i32* %1, align 4, !dbg !73
  %6 = zext i32 %5 to i64, !dbg !73
  %7 = icmp ult i64 %6, 256, !dbg !76
  br i1 %7, label %8, label %37, !dbg !77

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %1, align 4, !dbg !78
  %10 = shl i32 %9, 24, !dbg !80
  store i32 %10, i32* %3, align 4, !dbg !81
  store i32 0, i32* %2, align 4, !dbg !82
  br label %11, !dbg !84

; <label>:11:                                     ; preds = %26, %8
  %12 = load i32, i32* %2, align 4, !dbg !85
  %13 = icmp ult i32 %12, 8, !dbg !88
  br i1 %13, label %14, label %29, !dbg !89

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %3, align 4, !dbg !90
  %16 = and i32 %15, -2147483648, !dbg !93
  %17 = icmp ne i32 %16, 0, !dbg !93
  br i1 %17, label %18, label %22, !dbg !94

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %3, align 4, !dbg !95
  %20 = shl i32 %19, 1, !dbg !96
  %21 = xor i32 %20, 79764919, !dbg !97
  store i32 %21, i32* %3, align 4, !dbg !98
  br label %25, !dbg !99

; <label>:22:                                     ; preds = %14
  %23 = load i32, i32* %3, align 4, !dbg !100
  %24 = shl i32 %23, 1, !dbg !101
  store i32 %24, i32* %3, align 4, !dbg !102
  br label %25

; <label>:25:                                     ; preds = %22, %18
  br label %26, !dbg !103

; <label>:26:                                     ; preds = %25
  %27 = load i32, i32* %2, align 4, !dbg !104
  %28 = add i32 %27, 1, !dbg !104
  store i32 %28, i32* %2, align 4, !dbg !104
  br label %11, !dbg !106, !llvm.loop !107

; <label>:29:                                     ; preds = %11
  %30 = load i32, i32* %3, align 4, !dbg !109
  %31 = load i32, i32* %1, align 4, !dbg !110
  %32 = zext i32 %31 to i64, !dbg !111
  %33 = getelementptr inbounds [256 x i32], [256 x i32]* @genwqe_crc32_lut, i64 0, i64 %32, !dbg !111
  store i32 %30, i32* %33, align 4, !dbg !112
  br label %34, !dbg !113

; <label>:34:                                     ; preds = %29
  %35 = load i32, i32* %1, align 4, !dbg !114
  %36 = add i32 %35, 1, !dbg !114
  store i32 %36, i32* %1, align 4, !dbg !114
  br label %4, !dbg !116, !llvm.loop !117

; <label>:37:                                     ; preds = %4
  ret void, !dbg !119
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @genwqe_crc32_gen(i8*, i64, i32) #0 !dbg !120 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !127, metadata !64), !dbg !128
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !129, metadata !64), !dbg !130
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !131, metadata !64), !dbg !132
  call void @llvm.dbg.declare(metadata i32* %7, metadata !133, metadata !64), !dbg !134
  call void @llvm.dbg.declare(metadata i32* %8, metadata !135, metadata !64), !dbg !136
  %9 = load i32, i32* %6, align 4, !dbg !137
  store i32 %9, i32* %8, align 4, !dbg !138
  br label %10, !dbg !139

; <label>:10:                                     ; preds = %14, %3
  %11 = load i64, i64* %5, align 8, !dbg !140
  %12 = add i64 %11, -1, !dbg !140
  store i64 %12, i64* %5, align 8, !dbg !140
  %13 = icmp ne i64 %11, 0, !dbg !142
  br i1 %13, label %14, label %30, !dbg !142

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %8, align 4, !dbg !143
  %16 = lshr i32 %15, 24, !dbg !145
  %17 = load i8*, i8** %4, align 8, !dbg !146
  %18 = getelementptr inbounds i8, i8* %17, i32 1, !dbg !146
  store i8* %18, i8** %4, align 8, !dbg !146
  %19 = load i8, i8* %17, align 1, !dbg !147
  %20 = zext i8 %19 to i32, !dbg !147
  %21 = xor i32 %16, %20, !dbg !148
  %22 = and i32 %21, 255, !dbg !149
  store i32 %22, i32* %7, align 4, !dbg !150
  %23 = load i32, i32* %8, align 4, !dbg !151
  %24 = shl i32 %23, 8, !dbg !152
  %25 = load i32, i32* %7, align 4, !dbg !153
  %26 = sext i32 %25 to i64, !dbg !154
  %27 = getelementptr inbounds [256 x i32], [256 x i32]* @genwqe_crc32_lut, i64 0, i64 %26, !dbg !154
  %28 = load i32, i32* %27, align 4, !dbg !154
  %29 = xor i32 %24, %28, !dbg !155
  store i32 %29, i32* %8, align 4, !dbg !156
  br label %10, !dbg !157, !llvm.loop !159

; <label>:30:                                     ; preds = %10
  %31 = load i32, i32* %8, align 4, !dbg !160
  ret i32 %31, !dbg !161
}

; Function Attrs: nounwind uwtable
define zeroext i1 @bin_2_csv(%struct._IO_FILE*, i32, i8*) #0 !dbg !162 {
  %4 = alloca i1, align 1
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca [4 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.swap_me, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !222, metadata !64), !dbg !223
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !224, metadata !64), !dbg !225
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !226, metadata !64), !dbg !227
  call void @llvm.dbg.declare(metadata i8* %8, metadata !228, metadata !64), !dbg !229
  call void @llvm.dbg.declare(metadata [4 x i8]* %9, metadata !230, metadata !64), !dbg !234
  call void @llvm.dbg.declare(metadata i32* %10, metadata !235, metadata !64), !dbg !236
  call void @llvm.dbg.declare(metadata i32* %11, metadata !237, metadata !64), !dbg !238
  store i32 0, i32* %11, align 4, !dbg !238
  call void @llvm.dbg.declare(metadata i32* %12, metadata !239, metadata !64), !dbg !240
  store i32 0, i32* %12, align 4, !dbg !240
  call void @llvm.dbg.declare(metadata %union.swap_me* %13, metadata !241, metadata !64), !dbg !258
  %14 = bitcast %union.swap_me* %13 to i32*, !dbg !259
  store i32 0, i32* %14, align 4, !dbg !260
  br label %15, !dbg !261

; <label>:15:                                     ; preds = %192, %3
  %16 = load i32, i32* %6, align 4, !dbg !262
  %17 = icmp ne i32 %16, 0, !dbg !264
  br i1 %17, label %18, label %201, !dbg !264

; <label>:18:                                     ; preds = %15
  %19 = load i8*, i8** %7, align 8, !dbg !265
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !265
  store i8* %20, i8** %7, align 8, !dbg !265
  %21 = load i8, i8* %19, align 1, !dbg !267
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0, !dbg !268
  store i8 %21, i8* %22, align 1, !dbg !269
  %23 = load i8*, i8** %7, align 8, !dbg !270
  %24 = getelementptr inbounds i8, i8* %23, i32 1, !dbg !270
  store i8* %24, i8** %7, align 8, !dbg !270
  %25 = load i8, i8* %23, align 1, !dbg !271
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1, !dbg !272
  store i8 %25, i8* %26, align 1, !dbg !273
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 2, !dbg !274
  store i8 0, i8* %27, align 1, !dbg !275
  %28 = load i8*, i8** %7, align 8, !dbg !276
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !276
  store i8* %29, i8** %7, align 8, !dbg !276
  %30 = load i8, i8* %28, align 1, !dbg !277
  %31 = zext i8 %30 to i32, !dbg !277
  store i32 %31, i32* %10, align 4, !dbg !278
  %32 = load i8*, i8** %7, align 8, !dbg !279
  %33 = getelementptr inbounds i8, i8* %32, i32 1, !dbg !279
  store i8* %33, i8** %7, align 8, !dbg !279
  %34 = load i8, i8* %32, align 1, !dbg !280
  store i8 %34, i8* %8, align 1, !dbg !281
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i32 0, i32 0, !dbg !282
  %36 = load i32, i32* %12, align 4, !dbg !284
  %37 = sext i32 %36 to i64, !dbg !285
  %38 = getelementptr inbounds [10 x %struct.vpd_layout], [10 x %struct.vpd_layout]* @vpd_ref_102, i64 0, i64 %37, !dbg !285
  %39 = getelementptr inbounds %struct.vpd_layout, %struct.vpd_layout* %38, i32 0, i32 0, !dbg !286
  %40 = load i8*, i8** %39, align 8, !dbg !286
  %41 = call i32 @strcmp(i8* %35, i8* %40) #8, !dbg !287
  %42 = icmp ne i32 0, %41, !dbg !288
  br i1 %42, label %43, label %54, !dbg !289

; <label>:43:                                     ; preds = %18
  br label %44, !dbg !290, !llvm.loop !292

; <label>:44:                                     ; preds = %43
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !293
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i32 0, i32 0, !dbg !296
  %47 = load i32, i32* %12, align 4, !dbg !297
  %48 = sext i32 %47 to i64, !dbg !298
  %49 = getelementptr inbounds [10 x %struct.vpd_layout], [10 x %struct.vpd_layout]* @vpd_ref_102, i64 0, i64 %48, !dbg !298
  %50 = getelementptr inbounds %struct.vpd_layout, %struct.vpd_layout* %49, i32 0, i32 0, !dbg !299
  %51 = load i8*, i8** %50, align 8, !dbg !299
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 113, i8* %46, i8* %51), !dbg !300
  br label %53, !dbg !301

; <label>:53:                                     ; preds = %44
  store i1 false, i1* %4, align 1, !dbg !302
  br label %221, !dbg !302

; <label>:54:                                     ; preds = %18
  %55 = load i32, i32* %10, align 4, !dbg !303
  %56 = load i32, i32* %12, align 4, !dbg !305
  %57 = sext i32 %56 to i64, !dbg !306
  %58 = getelementptr inbounds [10 x %struct.vpd_layout], [10 x %struct.vpd_layout]* @vpd_ref_102, i64 0, i64 %57, !dbg !306
  %59 = getelementptr inbounds %struct.vpd_layout, %struct.vpd_layout* %58, i32 0, i32 1, !dbg !307
  %60 = load i32, i32* %59, align 8, !dbg !307
  %61 = icmp ne i32 %55, %60, !dbg !308
  br i1 %61, label %62, label %73, !dbg !309

; <label>:62:                                     ; preds = %54
  br label %63, !dbg !310, !llvm.loop !312

; <label>:63:                                     ; preds = %62
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !313
  %65 = load i32, i32* %10, align 4, !dbg !316
  %66 = load i32, i32* %12, align 4, !dbg !317
  %67 = sext i32 %66 to i64, !dbg !318
  %68 = getelementptr inbounds [10 x %struct.vpd_layout], [10 x %struct.vpd_layout]* @vpd_ref_102, i64 0, i64 %67, !dbg !318
  %69 = getelementptr inbounds %struct.vpd_layout, %struct.vpd_layout* %68, i32 0, i32 1, !dbg !319
  %70 = load i32, i32* %69, align 8, !dbg !319
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 118, i32 %65, i32 %70), !dbg !320
  br label %72, !dbg !321

; <label>:72:                                     ; preds = %63
  store i1 false, i1* %4, align 1, !dbg !322
  br label %221, !dbg !322

; <label>:73:                                     ; preds = %54
  %74 = load i8, i8* %8, align 1, !dbg !323
  %75 = sext i8 %74 to i32, !dbg !323
  %76 = load i32, i32* %12, align 4, !dbg !325
  %77 = sext i32 %76 to i64, !dbg !326
  %78 = getelementptr inbounds [10 x %struct.vpd_layout], [10 x %struct.vpd_layout]* @vpd_ref_102, i64 0, i64 %77, !dbg !326
  %79 = getelementptr inbounds %struct.vpd_layout, %struct.vpd_layout* %78, i32 0, i32 2, !dbg !327
  %80 = load i8*, i8** %79, align 8, !dbg !327
  %81 = load i8, i8* %80, align 1, !dbg !328
  %82 = sext i8 %81 to i32, !dbg !328
  %83 = icmp ne i32 %75, %82, !dbg !329
  br i1 %83, label %84, label %98, !dbg !330

; <label>:84:                                     ; preds = %73
  br label %85, !dbg !331, !llvm.loop !333

; <label>:85:                                     ; preds = %84
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !334
  %87 = load i8, i8* %8, align 1, !dbg !337
  %88 = sext i8 %87 to i32, !dbg !337
  %89 = load i32, i32* %12, align 4, !dbg !338
  %90 = sext i32 %89 to i64, !dbg !339
  %91 = getelementptr inbounds [10 x %struct.vpd_layout], [10 x %struct.vpd_layout]* @vpd_ref_102, i64 0, i64 %90, !dbg !339
  %92 = getelementptr inbounds %struct.vpd_layout, %struct.vpd_layout* %91, i32 0, i32 2, !dbg !340
  %93 = load i8*, i8** %92, align 8, !dbg !340
  %94 = load i8, i8* %93, align 1, !dbg !341
  %95 = sext i8 %94 to i32, !dbg !341
  %96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 123, i32 %88, i32 %95), !dbg !342
  br label %97, !dbg !343

; <label>:97:                                     ; preds = %85
  store i1 false, i1* %4, align 1, !dbg !344
  br label %221, !dbg !344

; <label>:98:                                     ; preds = %73
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !345
  %100 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i32 0, i32 0, !dbg !346
  %101 = load i32, i32* %10, align 4, !dbg !347
  %102 = load i8, i8* %8, align 1, !dbg !348
  %103 = sext i8 %102 to i32, !dbg !348
  %104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* %100, i32 %101, i32 %103), !dbg !349
  %105 = load i8, i8* %8, align 1, !dbg !350
  %106 = sext i8 %105 to i32, !dbg !350
  %107 = icmp eq i32 65, %106, !dbg !352
  br i1 %107, label %108, label %142, !dbg !353

; <label>:108:                                    ; preds = %98
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !354
  %110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !dbg !356
  store i32 0, i32* %11, align 4, !dbg !357
  br label %111, !dbg !359

; <label>:111:                                    ; preds = %136, %108
  %112 = load i32, i32* %11, align 4, !dbg !360
  %113 = load i32, i32* %10, align 4, !dbg !363
  %114 = icmp slt i32 %112, %113, !dbg !364
  br i1 %114, label %115, label %139, !dbg !365

; <label>:115:                                    ; preds = %111
  %116 = load i8*, i8** %7, align 8, !dbg !366
  %117 = load i8, i8* %116, align 1, !dbg !369
  %118 = zext i8 %117 to i32, !dbg !370
  %119 = sext i32 %118 to i64, !dbg !366
  %120 = call i16** @__ctype_b_loc() #1, !dbg !371
  %121 = load i16*, i16** %120, align 8, !dbg !372
  %122 = getelementptr inbounds i16, i16* %121, i64 %119, !dbg !366
  %123 = load i16, i16* %122, align 2, !dbg !366
  %124 = zext i16 %123 to i32, !dbg !366
  %125 = and i32 %124, 16384, !dbg !373
  %126 = icmp ne i32 %125, 0, !dbg !373
  br i1 %126, label %127, label %133, !dbg !374

; <label>:127:                                    ; preds = %115
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !375
  %129 = load i8*, i8** %7, align 8, !dbg !376
  %130 = load i8, i8* %129, align 1, !dbg !377
  %131 = zext i8 %130 to i32, !dbg !377
  %132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 %131), !dbg !378
  br label %133, !dbg !378

; <label>:133:                                    ; preds = %127, %115
  %134 = load i8*, i8** %7, align 8, !dbg !379
  %135 = getelementptr inbounds i8, i8* %134, i32 1, !dbg !379
  store i8* %135, i8** %7, align 8, !dbg !379
  br label %136, !dbg !380

; <label>:136:                                    ; preds = %133
  %137 = load i32, i32* %11, align 4, !dbg !381
  %138 = add nsw i32 %137, 1, !dbg !381
  store i32 %138, i32* %11, align 4, !dbg !381
  br label %111, !dbg !383, !llvm.loop !384

; <label>:139:                                    ; preds = %111
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !386
  %141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !dbg !387
  br label %142, !dbg !388

; <label>:142:                                    ; preds = %139, %98
  %143 = load i8, i8* %8, align 1, !dbg !389
  %144 = sext i8 %143 to i32, !dbg !389
  %145 = icmp eq i32 88, %144, !dbg !391
  br i1 %145, label %146, label %192, !dbg !392

; <label>:146:                                    ; preds = %142
  %147 = load i32, i32* %12, align 4, !dbg !393
  %148 = icmp eq i32 0, %147, !dbg !396
  br i1 %148, label %149, label %176, !dbg !397

; <label>:149:                                    ; preds = %146
  %150 = load i8*, i8** %7, align 8, !dbg !398
  %151 = load i8, i8* %150, align 1, !dbg !400
  %152 = bitcast %union.swap_me* %13 to %struct.anon.0*, !dbg !401
  %153 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %152, i32 0, i32 0, !dbg !402
  %154 = getelementptr inbounds [4 x i8], [4 x i8]* %153, i64 0, i64 2, !dbg !403
  store i8 %151, i8* %154, align 2, !dbg !404
  %155 = load i8*, i8** %7, align 8, !dbg !405
  %156 = getelementptr inbounds i8, i8* %155, i64 1, !dbg !406
  %157 = load i8, i8* %156, align 1, !dbg !407
  %158 = bitcast %union.swap_me* %13 to %struct.anon.0*, !dbg !408
  %159 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %158, i32 0, i32 0, !dbg !409
  %160 = getelementptr inbounds [4 x i8], [4 x i8]* %159, i64 0, i64 3, !dbg !410
  store i8 %157, i8* %160, align 1, !dbg !411
  %161 = bitcast %union.swap_me* %13 to i32*, !dbg !412
  %162 = load i32, i32* %161, align 4, !dbg !412
  %163 = call i32 @__fswab32(i32 %162), !dbg !413
  %164 = bitcast %union.swap_me* %13 to i32*, !dbg !414
  store i32 %163, i32* %164, align 4, !dbg !415
  %165 = bitcast %union.swap_me* %13 to i32*, !dbg !416
  %166 = load i32, i32* %165, align 4, !dbg !416
  %167 = icmp ne i32 %166, 258, !dbg !418
  br i1 %167, label %168, label %175, !dbg !419

; <label>:168:                                    ; preds = %149
  br label %169, !dbg !420, !llvm.loop !422

; <label>:169:                                    ; preds = %168
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !423
  %171 = bitcast %union.swap_me* %13 to i32*, !dbg !426
  %172 = load i32, i32* %171, align 4, !dbg !426
  %173 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %170, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 144, i32 %172, i32 258), !dbg !427
  br label %174, !dbg !428

; <label>:174:                                    ; preds = %169
  store i1 false, i1* %4, align 1, !dbg !429
  br label %221, !dbg !429

; <label>:175:                                    ; preds = %149
  br label %176, !dbg !430

; <label>:176:                                    ; preds = %175, %146
  store i32 0, i32* %11, align 4, !dbg !431
  br label %177, !dbg !433

; <label>:177:                                    ; preds = %188, %176
  %178 = load i32, i32* %11, align 4, !dbg !434
  %179 = load i32, i32* %10, align 4, !dbg !437
  %180 = icmp slt i32 %178, %179, !dbg !438
  br i1 %180, label %181, label %191, !dbg !439

; <label>:181:                                    ; preds = %177
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !440
  %183 = load i8*, i8** %7, align 8, !dbg !441
  %184 = getelementptr inbounds i8, i8* %183, i32 1, !dbg !441
  store i8* %184, i8** %7, align 8, !dbg !441
  %185 = load i8, i8* %183, align 1, !dbg !442
  %186 = zext i8 %185 to i32, !dbg !442
  %187 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %182, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %186), !dbg !443
  br label %188, !dbg !443

; <label>:188:                                    ; preds = %181
  %189 = load i32, i32* %11, align 4, !dbg !444
  %190 = add nsw i32 %189, 1, !dbg !444
  store i32 %190, i32* %11, align 4, !dbg !444
  br label %177, !dbg !446, !llvm.loop !447

; <label>:191:                                    ; preds = %177
  br label %192, !dbg !449

; <label>:192:                                    ; preds = %191, %142
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !450
  %194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %193, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)), !dbg !451
  %195 = load i32, i32* %10, align 4, !dbg !452
  %196 = add nsw i32 4, %195, !dbg !453
  %197 = load i32, i32* %6, align 4, !dbg !454
  %198 = sub nsw i32 %197, %196, !dbg !454
  store i32 %198, i32* %6, align 4, !dbg !454
  %199 = load i32, i32* %12, align 4, !dbg !455
  %200 = add nsw i32 %199, 1, !dbg !455
  store i32 %200, i32* %12, align 4, !dbg !455
  br label %15, !dbg !456, !llvm.loop !458

; <label>:201:                                    ; preds = %15
  br label %202, !dbg !459, !llvm.loop !460

; <label>:202:                                    ; preds = %201
  %203 = load i32, i32* @verbose_flag, align 4, !dbg !461
  %204 = icmp ne i32 %203, 0, !dbg !461
  br i1 %204, label %205, label %209, !dbg !461

; <label>:205:                                    ; preds = %202
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !465
  %207 = load i32, i32* %12, align 4, !dbg !467
  %208 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %206, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0), i32 %207, i32 10), !dbg !468
  br label %209, !dbg !468

; <label>:209:                                    ; preds = %205, %202
  br label %210, !dbg !469

; <label>:210:                                    ; preds = %209
  %211 = load i32, i32* %12, align 4, !dbg !471
  %212 = sext i32 %211 to i64, !dbg !471
  %213 = icmp ne i64 10, %212, !dbg !473
  br i1 %213, label %214, label %220, !dbg !474

; <label>:214:                                    ; preds = %210
  br label %215, !dbg !475, !llvm.loop !477

; <label>:215:                                    ; preds = %214
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !478
  %217 = load i32, i32* %12, align 4, !dbg !481
  %218 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %216, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 160, i32 %217, i32 10), !dbg !482
  br label %219, !dbg !483

; <label>:219:                                    ; preds = %215
  store i1 false, i1* %4, align 1, !dbg !484
  br label %221, !dbg !484

; <label>:220:                                    ; preds = %210
  store i1 true, i1* %4, align 1, !dbg !485
  br label %221, !dbg !485

; <label>:221:                                    ; preds = %220, %219, %174, %97, %72, %53
  %222 = load i1, i1* %4, align 1, !dbg !486
  ret i1 %222, !dbg !486
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__fswab32(i32) #5 !dbg !487 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !491, metadata !64), !dbg !492
  %3 = load i32, i32* %2, align 4, !dbg !493
  %4 = call i32 @__arch_swab32(i32 %3), !dbg !494
  ret i32 %4, !dbg !495
}

; Function Attrs: nounwind uwtable
define zeroext i1 @csv_2_bin(%struct._IO_FILE*, i8*, i32*, i32*, i32*) #0 !dbg !496 {
  %6 = alloca i1, align 1
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [512 x i8], align 16
  %13 = alloca [512 x i8], align 16
  %14 = alloca [512 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %union.swap_me, align 4
  %29 = alloca %union.swap_me, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !501, metadata !64), !dbg !502
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !503, metadata !64), !dbg !504
  store i32* %2, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !505, metadata !64), !dbg !506
  store i32* %3, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !507, metadata !64), !dbg !508
  store i32* %4, i32** %11, align 8
  call void @llvm.dbg.declare(metadata i32** %11, metadata !509, metadata !64), !dbg !510
  call void @llvm.dbg.declare(metadata [512 x i8]* %12, metadata !511, metadata !64), !dbg !515
  call void @llvm.dbg.declare(metadata [512 x i8]* %13, metadata !516, metadata !64), !dbg !517
  call void @llvm.dbg.declare(metadata [512 x i8]* %14, metadata !518, metadata !64), !dbg !520
  call void @llvm.dbg.declare(metadata i32* %15, metadata !521, metadata !64), !dbg !522
  store i32 0, i32* %15, align 4, !dbg !522
  call void @llvm.dbg.declare(metadata i32* %16, metadata !523, metadata !64), !dbg !524
  call void @llvm.dbg.declare(metadata i8* %17, metadata !525, metadata !64), !dbg !526
  store i8 0, i8* %17, align 1, !dbg !526
  call void @llvm.dbg.declare(metadata i32* %18, metadata !527, metadata !64), !dbg !528
  call void @llvm.dbg.declare(metadata i32* %19, metadata !529, metadata !64), !dbg !530
  call void @llvm.dbg.declare(metadata i8* %20, metadata !531, metadata !64), !dbg !532
  call void @llvm.dbg.declare(metadata i8* %21, metadata !533, metadata !64), !dbg !534
  store i8 0, i8* %21, align 1, !dbg !534
  call void @llvm.dbg.declare(metadata i8* %22, metadata !535, metadata !64), !dbg !536
  call void @llvm.dbg.declare(metadata i8* %23, metadata !537, metadata !64), !dbg !538
  call void @llvm.dbg.declare(metadata i32* %24, metadata !539, metadata !64), !dbg !540
  call void @llvm.dbg.declare(metadata i32* %25, metadata !541, metadata !64), !dbg !542
  call void @llvm.dbg.declare(metadata i32* %26, metadata !543, metadata !64), !dbg !544
  call void @llvm.dbg.declare(metadata i32* %27, metadata !545, metadata !64), !dbg !546
  call void @llvm.dbg.declare(metadata %union.swap_me* %28, metadata !547, metadata !64), !dbg !548
  call void @llvm.dbg.declare(metadata %union.swap_me* %29, metadata !549, metadata !64), !dbg !550
  call void @llvm.dbg.declare(metadata i32* %30, metadata !551, metadata !64), !dbg !552
  store i32 0, i32* %30, align 4, !dbg !552
  store i32 0, i32* %25, align 4, !dbg !553
  store i32 0, i32* %26, align 4, !dbg !554
  store i32 -1, i32* %16, align 4, !dbg !555
  store i32 0, i32* %27, align 4, !dbg !556
  %35 = bitcast %union.swap_me* %29 to i32*, !dbg !557
  store i32 0, i32* %35, align 4, !dbg !558
  br label %36, !dbg !559

; <label>:36:                                     ; preds = %380, %342, %5
  %37 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i32 0, i32 0, !dbg !560
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !562
  %39 = call i8* @fgets(i8* %37, i32 512, %struct._IO_FILE* %38), !dbg !563
  %40 = icmp ne i8* null, %39, !dbg !564
  br i1 %40, label %41, label %383, !dbg !565

; <label>:41:                                     ; preds = %36
  call void @llvm.dbg.declare(metadata i32* %31, metadata !566, metadata !64), !dbg !568
  store i32 0, i32* %31, align 4, !dbg !568
  call void @llvm.dbg.declare(metadata i32* %32, metadata !569, metadata !64), !dbg !570
  call void @llvm.dbg.declare(metadata i32* %33, metadata !571, metadata !64), !dbg !572
  call void @llvm.dbg.declare(metadata i32* %34, metadata !573, metadata !64), !dbg !574
  %42 = load i32, i32* %15, align 4, !dbg !575
  %43 = add i32 %42, 1, !dbg !575
  store i32 %43, i32* %15, align 4, !dbg !575
  store i32 0, i32* %32, align 4, !dbg !576
  %44 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i32 0, i32 0, !dbg !577
  call void @llvm.memset.p0i8.i64(i8* %44, i8 0, i64 512, i32 16, i1 false), !dbg !577
  %45 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i32 0, i32 0, !dbg !578
  call void @llvm.memset.p0i8.i64(i8* %45, i8 0, i64 512, i32 16, i1 false), !dbg !578
  store i32 0, i32* %19, align 4, !dbg !579
  %46 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i32 0, i32 0, !dbg !580
  %47 = call i64 @strlen(i8* %46) #8, !dbg !581
  %48 = sub i64 %47, 2, !dbg !582
  %49 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 %48, !dbg !583
  store i8 0, i8* %49, align 1, !dbg !584
  %50 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i32 0, i32 0, !dbg !585
  %51 = call i64 @strlen(i8* %50) #8, !dbg !586
  %52 = trunc i64 %51 to i32, !dbg !587
  store i32 %52, i32* %33, align 4, !dbg !588
  br label %53, !dbg !589, !llvm.loop !590

; <label>:53:                                     ; preds = %41
  %54 = load i32, i32* @_dbg_flag, align 4, !dbg !591
  %55 = icmp ne i32 %54, 0, !dbg !591
  br i1 %55, label %56, label %62, !dbg !591

; <label>:56:                                     ; preds = %53
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !595
  %58 = load i32, i32* %15, align 4, !dbg !597
  %59 = load i32, i32* %33, align 4, !dbg !598
  %60 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i32 0, i32 0, !dbg !599
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i32 %58, i32 %59, i8* %60), !dbg !600
  br label %62, !dbg !600

; <label>:62:                                     ; preds = %56, %53
  br label %63, !dbg !601

; <label>:63:                                     ; preds = %62
  store i32 0, i32* %31, align 4, !dbg !603
  store i8 0, i8* %20, align 1, !dbg !604
  store i32 0, i32* %18, align 4, !dbg !605
  br label %64, !dbg !607

; <label>:64:                                     ; preds = %316, %63
  %65 = load i32, i32* %18, align 4, !dbg !608
  %66 = load i32, i32* %33, align 4, !dbg !611
  %67 = icmp sle i32 %65, %66, !dbg !612
  br i1 %67, label %68, label %319, !dbg !613

; <label>:68:                                     ; preds = %64
  %69 = load i32, i32* %18, align 4, !dbg !614
  %70 = sext i32 %69 to i64, !dbg !616
  %71 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 %70, !dbg !616
  %72 = load i8, i8* %71, align 1, !dbg !616
  %73 = sext i8 %72 to i32, !dbg !616
  switch i32 %73, label %291 [
    i32 44, label %74
    i32 0, label %74
  ], !dbg !617

; <label>:74:                                     ; preds = %68, %68
  %75 = load i32, i32* %31, align 4, !dbg !618
  switch i32 %75, label %278 [
    i32 0, label %76
    i32 1, label %107
    i32 2, label %128
    i32 3, label %146
  ], !dbg !620

; <label>:76:                                     ; preds = %74
  %77 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0, !dbg !621
  %78 = call i64 @strlen(i8* %77) #8, !dbg !623
  %79 = trunc i64 %78 to i32, !dbg !623
  store i32 %79, i32* %34, align 4, !dbg !624
  %80 = load i32, i32* %34, align 4, !dbg !625
  %81 = icmp eq i32 2, %80, !dbg !627
  br i1 %81, label %82, label %104, !dbg !628

; <label>:82:                                     ; preds = %76
  %83 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0, !dbg !629
  %84 = load i8, i8* %83, align 16, !dbg !629
  %85 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0, !dbg !631
  store i8 %84, i8* %85, align 16, !dbg !632
  %86 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 1, !dbg !633
  %87 = load i8, i8* %86, align 1, !dbg !633
  %88 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 1, !dbg !634
  store i8 %87, i8* %88, align 1, !dbg !635
  %89 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i32 0, i32 0, !dbg !636
  %90 = call i32 @strncmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @crc_token, i32 0, i32 0), i8* %89, i64 2) #8, !dbg !638
  %91 = icmp eq i32 0, %90, !dbg !639
  br i1 %91, label %92, label %93, !dbg !640

; <label>:92:                                     ; preds = %82
  store i8 1, i8* %21, align 1, !dbg !641
  br label %93, !dbg !642

; <label>:93:                                     ; preds = %92, %82
  %94 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0, !dbg !643
  %95 = load i32, i32* %27, align 4, !dbg !645
  %96 = sext i32 %95 to i64, !dbg !646
  %97 = getelementptr inbounds [10 x %struct.vpd_layout], [10 x %struct.vpd_layout]* @vpd_ref_102, i64 0, i64 %96, !dbg !646
  %98 = getelementptr inbounds %struct.vpd_layout, %struct.vpd_layout* %97, i32 0, i32 0, !dbg !647
  %99 = load i8*, i8** %98, align 8, !dbg !647
  %100 = call i32 @strcmp(i8* %94, i8* %99) #8, !dbg !648
  %101 = icmp ne i32 0, %100, !dbg !649
  br i1 %101, label %102, label %103, !dbg !650

; <label>:102:                                    ; preds = %93
  store i8 1, i8* %20, align 1, !dbg !651
  br label %103, !dbg !652

; <label>:103:                                    ; preds = %102, %93
  br label %106, !dbg !653

; <label>:104:                                    ; preds = %76
  %105 = load i32, i32* %33, align 4, !dbg !654
  store i32 %105, i32* %18, align 4, !dbg !656
  br label %279, !dbg !657

; <label>:106:                                    ; preds = %103
  br label %279, !dbg !658

; <label>:107:                                    ; preds = %74
  store i8 1, i8* %20, align 1, !dbg !659
  %108 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0, !dbg !660
  %109 = call i32 (i8*, i8*, ...) @sscanf(i8* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i32* %24) #9, !dbg !661
  store i32 %109, i32* %34, align 4, !dbg !662
  %110 = load i32, i32* %34, align 4, !dbg !663
  %111 = icmp eq i32 1, %110, !dbg !665
  br i1 %111, label %112, label %127, !dbg !666

; <label>:112:                                    ; preds = %107
  %113 = load i32, i32* %24, align 4, !dbg !667
  %114 = load i32, i32* %27, align 4, !dbg !670
  %115 = sext i32 %114 to i64, !dbg !671
  %116 = getelementptr inbounds [10 x %struct.vpd_layout], [10 x %struct.vpd_layout]* @vpd_ref_102, i64 0, i64 %115, !dbg !671
  %117 = getelementptr inbounds %struct.vpd_layout, %struct.vpd_layout* %116, i32 0, i32 1, !dbg !672
  %118 = load i32, i32* %117, align 8, !dbg !672
  %119 = icmp eq i32 %113, %118, !dbg !673
  br i1 %119, label %120, label %126, !dbg !674

; <label>:120:                                    ; preds = %112
  %121 = load i32, i32* %24, align 4, !dbg !675
  %122 = trunc i32 %121 to i8, !dbg !675
  %123 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 2, !dbg !677
  store i8 %122, i8* %123, align 2, !dbg !678
  %124 = load i32, i32* %24, align 4, !dbg !679
  %125 = add nsw i32 4, %124, !dbg !680
  store i32 %125, i32* %25, align 4, !dbg !681
  store i8 0, i8* %20, align 1, !dbg !682
  br label %126, !dbg !683

; <label>:126:                                    ; preds = %120, %112
  br label %127, !dbg !684

; <label>:127:                                    ; preds = %126, %107
  br label %279, !dbg !685

; <label>:128:                                    ; preds = %74
  store i8 1, i8* %20, align 1, !dbg !686
  %129 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0, !dbg !687
  %130 = call i64 @strlen(i8* %129) #8, !dbg !689
  %131 = icmp eq i64 1, %130, !dbg !690
  br i1 %131, label %132, label %145, !dbg !691

; <label>:132:                                    ; preds = %128
  %133 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0, !dbg !692
  %134 = load i8, i8* %133, align 16, !dbg !692
  store i8 %134, i8* %17, align 1, !dbg !694
  %135 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0, !dbg !695
  %136 = load i32, i32* %27, align 4, !dbg !697
  %137 = sext i32 %136 to i64, !dbg !698
  %138 = getelementptr inbounds [10 x %struct.vpd_layout], [10 x %struct.vpd_layout]* @vpd_ref_102, i64 0, i64 %137, !dbg !698
  %139 = getelementptr inbounds %struct.vpd_layout, %struct.vpd_layout* %138, i32 0, i32 2, !dbg !699
  %140 = load i8*, i8** %139, align 8, !dbg !699
  %141 = call i32 @strcmp(i8* %135, i8* %140) #8, !dbg !700
  %142 = icmp eq i32 0, %141, !dbg !701
  br i1 %142, label %143, label %144, !dbg !702

; <label>:143:                                    ; preds = %132
  store i8 0, i8* %20, align 1, !dbg !703
  br label %144, !dbg !704

; <label>:144:                                    ; preds = %143, %132
  br label %145, !dbg !705

; <label>:145:                                    ; preds = %144, %128
  br label %279, !dbg !706

; <label>:146:                                    ; preds = %74
  store i8 1, i8* %20, align 1, !dbg !707
  %147 = load i8, i8* %17, align 1, !dbg !708
  %148 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 3, !dbg !709
  store i8 %147, i8* %148, align 1, !dbg !710
  %149 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0, !dbg !711
  %150 = call i64 @strlen(i8* %149) #8, !dbg !712
  %151 = trunc i64 %150 to i32, !dbg !712
  store i32 %151, i32* %34, align 4, !dbg !713
  %152 = load i8, i8* %17, align 1, !dbg !714
  %153 = zext i8 %152 to i32, !dbg !714
  %154 = icmp eq i32 65, %153, !dbg !716
  br i1 %154, label %155, label %165, !dbg !717

; <label>:155:                                    ; preds = %146
  %156 = load i32, i32* %34, align 4, !dbg !718
  %157 = load i32, i32* %24, align 4, !dbg !721
  %158 = icmp sle i32 %156, %157, !dbg !722
  br i1 %158, label %159, label %164, !dbg !723

; <label>:159:                                    ; preds = %155
  %160 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 4, !dbg !724
  %161 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i32 0, i32 0, !dbg !726
  %162 = load i32, i32* %34, align 4, !dbg !727
  %163 = sext i32 %162 to i64, !dbg !727
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %160, i8* %161, i64 %163, i32 4, i1 false), !dbg !726
  store i8 0, i8* %20, align 1, !dbg !728
  br label %164, !dbg !729

; <label>:164:                                    ; preds = %159, %155
  br label %271, !dbg !730

; <label>:165:                                    ; preds = %146
  %166 = load i8, i8* %17, align 1, !dbg !731
  %167 = zext i8 %166 to i32, !dbg !731
  %168 = icmp eq i32 88, %167, !dbg !734
  br i1 %168, label %169, label %270, !dbg !735

; <label>:169:                                    ; preds = %165
  %170 = load i32, i32* %34, align 4, !dbg !736
  %171 = load i32, i32* %24, align 4, !dbg !739
  %172 = mul nsw i32 2, %171, !dbg !740
  %173 = icmp sle i32 %170, %172, !dbg !741
  br i1 %173, label %174, label %269, !dbg !742

; <label>:174:                                    ; preds = %169
  br label %175, !dbg !743

; <label>:175:                                    ; preds = %203, %174
  %176 = load i32, i32* %34, align 4, !dbg !745
  %177 = icmp ne i32 %176, 0, !dbg !747
  br i1 %177, label %178, label %211, !dbg !747

; <label>:178:                                    ; preds = %175
  %179 = load i32, i32* %34, align 4, !dbg !748
  %180 = add nsw i32 %179, -1, !dbg !748
  store i32 %180, i32* %34, align 4, !dbg !748
  %181 = load i32, i32* %34, align 4, !dbg !750
  %182 = sext i32 %181 to i64, !dbg !751
  %183 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 %182, !dbg !751
  %184 = load i8, i8* %183, align 1, !dbg !751
  %185 = call zeroext i8 @a2h(i8 signext %184), !dbg !752
  store i8 %185, i8* %22, align 1, !dbg !753
  %186 = load i32, i32* %34, align 4, !dbg !754
  %187 = icmp ne i32 %186, 0, !dbg !754
  br i1 %187, label %188, label %203, !dbg !756

; <label>:188:                                    ; preds = %178
  %189 = load i32, i32* %34, align 4, !dbg !757
  %190 = add nsw i32 %189, -1, !dbg !757
  store i32 %190, i32* %34, align 4, !dbg !757
  %191 = load i32, i32* %34, align 4, !dbg !759
  %192 = sext i32 %191 to i64, !dbg !760
  %193 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 %192, !dbg !760
  %194 = load i8, i8* %193, align 1, !dbg !760
  %195 = call zeroext i8 @a2h(i8 signext %194), !dbg !761
  store i8 %195, i8* %23, align 1, !dbg !762
  %196 = load i8, i8* %23, align 1, !dbg !763
  %197 = zext i8 %196 to i32, !dbg !763
  %198 = shl i32 %197, 4, !dbg !764
  %199 = load i8, i8* %22, align 1, !dbg !765
  %200 = zext i8 %199 to i32, !dbg !765
  %201 = or i32 %200, %198, !dbg !765
  %202 = trunc i32 %201 to i8, !dbg !765
  store i8 %202, i8* %22, align 1, !dbg !765
  br label %203, !dbg !766

; <label>:203:                                    ; preds = %188, %178
  %204 = load i8, i8* %22, align 1, !dbg !767
  %205 = load i32, i32* %24, align 4, !dbg !768
  %206 = add nsw i32 3, %205, !dbg !769
  %207 = sext i32 %206 to i64, !dbg !770
  %208 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 %207, !dbg !770
  store i8 %204, i8* %208, align 1, !dbg !771
  %209 = load i32, i32* %24, align 4, !dbg !772
  %210 = add nsw i32 %209, -1, !dbg !772
  store i32 %210, i32* %24, align 4, !dbg !772
  br label %175, !dbg !773, !llvm.loop !775

; <label>:211:                                    ; preds = %175
  store i8 0, i8* %20, align 1, !dbg !776
  %212 = load i32, i32* %27, align 4, !dbg !777
  %213 = icmp eq i32 0, %212, !dbg !779
  br i1 %213, label %214, label %240, !dbg !780

; <label>:214:                                    ; preds = %211
  %215 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 4, !dbg !781
  %216 = load i8, i8* %215, align 4, !dbg !781
  %217 = bitcast %union.swap_me* %29 to %struct.anon.0*, !dbg !783
  %218 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %217, i32 0, i32 0, !dbg !784
  %219 = getelementptr inbounds [4 x i8], [4 x i8]* %218, i64 0, i64 2, !dbg !785
  store i8 %216, i8* %219, align 2, !dbg !786
  %220 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 5, !dbg !787
  %221 = load i8, i8* %220, align 1, !dbg !787
  %222 = bitcast %union.swap_me* %29 to %struct.anon.0*, !dbg !788
  %223 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %222, i32 0, i32 0, !dbg !789
  %224 = getelementptr inbounds [4 x i8], [4 x i8]* %223, i64 0, i64 3, !dbg !790
  store i8 %221, i8* %224, align 1, !dbg !791
  %225 = bitcast %union.swap_me* %29 to i32*, !dbg !792
  %226 = load i32, i32* %225, align 4, !dbg !792
  %227 = call i32 @__fswab32(i32 %226), !dbg !793
  %228 = bitcast %union.swap_me* %29 to i32*, !dbg !794
  store i32 %227, i32* %228, align 4, !dbg !795
  %229 = bitcast %union.swap_me* %29 to i32*, !dbg !796
  %230 = load i32, i32* %229, align 4, !dbg !796
  %231 = icmp ne i32 %230, 258, !dbg !798
  br i1 %231, label %232, label %239, !dbg !799

; <label>:232:                                    ; preds = %214
  br label %233, !dbg !800, !llvm.loop !802

; <label>:233:                                    ; preds = %232
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !803
  %235 = bitcast %union.swap_me* %29 to i32*, !dbg !806
  %236 = load i32, i32* %235, align 4, !dbg !806
  %237 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %234, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 293, i32 %236), !dbg !807
  br label %238, !dbg !808

; <label>:238:                                    ; preds = %233
  store i8 1, i8* %20, align 1, !dbg !809
  br label %239, !dbg !810

; <label>:239:                                    ; preds = %238, %214
  br label %240, !dbg !811

; <label>:240:                                    ; preds = %239, %211
  %241 = load i8, i8* %21, align 1, !dbg !812
  %242 = trunc i8 %241 to i1, !dbg !812
  br i1 %242, label %243, label %268, !dbg !814

; <label>:243:                                    ; preds = %240
  store i8 0, i8* %21, align 1, !dbg !815
  %244 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 4, !dbg !817
  %245 = load i8, i8* %244, align 4, !dbg !817
  %246 = bitcast %union.swap_me* %28 to %struct.anon.0*, !dbg !818
  %247 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %246, i32 0, i32 0, !dbg !819
  %248 = getelementptr inbounds [4 x i8], [4 x i8]* %247, i64 0, i64 0, !dbg !820
  store i8 %245, i8* %248, align 4, !dbg !821
  %249 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 5, !dbg !822
  %250 = load i8, i8* %249, align 1, !dbg !822
  %251 = bitcast %union.swap_me* %28 to %struct.anon.0*, !dbg !823
  %252 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %251, i32 0, i32 0, !dbg !824
  %253 = getelementptr inbounds [4 x i8], [4 x i8]* %252, i64 0, i64 1, !dbg !825
  store i8 %250, i8* %253, align 1, !dbg !826
  %254 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 6, !dbg !827
  %255 = load i8, i8* %254, align 2, !dbg !827
  %256 = bitcast %union.swap_me* %28 to %struct.anon.0*, !dbg !828
  %257 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %256, i32 0, i32 0, !dbg !829
  %258 = getelementptr inbounds [4 x i8], [4 x i8]* %257, i64 0, i64 2, !dbg !830
  store i8 %255, i8* %258, align 2, !dbg !831
  %259 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 7, !dbg !832
  %260 = load i8, i8* %259, align 1, !dbg !832
  %261 = bitcast %union.swap_me* %28 to %struct.anon.0*, !dbg !833
  %262 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %261, i32 0, i32 0, !dbg !834
  %263 = getelementptr inbounds [4 x i8], [4 x i8]* %262, i64 0, i64 3, !dbg !835
  store i8 %260, i8* %263, align 1, !dbg !836
  %264 = bitcast %union.swap_me* %28 to i32*, !dbg !837
  %265 = load i32, i32* %264, align 4, !dbg !837
  %266 = call i32 @__fswab32(i32 %265), !dbg !838
  %267 = bitcast %union.swap_me* %28 to i32*, !dbg !839
  store i32 %266, i32* %267, align 4, !dbg !840
  br label %268, !dbg !841

; <label>:268:                                    ; preds = %243, %240
  br label %269, !dbg !842

; <label>:269:                                    ; preds = %268, %169
  br label %270, !dbg !843

; <label>:270:                                    ; preds = %269, %165
  br label %271

; <label>:271:                                    ; preds = %270, %164
  %272 = load i8, i8* %20, align 1, !dbg !844
  %273 = trunc i8 %272 to i1, !dbg !844
  br i1 %273, label %277, label %274, !dbg !846

; <label>:274:                                    ; preds = %271
  %275 = load i32, i32* %30, align 4, !dbg !847
  %276 = add nsw i32 %275, 1, !dbg !847
  store i32 %276, i32* %30, align 4, !dbg !847
  br label %277, !dbg !848

; <label>:277:                                    ; preds = %274, %271
  br label %279, !dbg !849

; <label>:278:                                    ; preds = %74
  br label %279, !dbg !850

; <label>:279:                                    ; preds = %278, %277, %145, %127, %106, %104
  %280 = load i8, i8* %20, align 1, !dbg !851
  %281 = trunc i8 %280 to i1, !dbg !851
  br i1 %281, label %290, label %282, !dbg !853

; <label>:282:                                    ; preds = %279
  store i32 0, i32* %19, align 4, !dbg !854
  %283 = load i32, i32* %19, align 4, !dbg !856
  %284 = sext i32 %283 to i64, !dbg !857
  %285 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 %284, !dbg !857
  store i8 0, i8* %285, align 1, !dbg !858
  %286 = load i32, i32* %31, align 4, !dbg !859
  %287 = add nsw i32 %286, 1, !dbg !859
  store i32 %287, i32* %31, align 4, !dbg !859
  %288 = load i32, i32* %32, align 4, !dbg !860
  %289 = add nsw i32 %288, 1, !dbg !860
  store i32 %289, i32* %32, align 4, !dbg !860
  br label %290, !dbg !861

; <label>:290:                                    ; preds = %282, %279
  br label %311, !dbg !862

; <label>:291:                                    ; preds = %68
  %292 = load i32, i32* %18, align 4, !dbg !863
  %293 = sext i32 %292 to i64, !dbg !865
  %294 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 %293, !dbg !865
  %295 = load i8, i8* %294, align 1, !dbg !865
  %296 = sext i8 %295 to i32, !dbg !865
  %297 = icmp eq i32 34, %296, !dbg !866
  br i1 %297, label %298, label %299, !dbg !867

; <label>:298:                                    ; preds = %291
  br label %316, !dbg !868

; <label>:299:                                    ; preds = %291
  %300 = load i32, i32* %18, align 4, !dbg !869
  %301 = sext i32 %300 to i64, !dbg !870
  %302 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 %301, !dbg !870
  %303 = load i8, i8* %302, align 1, !dbg !870
  %304 = load i32, i32* %19, align 4, !dbg !871
  %305 = add nsw i32 %304, 1, !dbg !871
  store i32 %305, i32* %19, align 4, !dbg !871
  %306 = sext i32 %304 to i64, !dbg !872
  %307 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 %306, !dbg !872
  store i8 %303, i8* %307, align 1, !dbg !873
  %308 = load i32, i32* %19, align 4, !dbg !874
  %309 = sext i32 %308 to i64, !dbg !875
  %310 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 %309, !dbg !875
  store i8 0, i8* %310, align 1, !dbg !876
  br label %311, !dbg !877

; <label>:311:                                    ; preds = %299, %290
  %312 = load i8, i8* %20, align 1, !dbg !878
  %313 = trunc i8 %312 to i1, !dbg !878
  br i1 %313, label %314, label %315, !dbg !880

; <label>:314:                                    ; preds = %311
  br label %319, !dbg !881

; <label>:315:                                    ; preds = %311
  br label %316, !dbg !882

; <label>:316:                                    ; preds = %315, %298
  %317 = load i32, i32* %18, align 4, !dbg !883
  %318 = add nsw i32 %317, 1, !dbg !883
  store i32 %318, i32* %18, align 4, !dbg !883
  br label %64, !dbg !885, !llvm.loop !886

; <label>:319:                                    ; preds = %314, %64
  %320 = load i8, i8* %20, align 1, !dbg !888
  %321 = trunc i8 %320 to i1, !dbg !888
  br i1 %321, label %322, label %330, !dbg !890

; <label>:322:                                    ; preds = %319
  br label %323, !dbg !891, !llvm.loop !893

; <label>:323:                                    ; preds = %322
  %324 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !894
  %325 = load i32, i32* %15, align 4, !dbg !897
  %326 = load i32, i32* %31, align 4, !dbg !898
  %327 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i32 0, i32 0, !dbg !899
  %328 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %324, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 334, i32 %325, i32 %326, i8* %327), !dbg !900
  br label %329, !dbg !901

; <label>:329:                                    ; preds = %323
  store i1 false, i1* %6, align 1, !dbg !902
  br label %399, !dbg !902

; <label>:330:                                    ; preds = %319
  %331 = load i32, i32* %32, align 4, !dbg !903
  %332 = icmp slt i32 %331, 4, !dbg !905
  br i1 %332, label %333, label %343, !dbg !906

; <label>:333:                                    ; preds = %330
  br label %334, !dbg !907, !llvm.loop !909

; <label>:334:                                    ; preds = %333
  %335 = load i32, i32* @_dbg_flag, align 4, !dbg !910
  %336 = icmp ne i32 %335, 0, !dbg !910
  br i1 %336, label %337, label %341, !dbg !910

; <label>:337:                                    ; preds = %334
  %338 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !914
  %339 = load i32, i32* %15, align 4, !dbg !916
  %340 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %338, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i32 %339), !dbg !916
  br label %341, !dbg !916

; <label>:341:                                    ; preds = %337, %334
  br label %342, !dbg !917

; <label>:342:                                    ; preds = %341
  br label %36, !dbg !919, !llvm.loop !920

; <label>:343:                                    ; preds = %330
  br label %344, !dbg !921, !llvm.loop !923

; <label>:344:                                    ; preds = %343
  %345 = load i32, i32* @_dbg_flag, align 4, !dbg !924
  %346 = icmp ne i32 %345, 0, !dbg !924
  br i1 %346, label %347, label %354, !dbg !924

; <label>:347:                                    ; preds = %344
  %348 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !928
  %349 = load i32, i32* %15, align 4, !dbg !930
  %350 = load i32, i32* %32, align 4, !dbg !931
  %351 = load i32, i32* %26, align 4, !dbg !932
  %352 = load i32, i32* %25, align 4, !dbg !933
  %353 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %348, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i32 0, i32 0), i32 %349, i32 %350, i32 %351, i32 %352), !dbg !934
  br label %354, !dbg !934

; <label>:354:                                    ; preds = %347, %344
  br label %355, !dbg !935

; <label>:355:                                    ; preds = %354
  %356 = load i32, i32* %26, align 4, !dbg !937
  %357 = sext i32 %356 to i64, !dbg !938
  %358 = load i8*, i8** %8, align 8, !dbg !938
  %359 = getelementptr inbounds i8, i8* %358, i64 %357, !dbg !938
  %360 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i32 0, i32 0, !dbg !939
  %361 = load i32, i32* %25, align 4, !dbg !940
  %362 = sext i32 %361 to i64, !dbg !940
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %359, i8* %360, i64 %362, i32 1, i1 false), !dbg !939
  %363 = load i32, i32* %25, align 4, !dbg !941
  %364 = load i32, i32* %26, align 4, !dbg !942
  %365 = add nsw i32 %364, %363, !dbg !942
  store i32 %365, i32* %26, align 4, !dbg !942
  %366 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i32 0, i32 0, !dbg !943
  %367 = load i32, i32* %25, align 4, !dbg !944
  %368 = sext i32 %367 to i64, !dbg !944
  %369 = load i32, i32* %16, align 4, !dbg !945
  %370 = call i32 @genwqe_crc32_gen(i8* %366, i64 %368, i32 %369), !dbg !946
  store i32 %370, i32* %16, align 4, !dbg !947
  %371 = load i32, i32* %26, align 4, !dbg !948
  %372 = icmp sgt i32 %371, 65536, !dbg !950
  br i1 %372, label %373, label %379, !dbg !951

; <label>:373:                                    ; preds = %355
  br label %374, !dbg !952, !llvm.loop !954

; <label>:374:                                    ; preds = %373
  %375 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !955
  %376 = load i32, i32* %26, align 4, !dbg !958
  %377 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %375, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 349, i32 %376), !dbg !959
  br label %378, !dbg !960

; <label>:378:                                    ; preds = %374
  store i8 1, i8* %20, align 1, !dbg !961
  br label %383, !dbg !962

; <label>:379:                                    ; preds = %355
  br label %380

; <label>:380:                                    ; preds = %379
  %381 = load i32, i32* %27, align 4, !dbg !963
  %382 = add nsw i32 %381, 1, !dbg !963
  store i32 %382, i32* %27, align 4, !dbg !963
  br label %36, !dbg !964, !llvm.loop !920

; <label>:383:                                    ; preds = %378, %36
  %384 = load i32, i32* %26, align 4, !dbg !966
  %385 = load i32*, i32** %9, align 8, !dbg !967
  store i32 %384, i32* %385, align 4, !dbg !968
  %386 = load i32, i32* %16, align 4, !dbg !969
  %387 = load i32*, i32** %10, align 8, !dbg !970
  store i32 %386, i32* %387, align 4, !dbg !971
  %388 = bitcast %union.swap_me* %28 to i32*, !dbg !972
  %389 = load i32, i32* %388, align 4, !dbg !972
  %390 = load i32*, i32** %11, align 8, !dbg !973
  store i32 %389, i32* %390, align 4, !dbg !974
  %391 = load i8, i8* %20, align 1, !dbg !975
  %392 = trunc i8 %391 to i1, !dbg !975
  br i1 %392, label %397, label %393, !dbg !977

; <label>:393:                                    ; preds = %383
  %394 = load i32, i32* %30, align 4, !dbg !978
  %395 = sext i32 %394 to i64, !dbg !978
  %396 = icmp ne i64 10, %395, !dbg !980
  br i1 %396, label %397, label %398, !dbg !981

; <label>:397:                                    ; preds = %393, %383
  store i1 false, i1* %6, align 1, !dbg !982
  br label %399, !dbg !982

; <label>:398:                                    ; preds = %393
  store i1 true, i1* %6, align 1, !dbg !983
  br label %399, !dbg !983

; <label>:399:                                    ; preds = %398, %397, %329
  %400 = load i1, i1* %6, align 1, !dbg !984
  ret i1 %400, !dbg !984
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i32 @sscanf(i8*, i8*, ...) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define internal zeroext i8 @a2h(i8 signext) #0 !dbg !985 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !988, metadata !64), !dbg !989
  %3 = load i8, i8* %2, align 1, !dbg !990
  %4 = sext i8 %3 to i32, !dbg !990
  %5 = icmp sge i32 %4, 65, !dbg !992
  br i1 %5, label %6, label %11, !dbg !993

; <label>:6:                                      ; preds = %1
  %7 = load i8, i8* %2, align 1, !dbg !994
  %8 = sext i8 %7 to i32, !dbg !994
  %9 = sub nsw i32 %8, 7, !dbg !994
  %10 = trunc i32 %9 to i8, !dbg !994
  store i8 %10, i8* %2, align 1, !dbg !994
  br label %11, !dbg !995

; <label>:11:                                     ; preds = %6, %1
  %12 = load i8, i8* %2, align 1, !dbg !996
  %13 = sext i8 %12 to i32, !dbg !996
  %14 = and i32 %13, 15, !dbg !997
  %15 = trunc i32 %14 to i8, !dbg !996
  store i8 %15, i8* %2, align 1, !dbg !998
  %16 = load i8, i8* %2, align 1, !dbg !999
  ret i8 %16, !dbg !1000
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__arch_swab32(i32) #5 !dbg !1001 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1003, metadata !64), !dbg !1004
  %3 = load i32, i32* %2, align 4, !dbg !1005
  %4 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %3) #1, !dbg !1006, !srcloc !1007
  store i32 %4, i32* %2, align 4, !dbg !1006
  %5 = load i32, i32* %2, align 4, !dbg !1008
  ret i32 %5, !dbg !1009
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!56, !57}
!llvm.ident = !{!58}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !18, globals: !30)
!1 = !DIFile(filename: "/home/lichi/Desktop/genwqe/[task]tools--genwqe_vpdconv/[inter]tools--genwqe_vpd_common.o.i", directory: "/home/lichi/Desktop")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 46, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17}
!6 = !DIEnumerator(name: "_ISupper", value: 256)
!7 = !DIEnumerator(name: "_ISlower", value: 512)
!8 = !DIEnumerator(name: "_ISalpha", value: 1024)
!9 = !DIEnumerator(name: "_ISdigit", value: 2048)
!10 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!11 = !DIEnumerator(name: "_ISspace", value: 8192)
!12 = !DIEnumerator(name: "_ISprint", value: 16384)
!13 = !DIEnumerator(name: "_ISgraph", value: 32768)
!14 = !DIEnumerator(name: "_ISblank", value: 1)
!15 = !DIEnumerator(name: "_IScntrl", value: 2)
!16 = !DIEnumerator(name: "_ISpunct", value: 4)
!17 = !DIEnumerator(name: "_ISalnum", value: 8)
!18 = !{!19, !20, !21, !24, !26, !27}
!19 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!20 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !22, line: 26, baseType: !23)
!22 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop")
!23 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !25, line: 30, baseType: !21)
!25 = !DIFile(filename: "/usr/include/linux/types.h", directory: "/home/lichi/Desktop")
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !28, line: 48, baseType: !29)
!28 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop")
!29 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!30 = !{!31, !37, !52}
!31 = distinct !DIGlobalVariable(name: "genwqe_crc32_lut", scope: !0, file: !32, line: 45, type: !33, isLocal: true, isDefinition: true, variable: [256 x i32]* @genwqe_crc32_lut)
!32 = !DIFile(filename: "genwqe_vpd_common.c", directory: "/home/lichi/Desktop")
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 8192, align: 32, elements: !35)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !28, line: 51, baseType: !23)
!35 = !{!36}
!36 = !DISubrange(count: 256)
!37 = distinct !DIGlobalVariable(name: "vpd_ref_102", scope: !0, file: !38, line: 51, type: !39, isLocal: true, isDefinition: true, variable: [10 x %struct.vpd_layout]* @vpd_ref_102)
!38 = !DIFile(filename: "../include/genwqe_vpd.h", directory: "/home/lichi/Desktop")
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 1920, align: 64, elements: !50)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vpd_layout", file: !38, line: 43, size: 192, align: 64, elements: !42)
!42 = !{!43, !47, !49}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !41, file: !38, line: 44, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !41, file: !38, line: 45, baseType: !48, size: 32, align: 32, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !41, file: !38, line: 46, baseType: !44, size: 64, align: 64, offset: 128)
!50 = !{!51}
!51 = !DISubrange(count: 10)
!52 = distinct !DIGlobalVariable(name: "crc_token", scope: !0, file: !32, line: 48, type: !53, isLocal: true, isDefinition: true, variable: [3 x i8]* @crc_token)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 24, align: 8, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 3)
!56 = !{i32 2, !"Dwarf Version", i32 4}
!57 = !{i32 2, !"Debug Info Version", i32 3}
!58 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!59 = distinct !DISubprogram(name: "genwqe_crc32_setup_lut", scope: !32, file: !32, line: 50, type: !60, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!60 = !DISubroutineType(types: !61)
!61 = !{null}
!62 = !{}
!63 = !DILocalVariable(name: "i", scope: !59, file: !32, line: 52, type: !23)
!64 = !DIExpression()
!65 = !DILocation(line: 52, column: 15, scope: !59)
!66 = !DILocalVariable(name: "j", scope: !59, file: !32, line: 52, type: !23)
!67 = !DILocation(line: 52, column: 18, scope: !59)
!68 = !DILocalVariable(name: "crc", scope: !59, file: !32, line: 53, type: !34)
!69 = !DILocation(line: 53, column: 11, scope: !59)
!70 = !DILocation(line: 55, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !59, file: !32, line: 55, column: 2)
!72 = !DILocation(line: 55, column: 7, scope: !71)
!73 = !DILocation(line: 55, column: 14, scope: !74)
!74 = !DILexicalBlockFile(scope: !75, file: !32, discriminator: 1)
!75 = distinct !DILexicalBlock(scope: !71, file: !32, line: 55, column: 2)
!76 = !DILocation(line: 55, column: 16, scope: !74)
!77 = !DILocation(line: 55, column: 2, scope: !74)
!78 = !DILocation(line: 56, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !32, line: 55, column: 85)
!80 = !DILocation(line: 56, column: 11, scope: !79)
!81 = !DILocation(line: 56, column: 7, scope: !79)
!82 = !DILocation(line: 57, column: 11, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !32, line: 57, column: 3)
!84 = !DILocation(line: 57, column: 9, scope: !83)
!85 = !DILocation(line: 57, column: 16, scope: !86)
!86 = !DILexicalBlockFile(scope: !87, file: !32, discriminator: 1)
!87 = distinct !DILexicalBlock(scope: !83, file: !32, line: 57, column: 3)
!88 = !DILocation(line: 57, column: 18, scope: !86)
!89 = !DILocation(line: 57, column: 3, scope: !86)
!90 = !DILocation(line: 58, column: 8, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !32, line: 58, column: 8)
!92 = distinct !DILexicalBlock(scope: !87, file: !32, line: 57, column: 29)
!93 = !DILocation(line: 58, column: 12, scope: !91)
!94 = !DILocation(line: 58, column: 8, scope: !92)
!95 = !DILocation(line: 59, column: 12, scope: !91)
!96 = !DILocation(line: 59, column: 16, scope: !91)
!97 = !DILocation(line: 59, column: 22, scope: !91)
!98 = !DILocation(line: 59, column: 9, scope: !91)
!99 = !DILocation(line: 59, column: 5, scope: !91)
!100 = !DILocation(line: 61, column: 12, scope: !91)
!101 = !DILocation(line: 61, column: 16, scope: !91)
!102 = !DILocation(line: 61, column: 9, scope: !91)
!103 = !DILocation(line: 62, column: 3, scope: !92)
!104 = !DILocation(line: 57, column: 24, scope: !105)
!105 = !DILexicalBlockFile(scope: !87, file: !32, discriminator: 2)
!106 = !DILocation(line: 57, column: 3, scope: !105)
!107 = distinct !{!107, !108}
!108 = !DILocation(line: 57, column: 3, scope: !79)
!109 = !DILocation(line: 63, column: 25, scope: !79)
!110 = !DILocation(line: 63, column: 20, scope: !79)
!111 = !DILocation(line: 63, column: 3, scope: !79)
!112 = !DILocation(line: 63, column: 23, scope: !79)
!113 = !DILocation(line: 64, column: 2, scope: !79)
!114 = !DILocation(line: 55, column: 81, scope: !115)
!115 = !DILexicalBlockFile(scope: !75, file: !32, discriminator: 2)
!116 = !DILocation(line: 55, column: 2, scope: !115)
!117 = distinct !{!117, !118}
!118 = !DILocation(line: 55, column: 2, scope: !59)
!119 = !DILocation(line: 65, column: 1, scope: !59)
!120 = distinct !DISubprogram(name: "genwqe_crc32_gen", scope: !32, file: !32, line: 67, type: !121, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!121 = !DISubroutineType(types: !122)
!122 = !{!34, !123, !124, !34}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !125, line: 216, baseType: !126)
!125 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop")
!126 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!127 = !DILocalVariable(name: "buff", arg: 1, scope: !120, file: !32, line: 67, type: !123)
!128 = !DILocation(line: 67, column: 36, scope: !120)
!129 = !DILocalVariable(name: "len", arg: 2, scope: !120, file: !32, line: 67, type: !124)
!130 = !DILocation(line: 67, column: 49, scope: !120)
!131 = !DILocalVariable(name: "init", arg: 3, scope: !120, file: !32, line: 67, type: !34)
!132 = !DILocation(line: 67, column: 63, scope: !120)
!133 = !DILocalVariable(name: "i", scope: !120, file: !32, line: 69, type: !19)
!134 = !DILocation(line: 69, column: 6, scope: !120)
!135 = !DILocalVariable(name: "crc", scope: !120, file: !32, line: 70, type: !34)
!136 = !DILocation(line: 70, column: 11, scope: !120)
!137 = !DILocation(line: 72, column: 8, scope: !120)
!138 = !DILocation(line: 72, column: 6, scope: !120)
!139 = !DILocation(line: 73, column: 2, scope: !120)
!140 = !DILocation(line: 73, column: 11, scope: !141)
!141 = !DILexicalBlockFile(scope: !120, file: !32, discriminator: 1)
!142 = !DILocation(line: 73, column: 2, scope: !141)
!143 = !DILocation(line: 74, column: 9, scope: !144)
!144 = distinct !DILexicalBlock(scope: !120, file: !32, line: 73, column: 15)
!145 = !DILocation(line: 74, column: 13, scope: !144)
!146 = !DILocation(line: 74, column: 27, scope: !144)
!147 = !DILocation(line: 74, column: 22, scope: !144)
!148 = !DILocation(line: 74, column: 20, scope: !144)
!149 = !DILocation(line: 74, column: 31, scope: !144)
!150 = !DILocation(line: 74, column: 5, scope: !144)
!151 = !DILocation(line: 75, column: 10, scope: !144)
!152 = !DILocation(line: 75, column: 14, scope: !144)
!153 = !DILocation(line: 75, column: 39, scope: !144)
!154 = !DILocation(line: 75, column: 22, scope: !144)
!155 = !DILocation(line: 75, column: 20, scope: !144)
!156 = !DILocation(line: 75, column: 7, scope: !144)
!157 = !DILocation(line: 73, column: 2, scope: !158)
!158 = !DILexicalBlockFile(scope: !120, file: !32, discriminator: 2)
!159 = distinct !{!159, !139}
!160 = !DILocation(line: 77, column: 9, scope: !120)
!161 = !DILocation(line: 77, column: 2, scope: !120)
!162 = distinct !DISubprogram(name: "bin_2_csv", scope: !32, file: !32, line: 95, type: !163, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!163 = !DISubroutineType(types: !164)
!164 = !{!165, !166, !19, !123}
!165 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !168, line: 48, baseType: !169)
!168 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop")
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !170, line: 241, size: 1728, align: 64, elements: !171)
!170 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop")
!171 = !{!172, !173, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !193, !194, !195, !196, !200, !201, !203, !207, !210, !212, !213, !214, !215, !216, !217, !218}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !169, file: !170, line: 242, baseType: !19, size: 32, align: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !169, file: !170, line: 247, baseType: !174, size: 64, align: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !169, file: !170, line: 248, baseType: !174, size: 64, align: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !169, file: !170, line: 249, baseType: !174, size: 64, align: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !169, file: !170, line: 250, baseType: !174, size: 64, align: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !169, file: !170, line: 251, baseType: !174, size: 64, align: 64, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !169, file: !170, line: 252, baseType: !174, size: 64, align: 64, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !169, file: !170, line: 253, baseType: !174, size: 64, align: 64, offset: 448)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !169, file: !170, line: 254, baseType: !174, size: 64, align: 64, offset: 512)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !169, file: !170, line: 256, baseType: !174, size: 64, align: 64, offset: 576)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !169, file: !170, line: 257, baseType: !174, size: 64, align: 64, offset: 640)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !169, file: !170, line: 258, baseType: !174, size: 64, align: 64, offset: 704)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !169, file: !170, line: 260, baseType: !186, size: 64, align: 64, offset: 768)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !170, line: 156, size: 192, align: 64, elements: !188)
!188 = !{!189, !190, !192}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !187, file: !170, line: 157, baseType: !186, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !187, file: !170, line: 158, baseType: !191, size: 64, align: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !187, file: !170, line: 162, baseType: !19, size: 32, align: 32, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !169, file: !170, line: 262, baseType: !191, size: 64, align: 64, offset: 832)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !169, file: !170, line: 264, baseType: !19, size: 32, align: 32, offset: 896)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !169, file: !170, line: 268, baseType: !19, size: 32, align: 32, offset: 928)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !169, file: !170, line: 270, baseType: !197, size: 64, align: 64, offset: 960)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !198, line: 131, baseType: !199)
!198 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop")
!199 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !169, file: !170, line: 274, baseType: !20, size: 16, align: 16, offset: 1024)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !169, file: !170, line: 275, baseType: !202, size: 8, align: 8, offset: 1040)
!202 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !169, file: !170, line: 276, baseType: !204, size: 8, align: 8, offset: 1048)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8, align: 8, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 1)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !169, file: !170, line: 280, baseType: !208, size: 64, align: 64, offset: 1088)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !170, line: 150, baseType: null)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !169, file: !170, line: 289, baseType: !211, size: 64, align: 64, offset: 1152)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !198, line: 132, baseType: !199)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !169, file: !170, line: 297, baseType: !26, size: 64, align: 64, offset: 1216)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !169, file: !170, line: 298, baseType: !26, size: 64, align: 64, offset: 1280)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !169, file: !170, line: 299, baseType: !26, size: 64, align: 64, offset: 1344)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !169, file: !170, line: 300, baseType: !26, size: 64, align: 64, offset: 1408)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !169, file: !170, line: 302, baseType: !124, size: 64, align: 64, offset: 1472)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !169, file: !170, line: 303, baseType: !19, size: 32, align: 32, offset: 1536)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !169, file: !170, line: 305, baseType: !219, size: 160, align: 8, offset: 1568)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 160, align: 8, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 20)
!222 = !DILocalVariable(name: "op", arg: 1, scope: !162, file: !32, line: 95, type: !166)
!223 = !DILocation(line: 95, column: 21, scope: !162)
!224 = !DILocalVariable(name: "fs", arg: 2, scope: !162, file: !32, line: 95, type: !19)
!225 = !DILocation(line: 95, column: 29, scope: !162)
!226 = !DILocalVariable(name: "buffer", arg: 3, scope: !162, file: !32, line: 95, type: !123)
!227 = !DILocation(line: 95, column: 42, scope: !162)
!228 = !DILocalVariable(name: "mode", scope: !162, file: !32, line: 97, type: !46)
!229 = !DILocation(line: 97, column: 7, scope: !162)
!230 = !DILocalVariable(name: "label", scope: !162, file: !32, line: 98, type: !231)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32, align: 8, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 4)
!234 = !DILocation(line: 98, column: 7, scope: !162)
!235 = !DILocalVariable(name: "length", scope: !162, file: !32, line: 99, type: !19)
!236 = !DILocation(line: 99, column: 6, scope: !162)
!237 = !DILocalVariable(name: "n", scope: !162, file: !32, line: 100, type: !19)
!238 = !DILocation(line: 100, column: 6, scope: !162)
!239 = !DILocalVariable(name: "vpd_check_line", scope: !162, file: !32, line: 101, type: !19)
!240 = !DILocation(line: 101, column: 6, scope: !162)
!241 = !DILocalVariable(name: "swap", scope: !162, file: !32, line: 102, type: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "swap_me", file: !38, line: 69, size: 32, align: 32, elements: !243)
!243 = !{!244, !245, !253}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ui32", scope: !242, file: !38, line: 70, baseType: !34, size: 32, align: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "WORD", scope: !242, file: !38, line: 73, baseType: !246, size: 32, align: 16)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !242, file: !38, line: 71, size: 32, align: 16, elements: !247)
!247 = !{!248}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "uw16", scope: !246, file: !38, line: 72, baseType: !249, size: 32, align: 16)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 32, align: 16, elements: !251)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !28, line: 49, baseType: !20)
!251 = !{!252}
!252 = !DISubrange(count: 2)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "BYTE", scope: !242, file: !38, line: 76, baseType: !254, size: 32, align: 8)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !242, file: !38, line: 74, size: 32, align: 8, elements: !255)
!255 = !{!256}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ub8", scope: !254, file: !38, line: 75, baseType: !257, size: 32, align: 8)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, align: 8, elements: !232)
!258 = !DILocation(line: 102, column: 16, scope: !162)
!259 = !DILocation(line: 104, column: 7, scope: !162)
!260 = !DILocation(line: 104, column: 12, scope: !162)
!261 = !DILocation(line: 105, column: 2, scope: !162)
!262 = !DILocation(line: 105, column: 9, scope: !263)
!263 = !DILexicalBlockFile(scope: !162, file: !32, discriminator: 1)
!264 = !DILocation(line: 105, column: 2, scope: !263)
!265 = !DILocation(line: 106, column: 21, scope: !266)
!266 = distinct !DILexicalBlock(scope: !162, file: !32, line: 105, column: 13)
!267 = !DILocation(line: 106, column: 14, scope: !266)
!268 = !DILocation(line: 106, column: 3, scope: !266)
!269 = !DILocation(line: 106, column: 12, scope: !266)
!270 = !DILocation(line: 107, column: 21, scope: !266)
!271 = !DILocation(line: 107, column: 14, scope: !266)
!272 = !DILocation(line: 107, column: 3, scope: !266)
!273 = !DILocation(line: 107, column: 12, scope: !266)
!274 = !DILocation(line: 108, column: 3, scope: !266)
!275 = !DILocation(line: 108, column: 12, scope: !266)
!276 = !DILocation(line: 109, column: 19, scope: !266)
!277 = !DILocation(line: 109, column: 12, scope: !266)
!278 = !DILocation(line: 109, column: 10, scope: !266)
!279 = !DILocation(line: 110, column: 17, scope: !266)
!280 = !DILocation(line: 110, column: 10, scope: !266)
!281 = !DILocation(line: 110, column: 8, scope: !266)
!282 = !DILocation(line: 111, column: 19, scope: !283)
!283 = distinct !DILexicalBlock(scope: !266, file: !32, line: 111, column: 7)
!284 = !DILocation(line: 111, column: 38, scope: !283)
!285 = !DILocation(line: 111, column: 26, scope: !283)
!286 = !DILocation(line: 111, column: 54, scope: !283)
!287 = !DILocation(line: 111, column: 12, scope: !283)
!288 = !DILocation(line: 111, column: 9, scope: !283)
!289 = !DILocation(line: 111, column: 7, scope: !266)
!290 = !DILocation(line: 112, column: 4, scope: !291)
!291 = distinct !DILexicalBlock(scope: !283, file: !32, line: 111, column: 62)
!292 = distinct !{!292, !290}
!293 = !DILocation(line: 112, column: 3, scope: !294)
!294 = !DILexicalBlockFile(scope: !295, file: !32, discriminator: 1)
!295 = distinct !DILexicalBlock(scope: !291, file: !32, line: 112, column: 7)
!296 = !DILocation(line: 112, column: 6, scope: !294)
!297 = !DILocation(line: 112, column: 25, scope: !294)
!298 = !DILocation(line: 112, column: 13, scope: !294)
!299 = !DILocation(line: 112, column: 41, scope: !294)
!300 = !DILocation(line: 112, column: 9, scope: !294)
!301 = !DILocation(line: 112, column: 49, scope: !294)
!302 = !DILocation(line: 114, column: 4, scope: !291)
!303 = !DILocation(line: 116, column: 7, scope: !304)
!304 = distinct !DILexicalBlock(scope: !266, file: !32, line: 116, column: 7)
!305 = !DILocation(line: 116, column: 29, scope: !304)
!306 = !DILocation(line: 116, column: 17, scope: !304)
!307 = !DILocation(line: 116, column: 45, scope: !304)
!308 = !DILocation(line: 116, column: 14, scope: !304)
!309 = !DILocation(line: 116, column: 7, scope: !266)
!310 = !DILocation(line: 117, column: 4, scope: !311)
!311 = distinct !DILexicalBlock(scope: !304, file: !32, line: 116, column: 53)
!312 = distinct !{!312, !310}
!313 = !DILocation(line: 117, column: 3, scope: !314)
!314 = !DILexicalBlockFile(scope: !315, file: !32, discriminator: 1)
!315 = distinct !DILexicalBlock(scope: !311, file: !32, line: 117, column: 7)
!316 = !DILocation(line: 117, column: 6, scope: !314)
!317 = !DILocation(line: 117, column: 26, scope: !314)
!318 = !DILocation(line: 117, column: 14, scope: !314)
!319 = !DILocation(line: 117, column: 42, scope: !314)
!320 = !DILocation(line: 117, column: 9, scope: !314)
!321 = !DILocation(line: 117, column: 51, scope: !314)
!322 = !DILocation(line: 119, column: 4, scope: !311)
!323 = !DILocation(line: 121, column: 7, scope: !324)
!324 = distinct !DILexicalBlock(scope: !266, file: !32, line: 121, column: 7)
!325 = !DILocation(line: 121, column: 28, scope: !324)
!326 = !DILocation(line: 121, column: 16, scope: !324)
!327 = !DILocation(line: 121, column: 44, scope: !324)
!328 = !DILocation(line: 121, column: 15, scope: !324)
!329 = !DILocation(line: 121, column: 12, scope: !324)
!330 = !DILocation(line: 121, column: 7, scope: !266)
!331 = !DILocation(line: 122, column: 4, scope: !332)
!332 = distinct !DILexicalBlock(scope: !324, file: !32, line: 121, column: 50)
!333 = distinct !{!333, !331}
!334 = !DILocation(line: 122, column: 3, scope: !335)
!335 = !DILexicalBlockFile(scope: !336, file: !32, discriminator: 1)
!336 = distinct !DILexicalBlock(scope: !332, file: !32, line: 122, column: 7)
!337 = !DILocation(line: 122, column: 6, scope: !335)
!338 = !DILocation(line: 122, column: 25, scope: !335)
!339 = !DILocation(line: 122, column: 13, scope: !335)
!340 = !DILocation(line: 122, column: 41, scope: !335)
!341 = !DILocation(line: 122, column: 12, scope: !335)
!342 = !DILocation(line: 122, column: 9, scope: !335)
!343 = !DILocation(line: 122, column: 48, scope: !335)
!344 = !DILocation(line: 124, column: 4, scope: !332)
!345 = !DILocation(line: 126, column: 11, scope: !266)
!346 = !DILocation(line: 126, column: 36, scope: !266)
!347 = !DILocation(line: 126, column: 43, scope: !266)
!348 = !DILocation(line: 126, column: 51, scope: !266)
!349 = !DILocation(line: 126, column: 3, scope: !266)
!350 = !DILocation(line: 127, column: 14, scope: !351)
!351 = distinct !DILexicalBlock(scope: !266, file: !32, line: 127, column: 7)
!352 = !DILocation(line: 127, column: 11, scope: !351)
!353 = !DILocation(line: 127, column: 7, scope: !266)
!354 = !DILocation(line: 128, column: 12, scope: !355)
!355 = distinct !DILexicalBlock(scope: !351, file: !32, line: 127, column: 20)
!356 = !DILocation(line: 128, column: 4, scope: !355)
!357 = !DILocation(line: 129, column: 10, scope: !358)
!358 = distinct !DILexicalBlock(scope: !355, file: !32, line: 129, column: 4)
!359 = !DILocation(line: 129, column: 8, scope: !358)
!360 = !DILocation(line: 129, column: 15, scope: !361)
!361 = !DILexicalBlockFile(scope: !362, file: !32, discriminator: 1)
!362 = distinct !DILexicalBlock(scope: !358, file: !32, line: 129, column: 4)
!363 = !DILocation(line: 129, column: 19, scope: !361)
!364 = !DILocation(line: 129, column: 17, scope: !361)
!365 = !DILocation(line: 129, column: 4, scope: !361)
!366 = !DILocation(line: 130, column: 9, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !32, line: 130, column: 8)
!368 = distinct !DILexicalBlock(scope: !362, file: !32, line: 129, column: 32)
!369 = !DILocation(line: 130, column: 8, scope: !367)
!370 = !DILocation(line: 130, column: 29, scope: !367)
!371 = !DILocation(line: 130, column: 11, scope: !367)
!372 = !DILocation(line: 130, column: 10, scope: !367)
!373 = !DILocation(line: 130, column: 12, scope: !367)
!374 = !DILocation(line: 130, column: 8, scope: !368)
!375 = !DILocation(line: 131, column: 14, scope: !367)
!376 = !DILocation(line: 131, column: 25, scope: !367)
!377 = !DILocation(line: 131, column: 24, scope: !367)
!378 = !DILocation(line: 131, column: 6, scope: !367)
!379 = !DILocation(line: 132, column: 11, scope: !368)
!380 = !DILocation(line: 133, column: 4, scope: !368)
!381 = !DILocation(line: 129, column: 28, scope: !382)
!382 = !DILexicalBlockFile(scope: !362, file: !32, discriminator: 2)
!383 = !DILocation(line: 129, column: 4, scope: !382)
!384 = distinct !{!384, !385}
!385 = !DILocation(line: 129, column: 4, scope: !355)
!386 = !DILocation(line: 134, column: 12, scope: !355)
!387 = !DILocation(line: 134, column: 4, scope: !355)
!388 = !DILocation(line: 135, column: 3, scope: !355)
!389 = !DILocation(line: 136, column: 14, scope: !390)
!390 = distinct !DILexicalBlock(scope: !266, file: !32, line: 136, column: 7)
!391 = !DILocation(line: 136, column: 11, scope: !390)
!392 = !DILocation(line: 136, column: 7, scope: !266)
!393 = !DILocation(line: 137, column: 12, scope: !394)
!394 = distinct !DILexicalBlock(scope: !395, file: !32, line: 137, column: 7)
!395 = distinct !DILexicalBlock(scope: !390, file: !32, line: 136, column: 20)
!396 = !DILocation(line: 137, column: 9, scope: !394)
!397 = !DILocation(line: 137, column: 7, scope: !395)
!398 = !DILocation(line: 139, column: 25, scope: !399)
!399 = distinct !DILexicalBlock(scope: !394, file: !32, line: 137, column: 28)
!400 = !DILocation(line: 139, column: 24, scope: !399)
!401 = !DILocation(line: 139, column: 10, scope: !399)
!402 = !DILocation(line: 139, column: 15, scope: !399)
!403 = !DILocation(line: 139, column: 5, scope: !399)
!404 = !DILocation(line: 139, column: 22, scope: !399)
!405 = !DILocation(line: 140, column: 26, scope: !399)
!406 = !DILocation(line: 140, column: 32, scope: !399)
!407 = !DILocation(line: 140, column: 24, scope: !399)
!408 = !DILocation(line: 140, column: 10, scope: !399)
!409 = !DILocation(line: 140, column: 15, scope: !399)
!410 = !DILocation(line: 140, column: 5, scope: !399)
!411 = !DILocation(line: 140, column: 22, scope: !399)
!412 = !DILocation(line: 141, column: 21, scope: !399)
!413 = !DILocation(line: 141, column: 53, scope: !399)
!414 = !DILocation(line: 141, column: 10, scope: !399)
!415 = !DILocation(line: 141, column: 15, scope: !399)
!416 = !DILocation(line: 142, column: 14, scope: !417)
!417 = distinct !DILexicalBlock(scope: !399, file: !32, line: 142, column: 9)
!418 = !DILocation(line: 142, column: 19, scope: !417)
!419 = !DILocation(line: 142, column: 9, scope: !399)
!420 = !DILocation(line: 143, column: 6, scope: !421)
!421 = distinct !DILexicalBlock(scope: !417, file: !32, line: 142, column: 29)
!422 = distinct !{!422, !420}
!423 = !DILocation(line: 143, column: 5, scope: !424)
!424 = !DILexicalBlockFile(scope: !425, file: !32, discriminator: 1)
!425 = distinct !DILexicalBlock(scope: !421, file: !32, line: 143, column: 9)
!426 = !DILocation(line: 143, column: 13, scope: !424)
!427 = !DILocation(line: 143, column: 11, scope: !424)
!428 = !DILocation(line: 143, column: 27, scope: !424)
!429 = !DILocation(line: 145, column: 6, scope: !421)
!430 = !DILocation(line: 147, column: 4, scope: !399)
!431 = !DILocation(line: 148, column: 10, scope: !432)
!432 = distinct !DILexicalBlock(scope: !395, file: !32, line: 148, column: 4)
!433 = !DILocation(line: 148, column: 8, scope: !432)
!434 = !DILocation(line: 148, column: 15, scope: !435)
!435 = !DILexicalBlockFile(scope: !436, file: !32, discriminator: 1)
!436 = distinct !DILexicalBlock(scope: !432, file: !32, line: 148, column: 4)
!437 = !DILocation(line: 148, column: 19, scope: !435)
!438 = !DILocation(line: 148, column: 17, scope: !435)
!439 = !DILocation(line: 148, column: 4, scope: !435)
!440 = !DILocation(line: 149, column: 13, scope: !436)
!441 = !DILocation(line: 149, column: 33, scope: !436)
!442 = !DILocation(line: 149, column: 26, scope: !436)
!443 = !DILocation(line: 149, column: 5, scope: !436)
!444 = !DILocation(line: 148, column: 28, scope: !445)
!445 = !DILexicalBlockFile(scope: !436, file: !32, discriminator: 2)
!446 = !DILocation(line: 148, column: 4, scope: !445)
!447 = distinct !{!447, !448}
!448 = !DILocation(line: 148, column: 4, scope: !395)
!449 = !DILocation(line: 150, column: 3, scope: !395)
!450 = !DILocation(line: 151, column: 11, scope: !266)
!451 = !DILocation(line: 151, column: 3, scope: !266)
!452 = !DILocation(line: 152, column: 14, scope: !266)
!453 = !DILocation(line: 152, column: 12, scope: !266)
!454 = !DILocation(line: 152, column: 6, scope: !266)
!455 = !DILocation(line: 153, column: 17, scope: !266)
!456 = !DILocation(line: 105, column: 2, scope: !457)
!457 = !DILexicalBlockFile(scope: !162, file: !32, discriminator: 2)
!458 = distinct !{!458, !261}
!459 = !DILocation(line: 156, column: 2, scope: !162)
!460 = distinct !{!460, !459}
!461 = !DILocation(line: 156, column: 11, scope: !462)
!462 = !DILexicalBlockFile(scope: !463, file: !32, discriminator: 1)
!463 = distinct !DILexicalBlock(scope: !464, file: !32, line: 156, column: 11)
!464 = distinct !DILexicalBlock(scope: !162, file: !32, line: 156, column: 5)
!465 = !DILocation(line: 156, column: 1, scope: !466)
!466 = !DILexicalBlockFile(scope: !463, file: !32, discriminator: 2)
!467 = !DILocation(line: 156, column: 47, scope: !466)
!468 = !DILocation(line: 156, column: 25, scope: !466)
!469 = !DILocation(line: 156, column: 118, scope: !470)
!470 = !DILexicalBlockFile(scope: !464, file: !32, discriminator: 3)
!471 = !DILocation(line: 158, column: 57, scope: !472)
!472 = distinct !DILexicalBlock(scope: !162, file: !32, line: 158, column: 6)
!473 = !DILocation(line: 158, column: 54, scope: !472)
!474 = !DILocation(line: 158, column: 6, scope: !162)
!475 = !DILocation(line: 159, column: 3, scope: !476)
!476 = distinct !DILexicalBlock(scope: !472, file: !32, line: 158, column: 73)
!477 = distinct !{!477, !475}
!478 = !DILocation(line: 159, column: 2, scope: !479)
!479 = !DILexicalBlockFile(scope: !480, file: !32, discriminator: 1)
!480 = distinct !DILexicalBlock(scope: !476, file: !32, line: 159, column: 6)
!481 = !DILocation(line: 159, column: 5, scope: !479)
!482 = !DILocation(line: 159, column: 8, scope: !479)
!483 = !DILocation(line: 159, column: 76, scope: !479)
!484 = !DILocation(line: 161, column: 3, scope: !476)
!485 = !DILocation(line: 163, column: 2, scope: !162)
!486 = !DILocation(line: 164, column: 1, scope: !162)
!487 = distinct !DISubprogram(name: "__fswab32", scope: !488, file: !488, line: 57, type: !489, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!488 = !DIFile(filename: "/usr/include/linux/swab.h", directory: "/home/lichi/Desktop")
!489 = !DISubroutineType(types: !490)
!490 = !{!21, !21}
!491 = !DILocalVariable(name: "val", arg: 1, scope: !487, file: !488, line: 57, type: !21)
!492 = !DILocation(line: 57, column: 41, scope: !487)
!493 = !DILocation(line: 62, column: 23, scope: !487)
!494 = !DILocation(line: 62, column: 9, scope: !487)
!495 = !DILocation(line: 62, column: 2, scope: !487)
!496 = distinct !DISubprogram(name: "csv_2_bin", scope: !32, file: !32, line: 178, type: !497, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!497 = !DISubroutineType(types: !498)
!498 = !{!165, !166, !123, !499, !500, !500}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!501 = !DILocalVariable(name: "ip", arg: 1, scope: !496, file: !32, line: 178, type: !166)
!502 = !DILocation(line: 178, column: 21, scope: !496)
!503 = !DILocalVariable(name: "buffer", arg: 2, scope: !496, file: !32, line: 179, type: !123)
!504 = !DILocation(line: 179, column: 18, scope: !496)
!505 = !DILocalVariable(name: "size", arg: 3, scope: !496, file: !32, line: 180, type: !499)
!506 = !DILocation(line: 180, column: 14, scope: !496)
!507 = !DILocalVariable(name: "crc32_result", arg: 4, scope: !496, file: !32, line: 181, type: !500)
!508 = !DILocation(line: 181, column: 19, scope: !496)
!509 = !DILocalVariable(name: "crc32_from_csv", arg: 5, scope: !496, file: !32, line: 182, type: !500)
!510 = !DILocation(line: 182, column: 19, scope: !496)
!511 = !DILocalVariable(name: "line", scope: !496, file: !32, line: 184, type: !512)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 4096, align: 8, elements: !513)
!513 = !{!514}
!514 = !DISubrange(count: 512)
!515 = !DILocation(line: 184, column: 7, scope: !496)
!516 = !DILocalVariable(name: "token", scope: !496, file: !32, line: 185, type: !512)
!517 = !DILocation(line: 185, column: 7, scope: !496)
!518 = !DILocalVariable(name: "data", scope: !496, file: !32, line: 186, type: !519)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 4096, align: 8, elements: !513)
!520 = !DILocation(line: 186, column: 10, scope: !496)
!521 = !DILocalVariable(name: "line_nr", scope: !496, file: !32, line: 187, type: !23)
!522 = !DILocation(line: 187, column: 11, scope: !496)
!523 = !DILocalVariable(name: "crc32", scope: !496, file: !32, line: 188, type: !34)
!524 = !DILocation(line: 188, column: 11, scope: !496)
!525 = !DILocalVariable(name: "mode", scope: !496, file: !32, line: 189, type: !27)
!526 = !DILocation(line: 189, column: 10, scope: !496)
!527 = !DILocalVariable(name: "i", scope: !496, file: !32, line: 190, type: !19)
!528 = !DILocation(line: 190, column: 6, scope: !496)
!529 = !DILocalVariable(name: "j", scope: !496, file: !32, line: 190, type: !19)
!530 = !DILocation(line: 190, column: 9, scope: !496)
!531 = !DILocalVariable(name: "parse_error", scope: !496, file: !32, line: 191, type: !165)
!532 = !DILocation(line: 191, column: 6, scope: !496)
!533 = !DILocalVariable(name: "get_crc_value", scope: !496, file: !32, line: 192, type: !165)
!534 = !DILocation(line: 192, column: 6, scope: !496)
!535 = !DILocalVariable(name: "ln", scope: !496, file: !32, line: 193, type: !27)
!536 = !DILocation(line: 193, column: 10, scope: !496)
!537 = !DILocalVariable(name: "hn", scope: !496, file: !32, line: 193, type: !27)
!538 = !DILocation(line: 193, column: 14, scope: !496)
!539 = !DILocalVariable(name: "data_len", scope: !496, file: !32, line: 194, type: !19)
!540 = !DILocation(line: 194, column: 6, scope: !496)
!541 = !DILocalVariable(name: "write_size", scope: !496, file: !32, line: 194, type: !19)
!542 = !DILocation(line: 194, column: 16, scope: !496)
!543 = !DILocalVariable(name: "seek_offset", scope: !496, file: !32, line: 194, type: !19)
!544 = !DILocation(line: 194, column: 28, scope: !496)
!545 = !DILocalVariable(name: "vpd_check_line", scope: !496, file: !32, line: 194, type: !19)
!546 = !DILocation(line: 194, column: 41, scope: !496)
!547 = !DILocalVariable(name: "csv_crc", scope: !496, file: !32, line: 195, type: !242)
!548 = !DILocation(line: 195, column: 16, scope: !496)
!549 = !DILocalVariable(name: "swap", scope: !496, file: !32, line: 196, type: !242)
!550 = !DILocation(line: 196, column: 16, scope: !496)
!551 = !DILocalVariable(name: "good_lines", scope: !496, file: !32, line: 197, type: !19)
!552 = !DILocation(line: 197, column: 6, scope: !496)
!553 = !DILocation(line: 199, column: 13, scope: !496)
!554 = !DILocation(line: 200, column: 14, scope: !496)
!555 = !DILocation(line: 201, column: 8, scope: !496)
!556 = !DILocation(line: 202, column: 17, scope: !496)
!557 = !DILocation(line: 203, column: 7, scope: !496)
!558 = !DILocation(line: 203, column: 12, scope: !496)
!559 = !DILocation(line: 205, column: 2, scope: !496)
!560 = !DILocation(line: 205, column: 22, scope: !561)
!561 = !DILexicalBlockFile(scope: !496, file: !32, discriminator: 1)
!562 = !DILocation(line: 205, column: 33, scope: !561)
!563 = !DILocation(line: 205, column: 16, scope: !561)
!564 = !DILocation(line: 205, column: 13, scope: !561)
!565 = !DILocation(line: 205, column: 2, scope: !561)
!566 = !DILocalVariable(name: "field_num", scope: !567, file: !32, line: 206, type: !19)
!567 = distinct !DILexicalBlock(scope: !496, file: !32, line: 205, column: 38)
!568 = !DILocation(line: 206, column: 7, scope: !567)
!569 = !DILocalVariable(name: "num_fields", scope: !567, file: !32, line: 207, type: !19)
!570 = !DILocation(line: 207, column: 7, scope: !567)
!571 = !DILocalVariable(name: "line_len", scope: !567, file: !32, line: 208, type: !19)
!572 = !DILocation(line: 208, column: 7, scope: !567)
!573 = !DILocalVariable(name: "n", scope: !567, file: !32, line: 209, type: !19)
!574 = !DILocation(line: 209, column: 7, scope: !567)
!575 = !DILocation(line: 211, column: 3, scope: !567)
!576 = !DILocation(line: 212, column: 14, scope: !567)
!577 = !DILocation(line: 213, column: 3, scope: !567)
!578 = !DILocation(line: 214, column: 3, scope: !567)
!579 = !DILocation(line: 215, column: 5, scope: !567)
!580 = !DILocation(line: 216, column: 15, scope: !567)
!581 = !DILocation(line: 216, column: 8, scope: !567)
!582 = !DILocation(line: 216, column: 21, scope: !567)
!583 = !DILocation(line: 216, column: 3, scope: !567)
!584 = !DILocation(line: 216, column: 26, scope: !567)
!585 = !DILocation(line: 218, column: 26, scope: !567)
!586 = !DILocation(line: 218, column: 19, scope: !567)
!587 = !DILocation(line: 218, column: 14, scope: !567)
!588 = !DILocation(line: 218, column: 12, scope: !567)
!589 = !DILocation(line: 219, column: 3, scope: !567)
!590 = distinct !{!590, !589}
!591 = !DILocation(line: 219, column: 12, scope: !592)
!592 = !DILexicalBlockFile(scope: !593, file: !32, discriminator: 1)
!593 = distinct !DILexicalBlock(scope: !594, file: !32, line: 219, column: 12)
!594 = distinct !DILexicalBlock(scope: !567, file: !32, line: 219, column: 6)
!595 = !DILocation(line: 219, column: 2, scope: !596)
!596 = !DILexicalBlockFile(scope: !593, file: !32, discriminator: 2)
!597 = !DILocation(line: 219, column: 29, scope: !596)
!598 = !DILocation(line: 219, column: 38, scope: !596)
!599 = !DILocation(line: 219, column: 48, scope: !596)
!600 = !DILocation(line: 219, column: 23, scope: !596)
!601 = !DILocation(line: 219, column: 55, scope: !602)
!602 = !DILexicalBlockFile(scope: !594, file: !32, discriminator: 3)
!603 = !DILocation(line: 220, column: 13, scope: !567)
!604 = !DILocation(line: 221, column: 15, scope: !567)
!605 = !DILocation(line: 223, column: 10, scope: !606)
!606 = distinct !DILexicalBlock(scope: !567, file: !32, line: 223, column: 3)
!607 = !DILocation(line: 223, column: 8, scope: !606)
!608 = !DILocation(line: 223, column: 15, scope: !609)
!609 = !DILexicalBlockFile(scope: !610, file: !32, discriminator: 1)
!610 = distinct !DILexicalBlock(scope: !606, file: !32, line: 223, column: 3)
!611 = !DILocation(line: 223, column: 20, scope: !609)
!612 = !DILocation(line: 223, column: 17, scope: !609)
!613 = !DILocation(line: 223, column: 3, scope: !609)
!614 = !DILocation(line: 224, column: 17, scope: !615)
!615 = distinct !DILexicalBlock(scope: !610, file: !32, line: 223, column: 35)
!616 = !DILocation(line: 224, column: 12, scope: !615)
!617 = !DILocation(line: 224, column: 4, scope: !615)
!618 = !DILocation(line: 227, column: 13, scope: !619)
!619 = distinct !DILexicalBlock(scope: !615, file: !32, line: 224, column: 21)
!620 = !DILocation(line: 227, column: 5, scope: !619)
!621 = !DILocation(line: 229, column: 18, scope: !622)
!622 = distinct !DILexicalBlock(scope: !619, file: !32, line: 227, column: 24)
!623 = !DILocation(line: 229, column: 10, scope: !622)
!624 = !DILocation(line: 229, column: 8, scope: !622)
!625 = !DILocation(line: 230, column: 15, scope: !626)
!626 = distinct !DILexicalBlock(scope: !622, file: !32, line: 230, column: 10)
!627 = !DILocation(line: 230, column: 12, scope: !626)
!628 = !DILocation(line: 230, column: 10, scope: !622)
!629 = !DILocation(line: 231, column: 17, scope: !630)
!630 = distinct !DILexicalBlock(scope: !626, file: !32, line: 230, column: 18)
!631 = !DILocation(line: 231, column: 7, scope: !630)
!632 = !DILocation(line: 231, column: 15, scope: !630)
!633 = !DILocation(line: 232, column: 17, scope: !630)
!634 = !DILocation(line: 232, column: 7, scope: !630)
!635 = !DILocation(line: 232, column: 15, scope: !630)
!636 = !DILocation(line: 234, column: 10, scope: !637)
!637 = distinct !DILexicalBlock(scope: !630, file: !32, line: 233, column: 11)
!638 = !DILocation(line: 233, column: 16, scope: !637)
!639 = !DILocation(line: 233, column: 13, scope: !637)
!640 = !DILocation(line: 233, column: 11, scope: !630)
!641 = !DILocation(line: 235, column: 22, scope: !637)
!642 = !DILocation(line: 235, column: 8, scope: !637)
!643 = !DILocation(line: 236, column: 24, scope: !644)
!644 = distinct !DILexicalBlock(scope: !630, file: !32, line: 236, column: 11)
!645 = !DILocation(line: 236, column: 46, scope: !644)
!646 = !DILocation(line: 236, column: 34, scope: !644)
!647 = !DILocation(line: 236, column: 62, scope: !644)
!648 = !DILocation(line: 236, column: 16, scope: !644)
!649 = !DILocation(line: 236, column: 13, scope: !644)
!650 = !DILocation(line: 236, column: 11, scope: !630)
!651 = !DILocation(line: 237, column: 20, scope: !644)
!652 = !DILocation(line: 237, column: 8, scope: !644)
!653 = !DILocation(line: 238, column: 6, scope: !630)
!654 = !DILocation(line: 239, column: 11, scope: !655)
!655 = distinct !DILexicalBlock(scope: !626, file: !32, line: 238, column: 13)
!656 = !DILocation(line: 239, column: 9, scope: !655)
!657 = !DILocation(line: 241, column: 7, scope: !655)
!658 = !DILocation(line: 243, column: 6, scope: !622)
!659 = !DILocation(line: 245, column: 18, scope: !622)
!660 = !DILocation(line: 246, column: 18, scope: !622)
!661 = !DILocation(line: 246, column: 10, scope: !622)
!662 = !DILocation(line: 246, column: 8, scope: !622)
!663 = !DILocation(line: 247, column: 15, scope: !664)
!664 = distinct !DILexicalBlock(scope: !622, file: !32, line: 247, column: 10)
!665 = !DILocation(line: 247, column: 12, scope: !664)
!666 = !DILocation(line: 247, column: 10, scope: !622)
!667 = !DILocation(line: 248, column: 11, scope: !668)
!668 = distinct !DILexicalBlock(scope: !669, file: !32, line: 248, column: 11)
!669 = distinct !DILexicalBlock(scope: !664, file: !32, line: 247, column: 18)
!670 = !DILocation(line: 248, column: 35, scope: !668)
!671 = !DILocation(line: 248, column: 23, scope: !668)
!672 = !DILocation(line: 248, column: 51, scope: !668)
!673 = !DILocation(line: 248, column: 20, scope: !668)
!674 = !DILocation(line: 248, column: 11, scope: !669)
!675 = !DILocation(line: 249, column: 18, scope: !676)
!676 = distinct !DILexicalBlock(scope: !668, file: !32, line: 248, column: 59)
!677 = !DILocation(line: 249, column: 8, scope: !676)
!678 = !DILocation(line: 249, column: 16, scope: !676)
!679 = !DILocation(line: 250, column: 33, scope: !676)
!680 = !DILocation(line: 250, column: 31, scope: !676)
!681 = !DILocation(line: 250, column: 19, scope: !676)
!682 = !DILocation(line: 251, column: 20, scope: !676)
!683 = !DILocation(line: 252, column: 7, scope: !676)
!684 = !DILocation(line: 253, column: 6, scope: !669)
!685 = !DILocation(line: 254, column: 6, scope: !622)
!686 = !DILocation(line: 256, column: 18, scope: !622)
!687 = !DILocation(line: 257, column: 23, scope: !688)
!688 = distinct !DILexicalBlock(scope: !622, file: !32, line: 257, column: 10)
!689 = !DILocation(line: 257, column: 15, scope: !688)
!690 = !DILocation(line: 257, column: 12, scope: !688)
!691 = !DILocation(line: 257, column: 10, scope: !622)
!692 = !DILocation(line: 258, column: 14, scope: !693)
!693 = distinct !DILexicalBlock(scope: !688, file: !32, line: 257, column: 34)
!694 = !DILocation(line: 258, column: 12, scope: !693)
!695 = !DILocation(line: 259, column: 24, scope: !696)
!696 = distinct !DILexicalBlock(scope: !693, file: !32, line: 259, column: 11)
!697 = !DILocation(line: 259, column: 46, scope: !696)
!698 = !DILocation(line: 259, column: 34, scope: !696)
!699 = !DILocation(line: 259, column: 62, scope: !696)
!700 = !DILocation(line: 259, column: 16, scope: !696)
!701 = !DILocation(line: 259, column: 13, scope: !696)
!702 = !DILocation(line: 259, column: 11, scope: !693)
!703 = !DILocation(line: 260, column: 20, scope: !696)
!704 = !DILocation(line: 260, column: 8, scope: !696)
!705 = !DILocation(line: 261, column: 6, scope: !693)
!706 = !DILocation(line: 262, column: 6, scope: !622)
!707 = !DILocation(line: 264, column: 18, scope: !622)
!708 = !DILocation(line: 265, column: 16, scope: !622)
!709 = !DILocation(line: 265, column: 6, scope: !622)
!710 = !DILocation(line: 265, column: 14, scope: !622)
!711 = !DILocation(line: 266, column: 18, scope: !622)
!712 = !DILocation(line: 266, column: 10, scope: !622)
!713 = !DILocation(line: 266, column: 8, scope: !622)
!714 = !DILocation(line: 267, column: 17, scope: !715)
!715 = distinct !DILexicalBlock(scope: !622, file: !32, line: 267, column: 10)
!716 = !DILocation(line: 267, column: 14, scope: !715)
!717 = !DILocation(line: 267, column: 10, scope: !622)
!718 = !DILocation(line: 268, column: 11, scope: !719)
!719 = distinct !DILexicalBlock(scope: !720, file: !32, line: 268, column: 11)
!720 = distinct !DILexicalBlock(scope: !715, file: !32, line: 267, column: 23)
!721 = !DILocation(line: 268, column: 16, scope: !719)
!722 = !DILocation(line: 268, column: 13, scope: !719)
!723 = !DILocation(line: 268, column: 11, scope: !720)
!724 = !DILocation(line: 269, column: 16, scope: !725)
!725 = distinct !DILexicalBlock(scope: !719, file: !32, line: 268, column: 26)
!726 = !DILocation(line: 269, column: 8, scope: !725)
!727 = !DILocation(line: 269, column: 32, scope: !725)
!728 = !DILocation(line: 270, column: 20, scope: !725)
!729 = !DILocation(line: 271, column: 7, scope: !725)
!730 = !DILocation(line: 272, column: 6, scope: !720)
!731 = !DILocation(line: 272, column: 24, scope: !732)
!732 = !DILexicalBlockFile(scope: !733, file: !32, discriminator: 1)
!733 = distinct !DILexicalBlock(scope: !715, file: !32, line: 272, column: 17)
!734 = !DILocation(line: 272, column: 21, scope: !732)
!735 = !DILocation(line: 272, column: 17, scope: !732)
!736 = !DILocation(line: 273, column: 11, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !32, line: 273, column: 11)
!738 = distinct !DILexicalBlock(scope: !733, file: !32, line: 272, column: 30)
!739 = !DILocation(line: 273, column: 20, scope: !737)
!740 = !DILocation(line: 273, column: 18, scope: !737)
!741 = !DILocation(line: 273, column: 13, scope: !737)
!742 = !DILocation(line: 273, column: 11, scope: !738)
!743 = !DILocation(line: 275, column: 8, scope: !744)
!744 = distinct !DILexicalBlock(scope: !737, file: !32, line: 273, column: 31)
!745 = !DILocation(line: 275, column: 15, scope: !746)
!746 = !DILexicalBlockFile(scope: !744, file: !32, discriminator: 1)
!747 = !DILocation(line: 275, column: 8, scope: !746)
!748 = !DILocation(line: 276, column: 10, scope: !749)
!749 = distinct !DILexicalBlock(scope: !744, file: !32, line: 275, column: 18)
!750 = !DILocation(line: 277, column: 24, scope: !749)
!751 = !DILocation(line: 277, column: 18, scope: !749)
!752 = !DILocation(line: 277, column: 14, scope: !749)
!753 = !DILocation(line: 277, column: 12, scope: !749)
!754 = !DILocation(line: 278, column: 13, scope: !755)
!755 = distinct !DILexicalBlock(scope: !749, file: !32, line: 278, column: 13)
!756 = !DILocation(line: 278, column: 13, scope: !749)
!757 = !DILocation(line: 279, column: 11, scope: !758)
!758 = distinct !DILexicalBlock(scope: !755, file: !32, line: 278, column: 16)
!759 = !DILocation(line: 280, column: 25, scope: !758)
!760 = !DILocation(line: 280, column: 19, scope: !758)
!761 = !DILocation(line: 280, column: 15, scope: !758)
!762 = !DILocation(line: 280, column: 13, scope: !758)
!763 = !DILocation(line: 281, column: 16, scope: !758)
!764 = !DILocation(line: 281, column: 19, scope: !758)
!765 = !DILocation(line: 281, column: 13, scope: !758)
!766 = !DILocation(line: 282, column: 9, scope: !758)
!767 = !DILocation(line: 283, column: 28, scope: !749)
!768 = !DILocation(line: 283, column: 16, scope: !749)
!769 = !DILocation(line: 283, column: 15, scope: !749)
!770 = !DILocation(line: 283, column: 9, scope: !749)
!771 = !DILocation(line: 283, column: 26, scope: !749)
!772 = !DILocation(line: 284, column: 17, scope: !749)
!773 = !DILocation(line: 275, column: 8, scope: !774)
!774 = !DILexicalBlockFile(scope: !744, file: !32, discriminator: 2)
!775 = distinct !{!775, !743}
!776 = !DILocation(line: 286, column: 20, scope: !744)
!777 = !DILocation(line: 287, column: 17, scope: !778)
!778 = distinct !DILexicalBlock(scope: !744, file: !32, line: 287, column: 12)
!779 = !DILocation(line: 287, column: 14, scope: !778)
!780 = !DILocation(line: 287, column: 12, scope: !744)
!781 = !DILocation(line: 289, column: 28, scope: !782)
!782 = distinct !DILexicalBlock(scope: !778, file: !32, line: 287, column: 33)
!783 = !DILocation(line: 289, column: 14, scope: !782)
!784 = !DILocation(line: 289, column: 19, scope: !782)
!785 = !DILocation(line: 289, column: 9, scope: !782)
!786 = !DILocation(line: 289, column: 26, scope: !782)
!787 = !DILocation(line: 290, column: 28, scope: !782)
!788 = !DILocation(line: 290, column: 14, scope: !782)
!789 = !DILocation(line: 290, column: 19, scope: !782)
!790 = !DILocation(line: 290, column: 9, scope: !782)
!791 = !DILocation(line: 290, column: 26, scope: !782)
!792 = !DILocation(line: 291, column: 25, scope: !782)
!793 = !DILocation(line: 291, column: 57, scope: !782)
!794 = !DILocation(line: 291, column: 14, scope: !782)
!795 = !DILocation(line: 291, column: 19, scope: !782)
!796 = !DILocation(line: 292, column: 18, scope: !797)
!797 = distinct !DILexicalBlock(scope: !782, file: !32, line: 292, column: 13)
!798 = !DILocation(line: 292, column: 23, scope: !797)
!799 = !DILocation(line: 292, column: 13, scope: !782)
!800 = !DILocation(line: 293, column: 10, scope: !801)
!801 = distinct !DILexicalBlock(scope: !797, file: !32, line: 292, column: 33)
!802 = distinct !{!802, !800}
!803 = !DILocation(line: 293, column: 9, scope: !804)
!804 = !DILexicalBlockFile(scope: !805, file: !32, discriminator: 1)
!805 = distinct !DILexicalBlock(scope: !801, file: !32, line: 293, column: 13)
!806 = !DILocation(line: 293, column: 93, scope: !804)
!807 = !DILocation(line: 293, column: 15, scope: !804)
!808 = !DILocation(line: 293, column: 100, scope: !804)
!809 = !DILocation(line: 294, column: 22, scope: !801)
!810 = !DILocation(line: 295, column: 9, scope: !801)
!811 = !DILocation(line: 296, column: 8, scope: !782)
!812 = !DILocation(line: 297, column: 12, scope: !813)
!813 = distinct !DILexicalBlock(scope: !744, file: !32, line: 297, column: 12)
!814 = !DILocation(line: 297, column: 12, scope: !744)
!815 = !DILocation(line: 299, column: 23, scope: !816)
!816 = distinct !DILexicalBlock(scope: !813, file: !32, line: 297, column: 27)
!817 = !DILocation(line: 300, column: 31, scope: !816)
!818 = !DILocation(line: 300, column: 17, scope: !816)
!819 = !DILocation(line: 300, column: 22, scope: !816)
!820 = !DILocation(line: 300, column: 9, scope: !816)
!821 = !DILocation(line: 300, column: 29, scope: !816)
!822 = !DILocation(line: 301, column: 31, scope: !816)
!823 = !DILocation(line: 301, column: 17, scope: !816)
!824 = !DILocation(line: 301, column: 22, scope: !816)
!825 = !DILocation(line: 301, column: 9, scope: !816)
!826 = !DILocation(line: 301, column: 29, scope: !816)
!827 = !DILocation(line: 302, column: 31, scope: !816)
!828 = !DILocation(line: 302, column: 17, scope: !816)
!829 = !DILocation(line: 302, column: 22, scope: !816)
!830 = !DILocation(line: 302, column: 9, scope: !816)
!831 = !DILocation(line: 302, column: 29, scope: !816)
!832 = !DILocation(line: 303, column: 31, scope: !816)
!833 = !DILocation(line: 303, column: 17, scope: !816)
!834 = !DILocation(line: 303, column: 22, scope: !816)
!835 = !DILocation(line: 303, column: 9, scope: !816)
!836 = !DILocation(line: 303, column: 29, scope: !816)
!837 = !DILocation(line: 304, column: 31, scope: !816)
!838 = !DILocation(line: 304, column: 60, scope: !816)
!839 = !DILocation(line: 304, column: 17, scope: !816)
!840 = !DILocation(line: 304, column: 22, scope: !816)
!841 = !DILocation(line: 305, column: 8, scope: !816)
!842 = !DILocation(line: 306, column: 7, scope: !744)
!843 = !DILocation(line: 307, column: 6, scope: !738)
!844 = !DILocation(line: 308, column: 11, scope: !845)
!845 = distinct !DILexicalBlock(scope: !622, file: !32, line: 308, column: 10)
!846 = !DILocation(line: 308, column: 10, scope: !622)
!847 = !DILocation(line: 309, column: 17, scope: !845)
!848 = !DILocation(line: 309, column: 7, scope: !845)
!849 = !DILocation(line: 310, column: 6, scope: !622)
!850 = !DILocation(line: 312, column: 6, scope: !622)
!851 = !DILocation(line: 314, column: 10, scope: !852)
!852 = distinct !DILexicalBlock(scope: !619, file: !32, line: 314, column: 9)
!853 = !DILocation(line: 314, column: 9, scope: !619)
!854 = !DILocation(line: 315, column: 8, scope: !855)
!855 = distinct !DILexicalBlock(scope: !852, file: !32, line: 314, column: 23)
!856 = !DILocation(line: 316, column: 12, scope: !855)
!857 = !DILocation(line: 316, column: 6, scope: !855)
!858 = !DILocation(line: 316, column: 15, scope: !855)
!859 = !DILocation(line: 317, column: 15, scope: !855)
!860 = !DILocation(line: 318, column: 16, scope: !855)
!861 = !DILocation(line: 319, column: 5, scope: !855)
!862 = !DILocation(line: 320, column: 5, scope: !619)
!863 = !DILocation(line: 322, column: 22, scope: !864)
!864 = distinct !DILexicalBlock(scope: !619, file: !32, line: 322, column: 9)
!865 = !DILocation(line: 322, column: 17, scope: !864)
!866 = !DILocation(line: 322, column: 14, scope: !864)
!867 = !DILocation(line: 322, column: 9, scope: !619)
!868 = !DILocation(line: 323, column: 6, scope: !864)
!869 = !DILocation(line: 324, column: 23, scope: !619)
!870 = !DILocation(line: 324, column: 18, scope: !619)
!871 = !DILocation(line: 324, column: 12, scope: !619)
!872 = !DILocation(line: 324, column: 5, scope: !619)
!873 = !DILocation(line: 324, column: 16, scope: !619)
!874 = !DILocation(line: 325, column: 11, scope: !619)
!875 = !DILocation(line: 325, column: 5, scope: !619)
!876 = !DILocation(line: 325, column: 14, scope: !619)
!877 = !DILocation(line: 326, column: 5, scope: !619)
!878 = !DILocation(line: 328, column: 8, scope: !879)
!879 = distinct !DILexicalBlock(scope: !615, file: !32, line: 328, column: 8)
!880 = !DILocation(line: 328, column: 8, scope: !615)
!881 = !DILocation(line: 329, column: 5, scope: !879)
!882 = !DILocation(line: 330, column: 3, scope: !615)
!883 = !DILocation(line: 223, column: 31, scope: !884)
!884 = !DILexicalBlockFile(scope: !610, file: !32, discriminator: 2)
!885 = !DILocation(line: 223, column: 3, scope: !884)
!886 = distinct !{!886, !887}
!887 = !DILocation(line: 223, column: 3, scope: !567)
!888 = !DILocation(line: 332, column: 7, scope: !889)
!889 = distinct !DILexicalBlock(scope: !567, file: !32, line: 332, column: 7)
!890 = !DILocation(line: 332, column: 7, scope: !567)
!891 = !DILocation(line: 333, column: 4, scope: !892)
!892 = distinct !DILexicalBlock(scope: !889, file: !32, line: 332, column: 20)
!893 = distinct !{!893, !891}
!894 = !DILocation(line: 333, column: 3, scope: !895)
!895 = !DILexicalBlockFile(scope: !896, file: !32, discriminator: 1)
!896 = distinct !DILexicalBlock(scope: !892, file: !32, line: 333, column: 7)
!897 = !DILocation(line: 333, column: 6, scope: !895)
!898 = !DILocation(line: 333, column: 15, scope: !895)
!899 = !DILocation(line: 333, column: 26, scope: !895)
!900 = !DILocation(line: 333, column: 9, scope: !895)
!901 = !DILocation(line: 333, column: 34, scope: !895)
!902 = !DILocation(line: 335, column: 4, scope: !892)
!903 = !DILocation(line: 337, column: 7, scope: !904)
!904 = distinct !DILexicalBlock(scope: !567, file: !32, line: 337, column: 7)
!905 = !DILocation(line: 337, column: 18, scope: !904)
!906 = !DILocation(line: 337, column: 7, scope: !567)
!907 = !DILocation(line: 338, column: 4, scope: !908)
!908 = distinct !DILexicalBlock(scope: !904, file: !32, line: 337, column: 23)
!909 = distinct !{!909, !907}
!910 = !DILocation(line: 338, column: 13, scope: !911)
!911 = !DILexicalBlockFile(scope: !912, file: !32, discriminator: 1)
!912 = distinct !DILexicalBlock(scope: !913, file: !32, line: 338, column: 13)
!913 = distinct !DILexicalBlock(scope: !908, file: !32, line: 338, column: 7)
!914 = !DILocation(line: 338, column: 3, scope: !915)
!915 = !DILexicalBlockFile(scope: !912, file: !32, discriminator: 2)
!916 = !DILocation(line: 338, column: 24, scope: !915)
!917 = !DILocation(line: 338, column: 34, scope: !918)
!918 = !DILexicalBlockFile(scope: !913, file: !32, discriminator: 3)
!919 = !DILocation(line: 339, column: 4, scope: !908)
!920 = distinct !{!920, !559}
!921 = !DILocation(line: 342, column: 4, scope: !922)
!922 = distinct !DILexicalBlock(scope: !904, file: !32, line: 340, column: 10)
!923 = distinct !{!923, !921}
!924 = !DILocation(line: 342, column: 13, scope: !925)
!925 = !DILexicalBlockFile(scope: !926, file: !32, discriminator: 1)
!926 = distinct !DILexicalBlock(scope: !927, file: !32, line: 342, column: 13)
!927 = distinct !DILexicalBlock(scope: !922, file: !32, line: 342, column: 7)
!928 = !DILocation(line: 342, column: 3, scope: !929)
!929 = !DILexicalBlockFile(scope: !926, file: !32, discriminator: 2)
!930 = !DILocation(line: 342, column: 56, scope: !929)
!931 = !DILocation(line: 342, column: 65, scope: !929)
!932 = !DILocation(line: 342, column: 77, scope: !929)
!933 = !DILocation(line: 342, column: 90, scope: !929)
!934 = !DILocation(line: 342, column: 24, scope: !929)
!935 = !DILocation(line: 342, column: 103, scope: !936)
!936 = !DILexicalBlockFile(scope: !927, file: !32, discriminator: 3)
!937 = !DILocation(line: 344, column: 19, scope: !922)
!938 = !DILocation(line: 344, column: 12, scope: !922)
!939 = !DILocation(line: 344, column: 4, scope: !922)
!940 = !DILocation(line: 344, column: 39, scope: !922)
!941 = !DILocation(line: 345, column: 19, scope: !922)
!942 = !DILocation(line: 345, column: 16, scope: !922)
!943 = !DILocation(line: 346, column: 29, scope: !922)
!944 = !DILocation(line: 346, column: 35, scope: !922)
!945 = !DILocation(line: 346, column: 47, scope: !922)
!946 = !DILocation(line: 346, column: 12, scope: !922)
!947 = !DILocation(line: 346, column: 10, scope: !922)
!948 = !DILocation(line: 347, column: 8, scope: !949)
!949 = distinct !DILexicalBlock(scope: !922, file: !32, line: 347, column: 8)
!950 = !DILocation(line: 347, column: 20, scope: !949)
!951 = !DILocation(line: 347, column: 8, scope: !922)
!952 = !DILocation(line: 348, column: 5, scope: !953)
!953 = distinct !DILexicalBlock(scope: !949, file: !32, line: 347, column: 33)
!954 = distinct !{!954, !952}
!955 = !DILocation(line: 348, column: 4, scope: !956)
!956 = !DILexicalBlockFile(scope: !957, file: !32, discriminator: 1)
!957 = distinct !DILexicalBlock(scope: !953, file: !32, line: 348, column: 8)
!958 = !DILocation(line: 348, column: 7, scope: !956)
!959 = !DILocation(line: 348, column: 10, scope: !956)
!960 = !DILocation(line: 348, column: 21, scope: !956)
!961 = !DILocation(line: 350, column: 17, scope: !953)
!962 = !DILocation(line: 351, column: 5, scope: !953)
!963 = !DILocation(line: 354, column: 17, scope: !567)
!964 = !DILocation(line: 205, column: 2, scope: !965)
!965 = !DILexicalBlockFile(scope: !496, file: !32, discriminator: 2)
!966 = !DILocation(line: 356, column: 10, scope: !496)
!967 = !DILocation(line: 356, column: 3, scope: !496)
!968 = !DILocation(line: 356, column: 8, scope: !496)
!969 = !DILocation(line: 357, column: 18, scope: !496)
!970 = !DILocation(line: 357, column: 3, scope: !496)
!971 = !DILocation(line: 357, column: 16, scope: !496)
!972 = !DILocation(line: 358, column: 28, scope: !496)
!973 = !DILocation(line: 358, column: 3, scope: !496)
!974 = !DILocation(line: 358, column: 18, scope: !496)
!975 = !DILocation(line: 362, column: 7, scope: !976)
!976 = distinct !DILexicalBlock(scope: !496, file: !32, line: 362, column: 6)
!977 = !DILocation(line: 362, column: 20, scope: !976)
!978 = !DILocation(line: 362, column: 75, scope: !979)
!979 = !DILexicalBlockFile(scope: !976, file: !32, discriminator: 1)
!980 = !DILocation(line: 362, column: 72, scope: !979)
!981 = !DILocation(line: 362, column: 6, scope: !979)
!982 = !DILocation(line: 363, column: 3, scope: !976)
!983 = !DILocation(line: 364, column: 2, scope: !496)
!984 = !DILocation(line: 365, column: 1, scope: !496)
!985 = distinct !DISubprogram(name: "a2h", scope: !32, file: !32, line: 80, type: !986, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!986 = !DISubroutineType(types: !987)
!987 = !{!27, !46}
!988 = !DILocalVariable(name: "c", arg: 1, scope: !985, file: !32, line: 80, type: !46)
!989 = !DILocation(line: 80, column: 25, scope: !985)
!990 = !DILocation(line: 82, column: 6, scope: !991)
!991 = distinct !DILexicalBlock(scope: !985, file: !32, line: 82, column: 6)
!992 = !DILocation(line: 82, column: 8, scope: !991)
!993 = !DILocation(line: 82, column: 6, scope: !985)
!994 = !DILocation(line: 83, column: 5, scope: !991)
!995 = !DILocation(line: 83, column: 3, scope: !991)
!996 = !DILocation(line: 84, column: 6, scope: !985)
!997 = !DILocation(line: 84, column: 8, scope: !985)
!998 = !DILocation(line: 84, column: 4, scope: !985)
!999 = !DILocation(line: 85, column: 18, scope: !985)
!1000 = !DILocation(line: 85, column: 2, scope: !985)
!1001 = distinct !DISubprogram(name: "__arch_swab32", scope: !1002, file: !1002, line: 7, type: !489, isLocal: true, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!1002 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/asm/swab.h", directory: "/home/lichi/Desktop")
!1003 = !DILocalVariable(name: "val", arg: 1, scope: !1001, file: !1002, line: 7, type: !21)
!1004 = !DILocation(line: 7, column: 45, scope: !1001)
!1005 = !DILocation(line: 9, column: 42, scope: !1001)
!1006 = !DILocation(line: 9, column: 2, scope: !1001)
!1007 = !{i32 91326}
!1008 = !DILocation(line: 10, column: 9, scope: !1001)
!1009 = !DILocation(line: 10, column: 2, scope: !1001)
