; ModuleID = '/home/lichi/Desktop/genwqe/[task]misc--zpipe/[inter]misc--zpipe.o.i'
source_filename = "/home/lichi/Desktop/genwqe/[task]misc--zpipe/[inter]misc--zpipe.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type opaque

@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"zpipe usage: zpipe [-d] < source > dest\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"1.2.11\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"ret != Z_STREAM_ERROR\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"zpipe.c\00", align 1
@__PRETTY_FUNCTION__.def = private unnamed_addr constant [29 x i8] c"int def(FILE *, FILE *, int)\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"strm.avail_in == 0\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"ret == Z_STREAM_END\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"zpipe: \00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"error reading stdin\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"error writing stdout\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"invalid compression level\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"invalid or incomplete deflate data\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"zlib version mismatch!\0A\00", align 1
@__PRETTY_FUNCTION__.inf = private unnamed_addr constant [24 x i8] c"int inf(FILE *, FILE *)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !8 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !16), !dbg !17
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !18, metadata !16), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %6, metadata !20, metadata !16), !dbg !21
  %7 = load i32, i32* %4, align 4, !dbg !22
  %8 = icmp eq i32 %7, 1, !dbg !24
  br i1 %8, label %9, label %19, !dbg !25

; <label>:9:                                      ; preds = %2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !26
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !28
  %12 = call i32 @def(%struct._IO_FILE* %10, %struct._IO_FILE* %11, i32 -1), !dbg !29
  store i32 %12, i32* %6, align 4, !dbg !30
  %13 = load i32, i32* %6, align 4, !dbg !31
  %14 = icmp ne i32 %13, 0, !dbg !33
  br i1 %14, label %15, label %17, !dbg !34

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %6, align 4, !dbg !35
  call void @zerr(i32 %16), !dbg !36
  br label %17, !dbg !36

; <label>:17:                                     ; preds = %15, %9
  %18 = load i32, i32* %6, align 4, !dbg !37
  store i32 %18, i32* %3, align 4, !dbg !38
  br label %41, !dbg !38

; <label>:19:                                     ; preds = %2
  %20 = load i32, i32* %4, align 4, !dbg !39
  %21 = icmp eq i32 %20, 2, !dbg !41
  br i1 %21, label %22, label %38, !dbg !42

; <label>:22:                                     ; preds = %19
  %23 = load i8**, i8*** %5, align 8, !dbg !43
  %24 = getelementptr inbounds i8*, i8** %23, i64 1, !dbg !43
  %25 = load i8*, i8** %24, align 8, !dbg !43
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #6, !dbg !45
  %27 = icmp eq i32 %26, 0, !dbg !46
  br i1 %27, label %28, label %38, !dbg !47

; <label>:28:                                     ; preds = %22
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !48
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !50
  %31 = call i32 @inf(%struct._IO_FILE* %29, %struct._IO_FILE* %30), !dbg !51
  store i32 %31, i32* %6, align 4, !dbg !52
  %32 = load i32, i32* %6, align 4, !dbg !53
  %33 = icmp ne i32 %32, 0, !dbg !55
  br i1 %33, label %34, label %36, !dbg !56

; <label>:34:                                     ; preds = %28
  %35 = load i32, i32* %6, align 4, !dbg !57
  call void @zerr(i32 %35), !dbg !58
  br label %36, !dbg !58

; <label>:36:                                     ; preds = %34, %28
  %37 = load i32, i32* %6, align 4, !dbg !59
  store i32 %37, i32* %3, align 4, !dbg !60
  br label %41, !dbg !60

; <label>:38:                                     ; preds = %22, %19
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !61
  %40 = call i32 @fputs(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), %struct._IO_FILE* %39), !dbg !63
  store i32 1, i32* %3, align 4, !dbg !64
  br label %41, !dbg !64

; <label>:41:                                     ; preds = %38, %36, %17
  %42 = load i32, i32* %3, align 4, !dbg !65
  ret i32 %42, !dbg !65
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i32 @def(%struct._IO_FILE*, %struct._IO_FILE*, i32) #0 !dbg !66 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.z_stream_s, align 8
  %12 = alloca [16384 x i8], align 16
  %13 = alloca [16384 x i8], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !129, metadata !16), !dbg !130
  store %struct._IO_FILE* %1, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !131, metadata !16), !dbg !132
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !133, metadata !16), !dbg !134
  call void @llvm.dbg.declare(metadata i32* %8, metadata !135, metadata !16), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %9, metadata !137, metadata !16), !dbg !138
  call void @llvm.dbg.declare(metadata i32* %10, metadata !139, metadata !16), !dbg !141
  call void @llvm.dbg.declare(metadata %struct.z_stream_s* %11, metadata !142, metadata !16), !dbg !179
  call void @llvm.dbg.declare(metadata [16384 x i8]* %12, metadata !180, metadata !16), !dbg !184
  call void @llvm.dbg.declare(metadata [16384 x i8]* %13, metadata !185, metadata !16), !dbg !186
  %14 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %11, i32 0, i32 8, !dbg !187
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %14, align 8, !dbg !188
  %15 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %11, i32 0, i32 9, !dbg !189
  store void (i8*, i8*)* null, void (i8*, i8*)** %15, align 8, !dbg !190
  %16 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %11, i32 0, i32 10, !dbg !191
  store i8* null, i8** %16, align 8, !dbg !192
  %17 = load i32, i32* %7, align 4, !dbg !193
  %18 = call i32 @deflateInit_(%struct.z_stream_s* %11, i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 112), !dbg !193
  store i32 %18, i32* %8, align 4, !dbg !194
  %19 = load i32, i32* %8, align 4, !dbg !195
  %20 = icmp ne i32 %19, 0, !dbg !197
  br i1 %20, label %21, label %23, !dbg !198

; <label>:21:                                     ; preds = %3
  %22 = load i32, i32* %8, align 4, !dbg !199
  store i32 %22, i32* %4, align 4, !dbg !200
  br label %95, !dbg !200

; <label>:23:                                     ; preds = %3
  br label %24, !dbg !201, !llvm.loop !202

; <label>:24:                                     ; preds = %84, %23
  %25 = getelementptr inbounds [16384 x i8], [16384 x i8]* %12, i32 0, i32 0, !dbg !203
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !205
  %27 = call i64 @fread(i8* %25, i64 1, i64 16384, %struct._IO_FILE* %26), !dbg !206
  %28 = trunc i64 %27 to i32, !dbg !206
  %29 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %11, i32 0, i32 1, !dbg !207
  store i32 %28, i32* %29, align 8, !dbg !208
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !209
  %31 = call i32 @ferror(%struct._IO_FILE* %30) #7, !dbg !211
  %32 = icmp ne i32 %31, 0, !dbg !211
  br i1 %32, label %33, label %35, !dbg !212

; <label>:33:                                     ; preds = %24
  %34 = call i32 @deflateEnd(%struct.z_stream_s* %11), !dbg !213
  store i32 -1, i32* %4, align 4, !dbg !215
  br label %95, !dbg !215

; <label>:35:                                     ; preds = %24
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !216
  %37 = call i32 @feof(%struct._IO_FILE* %36) #7, !dbg !217
  %38 = icmp ne i32 %37, 0, !dbg !217
  %39 = select i1 %38, i32 4, i32 0, !dbg !217
  store i32 %39, i32* %9, align 4, !dbg !218
  %40 = getelementptr inbounds [16384 x i8], [16384 x i8]* %12, i32 0, i32 0, !dbg !219
  %41 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %11, i32 0, i32 0, !dbg !220
  store i8* %40, i8** %41, align 8, !dbg !221
  br label %42, !dbg !222, !llvm.loop !223

; <label>:42:                                     ; preds = %72, %35
  %43 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %11, i32 0, i32 4, !dbg !224
  store i32 16384, i32* %43, align 8, !dbg !226
  %44 = getelementptr inbounds [16384 x i8], [16384 x i8]* %13, i32 0, i32 0, !dbg !227
  %45 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %11, i32 0, i32 3, !dbg !228
  store i8* %44, i8** %45, align 8, !dbg !229
  %46 = load i32, i32* %9, align 4, !dbg !230
  %47 = call i32 @deflate(%struct.z_stream_s* %11, i32 %46), !dbg !231
  store i32 %47, i32* %8, align 4, !dbg !232
  %48 = load i32, i32* %8, align 4, !dbg !233
  %49 = icmp ne i32 %48, -2, !dbg !234
  br i1 %49, label %50, label %51, !dbg !235

; <label>:50:                                     ; preds = %42
  br label %53, !dbg !236

; <label>:51:                                     ; preds = %42
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.def, i32 0, i32 0)) #8, !dbg !238
  unreachable, !dbg !238
                                                  ; No predecessors!
  br label %53, !dbg !240

; <label>:53:                                     ; preds = %52, %50
  %54 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %11, i32 0, i32 4, !dbg !242
  %55 = load i32, i32* %54, align 8, !dbg !242
  %56 = sub i32 16384, %55, !dbg !243
  store i32 %56, i32* %10, align 4, !dbg !244
  %57 = getelementptr inbounds [16384 x i8], [16384 x i8]* %13, i32 0, i32 0, !dbg !245
  %58 = load i32, i32* %10, align 4, !dbg !247
  %59 = zext i32 %58 to i64, !dbg !247
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !248
  %61 = call i64 @fwrite(i8* %57, i64 1, i64 %59, %struct._IO_FILE* %60), !dbg !249
  %62 = load i32, i32* %10, align 4, !dbg !250
  %63 = zext i32 %62 to i64, !dbg !250
  %64 = icmp ne i64 %61, %63, !dbg !251
  br i1 %64, label %69, label %65, !dbg !252

; <label>:65:                                     ; preds = %53
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !253
  %67 = call i32 @ferror(%struct._IO_FILE* %66) #7, !dbg !255
  %68 = icmp ne i32 %67, 0, !dbg !255
  br i1 %68, label %69, label %71, !dbg !256

; <label>:69:                                     ; preds = %65, %53
  %70 = call i32 @deflateEnd(%struct.z_stream_s* %11), !dbg !257
  store i32 -1, i32* %4, align 4, !dbg !259
  br label %95, !dbg !259

; <label>:71:                                     ; preds = %65
  br label %72, !dbg !260

; <label>:72:                                     ; preds = %71
  %73 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %11, i32 0, i32 4, !dbg !261
  %74 = load i32, i32* %73, align 8, !dbg !261
  %75 = icmp eq i32 %74, 0, !dbg !263
  br i1 %75, label %42, label %76, !dbg !264, !llvm.loop !223

; <label>:76:                                     ; preds = %72
  %77 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %11, i32 0, i32 1, !dbg !265
  %78 = load i32, i32* %77, align 8, !dbg !265
  %79 = icmp eq i32 %78, 0, !dbg !266
  br i1 %79, label %80, label %81, !dbg !267

; <label>:80:                                     ; preds = %76
  br label %83, !dbg !268

; <label>:81:                                     ; preds = %76
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.def, i32 0, i32 0)) #8, !dbg !269
  unreachable, !dbg !269
                                                  ; No predecessors!
  br label %83, !dbg !271

; <label>:83:                                     ; preds = %82, %80
  br label %84, !dbg !273

; <label>:84:                                     ; preds = %83
  %85 = load i32, i32* %9, align 4, !dbg !274
  %86 = icmp ne i32 %85, 4, !dbg !276
  br i1 %86, label %24, label %87, !dbg !277, !llvm.loop !202

; <label>:87:                                     ; preds = %84
  %88 = load i32, i32* %8, align 4, !dbg !278
  %89 = icmp eq i32 %88, 1, !dbg !279
  br i1 %89, label %90, label %91, !dbg !280

; <label>:90:                                     ; preds = %87
  br label %93, !dbg !281

; <label>:91:                                     ; preds = %87
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.def, i32 0, i32 0)) #8, !dbg !282
  unreachable, !dbg !282
                                                  ; No predecessors!
  br label %93, !dbg !284

; <label>:93:                                     ; preds = %92, %90
  %94 = call i32 @deflateEnd(%struct.z_stream_s* %11), !dbg !286
  store i32 0, i32* %4, align 4, !dbg !287
  br label %95, !dbg !287

; <label>:95:                                     ; preds = %93, %69, %33, %21
  %96 = load i32, i32* %4, align 4, !dbg !288
  ret i32 %96, !dbg !288
}

; Function Attrs: nounwind uwtable
define internal void @zerr(i32) #0 !dbg !289 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !292, metadata !16), !dbg !293
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !294
  %4 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %3), !dbg !295
  %5 = load i32, i32* %2, align 4, !dbg !296
  switch i32 %5, label %33 [
    i32 -1, label %6
    i32 -2, label %21
    i32 -3, label %24
    i32 -4, label %27
    i32 -6, label %30
  ], !dbg !297

; <label>:6:                                      ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !298
  %8 = call i32 @ferror(%struct._IO_FILE* %7) #7, !dbg !301
  %9 = icmp ne i32 %8, 0, !dbg !301
  br i1 %9, label %10, label %13, !dbg !302

; <label>:10:                                     ; preds = %6
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !303
  %12 = call i32 @fputs(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %11), !dbg !304
  br label %13, !dbg !304

; <label>:13:                                     ; preds = %10, %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !305
  %15 = call i32 @ferror(%struct._IO_FILE* %14) #7, !dbg !307
  %16 = icmp ne i32 %15, 0, !dbg !307
  br i1 %16, label %17, label %20, !dbg !308

; <label>:17:                                     ; preds = %13
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !309
  %19 = call i32 @fputs(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %18), !dbg !310
  br label %20, !dbg !310

; <label>:20:                                     ; preds = %17, %13
  br label %33, !dbg !311

; <label>:21:                                     ; preds = %1
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !312
  %23 = call i32 @fputs(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), %struct._IO_FILE* %22), !dbg !313
  br label %33, !dbg !314

; <label>:24:                                     ; preds = %1
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !315
  %26 = call i32 @fputs(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %25), !dbg !316
  br label %33, !dbg !317

; <label>:27:                                     ; preds = %1
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !318
  %29 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %28), !dbg !319
  br label %33, !dbg !320

; <label>:30:                                     ; preds = %1
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !321
  %32 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), %struct._IO_FILE* %31), !dbg !322
  br label %33, !dbg !323

; <label>:33:                                     ; preds = %30, %1, %27, %24, %21, %20
  ret void, !dbg !324
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @inf(%struct._IO_FILE*, %struct._IO_FILE*) #0 !dbg !325 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_stream_s, align 8
  %9 = alloca [16384 x i8], align 16
  %10 = alloca [16384 x i8], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !328, metadata !16), !dbg !329
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !330, metadata !16), !dbg !331
  call void @llvm.dbg.declare(metadata i32* %6, metadata !332, metadata !16), !dbg !333
  call void @llvm.dbg.declare(metadata i32* %7, metadata !334, metadata !16), !dbg !335
  call void @llvm.dbg.declare(metadata %struct.z_stream_s* %8, metadata !336, metadata !16), !dbg !337
  call void @llvm.dbg.declare(metadata [16384 x i8]* %9, metadata !338, metadata !16), !dbg !339
  call void @llvm.dbg.declare(metadata [16384 x i8]* %10, metadata !340, metadata !16), !dbg !341
  %11 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %8, i32 0, i32 8, !dbg !342
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %11, align 8, !dbg !343
  %12 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %8, i32 0, i32 9, !dbg !344
  store void (i8*, i8*)* null, void (i8*, i8*)** %12, align 8, !dbg !345
  %13 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %8, i32 0, i32 10, !dbg !346
  store i8* null, i8** %13, align 8, !dbg !347
  %14 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %8, i32 0, i32 1, !dbg !348
  store i32 0, i32* %14, align 8, !dbg !349
  %15 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %8, i32 0, i32 0, !dbg !350
  store i8* null, i8** %15, align 8, !dbg !351
  %16 = call i32 @inflateInit_(%struct.z_stream_s* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 112), !dbg !352
  store i32 %16, i32* %6, align 4, !dbg !353
  %17 = load i32, i32* %6, align 4, !dbg !354
  %18 = icmp ne i32 %17, 0, !dbg !356
  br i1 %18, label %19, label %21, !dbg !357

; <label>:19:                                     ; preds = %2
  %20 = load i32, i32* %6, align 4, !dbg !358
  store i32 %20, i32* %3, align 4, !dbg !359
  br label %90, !dbg !359

; <label>:21:                                     ; preds = %2
  br label %22, !dbg !360, !llvm.loop !361

; <label>:22:                                     ; preds = %82, %21
  %23 = getelementptr inbounds [16384 x i8], [16384 x i8]* %9, i32 0, i32 0, !dbg !362
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !364
  %25 = call i64 @fread(i8* %23, i64 1, i64 16384, %struct._IO_FILE* %24), !dbg !365
  %26 = trunc i64 %25 to i32, !dbg !365
  %27 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %8, i32 0, i32 1, !dbg !366
  store i32 %26, i32* %27, align 8, !dbg !367
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !368
  %29 = call i32 @ferror(%struct._IO_FILE* %28) #7, !dbg !370
  %30 = icmp ne i32 %29, 0, !dbg !370
  br i1 %30, label %31, label %33, !dbg !371

; <label>:31:                                     ; preds = %22
  %32 = call i32 @inflateEnd(%struct.z_stream_s* %8), !dbg !372
  store i32 -1, i32* %3, align 4, !dbg !374
  br label %90, !dbg !374

; <label>:33:                                     ; preds = %22
  %34 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %8, i32 0, i32 1, !dbg !375
  %35 = load i32, i32* %34, align 8, !dbg !375
  %36 = icmp eq i32 %35, 0, !dbg !377
  br i1 %36, label %37, label %38, !dbg !378

; <label>:37:                                     ; preds = %33
  br label %85, !dbg !379

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds [16384 x i8], [16384 x i8]* %9, i32 0, i32 0, !dbg !380
  %40 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %8, i32 0, i32 0, !dbg !381
  store i8* %39, i8** %40, align 8, !dbg !382
  br label %41, !dbg !383, !llvm.loop !384

; <label>:41:                                     ; preds = %77, %38
  %42 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %8, i32 0, i32 4, !dbg !385
  store i32 16384, i32* %42, align 8, !dbg !387
  %43 = getelementptr inbounds [16384 x i8], [16384 x i8]* %10, i32 0, i32 0, !dbg !388
  %44 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %8, i32 0, i32 3, !dbg !389
  store i8* %43, i8** %44, align 8, !dbg !390
  %45 = call i32 @inflate(%struct.z_stream_s* %8, i32 0), !dbg !391
  store i32 %45, i32* %6, align 4, !dbg !392
  %46 = load i32, i32* %6, align 4, !dbg !393
  %47 = icmp ne i32 %46, -2, !dbg !394
  br i1 %47, label %48, label %49, !dbg !395

; <label>:48:                                     ; preds = %41
  br label %51, !dbg !396

; <label>:49:                                     ; preds = %41
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.inf, i32 0, i32 0)) #8, !dbg !398
  unreachable, !dbg !398
                                                  ; No predecessors!
  br label %51, !dbg !400

; <label>:51:                                     ; preds = %50, %48
  %52 = load i32, i32* %6, align 4, !dbg !402
  switch i32 %52, label %58 [
    i32 2, label %53
    i32 -3, label %55
    i32 -4, label %55
  ], !dbg !403

; <label>:53:                                     ; preds = %51
  %54 = call i32 @inflateEnd(%struct.z_stream_s* %8), !dbg !404
  store i32 -3, i32* %3, align 4, !dbg !406
  br label %90, !dbg !406

; <label>:55:                                     ; preds = %51, %51
  %56 = call i32 @inflateEnd(%struct.z_stream_s* %8), !dbg !407
  %57 = load i32, i32* %6, align 4, !dbg !408
  store i32 %57, i32* %3, align 4, !dbg !409
  br label %90, !dbg !409

; <label>:58:                                     ; preds = %51
  %59 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %8, i32 0, i32 4, !dbg !410
  %60 = load i32, i32* %59, align 8, !dbg !410
  %61 = sub i32 16384, %60, !dbg !411
  store i32 %61, i32* %7, align 4, !dbg !412
  %62 = getelementptr inbounds [16384 x i8], [16384 x i8]* %10, i32 0, i32 0, !dbg !413
  %63 = load i32, i32* %7, align 4, !dbg !415
  %64 = zext i32 %63 to i64, !dbg !415
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !416
  %66 = call i64 @fwrite(i8* %62, i64 1, i64 %64, %struct._IO_FILE* %65), !dbg !417
  %67 = load i32, i32* %7, align 4, !dbg !418
  %68 = zext i32 %67 to i64, !dbg !418
  %69 = icmp ne i64 %66, %68, !dbg !419
  br i1 %69, label %74, label %70, !dbg !420

; <label>:70:                                     ; preds = %58
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !421
  %72 = call i32 @ferror(%struct._IO_FILE* %71) #7, !dbg !423
  %73 = icmp ne i32 %72, 0, !dbg !423
  br i1 %73, label %74, label %76, !dbg !424

; <label>:74:                                     ; preds = %70, %58
  %75 = call i32 @inflateEnd(%struct.z_stream_s* %8), !dbg !425
  store i32 -1, i32* %3, align 4, !dbg !427
  br label %90, !dbg !427

; <label>:76:                                     ; preds = %70
  br label %77, !dbg !428

; <label>:77:                                     ; preds = %76
  %78 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %8, i32 0, i32 4, !dbg !429
  %79 = load i32, i32* %78, align 8, !dbg !429
  %80 = icmp eq i32 %79, 0, !dbg !431
  br i1 %80, label %41, label %81, !dbg !432, !llvm.loop !384

; <label>:81:                                     ; preds = %77
  br label %82, !dbg !433

; <label>:82:                                     ; preds = %81
  %83 = load i32, i32* %6, align 4, !dbg !434
  %84 = icmp ne i32 %83, 1, !dbg !436
  br i1 %84, label %22, label %85, !dbg !437, !llvm.loop !361

; <label>:85:                                     ; preds = %82, %37
  %86 = call i32 @inflateEnd(%struct.z_stream_s* %8), !dbg !438
  %87 = load i32, i32* %6, align 4, !dbg !439
  %88 = icmp eq i32 %87, 1, !dbg !440
  %89 = select i1 %88, i32 0, i32 -3, !dbg !439
  store i32 %89, i32* %3, align 4, !dbg !441
  br label %90, !dbg !441

; <label>:90:                                     ; preds = %85, %74, %55, %53, %31, %19
  %91 = load i32, i32* %3, align 4, !dbg !442
  ret i32 %91, !dbg !442
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

declare i32 @deflateInit_(%struct.z_stream_s*, i32, i8*, i32) #3

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #4

declare i32 @deflateEnd(%struct.z_stream_s*) #3

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #4

declare i32 @deflate(%struct.z_stream_s*, i32) #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #3

declare i32 @inflateInit_(%struct.z_stream_s*, i8*, i32) #3

declare i32 @inflateEnd(%struct.z_stream_s*) #3

declare i32 @inflate(%struct.z_stream_s*, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/home/lichi/Desktop/genwqe/[task]misc--zpipe/[inter]misc--zpipe.o.i", directory: "/home/lichi/Desktop")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 177, type: !10, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!9 = !DIFile(filename: "zpipe.c", directory: "/home/lichi/Desktop")
!10 = !DISubroutineType(types: !11)
!11 = !{!4, !4, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "argc", arg: 1, scope: !8, file: !9, line: 177, type: !4)
!16 = !DIExpression()
!17 = !DILocation(line: 177, column: 14, scope: !8)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !8, file: !9, line: 177, type: !12)
!19 = !DILocation(line: 177, column: 27, scope: !8)
!20 = !DILocalVariable(name: "ret", scope: !8, file: !9, line: 179, type: !4)
!21 = !DILocation(line: 179, column: 9, scope: !8)
!22 = !DILocation(line: 186, column: 9, scope: !23)
!23 = distinct !DILexicalBlock(scope: !8, file: !9, line: 186, column: 9)
!24 = !DILocation(line: 186, column: 14, scope: !23)
!25 = !DILocation(line: 186, column: 9, scope: !8)
!26 = !DILocation(line: 187, column: 18, scope: !27)
!27 = distinct !DILexicalBlock(scope: !23, file: !9, line: 186, column: 20)
!28 = !DILocation(line: 187, column: 25, scope: !27)
!29 = !DILocation(line: 187, column: 15, scope: !27)
!30 = !DILocation(line: 187, column: 13, scope: !27)
!31 = !DILocation(line: 188, column: 13, scope: !32)
!32 = distinct !DILexicalBlock(scope: !27, file: !9, line: 188, column: 13)
!33 = !DILocation(line: 188, column: 17, scope: !32)
!34 = !DILocation(line: 188, column: 13, scope: !27)
!35 = !DILocation(line: 189, column: 18, scope: !32)
!36 = !DILocation(line: 189, column: 13, scope: !32)
!37 = !DILocation(line: 190, column: 16, scope: !27)
!38 = !DILocation(line: 190, column: 9, scope: !27)
!39 = !DILocation(line: 194, column: 14, scope: !40)
!40 = distinct !DILexicalBlock(scope: !23, file: !9, line: 194, column: 14)
!41 = !DILocation(line: 194, column: 19, scope: !40)
!42 = !DILocation(line: 194, column: 24, scope: !40)
!43 = !DILocation(line: 194, column: 34, scope: !44)
!44 = !DILexicalBlockFile(scope: !40, file: !9, discriminator: 1)
!45 = !DILocation(line: 194, column: 27, scope: !44)
!46 = !DILocation(line: 194, column: 49, scope: !44)
!47 = !DILocation(line: 194, column: 14, scope: !44)
!48 = !DILocation(line: 195, column: 18, scope: !49)
!49 = distinct !DILexicalBlock(scope: !40, file: !9, line: 194, column: 55)
!50 = !DILocation(line: 195, column: 25, scope: !49)
!51 = !DILocation(line: 195, column: 15, scope: !49)
!52 = !DILocation(line: 195, column: 13, scope: !49)
!53 = !DILocation(line: 196, column: 13, scope: !54)
!54 = distinct !DILexicalBlock(scope: !49, file: !9, line: 196, column: 13)
!55 = !DILocation(line: 196, column: 17, scope: !54)
!56 = !DILocation(line: 196, column: 13, scope: !49)
!57 = !DILocation(line: 197, column: 18, scope: !54)
!58 = !DILocation(line: 197, column: 13, scope: !54)
!59 = !DILocation(line: 198, column: 16, scope: !49)
!60 = !DILocation(line: 198, column: 9, scope: !49)
!61 = !DILocation(line: 203, column: 59, scope: !62)
!62 = distinct !DILexicalBlock(scope: !40, file: !9, line: 202, column: 10)
!63 = !DILocation(line: 203, column: 9, scope: !62)
!64 = !DILocation(line: 204, column: 9, scope: !62)
!65 = !DILocation(line: 206, column: 1, scope: !8)
!66 = distinct !DISubprogram(name: "def", scope: !9, file: !9, line: 36, type: !67, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!67 = !DISubroutineType(types: !68)
!68 = !{!4, !69, !69, !4}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !71, line: 48, baseType: !72)
!71 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !73, line: 241, size: 1728, align: 64, elements: !74)
!73 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop")
!74 = !{!75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !95, !96, !97, !98, !102, !104, !106, !110, !113, !115, !117, !118, !119, !120, !124, !125}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !72, file: !73, line: 242, baseType: !4, size: 32, align: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !72, file: !73, line: 247, baseType: !13, size: 64, align: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !72, file: !73, line: 248, baseType: !13, size: 64, align: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !72, file: !73, line: 249, baseType: !13, size: 64, align: 64, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !72, file: !73, line: 250, baseType: !13, size: 64, align: 64, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !72, file: !73, line: 251, baseType: !13, size: 64, align: 64, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !72, file: !73, line: 252, baseType: !13, size: 64, align: 64, offset: 384)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !72, file: !73, line: 253, baseType: !13, size: 64, align: 64, offset: 448)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !72, file: !73, line: 254, baseType: !13, size: 64, align: 64, offset: 512)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !72, file: !73, line: 256, baseType: !13, size: 64, align: 64, offset: 576)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !72, file: !73, line: 257, baseType: !13, size: 64, align: 64, offset: 640)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !72, file: !73, line: 258, baseType: !13, size: 64, align: 64, offset: 704)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !72, file: !73, line: 260, baseType: !88, size: 64, align: 64, offset: 768)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !73, line: 156, size: 192, align: 64, elements: !90)
!90 = !{!91, !92, !94}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !89, file: !73, line: 157, baseType: !88, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !89, file: !73, line: 158, baseType: !93, size: 64, align: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !89, file: !73, line: 162, baseType: !4, size: 32, align: 32, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !72, file: !73, line: 262, baseType: !93, size: 64, align: 64, offset: 832)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !72, file: !73, line: 264, baseType: !4, size: 32, align: 32, offset: 896)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !72, file: !73, line: 268, baseType: !4, size: 32, align: 32, offset: 928)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !72, file: !73, line: 270, baseType: !99, size: 64, align: 64, offset: 960)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !100, line: 131, baseType: !101)
!100 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop")
!101 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !72, file: !73, line: 274, baseType: !103, size: 16, align: 16, offset: 1024)
!103 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !72, file: !73, line: 275, baseType: !105, size: 8, align: 8, offset: 1040)
!105 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !72, file: !73, line: 276, baseType: !107, size: 8, align: 8, offset: 1048)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, align: 8, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 1)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !72, file: !73, line: 280, baseType: !111, size: 64, align: 64, offset: 1088)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !73, line: 150, baseType: null)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !72, file: !73, line: 289, baseType: !114, size: 64, align: 64, offset: 1152)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !100, line: 132, baseType: !101)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !72, file: !73, line: 297, baseType: !116, size: 64, align: 64, offset: 1216)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !72, file: !73, line: 298, baseType: !116, size: 64, align: 64, offset: 1280)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !72, file: !73, line: 299, baseType: !116, size: 64, align: 64, offset: 1344)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !72, file: !73, line: 300, baseType: !116, size: 64, align: 64, offset: 1408)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !72, file: !73, line: 302, baseType: !121, size: 64, align: 64, offset: 1472)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !122, line: 216, baseType: !123)
!122 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop")
!123 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !72, file: !73, line: 303, baseType: !4, size: 32, align: 32, offset: 1536)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !72, file: !73, line: 305, baseType: !126, size: 160, align: 8, offset: 1568)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, align: 8, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 20)
!129 = !DILocalVariable(name: "source", arg: 1, scope: !66, file: !9, line: 36, type: !69)
!130 = !DILocation(line: 36, column: 22, scope: !66)
!131 = !DILocalVariable(name: "dest", arg: 2, scope: !66, file: !9, line: 36, type: !69)
!132 = !DILocation(line: 36, column: 36, scope: !66)
!133 = !DILocalVariable(name: "level", arg: 3, scope: !66, file: !9, line: 36, type: !4)
!134 = !DILocation(line: 36, column: 46, scope: !66)
!135 = !DILocalVariable(name: "ret", scope: !66, file: !9, line: 38, type: !4)
!136 = !DILocation(line: 38, column: 9, scope: !66)
!137 = !DILocalVariable(name: "flush", scope: !66, file: !9, line: 38, type: !4)
!138 = !DILocation(line: 38, column: 14, scope: !66)
!139 = !DILocalVariable(name: "have", scope: !66, file: !9, line: 39, type: !140)
!140 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!141 = !DILocation(line: 39, column: 14, scope: !66)
!142 = !DILocalVariable(name: "strm", scope: !66, file: !9, line: 40, type: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !144, line: 106, baseType: !145)
!144 = !DIFile(filename: "/usr/local/include/zlib.h", directory: "/home/lichi/Desktop")
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !144, line: 86, size: 896, align: 64, elements: !146)
!146 = !{!147, !153, !155, !157, !158, !159, !160, !161, !164, !170, !175, !176, !177, !178}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !145, file: !144, line: 87, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bytef", file: !150, line: 400, baseType: !151)
!150 = !DIFile(filename: "/usr/local/include/zconf.h", directory: "/home/lichi/Desktop")
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !150, line: 391, baseType: !152)
!152 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !145, file: !144, line: 88, baseType: !154, size: 32, align: 32, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "uInt", file: !150, line: 393, baseType: !140)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !145, file: !144, line: 89, baseType: !156, size: 64, align: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !150, line: 394, baseType: !123)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !145, file: !144, line: 91, baseType: !148, size: 64, align: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !145, file: !144, line: 92, baseType: !154, size: 32, align: 32, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !145, file: !144, line: 93, baseType: !156, size: 64, align: 64, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !145, file: !144, line: 95, baseType: !13, size: 64, align: 64, offset: 384)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !145, file: !144, line: 96, baseType: !162, size: 64, align: 64, offset: 448)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !144, line: 84, flags: DIFlagFwdDecl)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "zalloc", scope: !145, file: !144, line: 98, baseType: !165, size: 64, align: 64, offset: 512)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_func", file: !144, line: 81, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!169, !169, !154, !154}
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidpf", file: !150, line: 409, baseType: !116)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "zfree", scope: !145, file: !144, line: 99, baseType: !171, size: 64, align: 64, offset: 576)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "free_func", file: !144, line: 82, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{null, !169, !169}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !145, file: !144, line: 100, baseType: !169, size: 64, align: 64, offset: 640)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !145, file: !144, line: 102, baseType: !4, size: 32, align: 32, offset: 704)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !145, file: !144, line: 104, baseType: !156, size: 64, align: 64, offset: 768)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !145, file: !144, line: 105, baseType: !156, size: 64, align: 64, offset: 832)
!179 = !DILocation(line: 40, column: 14, scope: !66)
!180 = !DILocalVariable(name: "in", scope: !66, file: !9, line: 41, type: !181)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 131072, align: 8, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 16384)
!184 = !DILocation(line: 41, column: 19, scope: !66)
!185 = !DILocalVariable(name: "out", scope: !66, file: !9, line: 42, type: !181)
!186 = !DILocation(line: 42, column: 19, scope: !66)
!187 = !DILocation(line: 45, column: 10, scope: !66)
!188 = !DILocation(line: 45, column: 17, scope: !66)
!189 = !DILocation(line: 46, column: 10, scope: !66)
!190 = !DILocation(line: 46, column: 16, scope: !66)
!191 = !DILocation(line: 47, column: 10, scope: !66)
!192 = !DILocation(line: 47, column: 17, scope: !66)
!193 = !DILocation(line: 48, column: 10, scope: !66)
!194 = !DILocation(line: 48, column: 9, scope: !66)
!195 = !DILocation(line: 49, column: 9, scope: !196)
!196 = distinct !DILexicalBlock(scope: !66, file: !9, line: 49, column: 9)
!197 = !DILocation(line: 49, column: 13, scope: !196)
!198 = !DILocation(line: 49, column: 9, scope: !66)
!199 = !DILocation(line: 50, column: 16, scope: !196)
!200 = !DILocation(line: 50, column: 9, scope: !196)
!201 = !DILocation(line: 53, column: 5, scope: !66)
!202 = distinct !{!202, !201}
!203 = !DILocation(line: 54, column: 31, scope: !204)
!204 = distinct !DILexicalBlock(scope: !66, file: !9, line: 53, column: 8)
!205 = !DILocation(line: 54, column: 45, scope: !204)
!206 = !DILocation(line: 54, column: 25, scope: !204)
!207 = !DILocation(line: 54, column: 14, scope: !204)
!208 = !DILocation(line: 54, column: 23, scope: !204)
!209 = !DILocation(line: 55, column: 20, scope: !210)
!210 = distinct !DILexicalBlock(scope: !204, file: !9, line: 55, column: 13)
!211 = !DILocation(line: 55, column: 13, scope: !210)
!212 = !DILocation(line: 55, column: 13, scope: !204)
!213 = !DILocation(line: 56, column: 19, scope: !214)
!214 = distinct !DILexicalBlock(scope: !210, file: !9, line: 55, column: 29)
!215 = !DILocation(line: 57, column: 13, scope: !214)
!216 = !DILocation(line: 59, column: 22, scope: !204)
!217 = !DILocation(line: 59, column: 17, scope: !204)
!218 = !DILocation(line: 59, column: 15, scope: !204)
!219 = !DILocation(line: 60, column: 24, scope: !204)
!220 = !DILocation(line: 60, column: 14, scope: !204)
!221 = !DILocation(line: 60, column: 22, scope: !204)
!222 = !DILocation(line: 64, column: 9, scope: !204)
!223 = distinct !{!223, !222}
!224 = !DILocation(line: 65, column: 18, scope: !225)
!225 = distinct !DILexicalBlock(scope: !204, file: !9, line: 64, column: 12)
!226 = !DILocation(line: 65, column: 28, scope: !225)
!227 = !DILocation(line: 66, column: 29, scope: !225)
!228 = !DILocation(line: 66, column: 18, scope: !225)
!229 = !DILocation(line: 66, column: 27, scope: !225)
!230 = !DILocation(line: 67, column: 34, scope: !225)
!231 = !DILocation(line: 67, column: 19, scope: !225)
!232 = !DILocation(line: 67, column: 17, scope: !225)
!233 = !DILocation(line: 68, column: 12, scope: !225)
!234 = !DILocation(line: 68, column: 16, scope: !225)
!235 = !DILocation(line: 68, column: 13, scope: !225)
!236 = !DILocation(line: 68, column: 13, scope: !237)
!237 = !DILexicalBlockFile(scope: !225, file: !9, discriminator: 1)
!238 = !DILocation(line: 68, column: 33, scope: !239)
!239 = !DILexicalBlockFile(scope: !225, file: !9, discriminator: 2)
!240 = !DILocation(line: 68, column: 13, scope: !241)
!241 = !DILexicalBlockFile(scope: !225, file: !9, discriminator: 3)
!242 = !DILocation(line: 69, column: 33, scope: !225)
!243 = !DILocation(line: 69, column: 26, scope: !225)
!244 = !DILocation(line: 69, column: 18, scope: !225)
!245 = !DILocation(line: 70, column: 24, scope: !246)
!246 = distinct !DILexicalBlock(scope: !225, file: !9, line: 70, column: 17)
!247 = !DILocation(line: 70, column: 32, scope: !246)
!248 = !DILocation(line: 70, column: 38, scope: !246)
!249 = !DILocation(line: 70, column: 17, scope: !246)
!250 = !DILocation(line: 70, column: 47, scope: !246)
!251 = !DILocation(line: 70, column: 44, scope: !246)
!252 = !DILocation(line: 70, column: 52, scope: !246)
!253 = !DILocation(line: 70, column: 62, scope: !254)
!254 = !DILexicalBlockFile(scope: !246, file: !9, discriminator: 1)
!255 = !DILocation(line: 70, column: 55, scope: !254)
!256 = !DILocation(line: 70, column: 17, scope: !254)
!257 = !DILocation(line: 71, column: 23, scope: !258)
!258 = distinct !DILexicalBlock(scope: !246, file: !9, line: 70, column: 69)
!259 = !DILocation(line: 72, column: 17, scope: !258)
!260 = !DILocation(line: 74, column: 9, scope: !225)
!261 = !DILocation(line: 74, column: 23, scope: !262)
!262 = !DILexicalBlockFile(scope: !204, file: !9, discriminator: 1)
!263 = !DILocation(line: 74, column: 33, scope: !262)
!264 = !DILocation(line: 74, column: 9, scope: !262)
!265 = !DILocation(line: 75, column: 13, scope: !204)
!266 = !DILocation(line: 75, column: 22, scope: !204)
!267 = !DILocation(line: 75, column: 9, scope: !204)
!268 = !DILocation(line: 75, column: 9, scope: !262)
!269 = !DILocation(line: 75, column: 25, scope: !270)
!270 = !DILexicalBlockFile(scope: !204, file: !9, discriminator: 2)
!271 = !DILocation(line: 75, column: 9, scope: !272)
!272 = !DILexicalBlockFile(scope: !204, file: !9, discriminator: 3)
!273 = !DILocation(line: 78, column: 5, scope: !204)
!274 = !DILocation(line: 78, column: 14, scope: !275)
!275 = !DILexicalBlockFile(scope: !66, file: !9, discriminator: 1)
!276 = !DILocation(line: 78, column: 20, scope: !275)
!277 = !DILocation(line: 78, column: 5, scope: !275)
!278 = !DILocation(line: 79, column: 4, scope: !66)
!279 = !DILocation(line: 79, column: 8, scope: !66)
!280 = !DILocation(line: 79, column: 5, scope: !66)
!281 = !DILocation(line: 79, column: 5, scope: !275)
!282 = !DILocation(line: 79, column: 22, scope: !283)
!283 = !DILexicalBlockFile(scope: !66, file: !9, discriminator: 2)
!284 = !DILocation(line: 79, column: 5, scope: !285)
!285 = !DILexicalBlockFile(scope: !66, file: !9, discriminator: 3)
!286 = !DILocation(line: 82, column: 11, scope: !66)
!287 = !DILocation(line: 83, column: 5, scope: !66)
!288 = !DILocation(line: 84, column: 1, scope: !66)
!289 = distinct !DISubprogram(name: "zerr", scope: !9, file: !9, line: 152, type: !290, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !4}
!292 = !DILocalVariable(name: "ret", arg: 1, scope: !289, file: !9, line: 152, type: !4)
!293 = !DILocation(line: 152, column: 22, scope: !289)
!294 = !DILocation(line: 154, column: 21, scope: !289)
!295 = !DILocation(line: 154, column: 5, scope: !289)
!296 = !DILocation(line: 155, column: 13, scope: !289)
!297 = !DILocation(line: 155, column: 5, scope: !289)
!298 = !DILocation(line: 157, column: 19, scope: !299)
!299 = distinct !DILexicalBlock(scope: !300, file: !9, line: 157, column: 13)
!300 = distinct !DILexicalBlock(scope: !289, file: !9, line: 155, column: 18)
!301 = !DILocation(line: 157, column: 13, scope: !299)
!302 = !DILocation(line: 157, column: 13, scope: !300)
!303 = !DILocation(line: 158, column: 43, scope: !299)
!304 = !DILocation(line: 158, column: 13, scope: !299)
!305 = !DILocation(line: 159, column: 19, scope: !306)
!306 = distinct !DILexicalBlock(scope: !300, file: !9, line: 159, column: 13)
!307 = !DILocation(line: 159, column: 13, scope: !306)
!308 = !DILocation(line: 159, column: 13, scope: !300)
!309 = !DILocation(line: 160, column: 44, scope: !306)
!310 = !DILocation(line: 160, column: 13, scope: !306)
!311 = !DILocation(line: 161, column: 9, scope: !300)
!312 = !DILocation(line: 163, column: 45, scope: !300)
!313 = !DILocation(line: 163, column: 9, scope: !300)
!314 = !DILocation(line: 164, column: 9, scope: !300)
!315 = !DILocation(line: 166, column: 54, scope: !300)
!316 = !DILocation(line: 166, column: 9, scope: !300)
!317 = !DILocation(line: 167, column: 9, scope: !300)
!318 = !DILocation(line: 169, column: 33, scope: !300)
!319 = !DILocation(line: 169, column: 9, scope: !300)
!320 = !DILocation(line: 170, column: 9, scope: !300)
!321 = !DILocation(line: 172, column: 42, scope: !300)
!322 = !DILocation(line: 172, column: 9, scope: !300)
!323 = !DILocation(line: 173, column: 5, scope: !300)
!324 = !DILocation(line: 174, column: 1, scope: !289)
!325 = distinct !DISubprogram(name: "inf", scope: !9, file: !9, line: 92, type: !326, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!326 = !DISubroutineType(types: !327)
!327 = !{!4, !69, !69}
!328 = !DILocalVariable(name: "source", arg: 1, scope: !325, file: !9, line: 92, type: !69)
!329 = !DILocation(line: 92, column: 22, scope: !325)
!330 = !DILocalVariable(name: "dest", arg: 2, scope: !325, file: !9, line: 92, type: !69)
!331 = !DILocation(line: 92, column: 36, scope: !325)
!332 = !DILocalVariable(name: "ret", scope: !325, file: !9, line: 94, type: !4)
!333 = !DILocation(line: 94, column: 9, scope: !325)
!334 = !DILocalVariable(name: "have", scope: !325, file: !9, line: 95, type: !140)
!335 = !DILocation(line: 95, column: 14, scope: !325)
!336 = !DILocalVariable(name: "strm", scope: !325, file: !9, line: 96, type: !143)
!337 = !DILocation(line: 96, column: 14, scope: !325)
!338 = !DILocalVariable(name: "in", scope: !325, file: !9, line: 97, type: !181)
!339 = !DILocation(line: 97, column: 19, scope: !325)
!340 = !DILocalVariable(name: "out", scope: !325, file: !9, line: 98, type: !181)
!341 = !DILocation(line: 98, column: 19, scope: !325)
!342 = !DILocation(line: 101, column: 10, scope: !325)
!343 = !DILocation(line: 101, column: 17, scope: !325)
!344 = !DILocation(line: 102, column: 10, scope: !325)
!345 = !DILocation(line: 102, column: 16, scope: !325)
!346 = !DILocation(line: 103, column: 10, scope: !325)
!347 = !DILocation(line: 103, column: 17, scope: !325)
!348 = !DILocation(line: 104, column: 10, scope: !325)
!349 = !DILocation(line: 104, column: 19, scope: !325)
!350 = !DILocation(line: 105, column: 10, scope: !325)
!351 = !DILocation(line: 105, column: 18, scope: !325)
!352 = !DILocation(line: 106, column: 10, scope: !325)
!353 = !DILocation(line: 106, column: 9, scope: !325)
!354 = !DILocation(line: 107, column: 9, scope: !355)
!355 = distinct !DILexicalBlock(scope: !325, file: !9, line: 107, column: 9)
!356 = !DILocation(line: 107, column: 13, scope: !355)
!357 = !DILocation(line: 107, column: 9, scope: !325)
!358 = !DILocation(line: 108, column: 16, scope: !355)
!359 = !DILocation(line: 108, column: 9, scope: !355)
!360 = !DILocation(line: 111, column: 5, scope: !325)
!361 = distinct !{!361, !360}
!362 = !DILocation(line: 112, column: 31, scope: !363)
!363 = distinct !DILexicalBlock(scope: !325, file: !9, line: 111, column: 8)
!364 = !DILocation(line: 112, column: 45, scope: !363)
!365 = !DILocation(line: 112, column: 25, scope: !363)
!366 = !DILocation(line: 112, column: 14, scope: !363)
!367 = !DILocation(line: 112, column: 23, scope: !363)
!368 = !DILocation(line: 113, column: 20, scope: !369)
!369 = distinct !DILexicalBlock(scope: !363, file: !9, line: 113, column: 13)
!370 = !DILocation(line: 113, column: 13, scope: !369)
!371 = !DILocation(line: 113, column: 13, scope: !363)
!372 = !DILocation(line: 114, column: 19, scope: !373)
!373 = distinct !DILexicalBlock(scope: !369, file: !9, line: 113, column: 29)
!374 = !DILocation(line: 115, column: 13, scope: !373)
!375 = !DILocation(line: 117, column: 18, scope: !376)
!376 = distinct !DILexicalBlock(scope: !363, file: !9, line: 117, column: 13)
!377 = !DILocation(line: 117, column: 27, scope: !376)
!378 = !DILocation(line: 117, column: 13, scope: !363)
!379 = !DILocation(line: 118, column: 13, scope: !376)
!380 = !DILocation(line: 119, column: 24, scope: !363)
!381 = !DILocation(line: 119, column: 14, scope: !363)
!382 = !DILocation(line: 119, column: 22, scope: !363)
!383 = !DILocation(line: 122, column: 9, scope: !363)
!384 = distinct !{!384, !383}
!385 = !DILocation(line: 123, column: 18, scope: !386)
!386 = distinct !DILexicalBlock(scope: !363, file: !9, line: 122, column: 12)
!387 = !DILocation(line: 123, column: 28, scope: !386)
!388 = !DILocation(line: 124, column: 29, scope: !386)
!389 = !DILocation(line: 124, column: 18, scope: !386)
!390 = !DILocation(line: 124, column: 27, scope: !386)
!391 = !DILocation(line: 125, column: 19, scope: !386)
!392 = !DILocation(line: 125, column: 17, scope: !386)
!393 = !DILocation(line: 126, column: 12, scope: !386)
!394 = !DILocation(line: 126, column: 16, scope: !386)
!395 = !DILocation(line: 126, column: 13, scope: !386)
!396 = !DILocation(line: 126, column: 13, scope: !397)
!397 = !DILexicalBlockFile(scope: !386, file: !9, discriminator: 1)
!398 = !DILocation(line: 126, column: 33, scope: !399)
!399 = !DILexicalBlockFile(scope: !386, file: !9, discriminator: 2)
!400 = !DILocation(line: 126, column: 13, scope: !401)
!401 = !DILexicalBlockFile(scope: !386, file: !9, discriminator: 3)
!402 = !DILocation(line: 127, column: 21, scope: !386)
!403 = !DILocation(line: 127, column: 13, scope: !386)
!404 = !DILocation(line: 129, column: 23, scope: !405)
!405 = distinct !DILexicalBlock(scope: !386, file: !9, line: 127, column: 26)
!406 = !DILocation(line: 130, column: 17, scope: !405)
!407 = !DILocation(line: 133, column: 23, scope: !405)
!408 = !DILocation(line: 134, column: 24, scope: !405)
!409 = !DILocation(line: 134, column: 17, scope: !405)
!410 = !DILocation(line: 136, column: 33, scope: !386)
!411 = !DILocation(line: 136, column: 26, scope: !386)
!412 = !DILocation(line: 136, column: 18, scope: !386)
!413 = !DILocation(line: 137, column: 24, scope: !414)
!414 = distinct !DILexicalBlock(scope: !386, file: !9, line: 137, column: 17)
!415 = !DILocation(line: 137, column: 32, scope: !414)
!416 = !DILocation(line: 137, column: 38, scope: !414)
!417 = !DILocation(line: 137, column: 17, scope: !414)
!418 = !DILocation(line: 137, column: 47, scope: !414)
!419 = !DILocation(line: 137, column: 44, scope: !414)
!420 = !DILocation(line: 137, column: 52, scope: !414)
!421 = !DILocation(line: 137, column: 62, scope: !422)
!422 = !DILexicalBlockFile(scope: !414, file: !9, discriminator: 1)
!423 = !DILocation(line: 137, column: 55, scope: !422)
!424 = !DILocation(line: 137, column: 17, scope: !422)
!425 = !DILocation(line: 138, column: 23, scope: !426)
!426 = distinct !DILexicalBlock(scope: !414, file: !9, line: 137, column: 69)
!427 = !DILocation(line: 139, column: 17, scope: !426)
!428 = !DILocation(line: 141, column: 9, scope: !386)
!429 = !DILocation(line: 141, column: 23, scope: !430)
!430 = !DILexicalBlockFile(scope: !363, file: !9, discriminator: 1)
!431 = !DILocation(line: 141, column: 33, scope: !430)
!432 = !DILocation(line: 141, column: 9, scope: !430)
!433 = !DILocation(line: 144, column: 5, scope: !363)
!434 = !DILocation(line: 144, column: 14, scope: !435)
!435 = !DILexicalBlockFile(scope: !325, file: !9, discriminator: 1)
!436 = !DILocation(line: 144, column: 18, scope: !435)
!437 = !DILocation(line: 144, column: 5, scope: !435)
!438 = !DILocation(line: 147, column: 11, scope: !325)
!439 = !DILocation(line: 148, column: 12, scope: !325)
!440 = !DILocation(line: 148, column: 16, scope: !325)
!441 = !DILocation(line: 148, column: 5, scope: !325)
!442 = !DILocation(line: 149, column: 1, scope: !325)
