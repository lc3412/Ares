; ModuleID = './iovector.o.i'
source_filename = "./iovector.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VMIOVec = type { i64, i64, i64, i32, i8, %struct.iovec*, %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%struct.VMIOVecAndEntries = type { %struct.VMIOVec, [0 x %struct.iovec] }

@.str = private unnamed_addr constant [38 x i8] c"###### dumping content of iov ######\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"startSector = %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"numSectors = %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"numBytes = %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"numEntries = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"  entries[%d] = %p / %zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"###### iov is NULL!! ######\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"VERIFY %s:%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"iovector.c\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"VERIFY %s:%d bugNr=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"IOV: %s:%d iov [%lu:%lu] and [%lu:%lu] - no overlap!\0A\00", align 1
@.str.14 = private unnamed_addr constant [73 x i8] c"IOV: %s:%d i %d (of %d), offsets: entry %zu, iov %zu invalid iov offset\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @IOV_Log(%struct.VMIOVec*) #0 !dbg !24 {
  %2 = alloca %struct.VMIOVec*, align 8
  %3 = alloca i32, align 4
  store %struct.VMIOVec* %0, %struct.VMIOVec** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VMIOVec** %2, metadata !52, metadata !53), !dbg !54
  %4 = load %struct.VMIOVec*, %struct.VMIOVec** %2, align 8, !dbg !55
  %5 = icmp ne %struct.VMIOVec* %4, null, !dbg !55
  br i1 %5, label %6, label %53, !dbg !57

; <label>:6:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %3, metadata !58, metadata !53), !dbg !60
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0)), !dbg !61
  %7 = load %struct.VMIOVec*, %struct.VMIOVec** %2, align 8, !dbg !62
  %8 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %7, i32 0, i32 4, !dbg !63
  %9 = load i8, i8* %8, align 4, !dbg !63
  %10 = sext i8 %9 to i32, !dbg !62
  %11 = icmp ne i32 %10, 0, !dbg !62
  %12 = select i1 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), !dbg !62
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* %12), !dbg !64
  %13 = load %struct.VMIOVec*, %struct.VMIOVec** %2, align 8, !dbg !65
  %14 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %13, i32 0, i32 0, !dbg !66
  %15 = load i64, i64* %14, align 8, !dbg !66
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i64 %15), !dbg !67
  %16 = load %struct.VMIOVec*, %struct.VMIOVec** %2, align 8, !dbg !68
  %17 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %16, i32 0, i32 1, !dbg !69
  %18 = load i64, i64* %17, align 8, !dbg !69
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i64 %18), !dbg !70
  %19 = load %struct.VMIOVec*, %struct.VMIOVec** %2, align 8, !dbg !71
  %20 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %19, i32 0, i32 2, !dbg !72
  %21 = load i64, i64* %20, align 8, !dbg !72
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i64 %21), !dbg !73
  %22 = load %struct.VMIOVec*, %struct.VMIOVec** %2, align 8, !dbg !74
  %23 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %22, i32 0, i32 3, !dbg !75
  %24 = load i32, i32* %23, align 8, !dbg !75
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 %24), !dbg !76
  store i32 0, i32* %3, align 4, !dbg !77
  br label %25, !dbg !79

; <label>:25:                                     ; preds = %49, %6
  %26 = load i32, i32* %3, align 4, !dbg !80
  %27 = load %struct.VMIOVec*, %struct.VMIOVec** %2, align 8, !dbg !83
  %28 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %27, i32 0, i32 3, !dbg !84
  %29 = load i32, i32* %28, align 8, !dbg !84
  %30 = icmp ult i32 %26, %29, !dbg !85
  br i1 %30, label %31, label %52, !dbg !86

; <label>:31:                                     ; preds = %25
  %32 = load i32, i32* %3, align 4, !dbg !87
  %33 = load i32, i32* %3, align 4, !dbg !89
  %34 = zext i32 %33 to i64, !dbg !90
  %35 = load %struct.VMIOVec*, %struct.VMIOVec** %2, align 8, !dbg !90
  %36 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %35, i32 0, i32 5, !dbg !91
  %37 = load %struct.iovec*, %struct.iovec** %36, align 8, !dbg !91
  %38 = getelementptr inbounds %struct.iovec, %struct.iovec* %37, i64 %34, !dbg !90
  %39 = getelementptr inbounds %struct.iovec, %struct.iovec* %38, i32 0, i32 0, !dbg !92
  %40 = load i8*, i8** %39, align 8, !dbg !92
  %41 = load i32, i32* %3, align 4, !dbg !93
  %42 = zext i32 %41 to i64, !dbg !94
  %43 = load %struct.VMIOVec*, %struct.VMIOVec** %2, align 8, !dbg !94
  %44 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %43, i32 0, i32 5, !dbg !95
  %45 = load %struct.iovec*, %struct.iovec** %44, align 8, !dbg !95
  %46 = getelementptr inbounds %struct.iovec, %struct.iovec* %45, i64 %42, !dbg !94
  %47 = getelementptr inbounds %struct.iovec, %struct.iovec* %46, i32 0, i32 1, !dbg !96
  %48 = load i64, i64* %47, align 8, !dbg !96
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i32 %32, i8* %40, i64 %48), !dbg !97
  br label %49, !dbg !98

; <label>:49:                                     ; preds = %31
  %50 = load i32, i32* %3, align 4, !dbg !99
  %51 = add i32 %50, 1, !dbg !99
  store i32 %51, i32* %3, align 4, !dbg !99
  br label %25, !dbg !101, !llvm.loop !102

; <label>:52:                                     ; preds = %25
  br label %54, !dbg !104

; <label>:53:                                     ; preds = %1
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0)), !dbg !105
  br label %54

; <label>:54:                                     ; preds = %53, %52
  ret void, !dbg !107
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @Log(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @IOV_Zero(%struct.VMIOVec*) #0 !dbg !108 {
  %2 = alloca %struct.VMIOVec*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.VMIOVec* %0, %struct.VMIOVec** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VMIOVec** %2, metadata !112, metadata !53), !dbg !113
  call void @llvm.dbg.declare(metadata i64* %3, metadata !114, metadata !53), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %4, metadata !116, metadata !53), !dbg !117
  %7 = load %struct.VMIOVec*, %struct.VMIOVec** %2, align 8, !dbg !118
  %8 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %7, i32 0, i32 2, !dbg !119
  %9 = load i64, i64* %8, align 8, !dbg !119
  store i64 %9, i64* %3, align 8, !dbg !120
  store i32 0, i32* %4, align 4, !dbg !121
  br label %10, !dbg !122

; <label>:10:                                     ; preds = %47, %1
  %11 = load i64, i64* %3, align 8, !dbg !123
  %12 = icmp ugt i64 %11, 0, !dbg !125
  br i1 %12, label %13, label %63, !dbg !126

; <label>:13:                                     ; preds = %10
  call void @llvm.dbg.declare(metadata i64* %5, metadata !127, metadata !53), !dbg !129
  %14 = load i64, i64* %3, align 8, !dbg !130
  %15 = load i32, i32* %4, align 4, !dbg !131
  %16 = sext i32 %15 to i64, !dbg !132
  %17 = load %struct.VMIOVec*, %struct.VMIOVec** %2, align 8, !dbg !132
  %18 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %17, i32 0, i32 5, !dbg !133
  %19 = load %struct.iovec*, %struct.iovec** %18, align 8, !dbg !133
  %20 = getelementptr inbounds %struct.iovec, %struct.iovec* %19, i64 %16, !dbg !132
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %20, i32 0, i32 1, !dbg !134
  %22 = load i64, i64* %21, align 8, !dbg !134
  %23 = icmp ult i64 %14, %22, !dbg !135
  br i1 %23, label %24, label %26, !dbg !136

; <label>:24:                                     ; preds = %13
  %25 = load i64, i64* %3, align 8, !dbg !137
  br label %35, !dbg !139

; <label>:26:                                     ; preds = %13
  %27 = load i32, i32* %4, align 4, !dbg !140
  %28 = sext i32 %27 to i64, !dbg !142
  %29 = load %struct.VMIOVec*, %struct.VMIOVec** %2, align 8, !dbg !142
  %30 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %29, i32 0, i32 5, !dbg !143
  %31 = load %struct.iovec*, %struct.iovec** %30, align 8, !dbg !143
  %32 = getelementptr inbounds %struct.iovec, %struct.iovec* %31, i64 %28, !dbg !142
  %33 = getelementptr inbounds %struct.iovec, %struct.iovec* %32, i32 0, i32 1, !dbg !144
  %34 = load i64, i64* %33, align 8, !dbg !144
  br label %35, !dbg !145

; <label>:35:                                     ; preds = %26, %24
  %36 = phi i64 [ %25, %24 ], [ %34, %26 ], !dbg !146
  store i64 %36, i64* %5, align 8, !dbg !148
  call void @llvm.dbg.declare(metadata i8** %6, metadata !149, metadata !53), !dbg !150
  %37 = load i32, i32* %4, align 4, !dbg !151
  %38 = load %struct.VMIOVec*, %struct.VMIOVec** %2, align 8, !dbg !154
  %39 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %38, i32 0, i32 3, !dbg !155
  %40 = load i32, i32* %39, align 8, !dbg !155
  %41 = icmp ult i32 %37, %40, !dbg !156
  %42 = xor i1 %41, true, !dbg !157
  %43 = zext i1 %42 to i32, !dbg !157
  %44 = sext i32 %43 to i64, !dbg !158
  %45 = icmp ne i64 %44, 0, !dbg !159
  br i1 %45, label %46, label %47, !dbg !160

; <label>:46:                                     ; preds = %35
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 113) #7, !dbg !161
  unreachable, !dbg !161

; <label>:47:                                     ; preds = %35
  %48 = load i32, i32* %4, align 4, !dbg !164
  %49 = sext i32 %48 to i64, !dbg !165
  %50 = load %struct.VMIOVec*, %struct.VMIOVec** %2, align 8, !dbg !165
  %51 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %50, i32 0, i32 5, !dbg !166
  %52 = load %struct.iovec*, %struct.iovec** %51, align 8, !dbg !166
  %53 = getelementptr inbounds %struct.iovec, %struct.iovec* %52, i64 %49, !dbg !165
  %54 = getelementptr inbounds %struct.iovec, %struct.iovec* %53, i32 0, i32 0, !dbg !167
  %55 = load i8*, i8** %54, align 8, !dbg !167
  store i8* %55, i8** %6, align 8, !dbg !168
  %56 = load i8*, i8** %6, align 8, !dbg !169
  %57 = load i64, i64* %5, align 8, !dbg !170
  call void @llvm.memset.p0i8.i64(i8* %56, i8 0, i64 %57, i32 1, i1 false), !dbg !171
  %58 = load i64, i64* %5, align 8, !dbg !172
  %59 = load i64, i64* %3, align 8, !dbg !173
  %60 = sub i64 %59, %58, !dbg !173
  store i64 %60, i64* %3, align 8, !dbg !173
  %61 = load i32, i32* %4, align 4, !dbg !174
  %62 = add nsw i32 %61, 1, !dbg !174
  store i32 %62, i32* %4, align 4, !dbg !174
  br label %10, !dbg !175, !llvm.loop !177

; <label>:63:                                     ; preds = %10
  ret void, !dbg !178
}

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define %struct.VMIOVec* @IOV_Allocate(i32) #0 !dbg !179 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.VMIOVecAndEntries*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !182, metadata !53), !dbg !183
  call void @llvm.dbg.declare(metadata %struct.VMIOVecAndEntries** %3, metadata !184, metadata !53), !dbg !193
  %4 = load i32, i32* %2, align 4, !dbg !194
  %5 = sext i32 %4 to i64, !dbg !194
  %6 = mul i64 %5, 16, !dbg !195
  %7 = add i64 48, %6, !dbg !196
  %8 = call i8* @UtilSafeMalloc0(i64 %7), !dbg !197
  %9 = bitcast i8* %8 to %struct.VMIOVecAndEntries*, !dbg !197
  store %struct.VMIOVecAndEntries* %9, %struct.VMIOVecAndEntries** %3, align 8, !dbg !198
  %10 = load %struct.VMIOVecAndEntries*, %struct.VMIOVecAndEntries** %3, align 8, !dbg !199
  %11 = getelementptr inbounds %struct.VMIOVecAndEntries, %struct.VMIOVecAndEntries* %10, i32 0, i32 1, !dbg !200
  %12 = getelementptr inbounds [0 x %struct.iovec], [0 x %struct.iovec]* %11, i32 0, i32 0, !dbg !199
  %13 = load %struct.VMIOVecAndEntries*, %struct.VMIOVecAndEntries** %3, align 8, !dbg !201
  %14 = getelementptr inbounds %struct.VMIOVecAndEntries, %struct.VMIOVecAndEntries* %13, i32 0, i32 0, !dbg !202
  %15 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %14, i32 0, i32 5, !dbg !203
  store %struct.iovec* %12, %struct.iovec** %15, align 8, !dbg !204
  %16 = load %struct.VMIOVecAndEntries*, %struct.VMIOVecAndEntries** %3, align 8, !dbg !205
  %17 = getelementptr inbounds %struct.VMIOVecAndEntries, %struct.VMIOVecAndEntries* %16, i32 0, i32 0, !dbg !206
  %18 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %17, i32 0, i32 6, !dbg !207
  store %struct.iovec* null, %struct.iovec** %18, align 8, !dbg !208
  %19 = load i32, i32* %2, align 4, !dbg !209
  %20 = load %struct.VMIOVecAndEntries*, %struct.VMIOVecAndEntries** %3, align 8, !dbg !210
  %21 = getelementptr inbounds %struct.VMIOVecAndEntries, %struct.VMIOVecAndEntries* %20, i32 0, i32 0, !dbg !211
  %22 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %21, i32 0, i32 3, !dbg !212
  store i32 %19, i32* %22, align 8, !dbg !213
  %23 = load %struct.VMIOVecAndEntries*, %struct.VMIOVecAndEntries** %3, align 8, !dbg !214
  %24 = getelementptr inbounds %struct.VMIOVecAndEntries, %struct.VMIOVecAndEntries* %23, i32 0, i32 0, !dbg !215
  ret %struct.VMIOVec* %24, !dbg !216
}

declare i8* @UtilSafeMalloc0(i64) #2

; Function Attrs: nounwind uwtable
define void @IOV_DuplicateStatic(%struct.VMIOVec*, i32, %struct.iovec*, %struct.VMIOVec*) #0 !dbg !217 {
  %5 = alloca %struct.VMIOVec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca %struct.VMIOVec*, align 8
  store %struct.VMIOVec* %0, %struct.VMIOVec** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.VMIOVec** %5, metadata !220, metadata !53), !dbg !221
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !222, metadata !53), !dbg !223
  store %struct.iovec* %2, %struct.iovec** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.iovec** %7, metadata !224, metadata !53), !dbg !225
  store %struct.VMIOVec* %3, %struct.VMIOVec** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.VMIOVec** %8, metadata !226, metadata !53), !dbg !227
  %9 = load %struct.VMIOVec*, %struct.VMIOVec** %8, align 8, !dbg !228
  %10 = bitcast %struct.VMIOVec* %9 to i8*, !dbg !228
  %11 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !229
  %12 = bitcast %struct.VMIOVec* %11 to i8*, !dbg !229
  %13 = call i8* @Util_Memcpy(i8* %10, i8* %12, i64 48), !dbg !230
  %14 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !231
  %15 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %14, i32 0, i32 3, !dbg !233
  %16 = load i32, i32* %15, align 8, !dbg !233
  %17 = load i32, i32* %6, align 4, !dbg !234
  %18 = icmp ule i32 %16, %17, !dbg !235
  br i1 %18, label %19, label %25, !dbg !236

; <label>:19:                                     ; preds = %4
  %20 = load %struct.VMIOVec*, %struct.VMIOVec** %8, align 8, !dbg !237
  %21 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %20, i32 0, i32 6, !dbg !239
  store %struct.iovec* null, %struct.iovec** %21, align 8, !dbg !240
  %22 = load %struct.iovec*, %struct.iovec** %7, align 8, !dbg !241
  %23 = load %struct.VMIOVec*, %struct.VMIOVec** %8, align 8, !dbg !242
  %24 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %23, i32 0, i32 5, !dbg !243
  store %struct.iovec* %22, %struct.iovec** %24, align 8, !dbg !244
  br label %40, !dbg !245

; <label>:25:                                     ; preds = %4
  %26 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !246
  %27 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %26, i32 0, i32 3, !dbg !248
  %28 = load i32, i32* %27, align 8, !dbg !248
  %29 = zext i32 %28 to i64, !dbg !246
  %30 = mul i64 %29, 16, !dbg !249
  %31 = call i8* @UtilSafeMalloc0(i64 %30), !dbg !250
  %32 = bitcast i8* %31 to %struct.iovec*, !dbg !250
  %33 = load %struct.VMIOVec*, %struct.VMIOVec** %8, align 8, !dbg !251
  %34 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %33, i32 0, i32 6, !dbg !252
  store %struct.iovec* %32, %struct.iovec** %34, align 8, !dbg !253
  %35 = load %struct.VMIOVec*, %struct.VMIOVec** %8, align 8, !dbg !254
  %36 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %35, i32 0, i32 6, !dbg !255
  %37 = load %struct.iovec*, %struct.iovec** %36, align 8, !dbg !255
  %38 = load %struct.VMIOVec*, %struct.VMIOVec** %8, align 8, !dbg !256
  %39 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %38, i32 0, i32 5, !dbg !257
  store %struct.iovec* %37, %struct.iovec** %39, align 8, !dbg !258
  br label %40

; <label>:40:                                     ; preds = %25, %19
  %41 = load %struct.VMIOVec*, %struct.VMIOVec** %8, align 8, !dbg !259
  %42 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %41, i32 0, i32 5, !dbg !260
  %43 = load %struct.iovec*, %struct.iovec** %42, align 8, !dbg !260
  %44 = bitcast %struct.iovec* %43 to i8*, !dbg !259
  %45 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !261
  %46 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %45, i32 0, i32 5, !dbg !262
  %47 = load %struct.iovec*, %struct.iovec** %46, align 8, !dbg !262
  %48 = bitcast %struct.iovec* %47 to i8*, !dbg !261
  %49 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !263
  %50 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %49, i32 0, i32 3, !dbg !264
  %51 = load i32, i32* %50, align 8, !dbg !264
  %52 = zext i32 %51 to i64, !dbg !263
  %53 = mul i64 %52, 16, !dbg !265
  %54 = call i8* @Util_Memcpy(i8* %44, i8* %48, i64 %53), !dbg !266
  ret void, !dbg !267
}

declare i8* @Util_Memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @IOV_MakeSingleIOV(%struct.VMIOVec*, %struct.iovec*, i64, i64, i32, i8*, i8 signext) #0 !dbg !268 {
  %8 = alloca %struct.VMIOVec*, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  store %struct.VMIOVec* %0, %struct.VMIOVec** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.VMIOVec** %8, metadata !271, metadata !53), !dbg !272
  store %struct.iovec* %1, %struct.iovec** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.iovec** %9, metadata !273, metadata !53), !dbg !274
  store i64 %2, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !275, metadata !53), !dbg !276
  store i64 %3, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !277, metadata !53), !dbg !278
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !279, metadata !53), !dbg !280
  store i8* %5, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !281, metadata !53), !dbg !282
  store i8 %6, i8* %14, align 1
  call void @llvm.dbg.declare(metadata i8* %14, metadata !283, metadata !53), !dbg !284
  %15 = load i8, i8* %14, align 1, !dbg !285
  %16 = load %struct.VMIOVec*, %struct.VMIOVec** %8, align 8, !dbg !286
  %17 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %16, i32 0, i32 4, !dbg !287
  store i8 %15, i8* %17, align 4, !dbg !288
  %18 = load i64, i64* %10, align 8, !dbg !289
  %19 = load %struct.VMIOVec*, %struct.VMIOVec** %8, align 8, !dbg !290
  %20 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %19, i32 0, i32 0, !dbg !291
  store i64 %18, i64* %20, align 8, !dbg !292
  %21 = load i64, i64* %11, align 8, !dbg !293
  %22 = load %struct.VMIOVec*, %struct.VMIOVec** %8, align 8, !dbg !294
  %23 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %22, i32 0, i32 1, !dbg !295
  store i64 %21, i64* %23, align 8, !dbg !296
  %24 = load i64, i64* %11, align 8, !dbg !297
  %25 = load i32, i32* %12, align 4, !dbg !298
  %26 = zext i32 %25 to i64, !dbg !298
  %27 = mul i64 %24, %26, !dbg !299
  %28 = load %struct.VMIOVec*, %struct.VMIOVec** %8, align 8, !dbg !300
  %29 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %28, i32 0, i32 2, !dbg !301
  store i64 %27, i64* %29, align 8, !dbg !302
  %30 = load %struct.VMIOVec*, %struct.VMIOVec** %8, align 8, !dbg !303
  %31 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %30, i32 0, i32 3, !dbg !304
  store i32 1, i32* %31, align 8, !dbg !305
  %32 = load %struct.iovec*, %struct.iovec** %9, align 8, !dbg !306
  %33 = load %struct.VMIOVec*, %struct.VMIOVec** %8, align 8, !dbg !307
  %34 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %33, i32 0, i32 5, !dbg !308
  store %struct.iovec* %32, %struct.iovec** %34, align 8, !dbg !309
  %35 = load %struct.iovec*, %struct.iovec** %9, align 8, !dbg !310
  %36 = load %struct.VMIOVec*, %struct.VMIOVec** %8, align 8, !dbg !311
  %37 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %36, i32 0, i32 6, !dbg !312
  store %struct.iovec* %35, %struct.iovec** %37, align 8, !dbg !313
  %38 = load i8*, i8** %13, align 8, !dbg !314
  %39 = load %struct.iovec*, %struct.iovec** %9, align 8, !dbg !315
  %40 = getelementptr inbounds %struct.iovec, %struct.iovec* %39, i32 0, i32 0, !dbg !316
  store i8* %38, i8** %40, align 8, !dbg !317
  %41 = load %struct.VMIOVec*, %struct.VMIOVec** %8, align 8, !dbg !318
  %42 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %41, i32 0, i32 2, !dbg !319
  %43 = load i64, i64* %42, align 8, !dbg !319
  %44 = load %struct.iovec*, %struct.iovec** %9, align 8, !dbg !320
  %45 = getelementptr inbounds %struct.iovec, %struct.iovec* %44, i32 0, i32 1, !dbg !321
  store i64 %43, i64* %45, align 8, !dbg !322
  ret void, !dbg !323
}

; Function Attrs: nounwind uwtable
define signext i8 @IOV_IsZero(%struct.VMIOVec*) #0 !dbg !324 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.VMIOVec*, align 8
  %4 = alloca i32, align 4
  store %struct.VMIOVec* %0, %struct.VMIOVec** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.VMIOVec** %3, metadata !327, metadata !53), !dbg !328
  call void @llvm.dbg.declare(metadata i32* %4, metadata !329, metadata !53), !dbg !330
  store i32 0, i32* %4, align 4, !dbg !331
  br label %5, !dbg !333

; <label>:5:                                      ; preds = %32, %1
  %6 = load i32, i32* %4, align 4, !dbg !334
  %7 = load %struct.VMIOVec*, %struct.VMIOVec** %3, align 8, !dbg !337
  %8 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %7, i32 0, i32 3, !dbg !338
  %9 = load i32, i32* %8, align 8, !dbg !338
  %10 = icmp ult i32 %6, %9, !dbg !339
  br i1 %10, label %11, label %35, !dbg !340

; <label>:11:                                     ; preds = %5
  %12 = load i32, i32* %4, align 4, !dbg !341
  %13 = zext i32 %12 to i64, !dbg !344
  %14 = load %struct.VMIOVec*, %struct.VMIOVec** %3, align 8, !dbg !344
  %15 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %14, i32 0, i32 5, !dbg !345
  %16 = load %struct.iovec*, %struct.iovec** %15, align 8, !dbg !345
  %17 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i64 %13, !dbg !344
  %18 = getelementptr inbounds %struct.iovec, %struct.iovec* %17, i32 0, i32 0, !dbg !346
  %19 = load i8*, i8** %18, align 8, !dbg !346
  %20 = load i32, i32* %4, align 4, !dbg !347
  %21 = zext i32 %20 to i64, !dbg !348
  %22 = load %struct.VMIOVec*, %struct.VMIOVec** %3, align 8, !dbg !348
  %23 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %22, i32 0, i32 5, !dbg !349
  %24 = load %struct.iovec*, %struct.iovec** %23, align 8, !dbg !349
  %25 = getelementptr inbounds %struct.iovec, %struct.iovec* %24, i64 %21, !dbg !348
  %26 = getelementptr inbounds %struct.iovec, %struct.iovec* %25, i32 0, i32 1, !dbg !350
  %27 = load i64, i64* %26, align 8, !dbg !350
  %28 = call signext i8 @Util_BufferIsEmpty(i8* %19, i64 %27), !dbg !351
  %29 = icmp ne i8 %28, 0, !dbg !351
  br i1 %29, label %31, label %30, !dbg !352

; <label>:30:                                     ; preds = %11
  store i8 0, i8* %2, align 1, !dbg !353
  br label %36, !dbg !353

; <label>:31:                                     ; preds = %11
  br label %32, !dbg !355

; <label>:32:                                     ; preds = %31
  %33 = load i32, i32* %4, align 4, !dbg !356
  %34 = add i32 %33, 1, !dbg !356
  store i32 %34, i32* %4, align 4, !dbg !356
  br label %5, !dbg !358, !llvm.loop !359

; <label>:35:                                     ; preds = %5
  store i8 1, i8* %2, align 1, !dbg !361
  br label %36, !dbg !361

; <label>:36:                                     ; preds = %35, %30
  %37 = load i8, i8* %2, align 1, !dbg !362
  ret i8 %37, !dbg !362
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @Util_BufferIsEmpty(i8*, i64) #5 !dbg !363 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !369, metadata !53), !dbg !370
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !371, metadata !53), !dbg !372
  %5 = load i8*, i8** %3, align 8, !dbg !373
  %6 = load i64, i64* %4, align 8, !dbg !374
  %7 = call i8* @Util_ValidateBytes(i8* %5, i64 %6, i8 zeroext 0), !dbg !375
  %8 = icmp eq i8* %7, null, !dbg !376
  %9 = zext i1 %8 to i32, !dbg !376
  %10 = trunc i32 %9 to i8, !dbg !375
  ret i8 %10, !dbg !377
}

; Function Attrs: nounwind uwtable
define %struct.VMIOVec* @IOV_Split(%struct.VMIOVec*, i64, i32) #0 !dbg !378 {
  %4 = alloca %struct.VMIOVec*, align 8
  %5 = alloca %struct.VMIOVec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.VMIOVecAndEntries*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.VMIOVec*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.iovec, align 8
  store %struct.VMIOVec* %0, %struct.VMIOVec** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.VMIOVec** %5, metadata !381, metadata !53), !dbg !382
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !383, metadata !53), !dbg !384
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !385, metadata !53), !dbg !386
  call void @llvm.dbg.declare(metadata %struct.VMIOVecAndEntries** %8, metadata !387, metadata !53), !dbg !388
  call void @llvm.dbg.declare(metadata i32* %9, metadata !389, metadata !53), !dbg !390
  call void @llvm.dbg.declare(metadata %struct.VMIOVec** %10, metadata !391, metadata !53), !dbg !392
  %13 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !393
  %14 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %13, i32 0, i32 3, !dbg !394
  %15 = load i32, i32* %14, align 8, !dbg !394
  %16 = zext i32 %15 to i64, !dbg !393
  %17 = mul i64 %16, 16, !dbg !395
  %18 = add i64 48, %17, !dbg !396
  %19 = call i8* @UtilSafeMalloc0(i64 %18), !dbg !397
  %20 = bitcast i8* %19 to %struct.VMIOVecAndEntries*, !dbg !397
  store %struct.VMIOVecAndEntries* %20, %struct.VMIOVecAndEntries** %8, align 8, !dbg !398
  %21 = load %struct.VMIOVecAndEntries*, %struct.VMIOVecAndEntries** %8, align 8, !dbg !399
  %22 = getelementptr inbounds %struct.VMIOVecAndEntries, %struct.VMIOVecAndEntries* %21, i32 0, i32 0, !dbg !400
  store %struct.VMIOVec* %22, %struct.VMIOVec** %10, align 8, !dbg !401
  %23 = load %struct.VMIOVec*, %struct.VMIOVec** %10, align 8, !dbg !402
  %24 = bitcast %struct.VMIOVec* %23 to i8*, !dbg !402
  %25 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !403
  %26 = bitcast %struct.VMIOVec* %25 to i8*, !dbg !403
  %27 = call i8* @Util_Memcpy(i8* %24, i8* %26, i64 48), !dbg !404
  %28 = load %struct.VMIOVec*, %struct.VMIOVec** %10, align 8, !dbg !405
  %29 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %28, i32 0, i32 6, !dbg !406
  store %struct.iovec* null, %struct.iovec** %29, align 8, !dbg !407
  %30 = load i64, i64* %6, align 8, !dbg !408
  %31 = load %struct.VMIOVec*, %struct.VMIOVec** %10, align 8, !dbg !409
  %32 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %31, i32 0, i32 1, !dbg !410
  store i64 %30, i64* %32, align 8, !dbg !411
  %33 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !412
  %34 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %33, i32 0, i32 5, !dbg !414
  %35 = load %struct.iovec*, %struct.iovec** %34, align 8, !dbg !414
  %36 = getelementptr inbounds %struct.iovec, %struct.iovec* %35, i32 0, i32 0, !dbg !415
  %37 = load i8*, i8** %36, align 8, !dbg !415
  %38 = icmp eq i8* %37, inttoptr (i64 61680 to i8*), !dbg !416
  br i1 %38, label %39, label %87, !dbg !417

; <label>:39:                                     ; preds = %3
  %40 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !418
  %41 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %40, i32 0, i32 5, !dbg !419
  %42 = load %struct.iovec*, %struct.iovec** %41, align 8, !dbg !419
  %43 = getelementptr inbounds %struct.iovec, %struct.iovec* %42, i32 0, i32 1, !dbg !420
  %44 = load i64, i64* %43, align 8, !dbg !420
  %45 = icmp eq i64 %44, 0, !dbg !421
  br i1 %45, label %46, label %87, !dbg !422

; <label>:46:                                     ; preds = %39
  %47 = load %struct.VMIOVecAndEntries*, %struct.VMIOVecAndEntries** %8, align 8, !dbg !424
  %48 = getelementptr inbounds %struct.VMIOVecAndEntries, %struct.VMIOVecAndEntries* %47, i32 0, i32 1, !dbg !426
  %49 = getelementptr inbounds [0 x %struct.iovec], [0 x %struct.iovec]* %48, i32 0, i32 0, !dbg !424
  %50 = load %struct.VMIOVec*, %struct.VMIOVec** %10, align 8, !dbg !427
  %51 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %50, i32 0, i32 5, !dbg !428
  store %struct.iovec* %49, %struct.iovec** %51, align 8, !dbg !429
  %52 = load %struct.VMIOVec*, %struct.VMIOVec** %10, align 8, !dbg !430
  %53 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %52, i32 0, i32 5, !dbg !431
  %54 = load %struct.iovec*, %struct.iovec** %53, align 8, !dbg !431
  %55 = bitcast %struct.iovec* %54 to i8*, !dbg !430
  %56 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !432
  %57 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %56, i32 0, i32 5, !dbg !433
  %58 = load %struct.iovec*, %struct.iovec** %57, align 8, !dbg !433
  %59 = bitcast %struct.iovec* %58 to i8*, !dbg !432
  %60 = call i8* @Util_Memcpy(i8* %55, i8* %59, i64 16), !dbg !434
  %61 = load %struct.VMIOVec*, %struct.VMIOVec** %10, align 8, !dbg !435
  %62 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %61, i32 0, i32 1, !dbg !436
  %63 = load i64, i64* %62, align 8, !dbg !436
  %64 = load i32, i32* %7, align 4, !dbg !437
  %65 = zext i32 %64 to i64, !dbg !437
  %66 = mul i64 %63, %65, !dbg !438
  %67 = load %struct.VMIOVec*, %struct.VMIOVec** %10, align 8, !dbg !439
  %68 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %67, i32 0, i32 2, !dbg !440
  store i64 %66, i64* %68, align 8, !dbg !441
  %69 = load i64, i64* %6, align 8, !dbg !442
  %70 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !443
  %71 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %70, i32 0, i32 0, !dbg !444
  %72 = load i64, i64* %71, align 8, !dbg !445
  %73 = add i64 %72, %69, !dbg !445
  store i64 %73, i64* %71, align 8, !dbg !445
  %74 = load i64, i64* %6, align 8, !dbg !446
  %75 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !447
  %76 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %75, i32 0, i32 1, !dbg !448
  %77 = load i64, i64* %76, align 8, !dbg !449
  %78 = sub i64 %77, %74, !dbg !449
  store i64 %78, i64* %76, align 8, !dbg !449
  %79 = load %struct.VMIOVec*, %struct.VMIOVec** %10, align 8, !dbg !450
  %80 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %79, i32 0, i32 2, !dbg !451
  %81 = load i64, i64* %80, align 8, !dbg !451
  %82 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !452
  %83 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %82, i32 0, i32 2, !dbg !453
  %84 = load i64, i64* %83, align 8, !dbg !454
  %85 = sub i64 %84, %81, !dbg !454
  store i64 %85, i64* %83, align 8, !dbg !454
  %86 = load %struct.VMIOVec*, %struct.VMIOVec** %10, align 8, !dbg !455
  store %struct.VMIOVec* %86, %struct.VMIOVec** %4, align 8, !dbg !456
  br label %215, !dbg !456

; <label>:87:                                     ; preds = %39, %3
  %88 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !457
  %89 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %88, i32 0, i32 1, !dbg !459
  %90 = load i64, i64* %89, align 8, !dbg !459
  %91 = load i64, i64* %6, align 8, !dbg !460
  %92 = icmp eq i64 %90, %91, !dbg !461
  br i1 %92, label %93, label %127, !dbg !462

; <label>:93:                                     ; preds = %87
  %94 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !463
  %95 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %94, i32 0, i32 3, !dbg !465
  %96 = load i32, i32* %95, align 8, !dbg !465
  %97 = zext i32 %96 to i64, !dbg !463
  %98 = mul i64 %97, 16, !dbg !466
  %99 = trunc i64 %98 to i32, !dbg !463
  store i32 %99, i32* %9, align 4, !dbg !467
  %100 = load %struct.VMIOVecAndEntries*, %struct.VMIOVecAndEntries** %8, align 8, !dbg !468
  %101 = getelementptr inbounds %struct.VMIOVecAndEntries, %struct.VMIOVecAndEntries* %100, i32 0, i32 1, !dbg !469
  %102 = getelementptr inbounds [0 x %struct.iovec], [0 x %struct.iovec]* %101, i32 0, i32 0, !dbg !468
  %103 = load %struct.VMIOVec*, %struct.VMIOVec** %10, align 8, !dbg !470
  %104 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %103, i32 0, i32 5, !dbg !471
  store %struct.iovec* %102, %struct.iovec** %104, align 8, !dbg !472
  %105 = load %struct.VMIOVec*, %struct.VMIOVec** %10, align 8, !dbg !473
  %106 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %105, i32 0, i32 5, !dbg !474
  %107 = load %struct.iovec*, %struct.iovec** %106, align 8, !dbg !474
  %108 = bitcast %struct.iovec* %107 to i8*, !dbg !473
  %109 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !475
  %110 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %109, i32 0, i32 5, !dbg !476
  %111 = load %struct.iovec*, %struct.iovec** %110, align 8, !dbg !476
  %112 = bitcast %struct.iovec* %111 to i8*, !dbg !475
  %113 = load i32, i32* %9, align 4, !dbg !477
  %114 = sext i32 %113 to i64, !dbg !477
  %115 = call i8* @Util_Memcpy(i8* %108, i8* %112, i64 %114), !dbg !478
  %116 = load i64, i64* %6, align 8, !dbg !479
  %117 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !480
  %118 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %117, i32 0, i32 0, !dbg !481
  %119 = load i64, i64* %118, align 8, !dbg !482
  %120 = add i64 %119, %116, !dbg !482
  store i64 %120, i64* %118, align 8, !dbg !482
  %121 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !483
  %122 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %121, i32 0, i32 1, !dbg !484
  store i64 0, i64* %122, align 8, !dbg !485
  %123 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !486
  %124 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %123, i32 0, i32 3, !dbg !487
  store i32 0, i32* %124, align 8, !dbg !488
  %125 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !489
  %126 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %125, i32 0, i32 2, !dbg !490
  store i64 0, i64* %126, align 8, !dbg !491
  br label %213, !dbg !492

; <label>:127:                                    ; preds = %87
  call void @llvm.dbg.declare(metadata i8** %11, metadata !493, metadata !53), !dbg !495
  call void @llvm.dbg.declare(metadata %struct.iovec* %12, metadata !496, metadata !53), !dbg !497
  %128 = bitcast %struct.iovec* %12 to i8*, !dbg !497
  call void @llvm.memset.p0i8.i64(i8* %128, i8 0, i64 16, i32 8, i1 false), !dbg !497
  %129 = load i64, i64* %6, align 8, !dbg !498
  %130 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !499
  %131 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %130, i32 0, i32 0, !dbg !500
  %132 = load i64, i64* %131, align 8, !dbg !501
  %133 = add i64 %132, %129, !dbg !501
  store i64 %133, i64* %131, align 8, !dbg !501
  %134 = load i64, i64* %6, align 8, !dbg !502
  %135 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !503
  %136 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %135, i32 0, i32 1, !dbg !504
  %137 = load i64, i64* %136, align 8, !dbg !505
  %138 = sub i64 %137, %134, !dbg !505
  store i64 %138, i64* %136, align 8, !dbg !505
  %139 = load %struct.VMIOVec*, %struct.VMIOVec** %10, align 8, !dbg !506
  %140 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !507
  %141 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %140, i32 0, i32 5, !dbg !508
  %142 = load %struct.iovec*, %struct.iovec** %141, align 8, !dbg !508
  %143 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !509
  %144 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %143, i32 0, i32 5, !dbg !510
  %145 = load %struct.iovec*, %struct.iovec** %144, align 8, !dbg !510
  %146 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !511
  %147 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %146, i32 0, i32 3, !dbg !512
  %148 = load i32, i32* %147, align 8, !dbg !512
  %149 = zext i32 %148 to i64, !dbg !513
  %150 = getelementptr inbounds %struct.iovec, %struct.iovec* %145, i64 %149, !dbg !513
  %151 = load i32, i32* %7, align 4, !dbg !514
  %152 = call %struct.iovec* @IOVSplitList(%struct.VMIOVec* %139, %struct.iovec* %142, %struct.iovec* %150, %struct.iovec* %12, i32 %151), !dbg !515
  %153 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !516
  %154 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %153, i32 0, i32 5, !dbg !517
  store %struct.iovec* %152, %struct.iovec** %154, align 8, !dbg !518
  %155 = load %struct.VMIOVec*, %struct.VMIOVec** %10, align 8, !dbg !519
  %156 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %155, i32 0, i32 3, !dbg !520
  %157 = load i32, i32* %156, align 8, !dbg !520
  %158 = zext i32 %157 to i64, !dbg !519
  %159 = mul i64 %158, 16, !dbg !521
  %160 = trunc i64 %159 to i32, !dbg !519
  store i32 %160, i32* %9, align 4, !dbg !522
  %161 = load %struct.VMIOVec*, %struct.VMIOVec** %10, align 8, !dbg !523
  %162 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %161, i32 0, i32 5, !dbg !524
  %163 = load %struct.iovec*, %struct.iovec** %162, align 8, !dbg !524
  %164 = bitcast %struct.iovec* %163 to i8*, !dbg !523
  store i8* %164, i8** %11, align 8, !dbg !525
  %165 = load %struct.VMIOVecAndEntries*, %struct.VMIOVecAndEntries** %8, align 8, !dbg !526
  %166 = getelementptr inbounds %struct.VMIOVecAndEntries, %struct.VMIOVecAndEntries* %165, i32 0, i32 1, !dbg !527
  %167 = getelementptr inbounds [0 x %struct.iovec], [0 x %struct.iovec]* %166, i32 0, i32 0, !dbg !526
  %168 = load %struct.VMIOVec*, %struct.VMIOVec** %10, align 8, !dbg !528
  %169 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %168, i32 0, i32 5, !dbg !529
  store %struct.iovec* %167, %struct.iovec** %169, align 8, !dbg !530
  %170 = load %struct.VMIOVec*, %struct.VMIOVec** %10, align 8, !dbg !531
  %171 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %170, i32 0, i32 5, !dbg !532
  %172 = load %struct.iovec*, %struct.iovec** %171, align 8, !dbg !532
  %173 = bitcast %struct.iovec* %172 to i8*, !dbg !531
  %174 = load i8*, i8** %11, align 8, !dbg !533
  %175 = load i32, i32* %9, align 4, !dbg !534
  %176 = sext i32 %175 to i64, !dbg !534
  %177 = call i8* @Util_Memcpy(i8* %173, i8* %174, i64 %176), !dbg !535
  %178 = load %struct.VMIOVec*, %struct.VMIOVec** %10, align 8, !dbg !536
  %179 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %178, i32 0, i32 3, !dbg !537
  %180 = load i32, i32* %179, align 8, !dbg !537
  %181 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !538
  %182 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %181, i32 0, i32 3, !dbg !539
  %183 = load i32, i32* %182, align 8, !dbg !540
  %184 = sub i32 %183, %180, !dbg !540
  store i32 %184, i32* %182, align 8, !dbg !540
  %185 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 1, !dbg !541
  %186 = load i64, i64* %185, align 8, !dbg !541
  %187 = icmp ne i64 %186, 0, !dbg !543
  br i1 %187, label %188, label %205, !dbg !544

; <label>:188:                                    ; preds = %127
  %189 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 1, !dbg !545
  %190 = load i64, i64* %189, align 8, !dbg !545
  %191 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !547
  %192 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %191, i32 0, i32 5, !dbg !548
  %193 = load %struct.iovec*, %struct.iovec** %192, align 8, !dbg !548
  %194 = getelementptr inbounds %struct.iovec, %struct.iovec* %193, i32 0, i32 1, !dbg !549
  store i64 %190, i64* %194, align 8, !dbg !550
  %195 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 0, !dbg !551
  %196 = load i8*, i8** %195, align 8, !dbg !551
  %197 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !552
  %198 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %197, i32 0, i32 5, !dbg !553
  %199 = load %struct.iovec*, %struct.iovec** %198, align 8, !dbg !553
  %200 = getelementptr inbounds %struct.iovec, %struct.iovec* %199, i32 0, i32 0, !dbg !554
  store i8* %196, i8** %200, align 8, !dbg !555
  %201 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !556
  %202 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %201, i32 0, i32 3, !dbg !557
  %203 = load i32, i32* %202, align 8, !dbg !558
  %204 = add i32 %203, 1, !dbg !558
  store i32 %204, i32* %202, align 8, !dbg !558
  br label %205, !dbg !559

; <label>:205:                                    ; preds = %188, %127
  %206 = load %struct.VMIOVec*, %struct.VMIOVec** %10, align 8, !dbg !560
  %207 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %206, i32 0, i32 2, !dbg !561
  %208 = load i64, i64* %207, align 8, !dbg !561
  %209 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !562
  %210 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %209, i32 0, i32 2, !dbg !563
  %211 = load i64, i64* %210, align 8, !dbg !564
  %212 = sub i64 %211, %208, !dbg !564
  store i64 %212, i64* %210, align 8, !dbg !564
  br label %213

; <label>:213:                                    ; preds = %205, %93
  %214 = load %struct.VMIOVec*, %struct.VMIOVec** %10, align 8, !dbg !565
  store %struct.VMIOVec* %214, %struct.VMIOVec** %4, align 8, !dbg !566
  br label %215, !dbg !566

; <label>:215:                                    ; preds = %213, %46
  %216 = load %struct.VMIOVec*, %struct.VMIOVec** %4, align 8, !dbg !567
  ret %struct.VMIOVec* %216, !dbg !567
}

; Function Attrs: nounwind uwtable
define internal %struct.iovec* @IOVSplitList(%struct.VMIOVec*, %struct.iovec*, %struct.iovec*, %struct.iovec*, i32) #0 !dbg !568 {
  %6 = alloca %struct.VMIOVec*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iovec*, align 8
  %12 = alloca i32, align 4
  store %struct.VMIOVec* %0, %struct.VMIOVec** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.VMIOVec** %6, metadata !571, metadata !53), !dbg !572
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.iovec** %7, metadata !573, metadata !53), !dbg !574
  store %struct.iovec* %2, %struct.iovec** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.iovec** %8, metadata !575, metadata !53), !dbg !576
  store %struct.iovec* %3, %struct.iovec** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.iovec** %9, metadata !577, metadata !53), !dbg !578
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !579, metadata !53), !dbg !580
  call void @llvm.dbg.declare(metadata %struct.iovec** %11, metadata !581, metadata !53), !dbg !582
  %13 = load %struct.iovec*, %struct.iovec** %7, align 8, !dbg !583
  store %struct.iovec* %13, %struct.iovec** %11, align 8, !dbg !584
  %14 = load %struct.iovec*, %struct.iovec** %11, align 8, !dbg !585
  %15 = load %struct.VMIOVec*, %struct.VMIOVec** %6, align 8, !dbg !586
  %16 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %15, i32 0, i32 5, !dbg !587
  store %struct.iovec* %14, %struct.iovec** %16, align 8, !dbg !588
  %17 = load %struct.VMIOVec*, %struct.VMIOVec** %6, align 8, !dbg !589
  %18 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %17, i32 0, i32 3, !dbg !590
  store i32 0, i32* %18, align 8, !dbg !591
  %19 = load %struct.VMIOVec*, %struct.VMIOVec** %6, align 8, !dbg !592
  %20 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %19, i32 0, i32 2, !dbg !593
  store i64 0, i64* %20, align 8, !dbg !594
  br label %21, !dbg !595, !llvm.loop !596

; <label>:21:                                     ; preds = %100, %5
  %22 = load %struct.VMIOVec*, %struct.VMIOVec** %6, align 8, !dbg !597
  %23 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %22, i32 0, i32 3, !dbg !599
  %24 = load i32, i32* %23, align 8, !dbg !600
  %25 = add i32 %24, 1, !dbg !600
  store i32 %25, i32* %23, align 8, !dbg !600
  %26 = load %struct.iovec*, %struct.iovec** %11, align 8, !dbg !601
  %27 = getelementptr inbounds %struct.iovec, %struct.iovec* %26, i32 0, i32 1, !dbg !602
  %28 = load i64, i64* %27, align 8, !dbg !602
  %29 = load %struct.VMIOVec*, %struct.VMIOVec** %6, align 8, !dbg !603
  %30 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %29, i32 0, i32 2, !dbg !604
  %31 = load i64, i64* %30, align 8, !dbg !605
  %32 = add i64 %31, %28, !dbg !605
  store i64 %32, i64* %30, align 8, !dbg !605
  %33 = load %struct.VMIOVec*, %struct.VMIOVec** %6, align 8, !dbg !606
  %34 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %33, i32 0, i32 2, !dbg !608
  %35 = load i64, i64* %34, align 8, !dbg !608
  %36 = load %struct.VMIOVec*, %struct.VMIOVec** %6, align 8, !dbg !609
  %37 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %36, i32 0, i32 1, !dbg !610
  %38 = load i64, i64* %37, align 8, !dbg !610
  %39 = load i32, i32* %10, align 4, !dbg !611
  %40 = zext i32 %39 to i64, !dbg !611
  %41 = mul i64 %38, %40, !dbg !612
  %42 = icmp ugt i64 %35, %41, !dbg !613
  br i1 %42, label %43, label %80, !dbg !614

; <label>:43:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata i32* %12, metadata !615, metadata !53), !dbg !617
  %44 = load %struct.VMIOVec*, %struct.VMIOVec** %6, align 8, !dbg !618
  %45 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %44, i32 0, i32 2, !dbg !619
  %46 = load i64, i64* %45, align 8, !dbg !619
  %47 = load %struct.VMIOVec*, %struct.VMIOVec** %6, align 8, !dbg !620
  %48 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %47, i32 0, i32 1, !dbg !621
  %49 = load i64, i64* %48, align 8, !dbg !621
  %50 = load i32, i32* %10, align 4, !dbg !622
  %51 = zext i32 %50 to i64, !dbg !622
  %52 = mul i64 %49, %51, !dbg !623
  %53 = sub i64 %46, %52, !dbg !624
  %54 = trunc i64 %53 to i32, !dbg !625
  store i32 %54, i32* %12, align 4, !dbg !626
  %55 = load i32, i32* %12, align 4, !dbg !627
  %56 = sext i32 %55 to i64, !dbg !627
  %57 = load %struct.VMIOVec*, %struct.VMIOVec** %6, align 8, !dbg !628
  %58 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %57, i32 0, i32 2, !dbg !629
  %59 = load i64, i64* %58, align 8, !dbg !630
  %60 = sub i64 %59, %56, !dbg !630
  store i64 %60, i64* %58, align 8, !dbg !630
  %61 = load i32, i32* %12, align 4, !dbg !631
  %62 = sext i32 %61 to i64, !dbg !631
  %63 = load %struct.iovec*, %struct.iovec** %11, align 8, !dbg !632
  %64 = getelementptr inbounds %struct.iovec, %struct.iovec* %63, i32 0, i32 1, !dbg !633
  %65 = load i64, i64* %64, align 8, !dbg !634
  %66 = sub i64 %65, %62, !dbg !634
  store i64 %66, i64* %64, align 8, !dbg !634
  %67 = load i32, i32* %12, align 4, !dbg !635
  %68 = sext i32 %67 to i64, !dbg !635
  %69 = load %struct.iovec*, %struct.iovec** %9, align 8, !dbg !636
  %70 = getelementptr inbounds %struct.iovec, %struct.iovec* %69, i32 0, i32 1, !dbg !637
  store i64 %68, i64* %70, align 8, !dbg !638
  %71 = load %struct.iovec*, %struct.iovec** %11, align 8, !dbg !639
  %72 = getelementptr inbounds %struct.iovec, %struct.iovec* %71, i32 0, i32 0, !dbg !640
  %73 = load i8*, i8** %72, align 8, !dbg !640
  %74 = load %struct.iovec*, %struct.iovec** %11, align 8, !dbg !641
  %75 = getelementptr inbounds %struct.iovec, %struct.iovec* %74, i32 0, i32 1, !dbg !642
  %76 = load i64, i64* %75, align 8, !dbg !642
  %77 = getelementptr inbounds i8, i8* %73, i64 %76, !dbg !643
  %78 = load %struct.iovec*, %struct.iovec** %9, align 8, !dbg !644
  %79 = getelementptr inbounds %struct.iovec, %struct.iovec* %78, i32 0, i32 0, !dbg !645
  store i8* %77, i8** %79, align 8, !dbg !646
  br label %104, !dbg !647

; <label>:80:                                     ; preds = %21
  %81 = load %struct.VMIOVec*, %struct.VMIOVec** %6, align 8, !dbg !648
  %82 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %81, i32 0, i32 2, !dbg !650
  %83 = load i64, i64* %82, align 8, !dbg !650
  %84 = load %struct.VMIOVec*, %struct.VMIOVec** %6, align 8, !dbg !651
  %85 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %84, i32 0, i32 1, !dbg !652
  %86 = load i64, i64* %85, align 8, !dbg !652
  %87 = load i32, i32* %10, align 4, !dbg !653
  %88 = zext i32 %87 to i64, !dbg !653
  %89 = mul i64 %86, %88, !dbg !654
  %90 = icmp eq i64 %83, %89, !dbg !655
  br i1 %90, label %91, label %96, !dbg !656

; <label>:91:                                     ; preds = %80
  %92 = load %struct.iovec*, %struct.iovec** %9, align 8, !dbg !657
  %93 = getelementptr inbounds %struct.iovec, %struct.iovec* %92, i32 0, i32 1, !dbg !659
  store i64 0, i64* %93, align 8, !dbg !660
  %94 = load %struct.iovec*, %struct.iovec** %11, align 8, !dbg !661
  %95 = getelementptr inbounds %struct.iovec, %struct.iovec* %94, i32 1, !dbg !661
  store %struct.iovec* %95, %struct.iovec** %11, align 8, !dbg !661
  br label %104, !dbg !662

; <label>:96:                                     ; preds = %80
  br label %97

; <label>:97:                                     ; preds = %96
  %98 = load %struct.iovec*, %struct.iovec** %11, align 8, !dbg !663
  %99 = getelementptr inbounds %struct.iovec, %struct.iovec* %98, i32 1, !dbg !663
  store %struct.iovec* %99, %struct.iovec** %11, align 8, !dbg !663
  br label %100, !dbg !664

; <label>:100:                                    ; preds = %97
  %101 = load %struct.iovec*, %struct.iovec** %11, align 8, !dbg !665
  %102 = load %struct.iovec*, %struct.iovec** %8, align 8, !dbg !667
  %103 = icmp ult %struct.iovec* %101, %102, !dbg !668
  br i1 %103, label %21, label %104, !dbg !669, !llvm.loop !596

; <label>:104:                                    ; preds = %100, %91, %43
  %105 = load %struct.iovec*, %struct.iovec** %11, align 8, !dbg !670
  ret %struct.iovec* %105, !dbg !671
}

; Function Attrs: nounwind uwtable
define void @IOV_WriteIovToBuf(%struct.iovec*, i32, i8*, i64) #0 !dbg !672 {
  %5 = alloca %struct.iovec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.iovec* %0, %struct.iovec** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.iovec** %5, metadata !677, metadata !53), !dbg !678
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !679, metadata !53), !dbg !680
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !681, metadata !53), !dbg !682
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !683, metadata !53), !dbg !684
  call void @llvm.dbg.declare(metadata i64* %9, metadata !685, metadata !53), !dbg !686
  store i64 0, i64* %9, align 8, !dbg !686
  call void @llvm.dbg.declare(metadata i32* %10, metadata !687, metadata !53), !dbg !688
  store i32 0, i32* %10, align 4, !dbg !689
  br label %12, !dbg !691

; <label>:12:                                     ; preds = %68, %4
  %13 = load i32, i32* %10, align 4, !dbg !692
  %14 = load i32, i32* %6, align 4, !dbg !695
  %15 = icmp slt i32 %13, %14, !dbg !696
  br i1 %15, label %16, label %71, !dbg !697

; <label>:16:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata i64* %11, metadata !698, metadata !53), !dbg !700
  %17 = load i64, i64* %8, align 8, !dbg !701
  %18 = load i64, i64* %9, align 8, !dbg !702
  %19 = sub i64 %17, %18, !dbg !703
  %20 = load i32, i32* %10, align 4, !dbg !704
  %21 = sext i32 %20 to i64, !dbg !705
  %22 = load %struct.iovec*, %struct.iovec** %5, align 8, !dbg !705
  %23 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i64 %21, !dbg !705
  %24 = getelementptr inbounds %struct.iovec, %struct.iovec* %23, i32 0, i32 1, !dbg !706
  %25 = load i64, i64* %24, align 8, !dbg !706
  %26 = icmp ult i64 %19, %25, !dbg !707
  br i1 %26, label %27, label %31, !dbg !708

; <label>:27:                                     ; preds = %16
  %28 = load i64, i64* %8, align 8, !dbg !709
  %29 = load i64, i64* %9, align 8, !dbg !711
  %30 = sub i64 %28, %29, !dbg !712
  br label %38, !dbg !713

; <label>:31:                                     ; preds = %16
  %32 = load i32, i32* %10, align 4, !dbg !714
  %33 = sext i32 %32 to i64, !dbg !716
  %34 = load %struct.iovec*, %struct.iovec** %5, align 8, !dbg !716
  %35 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i64 %33, !dbg !716
  %36 = getelementptr inbounds %struct.iovec, %struct.iovec* %35, i32 0, i32 1, !dbg !717
  %37 = load i64, i64* %36, align 8, !dbg !717
  br label %38, !dbg !718

; <label>:38:                                     ; preds = %31, %27
  %39 = phi i64 [ %30, %27 ], [ %37, %31 ], !dbg !719
  store i64 %39, i64* %11, align 8, !dbg !721
  %40 = load i64, i64* %9, align 8, !dbg !722
  %41 = load i8*, i8** %7, align 8, !dbg !723
  %42 = getelementptr inbounds i8, i8* %41, i64 %40, !dbg !723
  %43 = load i32, i32* %10, align 4, !dbg !724
  %44 = sext i32 %43 to i64, !dbg !725
  %45 = load %struct.iovec*, %struct.iovec** %5, align 8, !dbg !725
  %46 = getelementptr inbounds %struct.iovec, %struct.iovec* %45, i64 %44, !dbg !725
  %47 = getelementptr inbounds %struct.iovec, %struct.iovec* %46, i32 0, i32 0, !dbg !726
  %48 = load i8*, i8** %47, align 8, !dbg !726
  %49 = load i64, i64* %11, align 8, !dbg !727
  %50 = call i8* @Util_Memcpy(i8* %42, i8* %48, i64 %49), !dbg !728
  %51 = load i64, i64* %11, align 8, !dbg !729
  %52 = load i64, i64* %9, align 8, !dbg !730
  %53 = add i64 %52, %51, !dbg !730
  store i64 %53, i64* %9, align 8, !dbg !730
  %54 = load i64, i64* %9, align 8, !dbg !731
  %55 = load i64, i64* %8, align 8, !dbg !733
  %56 = icmp uge i64 %54, %55, !dbg !734
  br i1 %56, label %57, label %58, !dbg !735

; <label>:57:                                     ; preds = %38
  br label %71, !dbg !736

; <label>:58:                                     ; preds = %38
  %59 = load i64, i64* %9, align 8, !dbg !738
  %60 = load i64, i64* %8, align 8, !dbg !741
  %61 = icmp ule i64 %59, %60, !dbg !742
  %62 = xor i1 %61, true, !dbg !743
  %63 = zext i1 %62 to i32, !dbg !743
  %64 = sext i32 %63 to i64, !dbg !744
  %65 = icmp ne i64 %64, 0, !dbg !745
  br i1 %65, label %66, label %67, !dbg !746

; <label>:66:                                     ; preds = %58
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 500) #7, !dbg !747
  unreachable, !dbg !747

; <label>:67:                                     ; preds = %58
  br label %68, !dbg !750

; <label>:68:                                     ; preds = %67
  %69 = load i32, i32* %10, align 4, !dbg !751
  %70 = add nsw i32 %69, 1, !dbg !751
  store i32 %70, i32* %10, align 4, !dbg !751
  br label %12, !dbg !753, !llvm.loop !754

; <label>:71:                                     ; preds = %57, %12
  ret void, !dbg !756
}

; Function Attrs: nounwind uwtable
define %struct.VMIOVec* @IOV_Duplicate(%struct.VMIOVec*) #0 !dbg !757 {
  %2 = alloca %struct.VMIOVec*, align 8
  %3 = alloca %struct.VMIOVecAndEntries*, align 8
  store %struct.VMIOVec* %0, %struct.VMIOVec** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VMIOVec** %2, metadata !760, metadata !53), !dbg !761
  call void @llvm.dbg.declare(metadata %struct.VMIOVecAndEntries** %3, metadata !762, metadata !53), !dbg !763
  %4 = load %struct.VMIOVec*, %struct.VMIOVec** %2, align 8, !dbg !764
  %5 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %4, i32 0, i32 3, !dbg !765
  %6 = load i32, i32* %5, align 8, !dbg !765
  %7 = zext i32 %6 to i64, !dbg !764
  %8 = mul i64 %7, 16, !dbg !766
  %9 = add i64 48, %8, !dbg !767
  %10 = call i8* @UtilSafeMalloc0(i64 %9), !dbg !768
  %11 = bitcast i8* %10 to %struct.VMIOVecAndEntries*, !dbg !768
  store %struct.VMIOVecAndEntries* %11, %struct.VMIOVecAndEntries** %3, align 8, !dbg !769
  %12 = load %struct.VMIOVecAndEntries*, %struct.VMIOVecAndEntries** %3, align 8, !dbg !770
  %13 = getelementptr inbounds %struct.VMIOVecAndEntries, %struct.VMIOVecAndEntries* %12, i32 0, i32 0, !dbg !771
  %14 = bitcast %struct.VMIOVec* %13 to i8*, !dbg !772
  %15 = load %struct.VMIOVec*, %struct.VMIOVec** %2, align 8, !dbg !773
  %16 = bitcast %struct.VMIOVec* %15 to i8*, !dbg !773
  %17 = call i8* @Util_Memcpy(i8* %14, i8* %16, i64 48), !dbg !774
  %18 = load %struct.VMIOVecAndEntries*, %struct.VMIOVecAndEntries** %3, align 8, !dbg !775
  %19 = getelementptr inbounds %struct.VMIOVecAndEntries, %struct.VMIOVecAndEntries* %18, i32 0, i32 0, !dbg !776
  %20 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %19, i32 0, i32 6, !dbg !777
  store %struct.iovec* null, %struct.iovec** %20, align 8, !dbg !778
  %21 = load %struct.VMIOVecAndEntries*, %struct.VMIOVecAndEntries** %3, align 8, !dbg !779
  %22 = getelementptr inbounds %struct.VMIOVecAndEntries, %struct.VMIOVecAndEntries* %21, i32 0, i32 1, !dbg !780
  %23 = getelementptr inbounds [0 x %struct.iovec], [0 x %struct.iovec]* %22, i32 0, i32 0, !dbg !779
  %24 = load %struct.VMIOVecAndEntries*, %struct.VMIOVecAndEntries** %3, align 8, !dbg !781
  %25 = getelementptr inbounds %struct.VMIOVecAndEntries, %struct.VMIOVecAndEntries* %24, i32 0, i32 0, !dbg !782
  %26 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %25, i32 0, i32 5, !dbg !783
  store %struct.iovec* %23, %struct.iovec** %26, align 8, !dbg !784
  %27 = load %struct.VMIOVecAndEntries*, %struct.VMIOVecAndEntries** %3, align 8, !dbg !785
  %28 = getelementptr inbounds %struct.VMIOVecAndEntries, %struct.VMIOVecAndEntries* %27, i32 0, i32 0, !dbg !786
  %29 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %28, i32 0, i32 5, !dbg !787
  %30 = load %struct.iovec*, %struct.iovec** %29, align 8, !dbg !787
  %31 = bitcast %struct.iovec* %30 to i8*, !dbg !785
  %32 = load %struct.VMIOVec*, %struct.VMIOVec** %2, align 8, !dbg !788
  %33 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %32, i32 0, i32 5, !dbg !789
  %34 = load %struct.iovec*, %struct.iovec** %33, align 8, !dbg !789
  %35 = bitcast %struct.iovec* %34 to i8*, !dbg !788
  %36 = load %struct.VMIOVec*, %struct.VMIOVec** %2, align 8, !dbg !790
  %37 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %36, i32 0, i32 3, !dbg !791
  %38 = load i32, i32* %37, align 8, !dbg !791
  %39 = zext i32 %38 to i64, !dbg !790
  %40 = mul i64 %39, 16, !dbg !792
  %41 = call i8* @Util_Memcpy(i8* %31, i8* %35, i64 %40), !dbg !793
  %42 = load %struct.VMIOVecAndEntries*, %struct.VMIOVecAndEntries** %3, align 8, !dbg !794
  %43 = getelementptr inbounds %struct.VMIOVecAndEntries, %struct.VMIOVecAndEntries* %42, i32 0, i32 0, !dbg !795
  ret %struct.VMIOVec* %43, !dbg !796
}

; Function Attrs: nounwind uwtable
define void @IOV_Free(%struct.VMIOVec*) #0 !dbg !797 {
  %2 = alloca %struct.VMIOVec*, align 8
  store %struct.VMIOVec* %0, %struct.VMIOVec** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VMIOVec** %2, metadata !798, metadata !53), !dbg !799
  %3 = load %struct.VMIOVec*, %struct.VMIOVec** %2, align 8, !dbg !800
  %4 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %3, i32 0, i32 6, !dbg !802
  %5 = load %struct.iovec*, %struct.iovec** %4, align 8, !dbg !802
  %6 = icmp ne %struct.iovec* %5, null, !dbg !800
  br i1 %6, label %7, label %14, !dbg !803

; <label>:7:                                      ; preds = %1
  %8 = load %struct.VMIOVec*, %struct.VMIOVec** %2, align 8, !dbg !804
  %9 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %8, i32 0, i32 6, !dbg !806
  %10 = load %struct.iovec*, %struct.iovec** %9, align 8, !dbg !806
  %11 = bitcast %struct.iovec* %10 to i8*, !dbg !804
  call void @free(i8* %11) #8, !dbg !807
  %12 = load %struct.VMIOVec*, %struct.VMIOVec** %2, align 8, !dbg !808
  %13 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %12, i32 0, i32 6, !dbg !809
  store %struct.iovec* null, %struct.iovec** %13, align 8, !dbg !810
  br label %14, !dbg !811

; <label>:14:                                     ; preds = %7, %1
  %15 = load %struct.VMIOVec*, %struct.VMIOVec** %2, align 8, !dbg !812
  %16 = bitcast %struct.VMIOVec* %15 to i8*, !dbg !812
  call void @free(i8* %16) #8, !dbg !813
  ret void, !dbg !814
}

; Function Attrs: nounwind
declare void @free(i8*) #6

; Function Attrs: nounwind uwtable
define void @IOV_WriteBufToIov(i8*, i64, %struct.iovec*, i32) #0 !dbg !815 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !820, metadata !53), !dbg !821
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !822, metadata !53), !dbg !823
  store %struct.iovec* %2, %struct.iovec** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.iovec** %7, metadata !824, metadata !53), !dbg !825
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !826, metadata !53), !dbg !827
  call void @llvm.dbg.declare(metadata i64* %9, metadata !828, metadata !53), !dbg !829
  store i64 0, i64* %9, align 8, !dbg !829
  call void @llvm.dbg.declare(metadata i32* %10, metadata !830, metadata !53), !dbg !831
  %12 = load i8*, i8** %5, align 8, !dbg !832
  %13 = icmp ne i8* %12, null, !dbg !835
  %14 = xor i1 %13, true, !dbg !835
  %15 = zext i1 %14 to i32, !dbg !835
  %16 = sext i32 %15 to i64, !dbg !836
  %17 = icmp ne i64 %16, 0, !dbg !837
  br i1 %17, label %18, label %19, !dbg !838

; <label>:18:                                     ; preds = %4
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 593, i32 29009) #7, !dbg !839
  unreachable, !dbg !839

; <label>:19:                                     ; preds = %4
  store i32 0, i32* %10, align 4, !dbg !842
  br label %20, !dbg !844

; <label>:20:                                     ; preds = %76, %19
  %21 = load i32, i32* %10, align 4, !dbg !845
  %22 = load i32, i32* %8, align 4, !dbg !848
  %23 = icmp slt i32 %21, %22, !dbg !849
  br i1 %23, label %24, label %79, !dbg !850

; <label>:24:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata i64* %11, metadata !851, metadata !53), !dbg !853
  %25 = load i64, i64* %6, align 8, !dbg !854
  %26 = load i64, i64* %9, align 8, !dbg !855
  %27 = sub i64 %25, %26, !dbg !856
  %28 = load i32, i32* %10, align 4, !dbg !857
  %29 = sext i32 %28 to i64, !dbg !858
  %30 = load %struct.iovec*, %struct.iovec** %7, align 8, !dbg !858
  %31 = getelementptr inbounds %struct.iovec, %struct.iovec* %30, i64 %29, !dbg !858
  %32 = getelementptr inbounds %struct.iovec, %struct.iovec* %31, i32 0, i32 1, !dbg !859
  %33 = load i64, i64* %32, align 8, !dbg !859
  %34 = icmp ult i64 %27, %33, !dbg !860
  br i1 %34, label %35, label %39, !dbg !861

; <label>:35:                                     ; preds = %24
  %36 = load i64, i64* %6, align 8, !dbg !862
  %37 = load i64, i64* %9, align 8, !dbg !864
  %38 = sub i64 %36, %37, !dbg !865
  br label %46, !dbg !866

; <label>:39:                                     ; preds = %24
  %40 = load i32, i32* %10, align 4, !dbg !867
  %41 = sext i32 %40 to i64, !dbg !869
  %42 = load %struct.iovec*, %struct.iovec** %7, align 8, !dbg !869
  %43 = getelementptr inbounds %struct.iovec, %struct.iovec* %42, i64 %41, !dbg !869
  %44 = getelementptr inbounds %struct.iovec, %struct.iovec* %43, i32 0, i32 1, !dbg !870
  %45 = load i64, i64* %44, align 8, !dbg !870
  br label %46, !dbg !871

; <label>:46:                                     ; preds = %39, %35
  %47 = phi i64 [ %38, %35 ], [ %45, %39 ], !dbg !872
  store i64 %47, i64* %11, align 8, !dbg !874
  %48 = load i32, i32* %10, align 4, !dbg !875
  %49 = sext i32 %48 to i64, !dbg !876
  %50 = load %struct.iovec*, %struct.iovec** %7, align 8, !dbg !876
  %51 = getelementptr inbounds %struct.iovec, %struct.iovec* %50, i64 %49, !dbg !876
  %52 = getelementptr inbounds %struct.iovec, %struct.iovec* %51, i32 0, i32 0, !dbg !877
  %53 = load i8*, i8** %52, align 8, !dbg !877
  %54 = load i64, i64* %9, align 8, !dbg !878
  %55 = load i8*, i8** %5, align 8, !dbg !879
  %56 = getelementptr inbounds i8, i8* %55, i64 %54, !dbg !879
  %57 = load i64, i64* %11, align 8, !dbg !880
  %58 = call i8* @Util_Memcpy(i8* %53, i8* %56, i64 %57), !dbg !881
  %59 = load i64, i64* %11, align 8, !dbg !882
  %60 = load i64, i64* %9, align 8, !dbg !883
  %61 = add i64 %60, %59, !dbg !883
  store i64 %61, i64* %9, align 8, !dbg !883
  %62 = load i64, i64* %9, align 8, !dbg !884
  %63 = load i64, i64* %6, align 8, !dbg !886
  %64 = icmp uge i64 %62, %63, !dbg !887
  br i1 %64, label %65, label %66, !dbg !888

; <label>:65:                                     ; preds = %46
  br label %79, !dbg !889

; <label>:66:                                     ; preds = %46
  %67 = load i64, i64* %9, align 8, !dbg !891
  %68 = load i64, i64* %6, align 8, !dbg !894
  %69 = icmp ule i64 %67, %68, !dbg !895
  %70 = xor i1 %69, true, !dbg !896
  %71 = zext i1 %70 to i32, !dbg !896
  %72 = sext i32 %71 to i64, !dbg !897
  %73 = icmp ne i64 %72, 0, !dbg !898
  br i1 %73, label %74, label %75, !dbg !899

; <label>:74:                                     ; preds = %66
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 608) #7, !dbg !900
  unreachable, !dbg !900

; <label>:75:                                     ; preds = %66
  br label %76, !dbg !903

; <label>:76:                                     ; preds = %75
  %77 = load i32, i32* %10, align 4, !dbg !904
  %78 = add nsw i32 %77, 1, !dbg !904
  store i32 %78, i32* %10, align 4, !dbg !904
  br label %20, !dbg !906, !llvm.loop !907

; <label>:79:                                     ; preds = %65, %20
  ret void, !dbg !909
}

; Function Attrs: nounwind uwtable
define i64 @IOV_WriteIovToBufPlus(%struct.iovec*, i32, i8*, i64, i64) #0 !dbg !910 {
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.iovec* %0, %struct.iovec** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.iovec** %6, metadata !913, metadata !53), !dbg !914
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !915, metadata !53), !dbg !916
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !917, metadata !53), !dbg !918
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !919, metadata !53), !dbg !920
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !921, metadata !53), !dbg !922
  call void @llvm.dbg.declare(metadata i64* %11, metadata !923, metadata !53), !dbg !924
  call void @llvm.dbg.declare(metadata i64* %12, metadata !925, metadata !53), !dbg !926
  call void @llvm.dbg.declare(metadata i64* %13, metadata !927, metadata !53), !dbg !928
  %17 = load i64, i64* %9, align 8, !dbg !929
  store i64 %17, i64* %13, align 8, !dbg !928
  call void @llvm.dbg.declare(metadata i32* %14, metadata !930, metadata !53), !dbg !931
  %18 = load i8*, i8** %8, align 8, !dbg !932
  %19 = icmp ne i8* %18, null, !dbg !935
  %20 = xor i1 %19, true, !dbg !935
  %21 = zext i1 %20 to i32, !dbg !935
  %22 = sext i32 %21 to i64, !dbg !936
  %23 = icmp ne i64 %22, 0, !dbg !937
  br i1 %23, label %24, label %25, !dbg !938

; <label>:24:                                     ; preds = %5
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 700, i32 29009) #7, !dbg !939
  unreachable, !dbg !939

; <label>:25:                                     ; preds = %5
  %26 = load %struct.iovec*, %struct.iovec** %6, align 8, !dbg !942
  %27 = load i32, i32* %7, align 4, !dbg !943
  %28 = load i64, i64* %10, align 8, !dbg !944
  %29 = call i32 @IOVFindFirstEntryOffset(%struct.iovec* %26, i32 %27, i64 %28, i64* %12), !dbg !945
  store i32 %29, i32* %14, align 4, !dbg !946
  br label %30, !dbg !947

; <label>:30:                                     ; preds = %81, %25
  %31 = load i64, i64* %13, align 8, !dbg !948
  %32 = icmp ne i64 %31, 0, !dbg !948
  br i1 %32, label %33, label %37, !dbg !952

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* %14, align 4, !dbg !953
  %35 = load i32, i32* %7, align 4, !dbg !955
  %36 = icmp slt i32 %34, %35, !dbg !956
  br label %37

; <label>:37:                                     ; preds = %33, %30
  %38 = phi i1 [ false, %30 ], [ %36, %33 ]
  br i1 %38, label %39, label %84, !dbg !957

; <label>:39:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata i8** %15, metadata !959, metadata !53), !dbg !961
  %40 = load i32, i32* %14, align 4, !dbg !962
  %41 = sext i32 %40 to i64, !dbg !963
  %42 = load %struct.iovec*, %struct.iovec** %6, align 8, !dbg !963
  %43 = getelementptr inbounds %struct.iovec, %struct.iovec* %42, i64 %41, !dbg !963
  %44 = getelementptr inbounds %struct.iovec, %struct.iovec* %43, i32 0, i32 0, !dbg !964
  %45 = load i8*, i8** %44, align 8, !dbg !964
  %46 = load i64, i64* %12, align 8, !dbg !965
  %47 = getelementptr inbounds i8, i8* %45, i64 %46, !dbg !966
  store i8* %47, i8** %15, align 8, !dbg !961
  call void @llvm.dbg.declare(metadata i64* %16, metadata !967, metadata !53), !dbg !968
  %48 = load i32, i32* %14, align 4, !dbg !969
  %49 = sext i32 %48 to i64, !dbg !970
  %50 = load %struct.iovec*, %struct.iovec** %6, align 8, !dbg !970
  %51 = getelementptr inbounds %struct.iovec, %struct.iovec* %50, i64 %49, !dbg !970
  %52 = getelementptr inbounds %struct.iovec, %struct.iovec* %51, i32 0, i32 1, !dbg !971
  %53 = load i64, i64* %52, align 8, !dbg !971
  store i64 %53, i64* %16, align 8, !dbg !968
  %54 = load i64, i64* %16, align 8, !dbg !972
  %55 = icmp ule i64 %54, 0, !dbg !974
  br i1 %55, label %56, label %57, !dbg !975

; <label>:56:                                     ; preds = %39
  br label %81, !dbg !976

; <label>:57:                                     ; preds = %39
  %58 = load i64, i64* %13, align 8, !dbg !978
  %59 = load i64, i64* %16, align 8, !dbg !979
  %60 = load i64, i64* %12, align 8, !dbg !980
  %61 = sub i64 %59, %60, !dbg !981
  %62 = icmp ult i64 %58, %61, !dbg !982
  br i1 %62, label %63, label %65, !dbg !983

; <label>:63:                                     ; preds = %57
  %64 = load i64, i64* %13, align 8, !dbg !984
  br label %69, !dbg !986

; <label>:65:                                     ; preds = %57
  %66 = load i64, i64* %16, align 8, !dbg !987
  %67 = load i64, i64* %12, align 8, !dbg !989
  %68 = sub i64 %66, %67, !dbg !990
  br label %69, !dbg !991

; <label>:69:                                     ; preds = %65, %63
  %70 = phi i64 [ %64, %63 ], [ %68, %65 ], !dbg !992
  store i64 %70, i64* %11, align 8, !dbg !994
  %71 = load i8*, i8** %8, align 8, !dbg !995
  %72 = load i8*, i8** %15, align 8, !dbg !996
  %73 = load i64, i64* %11, align 8, !dbg !997
  %74 = call i8* @Util_Memcpy(i8* %71, i8* %72, i64 %73), !dbg !998
  %75 = load i64, i64* %11, align 8, !dbg !999
  %76 = load i64, i64* %13, align 8, !dbg !1000
  %77 = sub i64 %76, %75, !dbg !1000
  store i64 %77, i64* %13, align 8, !dbg !1000
  %78 = load i64, i64* %11, align 8, !dbg !1001
  %79 = load i8*, i8** %8, align 8, !dbg !1002
  %80 = getelementptr inbounds i8, i8* %79, i64 %78, !dbg !1002
  store i8* %80, i8** %8, align 8, !dbg !1002
  store i64 0, i64* %12, align 8, !dbg !1003
  br label %81, !dbg !1004

; <label>:81:                                     ; preds = %69, %56
  %82 = load i32, i32* %14, align 4, !dbg !1005
  %83 = add nsw i32 %82, 1, !dbg !1005
  store i32 %83, i32* %14, align 4, !dbg !1005
  br label %30, !dbg !1007, !llvm.loop !1008

; <label>:84:                                     ; preds = %37
  %85 = load i64, i64* %9, align 8, !dbg !1009
  %86 = load i64, i64* %13, align 8, !dbg !1010
  %87 = sub i64 %85, %86, !dbg !1011
  ret i64 %87, !dbg !1012
}

; Function Attrs: nounwind uwtable
define internal i32 @IOVFindFirstEntryOffset(%struct.iovec*, i32, i64, i64*) #0 !dbg !1013 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.iovec* %0, %struct.iovec** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.iovec** %6, metadata !1017, metadata !53), !dbg !1018
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1019, metadata !53), !dbg !1020
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1021, metadata !53), !dbg !1022
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !1023, metadata !53), !dbg !1024
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1025, metadata !53), !dbg !1026
  store i64 0, i64* %10, align 8, !dbg !1026
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1027, metadata !53), !dbg !1028
  store i64 0, i64* %11, align 8, !dbg !1028
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1029, metadata !53), !dbg !1030
  store i32 0, i32* %12, align 4, !dbg !1031
  br label %13, !dbg !1033

; <label>:13:                                     ; preds = %33, %4
  %14 = load i64, i64* %8, align 8, !dbg !1034
  %15 = load i64, i64* %11, align 8, !dbg !1037
  %16 = icmp uge i64 %14, %15, !dbg !1038
  br i1 %16, label %17, label %21, !dbg !1039

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %12, align 4, !dbg !1040
  %19 = load i32, i32* %7, align 4, !dbg !1042
  %20 = icmp slt i32 %18, %19, !dbg !1043
  br label %21

; <label>:21:                                     ; preds = %17, %13
  %22 = phi i1 [ false, %13 ], [ %20, %17 ]
  br i1 %22, label %23, label %36, !dbg !1044

; <label>:23:                                     ; preds = %21
  %24 = load i32, i32* %12, align 4, !dbg !1046
  %25 = sext i32 %24 to i64, !dbg !1048
  %26 = load %struct.iovec*, %struct.iovec** %6, align 8, !dbg !1048
  %27 = getelementptr inbounds %struct.iovec, %struct.iovec* %26, i64 %25, !dbg !1048
  %28 = getelementptr inbounds %struct.iovec, %struct.iovec* %27, i32 0, i32 1, !dbg !1049
  %29 = load i64, i64* %28, align 8, !dbg !1049
  store i64 %29, i64* %10, align 8, !dbg !1050
  %30 = load i64, i64* %10, align 8, !dbg !1051
  %31 = load i64, i64* %11, align 8, !dbg !1052
  %32 = add i64 %31, %30, !dbg !1052
  store i64 %32, i64* %11, align 8, !dbg !1052
  br label %33, !dbg !1053

; <label>:33:                                     ; preds = %23
  %34 = load i32, i32* %12, align 4, !dbg !1054
  %35 = add nsw i32 %34, 1, !dbg !1054
  store i32 %35, i32* %12, align 4, !dbg !1054
  br label %13, !dbg !1056, !llvm.loop !1057

; <label>:36:                                     ; preds = %21
  %37 = load i64, i64* %8, align 8, !dbg !1059
  %38 = load i64, i64* %11, align 8, !dbg !1061
  %39 = icmp uge i64 %37, %38, !dbg !1062
  br i1 %39, label %40, label %46, !dbg !1063

; <label>:40:                                     ; preds = %36
  %41 = load i32, i32* %12, align 4, !dbg !1064
  %42 = load i32, i32* %7, align 4, !dbg !1066
  %43 = load i64, i64* %11, align 8, !dbg !1067
  %44 = load i64, i64* %8, align 8, !dbg !1068
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 654, i32 %41, i32 %42, i64 %43, i64 %44), !dbg !1069
  %45 = load i32, i32* %7, align 4, !dbg !1070
  store i32 %45, i32* %5, align 4, !dbg !1071
  br label %56, !dbg !1071

; <label>:46:                                     ; preds = %36
  %47 = load i64, i64* %8, align 8, !dbg !1072
  %48 = load i64, i64* %11, align 8, !dbg !1073
  %49 = load i64, i64* %10, align 8, !dbg !1074
  %50 = sub i64 %48, %49, !dbg !1075
  %51 = sub i64 %47, %50, !dbg !1076
  store i64 %51, i64* %11, align 8, !dbg !1077
  %52 = load i64, i64* %11, align 8, !dbg !1078
  %53 = load i64*, i64** %9, align 8, !dbg !1079
  store i64 %52, i64* %53, align 8, !dbg !1080
  %54 = load i32, i32* %12, align 4, !dbg !1081
  %55 = sub nsw i32 %54, 1, !dbg !1082
  store i32 %55, i32* %5, align 4, !dbg !1083
  br label %56, !dbg !1083

; <label>:56:                                     ; preds = %46, %40
  %57 = load i32, i32* %5, align 4, !dbg !1084
  ret i32 %57, !dbg !1084
}

; Function Attrs: nounwind uwtable
define i64 @IOV_WriteBufToIovPlus(i8*, i64, %struct.iovec*, i32, i64) #0 !dbg !1085 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1088, metadata !53), !dbg !1089
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1090, metadata !53), !dbg !1091
  store %struct.iovec* %2, %struct.iovec** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.iovec** %8, metadata !1092, metadata !53), !dbg !1093
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1094, metadata !53), !dbg !1095
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1096, metadata !53), !dbg !1097
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1098, metadata !53), !dbg !1099
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1100, metadata !53), !dbg !1101
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1102, metadata !53), !dbg !1103
  %17 = load i64, i64* %7, align 8, !dbg !1104
  store i64 %17, i64* %13, align 8, !dbg !1103
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1105, metadata !53), !dbg !1106
  %18 = load i8*, i8** %6, align 8, !dbg !1107
  %19 = icmp ne i8* %18, null, !dbg !1110
  %20 = xor i1 %19, true, !dbg !1110
  %21 = zext i1 %20 to i32, !dbg !1110
  %22 = sext i32 %21 to i64, !dbg !1111
  %23 = icmp ne i64 %22, 0, !dbg !1112
  br i1 %23, label %24, label %25, !dbg !1113

; <label>:24:                                     ; preds = %5
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 759, i32 29009) #7, !dbg !1114
  unreachable, !dbg !1114

; <label>:25:                                     ; preds = %5
  %26 = load %struct.iovec*, %struct.iovec** %8, align 8, !dbg !1117
  %27 = load i32, i32* %9, align 4, !dbg !1118
  %28 = load i64, i64* %10, align 8, !dbg !1119
  %29 = call i32 @IOVFindFirstEntryOffset(%struct.iovec* %26, i32 %27, i64 %28, i64* %12), !dbg !1120
  store i32 %29, i32* %14, align 4, !dbg !1121
  br label %30, !dbg !1122

; <label>:30:                                     ; preds = %104, %25
  %31 = load i64, i64* %13, align 8, !dbg !1123
  %32 = icmp ne i64 %31, 0, !dbg !1123
  br i1 %32, label %33, label %37, !dbg !1127

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* %14, align 4, !dbg !1128
  %35 = load i32, i32* %9, align 4, !dbg !1130
  %36 = icmp slt i32 %34, %35, !dbg !1131
  br label %37

; <label>:37:                                     ; preds = %33, %30
  %38 = phi i1 [ false, %30 ], [ %36, %33 ]
  br i1 %38, label %39, label %107, !dbg !1132

; <label>:39:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1134, metadata !53), !dbg !1136
  %40 = load i32, i32* %14, align 4, !dbg !1137
  %41 = sext i32 %40 to i64, !dbg !1138
  %42 = load %struct.iovec*, %struct.iovec** %8, align 8, !dbg !1138
  %43 = getelementptr inbounds %struct.iovec, %struct.iovec* %42, i64 %41, !dbg !1138
  %44 = getelementptr inbounds %struct.iovec, %struct.iovec* %43, i32 0, i32 0, !dbg !1139
  %45 = load i8*, i8** %44, align 8, !dbg !1139
  %46 = load i64, i64* %12, align 8, !dbg !1140
  %47 = getelementptr inbounds i8, i8* %45, i64 %46, !dbg !1141
  store i8* %47, i8** %15, align 8, !dbg !1136
  call void @llvm.dbg.declare(metadata i64* %16, metadata !1142, metadata !53), !dbg !1143
  %48 = load i32, i32* %14, align 4, !dbg !1144
  %49 = sext i32 %48 to i64, !dbg !1145
  %50 = load %struct.iovec*, %struct.iovec** %8, align 8, !dbg !1145
  %51 = getelementptr inbounds %struct.iovec, %struct.iovec* %50, i64 %49, !dbg !1145
  %52 = getelementptr inbounds %struct.iovec, %struct.iovec* %51, i32 0, i32 1, !dbg !1146
  %53 = load i64, i64* %52, align 8, !dbg !1146
  store i64 %53, i64* %16, align 8, !dbg !1143
  %54 = load i32, i32* %14, align 4, !dbg !1147
  %55 = sext i32 %54 to i64, !dbg !1150
  %56 = load %struct.iovec*, %struct.iovec** %8, align 8, !dbg !1150
  %57 = getelementptr inbounds %struct.iovec, %struct.iovec* %56, i64 %55, !dbg !1150
  %58 = getelementptr inbounds %struct.iovec, %struct.iovec* %57, i32 0, i32 0, !dbg !1151
  %59 = load i8*, i8** %58, align 8, !dbg !1151
  %60 = icmp ne i8* %59, null, !dbg !1150
  br i1 %60, label %69, label %61, !dbg !1152

; <label>:61:                                     ; preds = %39
  %62 = load i32, i32* %14, align 4, !dbg !1153
  %63 = sext i32 %62 to i64, !dbg !1155
  %64 = load %struct.iovec*, %struct.iovec** %8, align 8, !dbg !1155
  %65 = getelementptr inbounds %struct.iovec, %struct.iovec* %64, i64 %63, !dbg !1155
  %66 = getelementptr inbounds %struct.iovec, %struct.iovec* %65, i32 0, i32 1, !dbg !1156
  %67 = load i64, i64* %66, align 8, !dbg !1156
  %68 = icmp eq i64 %67, 0, !dbg !1157
  br label %69, !dbg !1158

; <label>:69:                                     ; preds = %61, %39
  %70 = phi i1 [ true, %39 ], [ %68, %61 ]
  %71 = xor i1 %70, true, !dbg !1159
  %72 = zext i1 %71 to i32, !dbg !1159
  %73 = sext i32 %72 to i64, !dbg !1161
  %74 = icmp ne i64 %73, 0, !dbg !1162
  br i1 %74, label %75, label %76, !dbg !1162

; <label>:75:                                     ; preds = %69
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 767, i32 33859) #7, !dbg !1163
  unreachable, !dbg !1163

; <label>:76:                                     ; preds = %69
  %77 = load i64, i64* %16, align 8, !dbg !1166
  %78 = icmp ule i64 %77, 0, !dbg !1168
  br i1 %78, label %79, label %80, !dbg !1169

; <label>:79:                                     ; preds = %76
  br label %104, !dbg !1170

; <label>:80:                                     ; preds = %76
  %81 = load i64, i64* %13, align 8, !dbg !1172
  %82 = load i64, i64* %16, align 8, !dbg !1173
  %83 = load i64, i64* %12, align 8, !dbg !1174
  %84 = sub i64 %82, %83, !dbg !1175
  %85 = icmp ult i64 %81, %84, !dbg !1176
  br i1 %85, label %86, label %88, !dbg !1177

; <label>:86:                                     ; preds = %80
  %87 = load i64, i64* %13, align 8, !dbg !1178
  br label %92, !dbg !1180

; <label>:88:                                     ; preds = %80
  %89 = load i64, i64* %16, align 8, !dbg !1181
  %90 = load i64, i64* %12, align 8, !dbg !1183
  %91 = sub i64 %89, %90, !dbg !1184
  br label %92, !dbg !1185

; <label>:92:                                     ; preds = %88, %86
  %93 = phi i64 [ %87, %86 ], [ %91, %88 ], !dbg !1186
  store i64 %93, i64* %11, align 8, !dbg !1188
  %94 = load i8*, i8** %15, align 8, !dbg !1189
  %95 = load i8*, i8** %6, align 8, !dbg !1190
  %96 = load i64, i64* %11, align 8, !dbg !1191
  %97 = call i8* @Util_Memcpy(i8* %94, i8* %95, i64 %96), !dbg !1192
  %98 = load i64, i64* %11, align 8, !dbg !1193
  %99 = load i64, i64* %13, align 8, !dbg !1194
  %100 = sub i64 %99, %98, !dbg !1194
  store i64 %100, i64* %13, align 8, !dbg !1194
  %101 = load i64, i64* %11, align 8, !dbg !1195
  %102 = load i8*, i8** %6, align 8, !dbg !1196
  %103 = getelementptr inbounds i8, i8* %102, i64 %101, !dbg !1196
  store i8* %103, i8** %6, align 8, !dbg !1196
  store i64 0, i64* %12, align 8, !dbg !1197
  br label %104, !dbg !1198

; <label>:104:                                    ; preds = %92, %79
  %105 = load i32, i32* %14, align 4, !dbg !1199
  %106 = add nsw i32 %105, 1, !dbg !1199
  store i32 %106, i32* %14, align 4, !dbg !1199
  br label %30, !dbg !1201, !llvm.loop !1202

; <label>:107:                                    ; preds = %37
  %108 = load i64, i64* %7, align 8, !dbg !1203
  %109 = load i64, i64* %13, align 8, !dbg !1204
  %110 = sub i64 %108, %109, !dbg !1205
  ret i64 %110, !dbg !1206
}

; Function Attrs: nounwind uwtable
define i64 @IOV_WriteIovToIov(%struct.VMIOVec*, %struct.VMIOVec*, i32) #0 !dbg !1207 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.VMIOVec*, align 8
  %6 = alloca %struct.VMIOVec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.iovec*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.iovec*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store %struct.VMIOVec* %0, %struct.VMIOVec** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.VMIOVec** %5, metadata !1210, metadata !53), !dbg !1211
  store %struct.VMIOVec* %1, %struct.VMIOVec** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.VMIOVec** %6, metadata !1212, metadata !53), !dbg !1213
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1214, metadata !53), !dbg !1215
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1216, metadata !53), !dbg !1217
  store i64 0, i64* %8, align 8, !dbg !1217
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1218, metadata !53), !dbg !1219
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1220, metadata !53), !dbg !1221
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1222, metadata !53), !dbg !1223
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1224, metadata !53), !dbg !1225
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1226, metadata !53), !dbg !1227
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1228, metadata !53), !dbg !1229
  call void @llvm.dbg.declare(metadata i64* %15, metadata !1230, metadata !53), !dbg !1231
  call void @llvm.dbg.declare(metadata i64* %16, metadata !1232, metadata !53), !dbg !1236
  call void @llvm.dbg.declare(metadata i64* %17, metadata !1237, metadata !53), !dbg !1238
  call void @llvm.dbg.declare(metadata i64* %18, metadata !1239, metadata !53), !dbg !1240
  call void @llvm.dbg.declare(metadata %struct.iovec** %19, metadata !1241, metadata !53), !dbg !1242
  %25 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !1243
  %26 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %25, i32 0, i32 5, !dbg !1244
  %27 = load %struct.iovec*, %struct.iovec** %26, align 8, !dbg !1244
  store %struct.iovec* %27, %struct.iovec** %19, align 8, !dbg !1242
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1245, metadata !53), !dbg !1246
  %28 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !1247
  %29 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %28, i32 0, i32 3, !dbg !1248
  %30 = load i32, i32* %29, align 8, !dbg !1248
  store i32 %30, i32* %20, align 4, !dbg !1246
  call void @llvm.dbg.declare(metadata %struct.iovec** %21, metadata !1249, metadata !53), !dbg !1250
  %31 = load %struct.VMIOVec*, %struct.VMIOVec** %6, align 8, !dbg !1251
  %32 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %31, i32 0, i32 5, !dbg !1252
  %33 = load %struct.iovec*, %struct.iovec** %32, align 8, !dbg !1252
  store %struct.iovec* %33, %struct.iovec** %21, align 8, !dbg !1250
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1253, metadata !53), !dbg !1254
  %34 = load %struct.VMIOVec*, %struct.VMIOVec** %6, align 8, !dbg !1255
  %35 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %34, i32 0, i32 3, !dbg !1256
  %36 = load i32, i32* %35, align 8, !dbg !1256
  store i32 %36, i32* %22, align 4, !dbg !1254
  call void @llvm.dbg.declare(metadata i32* %23, metadata !1257, metadata !53), !dbg !1258
  %37 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !1259
  %38 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %37, i32 0, i32 0, !dbg !1260
  %39 = load i64, i64* %38, align 8, !dbg !1260
  %40 = load i32, i32* %7, align 4, !dbg !1261
  %41 = zext i32 %40 to i64, !dbg !1262
  %42 = shl i64 %39, %41, !dbg !1262
  store i64 %42, i64* %12, align 8, !dbg !1263
  %43 = load %struct.VMIOVec*, %struct.VMIOVec** %6, align 8, !dbg !1264
  %44 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %43, i32 0, i32 0, !dbg !1265
  %45 = load i64, i64* %44, align 8, !dbg !1265
  %46 = load i32, i32* %7, align 4, !dbg !1266
  %47 = zext i32 %46 to i64, !dbg !1267
  %48 = shl i64 %45, %47, !dbg !1267
  store i64 %48, i64* %13, align 8, !dbg !1268
  %49 = load i64, i64* %12, align 8, !dbg !1269
  %50 = load i64, i64* %13, align 8, !dbg !1270
  %51 = icmp ugt i64 %49, %50, !dbg !1271
  br i1 %51, label %52, label %54, !dbg !1272

; <label>:52:                                     ; preds = %3
  %53 = load i64, i64* %12, align 8, !dbg !1273
  br label %56, !dbg !1275

; <label>:54:                                     ; preds = %3
  %55 = load i64, i64* %13, align 8, !dbg !1276
  br label %56, !dbg !1278

; <label>:56:                                     ; preds = %54, %52
  %57 = phi i64 [ %53, %52 ], [ %55, %54 ], !dbg !1279
  store i64 %57, i64* %14, align 8, !dbg !1281
  %58 = load i64, i64* %12, align 8, !dbg !1282
  %59 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !1283
  %60 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %59, i32 0, i32 2, !dbg !1284
  %61 = load i64, i64* %60, align 8, !dbg !1284
  %62 = add i64 %58, %61, !dbg !1285
  store i64 %62, i64* %15, align 8, !dbg !1286
  %63 = load i64, i64* %13, align 8, !dbg !1287
  %64 = load %struct.VMIOVec*, %struct.VMIOVec** %6, align 8, !dbg !1288
  %65 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %64, i32 0, i32 2, !dbg !1289
  %66 = load i64, i64* %65, align 8, !dbg !1289
  %67 = add i64 %63, %66, !dbg !1290
  store i64 %67, i64* %16, align 8, !dbg !1291
  %68 = load i64, i64* %15, align 8, !dbg !1292
  %69 = load i64, i64* %16, align 8, !dbg !1293
  %70 = icmp ult i64 %68, %69, !dbg !1294
  br i1 %70, label %71, label %73, !dbg !1295

; <label>:71:                                     ; preds = %56
  %72 = load i64, i64* %15, align 8, !dbg !1296
  br label %75, !dbg !1297

; <label>:73:                                     ; preds = %56
  %74 = load i64, i64* %16, align 8, !dbg !1298
  br label %75, !dbg !1299

; <label>:75:                                     ; preds = %73, %71
  %76 = phi i64 [ %72, %71 ], [ %74, %73 ], !dbg !1300
  store i64 %76, i64* %15, align 8, !dbg !1301
  %77 = load i64, i64* %15, align 8, !dbg !1302
  %78 = load i64, i64* %14, align 8, !dbg !1303
  %79 = sub i64 %77, %78, !dbg !1304
  store i64 %79, i64* %16, align 8, !dbg !1305
  %80 = load i64, i64* %16, align 8, !dbg !1306
  %81 = icmp sle i64 %80, 0, !dbg !1308
  br i1 %81, label %82, label %95, !dbg !1309

; <label>:82:                                     ; preds = %75
  %83 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !1310
  %84 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %83, i32 0, i32 0, !dbg !1312
  %85 = load i64, i64* %84, align 8, !dbg !1312
  %86 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !1313
  %87 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %86, i32 0, i32 1, !dbg !1314
  %88 = load i64, i64* %87, align 8, !dbg !1314
  %89 = load %struct.VMIOVec*, %struct.VMIOVec** %6, align 8, !dbg !1315
  %90 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %89, i32 0, i32 0, !dbg !1316
  %91 = load i64, i64* %90, align 8, !dbg !1316
  %92 = load %struct.VMIOVec*, %struct.VMIOVec** %6, align 8, !dbg !1317
  %93 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %92, i32 0, i32 1, !dbg !1318
  %94 = load i64, i64* %93, align 8, !dbg !1318
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 844, i64 %85, i64 %88, i64 %91, i64 %94), !dbg !1319
  store i64 0, i64* %4, align 8, !dbg !1320
  br label %173, !dbg !1320

; <label>:95:                                     ; preds = %75
  %96 = load %struct.VMIOVec*, %struct.VMIOVec** %5, align 8, !dbg !1321
  %97 = getelementptr inbounds %struct.VMIOVec, %struct.VMIOVec* %96, i32 0, i32 5, !dbg !1322
  %98 = load %struct.iovec*, %struct.iovec** %97, align 8, !dbg !1322
  store %struct.iovec* %98, %struct.iovec** %19, align 8, !dbg !1323
  %99 = load i64, i64* %14, align 8, !dbg !1324
  %100 = load i64, i64* %12, align 8, !dbg !1325
  %101 = sub i64 %99, %100, !dbg !1326
  store i64 %101, i64* %17, align 8, !dbg !1327
  %102 = load i64, i64* %14, align 8, !dbg !1328
  %103 = load i64, i64* %13, align 8, !dbg !1329
  %104 = sub i64 %102, %103, !dbg !1330
  store i64 %104, i64* %18, align 8, !dbg !1331
  %105 = load i64, i64* %16, align 8, !dbg !1332
  store i64 %105, i64* %11, align 8, !dbg !1333
  %106 = load %struct.iovec*, %struct.iovec** %19, align 8, !dbg !1334
  %107 = load i32, i32* %20, align 4, !dbg !1335
  %108 = load i64, i64* %17, align 8, !dbg !1336
  %109 = call i32 @IOVFindFirstEntryOffset(%struct.iovec* %106, i32 %107, i64 %108, i64* %9), !dbg !1337
  store i32 %109, i32* %23, align 4, !dbg !1338
  br label %110, !dbg !1339

; <label>:110:                                    ; preds = %166, %95
  %111 = load i64, i64* %16, align 8, !dbg !1340
  %112 = icmp ne i64 %111, 0, !dbg !1340
  br i1 %112, label %113, label %117, !dbg !1344

; <label>:113:                                    ; preds = %110
  %114 = load i32, i32* %23, align 4, !dbg !1345
  %115 = load i32, i32* %20, align 4, !dbg !1347
  %116 = icmp ult i32 %114, %115, !dbg !1348
  br label %117

; <label>:117:                                    ; preds = %113, %110
  %118 = phi i1 [ false, %110 ], [ %116, %113 ]
  br i1 %118, label %119, label %169, !dbg !1349

; <label>:119:                                    ; preds = %117
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1351, metadata !53), !dbg !1353
  %120 = load i32, i32* %23, align 4, !dbg !1354
  %121 = sext i32 %120 to i64, !dbg !1355
  %122 = load %struct.iovec*, %struct.iovec** %19, align 8, !dbg !1355
  %123 = getelementptr inbounds %struct.iovec, %struct.iovec* %122, i64 %121, !dbg !1355
  %124 = getelementptr inbounds %struct.iovec, %struct.iovec* %123, i32 0, i32 1, !dbg !1356
  %125 = load i64, i64* %124, align 8, !dbg !1356
  store i64 %125, i64* %24, align 8, !dbg !1353
  %126 = load i64, i64* %24, align 8, !dbg !1357
  %127 = icmp ule i64 %126, 0, !dbg !1359
  br i1 %127, label %128, label %129, !dbg !1360

; <label>:128:                                    ; preds = %119
  br label %166, !dbg !1361

; <label>:129:                                    ; preds = %119
  %130 = load i64, i64* %16, align 8, !dbg !1363
  %131 = load i64, i64* %24, align 8, !dbg !1364
  %132 = load i64, i64* %9, align 8, !dbg !1365
  %133 = sub i64 %131, %132, !dbg !1366
  %134 = icmp ult i64 %130, %133, !dbg !1367
  br i1 %134, label %135, label %137, !dbg !1368

; <label>:135:                                    ; preds = %129
  %136 = load i64, i64* %16, align 8, !dbg !1369
  br label %141, !dbg !1371

; <label>:137:                                    ; preds = %129
  %138 = load i64, i64* %24, align 8, !dbg !1372
  %139 = load i64, i64* %9, align 8, !dbg !1374
  %140 = sub i64 %138, %139, !dbg !1375
  br label %141, !dbg !1376

; <label>:141:                                    ; preds = %137, %135
  %142 = phi i64 [ %136, %135 ], [ %140, %137 ], !dbg !1377
  store i64 %142, i64* %8, align 8, !dbg !1379
  %143 = load i32, i32* %23, align 4, !dbg !1380
  %144 = sext i32 %143 to i64, !dbg !1381
  %145 = load %struct.iovec*, %struct.iovec** %19, align 8, !dbg !1381
  %146 = getelementptr inbounds %struct.iovec, %struct.iovec* %145, i64 %144, !dbg !1381
  %147 = getelementptr inbounds %struct.iovec, %struct.iovec* %146, i32 0, i32 0, !dbg !1382
  %148 = load i8*, i8** %147, align 8, !dbg !1382
  %149 = load i64, i64* %9, align 8, !dbg !1383
  %150 = getelementptr inbounds i8, i8* %148, i64 %149, !dbg !1384
  %151 = load i64, i64* %8, align 8, !dbg !1385
  %152 = load %struct.iovec*, %struct.iovec** %21, align 8, !dbg !1386
  %153 = load i32, i32* %22, align 4, !dbg !1387
  %154 = load i64, i64* %18, align 8, !dbg !1388
  %155 = call i64 @IOV_WriteBufToIovPlus(i8* %150, i64 %151, %struct.iovec* %152, i32 %153, i64 %154), !dbg !1389
  store i64 %155, i64* %10, align 8, !dbg !1390
  %156 = load i64, i64* %10, align 8, !dbg !1391
  %157 = icmp eq i64 %156, 0, !dbg !1393
  br i1 %157, label %158, label %159, !dbg !1394

; <label>:158:                                    ; preds = %141
  br label %169, !dbg !1395

; <label>:159:                                    ; preds = %141
  %160 = load i64, i64* %10, align 8, !dbg !1397
  %161 = load i64, i64* %16, align 8, !dbg !1398
  %162 = sub i64 %161, %160, !dbg !1398
  store i64 %162, i64* %16, align 8, !dbg !1398
  %163 = load i64, i64* %10, align 8, !dbg !1399
  %164 = load i64, i64* %18, align 8, !dbg !1400
  %165 = add i64 %164, %163, !dbg !1400
  store i64 %165, i64* %18, align 8, !dbg !1400
  store i64 0, i64* %9, align 8, !dbg !1401
  br label %166, !dbg !1402

; <label>:166:                                    ; preds = %159, %128
  %167 = load i32, i32* %23, align 4, !dbg !1403
  %168 = add nsw i32 %167, 1, !dbg !1403
  store i32 %168, i32* %23, align 4, !dbg !1403
  br label %110, !dbg !1405, !llvm.loop !1406

; <label>:169:                                    ; preds = %158, %117
  %170 = load i64, i64* %11, align 8, !dbg !1407
  %171 = load i64, i64* %16, align 8, !dbg !1408
  %172 = sub i64 %170, %171, !dbg !1409
  store i64 %172, i64* %4, align 8, !dbg !1410
  br label %173, !dbg !1410

; <label>:173:                                    ; preds = %169, %82
  %174 = load i64, i64* %4, align 8, !dbg !1411
  ret i64 %174, !dbg !1411
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Util_ValidateBytes(i8*, i64, i8 zeroext) #5 !dbg !1412 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1415, metadata !53), !dbg !1416
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1417, metadata !53), !dbg !1418
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1419, metadata !53), !dbg !1420
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1421, metadata !53), !dbg !1422
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1423, metadata !53), !dbg !1424
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1425, metadata !53), !dbg !1426
  %11 = load i64, i64* %6, align 8, !dbg !1427
  %12 = icmp eq i64 %11, 0, !dbg !1429
  br i1 %12, label %13, label %14, !dbg !1430

; <label>:13:                                     ; preds = %3
  store i8* null, i8** %4, align 8, !dbg !1431
  br label %81, !dbg !1431

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %5, align 8, !dbg !1433
  store i8* %15, i8** %8, align 8, !dbg !1434
  %16 = load i8*, i8** %8, align 8, !dbg !1435
  %17 = load i64, i64* %6, align 8, !dbg !1436
  %18 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !1437
  store i8* %18, i8** %9, align 8, !dbg !1438
  br label %19, !dbg !1439

; <label>:19:                                     ; preds = %40, %14
  %20 = load i8*, i8** %8, align 8, !dbg !1440
  %21 = ptrtoint i8* %20 to i64, !dbg !1442
  %22 = urem i64 %21, 8, !dbg !1443
  %23 = icmp ne i64 %22, 0, !dbg !1444
  br i1 %23, label %24, label %41, !dbg !1444

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %8, align 8, !dbg !1445
  %26 = load i8, i8* %25, align 1, !dbg !1448
  %27 = zext i8 %26 to i32, !dbg !1448
  %28 = load i8, i8* %7, align 1, !dbg !1449
  %29 = zext i8 %28 to i32, !dbg !1449
  %30 = icmp ne i32 %27, %29, !dbg !1450
  br i1 %30, label %31, label %33, !dbg !1451

; <label>:31:                                     ; preds = %24
  %32 = load i8*, i8** %8, align 8, !dbg !1452
  store i8* %32, i8** %4, align 8, !dbg !1454
  br label %81, !dbg !1454

; <label>:33:                                     ; preds = %24
  %34 = load i8*, i8** %8, align 8, !dbg !1455
  %35 = getelementptr inbounds i8, i8* %34, i32 1, !dbg !1455
  store i8* %35, i8** %8, align 8, !dbg !1455
  %36 = load i8*, i8** %8, align 8, !dbg !1456
  %37 = load i8*, i8** %9, align 8, !dbg !1458
  %38 = icmp eq i8* %36, %37, !dbg !1459
  br i1 %38, label %39, label %40, !dbg !1460

; <label>:39:                                     ; preds = %33
  store i8* null, i8** %4, align 8, !dbg !1461
  br label %81, !dbg !1461

; <label>:40:                                     ; preds = %33
  br label %19, !dbg !1463, !llvm.loop !1465

; <label>:41:                                     ; preds = %19
  %42 = bitcast i64* %10 to i8*, !dbg !1466
  %43 = load i8, i8* %7, align 1, !dbg !1467
  %44 = zext i8 %43 to i32, !dbg !1468
  %45 = trunc i32 %44 to i8, !dbg !1466
  call void @llvm.memset.p0i8.i64(i8* %42, i8 %45, i64 8, i32 8, i1 false), !dbg !1466
  br label %46, !dbg !1469

; <label>:46:                                     ; preds = %58, %41
  %47 = load i8*, i8** %8, align 8, !dbg !1470
  %48 = getelementptr inbounds i8, i8* %47, i64 8, !dbg !1471
  %49 = load i8*, i8** %9, align 8, !dbg !1472
  %50 = icmp ule i8* %48, %49, !dbg !1473
  br i1 %50, label %51, label %63, !dbg !1474

; <label>:51:                                     ; preds = %46
  %52 = load i8*, i8** %8, align 8, !dbg !1475
  %53 = bitcast i8* %52 to i64*, !dbg !1478
  %54 = load i64, i64* %53, align 8, !dbg !1478
  %55 = load i64, i64* %10, align 8, !dbg !1479
  %56 = icmp ne i64 %54, %55, !dbg !1480
  br i1 %56, label %57, label %58, !dbg !1481

; <label>:57:                                     ; preds = %51
  br label %63, !dbg !1482

; <label>:58:                                     ; preds = %51
  %59 = load i64, i64* %6, align 8, !dbg !1484
  %60 = sub i64 %59, 8, !dbg !1484
  store i64 %60, i64* %6, align 8, !dbg !1484
  %61 = load i8*, i8** %8, align 8, !dbg !1485
  %62 = getelementptr inbounds i8, i8* %61, i64 8, !dbg !1485
  store i8* %62, i8** %8, align 8, !dbg !1485
  br label %46, !dbg !1486, !llvm.loop !1487

; <label>:63:                                     ; preds = %57, %46
  br label %64, !dbg !1488

; <label>:64:                                     ; preds = %77, %63
  %65 = load i8*, i8** %8, align 8, !dbg !1489
  %66 = load i8*, i8** %9, align 8, !dbg !1490
  %67 = icmp ult i8* %65, %66, !dbg !1491
  br i1 %67, label %68, label %80, !dbg !1492

; <label>:68:                                     ; preds = %64
  %69 = load i8*, i8** %8, align 8, !dbg !1493
  %70 = load i8, i8* %69, align 1, !dbg !1496
  %71 = zext i8 %70 to i32, !dbg !1496
  %72 = load i8, i8* %7, align 1, !dbg !1497
  %73 = zext i8 %72 to i32, !dbg !1497
  %74 = icmp ne i32 %71, %73, !dbg !1498
  br i1 %74, label %75, label %77, !dbg !1499

; <label>:75:                                     ; preds = %68
  %76 = load i8*, i8** %8, align 8, !dbg !1500
  store i8* %76, i8** %4, align 8, !dbg !1502
  br label %81, !dbg !1502

; <label>:77:                                     ; preds = %68
  %78 = load i8*, i8** %8, align 8, !dbg !1503
  %79 = getelementptr inbounds i8, i8* %78, i32 1, !dbg !1503
  store i8* %79, i8** %8, align 8, !dbg !1503
  br label %64, !dbg !1504, !llvm.loop !1505

; <label>:80:                                     ; preds = %64
  store i8* null, i8** %4, align 8, !dbg !1506
  br label %81, !dbg !1506

; <label>:81:                                     ; preds = %80, %75, %39, %31, %13
  %82 = load i8*, i8** %4, align 8, !dbg !1507
  ret i8* %82, !dbg !1507
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "iovector.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line634")
!2 = !{}
!3 = !{!4, !7, !9, !10, !16, !17, !18}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !5, line: 216, baseType: !6)
!5 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line634")
!6 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !12, line: 177, baseType: !13)
!12 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line634")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !14, line: 48, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line634")
!15 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !14, line: 122, baseType: !6)
!17 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !12, line: 171, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !14, line: 55, baseType: !6)
!21 = !{i32 2, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!24 = distinct !DISubprogram(name: "IOV_Log", scope: !25, file: !25, line: 61, type: !26, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!25 = !DIFile(filename: "iovector.c", directory: "/home/lichi/Desktop/open-vm-tools/line634")
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "VMIOVec", file: !31, line: 64, baseType: !32)
!31 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/iovector.h", directory: "/home/lichi/Desktop/open-vm-tools/line634")
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VMIOVec", file: !31, line: 55, size: 384, align: 64, elements: !33)
!33 = !{!34, !36, !37, !38, !42, !44, !51}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "startSector", scope: !32, file: !31, line: 56, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "SectorType", file: !12, line: 567, baseType: !19)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "numSectors", scope: !32, file: !31, line: 57, baseType: !35, size: 64, align: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "numBytes", scope: !32, file: !31, line: 58, baseType: !19, size: 64, align: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "numEntries", scope: !32, file: !31, line: 59, baseType: !39, size: 32, align: 32, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !12, line: 173, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !14, line: 51, baseType: !41)
!41 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !32, file: !31, line: 60, baseType: !43, size: 8, align: 8, offset: 224)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !12, line: 230, baseType: !8)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !32, file: !31, line: 61, baseType: !45, size: 64, align: 64, offset: 256)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !47, line: 43, size: 128, align: 64, elements: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/uio.h", directory: "/home/lichi/Desktop/open-vm-tools/line634")
!48 = !{!49, !50}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !46, file: !47, line: 45, baseType: !9, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !46, file: !47, line: 46, baseType: !4, size: 64, align: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "allocEntries", scope: !32, file: !31, line: 62, baseType: !45, size: 64, align: 64, offset: 320)
!52 = !DILocalVariable(name: "iov", arg: 1, scope: !24, file: !25, line: 61, type: !28)
!53 = !DIExpression()
!54 = !DILocation(line: 61, column: 24, scope: !24)
!55 = !DILocation(line: 63, column: 8, scope: !56)
!56 = distinct !DILexicalBlock(scope: !24, file: !25, line: 63, column: 8)
!57 = !DILocation(line: 63, column: 8, scope: !24)
!58 = !DILocalVariable(name: "i", scope: !59, file: !25, line: 64, type: !39)
!59 = distinct !DILexicalBlock(scope: !56, file: !25, line: 63, column: 13)
!60 = !DILocation(line: 64, column: 14, scope: !59)
!61 = !DILocation(line: 65, column: 7, scope: !59)
!62 = !DILocation(line: 66, column: 19, scope: !59)
!63 = !DILocation(line: 66, column: 24, scope: !59)
!64 = !DILocation(line: 66, column: 7, scope: !59)
!65 = !DILocation(line: 67, column: 38, scope: !59)
!66 = !DILocation(line: 67, column: 43, scope: !59)
!67 = !DILocation(line: 67, column: 7, scope: !59)
!68 = !DILocation(line: 68, column: 37, scope: !59)
!69 = !DILocation(line: 68, column: 42, scope: !59)
!70 = !DILocation(line: 68, column: 7, scope: !59)
!71 = !DILocation(line: 69, column: 35, scope: !59)
!72 = !DILocation(line: 69, column: 40, scope: !59)
!73 = !DILocation(line: 69, column: 7, scope: !59)
!74 = !DILocation(line: 70, column: 32, scope: !59)
!75 = !DILocation(line: 70, column: 37, scope: !59)
!76 = !DILocation(line: 70, column: 7, scope: !59)
!77 = !DILocation(line: 71, column: 14, scope: !78)
!78 = distinct !DILexicalBlock(scope: !59, file: !25, line: 71, column: 7)
!79 = !DILocation(line: 71, column: 12, scope: !78)
!80 = !DILocation(line: 71, column: 19, scope: !81)
!81 = !DILexicalBlockFile(scope: !82, file: !25, discriminator: 1)
!82 = distinct !DILexicalBlock(scope: !78, file: !25, line: 71, column: 7)
!83 = !DILocation(line: 71, column: 23, scope: !81)
!84 = !DILocation(line: 71, column: 28, scope: !81)
!85 = !DILocation(line: 71, column: 21, scope: !81)
!86 = !DILocation(line: 71, column: 7, scope: !81)
!87 = !DILocation(line: 73, column: 14, scope: !88)
!88 = distinct !DILexicalBlock(scope: !82, file: !25, line: 71, column: 45)
!89 = !DILocation(line: 73, column: 30, scope: !88)
!90 = !DILocation(line: 73, column: 17, scope: !88)
!91 = !DILocation(line: 73, column: 22, scope: !88)
!92 = !DILocation(line: 73, column: 33, scope: !88)
!93 = !DILocation(line: 73, column: 64, scope: !88)
!94 = !DILocation(line: 73, column: 51, scope: !88)
!95 = !DILocation(line: 73, column: 56, scope: !88)
!96 = !DILocation(line: 73, column: 67, scope: !88)
!97 = !DILocation(line: 72, column: 10, scope: !88)
!98 = !DILocation(line: 74, column: 7, scope: !88)
!99 = !DILocation(line: 71, column: 41, scope: !100)
!100 = !DILexicalBlockFile(scope: !82, file: !25, discriminator: 2)
!101 = !DILocation(line: 71, column: 7, scope: !100)
!102 = distinct !{!102, !103}
!103 = !DILocation(line: 71, column: 7, scope: !59)
!104 = !DILocation(line: 75, column: 4, scope: !59)
!105 = !DILocation(line: 76, column: 7, scope: !106)
!106 = distinct !DILexicalBlock(scope: !56, file: !25, line: 75, column: 11)
!107 = !DILocation(line: 78, column: 1, scope: !24)
!108 = distinct !DISubprogram(name: "IOV_Zero", scope: !25, file: !25, line: 98, type: !109, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !111}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!112 = !DILocalVariable(name: "iov", arg: 1, scope: !108, file: !25, line: 98, type: !111)
!113 = !DILocation(line: 98, column: 19, scope: !108)
!114 = !DILocalVariable(name: "numBytesLeft", scope: !108, file: !25, line: 100, type: !19)
!115 = !DILocation(line: 100, column: 11, scope: !108)
!116 = !DILocalVariable(name: "i", scope: !108, file: !25, line: 101, type: !17)
!117 = !DILocation(line: 101, column: 8, scope: !108)
!118 = !DILocation(line: 106, column: 19, scope: !108)
!119 = !DILocation(line: 106, column: 24, scope: !108)
!120 = !DILocation(line: 106, column: 17, scope: !108)
!121 = !DILocation(line: 107, column: 6, scope: !108)
!122 = !DILocation(line: 109, column: 4, scope: !108)
!123 = !DILocation(line: 109, column: 11, scope: !124)
!124 = !DILexicalBlockFile(scope: !108, file: !25, discriminator: 1)
!125 = !DILocation(line: 109, column: 24, scope: !124)
!126 = !DILocation(line: 109, column: 4, scope: !124)
!127 = !DILocalVariable(name: "c", scope: !128, file: !25, line: 110, type: !4)
!128 = distinct !DILexicalBlock(scope: !108, file: !25, line: 109, column: 29)
!129 = !DILocation(line: 110, column: 14, scope: !128)
!130 = !DILocation(line: 110, column: 21, scope: !128)
!131 = !DILocation(line: 110, column: 51, scope: !128)
!132 = !DILocation(line: 110, column: 38, scope: !128)
!133 = !DILocation(line: 110, column: 43, scope: !128)
!134 = !DILocation(line: 110, column: 54, scope: !128)
!135 = !DILocation(line: 110, column: 35, scope: !128)
!136 = !DILocation(line: 110, column: 19, scope: !128)
!137 = !DILocation(line: 110, column: 67, scope: !138)
!138 = !DILexicalBlockFile(scope: !128, file: !25, discriminator: 1)
!139 = !DILocation(line: 110, column: 19, scope: !138)
!140 = !DILocation(line: 110, column: 97, scope: !141)
!141 = !DILexicalBlockFile(scope: !128, file: !25, discriminator: 2)
!142 = !DILocation(line: 110, column: 84, scope: !141)
!143 = !DILocation(line: 110, column: 89, scope: !141)
!144 = !DILocation(line: 110, column: 100, scope: !141)
!145 = !DILocation(line: 110, column: 19, scope: !141)
!146 = !DILocation(line: 110, column: 19, scope: !147)
!147 = !DILexicalBlockFile(scope: !128, file: !25, discriminator: 3)
!148 = !DILocation(line: 110, column: 14, scope: !147)
!149 = !DILocalVariable(name: "buf", scope: !128, file: !25, line: 111, type: !9)
!150 = !DILocation(line: 111, column: 13, scope: !128)
!151 = !DILocation(line: 113, column: 33, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !25, line: 113, column: 13)
!153 = distinct !DILexicalBlock(scope: !128, file: !25, line: 113, column: 8)
!154 = !DILocation(line: 113, column: 37, scope: !152)
!155 = !DILocation(line: 113, column: 42, scope: !152)
!156 = !DILocation(line: 113, column: 35, scope: !152)
!157 = !DILocation(line: 113, column: 31, scope: !152)
!158 = !DILocation(line: 113, column: 30, scope: !152)
!159 = !DILocation(line: 113, column: 13, scope: !152)
!160 = !DILocation(line: 113, column: 13, scope: !153)
!161 = !DILocation(line: 113, column: 62, scope: !162)
!162 = !DILexicalBlockFile(scope: !163, file: !25, discriminator: 1)
!163 = distinct !DILexicalBlock(scope: !152, file: !25, line: 113, column: 60)
!164 = !DILocation(line: 114, column: 26, scope: !128)
!165 = !DILocation(line: 114, column: 13, scope: !128)
!166 = !DILocation(line: 114, column: 18, scope: !128)
!167 = !DILocation(line: 114, column: 29, scope: !128)
!168 = !DILocation(line: 114, column: 11, scope: !128)
!169 = !DILocation(line: 116, column: 14, scope: !128)
!170 = !DILocation(line: 116, column: 22, scope: !128)
!171 = !DILocation(line: 116, column: 7, scope: !128)
!172 = !DILocation(line: 117, column: 23, scope: !128)
!173 = !DILocation(line: 117, column: 20, scope: !128)
!174 = !DILocation(line: 118, column: 8, scope: !128)
!175 = !DILocation(line: 109, column: 4, scope: !176)
!176 = !DILexicalBlockFile(scope: !108, file: !25, discriminator: 2)
!177 = distinct !{!177, !122}
!178 = !DILocation(line: 120, column: 1, scope: !108)
!179 = distinct !DISubprogram(name: "IOV_Allocate", scope: !25, file: !25, line: 140, type: !180, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!180 = !DISubroutineType(types: !181)
!181 = !{!111, !17}
!182 = !DILocalVariable(name: "numEntries", arg: 1, scope: !179, file: !25, line: 140, type: !17)
!183 = !DILocation(line: 140, column: 18, scope: !179)
!184 = !DILocalVariable(name: "iov", scope: !179, file: !25, line: 142, type: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VMIOVecAndEntries", file: !25, line: 38, size: 384, align: 64, elements: !187)
!187 = !{!188, !189}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !186, file: !25, line: 39, baseType: !30, size: 384, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !186, file: !25, line: 40, baseType: !190, align: 64, offset: 384)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, align: 64, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 0)
!193 = !DILocation(line: 142, column: 30, scope: !179)
!194 = !DILocation(line: 144, column: 41, scope: !179)
!195 = !DILocation(line: 144, column: 52, scope: !179)
!196 = !DILocation(line: 144, column: 39, scope: !179)
!197 = !DILocation(line: 144, column: 10, scope: !179)
!198 = !DILocation(line: 144, column: 8, scope: !179)
!199 = !DILocation(line: 145, column: 23, scope: !179)
!200 = !DILocation(line: 145, column: 28, scope: !179)
!201 = !DILocation(line: 145, column: 4, scope: !179)
!202 = !DILocation(line: 145, column: 9, scope: !179)
!203 = !DILocation(line: 145, column: 13, scope: !179)
!204 = !DILocation(line: 145, column: 21, scope: !179)
!205 = !DILocation(line: 146, column: 4, scope: !179)
!206 = !DILocation(line: 146, column: 9, scope: !179)
!207 = !DILocation(line: 146, column: 13, scope: !179)
!208 = !DILocation(line: 146, column: 26, scope: !179)
!209 = !DILocation(line: 147, column: 26, scope: !179)
!210 = !DILocation(line: 147, column: 4, scope: !179)
!211 = !DILocation(line: 147, column: 9, scope: !179)
!212 = !DILocation(line: 147, column: 13, scope: !179)
!213 = !DILocation(line: 147, column: 24, scope: !179)
!214 = !DILocation(line: 149, column: 12, scope: !179)
!215 = !DILocation(line: 149, column: 17, scope: !179)
!216 = !DILocation(line: 149, column: 4, scope: !179)
!217 = distinct !DISubprogram(name: "IOV_DuplicateStatic", scope: !25, file: !25, line: 171, type: !218, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !111, !17, !45, !111}
!220 = !DILocalVariable(name: "iovIn", arg: 1, scope: !217, file: !25, line: 171, type: !111)
!221 = !DILocation(line: 171, column: 30, scope: !217)
!222 = !DILocalVariable(name: "numStaticEntries", arg: 2, scope: !217, file: !25, line: 172, type: !17)
!223 = !DILocation(line: 172, column: 25, scope: !217)
!224 = !DILocalVariable(name: "staticEntries", arg: 3, scope: !217, file: !25, line: 173, type: !45)
!225 = !DILocation(line: 173, column: 35, scope: !217)
!226 = !DILocalVariable(name: "iovOut", arg: 4, scope: !217, file: !25, line: 174, type: !111)
!227 = !DILocation(line: 174, column: 30, scope: !217)
!228 = !DILocation(line: 180, column: 16, scope: !217)
!229 = !DILocation(line: 180, column: 24, scope: !217)
!230 = !DILocation(line: 180, column: 4, scope: !217)
!231 = !DILocation(line: 181, column: 8, scope: !232)
!232 = distinct !DILexicalBlock(scope: !217, file: !25, line: 181, column: 8)
!233 = !DILocation(line: 181, column: 15, scope: !232)
!234 = !DILocation(line: 181, column: 29, scope: !232)
!235 = !DILocation(line: 181, column: 26, scope: !232)
!236 = !DILocation(line: 181, column: 8, scope: !217)
!237 = !DILocation(line: 182, column: 7, scope: !238)
!238 = distinct !DILexicalBlock(scope: !232, file: !25, line: 181, column: 47)
!239 = !DILocation(line: 182, column: 15, scope: !238)
!240 = !DILocation(line: 182, column: 28, scope: !238)
!241 = !DILocation(line: 183, column: 25, scope: !238)
!242 = !DILocation(line: 183, column: 7, scope: !238)
!243 = !DILocation(line: 183, column: 15, scope: !238)
!244 = !DILocation(line: 183, column: 23, scope: !238)
!245 = !DILocation(line: 184, column: 4, scope: !238)
!246 = !DILocation(line: 185, column: 47, scope: !247)
!247 = distinct !DILexicalBlock(scope: !232, file: !25, line: 184, column: 11)
!248 = !DILocation(line: 185, column: 54, scope: !247)
!249 = !DILocation(line: 185, column: 65, scope: !247)
!250 = !DILocation(line: 185, column: 30, scope: !247)
!251 = !DILocation(line: 185, column: 7, scope: !247)
!252 = !DILocation(line: 185, column: 15, scope: !247)
!253 = !DILocation(line: 185, column: 28, scope: !247)
!254 = !DILocation(line: 187, column: 25, scope: !247)
!255 = !DILocation(line: 187, column: 33, scope: !247)
!256 = !DILocation(line: 187, column: 7, scope: !247)
!257 = !DILocation(line: 187, column: 15, scope: !247)
!258 = !DILocation(line: 187, column: 23, scope: !247)
!259 = !DILocation(line: 189, column: 16, scope: !217)
!260 = !DILocation(line: 189, column: 24, scope: !217)
!261 = !DILocation(line: 189, column: 33, scope: !217)
!262 = !DILocation(line: 189, column: 40, scope: !217)
!263 = !DILocation(line: 190, column: 11, scope: !217)
!264 = !DILocation(line: 190, column: 18, scope: !217)
!265 = !DILocation(line: 190, column: 29, scope: !217)
!266 = !DILocation(line: 189, column: 4, scope: !217)
!267 = !DILocation(line: 191, column: 1, scope: !217)
!268 = distinct !DISubprogram(name: "IOV_MakeSingleIOV", scope: !25, file: !25, line: 211, type: !269, isLocal: false, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !111, !45, !35, !35, !39, !10, !43}
!271 = !DILocalVariable(name: "v", arg: 1, scope: !268, file: !25, line: 211, type: !111)
!272 = !DILocation(line: 211, column: 28, scope: !268)
!273 = !DILocalVariable(name: "entry", arg: 2, scope: !268, file: !25, line: 212, type: !45)
!274 = !DILocation(line: 212, column: 33, scope: !268)
!275 = !DILocalVariable(name: "startSector", arg: 3, scope: !268, file: !25, line: 213, type: !35)
!276 = !DILocation(line: 213, column: 30, scope: !268)
!277 = !DILocalVariable(name: "dataLen", arg: 4, scope: !268, file: !25, line: 214, type: !35)
!278 = !DILocation(line: 214, column: 30, scope: !268)
!279 = !DILocalVariable(name: "sectorSize", arg: 5, scope: !268, file: !25, line: 215, type: !39)
!280 = !DILocation(line: 215, column: 26, scope: !268)
!281 = !DILocalVariable(name: "buffer", arg: 6, scope: !268, file: !25, line: 216, type: !10)
!282 = !DILocation(line: 216, column: 26, scope: !268)
!283 = !DILocalVariable(name: "read", arg: 7, scope: !268, file: !25, line: 217, type: !43)
!284 = !DILocation(line: 217, column: 24, scope: !268)
!285 = !DILocation(line: 222, column: 14, scope: !268)
!286 = !DILocation(line: 222, column: 4, scope: !268)
!287 = !DILocation(line: 222, column: 7, scope: !268)
!288 = !DILocation(line: 222, column: 12, scope: !268)
!289 = !DILocation(line: 223, column: 21, scope: !268)
!290 = !DILocation(line: 223, column: 4, scope: !268)
!291 = !DILocation(line: 223, column: 7, scope: !268)
!292 = !DILocation(line: 223, column: 19, scope: !268)
!293 = !DILocation(line: 224, column: 20, scope: !268)
!294 = !DILocation(line: 224, column: 4, scope: !268)
!295 = !DILocation(line: 224, column: 7, scope: !268)
!296 = !DILocation(line: 224, column: 18, scope: !268)
!297 = !DILocation(line: 225, column: 18, scope: !268)
!298 = !DILocation(line: 225, column: 28, scope: !268)
!299 = !DILocation(line: 225, column: 26, scope: !268)
!300 = !DILocation(line: 225, column: 4, scope: !268)
!301 = !DILocation(line: 225, column: 7, scope: !268)
!302 = !DILocation(line: 225, column: 16, scope: !268)
!303 = !DILocation(line: 226, column: 4, scope: !268)
!304 = !DILocation(line: 226, column: 7, scope: !268)
!305 = !DILocation(line: 226, column: 18, scope: !268)
!306 = !DILocation(line: 227, column: 17, scope: !268)
!307 = !DILocation(line: 227, column: 4, scope: !268)
!308 = !DILocation(line: 227, column: 7, scope: !268)
!309 = !DILocation(line: 227, column: 15, scope: !268)
!310 = !DILocation(line: 228, column: 22, scope: !268)
!311 = !DILocation(line: 228, column: 4, scope: !268)
!312 = !DILocation(line: 228, column: 7, scope: !268)
!313 = !DILocation(line: 228, column: 20, scope: !268)
!314 = !DILocation(line: 229, column: 30, scope: !268)
!315 = !DILocation(line: 229, column: 4, scope: !268)
!316 = !DILocation(line: 229, column: 11, scope: !268)
!317 = !DILocation(line: 229, column: 20, scope: !268)
!318 = !DILocation(line: 230, column: 30, scope: !268)
!319 = !DILocation(line: 230, column: 33, scope: !268)
!320 = !DILocation(line: 230, column: 4, scope: !268)
!321 = !DILocation(line: 230, column: 11, scope: !268)
!322 = !DILocation(line: 230, column: 19, scope: !268)
!323 = !DILocation(line: 231, column: 1, scope: !268)
!324 = distinct !DISubprogram(name: "IOV_IsZero", scope: !25, file: !25, line: 253, type: !325, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!325 = !DISubroutineType(types: !326)
!326 = !{!43, !111}
!327 = !DILocalVariable(name: "iov", arg: 1, scope: !324, file: !25, line: 253, type: !111)
!328 = !DILocation(line: 253, column: 21, scope: !324)
!329 = !DILocalVariable(name: "i", scope: !324, file: !25, line: 255, type: !39)
!330 = !DILocation(line: 255, column: 11, scope: !324)
!331 = !DILocation(line: 257, column: 11, scope: !332)
!332 = distinct !DILexicalBlock(scope: !324, file: !25, line: 257, column: 4)
!333 = !DILocation(line: 257, column: 9, scope: !332)
!334 = !DILocation(line: 257, column: 16, scope: !335)
!335 = !DILexicalBlockFile(scope: !336, file: !25, discriminator: 1)
!336 = distinct !DILexicalBlock(scope: !332, file: !25, line: 257, column: 4)
!337 = !DILocation(line: 257, column: 20, scope: !335)
!338 = !DILocation(line: 257, column: 25, scope: !335)
!339 = !DILocation(line: 257, column: 18, scope: !335)
!340 = !DILocation(line: 257, column: 4, scope: !335)
!341 = !DILocation(line: 258, column: 44, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !25, line: 258, column: 11)
!343 = distinct !DILexicalBlock(scope: !336, file: !25, line: 257, column: 42)
!344 = !DILocation(line: 258, column: 31, scope: !342)
!345 = !DILocation(line: 258, column: 36, scope: !342)
!346 = !DILocation(line: 258, column: 47, scope: !342)
!347 = !DILocation(line: 259, column: 44, scope: !342)
!348 = !DILocation(line: 259, column: 31, scope: !342)
!349 = !DILocation(line: 259, column: 36, scope: !342)
!350 = !DILocation(line: 259, column: 47, scope: !342)
!351 = !DILocation(line: 258, column: 12, scope: !342)
!352 = !DILocation(line: 258, column: 11, scope: !343)
!353 = !DILocation(line: 260, column: 10, scope: !354)
!354 = distinct !DILexicalBlock(scope: !342, file: !25, line: 259, column: 57)
!355 = !DILocation(line: 262, column: 4, scope: !343)
!356 = !DILocation(line: 257, column: 38, scope: !357)
!357 = !DILexicalBlockFile(scope: !336, file: !25, discriminator: 2)
!358 = !DILocation(line: 257, column: 4, scope: !357)
!359 = distinct !{!359, !360}
!360 = !DILocation(line: 257, column: 4, scope: !324)
!361 = !DILocation(line: 264, column: 4, scope: !324)
!362 = !DILocation(line: 265, column: 1, scope: !324)
!363 = distinct !DISubprogram(name: "Util_BufferIsEmpty", scope: !364, file: !364, line: 146, type: !365, isLocal: true, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!364 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/utilZero.h", directory: "/home/lichi/Desktop/open-vm-tools/line634")
!365 = !DISubroutineType(types: !366)
!366 = !{!43, !367, !4}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!369 = !DILocalVariable(name: "base", arg: 1, scope: !363, file: !364, line: 146, type: !367)
!370 = !DILocation(line: 146, column: 32, scope: !363)
!371 = !DILocalVariable(name: "len", arg: 2, scope: !363, file: !364, line: 147, type: !4)
!372 = !DILocation(line: 147, column: 27, scope: !363)
!373 = !DILocation(line: 149, column: 30, scope: !363)
!374 = !DILocation(line: 149, column: 36, scope: !363)
!375 = !DILocation(line: 149, column: 11, scope: !363)
!376 = !DILocation(line: 149, column: 47, scope: !363)
!377 = !DILocation(line: 149, column: 4, scope: !363)
!378 = distinct !DISubprogram(name: "IOV_Split", scope: !25, file: !25, line: 374, type: !379, isLocal: false, isDefinition: true, scopeLine: 377, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!379 = !DISubroutineType(types: !380)
!380 = !{!111, !111, !35, !39}
!381 = !DILocalVariable(name: "origV", arg: 1, scope: !378, file: !25, line: 374, type: !111)
!382 = !DILocation(line: 374, column: 20, scope: !378)
!383 = !DILocalVariable(name: "numSectors", arg: 2, scope: !378, file: !25, line: 375, type: !35)
!384 = !DILocation(line: 375, column: 22, scope: !378)
!385 = !DILocalVariable(name: "sectorSize", arg: 3, scope: !378, file: !25, line: 376, type: !39)
!386 = !DILocation(line: 376, column: 18, scope: !378)
!387 = !DILocalVariable(name: "v", scope: !378, file: !25, line: 378, type: !185)
!388 = !DILocation(line: 378, column: 30, scope: !378)
!389 = !DILocalVariable(name: "cpySize", scope: !378, file: !25, line: 379, type: !17)
!390 = !DILocation(line: 379, column: 8, scope: !378)
!391 = !DILocalVariable(name: "iov", scope: !378, file: !25, line: 380, type: !111)
!392 = !DILocation(line: 380, column: 13, scope: !378)
!393 = !DILocation(line: 390, column: 37, scope: !378)
!394 = !DILocation(line: 390, column: 44, scope: !378)
!395 = !DILocation(line: 390, column: 55, scope: !378)
!396 = !DILocation(line: 390, column: 35, scope: !378)
!397 = !DILocation(line: 390, column: 8, scope: !378)
!398 = !DILocation(line: 390, column: 6, scope: !378)
!399 = !DILocation(line: 391, column: 11, scope: !378)
!400 = !DILocation(line: 391, column: 14, scope: !378)
!401 = !DILocation(line: 391, column: 8, scope: !378)
!402 = !DILocation(line: 392, column: 16, scope: !378)
!403 = !DILocation(line: 392, column: 21, scope: !378)
!404 = !DILocation(line: 392, column: 4, scope: !378)
!405 = !DILocation(line: 393, column: 4, scope: !378)
!406 = !DILocation(line: 393, column: 9, scope: !378)
!407 = !DILocation(line: 393, column: 22, scope: !378)
!408 = !DILocation(line: 394, column: 22, scope: !378)
!409 = !DILocation(line: 394, column: 4, scope: !378)
!410 = !DILocation(line: 394, column: 9, scope: !378)
!411 = !DILocation(line: 394, column: 20, scope: !378)
!412 = !DILocation(line: 400, column: 8, scope: !413)
!413 = distinct !DILexicalBlock(scope: !378, file: !25, line: 400, column: 8)
!414 = !DILocation(line: 400, column: 15, scope: !413)
!415 = !DILocation(line: 400, column: 24, scope: !413)
!416 = !DILocation(line: 400, column: 33, scope: !413)
!417 = !DILocation(line: 400, column: 52, scope: !413)
!418 = !DILocation(line: 401, column: 8, scope: !413)
!419 = !DILocation(line: 401, column: 15, scope: !413)
!420 = !DILocation(line: 401, column: 24, scope: !413)
!421 = !DILocation(line: 401, column: 32, scope: !413)
!422 = !DILocation(line: 400, column: 8, scope: !423)
!423 = !DILexicalBlockFile(scope: !378, file: !25, discriminator: 1)
!424 = !DILocation(line: 404, column: 22, scope: !425)
!425 = distinct !DILexicalBlock(scope: !413, file: !25, line: 401, column: 38)
!426 = !DILocation(line: 404, column: 25, scope: !425)
!427 = !DILocation(line: 404, column: 7, scope: !425)
!428 = !DILocation(line: 404, column: 12, scope: !425)
!429 = !DILocation(line: 404, column: 20, scope: !425)
!430 = !DILocation(line: 405, column: 19, scope: !425)
!431 = !DILocation(line: 405, column: 24, scope: !425)
!432 = !DILocation(line: 405, column: 33, scope: !425)
!433 = !DILocation(line: 405, column: 40, scope: !425)
!434 = !DILocation(line: 405, column: 7, scope: !425)
!435 = !DILocation(line: 407, column: 23, scope: !425)
!436 = !DILocation(line: 407, column: 28, scope: !425)
!437 = !DILocation(line: 407, column: 41, scope: !425)
!438 = !DILocation(line: 407, column: 39, scope: !425)
!439 = !DILocation(line: 407, column: 7, scope: !425)
!440 = !DILocation(line: 407, column: 12, scope: !425)
!441 = !DILocation(line: 407, column: 21, scope: !425)
!442 = !DILocation(line: 409, column: 29, scope: !425)
!443 = !DILocation(line: 409, column: 7, scope: !425)
!444 = !DILocation(line: 409, column: 14, scope: !425)
!445 = !DILocation(line: 409, column: 26, scope: !425)
!446 = !DILocation(line: 410, column: 28, scope: !425)
!447 = !DILocation(line: 410, column: 7, scope: !425)
!448 = !DILocation(line: 410, column: 14, scope: !425)
!449 = !DILocation(line: 410, column: 25, scope: !425)
!450 = !DILocation(line: 411, column: 26, scope: !425)
!451 = !DILocation(line: 411, column: 31, scope: !425)
!452 = !DILocation(line: 411, column: 7, scope: !425)
!453 = !DILocation(line: 411, column: 14, scope: !425)
!454 = !DILocation(line: 411, column: 23, scope: !425)
!455 = !DILocation(line: 413, column: 14, scope: !425)
!456 = !DILocation(line: 413, column: 7, scope: !425)
!457 = !DILocation(line: 417, column: 8, scope: !458)
!458 = distinct !DILexicalBlock(scope: !378, file: !25, line: 417, column: 8)
!459 = !DILocation(line: 417, column: 15, scope: !458)
!460 = !DILocation(line: 417, column: 29, scope: !458)
!461 = !DILocation(line: 417, column: 26, scope: !458)
!462 = !DILocation(line: 417, column: 8, scope: !378)
!463 = !DILocation(line: 418, column: 17, scope: !464)
!464 = distinct !DILexicalBlock(scope: !458, file: !25, line: 417, column: 41)
!465 = !DILocation(line: 418, column: 24, scope: !464)
!466 = !DILocation(line: 418, column: 35, scope: !464)
!467 = !DILocation(line: 418, column: 15, scope: !464)
!468 = !DILocation(line: 419, column: 22, scope: !464)
!469 = !DILocation(line: 419, column: 25, scope: !464)
!470 = !DILocation(line: 419, column: 7, scope: !464)
!471 = !DILocation(line: 419, column: 12, scope: !464)
!472 = !DILocation(line: 419, column: 20, scope: !464)
!473 = !DILocation(line: 420, column: 19, scope: !464)
!474 = !DILocation(line: 420, column: 24, scope: !464)
!475 = !DILocation(line: 420, column: 33, scope: !464)
!476 = !DILocation(line: 420, column: 40, scope: !464)
!477 = !DILocation(line: 420, column: 49, scope: !464)
!478 = !DILocation(line: 420, column: 7, scope: !464)
!479 = !DILocation(line: 422, column: 29, scope: !464)
!480 = !DILocation(line: 422, column: 7, scope: !464)
!481 = !DILocation(line: 422, column: 14, scope: !464)
!482 = !DILocation(line: 422, column: 26, scope: !464)
!483 = !DILocation(line: 423, column: 7, scope: !464)
!484 = !DILocation(line: 423, column: 14, scope: !464)
!485 = !DILocation(line: 423, column: 25, scope: !464)
!486 = !DILocation(line: 425, column: 7, scope: !464)
!487 = !DILocation(line: 425, column: 14, scope: !464)
!488 = !DILocation(line: 425, column: 25, scope: !464)
!489 = !DILocation(line: 426, column: 7, scope: !464)
!490 = !DILocation(line: 426, column: 14, scope: !464)
!491 = !DILocation(line: 426, column: 23, scope: !464)
!492 = !DILocation(line: 427, column: 4, scope: !464)
!493 = !DILocalVariable(name: "tmpPtr", scope: !494, file: !25, line: 428, type: !9)
!494 = distinct !DILexicalBlock(scope: !458, file: !25, line: 427, column: 11)
!495 = !DILocation(line: 428, column: 13, scope: !494)
!496 = !DILocalVariable(name: "overlap", scope: !494, file: !25, line: 429, type: !46)
!497 = !DILocation(line: 429, column: 20, scope: !494)
!498 = !DILocation(line: 431, column: 29, scope: !494)
!499 = !DILocation(line: 431, column: 7, scope: !494)
!500 = !DILocation(line: 431, column: 14, scope: !494)
!501 = !DILocation(line: 431, column: 26, scope: !494)
!502 = !DILocation(line: 432, column: 28, scope: !494)
!503 = !DILocation(line: 432, column: 7, scope: !494)
!504 = !DILocation(line: 432, column: 14, scope: !494)
!505 = !DILocation(line: 432, column: 25, scope: !494)
!506 = !DILocation(line: 433, column: 37, scope: !494)
!507 = !DILocation(line: 433, column: 42, scope: !494)
!508 = !DILocation(line: 433, column: 49, scope: !494)
!509 = !DILocation(line: 434, column: 37, scope: !494)
!510 = !DILocation(line: 434, column: 44, scope: !494)
!511 = !DILocation(line: 434, column: 54, scope: !494)
!512 = !DILocation(line: 434, column: 61, scope: !494)
!513 = !DILocation(line: 434, column: 52, scope: !494)
!514 = !DILocation(line: 435, column: 47, scope: !494)
!515 = !DILocation(line: 433, column: 24, scope: !494)
!516 = !DILocation(line: 433, column: 7, scope: !494)
!517 = !DILocation(line: 433, column: 14, scope: !494)
!518 = !DILocation(line: 433, column: 22, scope: !494)
!519 = !DILocation(line: 437, column: 17, scope: !494)
!520 = !DILocation(line: 437, column: 22, scope: !494)
!521 = !DILocation(line: 437, column: 33, scope: !494)
!522 = !DILocation(line: 437, column: 15, scope: !494)
!523 = !DILocation(line: 438, column: 16, scope: !494)
!524 = !DILocation(line: 438, column: 21, scope: !494)
!525 = !DILocation(line: 438, column: 14, scope: !494)
!526 = !DILocation(line: 439, column: 22, scope: !494)
!527 = !DILocation(line: 439, column: 25, scope: !494)
!528 = !DILocation(line: 439, column: 7, scope: !494)
!529 = !DILocation(line: 439, column: 12, scope: !494)
!530 = !DILocation(line: 439, column: 20, scope: !494)
!531 = !DILocation(line: 440, column: 19, scope: !494)
!532 = !DILocation(line: 440, column: 24, scope: !494)
!533 = !DILocation(line: 440, column: 33, scope: !494)
!534 = !DILocation(line: 440, column: 41, scope: !494)
!535 = !DILocation(line: 440, column: 7, scope: !494)
!536 = !DILocation(line: 442, column: 28, scope: !494)
!537 = !DILocation(line: 442, column: 33, scope: !494)
!538 = !DILocation(line: 442, column: 7, scope: !494)
!539 = !DILocation(line: 442, column: 14, scope: !494)
!540 = !DILocation(line: 442, column: 25, scope: !494)
!541 = !DILocation(line: 443, column: 19, scope: !542)
!542 = distinct !DILexicalBlock(scope: !494, file: !25, line: 443, column: 11)
!543 = !DILocation(line: 443, column: 27, scope: !542)
!544 = !DILocation(line: 443, column: 11, scope: !494)
!545 = !DILocation(line: 444, column: 44, scope: !546)
!546 = distinct !DILexicalBlock(scope: !542, file: !25, line: 443, column: 33)
!547 = !DILocation(line: 444, column: 10, scope: !546)
!548 = !DILocation(line: 444, column: 17, scope: !546)
!549 = !DILocation(line: 444, column: 26, scope: !546)
!550 = !DILocation(line: 444, column: 34, scope: !546)
!551 = !DILocation(line: 445, column: 45, scope: !546)
!552 = !DILocation(line: 445, column: 10, scope: !546)
!553 = !DILocation(line: 445, column: 17, scope: !546)
!554 = !DILocation(line: 445, column: 26, scope: !546)
!555 = !DILocation(line: 445, column: 35, scope: !546)
!556 = !DILocation(line: 446, column: 10, scope: !546)
!557 = !DILocation(line: 446, column: 17, scope: !546)
!558 = !DILocation(line: 446, column: 27, scope: !546)
!559 = !DILocation(line: 447, column: 7, scope: !546)
!560 = !DILocation(line: 448, column: 26, scope: !494)
!561 = !DILocation(line: 448, column: 31, scope: !494)
!562 = !DILocation(line: 448, column: 7, scope: !494)
!563 = !DILocation(line: 448, column: 14, scope: !494)
!564 = !DILocation(line: 448, column: 23, scope: !494)
!565 = !DILocation(line: 452, column: 11, scope: !378)
!566 = !DILocation(line: 452, column: 4, scope: !378)
!567 = !DILocation(line: 453, column: 1, scope: !378)
!568 = distinct !DISubprogram(name: "IOVSplitList", scope: !25, file: !25, line: 294, type: !569, isLocal: true, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!569 = !DISubroutineType(types: !570)
!570 = !{!45, !111, !45, !45, !45, !39}
!571 = !DILocalVariable(name: "regionV", arg: 1, scope: !568, file: !25, line: 294, type: !111)
!572 = !DILocation(line: 294, column: 23, scope: !568)
!573 = !DILocalVariable(name: "entries", arg: 2, scope: !568, file: !25, line: 295, type: !45)
!574 = !DILocation(line: 295, column: 28, scope: !568)
!575 = !DILocalVariable(name: "endPtr", arg: 3, scope: !568, file: !25, line: 296, type: !45)
!576 = !DILocation(line: 296, column: 28, scope: !568)
!577 = !DILocalVariable(name: "overlap", arg: 4, scope: !568, file: !25, line: 297, type: !45)
!578 = !DILocation(line: 297, column: 28, scope: !568)
!579 = !DILocalVariable(name: "sectorSize", arg: 5, scope: !568, file: !25, line: 298, type: !39)
!580 = !DILocation(line: 298, column: 21, scope: !568)
!581 = !DILocalVariable(name: "curEntry", scope: !568, file: !25, line: 300, type: !45)
!582 = !DILocation(line: 300, column: 18, scope: !568)
!583 = !DILocation(line: 302, column: 15, scope: !568)
!584 = !DILocation(line: 302, column: 13, scope: !568)
!585 = !DILocation(line: 303, column: 23, scope: !568)
!586 = !DILocation(line: 303, column: 4, scope: !568)
!587 = !DILocation(line: 303, column: 13, scope: !568)
!588 = !DILocation(line: 303, column: 21, scope: !568)
!589 = !DILocation(line: 304, column: 4, scope: !568)
!590 = !DILocation(line: 304, column: 13, scope: !568)
!591 = !DILocation(line: 304, column: 24, scope: !568)
!592 = !DILocation(line: 305, column: 4, scope: !568)
!593 = !DILocation(line: 305, column: 13, scope: !568)
!594 = !DILocation(line: 305, column: 22, scope: !568)
!595 = !DILocation(line: 308, column: 4, scope: !568)
!596 = distinct !{!596, !595}
!597 = !DILocation(line: 309, column: 7, scope: !598)
!598 = distinct !DILexicalBlock(scope: !568, file: !25, line: 308, column: 7)
!599 = !DILocation(line: 309, column: 16, scope: !598)
!600 = !DILocation(line: 309, column: 26, scope: !598)
!601 = !DILocation(line: 310, column: 28, scope: !598)
!602 = !DILocation(line: 310, column: 38, scope: !598)
!603 = !DILocation(line: 310, column: 7, scope: !598)
!604 = !DILocation(line: 310, column: 16, scope: !598)
!605 = !DILocation(line: 310, column: 25, scope: !598)
!606 = !DILocation(line: 312, column: 11, scope: !607)
!607 = distinct !DILexicalBlock(scope: !598, file: !25, line: 312, column: 11)
!608 = !DILocation(line: 312, column: 20, scope: !607)
!609 = !DILocation(line: 312, column: 31, scope: !607)
!610 = !DILocation(line: 312, column: 40, scope: !607)
!611 = !DILocation(line: 312, column: 53, scope: !607)
!612 = !DILocation(line: 312, column: 51, scope: !607)
!613 = !DILocation(line: 312, column: 29, scope: !607)
!614 = !DILocation(line: 312, column: 11, scope: !598)
!615 = !DILocalVariable(name: "spillover", scope: !616, file: !25, line: 313, type: !17)
!616 = distinct !DILexicalBlock(scope: !607, file: !25, line: 312, column: 65)
!617 = !DILocation(line: 313, column: 14, scope: !616)
!618 = !DILocation(line: 315, column: 29, scope: !616)
!619 = !DILocation(line: 315, column: 38, scope: !616)
!620 = !DILocation(line: 316, column: 45, scope: !616)
!621 = !DILocation(line: 316, column: 54, scope: !616)
!622 = !DILocation(line: 316, column: 67, scope: !616)
!623 = !DILocation(line: 316, column: 65, scope: !616)
!624 = !DILocation(line: 315, column: 47, scope: !616)
!625 = !DILocation(line: 315, column: 22, scope: !616)
!626 = !DILocation(line: 315, column: 20, scope: !616)
!627 = !DILocation(line: 326, column: 31, scope: !616)
!628 = !DILocation(line: 326, column: 10, scope: !616)
!629 = !DILocation(line: 326, column: 19, scope: !616)
!630 = !DILocation(line: 326, column: 28, scope: !616)
!631 = !DILocation(line: 327, column: 31, scope: !616)
!632 = !DILocation(line: 327, column: 10, scope: !616)
!633 = !DILocation(line: 327, column: 20, scope: !616)
!634 = !DILocation(line: 327, column: 28, scope: !616)
!635 = !DILocation(line: 328, column: 29, scope: !616)
!636 = !DILocation(line: 328, column: 10, scope: !616)
!637 = !DILocation(line: 328, column: 19, scope: !616)
!638 = !DILocation(line: 328, column: 27, scope: !616)
!639 = !DILocation(line: 329, column: 38, scope: !616)
!640 = !DILocation(line: 329, column: 48, scope: !616)
!641 = !DILocation(line: 329, column: 59, scope: !616)
!642 = !DILocation(line: 329, column: 69, scope: !616)
!643 = !DILocation(line: 329, column: 57, scope: !616)
!644 = !DILocation(line: 329, column: 10, scope: !616)
!645 = !DILocation(line: 329, column: 19, scope: !616)
!646 = !DILocation(line: 329, column: 28, scope: !616)
!647 = !DILocation(line: 330, column: 10, scope: !616)
!648 = !DILocation(line: 331, column: 18, scope: !649)
!649 = distinct !DILexicalBlock(scope: !607, file: !25, line: 331, column: 18)
!650 = !DILocation(line: 331, column: 27, scope: !649)
!651 = !DILocation(line: 331, column: 39, scope: !649)
!652 = !DILocation(line: 331, column: 48, scope: !649)
!653 = !DILocation(line: 331, column: 61, scope: !649)
!654 = !DILocation(line: 331, column: 59, scope: !649)
!655 = !DILocation(line: 331, column: 36, scope: !649)
!656 = !DILocation(line: 331, column: 18, scope: !607)
!657 = !DILocation(line: 338, column: 10, scope: !658)
!658 = distinct !DILexicalBlock(scope: !649, file: !25, line: 331, column: 73)
!659 = !DILocation(line: 338, column: 19, scope: !658)
!660 = !DILocation(line: 338, column: 27, scope: !658)
!661 = !DILocation(line: 339, column: 18, scope: !658)
!662 = !DILocation(line: 340, column: 10, scope: !658)
!663 = !DILocation(line: 342, column: 15, scope: !598)
!664 = !DILocation(line: 343, column: 4, scope: !598)
!665 = !DILocation(line: 343, column: 13, scope: !666)
!666 = !DILexicalBlockFile(scope: !568, file: !25, discriminator: 1)
!667 = !DILocation(line: 343, column: 24, scope: !666)
!668 = !DILocation(line: 343, column: 22, scope: !666)
!669 = !DILocation(line: 343, column: 4, scope: !666)
!670 = !DILocation(line: 347, column: 11, scope: !568)
!671 = !DILocation(line: 347, column: 4, scope: !568)
!672 = distinct !DISubprogram(name: "IOV_WriteIovToBuf", scope: !25, file: !25, line: 474, type: !673, isLocal: false, isDefinition: true, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !675, !17, !10, !4}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64, align: 64)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!677 = !DILocalVariable(name: "entries", arg: 1, scope: !672, file: !25, line: 474, type: !675)
!678 = !DILocation(line: 474, column: 39, scope: !672)
!679 = !DILocalVariable(name: "numEntries", arg: 2, scope: !672, file: !25, line: 475, type: !17)
!680 = !DILocation(line: 475, column: 23, scope: !672)
!681 = !DILocalVariable(name: "bufOut", arg: 3, scope: !672, file: !25, line: 476, type: !10)
!682 = !DILocation(line: 476, column: 26, scope: !672)
!683 = !DILocalVariable(name: "bufSize", arg: 4, scope: !672, file: !25, line: 477, type: !4)
!684 = !DILocation(line: 477, column: 26, scope: !672)
!685 = !DILocalVariable(name: "count", scope: !672, file: !25, line: 479, type: !4)
!686 = !DILocation(line: 479, column: 11, scope: !672)
!687 = !DILocalVariable(name: "i", scope: !672, file: !25, line: 480, type: !17)
!688 = !DILocation(line: 480, column: 8, scope: !672)
!689 = !DILocation(line: 485, column: 11, scope: !690)
!690 = distinct !DILexicalBlock(scope: !672, file: !25, line: 485, column: 4)
!691 = !DILocation(line: 485, column: 9, scope: !690)
!692 = !DILocation(line: 485, column: 16, scope: !693)
!693 = !DILexicalBlockFile(scope: !694, file: !25, discriminator: 1)
!694 = distinct !DILexicalBlock(scope: !690, file: !25, line: 485, column: 4)
!695 = !DILocation(line: 485, column: 20, scope: !693)
!696 = !DILocation(line: 485, column: 18, scope: !693)
!697 = !DILocation(line: 485, column: 4, scope: !693)
!698 = !DILocalVariable(name: "numBytes", scope: !699, file: !25, line: 486, type: !4)
!699 = distinct !DILexicalBlock(scope: !694, file: !25, line: 485, column: 37)
!700 = !DILocation(line: 486, column: 14, scope: !699)
!701 = !DILocation(line: 491, column: 21, scope: !699)
!702 = !DILocation(line: 491, column: 31, scope: !699)
!703 = !DILocation(line: 491, column: 29, scope: !699)
!704 = !DILocation(line: 491, column: 49, scope: !699)
!705 = !DILocation(line: 491, column: 41, scope: !699)
!706 = !DILocation(line: 491, column: 52, scope: !699)
!707 = !DILocation(line: 491, column: 38, scope: !699)
!708 = !DILocation(line: 491, column: 19, scope: !699)
!709 = !DILocation(line: 491, column: 65, scope: !710)
!710 = !DILexicalBlockFile(scope: !699, file: !25, discriminator: 1)
!711 = !DILocation(line: 491, column: 75, scope: !710)
!712 = !DILocation(line: 491, column: 73, scope: !710)
!713 = !DILocation(line: 491, column: 19, scope: !710)
!714 = !DILocation(line: 491, column: 93, scope: !715)
!715 = !DILexicalBlockFile(scope: !699, file: !25, discriminator: 2)
!716 = !DILocation(line: 491, column: 85, scope: !715)
!717 = !DILocation(line: 491, column: 96, scope: !715)
!718 = !DILocation(line: 491, column: 19, scope: !715)
!719 = !DILocation(line: 491, column: 19, scope: !720)
!720 = !DILexicalBlockFile(scope: !699, file: !25, discriminator: 3)
!721 = !DILocation(line: 491, column: 16, scope: !720)
!722 = !DILocation(line: 493, column: 27, scope: !699)
!723 = !DILocation(line: 493, column: 20, scope: !699)
!724 = !DILocation(line: 493, column: 43, scope: !699)
!725 = !DILocation(line: 493, column: 35, scope: !699)
!726 = !DILocation(line: 493, column: 46, scope: !699)
!727 = !DILocation(line: 493, column: 56, scope: !699)
!728 = !DILocation(line: 493, column: 7, scope: !699)
!729 = !DILocation(line: 494, column: 16, scope: !699)
!730 = !DILocation(line: 494, column: 13, scope: !699)
!731 = !DILocation(line: 496, column: 11, scope: !732)
!732 = distinct !DILexicalBlock(scope: !699, file: !25, line: 496, column: 11)
!733 = !DILocation(line: 496, column: 20, scope: !732)
!734 = !DILocation(line: 496, column: 17, scope: !732)
!735 = !DILocation(line: 496, column: 11, scope: !699)
!736 = !DILocation(line: 497, column: 10, scope: !737)
!737 = distinct !DILexicalBlock(scope: !732, file: !25, line: 496, column: 29)
!738 = !DILocation(line: 500, column: 33, scope: !739)
!739 = distinct !DILexicalBlock(scope: !740, file: !25, line: 500, column: 13)
!740 = distinct !DILexicalBlock(scope: !699, file: !25, line: 500, column: 8)
!741 = !DILocation(line: 500, column: 42, scope: !739)
!742 = !DILocation(line: 500, column: 39, scope: !739)
!743 = !DILocation(line: 500, column: 31, scope: !739)
!744 = !DILocation(line: 500, column: 30, scope: !739)
!745 = !DILocation(line: 500, column: 13, scope: !739)
!746 = !DILocation(line: 500, column: 13, scope: !740)
!747 = !DILocation(line: 500, column: 59, scope: !748)
!748 = !DILexicalBlockFile(scope: !749, file: !25, discriminator: 1)
!749 = distinct !DILexicalBlock(scope: !739, file: !25, line: 500, column: 57)
!750 = !DILocation(line: 501, column: 4, scope: !699)
!751 = !DILocation(line: 485, column: 33, scope: !752)
!752 = !DILexicalBlockFile(scope: !694, file: !25, discriminator: 2)
!753 = !DILocation(line: 485, column: 4, scope: !752)
!754 = distinct !{!754, !755}
!755 = !DILocation(line: 485, column: 4, scope: !672)
!756 = !DILocation(line: 502, column: 1, scope: !672)
!757 = distinct !DISubprogram(name: "IOV_Duplicate", scope: !25, file: !25, line: 523, type: !758, isLocal: false, isDefinition: true, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!758 = !DISubroutineType(types: !759)
!759 = !{!111, !111}
!760 = !DILocalVariable(name: "iovIn", arg: 1, scope: !757, file: !25, line: 523, type: !111)
!761 = !DILocation(line: 523, column: 24, scope: !757)
!762 = !DILocalVariable(name: "v", scope: !757, file: !25, line: 525, type: !185)
!763 = !DILocation(line: 525, column: 30, scope: !757)
!764 = !DILocation(line: 527, column: 37, scope: !757)
!765 = !DILocation(line: 527, column: 44, scope: !757)
!766 = !DILocation(line: 527, column: 55, scope: !757)
!767 = !DILocation(line: 527, column: 35, scope: !757)
!768 = !DILocation(line: 527, column: 8, scope: !757)
!769 = !DILocation(line: 527, column: 6, scope: !757)
!770 = !DILocation(line: 528, column: 17, scope: !757)
!771 = !DILocation(line: 528, column: 20, scope: !757)
!772 = !DILocation(line: 528, column: 16, scope: !757)
!773 = !DILocation(line: 528, column: 25, scope: !757)
!774 = !DILocation(line: 528, column: 4, scope: !757)
!775 = !DILocation(line: 529, column: 4, scope: !757)
!776 = !DILocation(line: 529, column: 7, scope: !757)
!777 = !DILocation(line: 529, column: 11, scope: !757)
!778 = !DILocation(line: 529, column: 24, scope: !757)
!779 = !DILocation(line: 530, column: 21, scope: !757)
!780 = !DILocation(line: 530, column: 24, scope: !757)
!781 = !DILocation(line: 530, column: 4, scope: !757)
!782 = !DILocation(line: 530, column: 7, scope: !757)
!783 = !DILocation(line: 530, column: 11, scope: !757)
!784 = !DILocation(line: 530, column: 19, scope: !757)
!785 = !DILocation(line: 531, column: 16, scope: !757)
!786 = !DILocation(line: 531, column: 19, scope: !757)
!787 = !DILocation(line: 531, column: 23, scope: !757)
!788 = !DILocation(line: 531, column: 32, scope: !757)
!789 = !DILocation(line: 531, column: 39, scope: !757)
!790 = !DILocation(line: 532, column: 11, scope: !757)
!791 = !DILocation(line: 532, column: 18, scope: !757)
!792 = !DILocation(line: 532, column: 29, scope: !757)
!793 = !DILocation(line: 531, column: 4, scope: !757)
!794 = !DILocation(line: 534, column: 12, scope: !757)
!795 = !DILocation(line: 534, column: 15, scope: !757)
!796 = !DILocation(line: 534, column: 4, scope: !757)
!797 = distinct !DISubprogram(name: "IOV_Free", scope: !25, file: !25, line: 555, type: !109, isLocal: false, isDefinition: true, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!798 = !DILocalVariable(name: "iov", arg: 1, scope: !797, file: !25, line: 555, type: !111)
!799 = !DILocation(line: 555, column: 19, scope: !797)
!800 = !DILocation(line: 558, column: 8, scope: !801)
!801 = distinct !DILexicalBlock(scope: !797, file: !25, line: 558, column: 8)
!802 = !DILocation(line: 558, column: 13, scope: !801)
!803 = !DILocation(line: 558, column: 8, scope: !797)
!804 = !DILocation(line: 559, column: 12, scope: !805)
!805 = distinct !DILexicalBlock(scope: !801, file: !25, line: 558, column: 27)
!806 = !DILocation(line: 559, column: 17, scope: !805)
!807 = !DILocation(line: 559, column: 7, scope: !805)
!808 = !DILocation(line: 560, column: 7, scope: !805)
!809 = !DILocation(line: 560, column: 12, scope: !805)
!810 = !DILocation(line: 560, column: 25, scope: !805)
!811 = !DILocation(line: 561, column: 4, scope: !805)
!812 = !DILocation(line: 562, column: 9, scope: !797)
!813 = !DILocation(line: 562, column: 4, scope: !797)
!814 = !DILocation(line: 563, column: 1, scope: !797)
!815 = distinct !DISubprogram(name: "IOV_WriteBufToIov", scope: !25, file: !25, line: 584, type: !816, isLocal: false, isDefinition: true, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !818, !4, !675, !17}
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64, align: 64)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!820 = !DILocalVariable(name: "bufIn", arg: 1, scope: !815, file: !25, line: 584, type: !818)
!821 = !DILocation(line: 584, column: 32, scope: !815)
!822 = !DILocalVariable(name: "bufSize", arg: 2, scope: !815, file: !25, line: 585, type: !4)
!823 = !DILocation(line: 585, column: 26, scope: !815)
!824 = !DILocalVariable(name: "entries", arg: 3, scope: !815, file: !25, line: 586, type: !675)
!825 = !DILocation(line: 586, column: 39, scope: !815)
!826 = !DILocalVariable(name: "numEntries", arg: 4, scope: !815, file: !25, line: 587, type: !17)
!827 = !DILocation(line: 587, column: 23, scope: !815)
!828 = !DILocalVariable(name: "count", scope: !815, file: !25, line: 589, type: !4)
!829 = !DILocation(line: 589, column: 11, scope: !815)
!830 = !DILocalVariable(name: "i", scope: !815, file: !25, line: 590, type: !17)
!831 = !DILocation(line: 590, column: 8, scope: !815)
!832 = !DILocation(line: 593, column: 30, scope: !833)
!833 = distinct !DILexicalBlock(scope: !834, file: !25, line: 593, column: 10)
!834 = distinct !DILexicalBlock(scope: !815, file: !25, line: 593, column: 5)
!835 = !DILocation(line: 593, column: 28, scope: !833)
!836 = !DILocation(line: 593, column: 27, scope: !833)
!837 = !DILocation(line: 593, column: 10, scope: !833)
!838 = !DILocation(line: 593, column: 10, scope: !834)
!839 = !DILocation(line: 593, column: 45, scope: !840)
!840 = !DILexicalBlockFile(scope: !841, file: !25, discriminator: 1)
!841 = distinct !DILexicalBlock(scope: !833, file: !25, line: 593, column: 43)
!842 = !DILocation(line: 595, column: 11, scope: !843)
!843 = distinct !DILexicalBlock(scope: !815, file: !25, line: 595, column: 4)
!844 = !DILocation(line: 595, column: 9, scope: !843)
!845 = !DILocation(line: 595, column: 16, scope: !846)
!846 = !DILexicalBlockFile(scope: !847, file: !25, discriminator: 1)
!847 = distinct !DILexicalBlock(scope: !843, file: !25, line: 595, column: 4)
!848 = !DILocation(line: 595, column: 20, scope: !846)
!849 = !DILocation(line: 595, column: 18, scope: !846)
!850 = !DILocation(line: 595, column: 4, scope: !846)
!851 = !DILocalVariable(name: "numBytes", scope: !852, file: !25, line: 596, type: !4)
!852 = distinct !DILexicalBlock(scope: !847, file: !25, line: 595, column: 37)
!853 = !DILocation(line: 596, column: 14, scope: !852)
!854 = !DILocation(line: 601, column: 21, scope: !852)
!855 = !DILocation(line: 601, column: 31, scope: !852)
!856 = !DILocation(line: 601, column: 29, scope: !852)
!857 = !DILocation(line: 601, column: 49, scope: !852)
!858 = !DILocation(line: 601, column: 41, scope: !852)
!859 = !DILocation(line: 601, column: 52, scope: !852)
!860 = !DILocation(line: 601, column: 38, scope: !852)
!861 = !DILocation(line: 601, column: 19, scope: !852)
!862 = !DILocation(line: 601, column: 65, scope: !863)
!863 = !DILexicalBlockFile(scope: !852, file: !25, discriminator: 1)
!864 = !DILocation(line: 601, column: 75, scope: !863)
!865 = !DILocation(line: 601, column: 73, scope: !863)
!866 = !DILocation(line: 601, column: 19, scope: !863)
!867 = !DILocation(line: 601, column: 93, scope: !868)
!868 = !DILexicalBlockFile(scope: !852, file: !25, discriminator: 2)
!869 = !DILocation(line: 601, column: 85, scope: !868)
!870 = !DILocation(line: 601, column: 96, scope: !868)
!871 = !DILocation(line: 601, column: 19, scope: !868)
!872 = !DILocation(line: 601, column: 19, scope: !873)
!873 = !DILexicalBlockFile(scope: !852, file: !25, discriminator: 3)
!874 = !DILocation(line: 601, column: 16, scope: !873)
!875 = !DILocation(line: 603, column: 27, scope: !852)
!876 = !DILocation(line: 603, column: 19, scope: !852)
!877 = !DILocation(line: 603, column: 30, scope: !852)
!878 = !DILocation(line: 603, column: 47, scope: !852)
!879 = !DILocation(line: 603, column: 41, scope: !852)
!880 = !DILocation(line: 603, column: 55, scope: !852)
!881 = !DILocation(line: 603, column: 7, scope: !852)
!882 = !DILocation(line: 604, column: 16, scope: !852)
!883 = !DILocation(line: 604, column: 13, scope: !852)
!884 = !DILocation(line: 605, column: 11, scope: !885)
!885 = distinct !DILexicalBlock(scope: !852, file: !25, line: 605, column: 11)
!886 = !DILocation(line: 605, column: 20, scope: !885)
!887 = !DILocation(line: 605, column: 17, scope: !885)
!888 = !DILocation(line: 605, column: 11, scope: !852)
!889 = !DILocation(line: 606, column: 10, scope: !890)
!890 = distinct !DILexicalBlock(scope: !885, file: !25, line: 605, column: 29)
!891 = !DILocation(line: 608, column: 33, scope: !892)
!892 = distinct !DILexicalBlock(scope: !893, file: !25, line: 608, column: 13)
!893 = distinct !DILexicalBlock(scope: !852, file: !25, line: 608, column: 8)
!894 = !DILocation(line: 608, column: 42, scope: !892)
!895 = !DILocation(line: 608, column: 39, scope: !892)
!896 = !DILocation(line: 608, column: 31, scope: !892)
!897 = !DILocation(line: 608, column: 30, scope: !892)
!898 = !DILocation(line: 608, column: 13, scope: !892)
!899 = !DILocation(line: 608, column: 13, scope: !893)
!900 = !DILocation(line: 608, column: 59, scope: !901)
!901 = !DILexicalBlockFile(scope: !902, file: !25, discriminator: 1)
!902 = distinct !DILexicalBlock(scope: !892, file: !25, line: 608, column: 57)
!903 = !DILocation(line: 609, column: 4, scope: !852)
!904 = !DILocation(line: 595, column: 33, scope: !905)
!905 = !DILexicalBlockFile(scope: !847, file: !25, discriminator: 2)
!906 = !DILocation(line: 595, column: 4, scope: !905)
!907 = distinct !{!907, !908}
!908 = !DILocation(line: 595, column: 4, scope: !815)
!909 = !DILocation(line: 610, column: 1, scope: !815)
!910 = distinct !DISubprogram(name: "IOV_WriteIovToBufPlus", scope: !25, file: !25, line: 690, type: !911, isLocal: false, isDefinition: true, scopeLine: 695, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!911 = !DISubroutineType(types: !912)
!912 = !{!4, !45, !17, !10, !4, !4}
!913 = !DILocalVariable(name: "entries", arg: 1, scope: !910, file: !25, line: 690, type: !45)
!914 = !DILocation(line: 690, column: 37, scope: !910)
!915 = !DILocalVariable(name: "numEntries", arg: 2, scope: !910, file: !25, line: 691, type: !17)
!916 = !DILocation(line: 691, column: 23, scope: !910)
!917 = !DILocalVariable(name: "bufOut", arg: 3, scope: !910, file: !25, line: 692, type: !10)
!918 = !DILocation(line: 692, column: 26, scope: !910)
!919 = !DILocalVariable(name: "bufSize", arg: 4, scope: !910, file: !25, line: 693, type: !4)
!920 = !DILocation(line: 693, column: 26, scope: !910)
!921 = !DILocalVariable(name: "iovOffset", arg: 5, scope: !910, file: !25, line: 694, type: !4)
!922 = !DILocation(line: 694, column: 26, scope: !910)
!923 = !DILocalVariable(name: "entryLen", scope: !910, file: !25, line: 696, type: !4)
!924 = !DILocation(line: 696, column: 11, scope: !910)
!925 = !DILocalVariable(name: "entryOffset", scope: !910, file: !25, line: 696, type: !4)
!926 = !DILocation(line: 696, column: 21, scope: !910)
!927 = !DILocalVariable(name: "count", scope: !910, file: !25, line: 697, type: !4)
!928 = !DILocation(line: 697, column: 11, scope: !910)
!929 = !DILocation(line: 697, column: 19, scope: !910)
!930 = !DILocalVariable(name: "i", scope: !910, file: !25, line: 698, type: !17)
!931 = !DILocation(line: 698, column: 8, scope: !910)
!932 = !DILocation(line: 700, column: 30, scope: !933)
!933 = distinct !DILexicalBlock(scope: !934, file: !25, line: 700, column: 10)
!934 = distinct !DILexicalBlock(scope: !910, file: !25, line: 700, column: 5)
!935 = !DILocation(line: 700, column: 28, scope: !933)
!936 = !DILocation(line: 700, column: 27, scope: !933)
!937 = !DILocation(line: 700, column: 10, scope: !933)
!938 = !DILocation(line: 700, column: 10, scope: !934)
!939 = !DILocation(line: 700, column: 46, scope: !940)
!940 = !DILexicalBlockFile(scope: !941, file: !25, discriminator: 1)
!941 = distinct !DILexicalBlock(scope: !933, file: !25, line: 700, column: 44)
!942 = !DILocation(line: 702, column: 32, scope: !910)
!943 = !DILocation(line: 702, column: 41, scope: !910)
!944 = !DILocation(line: 702, column: 53, scope: !910)
!945 = !DILocation(line: 702, column: 8, scope: !910)
!946 = !DILocation(line: 702, column: 6, scope: !910)
!947 = !DILocation(line: 704, column: 4, scope: !910)
!948 = !DILocation(line: 704, column: 11, scope: !949)
!949 = !DILexicalBlockFile(scope: !950, file: !25, discriminator: 1)
!950 = distinct !DILexicalBlock(scope: !951, file: !25, line: 704, column: 4)
!951 = distinct !DILexicalBlock(scope: !910, file: !25, line: 704, column: 4)
!952 = !DILocation(line: 704, column: 17, scope: !949)
!953 = !DILocation(line: 704, column: 21, scope: !954)
!954 = !DILexicalBlockFile(scope: !950, file: !25, discriminator: 2)
!955 = !DILocation(line: 704, column: 25, scope: !954)
!956 = !DILocation(line: 704, column: 23, scope: !954)
!957 = !DILocation(line: 704, column: 4, scope: !958)
!958 = !DILexicalBlockFile(scope: !951, file: !25, discriminator: 3)
!959 = !DILocalVariable(name: "base", scope: !960, file: !25, line: 705, type: !7)
!960 = distinct !DILexicalBlock(scope: !950, file: !25, line: 704, column: 43)
!961 = !DILocation(line: 705, column: 13, scope: !960)
!962 = !DILocation(line: 705, column: 37, scope: !960)
!963 = !DILocation(line: 705, column: 29, scope: !960)
!964 = !DILocation(line: 705, column: 40, scope: !960)
!965 = !DILocation(line: 705, column: 52, scope: !960)
!966 = !DILocation(line: 705, column: 50, scope: !960)
!967 = !DILocalVariable(name: "iov_len", scope: !960, file: !25, line: 706, type: !4)
!968 = !DILocation(line: 706, column: 14, scope: !960)
!969 = !DILocation(line: 706, column: 32, scope: !960)
!970 = !DILocation(line: 706, column: 24, scope: !960)
!971 = !DILocation(line: 706, column: 35, scope: !960)
!972 = !DILocation(line: 711, column: 11, scope: !973)
!973 = distinct !DILexicalBlock(scope: !960, file: !25, line: 711, column: 11)
!974 = !DILocation(line: 711, column: 19, scope: !973)
!975 = !DILocation(line: 711, column: 11, scope: !960)
!976 = !DILocation(line: 712, column: 10, scope: !977)
!977 = distinct !DILexicalBlock(scope: !973, file: !25, line: 711, column: 25)
!978 = !DILocation(line: 714, column: 21, scope: !960)
!979 = !DILocation(line: 714, column: 31, scope: !960)
!980 = !DILocation(line: 714, column: 41, scope: !960)
!981 = !DILocation(line: 714, column: 39, scope: !960)
!982 = !DILocation(line: 714, column: 28, scope: !960)
!983 = !DILocation(line: 714, column: 19, scope: !960)
!984 = !DILocation(line: 714, column: 58, scope: !985)
!985 = !DILexicalBlockFile(scope: !960, file: !25, discriminator: 1)
!986 = !DILocation(line: 714, column: 19, scope: !985)
!987 = !DILocation(line: 714, column: 68, scope: !988)
!988 = !DILexicalBlockFile(scope: !960, file: !25, discriminator: 2)
!989 = !DILocation(line: 714, column: 78, scope: !988)
!990 = !DILocation(line: 714, column: 76, scope: !988)
!991 = !DILocation(line: 714, column: 19, scope: !988)
!992 = !DILocation(line: 714, column: 19, scope: !993)
!993 = !DILexicalBlockFile(scope: !960, file: !25, discriminator: 3)
!994 = !DILocation(line: 714, column: 16, scope: !993)
!995 = !DILocation(line: 716, column: 19, scope: !960)
!996 = !DILocation(line: 716, column: 27, scope: !960)
!997 = !DILocation(line: 716, column: 33, scope: !960)
!998 = !DILocation(line: 716, column: 7, scope: !960)
!999 = !DILocation(line: 718, column: 16, scope: !960)
!1000 = !DILocation(line: 718, column: 13, scope: !960)
!1001 = !DILocation(line: 719, column: 17, scope: !960)
!1002 = !DILocation(line: 719, column: 14, scope: !960)
!1003 = !DILocation(line: 720, column: 19, scope: !960)
!1004 = !DILocation(line: 721, column: 4, scope: !960)
!1005 = !DILocation(line: 704, column: 39, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !950, file: !25, discriminator: 4)
!1007 = !DILocation(line: 704, column: 4, scope: !1006)
!1008 = distinct !{!1008, !947}
!1009 = !DILocation(line: 725, column: 11, scope: !910)
!1010 = !DILocation(line: 725, column: 21, scope: !910)
!1011 = !DILocation(line: 725, column: 19, scope: !910)
!1012 = !DILocation(line: 725, column: 4, scope: !910)
!1013 = distinct !DISubprogram(name: "IOVFindFirstEntryOffset", scope: !25, file: !25, line: 632, type: !1014, isLocal: true, isDefinition: true, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!17, !45, !17, !4, !1016}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!1017 = !DILocalVariable(name: "entries", arg: 1, scope: !1013, file: !25, line: 632, type: !45)
!1018 = !DILocation(line: 632, column: 39, scope: !1013)
!1019 = !DILocalVariable(name: "numEntries", arg: 2, scope: !1013, file: !25, line: 633, type: !17)
!1020 = !DILocation(line: 633, column: 29, scope: !1013)
!1021 = !DILocalVariable(name: "iovOffset", arg: 3, scope: !1013, file: !25, line: 634, type: !4)
!1022 = !DILocation(line: 634, column: 32, scope: !1013)
!1023 = !DILocalVariable(name: "entryOffsetp", arg: 4, scope: !1013, file: !25, line: 635, type: !1016)
!1024 = !DILocation(line: 635, column: 33, scope: !1013)
!1025 = !DILocalVariable(name: "entryLen", scope: !1013, file: !25, line: 638, type: !4)
!1026 = !DILocation(line: 638, column: 11, scope: !1013)
!1027 = !DILocalVariable(name: "entryOffset", scope: !1013, file: !25, line: 638, type: !4)
!1028 = !DILocation(line: 638, column: 25, scope: !1013)
!1029 = !DILocalVariable(name: "i", scope: !1013, file: !25, line: 639, type: !17)
!1030 = !DILocation(line: 639, column: 8, scope: !1013)
!1031 = !DILocation(line: 645, column: 11, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1013, file: !25, line: 645, column: 4)
!1033 = !DILocation(line: 645, column: 9, scope: !1032)
!1034 = !DILocation(line: 645, column: 17, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !1036, file: !25, discriminator: 1)
!1036 = distinct !DILexicalBlock(scope: !1032, file: !25, line: 645, column: 4)
!1037 = !DILocation(line: 645, column: 30, scope: !1035)
!1038 = !DILocation(line: 645, column: 27, scope: !1035)
!1039 = !DILocation(line: 645, column: 43, scope: !1035)
!1040 = !DILocation(line: 645, column: 47, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !1036, file: !25, discriminator: 2)
!1042 = !DILocation(line: 645, column: 51, scope: !1041)
!1043 = !DILocation(line: 645, column: 49, scope: !1041)
!1044 = !DILocation(line: 645, column: 4, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1032, file: !25, discriminator: 3)
!1046 = !DILocation(line: 646, column: 26, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1036, file: !25, line: 645, column: 69)
!1048 = !DILocation(line: 646, column: 18, scope: !1047)
!1049 = !DILocation(line: 646, column: 29, scope: !1047)
!1050 = !DILocation(line: 646, column: 16, scope: !1047)
!1051 = !DILocation(line: 647, column: 22, scope: !1047)
!1052 = !DILocation(line: 647, column: 19, scope: !1047)
!1053 = !DILocation(line: 648, column: 4, scope: !1047)
!1054 = !DILocation(line: 645, column: 65, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1036, file: !25, discriminator: 4)
!1056 = !DILocation(line: 645, column: 4, scope: !1055)
!1057 = distinct !{!1057, !1058}
!1058 = !DILocation(line: 645, column: 4, scope: !1013)
!1059 = !DILocation(line: 650, column: 8, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1013, file: !25, line: 650, column: 8)
!1061 = !DILocation(line: 650, column: 21, scope: !1060)
!1062 = !DILocation(line: 650, column: 18, scope: !1060)
!1063 = !DILocation(line: 650, column: 8, scope: !1013)
!1064 = !DILocation(line: 654, column: 30, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1060, file: !25, line: 650, column: 34)
!1066 = !DILocation(line: 654, column: 33, scope: !1065)
!1067 = !DILocation(line: 654, column: 45, scope: !1065)
!1068 = !DILocation(line: 654, column: 58, scope: !1065)
!1069 = !DILocation(line: 652, column: 7, scope: !1065)
!1070 = !DILocation(line: 656, column: 14, scope: !1065)
!1071 = !DILocation(line: 656, column: 7, scope: !1065)
!1072 = !DILocation(line: 660, column: 18, scope: !1013)
!1073 = !DILocation(line: 660, column: 31, scope: !1013)
!1074 = !DILocation(line: 660, column: 45, scope: !1013)
!1075 = !DILocation(line: 660, column: 43, scope: !1013)
!1076 = !DILocation(line: 660, column: 28, scope: !1013)
!1077 = !DILocation(line: 660, column: 16, scope: !1013)
!1078 = !DILocation(line: 663, column: 20, scope: !1013)
!1079 = !DILocation(line: 663, column: 5, scope: !1013)
!1080 = !DILocation(line: 663, column: 18, scope: !1013)
!1081 = !DILocation(line: 665, column: 11, scope: !1013)
!1082 = !DILocation(line: 665, column: 13, scope: !1013)
!1083 = !DILocation(line: 665, column: 4, scope: !1013)
!1084 = !DILocation(line: 666, column: 1, scope: !1013)
!1085 = distinct !DISubprogram(name: "IOV_WriteBufToIovPlus", scope: !25, file: !25, line: 749, type: !1086, isLocal: false, isDefinition: true, scopeLine: 754, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!4, !10, !4, !45, !17, !4}
!1088 = !DILocalVariable(name: "bufIn", arg: 1, scope: !1085, file: !25, line: 749, type: !10)
!1089 = !DILocation(line: 749, column: 30, scope: !1085)
!1090 = !DILocalVariable(name: "bufSize", arg: 2, scope: !1085, file: !25, line: 750, type: !4)
!1091 = !DILocation(line: 750, column: 30, scope: !1085)
!1092 = !DILocalVariable(name: "entries", arg: 3, scope: !1085, file: !25, line: 751, type: !45)
!1093 = !DILocation(line: 751, column: 37, scope: !1085)
!1094 = !DILocalVariable(name: "numEntries", arg: 4, scope: !1085, file: !25, line: 752, type: !17)
!1095 = !DILocation(line: 752, column: 27, scope: !1085)
!1096 = !DILocalVariable(name: "iovOffset", arg: 5, scope: !1085, file: !25, line: 753, type: !4)
!1097 = !DILocation(line: 753, column: 30, scope: !1085)
!1098 = !DILocalVariable(name: "entryLen", scope: !1085, file: !25, line: 755, type: !4)
!1099 = !DILocation(line: 755, column: 11, scope: !1085)
!1100 = !DILocalVariable(name: "entryOffset", scope: !1085, file: !25, line: 755, type: !4)
!1101 = !DILocation(line: 755, column: 21, scope: !1085)
!1102 = !DILocalVariable(name: "count", scope: !1085, file: !25, line: 756, type: !4)
!1103 = !DILocation(line: 756, column: 11, scope: !1085)
!1104 = !DILocation(line: 756, column: 19, scope: !1085)
!1105 = !DILocalVariable(name: "i", scope: !1085, file: !25, line: 757, type: !17)
!1106 = !DILocation(line: 757, column: 8, scope: !1085)
!1107 = !DILocation(line: 759, column: 30, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !25, line: 759, column: 10)
!1109 = distinct !DILexicalBlock(scope: !1085, file: !25, line: 759, column: 5)
!1110 = !DILocation(line: 759, column: 28, scope: !1108)
!1111 = !DILocation(line: 759, column: 27, scope: !1108)
!1112 = !DILocation(line: 759, column: 10, scope: !1108)
!1113 = !DILocation(line: 759, column: 10, scope: !1109)
!1114 = !DILocation(line: 759, column: 45, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1116, file: !25, discriminator: 1)
!1116 = distinct !DILexicalBlock(scope: !1108, file: !25, line: 759, column: 43)
!1117 = !DILocation(line: 761, column: 32, scope: !1085)
!1118 = !DILocation(line: 761, column: 41, scope: !1085)
!1119 = !DILocation(line: 761, column: 53, scope: !1085)
!1120 = !DILocation(line: 761, column: 8, scope: !1085)
!1121 = !DILocation(line: 761, column: 6, scope: !1085)
!1122 = !DILocation(line: 763, column: 4, scope: !1085)
!1123 = !DILocation(line: 763, column: 11, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !1125, file: !25, discriminator: 1)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !25, line: 763, column: 4)
!1126 = distinct !DILexicalBlock(scope: !1085, file: !25, line: 763, column: 4)
!1127 = !DILocation(line: 763, column: 17, scope: !1124)
!1128 = !DILocation(line: 763, column: 21, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !1125, file: !25, discriminator: 2)
!1130 = !DILocation(line: 763, column: 25, scope: !1129)
!1131 = !DILocation(line: 763, column: 23, scope: !1129)
!1132 = !DILocation(line: 763, column: 4, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !1126, file: !25, discriminator: 3)
!1134 = !DILocalVariable(name: "base", scope: !1135, file: !25, line: 764, type: !7)
!1135 = distinct !DILexicalBlock(scope: !1125, file: !25, line: 763, column: 43)
!1136 = !DILocation(line: 764, column: 13, scope: !1135)
!1137 = !DILocation(line: 764, column: 37, scope: !1135)
!1138 = !DILocation(line: 764, column: 29, scope: !1135)
!1139 = !DILocation(line: 764, column: 40, scope: !1135)
!1140 = !DILocation(line: 764, column: 52, scope: !1135)
!1141 = !DILocation(line: 764, column: 50, scope: !1135)
!1142 = !DILocalVariable(name: "iov_len", scope: !1135, file: !25, line: 765, type: !4)
!1143 = !DILocation(line: 765, column: 14, scope: !1135)
!1144 = !DILocation(line: 765, column: 32, scope: !1135)
!1145 = !DILocation(line: 765, column: 24, scope: !1135)
!1146 = !DILocation(line: 765, column: 35, scope: !1135)
!1147 = !DILocation(line: 767, column: 41, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !25, line: 767, column: 13)
!1149 = distinct !DILexicalBlock(scope: !1135, file: !25, line: 767, column: 8)
!1150 = !DILocation(line: 767, column: 33, scope: !1148)
!1151 = !DILocation(line: 767, column: 44, scope: !1148)
!1152 = !DILocation(line: 767, column: 53, scope: !1148)
!1153 = !DILocation(line: 767, column: 64, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !1148, file: !25, discriminator: 1)
!1155 = !DILocation(line: 767, column: 56, scope: !1154)
!1156 = !DILocation(line: 767, column: 67, scope: !1154)
!1157 = !DILocation(line: 767, column: 75, scope: !1154)
!1158 = !DILocation(line: 767, column: 53, scope: !1154)
!1159 = !DILocation(line: 767, column: 31, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1148, file: !25, discriminator: 2)
!1161 = !DILocation(line: 767, column: 30, scope: !1160)
!1162 = !DILocation(line: 767, column: 13, scope: !1160)
!1163 = !DILocation(line: 767, column: 89, scope: !1164)
!1164 = !DILexicalBlockFile(scope: !1165, file: !25, discriminator: 3)
!1165 = distinct !DILexicalBlock(scope: !1148, file: !25, line: 767, column: 87)
!1166 = !DILocation(line: 770, column: 11, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1135, file: !25, line: 770, column: 11)
!1168 = !DILocation(line: 770, column: 19, scope: !1167)
!1169 = !DILocation(line: 770, column: 11, scope: !1135)
!1170 = !DILocation(line: 771, column: 10, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1167, file: !25, line: 770, column: 25)
!1172 = !DILocation(line: 773, column: 21, scope: !1135)
!1173 = !DILocation(line: 773, column: 31, scope: !1135)
!1174 = !DILocation(line: 773, column: 41, scope: !1135)
!1175 = !DILocation(line: 773, column: 39, scope: !1135)
!1176 = !DILocation(line: 773, column: 28, scope: !1135)
!1177 = !DILocation(line: 773, column: 19, scope: !1135)
!1178 = !DILocation(line: 773, column: 58, scope: !1179)
!1179 = !DILexicalBlockFile(scope: !1135, file: !25, discriminator: 1)
!1180 = !DILocation(line: 773, column: 19, scope: !1179)
!1181 = !DILocation(line: 773, column: 68, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !1135, file: !25, discriminator: 2)
!1183 = !DILocation(line: 773, column: 78, scope: !1182)
!1184 = !DILocation(line: 773, column: 76, scope: !1182)
!1185 = !DILocation(line: 773, column: 19, scope: !1182)
!1186 = !DILocation(line: 773, column: 19, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !1135, file: !25, discriminator: 3)
!1188 = !DILocation(line: 773, column: 16, scope: !1187)
!1189 = !DILocation(line: 775, column: 19, scope: !1135)
!1190 = !DILocation(line: 775, column: 25, scope: !1135)
!1191 = !DILocation(line: 775, column: 32, scope: !1135)
!1192 = !DILocation(line: 775, column: 7, scope: !1135)
!1193 = !DILocation(line: 777, column: 16, scope: !1135)
!1194 = !DILocation(line: 777, column: 13, scope: !1135)
!1195 = !DILocation(line: 778, column: 16, scope: !1135)
!1196 = !DILocation(line: 778, column: 13, scope: !1135)
!1197 = !DILocation(line: 779, column: 19, scope: !1135)
!1198 = !DILocation(line: 780, column: 4, scope: !1135)
!1199 = !DILocation(line: 763, column: 39, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !1125, file: !25, discriminator: 4)
!1201 = !DILocation(line: 763, column: 4, scope: !1200)
!1202 = distinct !{!1202, !1122}
!1203 = !DILocation(line: 784, column: 11, scope: !1085)
!1204 = !DILocation(line: 784, column: 21, scope: !1085)
!1205 = !DILocation(line: 784, column: 19, scope: !1085)
!1206 = !DILocation(line: 784, column: 4, scope: !1085)
!1207 = distinct !DISubprogram(name: "IOV_WriteIovToIov", scope: !25, file: !25, line: 813, type: !1208, isLocal: false, isDefinition: true, scopeLine: 816, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!4, !111, !111, !39}
!1210 = !DILocalVariable(name: "srcIov", arg: 1, scope: !1207, file: !25, line: 813, type: !111)
!1211 = !DILocation(line: 813, column: 28, scope: !1207)
!1212 = !DILocalVariable(name: "dstIov", arg: 2, scope: !1207, file: !25, line: 814, type: !111)
!1213 = !DILocation(line: 814, column: 28, scope: !1207)
!1214 = !DILocalVariable(name: "sectorSizeShift", arg: 3, scope: !1207, file: !25, line: 815, type: !39)
!1215 = !DILocation(line: 815, column: 26, scope: !1207)
!1216 = !DILocalVariable(name: "entryLen", scope: !1207, file: !25, line: 817, type: !4)
!1217 = !DILocation(line: 817, column: 11, scope: !1207)
!1218 = !DILocalVariable(name: "srcEntryOffset", scope: !1207, file: !25, line: 817, type: !4)
!1219 = !DILocation(line: 817, column: 25, scope: !1207)
!1220 = !DILocalVariable(name: "copyLen", scope: !1207, file: !25, line: 817, type: !4)
!1221 = !DILocation(line: 817, column: 41, scope: !1207)
!1222 = !DILocalVariable(name: "retval", scope: !1207, file: !25, line: 817, type: !4)
!1223 = !DILocation(line: 817, column: 50, scope: !1207)
!1224 = !DILocalVariable(name: "srcStartByte", scope: !1207, file: !25, line: 818, type: !19)
!1225 = !DILocation(line: 818, column: 11, scope: !1207)
!1226 = !DILocalVariable(name: "dstStartByte", scope: !1207, file: !25, line: 818, type: !19)
!1227 = !DILocation(line: 818, column: 25, scope: !1207)
!1228 = !DILocalVariable(name: "startByte", scope: !1207, file: !25, line: 818, type: !19)
!1229 = !DILocation(line: 818, column: 39, scope: !1207)
!1230 = !DILocalVariable(name: "endByte", scope: !1207, file: !25, line: 818, type: !19)
!1231 = !DILocation(line: 818, column: 50, scope: !1207)
!1232 = !DILocalVariable(name: "count", scope: !1207, file: !25, line: 819, type: !1233)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !12, line: 172, baseType: !1234)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !14, line: 40, baseType: !1235)
!1235 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!1236 = !DILocation(line: 819, column: 10, scope: !1207)
!1237 = !DILocalVariable(name: "srcIovOffset", scope: !1207, file: !25, line: 819, type: !1233)
!1238 = !DILocation(line: 819, column: 17, scope: !1207)
!1239 = !DILocalVariable(name: "dstIovOffset", scope: !1207, file: !25, line: 819, type: !1233)
!1240 = !DILocation(line: 819, column: 31, scope: !1207)
!1241 = !DILocalVariable(name: "srcEntries", scope: !1207, file: !25, line: 820, type: !45)
!1242 = !DILocation(line: 820, column: 18, scope: !1207)
!1243 = !DILocation(line: 820, column: 31, scope: !1207)
!1244 = !DILocation(line: 820, column: 39, scope: !1207)
!1245 = !DILocalVariable(name: "srcNumEntries", scope: !1207, file: !25, line: 821, type: !39)
!1246 = !DILocation(line: 821, column: 11, scope: !1207)
!1247 = !DILocation(line: 821, column: 27, scope: !1207)
!1248 = !DILocation(line: 821, column: 35, scope: !1207)
!1249 = !DILocalVariable(name: "dstEntries", scope: !1207, file: !25, line: 822, type: !45)
!1250 = !DILocation(line: 822, column: 18, scope: !1207)
!1251 = !DILocation(line: 822, column: 31, scope: !1207)
!1252 = !DILocation(line: 822, column: 39, scope: !1207)
!1253 = !DILocalVariable(name: "dstNumEntries", scope: !1207, file: !25, line: 823, type: !39)
!1254 = !DILocation(line: 823, column: 11, scope: !1207)
!1255 = !DILocation(line: 823, column: 27, scope: !1207)
!1256 = !DILocation(line: 823, column: 35, scope: !1207)
!1257 = !DILocalVariable(name: "i", scope: !1207, file: !25, line: 824, type: !17)
!1258 = !DILocation(line: 824, column: 8, scope: !1207)
!1259 = !DILocation(line: 830, column: 19, scope: !1207)
!1260 = !DILocation(line: 830, column: 27, scope: !1207)
!1261 = !DILocation(line: 830, column: 42, scope: !1207)
!1262 = !DILocation(line: 830, column: 39, scope: !1207)
!1263 = !DILocation(line: 830, column: 17, scope: !1207)
!1264 = !DILocation(line: 831, column: 19, scope: !1207)
!1265 = !DILocation(line: 831, column: 27, scope: !1207)
!1266 = !DILocation(line: 831, column: 42, scope: !1207)
!1267 = !DILocation(line: 831, column: 39, scope: !1207)
!1268 = !DILocation(line: 831, column: 17, scope: !1207)
!1269 = !DILocation(line: 832, column: 19, scope: !1207)
!1270 = !DILocation(line: 832, column: 36, scope: !1207)
!1271 = !DILocation(line: 832, column: 33, scope: !1207)
!1272 = !DILocation(line: 832, column: 17, scope: !1207)
!1273 = !DILocation(line: 832, column: 54, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1207, file: !25, discriminator: 1)
!1275 = !DILocation(line: 832, column: 17, scope: !1274)
!1276 = !DILocation(line: 832, column: 71, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1207, file: !25, discriminator: 2)
!1278 = !DILocation(line: 832, column: 17, scope: !1277)
!1279 = !DILocation(line: 832, column: 17, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !1207, file: !25, discriminator: 3)
!1281 = !DILocation(line: 832, column: 14, scope: !1280)
!1282 = !DILocation(line: 835, column: 14, scope: !1207)
!1283 = !DILocation(line: 835, column: 29, scope: !1207)
!1284 = !DILocation(line: 835, column: 37, scope: !1207)
!1285 = !DILocation(line: 835, column: 27, scope: !1207)
!1286 = !DILocation(line: 835, column: 12, scope: !1207)
!1287 = !DILocation(line: 836, column: 12, scope: !1207)
!1288 = !DILocation(line: 836, column: 27, scope: !1207)
!1289 = !DILocation(line: 836, column: 35, scope: !1207)
!1290 = !DILocation(line: 836, column: 25, scope: !1207)
!1291 = !DILocation(line: 836, column: 10, scope: !1207)
!1292 = !DILocation(line: 837, column: 17, scope: !1207)
!1293 = !DILocation(line: 837, column: 29, scope: !1207)
!1294 = !DILocation(line: 837, column: 26, scope: !1207)
!1295 = !DILocation(line: 837, column: 15, scope: !1207)
!1296 = !DILocation(line: 837, column: 40, scope: !1274)
!1297 = !DILocation(line: 837, column: 15, scope: !1274)
!1298 = !DILocation(line: 837, column: 52, scope: !1277)
!1299 = !DILocation(line: 837, column: 15, scope: !1277)
!1300 = !DILocation(line: 837, column: 15, scope: !1280)
!1301 = !DILocation(line: 837, column: 12, scope: !1280)
!1302 = !DILocation(line: 839, column: 12, scope: !1207)
!1303 = !DILocation(line: 839, column: 22, scope: !1207)
!1304 = !DILocation(line: 839, column: 20, scope: !1207)
!1305 = !DILocation(line: 839, column: 10, scope: !1207)
!1306 = !DILocation(line: 842, column: 8, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1207, file: !25, line: 842, column: 8)
!1308 = !DILocation(line: 842, column: 14, scope: !1307)
!1309 = !DILocation(line: 842, column: 8, scope: !1207)
!1310 = !DILocation(line: 844, column: 47, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1307, file: !25, line: 842, column: 20)
!1312 = !DILocation(line: 844, column: 55, scope: !1311)
!1313 = !DILocation(line: 845, column: 11, scope: !1311)
!1314 = !DILocation(line: 845, column: 19, scope: !1311)
!1315 = !DILocation(line: 845, column: 31, scope: !1311)
!1316 = !DILocation(line: 845, column: 39, scope: !1311)
!1317 = !DILocation(line: 845, column: 52, scope: !1311)
!1318 = !DILocation(line: 845, column: 60, scope: !1311)
!1319 = !DILocation(line: 843, column: 7, scope: !1311)
!1320 = !DILocation(line: 847, column: 7, scope: !1311)
!1321 = !DILocation(line: 850, column: 17, scope: !1207)
!1322 = !DILocation(line: 850, column: 25, scope: !1207)
!1323 = !DILocation(line: 850, column: 15, scope: !1207)
!1324 = !DILocation(line: 856, column: 19, scope: !1207)
!1325 = !DILocation(line: 856, column: 31, scope: !1207)
!1326 = !DILocation(line: 856, column: 29, scope: !1207)
!1327 = !DILocation(line: 856, column: 17, scope: !1207)
!1328 = !DILocation(line: 858, column: 19, scope: !1207)
!1329 = !DILocation(line: 858, column: 31, scope: !1207)
!1330 = !DILocation(line: 858, column: 29, scope: !1207)
!1331 = !DILocation(line: 858, column: 17, scope: !1207)
!1332 = !DILocation(line: 863, column: 21, scope: !1207)
!1333 = !DILocation(line: 863, column: 11, scope: !1207)
!1334 = !DILocation(line: 866, column: 32, scope: !1207)
!1335 = !DILocation(line: 866, column: 44, scope: !1207)
!1336 = !DILocation(line: 867, column: 41, scope: !1207)
!1337 = !DILocation(line: 866, column: 8, scope: !1207)
!1338 = !DILocation(line: 866, column: 6, scope: !1207)
!1339 = !DILocation(line: 869, column: 4, scope: !1207)
!1340 = !DILocation(line: 869, column: 11, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1342, file: !25, discriminator: 1)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !25, line: 869, column: 4)
!1343 = distinct !DILexicalBlock(scope: !1207, file: !25, line: 869, column: 4)
!1344 = !DILocation(line: 869, column: 17, scope: !1341)
!1345 = !DILocation(line: 869, column: 21, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !1342, file: !25, discriminator: 2)
!1347 = !DILocation(line: 869, column: 25, scope: !1346)
!1348 = !DILocation(line: 869, column: 23, scope: !1346)
!1349 = !DILocation(line: 869, column: 4, scope: !1350)
!1350 = !DILexicalBlockFile(scope: !1343, file: !25, discriminator: 3)
!1351 = !DILocalVariable(name: "iov_len", scope: !1352, file: !25, line: 870, type: !4)
!1352 = distinct !DILexicalBlock(scope: !1342, file: !25, line: 869, column: 46)
!1353 = !DILocation(line: 870, column: 14, scope: !1352)
!1354 = !DILocation(line: 870, column: 35, scope: !1352)
!1355 = !DILocation(line: 870, column: 24, scope: !1352)
!1356 = !DILocation(line: 870, column: 38, scope: !1352)
!1357 = !DILocation(line: 875, column: 11, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1352, file: !25, line: 875, column: 11)
!1359 = !DILocation(line: 875, column: 19, scope: !1358)
!1360 = !DILocation(line: 875, column: 11, scope: !1352)
!1361 = !DILocation(line: 876, column: 10, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1358, file: !25, line: 875, column: 25)
!1363 = !DILocation(line: 878, column: 21, scope: !1352)
!1364 = !DILocation(line: 878, column: 31, scope: !1352)
!1365 = !DILocation(line: 878, column: 41, scope: !1352)
!1366 = !DILocation(line: 878, column: 39, scope: !1352)
!1367 = !DILocation(line: 878, column: 28, scope: !1352)
!1368 = !DILocation(line: 878, column: 19, scope: !1352)
!1369 = !DILocation(line: 878, column: 61, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1352, file: !25, discriminator: 1)
!1371 = !DILocation(line: 878, column: 19, scope: !1370)
!1372 = !DILocation(line: 878, column: 71, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !1352, file: !25, discriminator: 2)
!1374 = !DILocation(line: 878, column: 81, scope: !1373)
!1375 = !DILocation(line: 878, column: 79, scope: !1373)
!1376 = !DILocation(line: 878, column: 19, scope: !1373)
!1377 = !DILocation(line: 878, column: 19, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !1352, file: !25, discriminator: 3)
!1379 = !DILocation(line: 878, column: 16, scope: !1378)
!1380 = !DILocation(line: 881, column: 49, scope: !1352)
!1381 = !DILocation(line: 881, column: 38, scope: !1352)
!1382 = !DILocation(line: 881, column: 52, scope: !1352)
!1383 = !DILocation(line: 881, column: 64, scope: !1352)
!1384 = !DILocation(line: 881, column: 62, scope: !1352)
!1385 = !DILocation(line: 882, column: 39, scope: !1352)
!1386 = !DILocation(line: 882, column: 49, scope: !1352)
!1387 = !DILocation(line: 883, column: 39, scope: !1352)
!1388 = !DILocation(line: 883, column: 54, scope: !1352)
!1389 = !DILocation(line: 880, column: 17, scope: !1352)
!1390 = !DILocation(line: 880, column: 15, scope: !1352)
!1391 = !DILocation(line: 885, column: 11, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1352, file: !25, line: 885, column: 11)
!1393 = !DILocation(line: 885, column: 19, scope: !1392)
!1394 = !DILocation(line: 885, column: 11, scope: !1352)
!1395 = !DILocation(line: 886, column: 10, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1392, file: !25, line: 885, column: 25)
!1397 = !DILocation(line: 890, column: 16, scope: !1352)
!1398 = !DILocation(line: 890, column: 13, scope: !1352)
!1399 = !DILocation(line: 891, column: 23, scope: !1352)
!1400 = !DILocation(line: 891, column: 20, scope: !1352)
!1401 = !DILocation(line: 892, column: 22, scope: !1352)
!1402 = !DILocation(line: 893, column: 4, scope: !1352)
!1403 = !DILocation(line: 869, column: 42, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1342, file: !25, discriminator: 4)
!1405 = !DILocation(line: 869, column: 4, scope: !1404)
!1406 = distinct !{!1406, !1339}
!1407 = !DILocation(line: 897, column: 11, scope: !1207)
!1408 = !DILocation(line: 897, column: 20, scope: !1207)
!1409 = !DILocation(line: 897, column: 18, scope: !1207)
!1410 = !DILocation(line: 897, column: 4, scope: !1207)
!1411 = !DILocation(line: 898, column: 1, scope: !1207)
!1412 = distinct !DISubprogram(name: "Util_ValidateBytes", scope: !364, file: !364, line: 71, type: !1413, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!9, !367, !4, !11}
!1415 = !DILocalVariable(name: "ptr", arg: 1, scope: !1412, file: !364, line: 71, type: !367)
!1416 = !DILocation(line: 71, column: 32, scope: !1412)
!1417 = !DILocalVariable(name: "size", arg: 2, scope: !1412, file: !364, line: 72, type: !4)
!1418 = !DILocation(line: 72, column: 27, scope: !1412)
!1419 = !DILocalVariable(name: "byteValue", arg: 3, scope: !1412, file: !364, line: 73, type: !11)
!1420 = !DILocation(line: 73, column: 26, scope: !1412)
!1421 = !DILocalVariable(name: "p", scope: !1412, file: !364, line: 75, type: !10)
!1422 = !DILocation(line: 75, column: 11, scope: !1412)
!1423 = !DILocalVariable(name: "end", scope: !1412, file: !364, line: 76, type: !10)
!1424 = !DILocation(line: 76, column: 11, scope: !1412)
!1425 = !DILocalVariable(name: "bigValue", scope: !1412, file: !364, line: 77, type: !19)
!1426 = !DILocation(line: 77, column: 11, scope: !1412)
!1427 = !DILocation(line: 81, column: 8, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1412, file: !364, line: 81, column: 8)
!1429 = !DILocation(line: 81, column: 13, scope: !1428)
!1430 = !DILocation(line: 81, column: 8, scope: !1412)
!1431 = !DILocation(line: 82, column: 7, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1428, file: !364, line: 81, column: 19)
!1433 = !DILocation(line: 85, column: 18, scope: !1412)
!1434 = !DILocation(line: 85, column: 6, scope: !1412)
!1435 = !DILocation(line: 86, column: 10, scope: !1412)
!1436 = !DILocation(line: 86, column: 14, scope: !1412)
!1437 = !DILocation(line: 86, column: 12, scope: !1412)
!1438 = !DILocation(line: 86, column: 8, scope: !1412)
!1439 = !DILocation(line: 89, column: 4, scope: !1412)
!1440 = !DILocation(line: 89, column: 23, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1412, file: !364, discriminator: 1)
!1442 = !DILocation(line: 89, column: 11, scope: !1441)
!1443 = !DILocation(line: 89, column: 25, scope: !1441)
!1444 = !DILocation(line: 89, column: 4, scope: !1441)
!1445 = !DILocation(line: 90, column: 12, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !364, line: 90, column: 11)
!1447 = distinct !DILexicalBlock(scope: !1412, file: !364, line: 89, column: 44)
!1448 = !DILocation(line: 90, column: 11, scope: !1446)
!1449 = !DILocation(line: 90, column: 17, scope: !1446)
!1450 = !DILocation(line: 90, column: 14, scope: !1446)
!1451 = !DILocation(line: 90, column: 11, scope: !1447)
!1452 = !DILocation(line: 91, column: 17, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1446, file: !364, line: 90, column: 28)
!1454 = !DILocation(line: 91, column: 10, scope: !1453)
!1455 = !DILocation(line: 94, column: 8, scope: !1447)
!1456 = !DILocation(line: 96, column: 11, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1447, file: !364, line: 96, column: 11)
!1458 = !DILocation(line: 96, column: 16, scope: !1457)
!1459 = !DILocation(line: 96, column: 13, scope: !1457)
!1460 = !DILocation(line: 96, column: 11, scope: !1447)
!1461 = !DILocation(line: 97, column: 10, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1457, file: !364, line: 96, column: 21)
!1463 = !DILocation(line: 89, column: 4, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1412, file: !364, discriminator: 2)
!1465 = distinct !{!1465, !1439}
!1466 = !DILocation(line: 102, column: 4, scope: !1412)
!1467 = !DILocation(line: 102, column: 28, scope: !1412)
!1468 = !DILocation(line: 102, column: 22, scope: !1412)
!1469 = !DILocation(line: 104, column: 4, scope: !1412)
!1470 = !DILocation(line: 104, column: 11, scope: !1441)
!1471 = !DILocation(line: 104, column: 13, scope: !1441)
!1472 = !DILocation(line: 104, column: 34, scope: !1441)
!1473 = !DILocation(line: 104, column: 31, scope: !1441)
!1474 = !DILocation(line: 104, column: 4, scope: !1441)
!1475 = !DILocation(line: 105, column: 24, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !364, line: 105, column: 11)
!1477 = distinct !DILexicalBlock(scope: !1412, file: !364, line: 104, column: 39)
!1478 = !DILocation(line: 105, column: 11, scope: !1476)
!1479 = !DILocation(line: 105, column: 30, scope: !1476)
!1480 = !DILocation(line: 105, column: 27, scope: !1476)
!1481 = !DILocation(line: 105, column: 11, scope: !1477)
!1482 = !DILocation(line: 107, column: 10, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1476, file: !364, line: 105, column: 40)
!1484 = !DILocation(line: 110, column: 12, scope: !1477)
!1485 = !DILocation(line: 111, column: 9, scope: !1477)
!1486 = !DILocation(line: 104, column: 4, scope: !1464)
!1487 = distinct !{!1487, !1469}
!1488 = !DILocation(line: 115, column: 4, scope: !1412)
!1489 = !DILocation(line: 115, column: 11, scope: !1441)
!1490 = !DILocation(line: 115, column: 15, scope: !1441)
!1491 = !DILocation(line: 115, column: 13, scope: !1441)
!1492 = !DILocation(line: 115, column: 4, scope: !1441)
!1493 = !DILocation(line: 116, column: 12, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !364, line: 116, column: 11)
!1495 = distinct !DILexicalBlock(scope: !1412, file: !364, line: 115, column: 20)
!1496 = !DILocation(line: 116, column: 11, scope: !1494)
!1497 = !DILocation(line: 116, column: 17, scope: !1494)
!1498 = !DILocation(line: 116, column: 14, scope: !1494)
!1499 = !DILocation(line: 116, column: 11, scope: !1495)
!1500 = !DILocation(line: 117, column: 17, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1494, file: !364, line: 116, column: 28)
!1502 = !DILocation(line: 117, column: 10, scope: !1501)
!1503 = !DILocation(line: 120, column: 8, scope: !1495)
!1504 = !DILocation(line: 115, column: 4, scope: !1464)
!1505 = distinct !{!1505, !1488}
!1506 = !DILocation(line: 123, column: 4, scope: !1412)
!1507 = !DILocation(line: 124, column: 1, scope: !1412)
