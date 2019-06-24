; ModuleID = './utilMem.o.i'
source_filename = "./utilMem.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"Unrecoverable memory allocation failure\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Unrecoverable memory allocation failure at %s:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"Unrecoverable memory allocation failure at %s:%d.  Bug number: %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i8* @UtilSafeMalloc0(i64) #0 !dbg !13 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !17, metadata !18), !dbg !19
  call void @llvm.dbg.declare(metadata i8** %3, metadata !20, metadata !18), !dbg !21
  %4 = load i64, i64* %2, align 8, !dbg !22
  %5 = call noalias i8* @malloc(i64 %4) #7, !dbg !23
  store i8* %5, i8** %3, align 8, !dbg !21
  %6 = load i8*, i8** %3, align 8, !dbg !24
  %7 = icmp eq i8* %6, null, !dbg !26
  br i1 %7, label %8, label %12, !dbg !27

; <label>:8:                                      ; preds = %1
  %9 = load i64, i64* %2, align 8, !dbg !28
  %10 = icmp ne i64 %9, 0, !dbg !30
  br i1 %10, label %11, label %12, !dbg !31

; <label>:11:                                     ; preds = %8
  call void @UtilAllocationFailure0() #8, !dbg !32
  unreachable, !dbg !32

; <label>:12:                                     ; preds = %8, %1
  %13 = load i8*, i8** %3, align 8, !dbg !34
  ret i8* %13, !dbg !35
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: noreturn nounwind uwtable
define internal void @UtilAllocationFailure0() #3 !dbg !36 {
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0)) #8, !dbg !39
  unreachable, !dbg !39
                                                  ; No predecessors!
  ret void, !dbg !40
}

; Function Attrs: nounwind uwtable
define i8* @UtilSafeMalloc1(i64, i32, i8*, i32) #0 !dbg !41 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !48, metadata !18), !dbg !49
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !50, metadata !18), !dbg !51
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !52, metadata !18), !dbg !53
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !54, metadata !18), !dbg !55
  call void @llvm.dbg.declare(metadata i8** %9, metadata !56, metadata !18), !dbg !57
  %10 = load i64, i64* %5, align 8, !dbg !58
  %11 = call noalias i8* @malloc(i64 %10) #7, !dbg !59
  store i8* %11, i8** %9, align 8, !dbg !57
  %12 = load i8*, i8** %9, align 8, !dbg !60
  %13 = icmp eq i8* %12, null, !dbg !62
  br i1 %13, label %14, label %21, !dbg !63

; <label>:14:                                     ; preds = %4
  %15 = load i64, i64* %5, align 8, !dbg !64
  %16 = icmp ne i64 %15, 0, !dbg !66
  br i1 %16, label %17, label %21, !dbg !67

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %6, align 4, !dbg !68
  %19 = load i8*, i8** %7, align 8, !dbg !70
  %20 = load i32, i32* %8, align 4, !dbg !71
  call void @UtilAllocationFailure1(i32 %18, i8* %19, i32 %20) #8, !dbg !72
  unreachable, !dbg !72

; <label>:21:                                     ; preds = %14, %4
  %22 = load i8*, i8** %9, align 8, !dbg !73
  ret i8* %22, !dbg !74
}

; Function Attrs: noreturn nounwind uwtable
define internal void @UtilAllocationFailure1(i32, i8*, i32) #3 !dbg !75 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !78, metadata !18), !dbg !79
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !80, metadata !18), !dbg !81
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !82, metadata !18), !dbg !83
  %7 = load i32, i32* %4, align 4, !dbg !84
  %8 = icmp eq i32 %7, -1, !dbg !86
  br i1 %8, label %9, label %12, !dbg !87

; <label>:9:                                      ; preds = %3
  %10 = load i8*, i8** %5, align 8, !dbg !88
  %11 = load i32, i32* %6, align 4, !dbg !90
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i8* %10, i32 %11) #8, !dbg !91
  unreachable, !dbg !91

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %5, align 8, !dbg !92
  %14 = load i32, i32* %6, align 4, !dbg !94
  %15 = load i32, i32* %4, align 4, !dbg !95
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i32 0, i32 0), i8* %13, i32 %14, i32 %15) #8, !dbg !96
  unreachable, !dbg !96
                                                  ; No predecessors!
  ret void, !dbg !97
}

; Function Attrs: nounwind uwtable
define i8* @UtilSafeRealloc0(i8*, i64) #0 !dbg !98 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !101, metadata !18), !dbg !102
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !103, metadata !18), !dbg !104
  call void @llvm.dbg.declare(metadata i8** %5, metadata !105, metadata !18), !dbg !106
  %6 = load i8*, i8** %3, align 8, !dbg !107
  %7 = load i64, i64* %4, align 8, !dbg !108
  %8 = call i8* @realloc(i8* %6, i64 %7) #7, !dbg !109
  store i8* %8, i8** %5, align 8, !dbg !106
  %9 = load i8*, i8** %5, align 8, !dbg !110
  %10 = icmp eq i8* %9, null, !dbg !112
  br i1 %10, label %11, label %15, !dbg !113

; <label>:11:                                     ; preds = %2
  %12 = load i64, i64* %4, align 8, !dbg !114
  %13 = icmp ne i64 %12, 0, !dbg !116
  br i1 %13, label %14, label %15, !dbg !117

; <label>:14:                                     ; preds = %11
  call void @UtilAllocationFailure0() #8, !dbg !118
  unreachable, !dbg !118

; <label>:15:                                     ; preds = %11, %2
  %16 = load i8*, i8** %5, align 8, !dbg !120
  ret i8* %16, !dbg !121
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind uwtable
define i8* @UtilSafeRealloc1(i8*, i64, i32, i8*, i32) #0 !dbg !122 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !125, metadata !18), !dbg !126
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !127, metadata !18), !dbg !128
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !129, metadata !18), !dbg !130
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !131, metadata !18), !dbg !132
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !133, metadata !18), !dbg !134
  call void @llvm.dbg.declare(metadata i8** %11, metadata !135, metadata !18), !dbg !136
  %12 = load i8*, i8** %6, align 8, !dbg !137
  %13 = load i64, i64* %7, align 8, !dbg !138
  %14 = call i8* @realloc(i8* %12, i64 %13) #7, !dbg !139
  store i8* %14, i8** %11, align 8, !dbg !136
  %15 = load i8*, i8** %11, align 8, !dbg !140
  %16 = icmp eq i8* %15, null, !dbg !142
  br i1 %16, label %17, label %24, !dbg !143

; <label>:17:                                     ; preds = %5
  %18 = load i64, i64* %7, align 8, !dbg !144
  %19 = icmp ne i64 %18, 0, !dbg !146
  br i1 %19, label %20, label %24, !dbg !147

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %8, align 4, !dbg !148
  %22 = load i8*, i8** %9, align 8, !dbg !150
  %23 = load i32, i32* %10, align 4, !dbg !151
  call void @UtilAllocationFailure1(i32 %21, i8* %22, i32 %23) #8, !dbg !152
  unreachable, !dbg !152

; <label>:24:                                     ; preds = %17, %5
  %25 = load i8*, i8** %11, align 8, !dbg !153
  ret i8* %25, !dbg !154
}

; Function Attrs: nounwind uwtable
define i8* @UtilSafeCalloc0(i64, i64) #0 !dbg !155 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !158, metadata !18), !dbg !159
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !160, metadata !18), !dbg !161
  call void @llvm.dbg.declare(metadata i8** %5, metadata !162, metadata !18), !dbg !163
  %6 = load i64, i64* %3, align 8, !dbg !164
  %7 = load i64, i64* %4, align 8, !dbg !165
  %8 = call noalias i8* @calloc(i64 %6, i64 %7) #7, !dbg !166
  store i8* %8, i8** %5, align 8, !dbg !163
  %9 = load i8*, i8** %5, align 8, !dbg !167
  %10 = icmp eq i8* %9, null, !dbg !169
  br i1 %10, label %11, label %18, !dbg !170

; <label>:11:                                     ; preds = %2
  %12 = load i64, i64* %3, align 8, !dbg !171
  %13 = icmp ne i64 %12, 0, !dbg !173
  br i1 %13, label %14, label %18, !dbg !174

; <label>:14:                                     ; preds = %11
  %15 = load i64, i64* %4, align 8, !dbg !175
  %16 = icmp ne i64 %15, 0, !dbg !177
  br i1 %16, label %17, label %18, !dbg !178

; <label>:17:                                     ; preds = %14
  call void @UtilAllocationFailure0() #8, !dbg !179
  unreachable, !dbg !179

; <label>:18:                                     ; preds = %14, %11, %2
  %19 = load i8*, i8** %5, align 8, !dbg !181
  ret i8* %19, !dbg !182
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define i8* @UtilSafeCalloc1(i64, i64, i32, i8*, i32) #0 !dbg !183 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !186, metadata !18), !dbg !187
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !188, metadata !18), !dbg !189
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !190, metadata !18), !dbg !191
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !192, metadata !18), !dbg !193
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !194, metadata !18), !dbg !195
  call void @llvm.dbg.declare(metadata i8** %11, metadata !196, metadata !18), !dbg !197
  %12 = load i64, i64* %6, align 8, !dbg !198
  %13 = load i64, i64* %7, align 8, !dbg !199
  %14 = call noalias i8* @calloc(i64 %12, i64 %13) #7, !dbg !200
  store i8* %14, i8** %11, align 8, !dbg !197
  %15 = load i8*, i8** %11, align 8, !dbg !201
  %16 = icmp eq i8* %15, null, !dbg !203
  br i1 %16, label %17, label %27, !dbg !204

; <label>:17:                                     ; preds = %5
  %18 = load i64, i64* %6, align 8, !dbg !205
  %19 = icmp ne i64 %18, 0, !dbg !207
  br i1 %19, label %20, label %27, !dbg !208

; <label>:20:                                     ; preds = %17
  %21 = load i64, i64* %7, align 8, !dbg !209
  %22 = icmp ne i64 %21, 0, !dbg !211
  br i1 %22, label %23, label %27, !dbg !212

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %8, align 4, !dbg !213
  %25 = load i8*, i8** %9, align 8, !dbg !215
  %26 = load i32, i32* %10, align 4, !dbg !216
  call void @UtilAllocationFailure1(i32 %24, i8* %25, i32 %26) #8, !dbg !217
  unreachable, !dbg !217

; <label>:27:                                     ; preds = %20, %17, %5
  %28 = load i8*, i8** %11, align 8, !dbg !218
  ret i8* %28, !dbg !219
}

; Function Attrs: nounwind uwtable
define i8* @UtilSafeStrdup0(i8*) #0 !dbg !220 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !224, metadata !18), !dbg !225
  call void @llvm.dbg.declare(metadata i8** %4, metadata !226, metadata !18), !dbg !227
  %5 = load i8*, i8** %3, align 8, !dbg !228
  %6 = icmp eq i8* %5, null, !dbg !230
  br i1 %6, label %7, label %8, !dbg !231

; <label>:7:                                      ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !232
  br label %15, !dbg !232

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !234
  %10 = call noalias i8* @strdup(i8* %9) #7, !dbg !236
  store i8* %10, i8** %4, align 8, !dbg !237
  %11 = icmp eq i8* %10, null, !dbg !238
  br i1 %11, label %12, label %13, !dbg !239

; <label>:12:                                     ; preds = %8
  call void @UtilAllocationFailure0() #8, !dbg !240
  unreachable, !dbg !240

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %4, align 8, !dbg !242
  store i8* %14, i8** %2, align 8, !dbg !243
  br label %15, !dbg !243

; <label>:15:                                     ; preds = %13, %7
  %16 = load i8*, i8** %2, align 8, !dbg !244
  ret i8* %16, !dbg !244
}

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @UtilSafeStrdup1(i8*, i32, i8*, i32) #0 !dbg !245 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !248, metadata !18), !dbg !249
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !250, metadata !18), !dbg !251
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !252, metadata !18), !dbg !253
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !254, metadata !18), !dbg !255
  call void @llvm.dbg.declare(metadata i8** %10, metadata !256, metadata !18), !dbg !257
  %11 = load i8*, i8** %6, align 8, !dbg !258
  %12 = icmp eq i8* %11, null, !dbg !260
  br i1 %12, label %13, label %14, !dbg !261

; <label>:13:                                     ; preds = %4
  store i8* null, i8** %5, align 8, !dbg !262
  br label %24, !dbg !262

; <label>:14:                                     ; preds = %4
  %15 = load i8*, i8** %6, align 8, !dbg !264
  %16 = call noalias i8* @strdup(i8* %15) #7, !dbg !266
  store i8* %16, i8** %10, align 8, !dbg !267
  %17 = icmp eq i8* %16, null, !dbg !268
  br i1 %17, label %18, label %22, !dbg !269

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %7, align 4, !dbg !270
  %20 = load i8*, i8** %8, align 8, !dbg !272
  %21 = load i32, i32* %9, align 4, !dbg !273
  call void @UtilAllocationFailure1(i32 %19, i8* %20, i32 %21) #8, !dbg !274
  unreachable, !dbg !274

; <label>:22:                                     ; preds = %14
  %23 = load i8*, i8** %10, align 8, !dbg !275
  store i8* %23, i8** %5, align 8, !dbg !276
  br label %24, !dbg !276

; <label>:24:                                     ; preds = %22, %13
  %25 = load i8*, i8** %5, align 8, !dbg !277
  ret i8* %25, !dbg !277
}

; Function Attrs: nounwind uwtable
define i8* @UtilSafeStrndup0(i8*, i64) #0 !dbg !278 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !281, metadata !18), !dbg !282
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !283, metadata !18), !dbg !284
  call void @llvm.dbg.declare(metadata i64* %6, metadata !285, metadata !18), !dbg !286
  call void @llvm.dbg.declare(metadata i8** %7, metadata !287, metadata !18), !dbg !288
  call void @llvm.dbg.declare(metadata i8** %8, metadata !289, metadata !18), !dbg !290
  call void @llvm.dbg.declare(metadata i64* %9, metadata !291, metadata !18), !dbg !292
  %10 = load i8*, i8** %4, align 8, !dbg !293
  %11 = icmp eq i8* %10, null, !dbg !295
  br i1 %11, label %12, label %13, !dbg !296

; <label>:12:                                     ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !297
  br label %49, !dbg !297

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %4, align 8, !dbg !299
  %15 = load i64, i64* %5, align 8, !dbg !300
  %16 = call i8* @memchr(i8* %14, i32 0, i64 %15) #9, !dbg !301
  store i8* %16, i8** %8, align 8, !dbg !302
  %17 = load i8*, i8** %8, align 8, !dbg !303
  %18 = icmp ne i8* %17, null, !dbg !303
  br i1 %18, label %19, label %25, !dbg !303

; <label>:19:                                     ; preds = %13
  %20 = load i8*, i8** %8, align 8, !dbg !304
  %21 = load i8*, i8** %4, align 8, !dbg !306
  %22 = ptrtoint i8* %20 to i64, !dbg !307
  %23 = ptrtoint i8* %21 to i64, !dbg !307
  %24 = sub i64 %22, %23, !dbg !307
  br label %27, !dbg !308

; <label>:25:                                     ; preds = %13
  %26 = load i64, i64* %5, align 8, !dbg !309
  br label %27, !dbg !311

; <label>:27:                                     ; preds = %25, %19
  %28 = phi i64 [ %24, %19 ], [ %26, %25 ], !dbg !312
  store i64 %28, i64* %6, align 8, !dbg !314
  %29 = load i64, i64* %6, align 8, !dbg !315
  %30 = add i64 %29, 1, !dbg !316
  store i64 %30, i64* %9, align 8, !dbg !317
  %31 = load i64, i64* %9, align 8, !dbg !318
  %32 = load i64, i64* %6, align 8, !dbg !320
  %33 = icmp ult i64 %31, %32, !dbg !321
  br i1 %33, label %34, label %35, !dbg !322

; <label>:34:                                     ; preds = %27
  store i8* null, i8** %7, align 8, !dbg !323
  br label %38, !dbg !325

; <label>:35:                                     ; preds = %27
  %36 = load i64, i64* %9, align 8, !dbg !326
  %37 = call noalias i8* @malloc(i64 %36) #7, !dbg !328
  store i8* %37, i8** %7, align 8, !dbg !329
  br label %38

; <label>:38:                                     ; preds = %35, %34
  %39 = load i8*, i8** %7, align 8, !dbg !330
  %40 = icmp eq i8* %39, null, !dbg !332
  br i1 %40, label %41, label %42, !dbg !333

; <label>:41:                                     ; preds = %38
  call void @UtilAllocationFailure0() #8, !dbg !334
  unreachable, !dbg !334

; <label>:42:                                     ; preds = %38
  %43 = load i64, i64* %6, align 8, !dbg !336
  %44 = load i8*, i8** %7, align 8, !dbg !337
  %45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !337
  store i8 0, i8* %45, align 1, !dbg !338
  %46 = load i8*, i8** %7, align 8, !dbg !339
  %47 = load i8*, i8** %4, align 8, !dbg !340
  %48 = load i64, i64* %6, align 8, !dbg !341
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 %48, i32 1, i1 false), !dbg !342
  store i8* %46, i8** %3, align 8, !dbg !343
  br label %49, !dbg !343

; <label>:49:                                     ; preds = %42, %12
  %50 = load i8*, i8** %3, align 8, !dbg !344
  ret i8* %50, !dbg !344
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define i8* @UtilSafeStrndup1(i8*, i64, i32, i8*, i32) #0 !dbg !345 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !348, metadata !18), !dbg !349
  store i64 %1, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !350, metadata !18), !dbg !351
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !352, metadata !18), !dbg !353
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !354, metadata !18), !dbg !355
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !356, metadata !18), !dbg !357
  call void @llvm.dbg.declare(metadata i64* %12, metadata !358, metadata !18), !dbg !359
  call void @llvm.dbg.declare(metadata i8** %13, metadata !360, metadata !18), !dbg !361
  call void @llvm.dbg.declare(metadata i8** %14, metadata !362, metadata !18), !dbg !363
  call void @llvm.dbg.declare(metadata i64* %15, metadata !364, metadata !18), !dbg !365
  %16 = load i8*, i8** %7, align 8, !dbg !366
  %17 = icmp eq i8* %16, null, !dbg !368
  br i1 %17, label %18, label %19, !dbg !369

; <label>:18:                                     ; preds = %5
  store i8* null, i8** %6, align 8, !dbg !370
  br label %58, !dbg !370

; <label>:19:                                     ; preds = %5
  %20 = load i8*, i8** %7, align 8, !dbg !372
  %21 = load i64, i64* %8, align 8, !dbg !373
  %22 = call i8* @memchr(i8* %20, i32 0, i64 %21) #9, !dbg !374
  store i8* %22, i8** %14, align 8, !dbg !375
  %23 = load i8*, i8** %14, align 8, !dbg !376
  %24 = icmp ne i8* %23, null, !dbg !376
  br i1 %24, label %25, label %31, !dbg !376

; <label>:25:                                     ; preds = %19
  %26 = load i8*, i8** %14, align 8, !dbg !377
  %27 = load i8*, i8** %7, align 8, !dbg !379
  %28 = ptrtoint i8* %26 to i64, !dbg !380
  %29 = ptrtoint i8* %27 to i64, !dbg !380
  %30 = sub i64 %28, %29, !dbg !380
  br label %33, !dbg !381

; <label>:31:                                     ; preds = %19
  %32 = load i64, i64* %8, align 8, !dbg !382
  br label %33, !dbg !384

; <label>:33:                                     ; preds = %31, %25
  %34 = phi i64 [ %30, %25 ], [ %32, %31 ], !dbg !385
  store i64 %34, i64* %12, align 8, !dbg !387
  %35 = load i64, i64* %12, align 8, !dbg !388
  %36 = add i64 %35, 1, !dbg !389
  store i64 %36, i64* %15, align 8, !dbg !390
  %37 = load i64, i64* %15, align 8, !dbg !391
  %38 = load i64, i64* %12, align 8, !dbg !393
  %39 = icmp ult i64 %37, %38, !dbg !394
  br i1 %39, label %40, label %41, !dbg !395

; <label>:40:                                     ; preds = %33
  store i8* null, i8** %13, align 8, !dbg !396
  br label %44, !dbg !398

; <label>:41:                                     ; preds = %33
  %42 = load i64, i64* %15, align 8, !dbg !399
  %43 = call noalias i8* @malloc(i64 %42) #7, !dbg !401
  store i8* %43, i8** %13, align 8, !dbg !402
  br label %44

; <label>:44:                                     ; preds = %41, %40
  %45 = load i8*, i8** %13, align 8, !dbg !403
  %46 = icmp eq i8* %45, null, !dbg !405
  br i1 %46, label %47, label %51, !dbg !406

; <label>:47:                                     ; preds = %44
  %48 = load i32, i32* %9, align 4, !dbg !407
  %49 = load i8*, i8** %10, align 8, !dbg !409
  %50 = load i32, i32* %11, align 4, !dbg !410
  call void @UtilAllocationFailure1(i32 %48, i8* %49, i32 %50) #8, !dbg !411
  unreachable, !dbg !411

; <label>:51:                                     ; preds = %44
  %52 = load i64, i64* %12, align 8, !dbg !412
  %53 = load i8*, i8** %13, align 8, !dbg !413
  %54 = getelementptr inbounds i8, i8* %53, i64 %52, !dbg !413
  store i8 0, i8* %54, align 1, !dbg !414
  %55 = load i8*, i8** %13, align 8, !dbg !415
  %56 = load i8*, i8** %7, align 8, !dbg !416
  %57 = load i64, i64* %12, align 8, !dbg !417
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 %57, i32 1, i1 false), !dbg !418
  store i8* %55, i8** %6, align 8, !dbg !419
  br label %58, !dbg !419

; <label>:58:                                     ; preds = %51, %18
  %59 = load i8*, i8** %6, align 8, !dbg !420
  ret i8* %59, !dbg !420
}

; Function Attrs: nounwind uwtable
define i8* @Util_Memdup(i8*, i64) #0 !dbg !421 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !426, metadata !18), !dbg !427
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !428, metadata !18), !dbg !429
  call void @llvm.dbg.declare(metadata i8** %6, metadata !430, metadata !18), !dbg !431
  %7 = load i64, i64* %5, align 8, !dbg !432
  %8 = icmp eq i64 %7, 0, !dbg !434
  br i1 %8, label %9, label %10, !dbg !435

; <label>:9:                                      ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !436
  br label %22, !dbg !436

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %5, align 8, !dbg !438
  %12 = call noalias i8* @malloc(i64 %11) #7, !dbg !439
  store i8* %12, i8** %6, align 8, !dbg !440
  %13 = load i8*, i8** %6, align 8, !dbg !441
  %14 = icmp ne i8* %13, null, !dbg !443
  br i1 %14, label %15, label %20, !dbg !444

; <label>:15:                                     ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !445
  %17 = load i8*, i8** %4, align 8, !dbg !447
  %18 = load i64, i64* %5, align 8, !dbg !448
  %19 = call i8* @Util_Memcpy(i8* %16, i8* %17, i64 %18), !dbg !449
  br label %20, !dbg !450

; <label>:20:                                     ; preds = %15, %10
  %21 = load i8*, i8** %6, align 8, !dbg !451
  store i8* %21, i8** %3, align 8, !dbg !452
  br label %22, !dbg !452

; <label>:22:                                     ; preds = %20, %9
  %23 = load i8*, i8** %3, align 8, !dbg !453
  ret i8* %23, !dbg !453
}

; Function Attrs: nounwind uwtable
define i8* @Util_Memcpy(i8*, i8*, i64) #0 !dbg !454 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !457, metadata !18), !dbg !458
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !459, metadata !18), !dbg !460
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !461, metadata !18), !dbg !462
  call void @llvm.dbg.declare(metadata i64* %8, metadata !463, metadata !18), !dbg !464
  %12 = load i8*, i8** %5, align 8, !dbg !465
  %13 = ptrtoint i8* %12 to i64, !dbg !466
  %14 = load i8*, i8** %6, align 8, !dbg !467
  %15 = ptrtoint i8* %14 to i64, !dbg !468
  %16 = or i64 %13, %15, !dbg !469
  %17 = load i64, i64* %7, align 8, !dbg !470
  %18 = or i64 %16, %17, !dbg !471
  store i64 %18, i64* %8, align 8, !dbg !464
  call void @llvm.dbg.declare(metadata i64* %9, metadata !472, metadata !18), !dbg !473
  call void @llvm.dbg.declare(metadata i8** %10, metadata !474, metadata !18), !dbg !475
  call void @llvm.dbg.declare(metadata i8** %11, metadata !476, metadata !18), !dbg !477
  %19 = load i64, i64* %8, align 8, !dbg !478
  %20 = and i64 %19, 7, !dbg !480
  %21 = icmp eq i64 %20, 0, !dbg !481
  br i1 %21, label %22, label %32, !dbg !482

; <label>:22:                                     ; preds = %3
  %23 = load i64, i64* %7, align 8, !dbg !483
  %24 = lshr i64 %23, 3, !dbg !485
  %25 = load i8*, i8** %5, align 8, !dbg !486
  %26 = load i8*, i8** %6, align 8, !dbg !487
  %27 = call { i64, i8*, i8* } asm sideeffect "\09cld\0A\09rep ; movsq\0A", "={cx},={di},={si},0,1,2,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %24, i8* %25, i8* %26) #7, !dbg !488, !srcloc !489
  %28 = extractvalue { i64, i8*, i8* } %27, 0, !dbg !488
  %29 = extractvalue { i64, i8*, i8* } %27, 1, !dbg !488
  %30 = extractvalue { i64, i8*, i8* } %27, 2, !dbg !488
  store i64 %28, i64* %9, align 8, !dbg !488
  store i8* %29, i8** %10, align 8, !dbg !488
  store i8* %30, i8** %11, align 8, !dbg !488
  %31 = load i8*, i8** %5, align 8, !dbg !490
  store i8* %31, i8** %4, align 8, !dbg !491
  br label %52, !dbg !491

; <label>:32:                                     ; preds = %3
  %33 = load i64, i64* %8, align 8, !dbg !492
  %34 = and i64 %33, 3, !dbg !494
  %35 = icmp eq i64 %34, 0, !dbg !495
  br i1 %35, label %36, label %46, !dbg !496

; <label>:36:                                     ; preds = %32
  %37 = load i64, i64* %7, align 8, !dbg !497
  %38 = lshr i64 %37, 2, !dbg !499
  %39 = load i8*, i8** %5, align 8, !dbg !500
  %40 = load i8*, i8** %6, align 8, !dbg !501
  %41 = call { i64, i8*, i8* } asm sideeffect "\09cld\0A\09rep ; movsd\0A", "={cx},={di},={si},0,1,2,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %38, i8* %39, i8* %40) #7, !dbg !502, !srcloc !503
  %42 = extractvalue { i64, i8*, i8* } %41, 0, !dbg !502
  %43 = extractvalue { i64, i8*, i8* } %41, 1, !dbg !502
  %44 = extractvalue { i64, i8*, i8* } %41, 2, !dbg !502
  store i64 %42, i64* %9, align 8, !dbg !502
  store i8* %43, i8** %10, align 8, !dbg !502
  store i8* %44, i8** %11, align 8, !dbg !502
  %45 = load i8*, i8** %5, align 8, !dbg !504
  store i8* %45, i8** %4, align 8, !dbg !505
  br label %52, !dbg !505

; <label>:46:                                     ; preds = %32
  br label %47

; <label>:47:                                     ; preds = %46
  %48 = load i8*, i8** %5, align 8, !dbg !506
  %49 = load i8*, i8** %6, align 8, !dbg !507
  %50 = load i64, i64* %7, align 8, !dbg !508
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 %50, i32 1, i1 false), !dbg !509
  %51 = load i8*, i8** %5, align 8, !dbg !510
  store i8* %51, i8** %4, align 8, !dbg !511
  br label %52, !dbg !511

; <label>:52:                                     ; preds = %47, %36, %22
  %53 = load i8*, i8** %4, align 8, !dbg !512
  ret i8* %53, !dbg !512
}

; Function Attrs: nounwind uwtable
define signext i8 @UtilConstTimeMemDiff(i8*, i8*, i64, i64*) #0 !dbg !513 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !519, metadata !18), !dbg !520
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !521, metadata !18), !dbg !522
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !523, metadata !18), !dbg !524
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !525, metadata !18), !dbg !526
  call void @llvm.dbg.declare(metadata i8** %9, metadata !527, metadata !18), !dbg !528
  %12 = load i8*, i8** %5, align 8, !dbg !529
  store i8* %12, i8** %9, align 8, !dbg !528
  call void @llvm.dbg.declare(metadata i8** %10, metadata !530, metadata !18), !dbg !531
  %13 = load i8*, i8** %6, align 8, !dbg !532
  store i8* %13, i8** %10, align 8, !dbg !531
  call void @llvm.dbg.declare(metadata i64* %11, metadata !533, metadata !18), !dbg !534
  store i64 0, i64* %11, align 8, !dbg !534
  br label %14, !dbg !535

; <label>:14:                                     ; preds = %18, %4
  %15 = load i64, i64* %7, align 8, !dbg !536
  %16 = add i64 %15, -1, !dbg !536
  store i64 %16, i64* %7, align 8, !dbg !536
  %17 = icmp ne i64 %15, 0, !dbg !538
  br i1 %17, label %18, label %37, !dbg !538

; <label>:18:                                     ; preds = %14
  %19 = load i8*, i8** %9, align 8, !dbg !539
  %20 = load i8, i8* %19, align 1, !dbg !541
  %21 = sext i8 %20 to i32, !dbg !541
  %22 = load i8*, i8** %10, align 8, !dbg !542
  %23 = load i8, i8* %22, align 1, !dbg !543
  %24 = sext i8 %23 to i32, !dbg !543
  %25 = xor i32 %21, %24, !dbg !544
  %26 = icmp ne i32 %25, 0, !dbg !545
  %27 = xor i1 %26, true, !dbg !545
  %28 = xor i1 %27, true, !dbg !546
  %29 = zext i1 %28 to i32, !dbg !546
  %30 = sext i32 %29 to i64, !dbg !546
  %31 = load i64, i64* %11, align 8, !dbg !547
  %32 = add i64 %31, %30, !dbg !547
  store i64 %32, i64* %11, align 8, !dbg !547
  %33 = load i8*, i8** %9, align 8, !dbg !548
  %34 = getelementptr inbounds i8, i8* %33, i32 1, !dbg !548
  store i8* %34, i8** %9, align 8, !dbg !548
  %35 = load i8*, i8** %10, align 8, !dbg !549
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !549
  store i8* %36, i8** %10, align 8, !dbg !549
  br label %14, !dbg !550, !llvm.loop !552

; <label>:37:                                     ; preds = %14
  %38 = load i64*, i64** %8, align 8, !dbg !553
  %39 = icmp ne i64* %38, null, !dbg !555
  br i1 %39, label %40, label %43, !dbg !556

; <label>:40:                                     ; preds = %37
  %41 = load i64, i64* %11, align 8, !dbg !557
  %42 = load i64*, i64** %8, align 8, !dbg !559
  store i64 %41, i64* %42, align 8, !dbg !560
  br label %43, !dbg !561

; <label>:43:                                     ; preds = %40, %37
  %44 = load i64, i64* %11, align 8, !dbg !562
  %45 = icmp ne i64 %44, 0, !dbg !563
  %46 = zext i1 %45 to i32, !dbg !563
  %47 = trunc i32 %46 to i8, !dbg !562
  ret i8 %47, !dbg !564
}

; Function Attrs: nounwind uwtable
define signext i8 @Util_ConstTimeMemDiff(i8*, i8*, i64) #0 !dbg !565 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !568, metadata !18), !dbg !569
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !570, metadata !18), !dbg !571
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !572, metadata !18), !dbg !573
  %7 = load i8*, i8** %4, align 8, !dbg !574
  %8 = load i8*, i8** %5, align 8, !dbg !575
  %9 = load i64, i64* %6, align 8, !dbg !576
  %10 = call signext i8 @UtilConstTimeMemDiff(i8* %7, i8* %8, i64 %9, i64* null), !dbg !577
  ret i8 %10, !dbg !578
}

; Function Attrs: nounwind uwtable
define signext i8 @UtilConstTimeStrDiff(i8*, i8*, i64*) #0 !dbg !579 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !582, metadata !18), !dbg !583
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !584, metadata !18), !dbg !585
  store i64* %2, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !586, metadata !18), !dbg !587
  call void @llvm.dbg.declare(metadata i64* %7, metadata !588, metadata !18), !dbg !589
  store i64 0, i64* %7, align 8, !dbg !589
  br label %8, !dbg !590, !llvm.loop !591

; <label>:8:                                      ; preds = %32, %3
  %9 = load i8*, i8** %4, align 8, !dbg !592
  %10 = load i8, i8* %9, align 1, !dbg !594
  %11 = sext i8 %10 to i32, !dbg !594
  %12 = load i8*, i8** %5, align 8, !dbg !595
  %13 = load i8, i8* %12, align 1, !dbg !596
  %14 = sext i8 %13 to i32, !dbg !596
  %15 = xor i32 %11, %14, !dbg !597
  %16 = icmp ne i32 %15, 0, !dbg !598
  %17 = xor i1 %16, true, !dbg !598
  %18 = xor i1 %17, true, !dbg !599
  %19 = zext i1 %18 to i32, !dbg !599
  %20 = sext i32 %19 to i64, !dbg !599
  %21 = load i64, i64* %7, align 8, !dbg !600
  %22 = add i64 %21, %20, !dbg !600
  store i64 %22, i64* %7, align 8, !dbg !600
  %23 = load i8*, i8** %5, align 8, !dbg !601
  %24 = load i8, i8* %23, align 1, !dbg !602
  %25 = icmp ne i8 %24, 0, !dbg !603
  %26 = xor i1 %25, true, !dbg !603
  %27 = xor i1 %26, true, !dbg !604
  %28 = zext i1 %27 to i32, !dbg !604
  %29 = load i8*, i8** %5, align 8, !dbg !605
  %30 = sext i32 %28 to i64, !dbg !605
  %31 = getelementptr inbounds i8, i8* %29, i64 %30, !dbg !605
  store i8* %31, i8** %5, align 8, !dbg !605
  br label %32, !dbg !606

; <label>:32:                                     ; preds = %8
  %33 = load i8*, i8** %4, align 8, !dbg !607
  %34 = getelementptr inbounds i8, i8* %33, i32 1, !dbg !607
  store i8* %34, i8** %4, align 8, !dbg !607
  %35 = load i8, i8* %33, align 1, !dbg !609
  %36 = icmp ne i8 %35, 0, !dbg !610
  br i1 %36, label %8, label %37, !dbg !610, !llvm.loop !591

; <label>:37:                                     ; preds = %32
  %38 = load i64*, i64** %6, align 8, !dbg !611
  %39 = icmp ne i64* %38, null, !dbg !613
  br i1 %39, label %40, label %43, !dbg !614

; <label>:40:                                     ; preds = %37
  %41 = load i64, i64* %7, align 8, !dbg !615
  %42 = load i64*, i64** %6, align 8, !dbg !617
  store i64 %41, i64* %42, align 8, !dbg !618
  br label %43, !dbg !619

; <label>:43:                                     ; preds = %40, %37
  %44 = load i64, i64* %7, align 8, !dbg !620
  %45 = icmp ne i64 %44, 0, !dbg !621
  %46 = zext i1 %45 to i32, !dbg !621
  %47 = trunc i32 %46 to i8, !dbg !620
  ret i8 %47, !dbg !622
}

; Function Attrs: nounwind uwtable
define signext i8 @Util_ConstTimeStrDiff(i8*, i8*) #0 !dbg !623 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !626, metadata !18), !dbg !627
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !628, metadata !18), !dbg !629
  %5 = load i8*, i8** %3, align 8, !dbg !630
  %6 = load i8*, i8** %4, align 8, !dbg !631
  %7 = call signext i8 @UtilConstTimeStrDiff(i8* %5, i8* %6, i64* null), !dbg !632
  ret i8 %7, !dbg !633
}

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "utilMem.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line706")
!2 = !{}
!3 = !{!4, !5, !8}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 216, baseType: !7)
!6 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line706")
!7 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !9, line: 122, baseType: !7)
!9 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line706")
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!13 = distinct !DISubprogram(name: "UtilSafeMalloc0", scope: !14, file: !14, line: 88, type: !15, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!14 = !DIFile(filename: "utilMem.c", directory: "/home/lichi/Desktop/open-vm-tools/line706")
!15 = !DISubroutineType(types: !16)
!16 = !{!4, !5}
!17 = !DILocalVariable(name: "size", arg: 1, scope: !13, file: !14, line: 88, type: !5)
!18 = !DIExpression()
!19 = !DILocation(line: 88, column: 24, scope: !13)
!20 = !DILocalVariable(name: "result", scope: !13, file: !14, line: 90, type: !4)
!21 = !DILocation(line: 90, column: 10, scope: !13)
!22 = !DILocation(line: 90, column: 26, scope: !13)
!23 = !DILocation(line: 90, column: 19, scope: !13)
!24 = !DILocation(line: 91, column: 8, scope: !25)
!25 = distinct !DILexicalBlock(scope: !13, file: !14, line: 91, column: 8)
!26 = !DILocation(line: 91, column: 15, scope: !25)
!27 = !DILocation(line: 91, column: 22, scope: !25)
!28 = !DILocation(line: 91, column: 25, scope: !29)
!29 = !DILexicalBlockFile(scope: !25, file: !14, discriminator: 1)
!30 = !DILocation(line: 91, column: 30, scope: !29)
!31 = !DILocation(line: 91, column: 8, scope: !29)
!32 = !DILocation(line: 92, column: 7, scope: !33)
!33 = distinct !DILexicalBlock(scope: !25, file: !14, line: 91, column: 36)
!34 = !DILocation(line: 94, column: 11, scope: !13)
!35 = !DILocation(line: 94, column: 4, scope: !13)
!36 = distinct !DISubprogram(name: "UtilAllocationFailure0", scope: !14, file: !14, line: 51, type: !37, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!37 = !DISubroutineType(types: !38)
!38 = !{null}
!39 = !DILocation(line: 53, column: 4, scope: !36)
!40 = !DILocation(line: 54, column: 1, scope: !36)
!41 = distinct !DISubprogram(name: "UtilSafeMalloc1", scope: !14, file: !14, line: 99, type: !42, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!42 = !DISubroutineType(types: !43)
!43 = !{!4, !5, !44, !45, !44}
!44 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!48 = !DILocalVariable(name: "size", arg: 1, scope: !41, file: !14, line: 99, type: !5)
!49 = !DILocation(line: 99, column: 24, scope: !41)
!50 = !DILocalVariable(name: "bugNumber", arg: 2, scope: !41, file: !14, line: 100, type: !44)
!51 = !DILocation(line: 100, column: 21, scope: !41)
!52 = !DILocalVariable(name: "file", arg: 3, scope: !41, file: !14, line: 101, type: !45)
!53 = !DILocation(line: 101, column: 29, scope: !41)
!54 = !DILocalVariable(name: "lineno", arg: 4, scope: !41, file: !14, line: 102, type: !44)
!55 = !DILocation(line: 102, column: 21, scope: !41)
!56 = !DILocalVariable(name: "result", scope: !41, file: !14, line: 104, type: !4)
!57 = !DILocation(line: 104, column: 10, scope: !41)
!58 = !DILocation(line: 104, column: 26, scope: !41)
!59 = !DILocation(line: 104, column: 19, scope: !41)
!60 = !DILocation(line: 105, column: 8, scope: !61)
!61 = distinct !DILexicalBlock(scope: !41, file: !14, line: 105, column: 8)
!62 = !DILocation(line: 105, column: 15, scope: !61)
!63 = !DILocation(line: 105, column: 22, scope: !61)
!64 = !DILocation(line: 105, column: 25, scope: !65)
!65 = !DILexicalBlockFile(scope: !61, file: !14, discriminator: 1)
!66 = !DILocation(line: 105, column: 30, scope: !65)
!67 = !DILocation(line: 105, column: 8, scope: !65)
!68 = !DILocation(line: 106, column: 30, scope: !69)
!69 = distinct !DILexicalBlock(scope: !61, file: !14, line: 105, column: 36)
!70 = !DILocation(line: 106, column: 41, scope: !69)
!71 = !DILocation(line: 106, column: 47, scope: !69)
!72 = !DILocation(line: 106, column: 7, scope: !69)
!73 = !DILocation(line: 108, column: 11, scope: !41)
!74 = !DILocation(line: 108, column: 4, scope: !41)
!75 = distinct !DISubprogram(name: "UtilAllocationFailure1", scope: !14, file: !14, line: 58, type: !76, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !44, !45, !44}
!78 = !DILocalVariable(name: "bugNumber", arg: 1, scope: !75, file: !14, line: 58, type: !44)
!79 = !DILocation(line: 58, column: 28, scope: !75)
!80 = !DILocalVariable(name: "file", arg: 2, scope: !75, file: !14, line: 58, type: !45)
!81 = !DILocation(line: 58, column: 51, scope: !75)
!82 = !DILocalVariable(name: "lineno", arg: 3, scope: !75, file: !14, line: 58, type: !44)
!83 = !DILocation(line: 58, column: 61, scope: !75)
!84 = !DILocation(line: 60, column: 8, scope: !85)
!85 = distinct !DILexicalBlock(scope: !75, file: !14, line: 60, column: 8)
!86 = !DILocation(line: 60, column: 18, scope: !85)
!87 = !DILocation(line: 60, column: 8, scope: !75)
!88 = !DILocation(line: 62, column: 13, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !14, line: 60, column: 25)
!90 = !DILocation(line: 62, column: 19, scope: !89)
!91 = !DILocation(line: 61, column: 7, scope: !89)
!92 = !DILocation(line: 65, column: 29, scope: !93)
!93 = distinct !DILexicalBlock(scope: !85, file: !14, line: 63, column: 11)
!94 = !DILocation(line: 65, column: 35, scope: !93)
!95 = !DILocation(line: 65, column: 43, scope: !93)
!96 = !DILocation(line: 64, column: 7, scope: !93)
!97 = !DILocation(line: 67, column: 1, scope: !75)
!98 = distinct !DISubprogram(name: "UtilSafeRealloc0", scope: !14, file: !14, line: 130, type: !99, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!99 = !DISubroutineType(types: !100)
!100 = !{!4, !4, !5}
!101 = !DILocalVariable(name: "ptr", arg: 1, scope: !98, file: !14, line: 130, type: !4)
!102 = !DILocation(line: 130, column: 24, scope: !98)
!103 = !DILocalVariable(name: "size", arg: 2, scope: !98, file: !14, line: 131, type: !5)
!104 = !DILocation(line: 131, column: 25, scope: !98)
!105 = !DILocalVariable(name: "result", scope: !98, file: !14, line: 133, type: !4)
!106 = !DILocation(line: 133, column: 10, scope: !98)
!107 = !DILocation(line: 133, column: 27, scope: !98)
!108 = !DILocation(line: 133, column: 32, scope: !98)
!109 = !DILocation(line: 133, column: 19, scope: !98)
!110 = !DILocation(line: 134, column: 8, scope: !111)
!111 = distinct !DILexicalBlock(scope: !98, file: !14, line: 134, column: 8)
!112 = !DILocation(line: 134, column: 15, scope: !111)
!113 = !DILocation(line: 134, column: 22, scope: !111)
!114 = !DILocation(line: 134, column: 25, scope: !115)
!115 = !DILexicalBlockFile(scope: !111, file: !14, discriminator: 1)
!116 = !DILocation(line: 134, column: 30, scope: !115)
!117 = !DILocation(line: 134, column: 8, scope: !115)
!118 = !DILocation(line: 135, column: 7, scope: !119)
!119 = distinct !DILexicalBlock(scope: !111, file: !14, line: 134, column: 36)
!120 = !DILocation(line: 137, column: 11, scope: !98)
!121 = !DILocation(line: 137, column: 4, scope: !98)
!122 = distinct !DISubprogram(name: "UtilSafeRealloc1", scope: !14, file: !14, line: 142, type: !123, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!123 = !DISubroutineType(types: !124)
!124 = !{!4, !4, !5, !44, !45, !44}
!125 = !DILocalVariable(name: "ptr", arg: 1, scope: !122, file: !14, line: 142, type: !4)
!126 = !DILocation(line: 142, column: 24, scope: !122)
!127 = !DILocalVariable(name: "size", arg: 2, scope: !122, file: !14, line: 143, type: !5)
!128 = !DILocation(line: 143, column: 25, scope: !122)
!129 = !DILocalVariable(name: "bugNumber", arg: 3, scope: !122, file: !14, line: 144, type: !44)
!130 = !DILocation(line: 144, column: 22, scope: !122)
!131 = !DILocalVariable(name: "file", arg: 4, scope: !122, file: !14, line: 145, type: !45)
!132 = !DILocation(line: 145, column: 30, scope: !122)
!133 = !DILocalVariable(name: "lineno", arg: 5, scope: !122, file: !14, line: 146, type: !44)
!134 = !DILocation(line: 146, column: 22, scope: !122)
!135 = !DILocalVariable(name: "result", scope: !122, file: !14, line: 148, type: !4)
!136 = !DILocation(line: 148, column: 10, scope: !122)
!137 = !DILocation(line: 148, column: 27, scope: !122)
!138 = !DILocation(line: 148, column: 32, scope: !122)
!139 = !DILocation(line: 148, column: 19, scope: !122)
!140 = !DILocation(line: 149, column: 8, scope: !141)
!141 = distinct !DILexicalBlock(scope: !122, file: !14, line: 149, column: 8)
!142 = !DILocation(line: 149, column: 15, scope: !141)
!143 = !DILocation(line: 149, column: 22, scope: !141)
!144 = !DILocation(line: 149, column: 25, scope: !145)
!145 = !DILexicalBlockFile(scope: !141, file: !14, discriminator: 1)
!146 = !DILocation(line: 149, column: 30, scope: !145)
!147 = !DILocation(line: 149, column: 8, scope: !145)
!148 = !DILocation(line: 150, column: 30, scope: !149)
!149 = distinct !DILexicalBlock(scope: !141, file: !14, line: 149, column: 36)
!150 = !DILocation(line: 150, column: 41, scope: !149)
!151 = !DILocation(line: 150, column: 47, scope: !149)
!152 = !DILocation(line: 150, column: 7, scope: !149)
!153 = !DILocation(line: 152, column: 11, scope: !122)
!154 = !DILocation(line: 152, column: 4, scope: !122)
!155 = distinct !DISubprogram(name: "UtilSafeCalloc0", scope: !14, file: !14, line: 174, type: !156, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!156 = !DISubroutineType(types: !157)
!157 = !{!4, !5, !5}
!158 = !DILocalVariable(name: "nmemb", arg: 1, scope: !155, file: !14, line: 174, type: !5)
!159 = !DILocation(line: 174, column: 24, scope: !155)
!160 = !DILocalVariable(name: "size", arg: 2, scope: !155, file: !14, line: 175, type: !5)
!161 = !DILocation(line: 175, column: 24, scope: !155)
!162 = !DILocalVariable(name: "result", scope: !155, file: !14, line: 177, type: !4)
!163 = !DILocation(line: 177, column: 10, scope: !155)
!164 = !DILocation(line: 177, column: 26, scope: !155)
!165 = !DILocation(line: 177, column: 33, scope: !155)
!166 = !DILocation(line: 177, column: 19, scope: !155)
!167 = !DILocation(line: 178, column: 8, scope: !168)
!168 = distinct !DILexicalBlock(scope: !155, file: !14, line: 178, column: 8)
!169 = !DILocation(line: 178, column: 15, scope: !168)
!170 = !DILocation(line: 178, column: 22, scope: !168)
!171 = !DILocation(line: 178, column: 25, scope: !172)
!172 = !DILexicalBlockFile(scope: !168, file: !14, discriminator: 1)
!173 = !DILocation(line: 178, column: 31, scope: !172)
!174 = !DILocation(line: 178, column: 36, scope: !172)
!175 = !DILocation(line: 178, column: 39, scope: !176)
!176 = !DILexicalBlockFile(scope: !168, file: !14, discriminator: 2)
!177 = !DILocation(line: 178, column: 44, scope: !176)
!178 = !DILocation(line: 178, column: 8, scope: !176)
!179 = !DILocation(line: 179, column: 7, scope: !180)
!180 = distinct !DILexicalBlock(scope: !168, file: !14, line: 178, column: 50)
!181 = !DILocation(line: 181, column: 11, scope: !155)
!182 = !DILocation(line: 181, column: 4, scope: !155)
!183 = distinct !DISubprogram(name: "UtilSafeCalloc1", scope: !14, file: !14, line: 186, type: !184, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!184 = !DISubroutineType(types: !185)
!185 = !{!4, !5, !5, !44, !45, !44}
!186 = !DILocalVariable(name: "nmemb", arg: 1, scope: !183, file: !14, line: 186, type: !5)
!187 = !DILocation(line: 186, column: 24, scope: !183)
!188 = !DILocalVariable(name: "size", arg: 2, scope: !183, file: !14, line: 187, type: !5)
!189 = !DILocation(line: 187, column: 24, scope: !183)
!190 = !DILocalVariable(name: "bugNumber", arg: 3, scope: !183, file: !14, line: 188, type: !44)
!191 = !DILocation(line: 188, column: 21, scope: !183)
!192 = !DILocalVariable(name: "file", arg: 4, scope: !183, file: !14, line: 189, type: !45)
!193 = !DILocation(line: 189, column: 29, scope: !183)
!194 = !DILocalVariable(name: "lineno", arg: 5, scope: !183, file: !14, line: 190, type: !44)
!195 = !DILocation(line: 190, column: 21, scope: !183)
!196 = !DILocalVariable(name: "result", scope: !183, file: !14, line: 192, type: !4)
!197 = !DILocation(line: 192, column: 10, scope: !183)
!198 = !DILocation(line: 192, column: 26, scope: !183)
!199 = !DILocation(line: 192, column: 33, scope: !183)
!200 = !DILocation(line: 192, column: 19, scope: !183)
!201 = !DILocation(line: 193, column: 8, scope: !202)
!202 = distinct !DILexicalBlock(scope: !183, file: !14, line: 193, column: 8)
!203 = !DILocation(line: 193, column: 15, scope: !202)
!204 = !DILocation(line: 193, column: 22, scope: !202)
!205 = !DILocation(line: 193, column: 25, scope: !206)
!206 = !DILexicalBlockFile(scope: !202, file: !14, discriminator: 1)
!207 = !DILocation(line: 193, column: 31, scope: !206)
!208 = !DILocation(line: 193, column: 36, scope: !206)
!209 = !DILocation(line: 193, column: 39, scope: !210)
!210 = !DILexicalBlockFile(scope: !202, file: !14, discriminator: 2)
!211 = !DILocation(line: 193, column: 44, scope: !210)
!212 = !DILocation(line: 193, column: 8, scope: !210)
!213 = !DILocation(line: 194, column: 30, scope: !214)
!214 = distinct !DILexicalBlock(scope: !202, file: !14, line: 193, column: 50)
!215 = !DILocation(line: 194, column: 41, scope: !214)
!216 = !DILocation(line: 194, column: 47, scope: !214)
!217 = !DILocation(line: 194, column: 7, scope: !214)
!218 = !DILocation(line: 196, column: 11, scope: !183)
!219 = !DILocation(line: 196, column: 4, scope: !183)
!220 = distinct !DISubprogram(name: "UtilSafeStrdup0", scope: !14, file: !14, line: 218, type: !221, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!221 = !DISubroutineType(types: !222)
!222 = !{!223, !45}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!224 = !DILocalVariable(name: "s", arg: 1, scope: !220, file: !14, line: 218, type: !45)
!225 = !DILocation(line: 218, column: 29, scope: !220)
!226 = !DILocalVariable(name: "result", scope: !220, file: !14, line: 220, type: !223)
!227 = !DILocation(line: 220, column: 10, scope: !220)
!228 = !DILocation(line: 221, column: 8, scope: !229)
!229 = distinct !DILexicalBlock(scope: !220, file: !14, line: 221, column: 8)
!230 = !DILocation(line: 221, column: 10, scope: !229)
!231 = !DILocation(line: 221, column: 8, scope: !220)
!232 = !DILocation(line: 222, column: 7, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !14, line: 221, column: 18)
!234 = !DILocation(line: 228, column: 25, scope: !235)
!235 = distinct !DILexicalBlock(scope: !220, file: !14, line: 228, column: 8)
!236 = !DILocation(line: 228, column: 18, scope: !235)
!237 = !DILocation(line: 228, column: 16, scope: !235)
!238 = !DILocation(line: 228, column: 29, scope: !235)
!239 = !DILocation(line: 228, column: 8, scope: !220)
!240 = !DILocation(line: 230, column: 7, scope: !241)
!241 = distinct !DILexicalBlock(scope: !235, file: !14, line: 228, column: 37)
!242 = !DILocation(line: 232, column: 11, scope: !220)
!243 = !DILocation(line: 232, column: 4, scope: !220)
!244 = !DILocation(line: 233, column: 1, scope: !220)
!245 = distinct !DISubprogram(name: "UtilSafeStrdup1", scope: !14, file: !14, line: 237, type: !246, isLocal: false, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!246 = !DISubroutineType(types: !247)
!247 = !{!223, !45, !44, !45, !44}
!248 = !DILocalVariable(name: "s", arg: 1, scope: !245, file: !14, line: 237, type: !45)
!249 = !DILocation(line: 237, column: 29, scope: !245)
!250 = !DILocalVariable(name: "bugNumber", arg: 2, scope: !245, file: !14, line: 238, type: !44)
!251 = !DILocation(line: 238, column: 21, scope: !245)
!252 = !DILocalVariable(name: "file", arg: 3, scope: !245, file: !14, line: 239, type: !45)
!253 = !DILocation(line: 239, column: 29, scope: !245)
!254 = !DILocalVariable(name: "lineno", arg: 4, scope: !245, file: !14, line: 240, type: !44)
!255 = !DILocation(line: 240, column: 21, scope: !245)
!256 = !DILocalVariable(name: "result", scope: !245, file: !14, line: 242, type: !223)
!257 = !DILocation(line: 242, column: 10, scope: !245)
!258 = !DILocation(line: 243, column: 8, scope: !259)
!259 = distinct !DILexicalBlock(scope: !245, file: !14, line: 243, column: 8)
!260 = !DILocation(line: 243, column: 10, scope: !259)
!261 = !DILocation(line: 243, column: 8, scope: !245)
!262 = !DILocation(line: 244, column: 7, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !14, line: 243, column: 18)
!264 = !DILocation(line: 249, column: 25, scope: !265)
!265 = distinct !DILexicalBlock(scope: !245, file: !14, line: 249, column: 8)
!266 = !DILocation(line: 249, column: 18, scope: !265)
!267 = !DILocation(line: 249, column: 16, scope: !265)
!268 = !DILocation(line: 249, column: 29, scope: !265)
!269 = !DILocation(line: 249, column: 8, scope: !245)
!270 = !DILocation(line: 251, column: 30, scope: !271)
!271 = distinct !DILexicalBlock(scope: !265, file: !14, line: 249, column: 37)
!272 = !DILocation(line: 251, column: 41, scope: !271)
!273 = !DILocation(line: 251, column: 47, scope: !271)
!274 = !DILocation(line: 251, column: 7, scope: !271)
!275 = !DILocation(line: 253, column: 11, scope: !245)
!276 = !DILocation(line: 253, column: 4, scope: !245)
!277 = !DILocation(line: 254, column: 1, scope: !245)
!278 = distinct !DISubprogram(name: "UtilSafeStrndup0", scope: !14, file: !14, line: 278, type: !279, isLocal: false, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!279 = !DISubroutineType(types: !280)
!280 = !{!223, !45, !5}
!281 = !DILocalVariable(name: "s", arg: 1, scope: !278, file: !14, line: 278, type: !45)
!282 = !DILocation(line: 278, column: 30, scope: !278)
!283 = !DILocalVariable(name: "n", arg: 2, scope: !278, file: !14, line: 279, type: !5)
!284 = !DILocation(line: 279, column: 25, scope: !278)
!285 = !DILocalVariable(name: "size", scope: !278, file: !14, line: 281, type: !5)
!286 = !DILocation(line: 281, column: 11, scope: !278)
!287 = !DILocalVariable(name: "copy", scope: !278, file: !14, line: 282, type: !223)
!288 = !DILocation(line: 282, column: 10, scope: !278)
!289 = !DILocalVariable(name: "null", scope: !278, file: !14, line: 283, type: !45)
!290 = !DILocation(line: 283, column: 16, scope: !278)
!291 = !DILocalVariable(name: "newSize", scope: !278, file: !14, line: 284, type: !5)
!292 = !DILocation(line: 284, column: 11, scope: !278)
!293 = !DILocation(line: 286, column: 8, scope: !294)
!294 = distinct !DILexicalBlock(scope: !278, file: !14, line: 286, column: 8)
!295 = !DILocation(line: 286, column: 10, scope: !294)
!296 = !DILocation(line: 286, column: 8, scope: !278)
!297 = !DILocation(line: 287, column: 7, scope: !298)
!298 = distinct !DILexicalBlock(scope: !294, file: !14, line: 286, column: 18)
!299 = !DILocation(line: 290, column: 18, scope: !278)
!300 = !DILocation(line: 290, column: 27, scope: !278)
!301 = !DILocation(line: 290, column: 11, scope: !278)
!302 = !DILocation(line: 290, column: 9, scope: !278)
!303 = !DILocation(line: 291, column: 11, scope: !278)
!304 = !DILocation(line: 291, column: 27, scope: !305)
!305 = !DILexicalBlockFile(scope: !278, file: !14, discriminator: 1)
!306 = !DILocation(line: 291, column: 34, scope: !305)
!307 = !DILocation(line: 291, column: 32, scope: !305)
!308 = !DILocation(line: 291, column: 11, scope: !305)
!309 = !DILocation(line: 291, column: 39, scope: !310)
!310 = !DILexicalBlockFile(scope: !278, file: !14, discriminator: 2)
!311 = !DILocation(line: 291, column: 11, scope: !310)
!312 = !DILocation(line: 291, column: 11, scope: !313)
!313 = !DILexicalBlockFile(scope: !278, file: !14, discriminator: 3)
!314 = !DILocation(line: 291, column: 9, scope: !313)
!315 = !DILocation(line: 292, column: 14, scope: !278)
!316 = !DILocation(line: 292, column: 19, scope: !278)
!317 = !DILocation(line: 292, column: 12, scope: !278)
!318 = !DILocation(line: 293, column: 8, scope: !319)
!319 = distinct !DILexicalBlock(scope: !278, file: !14, line: 293, column: 8)
!320 = !DILocation(line: 293, column: 18, scope: !319)
!321 = !DILocation(line: 293, column: 16, scope: !319)
!322 = !DILocation(line: 293, column: 8, scope: !278)
!323 = !DILocation(line: 294, column: 12, scope: !324)
!324 = distinct !DILexicalBlock(scope: !319, file: !14, line: 293, column: 24)
!325 = !DILocation(line: 295, column: 4, scope: !324)
!326 = !DILocation(line: 296, column: 21, scope: !327)
!327 = distinct !DILexicalBlock(scope: !319, file: !14, line: 295, column: 11)
!328 = !DILocation(line: 296, column: 14, scope: !327)
!329 = !DILocation(line: 296, column: 12, scope: !327)
!330 = !DILocation(line: 299, column: 8, scope: !331)
!331 = distinct !DILexicalBlock(scope: !278, file: !14, line: 299, column: 8)
!332 = !DILocation(line: 299, column: 13, scope: !331)
!333 = !DILocation(line: 299, column: 8, scope: !278)
!334 = !DILocation(line: 300, column: 7, scope: !335)
!335 = distinct !DILexicalBlock(scope: !331, file: !14, line: 299, column: 21)
!336 = !DILocation(line: 303, column: 9, scope: !278)
!337 = !DILocation(line: 303, column: 4, scope: !278)
!338 = !DILocation(line: 303, column: 15, scope: !278)
!339 = !DILocation(line: 305, column: 18, scope: !278)
!340 = !DILocation(line: 305, column: 24, scope: !278)
!341 = !DILocation(line: 305, column: 27, scope: !278)
!342 = !DILocation(line: 305, column: 11, scope: !278)
!343 = !DILocation(line: 305, column: 4, scope: !278)
!344 = !DILocation(line: 306, column: 1, scope: !278)
!345 = distinct !DISubprogram(name: "UtilSafeStrndup1", scope: !14, file: !14, line: 310, type: !346, isLocal: false, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!346 = !DISubroutineType(types: !347)
!347 = !{!223, !45, !5, !44, !45, !44}
!348 = !DILocalVariable(name: "s", arg: 1, scope: !345, file: !14, line: 310, type: !45)
!349 = !DILocation(line: 310, column: 30, scope: !345)
!350 = !DILocalVariable(name: "n", arg: 2, scope: !345, file: !14, line: 311, type: !5)
!351 = !DILocation(line: 311, column: 25, scope: !345)
!352 = !DILocalVariable(name: "bugNumber", arg: 3, scope: !345, file: !14, line: 312, type: !44)
!353 = !DILocation(line: 312, column: 22, scope: !345)
!354 = !DILocalVariable(name: "file", arg: 4, scope: !345, file: !14, line: 313, type: !45)
!355 = !DILocation(line: 313, column: 30, scope: !345)
!356 = !DILocalVariable(name: "lineno", arg: 5, scope: !345, file: !14, line: 314, type: !44)
!357 = !DILocation(line: 314, column: 22, scope: !345)
!358 = !DILocalVariable(name: "size", scope: !345, file: !14, line: 316, type: !5)
!359 = !DILocation(line: 316, column: 11, scope: !345)
!360 = !DILocalVariable(name: "copy", scope: !345, file: !14, line: 317, type: !223)
!361 = !DILocation(line: 317, column: 10, scope: !345)
!362 = !DILocalVariable(name: "null", scope: !345, file: !14, line: 318, type: !45)
!363 = !DILocation(line: 318, column: 16, scope: !345)
!364 = !DILocalVariable(name: "newSize", scope: !345, file: !14, line: 319, type: !5)
!365 = !DILocation(line: 319, column: 11, scope: !345)
!366 = !DILocation(line: 321, column: 8, scope: !367)
!367 = distinct !DILexicalBlock(scope: !345, file: !14, line: 321, column: 8)
!368 = !DILocation(line: 321, column: 10, scope: !367)
!369 = !DILocation(line: 321, column: 8, scope: !345)
!370 = !DILocation(line: 322, column: 7, scope: !371)
!371 = distinct !DILexicalBlock(scope: !367, file: !14, line: 321, column: 18)
!372 = !DILocation(line: 325, column: 18, scope: !345)
!373 = !DILocation(line: 325, column: 27, scope: !345)
!374 = !DILocation(line: 325, column: 11, scope: !345)
!375 = !DILocation(line: 325, column: 9, scope: !345)
!376 = !DILocation(line: 326, column: 11, scope: !345)
!377 = !DILocation(line: 326, column: 27, scope: !378)
!378 = !DILexicalBlockFile(scope: !345, file: !14, discriminator: 1)
!379 = !DILocation(line: 326, column: 34, scope: !378)
!380 = !DILocation(line: 326, column: 32, scope: !378)
!381 = !DILocation(line: 326, column: 11, scope: !378)
!382 = !DILocation(line: 326, column: 39, scope: !383)
!383 = !DILexicalBlockFile(scope: !345, file: !14, discriminator: 2)
!384 = !DILocation(line: 326, column: 11, scope: !383)
!385 = !DILocation(line: 326, column: 11, scope: !386)
!386 = !DILexicalBlockFile(scope: !345, file: !14, discriminator: 3)
!387 = !DILocation(line: 326, column: 9, scope: !386)
!388 = !DILocation(line: 327, column: 14, scope: !345)
!389 = !DILocation(line: 327, column: 19, scope: !345)
!390 = !DILocation(line: 327, column: 12, scope: !345)
!391 = !DILocation(line: 328, column: 8, scope: !392)
!392 = distinct !DILexicalBlock(scope: !345, file: !14, line: 328, column: 8)
!393 = !DILocation(line: 328, column: 18, scope: !392)
!394 = !DILocation(line: 328, column: 16, scope: !392)
!395 = !DILocation(line: 328, column: 8, scope: !345)
!396 = !DILocation(line: 329, column: 12, scope: !397)
!397 = distinct !DILexicalBlock(scope: !392, file: !14, line: 328, column: 24)
!398 = !DILocation(line: 330, column: 4, scope: !397)
!399 = !DILocation(line: 331, column: 21, scope: !400)
!400 = distinct !DILexicalBlock(scope: !392, file: !14, line: 330, column: 11)
!401 = !DILocation(line: 331, column: 14, scope: !400)
!402 = !DILocation(line: 331, column: 12, scope: !400)
!403 = !DILocation(line: 334, column: 8, scope: !404)
!404 = distinct !DILexicalBlock(scope: !345, file: !14, line: 334, column: 8)
!405 = !DILocation(line: 334, column: 13, scope: !404)
!406 = !DILocation(line: 334, column: 8, scope: !345)
!407 = !DILocation(line: 335, column: 30, scope: !408)
!408 = distinct !DILexicalBlock(scope: !404, file: !14, line: 334, column: 21)
!409 = !DILocation(line: 335, column: 41, scope: !408)
!410 = !DILocation(line: 335, column: 47, scope: !408)
!411 = !DILocation(line: 335, column: 7, scope: !408)
!412 = !DILocation(line: 338, column: 9, scope: !345)
!413 = !DILocation(line: 338, column: 4, scope: !345)
!414 = !DILocation(line: 338, column: 15, scope: !345)
!415 = !DILocation(line: 340, column: 18, scope: !345)
!416 = !DILocation(line: 340, column: 24, scope: !345)
!417 = !DILocation(line: 340, column: 27, scope: !345)
!418 = !DILocation(line: 340, column: 11, scope: !345)
!419 = !DILocation(line: 340, column: 4, scope: !345)
!420 = !DILocation(line: 341, column: 1, scope: !345)
!421 = distinct !DISubprogram(name: "Util_Memdup", scope: !14, file: !14, line: 363, type: !422, isLocal: false, isDefinition: true, scopeLine: 365, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!422 = !DISubroutineType(types: !423)
!423 = !{!4, !424, !5}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!426 = !DILocalVariable(name: "src", arg: 1, scope: !421, file: !14, line: 363, type: !424)
!427 = !DILocation(line: 363, column: 25, scope: !421)
!428 = !DILocalVariable(name: "size", arg: 2, scope: !421, file: !14, line: 364, type: !5)
!429 = !DILocation(line: 364, column: 20, scope: !421)
!430 = !DILocalVariable(name: "dest", scope: !421, file: !14, line: 366, type: !4)
!431 = !DILocation(line: 366, column: 10, scope: !421)
!432 = !DILocation(line: 368, column: 8, scope: !433)
!433 = distinct !DILexicalBlock(scope: !421, file: !14, line: 368, column: 8)
!434 = !DILocation(line: 368, column: 13, scope: !433)
!435 = !DILocation(line: 368, column: 8, scope: !421)
!436 = !DILocation(line: 369, column: 7, scope: !437)
!437 = distinct !DILexicalBlock(scope: !433, file: !14, line: 368, column: 19)
!438 = !DILocation(line: 374, column: 18, scope: !421)
!439 = !DILocation(line: 374, column: 11, scope: !421)
!440 = !DILocation(line: 374, column: 9, scope: !421)
!441 = !DILocation(line: 375, column: 8, scope: !442)
!442 = distinct !DILexicalBlock(scope: !421, file: !14, line: 375, column: 8)
!443 = !DILocation(line: 375, column: 13, scope: !442)
!444 = !DILocation(line: 375, column: 8, scope: !421)
!445 = !DILocation(line: 376, column: 19, scope: !446)
!446 = distinct !DILexicalBlock(scope: !442, file: !14, line: 375, column: 21)
!447 = !DILocation(line: 376, column: 25, scope: !446)
!448 = !DILocation(line: 376, column: 30, scope: !446)
!449 = !DILocation(line: 376, column: 7, scope: !446)
!450 = !DILocation(line: 377, column: 4, scope: !446)
!451 = !DILocation(line: 378, column: 11, scope: !421)
!452 = !DILocation(line: 378, column: 4, scope: !421)
!453 = !DILocation(line: 379, column: 1, scope: !421)
!454 = distinct !DISubprogram(name: "Util_Memcpy", scope: !14, file: !14, line: 407, type: !455, isLocal: false, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!455 = !DISubroutineType(types: !456)
!456 = !{!4, !4, !424, !5}
!457 = !DILocalVariable(name: "dest", arg: 1, scope: !454, file: !14, line: 407, type: !4)
!458 = !DILocation(line: 407, column: 19, scope: !454)
!459 = !DILocalVariable(name: "src", arg: 2, scope: !454, file: !14, line: 408, type: !424)
!460 = !DILocation(line: 408, column: 25, scope: !454)
!461 = !DILocalVariable(name: "count", arg: 3, scope: !454, file: !14, line: 409, type: !5)
!462 = !DILocation(line: 409, column: 20, scope: !454)
!463 = !DILocalVariable(name: "align", scope: !454, file: !14, line: 412, type: !8)
!464 = !DILocation(line: 412, column: 14, scope: !454)
!465 = !DILocation(line: 412, column: 34, scope: !454)
!466 = !DILocation(line: 412, column: 23, scope: !454)
!467 = !DILocation(line: 412, column: 52, scope: !454)
!468 = !DILocation(line: 412, column: 41, scope: !454)
!469 = !DILocation(line: 412, column: 39, scope: !454)
!470 = !DILocation(line: 412, column: 58, scope: !454)
!471 = !DILocation(line: 412, column: 56, scope: !454)
!472 = !DILocalVariable(name: "dummy0", scope: !454, file: !14, line: 418, type: !5)
!473 = !DILocation(line: 418, column: 14, scope: !454)
!474 = !DILocalVariable(name: "dummy1", scope: !454, file: !14, line: 419, type: !4)
!475 = !DILocation(line: 419, column: 13, scope: !454)
!476 = !DILocalVariable(name: "dummy2", scope: !454, file: !14, line: 420, type: !4)
!477 = !DILocation(line: 420, column: 13, scope: !454)
!478 = !DILocation(line: 422, column: 12, scope: !479)
!479 = distinct !DILexicalBlock(scope: !454, file: !14, line: 422, column: 11)
!480 = !DILocation(line: 422, column: 18, scope: !479)
!481 = !DILocation(line: 422, column: 23, scope: !479)
!482 = !DILocation(line: 422, column: 11, scope: !454)
!483 = !DILocation(line: 427, column: 39, scope: !484)
!484 = distinct !DILexicalBlock(scope: !479, file: !14, line: 422, column: 29)
!485 = !DILocation(line: 427, column: 45, scope: !484)
!486 = !DILocation(line: 427, column: 57, scope: !484)
!487 = !DILocation(line: 427, column: 69, scope: !484)
!488 = !DILocation(line: 423, column: 10, scope: !484)
!489 = !{i32 102725, i32 102770}
!490 = !DILocation(line: 430, column: 17, scope: !484)
!491 = !DILocation(line: 430, column: 10, scope: !484)
!492 = !DILocation(line: 431, column: 19, scope: !493)
!493 = distinct !DILexicalBlock(scope: !479, file: !14, line: 431, column: 18)
!494 = !DILocation(line: 431, column: 25, scope: !493)
!495 = !DILocation(line: 431, column: 30, scope: !493)
!496 = !DILocation(line: 431, column: 18, scope: !479)
!497 = !DILocation(line: 436, column: 39, scope: !498)
!498 = distinct !DILexicalBlock(scope: !493, file: !14, line: 431, column: 36)
!499 = !DILocation(line: 436, column: 45, scope: !498)
!500 = !DILocation(line: 436, column: 57, scope: !498)
!501 = !DILocation(line: 436, column: 69, scope: !498)
!502 = !DILocation(line: 432, column: 10, scope: !498)
!503 = !{i32 103126, i32 103171}
!504 = !DILocation(line: 439, column: 17, scope: !498)
!505 = !DILocation(line: 439, column: 10, scope: !498)
!506 = !DILocation(line: 486, column: 11, scope: !454)
!507 = !DILocation(line: 486, column: 17, scope: !454)
!508 = !DILocation(line: 486, column: 22, scope: !454)
!509 = !DILocation(line: 486, column: 4, scope: !454)
!510 = !DILocation(line: 487, column: 11, scope: !454)
!511 = !DILocation(line: 487, column: 4, scope: !454)
!512 = !DILocation(line: 488, column: 1, scope: !454)
!513 = distinct !DISubprogram(name: "UtilConstTimeMemDiff", scope: !14, file: !14, line: 523, type: !514, isLocal: false, isDefinition: true, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!514 = !DISubroutineType(types: !515)
!515 = !{!516, !424, !424, !5, !518}
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !517, line: 230, baseType: !47)
!517 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line706")
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!519 = !DILocalVariable(name: "secret", arg: 1, scope: !513, file: !14, line: 523, type: !424)
!520 = !DILocation(line: 523, column: 34, scope: !513)
!521 = !DILocalVariable(name: "guess", arg: 2, scope: !513, file: !14, line: 524, type: !424)
!522 = !DILocation(line: 524, column: 34, scope: !513)
!523 = !DILocalVariable(name: "len", arg: 3, scope: !513, file: !14, line: 525, type: !5)
!524 = !DILocation(line: 525, column: 29, scope: !513)
!525 = !DILocalVariable(name: "diffCount", arg: 4, scope: !513, file: !14, line: 526, type: !518)
!526 = !DILocation(line: 526, column: 30, scope: !513)
!527 = !DILocalVariable(name: "secretChar", scope: !513, file: !14, line: 528, type: !45)
!528 = !DILocation(line: 528, column: 16, scope: !513)
!529 = !DILocation(line: 528, column: 29, scope: !513)
!530 = !DILocalVariable(name: "guessChar", scope: !513, file: !14, line: 529, type: !45)
!531 = !DILocation(line: 529, column: 16, scope: !513)
!532 = !DILocation(line: 529, column: 28, scope: !513)
!533 = !DILocalVariable(name: "numDiffs", scope: !513, file: !14, line: 531, type: !5)
!534 = !DILocation(line: 531, column: 11, scope: !513)
!535 = !DILocation(line: 533, column: 4, scope: !513)
!536 = !DILocation(line: 533, column: 14, scope: !537)
!537 = !DILexicalBlockFile(scope: !513, file: !14, discriminator: 1)
!538 = !DILocation(line: 533, column: 4, scope: !537)
!539 = !DILocation(line: 534, column: 23, scope: !540)
!540 = distinct !DILexicalBlock(scope: !513, file: !14, line: 533, column: 18)
!541 = !DILocation(line: 534, column: 22, scope: !540)
!542 = !DILocation(line: 534, column: 37, scope: !540)
!543 = !DILocation(line: 534, column: 36, scope: !540)
!544 = !DILocation(line: 534, column: 34, scope: !540)
!545 = !DILocation(line: 534, column: 20, scope: !540)
!546 = !DILocation(line: 534, column: 19, scope: !540)
!547 = !DILocation(line: 534, column: 16, scope: !540)
!548 = !DILocation(line: 535, column: 7, scope: !540)
!549 = !DILocation(line: 536, column: 7, scope: !540)
!550 = !DILocation(line: 533, column: 4, scope: !551)
!551 = !DILexicalBlockFile(scope: !513, file: !14, discriminator: 2)
!552 = distinct !{!552, !535}
!553 = !DILocation(line: 539, column: 8, scope: !554)
!554 = distinct !DILexicalBlock(scope: !513, file: !14, line: 539, column: 8)
!555 = !DILocation(line: 539, column: 18, scope: !554)
!556 = !DILocation(line: 539, column: 8, scope: !513)
!557 = !DILocation(line: 540, column: 20, scope: !558)
!558 = distinct !DILexicalBlock(scope: !554, file: !14, line: 539, column: 26)
!559 = !DILocation(line: 540, column: 8, scope: !558)
!560 = !DILocation(line: 540, column: 18, scope: !558)
!561 = !DILocation(line: 541, column: 4, scope: !558)
!562 = !DILocation(line: 542, column: 11, scope: !513)
!563 = !DILocation(line: 542, column: 20, scope: !513)
!564 = !DILocation(line: 542, column: 4, scope: !513)
!565 = distinct !DISubprogram(name: "Util_ConstTimeMemDiff", scope: !14, file: !14, line: 568, type: !566, isLocal: false, isDefinition: true, scopeLine: 571, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!566 = !DISubroutineType(types: !567)
!567 = !{!516, !424, !424, !5}
!568 = !DILocalVariable(name: "secret", arg: 1, scope: !565, file: !14, line: 568, type: !424)
!569 = !DILocation(line: 568, column: 35, scope: !565)
!570 = !DILocalVariable(name: "guess", arg: 2, scope: !565, file: !14, line: 569, type: !424)
!571 = !DILocation(line: 569, column: 35, scope: !565)
!572 = !DILocalVariable(name: "len", arg: 3, scope: !565, file: !14, line: 570, type: !5)
!573 = !DILocation(line: 570, column: 30, scope: !565)
!574 = !DILocation(line: 572, column: 32, scope: !565)
!575 = !DILocation(line: 572, column: 40, scope: !565)
!576 = !DILocation(line: 572, column: 47, scope: !565)
!577 = !DILocation(line: 572, column: 11, scope: !565)
!578 = !DILocation(line: 572, column: 4, scope: !565)
!579 = distinct !DISubprogram(name: "UtilConstTimeStrDiff", scope: !14, file: !14, line: 610, type: !580, isLocal: false, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!580 = !DISubroutineType(types: !581)
!581 = !{!516, !45, !45, !518}
!582 = !DILocalVariable(name: "secret", arg: 1, scope: !579, file: !14, line: 610, type: !45)
!583 = !DILocation(line: 610, column: 34, scope: !579)
!584 = !DILocalVariable(name: "guess", arg: 2, scope: !579, file: !14, line: 611, type: !45)
!585 = !DILocation(line: 611, column: 34, scope: !579)
!586 = !DILocalVariable(name: "diffCount", arg: 3, scope: !579, file: !14, line: 612, type: !518)
!587 = !DILocation(line: 612, column: 30, scope: !579)
!588 = !DILocalVariable(name: "numDiffs", scope: !579, file: !14, line: 614, type: !5)
!589 = !DILocation(line: 614, column: 11, scope: !579)
!590 = !DILocation(line: 616, column: 4, scope: !579)
!591 = distinct !{!591, !590}
!592 = !DILocation(line: 617, column: 23, scope: !593)
!593 = distinct !DILexicalBlock(scope: !579, file: !14, line: 616, column: 7)
!594 = !DILocation(line: 617, column: 22, scope: !593)
!595 = !DILocation(line: 617, column: 33, scope: !593)
!596 = !DILocation(line: 617, column: 32, scope: !593)
!597 = !DILocation(line: 617, column: 30, scope: !593)
!598 = !DILocation(line: 617, column: 20, scope: !593)
!599 = !DILocation(line: 617, column: 19, scope: !593)
!600 = !DILocation(line: 617, column: 16, scope: !593)
!601 = !DILocation(line: 618, column: 20, scope: !593)
!602 = !DILocation(line: 618, column: 19, scope: !593)
!603 = !DILocation(line: 618, column: 17, scope: !593)
!604 = !DILocation(line: 618, column: 16, scope: !593)
!605 = !DILocation(line: 618, column: 13, scope: !593)
!606 = !DILocation(line: 619, column: 4, scope: !593)
!607 = !DILocation(line: 619, column: 20, scope: !608)
!608 = !DILexicalBlockFile(scope: !579, file: !14, discriminator: 1)
!609 = !DILocation(line: 619, column: 13, scope: !608)
!610 = !DILocation(line: 619, column: 4, scope: !608)
!611 = !DILocation(line: 621, column: 8, scope: !612)
!612 = distinct !DILexicalBlock(scope: !579, file: !14, line: 621, column: 8)
!613 = !DILocation(line: 621, column: 18, scope: !612)
!614 = !DILocation(line: 621, column: 8, scope: !579)
!615 = !DILocation(line: 622, column: 20, scope: !616)
!616 = distinct !DILexicalBlock(scope: !612, file: !14, line: 621, column: 26)
!617 = !DILocation(line: 622, column: 8, scope: !616)
!618 = !DILocation(line: 622, column: 18, scope: !616)
!619 = !DILocation(line: 623, column: 4, scope: !616)
!620 = !DILocation(line: 624, column: 11, scope: !579)
!621 = !DILocation(line: 624, column: 20, scope: !579)
!622 = !DILocation(line: 624, column: 4, scope: !579)
!623 = distinct !DISubprogram(name: "Util_ConstTimeStrDiff", scope: !14, file: !14, line: 650, type: !624, isLocal: false, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!624 = !DISubroutineType(types: !625)
!625 = !{!516, !45, !45}
!626 = !DILocalVariable(name: "secret", arg: 1, scope: !623, file: !14, line: 650, type: !45)
!627 = !DILocation(line: 650, column: 35, scope: !623)
!628 = !DILocalVariable(name: "guess", arg: 2, scope: !623, file: !14, line: 651, type: !45)
!629 = !DILocation(line: 651, column: 35, scope: !623)
!630 = !DILocation(line: 653, column: 32, scope: !623)
!631 = !DILocation(line: 653, column: 40, scope: !623)
!632 = !DILocation(line: 653, column: 11, scope: !623)
!633 = !DILocation(line: 653, column: 4, scope: !623)
