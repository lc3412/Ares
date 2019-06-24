; ModuleID = './[inter]lib--dpkg--ar.o.i'
source_filename = "./[inter]lib--dpkg--ar.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dpkg_ar = type { i8*, i32, i64, i64, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.dpkg_ar_hdr = type { [16 x i8], [12 x i8], [6 x i8], [6 x i8], [8 x i8], [10 x i8], [2 x i8] }
%struct.dpkg_ar_member = type { %struct.dpkg_ar_member*, i8*, i64, i64, i64, i32, i32, i32 }
%struct.dpkg_error = type { i32, i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to fstat archive\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to read archive '%.255s'\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"unable to create '%.255s'\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"unable to close file '%s'\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"invalid character '%c' in archive '%.250s' member '%.16s' size\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"`\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"!<arch>\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"unable to write file '%s'\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"ar member name '%s' length too long\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"ar member size %jd too large\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"%-16s%-12lu%-6lu%-6lu%-8lo%-10jd`\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"generated corrupt ar header for '%s'\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"failed to fstat ar member file (%s)\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"cannot append ar member file (%s) to '%s': %s\00", align 1

; Function Attrs: nounwind uwtable
define %struct.dpkg_ar* @dpkg_ar_fdopen(i8*, i32) #0 !dbg !18 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpkg_ar*, align 8
  %6 = alloca %struct.stat, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !46, metadata !47), !dbg !48
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !49, metadata !47), !dbg !50
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar** %5, metadata !51, metadata !47), !dbg !52
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !53, metadata !47), !dbg !87
  %7 = load i32, i32* %4, align 4, !dbg !88
  %8 = call i32 @fstat(i32 %7, %struct.stat* %6) #6, !dbg !90
  %9 = icmp ne i32 %8, 0, !dbg !91
  br i1 %9, label %10, label %12, !dbg !92

; <label>:10:                                     ; preds = %2
  %11 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0)) #6, !dbg !93
  call void (i8*, ...) @ohshite(i8* %11) #7, !dbg !94
  unreachable, !dbg !96

; <label>:12:                                     ; preds = %2
  %13 = call i8* @m_malloc(i64 40), !dbg !97
  %14 = bitcast i8* %13 to %struct.dpkg_ar*, !dbg !97
  store %struct.dpkg_ar* %14, %struct.dpkg_ar** %5, align 8, !dbg !98
  %15 = load i8*, i8** %3, align 8, !dbg !99
  %16 = load %struct.dpkg_ar*, %struct.dpkg_ar** %5, align 8, !dbg !100
  %17 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %16, i32 0, i32 0, !dbg !101
  store i8* %15, i8** %17, align 8, !dbg !102
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3, !dbg !103
  %19 = load i32, i32* %18, align 8, !dbg !103
  %20 = load %struct.dpkg_ar*, %struct.dpkg_ar** %5, align 8, !dbg !104
  %21 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %20, i32 0, i32 1, !dbg !105
  store i32 %19, i32* %21, align 8, !dbg !106
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 8, !dbg !107
  %23 = load i64, i64* %22, align 8, !dbg !107
  %24 = load %struct.dpkg_ar*, %struct.dpkg_ar** %5, align 8, !dbg !108
  %25 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %24, i32 0, i32 3, !dbg !109
  store i64 %23, i64* %25, align 8, !dbg !110
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 12, !dbg !111
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %26, i32 0, i32 0, !dbg !112
  %28 = load i64, i64* %27, align 8, !dbg !112
  %29 = load %struct.dpkg_ar*, %struct.dpkg_ar** %5, align 8, !dbg !113
  %30 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %29, i32 0, i32 2, !dbg !114
  store i64 %28, i64* %30, align 8, !dbg !115
  %31 = load i32, i32* %4, align 4, !dbg !116
  %32 = load %struct.dpkg_ar*, %struct.dpkg_ar** %5, align 8, !dbg !117
  %33 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %32, i32 0, i32 4, !dbg !118
  store i32 %31, i32* %33, align 8, !dbg !119
  %34 = load %struct.dpkg_ar*, %struct.dpkg_ar** %5, align 8, !dbg !120
  ret %struct.dpkg_ar* %34, !dbg !121
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #2

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #2

declare i8* @m_malloc(i64) #4

; Function Attrs: nounwind uwtable
define %struct.dpkg_ar* @dpkg_ar_open(i8*) #0 !dbg !122 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !125, metadata !47), !dbg !126
  call void @llvm.dbg.declare(metadata i32* %3, metadata !127, metadata !47), !dbg !128
  %4 = load i8*, i8** %2, align 8, !dbg !129
  %5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !131
  %6 = icmp eq i32 %5, 0, !dbg !132
  br i1 %6, label %7, label %8, !dbg !133

; <label>:7:                                      ; preds = %1
  store i32 0, i32* %3, align 4, !dbg !134
  br label %11, !dbg !135

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %2, align 8, !dbg !136
  %10 = call i32 (i8*, i32, ...) @open(i8* %9, i32 0), !dbg !137
  store i32 %10, i32* %3, align 4, !dbg !138
  br label %11

; <label>:11:                                     ; preds = %8, %7
  %12 = load i32, i32* %3, align 4, !dbg !139
  %13 = icmp slt i32 %12, 0, !dbg !141
  br i1 %13, label %14, label %17, !dbg !142

; <label>:14:                                     ; preds = %11
  %15 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0)) #6, !dbg !143
  %16 = load i8*, i8** %2, align 8, !dbg !144
  call void (i8*, ...) @ohshite(i8* %15, i8* %16) #7, !dbg !145
  unreachable, !dbg !147

; <label>:17:                                     ; preds = %11
  %18 = load i8*, i8** %2, align 8, !dbg !148
  %19 = load i32, i32* %3, align 4, !dbg !149
  %20 = call %struct.dpkg_ar* @dpkg_ar_fdopen(i8* %18, i32 %19), !dbg !150
  ret %struct.dpkg_ar* %20, !dbg !151
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare i32 @open(i8*, i32, ...) #4

; Function Attrs: nounwind uwtable
define %struct.dpkg_ar* @dpkg_ar_create(i8*, i32) #0 !dbg !152 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !155, metadata !47), !dbg !156
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !157, metadata !47), !dbg !158
  call void @llvm.dbg.declare(metadata i32* %5, metadata !159, metadata !47), !dbg !160
  %6 = load i8*, i8** %3, align 8, !dbg !161
  %7 = load i32, i32* %4, align 4, !dbg !162
  %8 = call i32 @creat(i8* %6, i32 %7), !dbg !163
  store i32 %8, i32* %5, align 4, !dbg !164
  %9 = load i32, i32* %5, align 4, !dbg !165
  %10 = icmp slt i32 %9, 0, !dbg !167
  br i1 %10, label %11, label %14, !dbg !168

; <label>:11:                                     ; preds = %2
  %12 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0)) #6, !dbg !169
  %13 = load i8*, i8** %3, align 8, !dbg !170
  call void (i8*, ...) @ohshite(i8* %12, i8* %13) #7, !dbg !171
  unreachable, !dbg !173

; <label>:14:                                     ; preds = %2
  %15 = load i8*, i8** %3, align 8, !dbg !174
  %16 = load i32, i32* %5, align 4, !dbg !175
  %17 = call %struct.dpkg_ar* @dpkg_ar_fdopen(i8* %15, i32 %16), !dbg !176
  ret %struct.dpkg_ar* %17, !dbg !177
}

declare i32 @creat(i8*, i32) #4

; Function Attrs: nounwind uwtable
define void @dpkg_ar_set_mtime(%struct.dpkg_ar*, i64) #0 !dbg !178 {
  %3 = alloca %struct.dpkg_ar*, align 8
  %4 = alloca i64, align 8
  store %struct.dpkg_ar* %0, %struct.dpkg_ar** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar** %3, metadata !181, metadata !47), !dbg !182
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !183, metadata !47), !dbg !184
  %5 = load i64, i64* %4, align 8, !dbg !185
  %6 = load %struct.dpkg_ar*, %struct.dpkg_ar** %3, align 8, !dbg !186
  %7 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %6, i32 0, i32 2, !dbg !187
  store i64 %5, i64* %7, align 8, !dbg !188
  ret void, !dbg !189
}

; Function Attrs: nounwind uwtable
define void @dpkg_ar_close(%struct.dpkg_ar*) #0 !dbg !190 {
  %2 = alloca %struct.dpkg_ar*, align 8
  store %struct.dpkg_ar* %0, %struct.dpkg_ar** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar** %2, metadata !193, metadata !47), !dbg !194
  %3 = load %struct.dpkg_ar*, %struct.dpkg_ar** %2, align 8, !dbg !195
  %4 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %3, i32 0, i32 4, !dbg !197
  %5 = load i32, i32* %4, align 8, !dbg !197
  %6 = call i32 @close(i32 %5), !dbg !198
  %7 = icmp ne i32 %6, 0, !dbg !198
  br i1 %7, label %8, label %13, !dbg !199

; <label>:8:                                      ; preds = %1
  %9 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0)) #6, !dbg !200
  %10 = load %struct.dpkg_ar*, %struct.dpkg_ar** %2, align 8, !dbg !201
  %11 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %10, i32 0, i32 0, !dbg !202
  %12 = load i8*, i8** %11, align 8, !dbg !202
  call void (i8*, ...) @ohshite(i8* %9, i8* %12) #7, !dbg !203
  unreachable, !dbg !205

; <label>:13:                                     ; preds = %1
  %14 = load %struct.dpkg_ar*, %struct.dpkg_ar** %2, align 8, !dbg !206
  %15 = bitcast %struct.dpkg_ar* %14 to i8*, !dbg !206
  call void @free(i8* %15) #6, !dbg !207
  ret void, !dbg !208
}

declare i32 @close(i32) #4

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @dpkg_ar_normalize_name(%struct.dpkg_ar_hdr*) #0 !dbg !209 {
  %2 = alloca %struct.dpkg_ar_hdr*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.dpkg_ar_hdr* %0, %struct.dpkg_ar_hdr** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar_hdr** %2, metadata !240, metadata !47), !dbg !241
  call void @llvm.dbg.declare(metadata i8** %3, metadata !242, metadata !47), !dbg !244
  %5 = load %struct.dpkg_ar_hdr*, %struct.dpkg_ar_hdr** %2, align 8, !dbg !245
  %6 = getelementptr inbounds %struct.dpkg_ar_hdr, %struct.dpkg_ar_hdr* %5, i32 0, i32 0, !dbg !246
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !245
  store i8* %7, i8** %3, align 8, !dbg !244
  call void @llvm.dbg.declare(metadata i32* %4, metadata !247, metadata !47), !dbg !248
  store i32 15, i32* %4, align 4, !dbg !249
  br label %8, !dbg !251

; <label>:8:                                      ; preds = %26, %1
  %9 = load i32, i32* %4, align 4, !dbg !252
  %10 = icmp sge i32 %9, 0, !dbg !255
  br i1 %10, label %11, label %19, !dbg !256

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %4, align 4, !dbg !257
  %13 = sext i32 %12 to i64, !dbg !259
  %14 = load i8*, i8** %3, align 8, !dbg !259
  %15 = getelementptr inbounds i8, i8* %14, i64 %13, !dbg !259
  %16 = load i8, i8* %15, align 1, !dbg !259
  %17 = sext i8 %16 to i32, !dbg !259
  %18 = icmp eq i32 %17, 32, !dbg !260
  br label %19

; <label>:19:                                     ; preds = %11, %8
  %20 = phi i1 [ false, %8 ], [ %18, %11 ]
  br i1 %20, label %21, label %29, !dbg !261

; <label>:21:                                     ; preds = %19
  %22 = load i32, i32* %4, align 4, !dbg !263
  %23 = sext i32 %22 to i64, !dbg !264
  %24 = load i8*, i8** %3, align 8, !dbg !264
  %25 = getelementptr inbounds i8, i8* %24, i64 %23, !dbg !264
  store i8 0, i8* %25, align 1, !dbg !265
  br label %26, !dbg !264

; <label>:26:                                     ; preds = %21
  %27 = load i32, i32* %4, align 4, !dbg !266
  %28 = add nsw i32 %27, -1, !dbg !266
  store i32 %28, i32* %4, align 4, !dbg !266
  br label %8, !dbg !268, !llvm.loop !269

; <label>:29:                                     ; preds = %19
  %30 = load i32, i32* %4, align 4, !dbg !271
  %31 = icmp sge i32 %30, 0, !dbg !273
  br i1 %31, label %32, label %45, !dbg !274

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %4, align 4, !dbg !275
  %34 = sext i32 %33 to i64, !dbg !277
  %35 = load i8*, i8** %3, align 8, !dbg !277
  %36 = getelementptr inbounds i8, i8* %35, i64 %34, !dbg !277
  %37 = load i8, i8* %36, align 1, !dbg !277
  %38 = sext i8 %37 to i32, !dbg !277
  %39 = icmp eq i32 %38, 47, !dbg !278
  br i1 %39, label %40, label %45, !dbg !279

; <label>:40:                                     ; preds = %32
  %41 = load i32, i32* %4, align 4, !dbg !280
  %42 = sext i32 %41 to i64, !dbg !281
  %43 = load i8*, i8** %3, align 8, !dbg !281
  %44 = getelementptr inbounds i8, i8* %43, i64 %42, !dbg !281
  store i8 0, i8* %44, align 1, !dbg !282
  br label %45, !dbg !281

; <label>:45:                                     ; preds = %40, %32, %29
  ret void, !dbg !283
}

; Function Attrs: nounwind uwtable
define i64 @dpkg_ar_member_get_size(%struct.dpkg_ar*, %struct.dpkg_ar_hdr*) #0 !dbg !284 {
  %3 = alloca %struct.dpkg_ar*, align 8
  %4 = alloca %struct.dpkg_ar_hdr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.dpkg_ar* %0, %struct.dpkg_ar** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar** %3, metadata !287, metadata !47), !dbg !288
  store %struct.dpkg_ar_hdr* %1, %struct.dpkg_ar_hdr** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar_hdr** %4, metadata !289, metadata !47), !dbg !290
  call void @llvm.dbg.declare(metadata i8** %5, metadata !291, metadata !47), !dbg !292
  %8 = load %struct.dpkg_ar_hdr*, %struct.dpkg_ar_hdr** %4, align 8, !dbg !293
  %9 = getelementptr inbounds %struct.dpkg_ar_hdr, %struct.dpkg_ar_hdr* %8, i32 0, i32 5, !dbg !294
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i32 0, i32 0, !dbg !293
  store i8* %10, i8** %5, align 8, !dbg !292
  call void @llvm.dbg.declare(metadata i32* %6, metadata !295, metadata !47), !dbg !296
  store i32 10, i32* %6, align 4, !dbg !296
  call void @llvm.dbg.declare(metadata i64* %7, metadata !297, metadata !47), !dbg !298
  store i64 0, i64* %7, align 8, !dbg !298
  br label %11, !dbg !299

; <label>:11:                                     ; preds = %21, %2
  %12 = load i32, i32* %6, align 4, !dbg !300
  %13 = icmp ne i32 %12, 0, !dbg !300
  br i1 %13, label %14, label %19, !dbg !302

; <label>:14:                                     ; preds = %11
  %15 = load i8*, i8** %5, align 8, !dbg !303
  %16 = load i8, i8* %15, align 1, !dbg !305
  %17 = sext i8 %16 to i32, !dbg !305
  %18 = icmp eq i32 %17, 32, !dbg !306
  br label %19

; <label>:19:                                     ; preds = %14, %11
  %20 = phi i1 [ false, %11 ], [ %18, %14 ]
  br i1 %20, label %21, label %26, !dbg !307

; <label>:21:                                     ; preds = %19
  %22 = load i8*, i8** %5, align 8, !dbg !309
  %23 = getelementptr inbounds i8, i8* %22, i32 1, !dbg !309
  store i8* %23, i8** %5, align 8, !dbg !309
  %24 = load i32, i32* %6, align 4, !dbg !310
  %25 = add nsw i32 %24, -1, !dbg !310
  store i32 %25, i32* %6, align 4, !dbg !310
  br label %11, !dbg !311, !llvm.loop !313

; <label>:26:                                     ; preds = %19
  br label %27, !dbg !314

; <label>:27:                                     ; preds = %58, %26
  %28 = load i32, i32* %6, align 4, !dbg !315
  %29 = add nsw i32 %28, -1, !dbg !315
  store i32 %29, i32* %6, align 4, !dbg !315
  %30 = icmp ne i32 %28, 0, !dbg !316
  br i1 %30, label %31, label %69, !dbg !316

; <label>:31:                                     ; preds = %27
  %32 = load i8*, i8** %5, align 8, !dbg !317
  %33 = load i8, i8* %32, align 1, !dbg !320
  %34 = sext i8 %33 to i32, !dbg !320
  %35 = icmp eq i32 %34, 32, !dbg !321
  br i1 %35, label %36, label %37, !dbg !322

; <label>:36:                                     ; preds = %31
  br label %69, !dbg !323

; <label>:37:                                     ; preds = %31
  %38 = load i8*, i8** %5, align 8, !dbg !324
  %39 = load i8, i8* %38, align 1, !dbg !326
  %40 = sext i8 %39 to i32, !dbg !326
  %41 = icmp slt i32 %40, 48, !dbg !327
  br i1 %41, label %47, label %42, !dbg !328

; <label>:42:                                     ; preds = %37
  %43 = load i8*, i8** %5, align 8, !dbg !329
  %44 = load i8, i8* %43, align 1, !dbg !331
  %45 = sext i8 %44 to i32, !dbg !331
  %46 = icmp sgt i32 %45, 57, !dbg !332
  br i1 %46, label %47, label %58, !dbg !333

; <label>:47:                                     ; preds = %42, %37
  %48 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i32 0, i32 0)) #6, !dbg !334
  %49 = load i8*, i8** %5, align 8, !dbg !335
  %50 = load i8, i8* %49, align 1, !dbg !336
  %51 = sext i8 %50 to i32, !dbg !336
  %52 = load %struct.dpkg_ar*, %struct.dpkg_ar** %3, align 8, !dbg !337
  %53 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %52, i32 0, i32 0, !dbg !338
  %54 = load i8*, i8** %53, align 8, !dbg !338
  %55 = load %struct.dpkg_ar_hdr*, %struct.dpkg_ar_hdr** %4, align 8, !dbg !339
  %56 = getelementptr inbounds %struct.dpkg_ar_hdr, %struct.dpkg_ar_hdr* %55, i32 0, i32 0, !dbg !340
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* %56, i32 0, i32 0, !dbg !339
  call void (i8*, ...) @ohshit(i8* %48, i32 %51, i8* %54, i8* %57) #7, !dbg !341
  unreachable, !dbg !342

; <label>:58:                                     ; preds = %42
  %59 = load i64, i64* %7, align 8, !dbg !343
  %60 = mul nsw i64 %59, 10, !dbg !343
  store i64 %60, i64* %7, align 8, !dbg !343
  %61 = load i8*, i8** %5, align 8, !dbg !344
  %62 = getelementptr inbounds i8, i8* %61, i32 1, !dbg !344
  store i8* %62, i8** %5, align 8, !dbg !344
  %63 = load i8, i8* %61, align 1, !dbg !345
  %64 = sext i8 %63 to i32, !dbg !345
  %65 = sub nsw i32 %64, 48, !dbg !346
  %66 = sext i32 %65 to i64, !dbg !345
  %67 = load i64, i64* %7, align 8, !dbg !347
  %68 = add nsw i64 %67, %66, !dbg !347
  store i64 %68, i64* %7, align 8, !dbg !347
  br label %27, !dbg !348, !llvm.loop !349

; <label>:69:                                     ; preds = %36, %27
  %70 = load i64, i64* %7, align 8, !dbg !350
  ret i64 %70, !dbg !351
}

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #3

; Function Attrs: nounwind uwtable
define zeroext i1 @dpkg_ar_member_is_illegal(%struct.dpkg_ar_hdr*) #0 !dbg !352 {
  %2 = alloca %struct.dpkg_ar_hdr*, align 8
  store %struct.dpkg_ar_hdr* %0, %struct.dpkg_ar_hdr** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar_hdr** %2, metadata !356, metadata !47), !dbg !357
  %3 = load %struct.dpkg_ar_hdr*, %struct.dpkg_ar_hdr** %2, align 8, !dbg !358
  %4 = getelementptr inbounds %struct.dpkg_ar_hdr, %struct.dpkg_ar_hdr* %3, i32 0, i32 6, !dbg !359
  %5 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i32 0, i32 0, !dbg !358
  %6 = call i32 @memcmp(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i64 2) #8, !dbg !360
  %7 = icmp ne i32 %6, 0, !dbg !361
  ret i1 %7, !dbg !362
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: nounwind uwtable
define void @dpkg_ar_put_magic(%struct.dpkg_ar*) #0 !dbg !363 {
  %2 = alloca %struct.dpkg_ar*, align 8
  store %struct.dpkg_ar* %0, %struct.dpkg_ar** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar** %2, metadata !364, metadata !47), !dbg !365
  %3 = load %struct.dpkg_ar*, %struct.dpkg_ar** %2, align 8, !dbg !366
  %4 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %3, i32 0, i32 4, !dbg !368
  %5 = load i32, i32* %4, align 8, !dbg !368
  %6 = call i64 @fd_write(i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i64 8), !dbg !369
  %7 = icmp slt i64 %6, 0, !dbg !370
  br i1 %7, label %8, label %13, !dbg !371

; <label>:8:                                      ; preds = %1
  %9 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0)) #6, !dbg !372
  %10 = load %struct.dpkg_ar*, %struct.dpkg_ar** %2, align 8, !dbg !373
  %11 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %10, i32 0, i32 0, !dbg !374
  %12 = load i8*, i8** %11, align 8, !dbg !374
  call void (i8*, ...) @ohshite(i8* %9, i8* %12) #7, !dbg !375
  unreachable, !dbg !377

; <label>:13:                                     ; preds = %1
  ret void, !dbg !378
}

declare i64 @fd_write(i32, i8*, i64) #4

; Function Attrs: nounwind uwtable
define void @dpkg_ar_member_put_header(%struct.dpkg_ar*, %struct.dpkg_ar_member*) #0 !dbg !379 {
  %3 = alloca %struct.dpkg_ar*, align 8
  %4 = alloca %struct.dpkg_ar_member*, align 8
  %5 = alloca [61 x i8], align 16
  %6 = alloca i32, align 4
  store %struct.dpkg_ar* %0, %struct.dpkg_ar** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar** %3, metadata !395, metadata !47), !dbg !396
  store %struct.dpkg_ar_member* %1, %struct.dpkg_ar_member** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar_member** %4, metadata !397, metadata !47), !dbg !398
  call void @llvm.dbg.declare(metadata [61 x i8]* %5, metadata !399, metadata !47), !dbg !403
  call void @llvm.dbg.declare(metadata i32* %6, metadata !404, metadata !47), !dbg !405
  %7 = load %struct.dpkg_ar_member*, %struct.dpkg_ar_member** %4, align 8, !dbg !406
  %8 = getelementptr inbounds %struct.dpkg_ar_member, %struct.dpkg_ar_member* %7, i32 0, i32 1, !dbg !408
  %9 = load i8*, i8** %8, align 8, !dbg !408
  %10 = call i64 @strlen(i8* %9) #8, !dbg !409
  %11 = icmp ugt i64 %10, 15, !dbg !410
  br i1 %11, label %12, label %17, !dbg !411

; <label>:12:                                     ; preds = %2
  %13 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0)) #6, !dbg !412
  %14 = load %struct.dpkg_ar_member*, %struct.dpkg_ar_member** %4, align 8, !dbg !413
  %15 = getelementptr inbounds %struct.dpkg_ar_member, %struct.dpkg_ar_member* %14, i32 0, i32 1, !dbg !414
  %16 = load i8*, i8** %15, align 8, !dbg !414
  call void (i8*, ...) @ohshit(i8* %13, i8* %16) #7, !dbg !415
  unreachable, !dbg !417

; <label>:17:                                     ; preds = %2
  %18 = load %struct.dpkg_ar_member*, %struct.dpkg_ar_member** %4, align 8, !dbg !418
  %19 = getelementptr inbounds %struct.dpkg_ar_member, %struct.dpkg_ar_member* %18, i32 0, i32 3, !dbg !420
  %20 = load i64, i64* %19, align 8, !dbg !420
  %21 = icmp sgt i64 %20, 9999999999, !dbg !421
  br i1 %21, label %22, label %27, !dbg !422

; <label>:22:                                     ; preds = %17
  %23 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0)) #6, !dbg !423
  %24 = load %struct.dpkg_ar_member*, %struct.dpkg_ar_member** %4, align 8, !dbg !424
  %25 = getelementptr inbounds %struct.dpkg_ar_member, %struct.dpkg_ar_member* %24, i32 0, i32 3, !dbg !425
  %26 = load i64, i64* %25, align 8, !dbg !425
  call void (i8*, ...) @ohshit(i8* %23, i64 %26) #7, !dbg !426
  unreachable, !dbg !428

; <label>:27:                                     ; preds = %17
  %28 = getelementptr inbounds [61 x i8], [61 x i8]* %5, i32 0, i32 0, !dbg !429
  %29 = load %struct.dpkg_ar_member*, %struct.dpkg_ar_member** %4, align 8, !dbg !430
  %30 = getelementptr inbounds %struct.dpkg_ar_member, %struct.dpkg_ar_member* %29, i32 0, i32 1, !dbg !431
  %31 = load i8*, i8** %30, align 8, !dbg !431
  %32 = load %struct.dpkg_ar_member*, %struct.dpkg_ar_member** %4, align 8, !dbg !432
  %33 = getelementptr inbounds %struct.dpkg_ar_member, %struct.dpkg_ar_member* %32, i32 0, i32 4, !dbg !433
  %34 = load i64, i64* %33, align 8, !dbg !433
  %35 = load %struct.dpkg_ar_member*, %struct.dpkg_ar_member** %4, align 8, !dbg !434
  %36 = getelementptr inbounds %struct.dpkg_ar_member, %struct.dpkg_ar_member* %35, i32 0, i32 6, !dbg !435
  %37 = load i32, i32* %36, align 4, !dbg !435
  %38 = zext i32 %37 to i64, !dbg !436
  %39 = load %struct.dpkg_ar_member*, %struct.dpkg_ar_member** %4, align 8, !dbg !437
  %40 = getelementptr inbounds %struct.dpkg_ar_member, %struct.dpkg_ar_member* %39, i32 0, i32 7, !dbg !438
  %41 = load i32, i32* %40, align 8, !dbg !438
  %42 = zext i32 %41 to i64, !dbg !439
  %43 = load %struct.dpkg_ar_member*, %struct.dpkg_ar_member** %4, align 8, !dbg !440
  %44 = getelementptr inbounds %struct.dpkg_ar_member, %struct.dpkg_ar_member* %43, i32 0, i32 5, !dbg !441
  %45 = load i32, i32* %44, align 8, !dbg !441
  %46 = zext i32 %45 to i64, !dbg !442
  %47 = load %struct.dpkg_ar_member*, %struct.dpkg_ar_member** %4, align 8, !dbg !443
  %48 = getelementptr inbounds %struct.dpkg_ar_member, %struct.dpkg_ar_member* %47, i32 0, i32 3, !dbg !444
  %49 = load i64, i64* %48, align 8, !dbg !444
  %50 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %28, i64 61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0), i8* %31, i64 %34, i64 %38, i64 %42, i64 %46, i64 %49) #6, !dbg !445
  store i32 %50, i32* %6, align 4, !dbg !446
  %51 = load i32, i32* %6, align 4, !dbg !447
  %52 = sext i32 %51 to i64, !dbg !447
  %53 = icmp ne i64 %52, 60, !dbg !449
  br i1 %53, label %54, label %59, !dbg !450

; <label>:54:                                     ; preds = %27
  %55 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i32 0, i32 0)) #6, !dbg !451
  %56 = load %struct.dpkg_ar*, %struct.dpkg_ar** %3, align 8, !dbg !452
  %57 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %56, i32 0, i32 0, !dbg !453
  %58 = load i8*, i8** %57, align 8, !dbg !453
  call void (i8*, ...) @ohshit(i8* %55, i8* %58) #7, !dbg !454
  unreachable, !dbg !456

; <label>:59:                                     ; preds = %27
  %60 = load %struct.dpkg_ar*, %struct.dpkg_ar** %3, align 8, !dbg !457
  %61 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %60, i32 0, i32 4, !dbg !459
  %62 = load i32, i32* %61, align 8, !dbg !459
  %63 = getelementptr inbounds [61 x i8], [61 x i8]* %5, i32 0, i32 0, !dbg !460
  %64 = load i32, i32* %6, align 4, !dbg !461
  %65 = sext i32 %64 to i64, !dbg !461
  %66 = call i64 @fd_write(i32 %62, i8* %63, i64 %65), !dbg !462
  %67 = icmp slt i64 %66, 0, !dbg !463
  br i1 %67, label %68, label %73, !dbg !464

; <label>:68:                                     ; preds = %59
  %69 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0)) #6, !dbg !465
  %70 = load %struct.dpkg_ar*, %struct.dpkg_ar** %3, align 8, !dbg !466
  %71 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %70, i32 0, i32 0, !dbg !467
  %72 = load i8*, i8** %71, align 8, !dbg !467
  call void (i8*, ...) @ohshite(i8* %69, i8* %72) #7, !dbg !468
  unreachable, !dbg !470

; <label>:73:                                     ; preds = %59
  ret void, !dbg !471
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @dpkg_ar_member_put_mem(%struct.dpkg_ar*, i8*, i8*, i64) #0 !dbg !472 {
  %5 = alloca %struct.dpkg_ar*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dpkg_ar_member, align 8
  store %struct.dpkg_ar* %0, %struct.dpkg_ar** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar** %5, metadata !479, metadata !47), !dbg !480
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !481, metadata !47), !dbg !482
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !483, metadata !47), !dbg !484
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !485, metadata !47), !dbg !486
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar_member* %9, metadata !487, metadata !47), !dbg !488
  %10 = load %struct.dpkg_ar*, %struct.dpkg_ar** %5, align 8, !dbg !489
  %11 = load i8*, i8** %6, align 8, !dbg !490
  %12 = load i64, i64* %8, align 8, !dbg !491
  call void @dpkg_ar_member_init(%struct.dpkg_ar* %10, %struct.dpkg_ar_member* %9, i8* %11, i64 %12), !dbg !492
  %13 = load %struct.dpkg_ar*, %struct.dpkg_ar** %5, align 8, !dbg !493
  call void @dpkg_ar_member_put_header(%struct.dpkg_ar* %13, %struct.dpkg_ar_member* %9), !dbg !494
  %14 = load %struct.dpkg_ar*, %struct.dpkg_ar** %5, align 8, !dbg !495
  %15 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %14, i32 0, i32 4, !dbg !497
  %16 = load i32, i32* %15, align 8, !dbg !497
  %17 = load i8*, i8** %7, align 8, !dbg !498
  %18 = load i64, i64* %8, align 8, !dbg !499
  %19 = call i64 @fd_write(i32 %16, i8* %17, i64 %18), !dbg !500
  %20 = icmp slt i64 %19, 0, !dbg !501
  br i1 %20, label %21, label %26, !dbg !502

; <label>:21:                                     ; preds = %4
  %22 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0)) #6, !dbg !503
  %23 = load %struct.dpkg_ar*, %struct.dpkg_ar** %5, align 8, !dbg !504
  %24 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %23, i32 0, i32 0, !dbg !505
  %25 = load i8*, i8** %24, align 8, !dbg !505
  call void (i8*, ...) @ohshite(i8* %22, i8* %25) #7, !dbg !506
  unreachable, !dbg !508

; <label>:26:                                     ; preds = %4
  %27 = load i64, i64* %8, align 8, !dbg !509
  %28 = and i64 %27, 1, !dbg !511
  %29 = icmp ne i64 %28, 0, !dbg !511
  br i1 %29, label %30, label %42, !dbg !512

; <label>:30:                                     ; preds = %26
  %31 = load %struct.dpkg_ar*, %struct.dpkg_ar** %5, align 8, !dbg !513
  %32 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %31, i32 0, i32 4, !dbg !515
  %33 = load i32, i32* %32, align 8, !dbg !515
  %34 = call i64 @fd_write(i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i64 1), !dbg !516
  %35 = icmp slt i64 %34, 0, !dbg !517
  br i1 %35, label %36, label %41, !dbg !518

; <label>:36:                                     ; preds = %30
  %37 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0)) #6, !dbg !519
  %38 = load %struct.dpkg_ar*, %struct.dpkg_ar** %5, align 8, !dbg !520
  %39 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %38, i32 0, i32 0, !dbg !521
  %40 = load i8*, i8** %39, align 8, !dbg !521
  call void (i8*, ...) @ohshite(i8* %37, i8* %40) #7, !dbg !522
  unreachable, !dbg !524

; <label>:41:                                     ; preds = %30
  br label %42, !dbg !525

; <label>:42:                                     ; preds = %41, %26
  ret void, !dbg !526
}

; Function Attrs: nounwind uwtable
define internal void @dpkg_ar_member_init(%struct.dpkg_ar*, %struct.dpkg_ar_member*, i8*, i64) #0 !dbg !527 {
  %5 = alloca %struct.dpkg_ar*, align 8
  %6 = alloca %struct.dpkg_ar_member*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.dpkg_ar* %0, %struct.dpkg_ar** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar** %5, metadata !530, metadata !47), !dbg !531
  store %struct.dpkg_ar_member* %1, %struct.dpkg_ar_member** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar_member** %6, metadata !532, metadata !47), !dbg !533
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !534, metadata !47), !dbg !535
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !536, metadata !47), !dbg !537
  %9 = load i8*, i8** %7, align 8, !dbg !538
  %10 = load %struct.dpkg_ar_member*, %struct.dpkg_ar_member** %6, align 8, !dbg !539
  %11 = getelementptr inbounds %struct.dpkg_ar_member, %struct.dpkg_ar_member* %10, i32 0, i32 1, !dbg !540
  store i8* %9, i8** %11, align 8, !dbg !541
  %12 = load i64, i64* %8, align 8, !dbg !542
  %13 = load %struct.dpkg_ar_member*, %struct.dpkg_ar_member** %6, align 8, !dbg !543
  %14 = getelementptr inbounds %struct.dpkg_ar_member, %struct.dpkg_ar_member* %13, i32 0, i32 3, !dbg !544
  store i64 %12, i64* %14, align 8, !dbg !545
  %15 = load %struct.dpkg_ar*, %struct.dpkg_ar** %5, align 8, !dbg !546
  %16 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %15, i32 0, i32 2, !dbg !547
  %17 = load i64, i64* %16, align 8, !dbg !547
  %18 = load %struct.dpkg_ar_member*, %struct.dpkg_ar_member** %6, align 8, !dbg !548
  %19 = getelementptr inbounds %struct.dpkg_ar_member, %struct.dpkg_ar_member* %18, i32 0, i32 4, !dbg !549
  store i64 %17, i64* %19, align 8, !dbg !550
  %20 = load %struct.dpkg_ar_member*, %struct.dpkg_ar_member** %6, align 8, !dbg !551
  %21 = getelementptr inbounds %struct.dpkg_ar_member, %struct.dpkg_ar_member* %20, i32 0, i32 5, !dbg !552
  store i32 33188, i32* %21, align 8, !dbg !553
  %22 = load %struct.dpkg_ar_member*, %struct.dpkg_ar_member** %6, align 8, !dbg !554
  %23 = getelementptr inbounds %struct.dpkg_ar_member, %struct.dpkg_ar_member* %22, i32 0, i32 6, !dbg !555
  store i32 0, i32* %23, align 4, !dbg !556
  %24 = load %struct.dpkg_ar_member*, %struct.dpkg_ar_member** %6, align 8, !dbg !557
  %25 = getelementptr inbounds %struct.dpkg_ar_member, %struct.dpkg_ar_member* %24, i32 0, i32 7, !dbg !558
  store i32 0, i32* %25, align 8, !dbg !559
  ret void, !dbg !560
}

; Function Attrs: nounwind uwtable
define void @dpkg_ar_member_put_file(%struct.dpkg_ar*, i8*, i32, i64) #0 !dbg !561 {
  %5 = alloca %struct.dpkg_ar*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.dpkg_error, align 8
  %10 = alloca %struct.dpkg_ar_member, align 8
  %11 = alloca %struct.stat, align 8
  store %struct.dpkg_ar* %0, %struct.dpkg_ar** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar** %5, metadata !564, metadata !47), !dbg !565
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !566, metadata !47), !dbg !567
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !568, metadata !47), !dbg !569
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !570, metadata !47), !dbg !571
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %9, metadata !572, metadata !47), !dbg !578
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar_member* %10, metadata !579, metadata !47), !dbg !580
  %12 = load i64, i64* %8, align 8, !dbg !581
  %13 = icmp sle i64 %12, 0, !dbg !583
  br i1 %13, label %14, label %24, !dbg !584

; <label>:14:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.stat* %11, metadata !585, metadata !47), !dbg !587
  %15 = load i32, i32* %7, align 4, !dbg !588
  %16 = call i32 @fstat(i32 %15, %struct.stat* %11) #6, !dbg !590
  %17 = icmp ne i32 %16, 0, !dbg !590
  br i1 %17, label %18, label %21, !dbg !591

; <label>:18:                                     ; preds = %14
  %19 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i32 0, i32 0)) #6, !dbg !592
  %20 = load i8*, i8** %6, align 8, !dbg !593
  call void (i8*, ...) @ohshite(i8* %19, i8* %20) #7, !dbg !594
  unreachable, !dbg !596

; <label>:21:                                     ; preds = %14
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 8, !dbg !597
  %23 = load i64, i64* %22, align 8, !dbg !597
  store i64 %23, i64* %8, align 8, !dbg !598
  br label %24, !dbg !599

; <label>:24:                                     ; preds = %21, %4
  %25 = load %struct.dpkg_ar*, %struct.dpkg_ar** %5, align 8, !dbg !600
  %26 = load i8*, i8** %6, align 8, !dbg !601
  %27 = load i64, i64* %8, align 8, !dbg !602
  call void @dpkg_ar_member_init(%struct.dpkg_ar* %25, %struct.dpkg_ar_member* %10, i8* %26, i64 %27), !dbg !603
  %28 = load %struct.dpkg_ar*, %struct.dpkg_ar** %5, align 8, !dbg !604
  call void @dpkg_ar_member_put_header(%struct.dpkg_ar* %28, %struct.dpkg_ar_member* %10), !dbg !605
  %29 = load i32, i32* %7, align 4, !dbg !606
  %30 = load %struct.dpkg_ar*, %struct.dpkg_ar** %5, align 8, !dbg !608
  %31 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %30, i32 0, i32 4, !dbg !609
  %32 = load i32, i32* %31, align 8, !dbg !609
  %33 = load i64, i64* %8, align 8, !dbg !610
  %34 = call i64 @buffer_copy_IntInt(i32 %29, i32 0, i8* null, i32 4, i32 %32, i32 2, i64 %33, %struct.dpkg_error* %9), !dbg !611
  %35 = icmp slt i64 %34, 0, !dbg !612
  br i1 %35, label %36, label %44, !dbg !613

; <label>:36:                                     ; preds = %24
  %37 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i32 0, i32 0)) #6, !dbg !614
  %38 = load i8*, i8** %6, align 8, !dbg !615
  %39 = load %struct.dpkg_ar*, %struct.dpkg_ar** %5, align 8, !dbg !616
  %40 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %39, i32 0, i32 0, !dbg !617
  %41 = load i8*, i8** %40, align 8, !dbg !617
  %42 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %9, i32 0, i32 2, !dbg !618
  %43 = load i8*, i8** %42, align 8, !dbg !618
  call void (i8*, ...) @ohshit(i8* %37, i8* %38, i8* %41, i8* %43) #7, !dbg !619
  unreachable, !dbg !621

; <label>:44:                                     ; preds = %24
  %45 = load i64, i64* %8, align 8, !dbg !622
  %46 = and i64 %45, 1, !dbg !624
  %47 = icmp ne i64 %46, 0, !dbg !624
  br i1 %47, label %48, label %60, !dbg !625

; <label>:48:                                     ; preds = %44
  %49 = load %struct.dpkg_ar*, %struct.dpkg_ar** %5, align 8, !dbg !626
  %50 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %49, i32 0, i32 4, !dbg !628
  %51 = load i32, i32* %50, align 8, !dbg !628
  %52 = call i64 @fd_write(i32 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i64 1), !dbg !629
  %53 = icmp slt i64 %52, 0, !dbg !630
  br i1 %53, label %54, label %59, !dbg !631

; <label>:54:                                     ; preds = %48
  %55 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0)) #6, !dbg !632
  %56 = load %struct.dpkg_ar*, %struct.dpkg_ar** %5, align 8, !dbg !633
  %57 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %56, i32 0, i32 0, !dbg !634
  %58 = load i8*, i8** %57, align 8, !dbg !634
  call void (i8*, ...) @ohshite(i8* %55, i8* %58) #7, !dbg !635
  unreachable, !dbg !637

; <label>:59:                                     ; preds = %48
  br label %60, !dbg !638

; <label>:60:                                     ; preds = %59, %44
  ret void, !dbg !639
}

declare i64 @buffer_copy_IntInt(i32, i32, i8*, i32, i32, i32, i64, %struct.dpkg_error*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9)
!1 = !DIFile(filename: "[inter]lib--dpkg--ar.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !4, line: 36, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!7 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!8 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!9 = !{!10, !13, !14}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !11, line: 134, baseType: !12)
!11 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!12 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!13 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!15 = !{i32 2, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!18 = distinct !DISubprogram(name: "dpkg_ar_fdopen", scope: !19, file: !19, line: 41, type: !20, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !45)
!19 = !DIFile(filename: "ar.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !27, !44}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_ar", file: !24, line: 57, size: 320, align: 64, elements: !25)
!24 = !DIFile(filename: "../../lib/dpkg/ar.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!25 = !{!26, !30, !36, !40, !43}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !23, file: !24, line: 58, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !23, file: !24, line: 59, baseType: !31, size: 32, align: 32, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !32, line: 70, baseType: !33)
!32 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !34, line: 129, baseType: !35)
!34 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!35 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !23, file: !24, line: 60, baseType: !37, size: 64, align: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !38, line: 75, baseType: !39)
!38 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !34, line: 139, baseType: !12)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !23, file: !24, line: 61, baseType: !41, size: 64, align: 64, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !32, line: 86, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !34, line: 131, baseType: !12)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !23, file: !24, line: 62, baseType: !44, size: 32, align: 32, offset: 256)
!44 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!45 = !{}
!46 = !DILocalVariable(name: "filename", arg: 1, scope: !18, file: !19, line: 41, type: !27)
!47 = !DIExpression()
!48 = !DILocation(line: 41, column: 28, scope: !18)
!49 = !DILocalVariable(name: "fd", arg: 2, scope: !18, file: !19, line: 41, type: !44)
!50 = !DILocation(line: 41, column: 42, scope: !18)
!51 = !DILocalVariable(name: "ar", scope: !18, file: !19, line: 43, type: !22)
!52 = !DILocation(line: 43, column: 18, scope: !18)
!53 = !DILocalVariable(name: "st", scope: !18, file: !19, line: 44, type: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !55, line: 46, size: 1152, align: 64, elements: !56)
!55 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!56 = !{!57, !59, !61, !63, !64, !66, !68, !69, !70, !71, !73, !75, !81, !82, !83}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !54, file: !55, line: 48, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !34, line: 124, baseType: !13)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !54, file: !55, line: 53, baseType: !60, size: 64, align: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !34, line: 127, baseType: !13)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !54, file: !55, line: 61, baseType: !62, size: 64, align: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !34, line: 130, baseType: !13)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !54, file: !55, line: 62, baseType: !33, size: 32, align: 32, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !54, file: !55, line: 64, baseType: !65, size: 32, align: 32, offset: 224)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !34, line: 125, baseType: !35)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !54, file: !55, line: 65, baseType: !67, size: 32, align: 32, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !34, line: 126, baseType: !35)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !54, file: !55, line: 67, baseType: !44, size: 32, align: 32, offset: 288)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !54, file: !55, line: 69, baseType: !58, size: 64, align: 64, offset: 320)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !54, file: !55, line: 74, baseType: !42, size: 64, align: 64, offset: 384)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !54, file: !55, line: 78, baseType: !72, size: 64, align: 64, offset: 448)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !34, line: 153, baseType: !12)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !54, file: !55, line: 80, baseType: !74, size: 64, align: 64, offset: 512)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !34, line: 158, baseType: !12)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !54, file: !55, line: 91, baseType: !76, size: 128, align: 64, offset: 576)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !38, line: 120, size: 128, align: 64, elements: !77)
!77 = !{!78, !79}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !76, file: !38, line: 122, baseType: !39, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !76, file: !38, line: 123, baseType: !80, size: 64, align: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !34, line: 175, baseType: !12)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !54, file: !55, line: 92, baseType: !76, size: 128, align: 64, offset: 704)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !54, file: !55, line: 93, baseType: !76, size: 128, align: 64, offset: 832)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !54, file: !55, line: 106, baseType: !84, size: 192, align: 64, offset: 960)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 192, align: 64, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 3)
!87 = !DILocation(line: 44, column: 14, scope: !18)
!88 = !DILocation(line: 46, column: 12, scope: !89)
!89 = distinct !DILexicalBlock(scope: !18, file: !19, line: 46, column: 6)
!90 = !DILocation(line: 46, column: 6, scope: !89)
!91 = !DILocation(line: 46, column: 21, scope: !89)
!92 = !DILocation(line: 46, column: 6, scope: !18)
!93 = !DILocation(line: 47, column: 10, scope: !89)
!94 = !DILocation(line: 47, column: 3, scope: !95)
!95 = !DILexicalBlockFile(scope: !89, file: !19, discriminator: 1)
!96 = !DILocation(line: 47, column: 3, scope: !89)
!97 = !DILocation(line: 49, column: 7, scope: !18)
!98 = !DILocation(line: 49, column: 5, scope: !18)
!99 = !DILocation(line: 50, column: 13, scope: !18)
!100 = !DILocation(line: 50, column: 2, scope: !18)
!101 = !DILocation(line: 50, column: 6, scope: !18)
!102 = !DILocation(line: 50, column: 11, scope: !18)
!103 = !DILocation(line: 51, column: 16, scope: !18)
!104 = !DILocation(line: 51, column: 2, scope: !18)
!105 = !DILocation(line: 51, column: 6, scope: !18)
!106 = !DILocation(line: 51, column: 11, scope: !18)
!107 = !DILocation(line: 52, column: 16, scope: !18)
!108 = !DILocation(line: 52, column: 2, scope: !18)
!109 = !DILocation(line: 52, column: 6, scope: !18)
!110 = !DILocation(line: 52, column: 11, scope: !18)
!111 = !DILocation(line: 53, column: 15, scope: !18)
!112 = !DILocation(line: 53, column: 23, scope: !18)
!113 = !DILocation(line: 53, column: 2, scope: !18)
!114 = !DILocation(line: 53, column: 6, scope: !18)
!115 = !DILocation(line: 53, column: 11, scope: !18)
!116 = !DILocation(line: 54, column: 11, scope: !18)
!117 = !DILocation(line: 54, column: 2, scope: !18)
!118 = !DILocation(line: 54, column: 6, scope: !18)
!119 = !DILocation(line: 54, column: 9, scope: !18)
!120 = !DILocation(line: 56, column: 9, scope: !18)
!121 = !DILocation(line: 56, column: 2, scope: !18)
!122 = distinct !DISubprogram(name: "dpkg_ar_open", scope: !19, file: !19, line: 60, type: !123, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !45)
!123 = !DISubroutineType(types: !124)
!124 = !{!22, !27}
!125 = !DILocalVariable(name: "filename", arg: 1, scope: !122, file: !19, line: 60, type: !27)
!126 = !DILocation(line: 60, column: 26, scope: !122)
!127 = !DILocalVariable(name: "fd", scope: !122, file: !19, line: 62, type: !44)
!128 = !DILocation(line: 62, column: 6, scope: !122)
!129 = !DILocation(line: 64, column: 13, scope: !130)
!130 = distinct !DILexicalBlock(scope: !122, file: !19, line: 64, column: 6)
!131 = !DILocation(line: 64, column: 6, scope: !130)
!132 = !DILocation(line: 64, column: 28, scope: !130)
!133 = !DILocation(line: 64, column: 6, scope: !122)
!134 = !DILocation(line: 65, column: 6, scope: !130)
!135 = !DILocation(line: 65, column: 3, scope: !130)
!136 = !DILocation(line: 67, column: 13, scope: !130)
!137 = !DILocation(line: 67, column: 8, scope: !130)
!138 = !DILocation(line: 67, column: 6, scope: !130)
!139 = !DILocation(line: 68, column: 6, scope: !140)
!140 = distinct !DILexicalBlock(scope: !122, file: !19, line: 68, column: 6)
!141 = !DILocation(line: 68, column: 9, scope: !140)
!142 = !DILocation(line: 68, column: 6, scope: !122)
!143 = !DILocation(line: 69, column: 10, scope: !140)
!144 = !DILocation(line: 69, column: 48, scope: !140)
!145 = !DILocation(line: 69, column: 3, scope: !146)
!146 = !DILexicalBlockFile(scope: !140, file: !19, discriminator: 1)
!147 = !DILocation(line: 69, column: 3, scope: !140)
!148 = !DILocation(line: 71, column: 24, scope: !122)
!149 = !DILocation(line: 71, column: 34, scope: !122)
!150 = !DILocation(line: 71, column: 9, scope: !122)
!151 = !DILocation(line: 71, column: 2, scope: !122)
!152 = distinct !DISubprogram(name: "dpkg_ar_create", scope: !19, file: !19, line: 75, type: !153, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !45)
!153 = !DISubroutineType(types: !154)
!154 = !{!22, !27, !31}
!155 = !DILocalVariable(name: "filename", arg: 1, scope: !152, file: !19, line: 75, type: !27)
!156 = !DILocation(line: 75, column: 28, scope: !152)
!157 = !DILocalVariable(name: "mode", arg: 2, scope: !152, file: !19, line: 75, type: !31)
!158 = !DILocation(line: 75, column: 45, scope: !152)
!159 = !DILocalVariable(name: "fd", scope: !152, file: !19, line: 77, type: !44)
!160 = !DILocation(line: 77, column: 6, scope: !152)
!161 = !DILocation(line: 79, column: 13, scope: !152)
!162 = !DILocation(line: 79, column: 23, scope: !152)
!163 = !DILocation(line: 79, column: 7, scope: !152)
!164 = !DILocation(line: 79, column: 5, scope: !152)
!165 = !DILocation(line: 80, column: 6, scope: !166)
!166 = distinct !DILexicalBlock(scope: !152, file: !19, line: 80, column: 6)
!167 = !DILocation(line: 80, column: 9, scope: !166)
!168 = !DILocation(line: 80, column: 6, scope: !152)
!169 = !DILocation(line: 81, column: 10, scope: !166)
!170 = !DILocation(line: 81, column: 42, scope: !166)
!171 = !DILocation(line: 81, column: 3, scope: !172)
!172 = !DILexicalBlockFile(scope: !166, file: !19, discriminator: 1)
!173 = !DILocation(line: 81, column: 3, scope: !166)
!174 = !DILocation(line: 83, column: 24, scope: !152)
!175 = !DILocation(line: 83, column: 34, scope: !152)
!176 = !DILocation(line: 83, column: 9, scope: !152)
!177 = !DILocation(line: 83, column: 2, scope: !152)
!178 = distinct !DISubprogram(name: "dpkg_ar_set_mtime", scope: !19, file: !19, line: 87, type: !179, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !45)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !22, !37}
!181 = !DILocalVariable(name: "ar", arg: 1, scope: !178, file: !19, line: 87, type: !22)
!182 = !DILocation(line: 87, column: 35, scope: !178)
!183 = !DILocalVariable(name: "mtime", arg: 2, scope: !178, file: !19, line: 87, type: !37)
!184 = !DILocation(line: 87, column: 46, scope: !178)
!185 = !DILocation(line: 89, column: 13, scope: !178)
!186 = !DILocation(line: 89, column: 2, scope: !178)
!187 = !DILocation(line: 89, column: 6, scope: !178)
!188 = !DILocation(line: 89, column: 11, scope: !178)
!189 = !DILocation(line: 90, column: 1, scope: !178)
!190 = distinct !DISubprogram(name: "dpkg_ar_close", scope: !19, file: !19, line: 93, type: !191, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !45)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !22}
!193 = !DILocalVariable(name: "ar", arg: 1, scope: !190, file: !19, line: 93, type: !22)
!194 = !DILocation(line: 93, column: 31, scope: !190)
!195 = !DILocation(line: 95, column: 12, scope: !196)
!196 = distinct !DILexicalBlock(scope: !190, file: !19, line: 95, column: 6)
!197 = !DILocation(line: 95, column: 16, scope: !196)
!198 = !DILocation(line: 95, column: 6, scope: !196)
!199 = !DILocation(line: 95, column: 6, scope: !190)
!200 = !DILocation(line: 96, column: 10, scope: !196)
!201 = !DILocation(line: 96, column: 42, scope: !196)
!202 = !DILocation(line: 96, column: 46, scope: !196)
!203 = !DILocation(line: 96, column: 3, scope: !204)
!204 = !DILexicalBlockFile(scope: !196, file: !19, discriminator: 1)
!205 = !DILocation(line: 96, column: 3, scope: !196)
!206 = !DILocation(line: 97, column: 7, scope: !190)
!207 = !DILocation(line: 97, column: 2, scope: !190)
!208 = !DILocation(line: 98, column: 1, scope: !190)
!209 = distinct !DISubprogram(name: "dpkg_ar_normalize_name", scope: !19, file: !19, line: 113, type: !210, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !45)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_ar_hdr", file: !24, line: 45, size: 480, align: 8, elements: !214)
!214 = !{!215, !219, !223, !227, !228, !232, !236}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "ar_name", scope: !213, file: !24, line: 46, baseType: !216, size: 128, align: 8)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 128, align: 8, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 16)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "ar_date", scope: !213, file: !24, line: 47, baseType: !220, size: 96, align: 8, offset: 128)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 96, align: 8, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 12)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "ar_uid", scope: !213, file: !24, line: 48, baseType: !224, size: 48, align: 8, offset: 224)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 48, align: 8, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 6)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "ar_gid", scope: !213, file: !24, line: 48, baseType: !224, size: 48, align: 8, offset: 272)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "ar_mode", scope: !213, file: !24, line: 49, baseType: !229, size: 64, align: 8, offset: 320)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, align: 8, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 8)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "ar_size", scope: !213, file: !24, line: 50, baseType: !233, size: 80, align: 8, offset: 384)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 80, align: 8, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 10)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "ar_fmag", scope: !213, file: !24, line: 51, baseType: !237, size: 16, align: 8, offset: 464)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 16, align: 8, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 2)
!240 = !DILocalVariable(name: "arh", arg: 1, scope: !209, file: !19, line: 113, type: !212)
!241 = !DILocation(line: 113, column: 44, scope: !209)
!242 = !DILocalVariable(name: "name", scope: !209, file: !19, line: 115, type: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!244 = !DILocation(line: 115, column: 8, scope: !209)
!245 = !DILocation(line: 115, column: 15, scope: !209)
!246 = !DILocation(line: 115, column: 20, scope: !209)
!247 = !DILocalVariable(name: "i", scope: !209, file: !19, line: 116, type: !44)
!248 = !DILocation(line: 116, column: 6, scope: !209)
!249 = !DILocation(line: 119, column: 9, scope: !250)
!250 = distinct !DILexicalBlock(scope: !209, file: !19, line: 119, column: 2)
!251 = !DILocation(line: 119, column: 7, scope: !250)
!252 = !DILocation(line: 119, column: 37, scope: !253)
!253 = !DILexicalBlockFile(scope: !254, file: !19, discriminator: 1)
!254 = distinct !DILexicalBlock(scope: !250, file: !19, line: 119, column: 2)
!255 = !DILocation(line: 119, column: 39, scope: !253)
!256 = !DILocation(line: 119, column: 44, scope: !253)
!257 = !DILocation(line: 119, column: 52, scope: !258)
!258 = !DILexicalBlockFile(scope: !254, file: !19, discriminator: 2)
!259 = !DILocation(line: 119, column: 47, scope: !258)
!260 = !DILocation(line: 119, column: 55, scope: !258)
!261 = !DILocation(line: 119, column: 2, scope: !262)
!262 = !DILexicalBlockFile(scope: !250, file: !19, discriminator: 3)
!263 = !DILocation(line: 120, column: 8, scope: !254)
!264 = !DILocation(line: 120, column: 3, scope: !254)
!265 = !DILocation(line: 120, column: 11, scope: !254)
!266 = !DILocation(line: 119, column: 64, scope: !267)
!267 = !DILexicalBlockFile(scope: !254, file: !19, discriminator: 4)
!268 = !DILocation(line: 119, column: 2, scope: !267)
!269 = distinct !{!269, !270}
!270 = !DILocation(line: 119, column: 2, scope: !209)
!271 = !DILocation(line: 123, column: 6, scope: !272)
!272 = distinct !DILexicalBlock(scope: !209, file: !19, line: 123, column: 6)
!273 = !DILocation(line: 123, column: 8, scope: !272)
!274 = !DILocation(line: 123, column: 13, scope: !272)
!275 = !DILocation(line: 123, column: 21, scope: !276)
!276 = !DILexicalBlockFile(scope: !272, file: !19, discriminator: 1)
!277 = !DILocation(line: 123, column: 16, scope: !276)
!278 = !DILocation(line: 123, column: 24, scope: !276)
!279 = !DILocation(line: 123, column: 6, scope: !276)
!280 = !DILocation(line: 124, column: 8, scope: !272)
!281 = !DILocation(line: 124, column: 3, scope: !272)
!282 = !DILocation(line: 124, column: 11, scope: !272)
!283 = !DILocation(line: 125, column: 1, scope: !209)
!284 = distinct !DISubprogram(name: "dpkg_ar_member_get_size", scope: !19, file: !19, line: 128, type: !285, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !45)
!285 = !DISubroutineType(types: !286)
!286 = !{!41, !22, !212}
!287 = !DILocalVariable(name: "ar", arg: 1, scope: !284, file: !19, line: 128, type: !22)
!288 = !DILocation(line: 128, column: 41, scope: !284)
!289 = !DILocalVariable(name: "arh", arg: 2, scope: !284, file: !19, line: 128, type: !212)
!290 = !DILocation(line: 128, column: 65, scope: !284)
!291 = !DILocalVariable(name: "str", scope: !284, file: !19, line: 130, type: !27)
!292 = !DILocation(line: 130, column: 14, scope: !284)
!293 = !DILocation(line: 130, column: 20, scope: !284)
!294 = !DILocation(line: 130, column: 25, scope: !284)
!295 = !DILocalVariable(name: "len", scope: !284, file: !19, line: 131, type: !44)
!296 = !DILocation(line: 131, column: 6, scope: !284)
!297 = !DILocalVariable(name: "size", scope: !284, file: !19, line: 132, type: !41)
!298 = !DILocation(line: 132, column: 8, scope: !284)
!299 = !DILocation(line: 134, column: 2, scope: !284)
!300 = !DILocation(line: 134, column: 9, scope: !301)
!301 = !DILexicalBlockFile(scope: !284, file: !19, discriminator: 1)
!302 = !DILocation(line: 134, column: 13, scope: !301)
!303 = !DILocation(line: 134, column: 17, scope: !304)
!304 = !DILexicalBlockFile(scope: !284, file: !19, discriminator: 2)
!305 = !DILocation(line: 134, column: 16, scope: !304)
!306 = !DILocation(line: 134, column: 21, scope: !304)
!307 = !DILocation(line: 134, column: 2, scope: !308)
!308 = !DILexicalBlockFile(scope: !284, file: !19, discriminator: 3)
!309 = !DILocation(line: 135, column: 6, scope: !284)
!310 = !DILocation(line: 135, column: 13, scope: !284)
!311 = !DILocation(line: 134, column: 2, scope: !312)
!312 = !DILexicalBlockFile(scope: !284, file: !19, discriminator: 4)
!313 = distinct !{!313, !299}
!314 = !DILocation(line: 137, column: 2, scope: !284)
!315 = !DILocation(line: 137, column: 12, scope: !301)
!316 = !DILocation(line: 137, column: 2, scope: !301)
!317 = !DILocation(line: 138, column: 8, scope: !318)
!318 = distinct !DILexicalBlock(scope: !319, file: !19, line: 138, column: 7)
!319 = distinct !DILexicalBlock(scope: !284, file: !19, line: 137, column: 16)
!320 = !DILocation(line: 138, column: 7, scope: !318)
!321 = !DILocation(line: 138, column: 12, scope: !318)
!322 = !DILocation(line: 138, column: 7, scope: !319)
!323 = !DILocation(line: 139, column: 4, scope: !318)
!324 = !DILocation(line: 140, column: 8, scope: !325)
!325 = distinct !DILexicalBlock(scope: !319, file: !19, line: 140, column: 7)
!326 = !DILocation(line: 140, column: 7, scope: !325)
!327 = !DILocation(line: 140, column: 12, scope: !325)
!328 = !DILocation(line: 140, column: 18, scope: !325)
!329 = !DILocation(line: 140, column: 22, scope: !330)
!330 = !DILexicalBlockFile(scope: !325, file: !19, discriminator: 1)
!331 = !DILocation(line: 140, column: 21, scope: !330)
!332 = !DILocation(line: 140, column: 26, scope: !330)
!333 = !DILocation(line: 140, column: 7, scope: !330)
!334 = !DILocation(line: 141, column: 10, scope: !325)
!335 = !DILocation(line: 143, column: 12, scope: !325)
!336 = !DILocation(line: 143, column: 11, scope: !325)
!337 = !DILocation(line: 143, column: 17, scope: !325)
!338 = !DILocation(line: 143, column: 21, scope: !325)
!339 = !DILocation(line: 143, column: 27, scope: !325)
!340 = !DILocation(line: 143, column: 32, scope: !325)
!341 = !DILocation(line: 141, column: 4, scope: !330)
!342 = !DILocation(line: 141, column: 4, scope: !325)
!343 = !DILocation(line: 145, column: 8, scope: !319)
!344 = !DILocation(line: 146, column: 15, scope: !319)
!345 = !DILocation(line: 146, column: 11, scope: !319)
!346 = !DILocation(line: 146, column: 18, scope: !319)
!347 = !DILocation(line: 146, column: 8, scope: !319)
!348 = !DILocation(line: 137, column: 2, scope: !304)
!349 = distinct !{!349, !314}
!350 = !DILocation(line: 149, column: 9, scope: !284)
!351 = !DILocation(line: 149, column: 2, scope: !284)
!352 = distinct !DISubprogram(name: "dpkg_ar_member_is_illegal", scope: !19, file: !19, line: 153, type: !353, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !45)
!353 = !DISubroutineType(types: !354)
!354 = !{!355, !212}
!355 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!356 = !DILocalVariable(name: "arh", arg: 1, scope: !352, file: !19, line: 153, type: !212)
!357 = !DILocation(line: 153, column: 47, scope: !352)
!358 = !DILocation(line: 155, column: 16, scope: !352)
!359 = !DILocation(line: 155, column: 21, scope: !352)
!360 = !DILocation(line: 155, column: 9, scope: !352)
!361 = !DILocation(line: 155, column: 59, scope: !352)
!362 = !DILocation(line: 155, column: 2, scope: !352)
!363 = distinct !DISubprogram(name: "dpkg_ar_put_magic", scope: !19, file: !19, line: 159, type: !191, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !45)
!364 = !DILocalVariable(name: "ar", arg: 1, scope: !363, file: !19, line: 159, type: !22)
!365 = !DILocation(line: 159, column: 35, scope: !363)
!366 = !DILocation(line: 161, column: 15, scope: !367)
!367 = distinct !DILexicalBlock(scope: !363, file: !19, line: 161, column: 6)
!368 = !DILocation(line: 161, column: 19, scope: !367)
!369 = !DILocation(line: 161, column: 6, scope: !367)
!370 = !DILocation(line: 161, column: 57, scope: !367)
!371 = !DILocation(line: 161, column: 6, scope: !363)
!372 = !DILocation(line: 162, column: 10, scope: !367)
!373 = !DILocation(line: 162, column: 42, scope: !367)
!374 = !DILocation(line: 162, column: 46, scope: !367)
!375 = !DILocation(line: 162, column: 3, scope: !376)
!376 = !DILexicalBlockFile(scope: !367, file: !19, discriminator: 1)
!377 = !DILocation(line: 162, column: 3, scope: !367)
!378 = !DILocation(line: 163, column: 1, scope: !363)
!379 = distinct !DISubprogram(name: "dpkg_ar_member_put_header", scope: !19, file: !19, line: 166, type: !380, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !45)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !22, !382}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_ar_member", file: !24, line: 68, size: 448, align: 64, elements: !384)
!384 = !{!385, !386, !387, !388, !389, !390, !391, !393}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !383, file: !24, line: 69, baseType: !382, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !383, file: !24, line: 70, baseType: !27, size: 64, align: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !383, file: !24, line: 71, baseType: !41, size: 64, align: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !383, file: !24, line: 72, baseType: !41, size: 64, align: 64, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !383, file: !24, line: 73, baseType: !37, size: 64, align: 64, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !383, file: !24, line: 74, baseType: !31, size: 32, align: 32, offset: 320)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !383, file: !24, line: 75, baseType: !392, size: 32, align: 32, offset: 352)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !32, line: 80, baseType: !65)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !383, file: !24, line: 76, baseType: !394, size: 32, align: 32, offset: 384)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !32, line: 65, baseType: !67)
!395 = !DILocalVariable(name: "ar", arg: 1, scope: !379, file: !19, line: 166, type: !22)
!396 = !DILocation(line: 166, column: 43, scope: !379)
!397 = !DILocalVariable(name: "member", arg: 2, scope: !379, file: !19, line: 166, type: !382)
!398 = !DILocation(line: 166, column: 70, scope: !379)
!399 = !DILocalVariable(name: "header", scope: !379, file: !19, line: 168, type: !400)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 488, align: 8, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 61)
!403 = !DILocation(line: 168, column: 7, scope: !379)
!404 = !DILocalVariable(name: "n", scope: !379, file: !19, line: 169, type: !44)
!405 = !DILocation(line: 169, column: 6, scope: !379)
!406 = !DILocation(line: 171, column: 13, scope: !407)
!407 = distinct !DILexicalBlock(scope: !379, file: !19, line: 171, column: 6)
!408 = !DILocation(line: 171, column: 21, scope: !407)
!409 = !DILocation(line: 171, column: 6, scope: !407)
!410 = !DILocation(line: 171, column: 27, scope: !407)
!411 = !DILocation(line: 171, column: 6, scope: !379)
!412 = !DILocation(line: 172, column: 9, scope: !407)
!413 = !DILocation(line: 172, column: 51, scope: !407)
!414 = !DILocation(line: 172, column: 59, scope: !407)
!415 = !DILocation(line: 172, column: 3, scope: !416)
!416 = !DILexicalBlockFile(scope: !407, file: !19, discriminator: 1)
!417 = !DILocation(line: 172, column: 3, scope: !407)
!418 = !DILocation(line: 173, column: 6, scope: !419)
!419 = distinct !DILexicalBlock(scope: !379, file: !19, line: 173, column: 6)
!420 = !DILocation(line: 173, column: 14, scope: !419)
!421 = !DILocation(line: 173, column: 19, scope: !419)
!422 = !DILocation(line: 173, column: 6, scope: !379)
!423 = !DILocation(line: 174, column: 9, scope: !419)
!424 = !DILocation(line: 174, column: 54, scope: !419)
!425 = !DILocation(line: 174, column: 62, scope: !419)
!426 = !DILocation(line: 174, column: 3, scope: !427)
!427 = !DILexicalBlockFile(scope: !419, file: !19, discriminator: 1)
!428 = !DILocation(line: 174, column: 3, scope: !419)
!429 = !DILocation(line: 176, column: 15, scope: !379)
!430 = !DILocation(line: 178, column: 15, scope: !379)
!431 = !DILocation(line: 178, column: 23, scope: !379)
!432 = !DILocation(line: 178, column: 44, scope: !379)
!433 = !DILocation(line: 178, column: 52, scope: !379)
!434 = !DILocation(line: 179, column: 30, scope: !379)
!435 = !DILocation(line: 179, column: 38, scope: !379)
!436 = !DILocation(line: 179, column: 15, scope: !379)
!437 = !DILocation(line: 179, column: 58, scope: !379)
!438 = !DILocation(line: 179, column: 66, scope: !379)
!439 = !DILocation(line: 179, column: 43, scope: !379)
!440 = !DILocation(line: 180, column: 30, scope: !379)
!441 = !DILocation(line: 180, column: 38, scope: !379)
!442 = !DILocation(line: 180, column: 15, scope: !379)
!443 = !DILocation(line: 180, column: 54, scope: !379)
!444 = !DILocation(line: 180, column: 62, scope: !379)
!445 = !DILocation(line: 176, column: 6, scope: !379)
!446 = !DILocation(line: 176, column: 4, scope: !379)
!447 = !DILocation(line: 181, column: 6, scope: !448)
!448 = distinct !DILexicalBlock(scope: !379, file: !19, line: 181, column: 6)
!449 = !DILocation(line: 181, column: 8, scope: !448)
!450 = !DILocation(line: 181, column: 6, scope: !379)
!451 = !DILocation(line: 182, column: 9, scope: !448)
!452 = !DILocation(line: 182, column: 52, scope: !448)
!453 = !DILocation(line: 182, column: 56, scope: !448)
!454 = !DILocation(line: 182, column: 3, scope: !455)
!455 = !DILexicalBlockFile(scope: !448, file: !19, discriminator: 1)
!456 = !DILocation(line: 182, column: 3, scope: !448)
!457 = !DILocation(line: 184, column: 15, scope: !458)
!458 = distinct !DILexicalBlock(scope: !379, file: !19, line: 184, column: 6)
!459 = !DILocation(line: 184, column: 19, scope: !458)
!460 = !DILocation(line: 184, column: 23, scope: !458)
!461 = !DILocation(line: 184, column: 31, scope: !458)
!462 = !DILocation(line: 184, column: 6, scope: !458)
!463 = !DILocation(line: 184, column: 34, scope: !458)
!464 = !DILocation(line: 184, column: 6, scope: !379)
!465 = !DILocation(line: 185, column: 10, scope: !458)
!466 = !DILocation(line: 185, column: 42, scope: !458)
!467 = !DILocation(line: 185, column: 46, scope: !458)
!468 = !DILocation(line: 185, column: 3, scope: !469)
!469 = !DILexicalBlockFile(scope: !458, file: !19, discriminator: 1)
!470 = !DILocation(line: 185, column: 3, scope: !458)
!471 = !DILocation(line: 186, column: 1, scope: !379)
!472 = distinct !DISubprogram(name: "dpkg_ar_member_put_mem", scope: !19, file: !19, line: 189, type: !473, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !45)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !22, !27, !475, !477}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, align: 64)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !478, line: 216, baseType: !13)
!478 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!479 = !DILocalVariable(name: "ar", arg: 1, scope: !472, file: !19, line: 189, type: !22)
!480 = !DILocation(line: 189, column: 40, scope: !472)
!481 = !DILocalVariable(name: "name", arg: 2, scope: !472, file: !19, line: 190, type: !27)
!482 = !DILocation(line: 190, column: 36, scope: !472)
!483 = !DILocalVariable(name: "data", arg: 3, scope: !472, file: !19, line: 190, type: !475)
!484 = !DILocation(line: 190, column: 54, scope: !472)
!485 = !DILocalVariable(name: "size", arg: 4, scope: !472, file: !19, line: 190, type: !477)
!486 = !DILocation(line: 190, column: 67, scope: !472)
!487 = !DILocalVariable(name: "member", scope: !472, file: !19, line: 192, type: !383)
!488 = !DILocation(line: 192, column: 24, scope: !472)
!489 = !DILocation(line: 194, column: 22, scope: !472)
!490 = !DILocation(line: 194, column: 35, scope: !472)
!491 = !DILocation(line: 194, column: 41, scope: !472)
!492 = !DILocation(line: 194, column: 2, scope: !472)
!493 = !DILocation(line: 195, column: 28, scope: !472)
!494 = !DILocation(line: 195, column: 2, scope: !472)
!495 = !DILocation(line: 198, column: 15, scope: !496)
!496 = distinct !DILexicalBlock(scope: !472, file: !19, line: 198, column: 6)
!497 = !DILocation(line: 198, column: 19, scope: !496)
!498 = !DILocation(line: 198, column: 23, scope: !496)
!499 = !DILocation(line: 198, column: 29, scope: !496)
!500 = !DILocation(line: 198, column: 6, scope: !496)
!501 = !DILocation(line: 198, column: 35, scope: !496)
!502 = !DILocation(line: 198, column: 6, scope: !472)
!503 = !DILocation(line: 199, column: 10, scope: !496)
!504 = !DILocation(line: 199, column: 42, scope: !496)
!505 = !DILocation(line: 199, column: 46, scope: !496)
!506 = !DILocation(line: 199, column: 3, scope: !507)
!507 = !DILexicalBlockFile(scope: !496, file: !19, discriminator: 1)
!508 = !DILocation(line: 199, column: 3, scope: !496)
!509 = !DILocation(line: 201, column: 6, scope: !510)
!510 = distinct !DILexicalBlock(scope: !472, file: !19, line: 201, column: 6)
!511 = !DILocation(line: 201, column: 11, scope: !510)
!512 = !DILocation(line: 201, column: 6, scope: !472)
!513 = !DILocation(line: 202, column: 16, scope: !514)
!514 = distinct !DILexicalBlock(scope: !510, file: !19, line: 202, column: 7)
!515 = !DILocation(line: 202, column: 20, scope: !514)
!516 = !DILocation(line: 202, column: 7, scope: !514)
!517 = !DILocation(line: 202, column: 33, scope: !514)
!518 = !DILocation(line: 202, column: 7, scope: !510)
!519 = !DILocation(line: 203, column: 11, scope: !514)
!520 = !DILocation(line: 203, column: 43, scope: !514)
!521 = !DILocation(line: 203, column: 47, scope: !514)
!522 = !DILocation(line: 203, column: 4, scope: !523)
!523 = !DILexicalBlockFile(scope: !514, file: !19, discriminator: 1)
!524 = !DILocation(line: 203, column: 4, scope: !514)
!525 = !DILocation(line: 202, column: 35, scope: !523)
!526 = !DILocation(line: 204, column: 1, scope: !472)
!527 = distinct !DISubprogram(name: "dpkg_ar_member_init", scope: !19, file: !19, line: 101, type: !528, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !45)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !22, !382, !27, !41}
!530 = !DILocalVariable(name: "ar", arg: 1, scope: !527, file: !19, line: 101, type: !22)
!531 = !DILocation(line: 101, column: 37, scope: !527)
!532 = !DILocalVariable(name: "member", arg: 2, scope: !527, file: !19, line: 101, type: !382)
!533 = !DILocation(line: 101, column: 64, scope: !527)
!534 = !DILocalVariable(name: "name", arg: 3, scope: !527, file: !19, line: 102, type: !27)
!535 = !DILocation(line: 102, column: 33, scope: !527)
!536 = !DILocalVariable(name: "size", arg: 4, scope: !527, file: !19, line: 102, type: !41)
!537 = !DILocation(line: 102, column: 45, scope: !527)
!538 = !DILocation(line: 104, column: 17, scope: !527)
!539 = !DILocation(line: 104, column: 2, scope: !527)
!540 = !DILocation(line: 104, column: 10, scope: !527)
!541 = !DILocation(line: 104, column: 15, scope: !527)
!542 = !DILocation(line: 105, column: 17, scope: !527)
!543 = !DILocation(line: 105, column: 2, scope: !527)
!544 = !DILocation(line: 105, column: 10, scope: !527)
!545 = !DILocation(line: 105, column: 15, scope: !527)
!546 = !DILocation(line: 106, column: 17, scope: !527)
!547 = !DILocation(line: 106, column: 21, scope: !527)
!548 = !DILocation(line: 106, column: 2, scope: !527)
!549 = !DILocation(line: 106, column: 10, scope: !527)
!550 = !DILocation(line: 106, column: 15, scope: !527)
!551 = !DILocation(line: 107, column: 2, scope: !527)
!552 = !DILocation(line: 107, column: 10, scope: !527)
!553 = !DILocation(line: 107, column: 15, scope: !527)
!554 = !DILocation(line: 108, column: 2, scope: !527)
!555 = !DILocation(line: 108, column: 10, scope: !527)
!556 = !DILocation(line: 108, column: 14, scope: !527)
!557 = !DILocation(line: 109, column: 2, scope: !527)
!558 = !DILocation(line: 109, column: 10, scope: !527)
!559 = !DILocation(line: 109, column: 14, scope: !527)
!560 = !DILocation(line: 110, column: 1, scope: !527)
!561 = distinct !DISubprogram(name: "dpkg_ar_member_put_file", scope: !19, file: !19, line: 207, type: !562, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !45)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !22, !27, !44, !41}
!564 = !DILocalVariable(name: "ar", arg: 1, scope: !561, file: !19, line: 207, type: !22)
!565 = !DILocation(line: 207, column: 41, scope: !561)
!566 = !DILocalVariable(name: "name", arg: 2, scope: !561, file: !19, line: 208, type: !27)
!567 = !DILocation(line: 208, column: 37, scope: !561)
!568 = !DILocalVariable(name: "fd", arg: 3, scope: !561, file: !19, line: 208, type: !44)
!569 = !DILocation(line: 208, column: 47, scope: !561)
!570 = !DILocalVariable(name: "size", arg: 4, scope: !561, file: !19, line: 208, type: !41)
!571 = !DILocation(line: 208, column: 57, scope: !561)
!572 = !DILocalVariable(name: "err", scope: !561, file: !19, line: 210, type: !573)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !4, line: 42, size: 128, align: 64, elements: !574)
!574 = !{!575, !576, !577}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !573, file: !4, line: 43, baseType: !3, size: 32, align: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !573, file: !4, line: 45, baseType: !44, size: 32, align: 32, offset: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !573, file: !4, line: 46, baseType: !243, size: 64, align: 64, offset: 64)
!578 = !DILocation(line: 210, column: 20, scope: !561)
!579 = !DILocalVariable(name: "member", scope: !561, file: !19, line: 211, type: !383)
!580 = !DILocation(line: 211, column: 24, scope: !561)
!581 = !DILocation(line: 213, column: 6, scope: !582)
!582 = distinct !DILexicalBlock(scope: !561, file: !19, line: 213, column: 6)
!583 = !DILocation(line: 213, column: 11, scope: !582)
!584 = !DILocation(line: 213, column: 6, scope: !561)
!585 = !DILocalVariable(name: "st", scope: !586, file: !19, line: 214, type: !54)
!586 = distinct !DILexicalBlock(scope: !582, file: !19, line: 213, column: 17)
!587 = !DILocation(line: 214, column: 15, scope: !586)
!588 = !DILocation(line: 216, column: 13, scope: !589)
!589 = distinct !DILexicalBlock(scope: !586, file: !19, line: 216, column: 7)
!590 = !DILocation(line: 216, column: 7, scope: !589)
!591 = !DILocation(line: 216, column: 7, scope: !586)
!592 = !DILocation(line: 217, column: 11, scope: !589)
!593 = !DILocation(line: 217, column: 53, scope: !589)
!594 = !DILocation(line: 217, column: 4, scope: !595)
!595 = !DILexicalBlockFile(scope: !589, file: !19, discriminator: 1)
!596 = !DILocation(line: 217, column: 4, scope: !589)
!597 = !DILocation(line: 218, column: 13, scope: !586)
!598 = !DILocation(line: 218, column: 8, scope: !586)
!599 = !DILocation(line: 219, column: 2, scope: !586)
!600 = !DILocation(line: 221, column: 22, scope: !561)
!601 = !DILocation(line: 221, column: 35, scope: !561)
!602 = !DILocation(line: 221, column: 41, scope: !561)
!603 = !DILocation(line: 221, column: 2, scope: !561)
!604 = !DILocation(line: 222, column: 28, scope: !561)
!605 = !DILocation(line: 222, column: 2, scope: !561)
!606 = !DILocation(line: 225, column: 25, scope: !607)
!607 = distinct !DILexicalBlock(scope: !561, file: !19, line: 225, column: 6)
!608 = !DILocation(line: 225, column: 10, scope: !607)
!609 = !DILocation(line: 225, column: 14, scope: !607)
!610 = !DILocation(line: 225, column: 21, scope: !607)
!611 = !DILocation(line: 225, column: 6, scope: !607)
!612 = !DILocation(line: 225, column: 33, scope: !607)
!613 = !DILocation(line: 225, column: 6, scope: !561)
!614 = !DILocation(line: 226, column: 9, scope: !607)
!615 = !DILocation(line: 227, column: 10, scope: !607)
!616 = !DILocation(line: 227, column: 16, scope: !607)
!617 = !DILocation(line: 227, column: 20, scope: !607)
!618 = !DILocation(line: 227, column: 30, scope: !607)
!619 = !DILocation(line: 226, column: 3, scope: !620)
!620 = !DILexicalBlockFile(scope: !607, file: !19, discriminator: 1)
!621 = !DILocation(line: 226, column: 3, scope: !607)
!622 = !DILocation(line: 229, column: 6, scope: !623)
!623 = distinct !DILexicalBlock(scope: !561, file: !19, line: 229, column: 6)
!624 = !DILocation(line: 229, column: 11, scope: !623)
!625 = !DILocation(line: 229, column: 6, scope: !561)
!626 = !DILocation(line: 230, column: 16, scope: !627)
!627 = distinct !DILexicalBlock(scope: !623, file: !19, line: 230, column: 7)
!628 = !DILocation(line: 230, column: 20, scope: !627)
!629 = !DILocation(line: 230, column: 7, scope: !627)
!630 = !DILocation(line: 230, column: 33, scope: !627)
!631 = !DILocation(line: 230, column: 7, scope: !623)
!632 = !DILocation(line: 231, column: 11, scope: !627)
!633 = !DILocation(line: 231, column: 43, scope: !627)
!634 = !DILocation(line: 231, column: 47, scope: !627)
!635 = !DILocation(line: 231, column: 4, scope: !636)
!636 = !DILexicalBlockFile(scope: !627, file: !19, discriminator: 1)
!637 = !DILocation(line: 231, column: 4, scope: !627)
!638 = !DILocation(line: 230, column: 35, scope: !636)
!639 = !DILocation(line: 232, column: 1, scope: !561)
