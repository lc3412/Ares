; ModuleID = './hashTable.o.i'
source_filename = "./hashTable.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.HashTable = type { i32, i32, i32, i8, i8, void (i8*)*, %struct.Atomic_uint64*, i64 }
%struct.Atomic_uint64 = type { i64 }
%struct.HashTableEntry = type { %struct.Atomic_uint64, i8*, %struct.Atomic_uint64 }

@.str = private unnamed_addr constant [28 x i8] c"%s only takes powers of 2 \0A\00", align 1
@__FUNCTION__.HashTable_Alloc = private unnamed_addr constant [16 x i8] c"HashTable_Alloc\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"NOT_REACHED %s:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"hashTable.c\00", align 1

; Function Attrs: nounwind uwtable
define %struct.HashTable* @HashTable_Alloc(i32, i32, void (i8*)*) #0 !dbg !40 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca void (i8*)*, align 8
  %7 = alloca %struct.HashTable*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !65, metadata !66), !dbg !67
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !68, metadata !66), !dbg !69
  store void (i8*)* %2, void (i8*)** %6, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %6, metadata !70, metadata !66), !dbg !71
  call void @llvm.dbg.declare(metadata %struct.HashTable** %7, metadata !72, metadata !66), !dbg !73
  %8 = load i32, i32* %4, align 4, !dbg !74
  %9 = load i32, i32* %4, align 4, !dbg !76
  %10 = sub i32 %9, 1, !dbg !77
  %11 = and i32 %8, %10, !dbg !78
  %12 = icmp ne i32 %11, 0, !dbg !79
  br i1 %12, label %13, label %14, !dbg !80

; <label>:13:                                     ; preds = %3
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.HashTable_Alloc, i32 0, i32 0)) #7, !dbg !81
  unreachable, !dbg !81

; <label>:14:                                     ; preds = %3
  %15 = call i8* @UtilSafeMalloc0(i64 40), !dbg !83
  %16 = bitcast i8* %15 to %struct.HashTable*, !dbg !83
  store %struct.HashTable* %16, %struct.HashTable** %7, align 8, !dbg !84
  %17 = load i32, i32* %4, align 4, !dbg !85
  %18 = call i32 @lssb32_0(i32 %17), !dbg !86
  %19 = load %struct.HashTable*, %struct.HashTable** %7, align 8, !dbg !87
  %20 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %19, i32 0, i32 1, !dbg !88
  store i32 %18, i32* %20, align 4, !dbg !89
  %21 = load i32, i32* %4, align 4, !dbg !90
  %22 = load %struct.HashTable*, %struct.HashTable** %7, align 8, !dbg !91
  %23 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %22, i32 0, i32 0, !dbg !92
  store i32 %21, i32* %23, align 8, !dbg !93
  %24 = load i32, i32* %5, align 4, !dbg !94
  %25 = and i32 %24, 7, !dbg !95
  %26 = load %struct.HashTable*, %struct.HashTable** %7, align 8, !dbg !96
  %27 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %26, i32 0, i32 2, !dbg !97
  store i32 %25, i32* %27, align 8, !dbg !98
  %28 = load i32, i32* %5, align 4, !dbg !99
  %29 = and i32 %28, 8, !dbg !100
  %30 = icmp ne i32 %29, 0, !dbg !101
  %31 = zext i1 %30 to i32, !dbg !101
  %32 = trunc i32 %31 to i8, !dbg !102
  %33 = load %struct.HashTable*, %struct.HashTable** %7, align 8, !dbg !103
  %34 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %33, i32 0, i32 3, !dbg !104
  store i8 %32, i8* %34, align 4, !dbg !105
  %35 = load i32, i32* %5, align 4, !dbg !106
  %36 = and i32 %35, 16, !dbg !107
  %37 = icmp ne i32 %36, 0, !dbg !108
  %38 = zext i1 %37 to i32, !dbg !108
  %39 = trunc i32 %38 to i8, !dbg !109
  %40 = load %struct.HashTable*, %struct.HashTable** %7, align 8, !dbg !110
  %41 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %40, i32 0, i32 4, !dbg !111
  store i8 %39, i8* %41, align 1, !dbg !112
  %42 = load void (i8*)*, void (i8*)** %6, align 8, !dbg !113
  %43 = load %struct.HashTable*, %struct.HashTable** %7, align 8, !dbg !114
  %44 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %43, i32 0, i32 5, !dbg !115
  store void (i8*)* %42, void (i8*)** %44, align 8, !dbg !116
  %45 = load %struct.HashTable*, %struct.HashTable** %7, align 8, !dbg !117
  %46 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %45, i32 0, i32 0, !dbg !118
  %47 = load i32, i32* %46, align 8, !dbg !118
  %48 = zext i32 %47 to i64, !dbg !119
  %49 = call i8* @UtilSafeCalloc0(i64 %48, i64 8), !dbg !120
  %50 = bitcast i8* %49 to %struct.Atomic_uint64*, !dbg !120
  %51 = load %struct.HashTable*, %struct.HashTable** %7, align 8, !dbg !121
  %52 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %51, i32 0, i32 6, !dbg !122
  store %struct.Atomic_uint64* %50, %struct.Atomic_uint64** %52, align 8, !dbg !123
  %53 = load %struct.HashTable*, %struct.HashTable** %7, align 8, !dbg !124
  %54 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %53, i32 0, i32 7, !dbg !125
  store i64 0, i64* %54, align 8, !dbg !126
  %55 = load %struct.HashTable*, %struct.HashTable** %7, align 8, !dbg !127
  ret %struct.HashTable* %55, !dbg !128
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #2

declare i8* @UtilSafeMalloc0(i64) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @lssb32_0(i32) #4 !dbg !129 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !133, metadata !66), !dbg !134
  %5 = load i32, i32* %3, align 4, !dbg !135
  %6 = icmp eq i32 %5, 0, !dbg !139
  %7 = zext i1 %6 to i32, !dbg !139
  %8 = sext i32 %7 to i64, !dbg !140
  %9 = icmp ne i64 %8, 0, !dbg !141
  br i1 %9, label %10, label %11, !dbg !142

; <label>:10:                                     ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !143
  br label %15, !dbg !143

; <label>:11:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %4, metadata !145, metadata !66), !dbg !147
  %12 = load i32, i32* %3, align 4, !dbg !148
  %13 = call i32 asm "bsfl $1, $0\0A", "=r,rm,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %12) #8, !dbg !149, !srcloc !150
  store i32 %13, i32* %4, align 4, !dbg !149
  %14 = load i32, i32* %4, align 4, !dbg !151
  store i32 %14, i32* %2, align 4, !dbg !152
  br label %15, !dbg !152

; <label>:15:                                     ; preds = %11, %10
  %16 = load i32, i32* %2, align 4, !dbg !153
  ret i32 %16, !dbg !153
}

declare i8* @UtilSafeCalloc0(i64, i64) #3

; Function Attrs: nounwind uwtable
define %struct.HashTable* @HashTable_AllocOnce(%struct.Atomic_uint64*, i32, i32, void (i8*)*) #0 !dbg !154 {
  %5 = alloca %struct.Atomic_uint64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca void (i8*)*, align 8
  %9 = alloca %struct.HashTable*, align 8
  %10 = alloca %struct.HashTable*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %5, metadata !158, metadata !66), !dbg !159
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !160, metadata !66), !dbg !161
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !162, metadata !66), !dbg !163
  store void (i8*)* %3, void (i8*)** %8, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %8, metadata !164, metadata !66), !dbg !165
  call void @llvm.dbg.declare(metadata %struct.HashTable** %9, metadata !166, metadata !66), !dbg !167
  %11 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %5, align 8, !dbg !168
  %12 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %11), !dbg !170
  %13 = bitcast i8* %12 to %struct.HashTable*, !dbg !170
  store %struct.HashTable* %13, %struct.HashTable** %9, align 8, !dbg !171
  %14 = icmp eq %struct.HashTable* %13, null, !dbg !172
  br i1 %14, label %15, label %32, !dbg !173

; <label>:15:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.HashTable** %10, metadata !174, metadata !66), !dbg !176
  %16 = load i32, i32* %6, align 4, !dbg !177
  %17 = load i32, i32* %7, align 4, !dbg !178
  %18 = load void (i8*)*, void (i8*)** %8, align 8, !dbg !179
  %19 = call %struct.HashTable* @HashTable_Alloc(i32 %16, i32 %17, void (i8*)* %18), !dbg !180
  store %struct.HashTable* %19, %struct.HashTable** %10, align 8, !dbg !176
  %20 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %5, align 8, !dbg !181
  %21 = load %struct.HashTable*, %struct.HashTable** %10, align 8, !dbg !182
  %22 = bitcast %struct.HashTable* %21 to i8*, !dbg !182
  %23 = call i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64* %20, i8* null, i8* %22), !dbg !183
  %24 = bitcast i8* %23 to %struct.HashTable*, !dbg !183
  store %struct.HashTable* %24, %struct.HashTable** %9, align 8, !dbg !184
  %25 = load %struct.HashTable*, %struct.HashTable** %9, align 8, !dbg !185
  %26 = icmp eq %struct.HashTable* %25, null, !dbg !187
  br i1 %26, label %27, label %29, !dbg !188

; <label>:27:                                     ; preds = %15
  %28 = load %struct.HashTable*, %struct.HashTable** %10, align 8, !dbg !189
  store %struct.HashTable* %28, %struct.HashTable** %9, align 8, !dbg !191
  br label %31, !dbg !192

; <label>:29:                                     ; preds = %15
  %30 = load %struct.HashTable*, %struct.HashTable** %10, align 8, !dbg !193
  call void @HashTable_FreeUnsafe(%struct.HashTable* %30), !dbg !195
  br label %31

; <label>:31:                                     ; preds = %29, %27
  br label %32, !dbg !196

; <label>:32:                                     ; preds = %31, %4
  %33 = load %struct.HashTable*, %struct.HashTable** %9, align 8, !dbg !197
  ret %struct.HashTable* %33, !dbg !198
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadPtr(%struct.Atomic_uint64*) #4 !dbg !199 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !204, metadata !66), !dbg !205
  %3 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !206
  %4 = call i64 @Atomic_Read64(%struct.Atomic_uint64* %3), !dbg !207
  %5 = inttoptr i64 %4 to i8*, !dbg !208
  ret i8* %5, !dbg !209
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64*, i8*, i8*) #4 !dbg !210 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !213, metadata !66), !dbg !214
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !215, metadata !66), !dbg !216
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !217, metadata !66), !dbg !218
  %7 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !219
  %8 = load i8*, i8** %5, align 8, !dbg !220
  %9 = ptrtoint i8* %8 to i64, !dbg !221
  %10 = load i8*, i8** %6, align 8, !dbg !222
  %11 = ptrtoint i8* %10 to i64, !dbg !223
  %12 = call i64 @Atomic_ReadIfEqualWrite64(%struct.Atomic_uint64* %7, i64 %9, i64 %11), !dbg !224
  %13 = inttoptr i64 %12 to i8*, !dbg !225
  ret i8* %13, !dbg !226
}

; Function Attrs: nounwind uwtable
define void @HashTable_FreeUnsafe(%struct.HashTable*) #0 !dbg !227 {
  %2 = alloca %struct.HashTable*, align 8
  store %struct.HashTable* %0, %struct.HashTable** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HashTable** %2, metadata !230, metadata !66), !dbg !231
  %3 = load %struct.HashTable*, %struct.HashTable** %2, align 8, !dbg !232
  %4 = icmp ne %struct.HashTable* %3, null, !dbg !234
  br i1 %4, label %5, label %13, !dbg !235

; <label>:5:                                      ; preds = %1
  %6 = load %struct.HashTable*, %struct.HashTable** %2, align 8, !dbg !236
  call void @HashTableClearInternal(%struct.HashTable* %6), !dbg !238
  %7 = load %struct.HashTable*, %struct.HashTable** %2, align 8, !dbg !239
  %8 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %7, i32 0, i32 6, !dbg !240
  %9 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %8, align 8, !dbg !240
  %10 = bitcast %struct.Atomic_uint64* %9 to i8*, !dbg !239
  call void @free(i8* %10) #9, !dbg !241
  %11 = load %struct.HashTable*, %struct.HashTable** %2, align 8, !dbg !242
  %12 = bitcast %struct.HashTable* %11 to i8*, !dbg !242
  call void @free(i8* %12) #9, !dbg !243
  br label %13, !dbg !244

; <label>:13:                                     ; preds = %5, %1
  ret void, !dbg !245
}

; Function Attrs: nounwind uwtable
define void @HashTable_Clear(%struct.HashTable*) #0 !dbg !246 {
  %2 = alloca %struct.HashTable*, align 8
  store %struct.HashTable* %0, %struct.HashTable** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HashTable** %2, metadata !247, metadata !66), !dbg !248
  %3 = load %struct.HashTable*, %struct.HashTable** %2, align 8, !dbg !249
  call void @HashTableClearInternal(%struct.HashTable* %3), !dbg !250
  ret void, !dbg !251
}

; Function Attrs: nounwind uwtable
define internal void @HashTableClearInternal(%struct.HashTable*) #0 !dbg !252 {
  %2 = alloca %struct.HashTable*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.HashTableEntry*, align 8
  store %struct.HashTable* %0, %struct.HashTable** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HashTable** %2, metadata !253, metadata !66), !dbg !254
  call void @llvm.dbg.declare(metadata i32* %3, metadata !255, metadata !66), !dbg !256
  %5 = load %struct.HashTable*, %struct.HashTable** %2, align 8, !dbg !257
  %6 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %5, i32 0, i32 7, !dbg !258
  store i64 0, i64* %6, align 8, !dbg !259
  store i32 0, i32* %3, align 4, !dbg !260
  br label %7, !dbg !262

; <label>:7:                                      ; preds = %60, %1
  %8 = load i32, i32* %3, align 4, !dbg !263
  %9 = load %struct.HashTable*, %struct.HashTable** %2, align 8, !dbg !266
  %10 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %9, i32 0, i32 0, !dbg !267
  %11 = load i32, i32* %10, align 8, !dbg !267
  %12 = icmp ult i32 %8, %11, !dbg !268
  br i1 %12, label %13, label %63, !dbg !269

; <label>:13:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct.HashTableEntry** %4, metadata !270, metadata !66), !dbg !272
  br label %14, !dbg !273

; <label>:14:                                     ; preds = %56, %13
  %15 = load i32, i32* %3, align 4, !dbg !274
  %16 = sext i32 %15 to i64, !dbg !276
  %17 = load %struct.HashTable*, %struct.HashTable** %2, align 8, !dbg !276
  %18 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %17, i32 0, i32 6, !dbg !277
  %19 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %18, align 8, !dbg !277
  %20 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %19, i64 %16, !dbg !276
  %21 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %20), !dbg !278
  %22 = bitcast i8* %21 to %struct.HashTableEntry*, !dbg !279
  store %struct.HashTableEntry* %22, %struct.HashTableEntry** %4, align 8, !dbg !280
  %23 = icmp ne %struct.HashTableEntry* %22, null, !dbg !281
  br i1 %23, label %24, label %59, !dbg !282

; <label>:24:                                     ; preds = %14
  %25 = load i32, i32* %3, align 4, !dbg !283
  %26 = sext i32 %25 to i64, !dbg !285
  %27 = load %struct.HashTable*, %struct.HashTable** %2, align 8, !dbg !285
  %28 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %27, i32 0, i32 6, !dbg !286
  %29 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %28, align 8, !dbg !286
  %30 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %29, i64 %26, !dbg !285
  %31 = load %struct.HashTableEntry*, %struct.HashTableEntry** %4, align 8, !dbg !287
  %32 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %31, i32 0, i32 0, !dbg !288
  %33 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %32), !dbg !289
  %34 = bitcast i8* %33 to %struct.HashTableEntry*, !dbg !290
  %35 = bitcast %struct.HashTableEntry* %34 to i8*, !dbg !291
  call void @Atomic_WritePtr(%struct.Atomic_uint64* %30, i8* %35), !dbg !292
  %36 = load %struct.HashTable*, %struct.HashTable** %2, align 8, !dbg !294
  %37 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %36, i32 0, i32 4, !dbg !296
  %38 = load i8, i8* %37, align 1, !dbg !296
  %39 = icmp ne i8 %38, 0, !dbg !294
  br i1 %39, label %40, label %44, !dbg !297

; <label>:40:                                     ; preds = %24
  %41 = load %struct.HashTableEntry*, %struct.HashTableEntry** %4, align 8, !dbg !298
  %42 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %41, i32 0, i32 1, !dbg !300
  %43 = load i8*, i8** %42, align 8, !dbg !300
  call void @free(i8* %43) #9, !dbg !301
  br label %44, !dbg !302

; <label>:44:                                     ; preds = %40, %24
  %45 = load %struct.HashTable*, %struct.HashTable** %2, align 8, !dbg !303
  %46 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %45, i32 0, i32 5, !dbg !305
  %47 = load void (i8*)*, void (i8*)** %46, align 8, !dbg !305
  %48 = icmp ne void (i8*)* %47, null, !dbg !303
  br i1 %48, label %49, label %56, !dbg !306

; <label>:49:                                     ; preds = %44
  %50 = load %struct.HashTable*, %struct.HashTable** %2, align 8, !dbg !307
  %51 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %50, i32 0, i32 5, !dbg !309
  %52 = load void (i8*)*, void (i8*)** %51, align 8, !dbg !309
  %53 = load %struct.HashTableEntry*, %struct.HashTableEntry** %4, align 8, !dbg !310
  %54 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %53, i32 0, i32 2, !dbg !311
  %55 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %54), !dbg !312
  call void %52(i8* %55), !dbg !313
  br label %56, !dbg !315

; <label>:56:                                     ; preds = %49, %44
  %57 = load %struct.HashTableEntry*, %struct.HashTableEntry** %4, align 8, !dbg !316
  %58 = bitcast %struct.HashTableEntry* %57 to i8*, !dbg !316
  call void @free(i8* %58) #9, !dbg !317
  br label %14, !dbg !318, !llvm.loop !320

; <label>:59:                                     ; preds = %14
  br label %60, !dbg !321

; <label>:60:                                     ; preds = %59
  %61 = load i32, i32* %3, align 4, !dbg !322
  %62 = add nsw i32 %61, 1, !dbg !322
  store i32 %62, i32* %3, align 4, !dbg !322
  br label %7, !dbg !324, !llvm.loop !325

; <label>:63:                                     ; preds = %7
  ret void, !dbg !327
}

; Function Attrs: nounwind uwtable
define void @HashTable_Free(%struct.HashTable*) #0 !dbg !328 {
  %2 = alloca %struct.HashTable*, align 8
  store %struct.HashTable* %0, %struct.HashTable** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HashTable** %2, metadata !329, metadata !66), !dbg !330
  %3 = load %struct.HashTable*, %struct.HashTable** %2, align 8, !dbg !331
  %4 = icmp ne %struct.HashTable* %3, null, !dbg !333
  br i1 %4, label %5, label %13, !dbg !334

; <label>:5:                                      ; preds = %1
  %6 = load %struct.HashTable*, %struct.HashTable** %2, align 8, !dbg !335
  call void @HashTableClearInternal(%struct.HashTable* %6), !dbg !337
  %7 = load %struct.HashTable*, %struct.HashTable** %2, align 8, !dbg !338
  %8 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %7, i32 0, i32 6, !dbg !339
  %9 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %8, align 8, !dbg !339
  %10 = bitcast %struct.Atomic_uint64* %9 to i8*, !dbg !338
  call void @free(i8* %10) #9, !dbg !340
  %11 = load %struct.HashTable*, %struct.HashTable** %2, align 8, !dbg !341
  %12 = bitcast %struct.HashTable* %11 to i8*, !dbg !341
  call void @free(i8* %12) #9, !dbg !342
  br label %13, !dbg !343

; <label>:13:                                     ; preds = %5, %1
  ret void, !dbg !344
}

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define signext i8 @HashTable_Lookup(%struct.HashTable*, i8*, i8**) #0 !dbg !345 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.HashTable*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.HashTableEntry*, align 8
  store %struct.HashTable* %0, %struct.HashTable** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HashTable** %5, metadata !351, metadata !66), !dbg !352
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !353, metadata !66), !dbg !354
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !355, metadata !66), !dbg !356
  call void @llvm.dbg.declare(metadata i32* %8, metadata !357, metadata !66), !dbg !358
  %10 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !359
  %11 = load i8*, i8** %6, align 8, !dbg !360
  %12 = call i32 @HashTableComputeHash(%struct.HashTable* %10, i8* %11), !dbg !361
  store i32 %12, i32* %8, align 4, !dbg !358
  call void @llvm.dbg.declare(metadata %struct.HashTableEntry** %9, metadata !362, metadata !66), !dbg !363
  %13 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !364
  %14 = load i8*, i8** %6, align 8, !dbg !365
  %15 = load i32, i32* %8, align 4, !dbg !366
  %16 = call %struct.HashTableEntry* @HashTableLookup(%struct.HashTable* %13, i8* %14, i32 %15), !dbg !367
  store %struct.HashTableEntry* %16, %struct.HashTableEntry** %9, align 8, !dbg !363
  %17 = load %struct.HashTableEntry*, %struct.HashTableEntry** %9, align 8, !dbg !368
  %18 = icmp eq %struct.HashTableEntry* %17, null, !dbg !370
  br i1 %18, label %19, label %20, !dbg !371

; <label>:19:                                     ; preds = %3
  store i8 0, i8* %4, align 1, !dbg !372
  br label %29, !dbg !372

; <label>:20:                                     ; preds = %3
  %21 = load i8**, i8*** %7, align 8, !dbg !374
  %22 = icmp ne i8** %21, null, !dbg !374
  br i1 %22, label %23, label %28, !dbg !376

; <label>:23:                                     ; preds = %20
  %24 = load %struct.HashTableEntry*, %struct.HashTableEntry** %9, align 8, !dbg !377
  %25 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %24, i32 0, i32 2, !dbg !379
  %26 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %25), !dbg !380
  %27 = load i8**, i8*** %7, align 8, !dbg !381
  store i8* %26, i8** %27, align 8, !dbg !382
  br label %28, !dbg !383

; <label>:28:                                     ; preds = %23, %20
  store i8 1, i8* %4, align 1, !dbg !384
  br label %29, !dbg !384

; <label>:29:                                     ; preds = %28, %19
  %30 = load i8, i8* %4, align 1, !dbg !385
  ret i8 %30, !dbg !385
}

; Function Attrs: nounwind uwtable
define internal i32 @HashTableComputeHash(%struct.HashTable*, i8*) #0 !dbg !386 {
  %3 = alloca %struct.HashTable*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.HashTable* %0, %struct.HashTable** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.HashTable** %3, metadata !389, metadata !66), !dbg !390
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !391, metadata !66), !dbg !392
  call void @llvm.dbg.declare(metadata i32* %5, metadata !393, metadata !66), !dbg !394
  store i32 0, i32* %5, align 4, !dbg !394
  %12 = load %struct.HashTable*, %struct.HashTable** %3, align 8, !dbg !395
  %13 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %12, i32 0, i32 2, !dbg !396
  %14 = load i32, i32* %13, align 8, !dbg !396
  switch i32 %14, label %65 [
    i32 0, label %15
    i32 1, label %33
    i32 2, label %52
  ], !dbg !397

; <label>:15:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %6, metadata !398, metadata !66), !dbg !401
  call void @llvm.dbg.declare(metadata i8** %7, metadata !402, metadata !66), !dbg !403
  %16 = load i8*, i8** %4, align 8, !dbg !404
  store i8* %16, i8** %7, align 8, !dbg !403
  br label %17, !dbg !405

; <label>:17:                                     ; preds = %23, %15
  %18 = load i8*, i8** %7, align 8, !dbg !406
  %19 = getelementptr inbounds i8, i8* %18, i32 1, !dbg !406
  store i8* %19, i8** %7, align 8, !dbg !406
  %20 = load i8, i8* %18, align 1, !dbg !408
  %21 = zext i8 %20 to i32, !dbg !408
  store i32 %21, i32* %6, align 4, !dbg !409
  %22 = icmp ne i32 %21, 0, !dbg !410
  br i1 %22, label %23, label %32, !dbg !410

; <label>:23:                                     ; preds = %17
  %24 = load i32, i32* %6, align 4, !dbg !411
  %25 = load i32, i32* %5, align 4, !dbg !413
  %26 = xor i32 %25, %24, !dbg !413
  store i32 %26, i32* %5, align 4, !dbg !413
  %27 = load i32, i32* %5, align 4, !dbg !414
  %28 = shl i32 %27, 5, !dbg !415
  %29 = load i32, i32* %5, align 4, !dbg !416
  %30 = lshr i32 %29, 27, !dbg !417
  %31 = or i32 %28, %30, !dbg !418
  store i32 %31, i32* %5, align 4, !dbg !419
  br label %17, !dbg !420, !llvm.loop !422

; <label>:32:                                     ; preds = %17
  br label %66, !dbg !423

; <label>:33:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %8, metadata !424, metadata !66), !dbg !426
  call void @llvm.dbg.declare(metadata i8** %9, metadata !427, metadata !66), !dbg !428
  %34 = load i8*, i8** %4, align 8, !dbg !429
  store i8* %34, i8** %9, align 8, !dbg !428
  br label %35, !dbg !430

; <label>:35:                                     ; preds = %42, %33
  %36 = load i8*, i8** %9, align 8, !dbg !431
  %37 = getelementptr inbounds i8, i8* %36, i32 1, !dbg !431
  store i8* %37, i8** %9, align 8, !dbg !431
  %38 = load i8, i8* %36, align 1, !dbg !433
  %39 = zext i8 %38 to i32, !dbg !433
  %40 = call i32 @tolower(i32 %39) #8, !dbg !434
  store i32 %40, i32* %8, align 4, !dbg !435
  %41 = icmp ne i32 %40, 0, !dbg !436
  br i1 %41, label %42, label %51, !dbg !436

; <label>:42:                                     ; preds = %35
  %43 = load i32, i32* %8, align 4, !dbg !437
  %44 = load i32, i32* %5, align 4, !dbg !439
  %45 = xor i32 %44, %43, !dbg !439
  store i32 %45, i32* %5, align 4, !dbg !439
  %46 = load i32, i32* %5, align 4, !dbg !440
  %47 = shl i32 %46, 5, !dbg !441
  %48 = load i32, i32* %5, align 4, !dbg !442
  %49 = lshr i32 %48, 27, !dbg !443
  %50 = or i32 %47, %49, !dbg !444
  store i32 %50, i32* %5, align 4, !dbg !445
  br label %35, !dbg !446, !llvm.loop !448

; <label>:51:                                     ; preds = %35
  br label %66, !dbg !449

; <label>:52:                                     ; preds = %2
  br label %53, !dbg !450, !llvm.loop !451

; <label>:53:                                     ; preds = %52
  br label %54, !dbg !452

; <label>:54:                                     ; preds = %53
  %55 = load i8*, i8** %4, align 8, !dbg !455
  %56 = ptrtoint i8* %55 to i64, !dbg !458
  %57 = trunc i64 %56 to i32, !dbg !459
  %58 = load i8*, i8** %4, align 8, !dbg !460
  %59 = ptrtoint i8* %58 to i64, !dbg !461
  %60 = lshr i64 %59, 32, !dbg !462
  %61 = trunc i64 %60 to i32, !dbg !463
  %62 = xor i32 %57, %61, !dbg !464
  store i32 %62, i32* %5, align 4, !dbg !465
  %63 = load i32, i32* %5, align 4, !dbg !466
  %64 = mul i32 %63, 48271, !dbg !466
  store i32 %64, i32* %5, align 4, !dbg !466
  br label %66, !dbg !467

; <label>:65:                                     ; preds = %2
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 156) #7, !dbg !468
  unreachable, !dbg !468

; <label>:66:                                     ; preds = %54, %51, %32
  call void @llvm.dbg.declare(metadata i32* %10, metadata !469, metadata !66), !dbg !471
  %67 = load %struct.HashTable*, %struct.HashTable** %3, align 8, !dbg !472
  %68 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %67, i32 0, i32 1, !dbg !473
  %69 = load i32, i32* %68, align 4, !dbg !473
  store i32 %69, i32* %10, align 4, !dbg !471
  call void @llvm.dbg.declare(metadata i32* %11, metadata !474, metadata !66), !dbg !475
  %70 = load i32, i32* %10, align 4, !dbg !476
  %71 = shl i32 1, %70, !dbg !477
  %72 = sub nsw i32 %71, 1, !dbg !478
  store i32 %72, i32* %11, align 4, !dbg !475
  br label %73, !dbg !479

; <label>:73:                                     ; preds = %78, %66
  %74 = load i32, i32* %5, align 4, !dbg !480
  %75 = load i32, i32* %11, align 4, !dbg !484
  %76 = icmp ugt i32 %74, %75, !dbg !485
  br i1 %76, label %77, label %86, !dbg !486

; <label>:77:                                     ; preds = %73
  br label %78, !dbg !487

; <label>:78:                                     ; preds = %77
  %79 = load i32, i32* %5, align 4, !dbg !489
  %80 = load i32, i32* %11, align 4, !dbg !491
  %81 = and i32 %79, %80, !dbg !492
  %82 = load i32, i32* %5, align 4, !dbg !493
  %83 = load i32, i32* %10, align 4, !dbg !494
  %84 = lshr i32 %82, %83, !dbg !495
  %85 = xor i32 %81, %84, !dbg !496
  store i32 %85, i32* %5, align 4, !dbg !497
  br label %73, !dbg !498, !llvm.loop !499

; <label>:86:                                     ; preds = %73
  %87 = load i32, i32* %5, align 4, !dbg !500
  ret i32 %87, !dbg !501
}

; Function Attrs: nounwind uwtable
define internal %struct.HashTableEntry* @HashTableLookup(%struct.HashTable*, i8*, i32) #0 !dbg !502 {
  %4 = alloca %struct.HashTableEntry*, align 8
  %5 = alloca %struct.HashTable*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.HashTableEntry*, align 8
  store %struct.HashTable* %0, %struct.HashTable** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HashTable** %5, metadata !505, metadata !66), !dbg !506
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !507, metadata !66), !dbg !508
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !509, metadata !66), !dbg !510
  call void @llvm.dbg.declare(metadata %struct.HashTableEntry** %8, metadata !511, metadata !66), !dbg !512
  %9 = load i32, i32* %7, align 4, !dbg !513
  %10 = zext i32 %9 to i64, !dbg !515
  %11 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !515
  %12 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %11, i32 0, i32 6, !dbg !516
  %13 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %12, align 8, !dbg !516
  %14 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %13, i64 %10, !dbg !515
  %15 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %14), !dbg !517
  %16 = bitcast i8* %15 to %struct.HashTableEntry*, !dbg !518
  store %struct.HashTableEntry* %16, %struct.HashTableEntry** %8, align 8, !dbg !519
  br label %17, !dbg !520

; <label>:17:                                     ; preds = %31, %3
  %18 = load %struct.HashTableEntry*, %struct.HashTableEntry** %8, align 8, !dbg !521
  %19 = icmp ne %struct.HashTableEntry* %18, null, !dbg !523
  br i1 %19, label %20, label %36, !dbg !524

; <label>:20:                                     ; preds = %17
  %21 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !526
  %22 = load %struct.HashTableEntry*, %struct.HashTableEntry** %8, align 8, !dbg !529
  %23 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %22, i32 0, i32 1, !dbg !530
  %24 = load i8*, i8** %23, align 8, !dbg !530
  %25 = load i8*, i8** %6, align 8, !dbg !531
  %26 = call signext i8 @HashTableEqualKeys(%struct.HashTable* %21, i8* %24, i8* %25), !dbg !532
  %27 = icmp ne i8 %26, 0, !dbg !532
  br i1 %27, label %28, label %30, !dbg !533

; <label>:28:                                     ; preds = %20
  %29 = load %struct.HashTableEntry*, %struct.HashTableEntry** %8, align 8, !dbg !534
  store %struct.HashTableEntry* %29, %struct.HashTableEntry** %4, align 8, !dbg !536
  br label %37, !dbg !536

; <label>:30:                                     ; preds = %20
  br label %31, !dbg !537

; <label>:31:                                     ; preds = %30
  %32 = load %struct.HashTableEntry*, %struct.HashTableEntry** %8, align 8, !dbg !538
  %33 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %32, i32 0, i32 0, !dbg !539
  %34 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %33), !dbg !540
  %35 = bitcast i8* %34 to %struct.HashTableEntry*, !dbg !541
  store %struct.HashTableEntry* %35, %struct.HashTableEntry** %8, align 8, !dbg !542
  br label %17, !dbg !543, !llvm.loop !545

; <label>:36:                                     ; preds = %17
  store %struct.HashTableEntry* null, %struct.HashTableEntry** %4, align 8, !dbg !547
  br label %37, !dbg !547

; <label>:37:                                     ; preds = %36, %28
  %38 = load %struct.HashTableEntry*, %struct.HashTableEntry** %4, align 8, !dbg !548
  ret %struct.HashTableEntry* %38, !dbg !548
}

; Function Attrs: nounwind uwtable
define signext i8 @HashTable_Delete(%struct.HashTable*, i8*) #0 !dbg !549 {
  %3 = alloca %struct.HashTable*, align 8
  %4 = alloca i8*, align 8
  store %struct.HashTable* %0, %struct.HashTable** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.HashTable** %3, metadata !552, metadata !66), !dbg !553
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !554, metadata !66), !dbg !555
  %5 = load %struct.HashTable*, %struct.HashTable** %3, align 8, !dbg !556
  %6 = load i8*, i8** %4, align 8, !dbg !557
  %7 = call signext i8 @HashTable_LookupAndDelete(%struct.HashTable* %5, i8* %6, i8** null), !dbg !558
  ret i8 %7, !dbg !559
}

; Function Attrs: nounwind uwtable
define signext i8 @HashTable_LookupAndDelete(%struct.HashTable*, i8*, i8**) #0 !dbg !560 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.HashTable*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.Atomic_uint64*, align 8
  %10 = alloca %struct.HashTableEntry*, align 8
  store %struct.HashTable* %0, %struct.HashTable** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HashTable** %5, metadata !563, metadata !66), !dbg !564
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !565, metadata !66), !dbg !566
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !567, metadata !66), !dbg !568
  call void @llvm.dbg.declare(metadata i32* %8, metadata !569, metadata !66), !dbg !570
  %11 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !571
  %12 = load i8*, i8** %6, align 8, !dbg !572
  %13 = call i32 @HashTableComputeHash(%struct.HashTable* %11, i8* %12), !dbg !573
  store i32 %13, i32* %8, align 4, !dbg !570
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %9, metadata !574, metadata !66), !dbg !575
  call void @llvm.dbg.declare(metadata %struct.HashTableEntry** %10, metadata !576, metadata !66), !dbg !577
  %14 = load i32, i32* %8, align 4, !dbg !578
  %15 = zext i32 %14 to i64, !dbg !580
  %16 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !580
  %17 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %16, i32 0, i32 6, !dbg !581
  %18 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %17, align 8, !dbg !581
  %19 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %18, i64 %15, !dbg !580
  store %struct.Atomic_uint64* %19, %struct.Atomic_uint64** %9, align 8, !dbg !582
  br label %20, !dbg !583

; <label>:20:                                     ; preds = %77, %3
  %21 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %9, align 8, !dbg !584
  %22 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %21), !dbg !586
  %23 = bitcast i8* %22 to %struct.HashTableEntry*, !dbg !587
  store %struct.HashTableEntry* %23, %struct.HashTableEntry** %10, align 8, !dbg !588
  %24 = icmp ne %struct.HashTableEntry* %23, null, !dbg !589
  br i1 %24, label %25, label %80, !dbg !590

; <label>:25:                                     ; preds = %20
  %26 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !592
  %27 = load %struct.HashTableEntry*, %struct.HashTableEntry** %10, align 8, !dbg !595
  %28 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %27, i32 0, i32 1, !dbg !596
  %29 = load i8*, i8** %28, align 8, !dbg !596
  %30 = load i8*, i8** %6, align 8, !dbg !597
  %31 = call signext i8 @HashTableEqualKeys(%struct.HashTable* %26, i8* %29, i8* %30), !dbg !598
  %32 = icmp ne i8 %31, 0, !dbg !598
  br i1 %32, label %33, label %76, !dbg !599

; <label>:33:                                     ; preds = %25
  %34 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %9, align 8, !dbg !600
  %35 = load %struct.HashTableEntry*, %struct.HashTableEntry** %10, align 8, !dbg !602
  %36 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %35, i32 0, i32 0, !dbg !603
  %37 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %36), !dbg !604
  %38 = bitcast i8* %37 to %struct.HashTableEntry*, !dbg !605
  %39 = bitcast %struct.HashTableEntry* %38 to i8*, !dbg !606
  call void @Atomic_WritePtr(%struct.Atomic_uint64* %34, i8* %39), !dbg !607
  %40 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !609
  %41 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %40, i32 0, i32 7, !dbg !610
  %42 = load i64, i64* %41, align 8, !dbg !611
  %43 = add i64 %42, -1, !dbg !611
  store i64 %43, i64* %41, align 8, !dbg !611
  %44 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !612
  %45 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %44, i32 0, i32 4, !dbg !614
  %46 = load i8, i8* %45, align 1, !dbg !614
  %47 = icmp ne i8 %46, 0, !dbg !612
  br i1 %47, label %48, label %52, !dbg !615

; <label>:48:                                     ; preds = %33
  %49 = load %struct.HashTableEntry*, %struct.HashTableEntry** %10, align 8, !dbg !616
  %50 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %49, i32 0, i32 1, !dbg !618
  %51 = load i8*, i8** %50, align 8, !dbg !618
  call void @free(i8* %51) #9, !dbg !619
  br label %52, !dbg !620

; <label>:52:                                     ; preds = %48, %33
  %53 = load i8**, i8*** %7, align 8, !dbg !621
  %54 = icmp ne i8** %53, null, !dbg !623
  br i1 %54, label %55, label %60, !dbg !624

; <label>:55:                                     ; preds = %52
  %56 = load %struct.HashTableEntry*, %struct.HashTableEntry** %10, align 8, !dbg !625
  %57 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %56, i32 0, i32 2, !dbg !627
  %58 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %57), !dbg !628
  %59 = load i8**, i8*** %7, align 8, !dbg !629
  store i8* %58, i8** %59, align 8, !dbg !630
  br label %73, !dbg !631

; <label>:60:                                     ; preds = %52
  %61 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !632
  %62 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %61, i32 0, i32 5, !dbg !635
  %63 = load void (i8*)*, void (i8*)** %62, align 8, !dbg !635
  %64 = icmp ne void (i8*)* %63, null, !dbg !632
  br i1 %64, label %65, label %72, !dbg !632

; <label>:65:                                     ; preds = %60
  %66 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !636
  %67 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %66, i32 0, i32 5, !dbg !638
  %68 = load void (i8*)*, void (i8*)** %67, align 8, !dbg !638
  %69 = load %struct.HashTableEntry*, %struct.HashTableEntry** %10, align 8, !dbg !639
  %70 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %69, i32 0, i32 2, !dbg !640
  %71 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %70), !dbg !641
  call void %68(i8* %71), !dbg !642
  br label %72, !dbg !644

; <label>:72:                                     ; preds = %65, %60
  br label %73

; <label>:73:                                     ; preds = %72, %55
  %74 = load %struct.HashTableEntry*, %struct.HashTableEntry** %10, align 8, !dbg !645
  %75 = bitcast %struct.HashTableEntry* %74 to i8*, !dbg !645
  call void @free(i8* %75) #9, !dbg !646
  store i8 1, i8* %4, align 1, !dbg !647
  br label %81, !dbg !647

; <label>:76:                                     ; preds = %25
  br label %77, !dbg !648

; <label>:77:                                     ; preds = %76
  %78 = load %struct.HashTableEntry*, %struct.HashTableEntry** %10, align 8, !dbg !649
  %79 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %78, i32 0, i32 0, !dbg !650
  store %struct.Atomic_uint64* %79, %struct.Atomic_uint64** %9, align 8, !dbg !651
  br label %20, !dbg !652, !llvm.loop !654

; <label>:80:                                     ; preds = %20
  store i8 0, i8* %4, align 1, !dbg !656
  br label %81, !dbg !656

; <label>:81:                                     ; preds = %80, %73
  %82 = load i8, i8* %4, align 1, !dbg !657
  ret i8 %82, !dbg !657
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HashTableEqualKeys(%struct.HashTable*, i8*, i8*) #0 !dbg !658 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.HashTable*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.HashTable* %0, %struct.HashTable** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HashTable** %5, metadata !661, metadata !66), !dbg !662
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !663, metadata !66), !dbg !664
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !665, metadata !66), !dbg !666
  %8 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !667
  %9 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %8, i32 0, i32 2, !dbg !668
  %10 = load i32, i32* %9, align 8, !dbg !668
  switch i32 %10, label %25 [
    i32 0, label %11
    i32 1, label %18
  ], !dbg !669

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** %6, align 8, !dbg !670
  %13 = load i8*, i8** %7, align 8, !dbg !672
  %14 = call i32 @strcmp(i8* %12, i8* %13) #8, !dbg !673
  %15 = icmp eq i32 %14, 0, !dbg !674
  %16 = zext i1 %15 to i32, !dbg !674
  %17 = trunc i32 %16 to i8, !dbg !673
  store i8 %17, i8* %4, align 1, !dbg !675
  br label %31, !dbg !675

; <label>:18:                                     ; preds = %3
  %19 = load i8*, i8** %6, align 8, !dbg !676
  %20 = load i8*, i8** %7, align 8, !dbg !677
  %21 = call i32 @strcasecmp(i8* %19, i8* %20) #8, !dbg !678
  %22 = icmp eq i32 %21, 0, !dbg !679
  %23 = zext i1 %22 to i32, !dbg !679
  %24 = trunc i32 %23 to i8, !dbg !678
  store i8 %24, i8* %4, align 1, !dbg !680
  br label %31, !dbg !680

; <label>:25:                                     ; preds = %3
  %26 = load i8*, i8** %6, align 8, !dbg !681
  %27 = load i8*, i8** %7, align 8, !dbg !682
  %28 = icmp eq i8* %26, %27, !dbg !683
  %29 = zext i1 %28 to i32, !dbg !683
  %30 = trunc i32 %29 to i8, !dbg !681
  store i8 %30, i8* %4, align 1, !dbg !684
  br label %31, !dbg !684

; <label>:31:                                     ; preds = %25, %18, %11
  %32 = load i8, i8* %4, align 1, !dbg !685
  ret i8 %32, !dbg !685
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Atomic_WritePtr(%struct.Atomic_uint64*, i8*) #4 !dbg !686 {
  %3 = alloca %struct.Atomic_uint64*, align 8
  %4 = alloca i8*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %3, metadata !689, metadata !66), !dbg !690
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !691, metadata !66), !dbg !692
  %5 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %3, align 8, !dbg !693
  %6 = load i8*, i8** %4, align 8, !dbg !694
  %7 = ptrtoint i8* %6 to i64, !dbg !695
  call void @Atomic_Write64(%struct.Atomic_uint64* %5, i64 %7), !dbg !696
  ret void, !dbg !697
}

; Function Attrs: nounwind uwtable
define signext i8 @HashTable_Insert(%struct.HashTable*, i8*, i8*) #0 !dbg !698 {
  %4 = alloca %struct.HashTable*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.HashTable* %0, %struct.HashTable** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HashTable** %4, metadata !701, metadata !66), !dbg !702
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !703, metadata !66), !dbg !704
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !705, metadata !66), !dbg !706
  %7 = load %struct.HashTable*, %struct.HashTable** %4, align 8, !dbg !707
  %8 = load i8*, i8** %5, align 8, !dbg !708
  %9 = load i8*, i8** %6, align 8, !dbg !709
  %10 = call %struct.HashTableEntry* @HashTableLookupOrInsert(%struct.HashTable* %7, i8* %8, i8* %9), !dbg !710
  %11 = icmp eq %struct.HashTableEntry* %10, null, !dbg !711
  %12 = zext i1 %11 to i32, !dbg !711
  %13 = trunc i32 %12 to i8, !dbg !710
  ret i8 %13, !dbg !712
}

; Function Attrs: nounwind uwtable
define %struct.HashTableEntry* @HashTableLookupOrInsert(%struct.HashTable*, i8*, i8*) #0 !dbg !713 {
  %4 = alloca %struct.HashTableEntry*, align 8
  %5 = alloca %struct.HashTable*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.HashTableEntry*, align 8
  %10 = alloca %struct.HashTableEntry*, align 8
  %11 = alloca %struct.HashTableEntry*, align 8
  store %struct.HashTable* %0, %struct.HashTable** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HashTable** %5, metadata !716, metadata !66), !dbg !717
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !718, metadata !66), !dbg !719
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !720, metadata !66), !dbg !721
  call void @llvm.dbg.declare(metadata i32* %8, metadata !722, metadata !66), !dbg !723
  %12 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !724
  %13 = load i8*, i8** %6, align 8, !dbg !725
  %14 = call i32 @HashTableComputeHash(%struct.HashTable* %12, i8* %13), !dbg !726
  store i32 %14, i32* %8, align 4, !dbg !723
  call void @llvm.dbg.declare(metadata %struct.HashTableEntry** %9, metadata !727, metadata !66), !dbg !728
  store %struct.HashTableEntry* null, %struct.HashTableEntry** %9, align 8, !dbg !728
  call void @llvm.dbg.declare(metadata %struct.HashTableEntry** %10, metadata !729, metadata !66), !dbg !730
  store %struct.HashTableEntry* null, %struct.HashTableEntry** %10, align 8, !dbg !730
  call void @llvm.dbg.declare(metadata %struct.HashTableEntry** %11, metadata !731, metadata !66), !dbg !732
  br label %15, !dbg !733

; <label>:15:                                     ; preds = %94, %3
  %16 = load i32, i32* %8, align 4, !dbg !734
  %17 = zext i32 %16 to i64, !dbg !735
  %18 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !735
  %19 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %18, i32 0, i32 6, !dbg !736
  %20 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %19, align 8, !dbg !736
  %21 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %20, i64 %17, !dbg !735
  %22 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %21), !dbg !737
  %23 = bitcast i8* %22 to %struct.HashTableEntry*, !dbg !738
  store %struct.HashTableEntry* %23, %struct.HashTableEntry** %11, align 8, !dbg !739
  %24 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !740
  %25 = load i8*, i8** %6, align 8, !dbg !741
  %26 = load i32, i32* %8, align 4, !dbg !742
  %27 = call %struct.HashTableEntry* @HashTableLookup(%struct.HashTable* %24, i8* %25, i32 %26), !dbg !743
  store %struct.HashTableEntry* %27, %struct.HashTableEntry** %10, align 8, !dbg !744
  %28 = load %struct.HashTableEntry*, %struct.HashTableEntry** %10, align 8, !dbg !745
  %29 = icmp ne %struct.HashTableEntry* %28, null, !dbg !747
  br i1 %29, label %30, label %47, !dbg !748

; <label>:30:                                     ; preds = %15
  %31 = load %struct.HashTableEntry*, %struct.HashTableEntry** %9, align 8, !dbg !749
  %32 = icmp ne %struct.HashTableEntry* %31, null, !dbg !752
  br i1 %32, label %33, label %45, !dbg !753

; <label>:33:                                     ; preds = %30
  %34 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !754
  %35 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %34, i32 0, i32 4, !dbg !757
  %36 = load i8, i8* %35, align 1, !dbg !757
  %37 = icmp ne i8 %36, 0, !dbg !754
  br i1 %37, label %38, label %42, !dbg !758

; <label>:38:                                     ; preds = %33
  %39 = load %struct.HashTableEntry*, %struct.HashTableEntry** %9, align 8, !dbg !759
  %40 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %39, i32 0, i32 1, !dbg !761
  %41 = load i8*, i8** %40, align 8, !dbg !761
  call void @free(i8* %41) #9, !dbg !762
  br label %42, !dbg !763

; <label>:42:                                     ; preds = %38, %33
  %43 = load %struct.HashTableEntry*, %struct.HashTableEntry** %9, align 8, !dbg !764
  %44 = bitcast %struct.HashTableEntry* %43 to i8*, !dbg !764
  call void @free(i8* %44) #9, !dbg !765
  br label %45, !dbg !766

; <label>:45:                                     ; preds = %42, %30
  %46 = load %struct.HashTableEntry*, %struct.HashTableEntry** %10, align 8, !dbg !767
  store %struct.HashTableEntry* %46, %struct.HashTableEntry** %4, align 8, !dbg !768
  br label %110, !dbg !768

; <label>:47:                                     ; preds = %15
  %48 = load %struct.HashTableEntry*, %struct.HashTableEntry** %9, align 8, !dbg !769
  %49 = icmp eq %struct.HashTableEntry* %48, null, !dbg !771
  br i1 %49, label %50, label %70, !dbg !772

; <label>:50:                                     ; preds = %47
  %51 = call i8* @UtilSafeMalloc0(i64 24), !dbg !773
  %52 = bitcast i8* %51 to %struct.HashTableEntry*, !dbg !773
  store %struct.HashTableEntry* %52, %struct.HashTableEntry** %9, align 8, !dbg !775
  %53 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !776
  %54 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %53, i32 0, i32 4, !dbg !778
  %55 = load i8, i8* %54, align 1, !dbg !778
  %56 = icmp ne i8 %55, 0, !dbg !776
  br i1 %56, label %57, label %62, !dbg !779

; <label>:57:                                     ; preds = %50
  %58 = load i8*, i8** %6, align 8, !dbg !780
  %59 = call i8* @UtilSafeStrdup0(i8* %58), !dbg !782
  %60 = load %struct.HashTableEntry*, %struct.HashTableEntry** %9, align 8, !dbg !783
  %61 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %60, i32 0, i32 1, !dbg !784
  store i8* %59, i8** %61, align 8, !dbg !785
  br label %66, !dbg !786

; <label>:62:                                     ; preds = %50
  %63 = load i8*, i8** %6, align 8, !dbg !787
  %64 = load %struct.HashTableEntry*, %struct.HashTableEntry** %9, align 8, !dbg !789
  %65 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %64, i32 0, i32 1, !dbg !790
  store i8* %63, i8** %65, align 8, !dbg !791
  br label %66

; <label>:66:                                     ; preds = %62, %57
  %67 = load %struct.HashTableEntry*, %struct.HashTableEntry** %9, align 8, !dbg !792
  %68 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %67, i32 0, i32 2, !dbg !793
  %69 = load i8*, i8** %7, align 8, !dbg !794
  call void @Atomic_WritePtr(%struct.Atomic_uint64* %68, i8* %69), !dbg !795
  br label %70, !dbg !796

; <label>:70:                                     ; preds = %66, %47
  %71 = load %struct.HashTableEntry*, %struct.HashTableEntry** %9, align 8, !dbg !797
  %72 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %71, i32 0, i32 0, !dbg !798
  %73 = load %struct.HashTableEntry*, %struct.HashTableEntry** %11, align 8, !dbg !799
  %74 = bitcast %struct.HashTableEntry* %73 to i8*, !dbg !799
  call void @Atomic_WritePtr(%struct.Atomic_uint64* %72, i8* %74), !dbg !800
  %75 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !801
  %76 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %75, i32 0, i32 3, !dbg !803
  %77 = load i8, i8* %76, align 4, !dbg !803
  %78 = icmp ne i8 %77, 0, !dbg !801
  br i1 %78, label %79, label %96, !dbg !804

; <label>:79:                                     ; preds = %70
  %80 = load i32, i32* %8, align 4, !dbg !805
  %81 = zext i32 %80 to i64, !dbg !808
  %82 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !808
  %83 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %82, i32 0, i32 6, !dbg !809
  %84 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %83, align 8, !dbg !809
  %85 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %84, i64 %81, !dbg !808
  %86 = load %struct.HashTableEntry*, %struct.HashTableEntry** %11, align 8, !dbg !810
  %87 = bitcast %struct.HashTableEntry* %86 to i8*, !dbg !810
  %88 = load %struct.HashTableEntry*, %struct.HashTableEntry** %9, align 8, !dbg !811
  %89 = bitcast %struct.HashTableEntry* %88 to i8*, !dbg !811
  %90 = call i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64* %85, i8* %87, i8* %89), !dbg !812
  %91 = load %struct.HashTableEntry*, %struct.HashTableEntry** %11, align 8, !dbg !813
  %92 = bitcast %struct.HashTableEntry* %91 to i8*, !dbg !814
  %93 = icmp eq i8* %90, %92, !dbg !815
  br i1 %93, label %95, label %94, !dbg !816

; <label>:94:                                     ; preds = %79
  br label %15, !dbg !817

; <label>:95:                                     ; preds = %79
  br label %105, !dbg !819

; <label>:96:                                     ; preds = %70
  %97 = load i32, i32* %8, align 4, !dbg !820
  %98 = zext i32 %97 to i64, !dbg !822
  %99 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !822
  %100 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %99, i32 0, i32 6, !dbg !823
  %101 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %100, align 8, !dbg !823
  %102 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %101, i64 %98, !dbg !822
  %103 = load %struct.HashTableEntry*, %struct.HashTableEntry** %9, align 8, !dbg !824
  %104 = bitcast %struct.HashTableEntry* %103 to i8*, !dbg !824
  call void @Atomic_WritePtr(%struct.Atomic_uint64* %102, i8* %104), !dbg !825
  br label %105

; <label>:105:                                    ; preds = %96, %95
  %106 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !826
  %107 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %106, i32 0, i32 7, !dbg !827
  %108 = load i64, i64* %107, align 8, !dbg !828
  %109 = add i64 %108, 1, !dbg !828
  store i64 %109, i64* %107, align 8, !dbg !828
  store %struct.HashTableEntry* null, %struct.HashTableEntry** %4, align 8, !dbg !829
  br label %110, !dbg !829

; <label>:110:                                    ; preds = %105, %45
  %111 = load %struct.HashTableEntry*, %struct.HashTableEntry** %4, align 8, !dbg !830
  ret %struct.HashTableEntry* %111, !dbg !830
}

; Function Attrs: nounwind uwtable
define i8* @HashTable_LookupOrInsert(%struct.HashTable*, i8*, i8*) #0 !dbg !831 {
  %4 = alloca %struct.HashTable*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.HashTableEntry*, align 8
  store %struct.HashTable* %0, %struct.HashTable** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HashTable** %4, metadata !834, metadata !66), !dbg !835
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !836, metadata !66), !dbg !837
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !838, metadata !66), !dbg !839
  call void @llvm.dbg.declare(metadata %struct.HashTableEntry** %7, metadata !840, metadata !66), !dbg !841
  %8 = load %struct.HashTable*, %struct.HashTable** %4, align 8, !dbg !842
  %9 = load i8*, i8** %5, align 8, !dbg !843
  %10 = load i8*, i8** %6, align 8, !dbg !844
  %11 = call %struct.HashTableEntry* @HashTableLookupOrInsert(%struct.HashTable* %8, i8* %9, i8* %10), !dbg !845
  store %struct.HashTableEntry* %11, %struct.HashTableEntry** %7, align 8, !dbg !841
  %12 = load %struct.HashTableEntry*, %struct.HashTableEntry** %7, align 8, !dbg !846
  %13 = icmp eq %struct.HashTableEntry* %12, null, !dbg !847
  br i1 %13, label %14, label %16, !dbg !846

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %6, align 8, !dbg !848
  br label %20, !dbg !850

; <label>:16:                                     ; preds = %3
  %17 = load %struct.HashTableEntry*, %struct.HashTableEntry** %7, align 8, !dbg !851
  %18 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %17, i32 0, i32 2, !dbg !853
  %19 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %18), !dbg !854
  br label %20, !dbg !855

; <label>:20:                                     ; preds = %16, %14
  %21 = phi i8* [ %15, %14 ], [ %19, %16 ], !dbg !856
  ret i8* %21, !dbg !858
}

; Function Attrs: nounwind uwtable
define signext i8 @HashTable_ReplaceOrInsert(%struct.HashTable*, i8*, i8*) #0 !dbg !859 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.HashTable*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.HashTableEntry*, align 8
  %9 = alloca i8*, align 8
  store %struct.HashTable* %0, %struct.HashTable** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HashTable** %5, metadata !860, metadata !66), !dbg !861
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !862, metadata !66), !dbg !863
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !864, metadata !66), !dbg !865
  call void @llvm.dbg.declare(metadata %struct.HashTableEntry** %8, metadata !866, metadata !66), !dbg !867
  %10 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !868
  %11 = load i8*, i8** %6, align 8, !dbg !869
  %12 = load i8*, i8** %7, align 8, !dbg !870
  %13 = call %struct.HashTableEntry* @HashTableLookupOrInsert(%struct.HashTable* %10, i8* %11, i8* %12), !dbg !871
  store %struct.HashTableEntry* %13, %struct.HashTableEntry** %8, align 8, !dbg !867
  %14 = load %struct.HashTableEntry*, %struct.HashTableEntry** %8, align 8, !dbg !872
  %15 = icmp eq %struct.HashTableEntry* %14, null, !dbg !874
  br i1 %15, label %16, label %17, !dbg !875

; <label>:16:                                     ; preds = %3
  store i8 0, i8* %4, align 1, !dbg !876
  br label %54, !dbg !876

; <label>:17:                                     ; preds = %3
  %18 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !878
  %19 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %18, i32 0, i32 3, !dbg !880
  %20 = load i8, i8* %19, align 4, !dbg !880
  %21 = sext i8 %20 to i32, !dbg !878
  %22 = icmp ne i32 %21, 0, !dbg !878
  br i1 %22, label %23, label %37, !dbg !881

; <label>:23:                                     ; preds = %17
  %24 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !882
  %25 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %24, i32 0, i32 5, !dbg !884
  %26 = load void (i8*)*, void (i8*)** %25, align 8, !dbg !884
  %27 = icmp ne void (i8*)* %26, null, !dbg !882
  br i1 %27, label %28, label %37, !dbg !885

; <label>:28:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata i8** %9, metadata !886, metadata !66), !dbg !888
  %29 = load %struct.HashTableEntry*, %struct.HashTableEntry** %8, align 8, !dbg !889
  %30 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %29, i32 0, i32 2, !dbg !890
  %31 = load i8*, i8** %7, align 8, !dbg !891
  %32 = call i8* @Atomic_ReadWritePtr(%struct.Atomic_uint64* %30, i8* %31), !dbg !892
  store i8* %32, i8** %9, align 8, !dbg !888
  %33 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !893
  %34 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %33, i32 0, i32 5, !dbg !894
  %35 = load void (i8*)*, void (i8*)** %34, align 8, !dbg !894
  %36 = load i8*, i8** %9, align 8, !dbg !895
  call void %35(i8* %36), !dbg !893
  br label %53, !dbg !896

; <label>:37:                                     ; preds = %23, %17
  %38 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !897
  %39 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %38, i32 0, i32 5, !dbg !900
  %40 = load void (i8*)*, void (i8*)** %39, align 8, !dbg !900
  %41 = icmp ne void (i8*)* %40, null, !dbg !897
  br i1 %41, label %42, label %49, !dbg !901

; <label>:42:                                     ; preds = %37
  %43 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !902
  %44 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %43, i32 0, i32 5, !dbg !904
  %45 = load void (i8*)*, void (i8*)** %44, align 8, !dbg !904
  %46 = load %struct.HashTableEntry*, %struct.HashTableEntry** %8, align 8, !dbg !905
  %47 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %46, i32 0, i32 2, !dbg !906
  %48 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %47), !dbg !907
  call void %45(i8* %48), !dbg !908
  br label %49, !dbg !910

; <label>:49:                                     ; preds = %42, %37
  %50 = load %struct.HashTableEntry*, %struct.HashTableEntry** %8, align 8, !dbg !911
  %51 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %50, i32 0, i32 2, !dbg !912
  %52 = load i8*, i8** %7, align 8, !dbg !913
  call void @Atomic_WritePtr(%struct.Atomic_uint64* %51, i8* %52), !dbg !914
  br label %53

; <label>:53:                                     ; preds = %49, %28
  store i8 1, i8* %4, align 1, !dbg !915
  br label %54, !dbg !915

; <label>:54:                                     ; preds = %53, %16
  %55 = load i8, i8* %4, align 1, !dbg !916
  ret i8 %55, !dbg !916
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadWritePtr(%struct.Atomic_uint64*, i8*) #4 !dbg !917 {
  %3 = alloca %struct.Atomic_uint64*, align 8
  %4 = alloca i8*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %3, metadata !920, metadata !66), !dbg !921
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !922, metadata !66), !dbg !923
  %5 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %3, align 8, !dbg !924
  %6 = load i8*, i8** %4, align 8, !dbg !925
  %7 = ptrtoint i8* %6 to i64, !dbg !926
  %8 = call i64 @Atomic_ReadWrite64(%struct.Atomic_uint64* %5, i64 %7), !dbg !927
  %9 = inttoptr i64 %8 to i8*, !dbg !928
  ret i8* %9, !dbg !929
}

; Function Attrs: nounwind uwtable
define signext i8 @HashTable_ReplaceIfEqual(%struct.HashTable*, i8*, i8*, i8*) #0 !dbg !930 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.HashTable*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.HashTableEntry*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  store %struct.HashTable* %0, %struct.HashTable** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.HashTable** %6, metadata !933, metadata !66), !dbg !934
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !935, metadata !66), !dbg !936
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !937, metadata !66), !dbg !938
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !939, metadata !66), !dbg !940
  call void @llvm.dbg.declare(metadata i32* %10, metadata !941, metadata !66), !dbg !942
  %14 = load %struct.HashTable*, %struct.HashTable** %6, align 8, !dbg !943
  %15 = load i8*, i8** %7, align 8, !dbg !944
  %16 = call i32 @HashTableComputeHash(%struct.HashTable* %14, i8* %15), !dbg !945
  store i32 %16, i32* %10, align 4, !dbg !942
  call void @llvm.dbg.declare(metadata %struct.HashTableEntry** %11, metadata !946, metadata !66), !dbg !947
  %17 = load %struct.HashTable*, %struct.HashTable** %6, align 8, !dbg !948
  %18 = load i8*, i8** %7, align 8, !dbg !949
  %19 = load i32, i32* %10, align 4, !dbg !950
  %20 = call %struct.HashTableEntry* @HashTableLookup(%struct.HashTable* %17, i8* %18, i32 %19), !dbg !951
  store %struct.HashTableEntry* %20, %struct.HashTableEntry** %11, align 8, !dbg !947
  call void @llvm.dbg.declare(metadata i8* %12, metadata !952, metadata !66), !dbg !953
  store i8 0, i8* %12, align 1, !dbg !953
  %21 = load %struct.HashTableEntry*, %struct.HashTableEntry** %11, align 8, !dbg !954
  %22 = icmp eq %struct.HashTableEntry* %21, null, !dbg !956
  br i1 %22, label %23, label %24, !dbg !957

; <label>:23:                                     ; preds = %4
  store i8 0, i8* %5, align 1, !dbg !958
  br label %75, !dbg !958

; <label>:24:                                     ; preds = %4
  %25 = load %struct.HashTable*, %struct.HashTable** %6, align 8, !dbg !960
  %26 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %25, i32 0, i32 3, !dbg !962
  %27 = load i8, i8* %26, align 4, !dbg !962
  %28 = icmp ne i8 %27, 0, !dbg !960
  br i1 %28, label %29, label %50, !dbg !963

; <label>:29:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata i8** %13, metadata !964, metadata !66), !dbg !966
  %30 = load %struct.HashTableEntry*, %struct.HashTableEntry** %11, align 8, !dbg !967
  %31 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %30, i32 0, i32 2, !dbg !968
  %32 = load i8*, i8** %8, align 8, !dbg !969
  %33 = load i8*, i8** %9, align 8, !dbg !970
  %34 = call i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64* %31, i8* %32, i8* %33), !dbg !971
  store i8* %34, i8** %13, align 8, !dbg !966
  %35 = load i8*, i8** %13, align 8, !dbg !972
  %36 = load i8*, i8** %8, align 8, !dbg !974
  %37 = icmp eq i8* %35, %36, !dbg !975
  br i1 %37, label %38, label %49, !dbg !976

; <label>:38:                                     ; preds = %29
  store i8 1, i8* %12, align 1, !dbg !977
  %39 = load %struct.HashTable*, %struct.HashTable** %6, align 8, !dbg !979
  %40 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %39, i32 0, i32 5, !dbg !981
  %41 = load void (i8*)*, void (i8*)** %40, align 8, !dbg !981
  %42 = icmp ne void (i8*)* %41, null, !dbg !982
  br i1 %42, label %43, label %48, !dbg !983

; <label>:43:                                     ; preds = %38
  %44 = load %struct.HashTable*, %struct.HashTable** %6, align 8, !dbg !984
  %45 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %44, i32 0, i32 5, !dbg !986
  %46 = load void (i8*)*, void (i8*)** %45, align 8, !dbg !986
  %47 = load i8*, i8** %13, align 8, !dbg !987
  call void %46(i8* %47), !dbg !984
  br label %48, !dbg !988

; <label>:48:                                     ; preds = %43, %38
  br label %49, !dbg !989

; <label>:49:                                     ; preds = %48, %29
  br label %73, !dbg !990

; <label>:50:                                     ; preds = %24
  %51 = load %struct.HashTableEntry*, %struct.HashTableEntry** %11, align 8, !dbg !991
  %52 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %51, i32 0, i32 2, !dbg !993
  %53 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %52), !dbg !994
  %54 = load i8*, i8** %8, align 8, !dbg !995
  %55 = icmp eq i8* %53, %54, !dbg !996
  br i1 %55, label %56, label %72, !dbg !997

; <label>:56:                                     ; preds = %50
  store i8 1, i8* %12, align 1, !dbg !998
  %57 = load %struct.HashTable*, %struct.HashTable** %6, align 8, !dbg !1000
  %58 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %57, i32 0, i32 5, !dbg !1002
  %59 = load void (i8*)*, void (i8*)** %58, align 8, !dbg !1002
  %60 = icmp ne void (i8*)* %59, null, !dbg !1000
  br i1 %60, label %61, label %68, !dbg !1003

; <label>:61:                                     ; preds = %56
  %62 = load %struct.HashTable*, %struct.HashTable** %6, align 8, !dbg !1004
  %63 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %62, i32 0, i32 5, !dbg !1006
  %64 = load void (i8*)*, void (i8*)** %63, align 8, !dbg !1006
  %65 = load %struct.HashTableEntry*, %struct.HashTableEntry** %11, align 8, !dbg !1007
  %66 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %65, i32 0, i32 2, !dbg !1008
  %67 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %66), !dbg !1009
  call void %64(i8* %67), !dbg !1010
  br label %68, !dbg !1012

; <label>:68:                                     ; preds = %61, %56
  %69 = load %struct.HashTableEntry*, %struct.HashTableEntry** %11, align 8, !dbg !1013
  %70 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %69, i32 0, i32 2, !dbg !1014
  %71 = load i8*, i8** %9, align 8, !dbg !1015
  call void @Atomic_WritePtr(%struct.Atomic_uint64* %70, i8* %71), !dbg !1016
  br label %72, !dbg !1017

; <label>:72:                                     ; preds = %68, %50
  br label %73

; <label>:73:                                     ; preds = %72, %49
  %74 = load i8, i8* %12, align 1, !dbg !1018
  store i8 %74, i8* %5, align 1, !dbg !1019
  br label %75, !dbg !1019

; <label>:75:                                     ; preds = %73, %23
  %76 = load i8, i8* %5, align 1, !dbg !1020
  ret i8 %76, !dbg !1020
}

declare i8* @UtilSafeStrdup0(i8*) #3

; Function Attrs: nounwind uwtable
define i64 @HashTable_GetNumElements(%struct.HashTable*) #0 !dbg !1021 {
  %2 = alloca %struct.HashTable*, align 8
  store %struct.HashTable* %0, %struct.HashTable** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HashTable** %2, metadata !1024, metadata !66), !dbg !1025
  %3 = load %struct.HashTable*, %struct.HashTable** %2, align 8, !dbg !1026
  %4 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %3, i32 0, i32 7, !dbg !1027
  %5 = load i64, i64* %4, align 8, !dbg !1027
  ret i64 %5, !dbg !1028
}

; Function Attrs: nounwind uwtable
define void @HashTable_KeyArray(%struct.HashTable*, i8***, i64*) #0 !dbg !1029 {
  %4 = alloca %struct.HashTable*, align 8
  %5 = alloca i8***, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.HashTableEntry*, align 8
  store %struct.HashTable* %0, %struct.HashTable** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HashTable** %4, metadata !1035, metadata !66), !dbg !1036
  store i8*** %1, i8**** %5, align 8
  call void @llvm.dbg.declare(metadata i8**** %5, metadata !1037, metadata !66), !dbg !1038
  store i64* %2, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !1039, metadata !66), !dbg !1040
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1041, metadata !66), !dbg !1042
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1043, metadata !66), !dbg !1044
  %10 = load i8***, i8**** %5, align 8, !dbg !1045
  store i8** null, i8*** %10, align 8, !dbg !1046
  %11 = load %struct.HashTable*, %struct.HashTable** %4, align 8, !dbg !1047
  %12 = call i64 @HashTable_GetNumElements(%struct.HashTable* %11), !dbg !1048
  %13 = load i64*, i64** %6, align 8, !dbg !1049
  store i64 %12, i64* %13, align 8, !dbg !1050
  %14 = load i64*, i64** %6, align 8, !dbg !1051
  %15 = load i64, i64* %14, align 8, !dbg !1053
  %16 = icmp eq i64 %15, 0, !dbg !1054
  br i1 %16, label %17, label %18, !dbg !1055

; <label>:17:                                     ; preds = %3
  br label %61, !dbg !1056

; <label>:18:                                     ; preds = %3
  %19 = load i64*, i64** %6, align 8, !dbg !1058
  %20 = load i64, i64* %19, align 8, !dbg !1059
  %21 = mul i64 %20, 8, !dbg !1060
  %22 = call i8* @UtilSafeMalloc0(i64 %21), !dbg !1061
  %23 = bitcast i8* %22 to i8**, !dbg !1061
  %24 = load i8***, i8**** %5, align 8, !dbg !1062
  store i8** %23, i8*** %24, align 8, !dbg !1063
  store i32 0, i32* %7, align 4, !dbg !1064
  store i64 0, i64* %8, align 8, !dbg !1066
  br label %25, !dbg !1067

; <label>:25:                                     ; preds = %58, %18
  %26 = load i32, i32* %7, align 4, !dbg !1068
  %27 = load %struct.HashTable*, %struct.HashTable** %4, align 8, !dbg !1071
  %28 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %27, i32 0, i32 0, !dbg !1072
  %29 = load i32, i32* %28, align 8, !dbg !1072
  %30 = icmp ult i32 %26, %29, !dbg !1073
  br i1 %30, label %31, label %61, !dbg !1074

; <label>:31:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata %struct.HashTableEntry** %9, metadata !1075, metadata !66), !dbg !1077
  %32 = load i32, i32* %7, align 4, !dbg !1078
  %33 = zext i32 %32 to i64, !dbg !1080
  %34 = load %struct.HashTable*, %struct.HashTable** %4, align 8, !dbg !1080
  %35 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %34, i32 0, i32 6, !dbg !1081
  %36 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %35, align 8, !dbg !1081
  %37 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %36, i64 %33, !dbg !1080
  %38 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %37), !dbg !1082
  %39 = bitcast i8* %38 to %struct.HashTableEntry*, !dbg !1083
  store %struct.HashTableEntry* %39, %struct.HashTableEntry** %9, align 8, !dbg !1084
  br label %40, !dbg !1085

; <label>:40:                                     ; preds = %52, %31
  %41 = load %struct.HashTableEntry*, %struct.HashTableEntry** %9, align 8, !dbg !1086
  %42 = icmp ne %struct.HashTableEntry* %41, null, !dbg !1088
  br i1 %42, label %43, label %57, !dbg !1089

; <label>:43:                                     ; preds = %40
  %44 = load %struct.HashTableEntry*, %struct.HashTableEntry** %9, align 8, !dbg !1091
  %45 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %44, i32 0, i32 1, !dbg !1093
  %46 = load i8*, i8** %45, align 8, !dbg !1093
  %47 = load i64, i64* %8, align 8, !dbg !1094
  %48 = add i64 %47, 1, !dbg !1094
  store i64 %48, i64* %8, align 8, !dbg !1094
  %49 = load i8***, i8**** %5, align 8, !dbg !1095
  %50 = load i8**, i8*** %49, align 8, !dbg !1096
  %51 = getelementptr inbounds i8*, i8** %50, i64 %47, !dbg !1097
  store i8* %46, i8** %51, align 8, !dbg !1098
  br label %52, !dbg !1099

; <label>:52:                                     ; preds = %43
  %53 = load %struct.HashTableEntry*, %struct.HashTableEntry** %9, align 8, !dbg !1100
  %54 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %53, i32 0, i32 0, !dbg !1101
  %55 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %54), !dbg !1102
  %56 = bitcast i8* %55 to %struct.HashTableEntry*, !dbg !1103
  store %struct.HashTableEntry* %56, %struct.HashTableEntry** %9, align 8, !dbg !1104
  br label %40, !dbg !1105, !llvm.loop !1107

; <label>:57:                                     ; preds = %40
  br label %58, !dbg !1109

; <label>:58:                                     ; preds = %57
  %59 = load i32, i32* %7, align 4, !dbg !1110
  %60 = add i32 %59, 1, !dbg !1110
  store i32 %60, i32* %7, align 4, !dbg !1110
  br label %25, !dbg !1112, !llvm.loop !1113

; <label>:61:                                     ; preds = %17, %25
  ret void, !dbg !1115
}

; Function Attrs: nounwind uwtable
define void @HashTable_ToArray(%struct.HashTable*, i8***, i64*) #0 !dbg !1116 {
  %4 = alloca %struct.HashTable*, align 8
  %5 = alloca i8***, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.HashTableEntry*, align 8
  store %struct.HashTable* %0, %struct.HashTable** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HashTable** %4, metadata !1120, metadata !66), !dbg !1121
  store i8*** %1, i8**** %5, align 8
  call void @llvm.dbg.declare(metadata i8**** %5, metadata !1122, metadata !66), !dbg !1123
  store i64* %2, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !1124, metadata !66), !dbg !1125
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1126, metadata !66), !dbg !1127
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1128, metadata !66), !dbg !1129
  %10 = load i8***, i8**** %5, align 8, !dbg !1130
  store i8** null, i8*** %10, align 8, !dbg !1131
  %11 = load %struct.HashTable*, %struct.HashTable** %4, align 8, !dbg !1132
  %12 = call i64 @HashTable_GetNumElements(%struct.HashTable* %11), !dbg !1133
  %13 = load i64*, i64** %6, align 8, !dbg !1134
  store i64 %12, i64* %13, align 8, !dbg !1135
  %14 = load i64*, i64** %6, align 8, !dbg !1136
  %15 = load i64, i64* %14, align 8, !dbg !1138
  %16 = icmp eq i64 %15, 0, !dbg !1139
  br i1 %16, label %17, label %18, !dbg !1140

; <label>:17:                                     ; preds = %3
  br label %61, !dbg !1141

; <label>:18:                                     ; preds = %3
  %19 = load i64*, i64** %6, align 8, !dbg !1143
  %20 = load i64, i64* %19, align 8, !dbg !1144
  %21 = mul i64 %20, 8, !dbg !1145
  %22 = call i8* @UtilSafeMalloc0(i64 %21), !dbg !1146
  %23 = bitcast i8* %22 to i8**, !dbg !1146
  %24 = load i8***, i8**** %5, align 8, !dbg !1147
  store i8** %23, i8*** %24, align 8, !dbg !1148
  store i32 0, i32* %7, align 4, !dbg !1149
  store i64 0, i64* %8, align 8, !dbg !1151
  br label %25, !dbg !1152

; <label>:25:                                     ; preds = %58, %18
  %26 = load i32, i32* %7, align 4, !dbg !1153
  %27 = load %struct.HashTable*, %struct.HashTable** %4, align 8, !dbg !1156
  %28 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %27, i32 0, i32 0, !dbg !1157
  %29 = load i32, i32* %28, align 8, !dbg !1157
  %30 = icmp ult i32 %26, %29, !dbg !1158
  br i1 %30, label %31, label %61, !dbg !1159

; <label>:31:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata %struct.HashTableEntry** %9, metadata !1160, metadata !66), !dbg !1162
  %32 = load i32, i32* %7, align 4, !dbg !1163
  %33 = zext i32 %32 to i64, !dbg !1165
  %34 = load %struct.HashTable*, %struct.HashTable** %4, align 8, !dbg !1165
  %35 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %34, i32 0, i32 6, !dbg !1166
  %36 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %35, align 8, !dbg !1166
  %37 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %36, i64 %33, !dbg !1165
  %38 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %37), !dbg !1167
  %39 = bitcast i8* %38 to %struct.HashTableEntry*, !dbg !1168
  store %struct.HashTableEntry* %39, %struct.HashTableEntry** %9, align 8, !dbg !1169
  br label %40, !dbg !1170

; <label>:40:                                     ; preds = %52, %31
  %41 = load %struct.HashTableEntry*, %struct.HashTableEntry** %9, align 8, !dbg !1171
  %42 = icmp ne %struct.HashTableEntry* %41, null, !dbg !1173
  br i1 %42, label %43, label %57, !dbg !1174

; <label>:43:                                     ; preds = %40
  %44 = load %struct.HashTableEntry*, %struct.HashTableEntry** %9, align 8, !dbg !1176
  %45 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %44, i32 0, i32 2, !dbg !1178
  %46 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %45), !dbg !1179
  %47 = load i64, i64* %8, align 8, !dbg !1180
  %48 = add i64 %47, 1, !dbg !1180
  store i64 %48, i64* %8, align 8, !dbg !1180
  %49 = load i8***, i8**** %5, align 8, !dbg !1181
  %50 = load i8**, i8*** %49, align 8, !dbg !1182
  %51 = getelementptr inbounds i8*, i8** %50, i64 %47, !dbg !1183
  store i8* %46, i8** %51, align 8, !dbg !1184
  br label %52, !dbg !1185

; <label>:52:                                     ; preds = %43
  %53 = load %struct.HashTableEntry*, %struct.HashTableEntry** %9, align 8, !dbg !1186
  %54 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %53, i32 0, i32 0, !dbg !1187
  %55 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %54), !dbg !1188
  %56 = bitcast i8* %55 to %struct.HashTableEntry*, !dbg !1189
  store %struct.HashTableEntry* %56, %struct.HashTableEntry** %9, align 8, !dbg !1190
  br label %40, !dbg !1191, !llvm.loop !1193

; <label>:57:                                     ; preds = %40
  br label %58, !dbg !1195

; <label>:58:                                     ; preds = %57
  %59 = load i32, i32* %7, align 4, !dbg !1196
  %60 = add i32 %59, 1, !dbg !1196
  store i32 %60, i32* %7, align 4, !dbg !1196
  br label %25, !dbg !1198, !llvm.loop !1199

; <label>:61:                                     ; preds = %17, %25
  ret void, !dbg !1201
}

; Function Attrs: nounwind uwtable
define i32 @HashTable_ForEach(%struct.HashTable*, i32 (i8*, i8*, i8*)*, i8*) #0 !dbg !1202 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.HashTable*, align 8
  %6 = alloca i32 (i8*, i8*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.HashTableEntry*, align 8
  %10 = alloca i32, align 4
  store %struct.HashTable* %0, %struct.HashTable** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HashTable** %5, metadata !1209, metadata !66), !dbg !1210
  store i32 (i8*, i8*, i8*)* %1, i32 (i8*, i8*, i8*)** %6, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i8*, i8*)** %6, metadata !1211, metadata !66), !dbg !1212
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1213, metadata !66), !dbg !1214
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1215, metadata !66), !dbg !1216
  store i32 0, i32* %8, align 4, !dbg !1217
  br label %11, !dbg !1219

; <label>:11:                                     ; preds = %50, %3
  %12 = load i32, i32* %8, align 4, !dbg !1220
  %13 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !1223
  %14 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %13, i32 0, i32 0, !dbg !1224
  %15 = load i32, i32* %14, align 8, !dbg !1224
  %16 = icmp ult i32 %12, %15, !dbg !1225
  br i1 %16, label %17, label %53, !dbg !1226

; <label>:17:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata %struct.HashTableEntry** %9, metadata !1227, metadata !66), !dbg !1229
  %18 = load i32, i32* %8, align 4, !dbg !1230
  %19 = sext i32 %18 to i64, !dbg !1232
  %20 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !1232
  %21 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %20, i32 0, i32 6, !dbg !1233
  %22 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %21, align 8, !dbg !1233
  %23 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %22, i64 %19, !dbg !1232
  %24 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %23), !dbg !1234
  %25 = bitcast i8* %24 to %struct.HashTableEntry*, !dbg !1235
  store %struct.HashTableEntry* %25, %struct.HashTableEntry** %9, align 8, !dbg !1236
  br label %26, !dbg !1237

; <label>:26:                                     ; preds = %44, %17
  %27 = load %struct.HashTableEntry*, %struct.HashTableEntry** %9, align 8, !dbg !1238
  %28 = icmp ne %struct.HashTableEntry* %27, null, !dbg !1240
  br i1 %28, label %29, label %49, !dbg !1241

; <label>:29:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1243, metadata !66), !dbg !1245
  %30 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %6, align 8, !dbg !1246
  %31 = load %struct.HashTableEntry*, %struct.HashTableEntry** %9, align 8, !dbg !1247
  %32 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %31, i32 0, i32 1, !dbg !1248
  %33 = load i8*, i8** %32, align 8, !dbg !1248
  %34 = load %struct.HashTableEntry*, %struct.HashTableEntry** %9, align 8, !dbg !1249
  %35 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %34, i32 0, i32 2, !dbg !1250
  %36 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %35), !dbg !1251
  %37 = load i8*, i8** %7, align 8, !dbg !1252
  %38 = call i32 %30(i8* %33, i8* %36, i8* %37), !dbg !1253
  store i32 %38, i32* %10, align 4, !dbg !1245
  %39 = load i32, i32* %10, align 4, !dbg !1255
  %40 = icmp ne i32 %39, 0, !dbg !1255
  br i1 %40, label %41, label %43, !dbg !1257

; <label>:41:                                     ; preds = %29
  %42 = load i32, i32* %10, align 4, !dbg !1258
  store i32 %42, i32* %4, align 4, !dbg !1260
  br label %54, !dbg !1260

; <label>:43:                                     ; preds = %29
  br label %44, !dbg !1261

; <label>:44:                                     ; preds = %43
  %45 = load %struct.HashTableEntry*, %struct.HashTableEntry** %9, align 8, !dbg !1262
  %46 = getelementptr inbounds %struct.HashTableEntry, %struct.HashTableEntry* %45, i32 0, i32 0, !dbg !1263
  %47 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %46), !dbg !1264
  %48 = bitcast i8* %47 to %struct.HashTableEntry*, !dbg !1265
  store %struct.HashTableEntry* %48, %struct.HashTableEntry** %9, align 8, !dbg !1266
  br label %26, !dbg !1267, !llvm.loop !1269

; <label>:49:                                     ; preds = %26
  br label %50, !dbg !1271

; <label>:50:                                     ; preds = %49
  %51 = load i32, i32* %8, align 4, !dbg !1272
  %52 = add nsw i32 %51, 1, !dbg !1272
  store i32 %52, i32* %8, align 4, !dbg !1272
  br label %11, !dbg !1274, !llvm.loop !1275

; <label>:53:                                     ; preds = %11
  store i32 0, i32* %4, align 4, !dbg !1277
  br label %54, !dbg !1277

; <label>:54:                                     ; preds = %53, %41
  %55 = load i32, i32* %4, align 4, !dbg !1278
  ret i32 %55, !dbg !1278
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_Read64(%struct.Atomic_uint64*) #4 !dbg !1279 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  %3 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !1284, metadata !66), !dbg !1285
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1286, metadata !66), !dbg !1287
  %4 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !1288
  %5 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %4, i32 0, i32 0, !dbg !1289
  %6 = call i64 asm sideeffect "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i64* %5) #9, !dbg !1290, !srcloc !1291
  store i64 %6, i64* %3, align 8, !dbg !1290
  %7 = load i64, i64* %3, align 8, !dbg !1292
  ret i64 %7, !dbg !1293
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_ReadIfEqualWrite64(%struct.Atomic_uint64*, i64, i64) #4 !dbg !1294 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !1298, metadata !66), !dbg !1299
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1300, metadata !66), !dbg !1301
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1302, metadata !66), !dbg !1303
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1304, metadata !66), !dbg !1305
  %8 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !1306
  %9 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %8, i32 0, i32 0, !dbg !1307
  %10 = load i64, i64* %6, align 8, !dbg !1308
  %11 = load i64, i64* %5, align 8, !dbg !1309
  %12 = call i64 asm sideeffect "lock; cmpxchgq $2, $1", "={ax},=*m,r,0,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64 %11, i64* %9) #9, !dbg !1310, !srcloc !1311
  store i64 %12, i64* %7, align 8, !dbg !1310
  %13 = load i64, i64* %7, align 8, !dbg !1312
  ret i64 %13, !dbg !1313
}

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #6

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #6

; Function Attrs: inlinehint nounwind uwtable
define internal void @Atomic_Write64(%struct.Atomic_uint64*, i64) #4 !dbg !1314 {
  %3 = alloca %struct.Atomic_uint64*, align 8
  %4 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %3, metadata !1317, metadata !66), !dbg !1318
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1319, metadata !66), !dbg !1320
  %5 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %3, align 8, !dbg !1321
  %6 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %5, i32 0, i32 0, !dbg !1322
  %7 = load i64, i64* %4, align 8, !dbg !1323
  call void asm sideeffect "movq $1, $0", "=*m,r,~{dirflag},~{fpsr},~{flags}"(i64* %6, i64 %7) #9, !dbg !1324, !srcloc !1325
  ret void, !dbg !1326
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_ReadWrite64(%struct.Atomic_uint64*, i64) #4 !dbg !1327 {
  %3 = alloca %struct.Atomic_uint64*, align 8
  %4 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %3, metadata !1330, metadata !66), !dbg !1331
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1332, metadata !66), !dbg !1333
  %5 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %3, align 8, !dbg !1334
  %6 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %5, i32 0, i32 0, !dbg !1335
  %7 = load i64, i64* %4, align 8, !dbg !1336
  %8 = call i64 asm sideeffect "xchgq $0, $1", "=r,=*m,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %6, i64 %7, i64* %6) #9, !dbg !1337, !srcloc !1338
  store i64 %8, i64* %4, align 8, !dbg !1337
  %9 = load i64, i64* %4, align 8, !dbg !1339
  ret i64 %9, !dbg !1340
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!37, !38}
!llvm.ident = !{!39}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "hashTable.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line592")
!2 = !{}
!3 = !{!4, !5, !28, !19, !29, !31, !34}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "HashTableEntry", file: !7, line: 74, baseType: !8)
!7 = !DIFile(filename: "hashTable.c", directory: "/home/lichi/Desktop/open-vm-tools/line592")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HashTableEntry", file: !7, line: 70, size: 192, align: 64, elements: !9)
!9 = !{!10, !24, !27}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !8, file: !7, line: 71, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "HashTableLink", file: !7, line: 55, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_Ptr", file: !13, line: 3829, baseType: !14)
!13 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_atomic.h", directory: "/home/lichi/Desktop/open-vm-tools/line592")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint64", file: !13, line: 139, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint64", file: !13, line: 137, size: 64, align: 64, elements: !16)
!16 = !{!17}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !15, file: !13, line: 138, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !20, line: 171, baseType: !21)
!20 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line592")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !22, line: 55, baseType: !23)
!22 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line592")
!23 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "keyStr", scope: !8, file: !7, line: 72, baseType: !25, size: 64, align: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !8, file: !7, line: 73, baseType: !12, size: 64, align: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !22, line: 122, baseType: !23)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !20, line: 173, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !22, line: 51, baseType: !33)
!33 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!37 = !{i32 2, !"Dwarf Version", i32 4}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!40 = distinct !DISubprogram(name: "HashTable_Alloc", scope: !7, file: !7, line: 224, type: !41, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!41 = !DISubroutineType(types: !42)
!42 = !{!43, !31, !51, !56}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "HashTable", file: !45, line: 40, baseType: !46)
!45 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hashTable.h", directory: "/home/lichi/Desktop/open-vm-tools/line592")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HashTable", file: !7, line: 80, size: 320, align: 64, elements: !47)
!47 = !{!48, !49, !50, !52, !54, !55, !60, !62}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "numEntries", scope: !46, file: !7, line: 81, baseType: !31, size: 32, align: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "numBits", scope: !46, file: !7, line: 82, baseType: !31, size: 32, align: 32, offset: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "keyType", scope: !46, file: !7, line: 83, baseType: !51, size: 32, align: 32, offset: 64)
!51 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "atomic", scope: !46, file: !7, line: 84, baseType: !53, size: 8, align: 8, offset: 96)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !20, line: 230, baseType: !36)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "copyKey", scope: !46, file: !7, line: 85, baseType: !53, size: 8, align: 8, offset: 104)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "freeEntryFn", scope: !46, file: !7, line: 86, baseType: !56, size: 64, align: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "HashTableFreeEntryFn", file: !45, line: 43, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !4}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !46, file: !7, line: 87, baseType: !61, size: 64, align: 64, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "numElements", scope: !46, file: !7, line: 89, baseType: !63, size: 64, align: 64, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 216, baseType: !23)
!64 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line592")
!65 = !DILocalVariable(name: "numEntries", arg: 1, scope: !40, file: !7, line: 224, type: !31)
!66 = !DIExpression()
!67 = !DILocation(line: 224, column: 24, scope: !40)
!68 = !DILocalVariable(name: "keyType", arg: 2, scope: !40, file: !7, line: 225, type: !51)
!69 = !DILocation(line: 225, column: 21, scope: !40)
!70 = !DILocalVariable(name: "fn", arg: 3, scope: !40, file: !7, line: 226, type: !56)
!71 = !DILocation(line: 226, column: 38, scope: !40)
!72 = !DILocalVariable(name: "ht", scope: !40, file: !7, line: 228, type: !43)
!73 = !DILocation(line: 228, column: 15, scope: !40)
!74 = !DILocation(line: 231, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !40, file: !7, line: 231, column: 8)
!76 = !DILocation(line: 231, column: 23, scope: !75)
!77 = !DILocation(line: 231, column: 34, scope: !75)
!78 = !DILocation(line: 231, column: 20, scope: !75)
!79 = !DILocation(line: 231, column: 40, scope: !75)
!80 = !DILocation(line: 231, column: 8, scope: !40)
!81 = !DILocation(line: 232, column: 7, scope: !82)
!82 = distinct !DILexicalBlock(scope: !75, file: !7, line: 231, column: 46)
!83 = !DILocation(line: 241, column: 9, scope: !40)
!84 = !DILocation(line: 241, column: 7, scope: !40)
!85 = !DILocation(line: 243, column: 27, scope: !40)
!86 = !DILocation(line: 243, column: 18, scope: !40)
!87 = !DILocation(line: 243, column: 4, scope: !40)
!88 = !DILocation(line: 243, column: 8, scope: !40)
!89 = !DILocation(line: 243, column: 16, scope: !40)
!90 = !DILocation(line: 244, column: 21, scope: !40)
!91 = !DILocation(line: 244, column: 4, scope: !40)
!92 = !DILocation(line: 244, column: 8, scope: !40)
!93 = !DILocation(line: 244, column: 19, scope: !40)
!94 = !DILocation(line: 245, column: 18, scope: !40)
!95 = !DILocation(line: 245, column: 26, scope: !40)
!96 = !DILocation(line: 245, column: 4, scope: !40)
!97 = !DILocation(line: 245, column: 8, scope: !40)
!98 = !DILocation(line: 245, column: 16, scope: !40)
!99 = !DILocation(line: 246, column: 18, scope: !40)
!100 = !DILocation(line: 246, column: 26, scope: !40)
!101 = !DILocation(line: 246, column: 34, scope: !40)
!102 = !DILocation(line: 246, column: 17, scope: !40)
!103 = !DILocation(line: 246, column: 4, scope: !40)
!104 = !DILocation(line: 246, column: 8, scope: !40)
!105 = !DILocation(line: 246, column: 15, scope: !40)
!106 = !DILocation(line: 247, column: 19, scope: !40)
!107 = !DILocation(line: 247, column: 27, scope: !40)
!108 = !DILocation(line: 247, column: 35, scope: !40)
!109 = !DILocation(line: 247, column: 18, scope: !40)
!110 = !DILocation(line: 247, column: 4, scope: !40)
!111 = !DILocation(line: 247, column: 8, scope: !40)
!112 = !DILocation(line: 247, column: 16, scope: !40)
!113 = !DILocation(line: 248, column: 22, scope: !40)
!114 = !DILocation(line: 248, column: 4, scope: !40)
!115 = !DILocation(line: 248, column: 8, scope: !40)
!116 = !DILocation(line: 248, column: 20, scope: !40)
!117 = !DILocation(line: 249, column: 35, scope: !40)
!118 = !DILocation(line: 249, column: 39, scope: !40)
!119 = !DILocation(line: 249, column: 34, scope: !40)
!120 = !DILocation(line: 249, column: 18, scope: !40)
!121 = !DILocation(line: 249, column: 4, scope: !40)
!122 = !DILocation(line: 249, column: 8, scope: !40)
!123 = !DILocation(line: 249, column: 16, scope: !40)
!124 = !DILocation(line: 250, column: 4, scope: !40)
!125 = !DILocation(line: 250, column: 8, scope: !40)
!126 = !DILocation(line: 250, column: 20, scope: !40)
!127 = !DILocation(line: 252, column: 11, scope: !40)
!128 = !DILocation(line: 252, column: 4, scope: !40)
!129 = distinct !DISubprogram(name: "lssb32_0", scope: !130, file: !130, line: 238, type: !131, isLocal: true, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!130 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_asm.h", directory: "/home/lichi/Desktop/open-vm-tools/line592")
!131 = !DISubroutineType(types: !132)
!132 = !{!51, !31}
!133 = !DILocalVariable(name: "value", arg: 1, scope: !129, file: !130, line: 238, type: !31)
!134 = !DILocation(line: 238, column: 17, scope: !129)
!135 = !DILocation(line: 242, column: 29, scope: !136)
!136 = distinct !DILexicalBlock(scope: !137, file: !130, line: 242, column: 11)
!137 = distinct !DILexicalBlock(scope: !138, file: !130, line: 241, column: 38)
!138 = distinct !DILexicalBlock(scope: !129, file: !130, line: 241, column: 8)
!139 = !DILocation(line: 242, column: 35, scope: !136)
!140 = !DILocation(line: 242, column: 28, scope: !136)
!141 = !DILocation(line: 242, column: 11, scope: !136)
!142 = !DILocation(line: 242, column: 11, scope: !137)
!143 = !DILocation(line: 243, column: 10, scope: !144)
!144 = distinct !DILexicalBlock(scope: !136, file: !130, line: 242, column: 46)
!145 = !DILocalVariable(name: "pos", scope: !146, file: !130, line: 245, type: !51)
!146 = distinct !DILexicalBlock(scope: !136, file: !130, line: 244, column: 14)
!147 = !DILocation(line: 245, column: 14, scope: !146)
!148 = !DILocation(line: 246, column: 56, scope: !146)
!149 = !DILocation(line: 246, column: 10, scope: !146)
!150 = !{i32 114570}
!151 = !DILocation(line: 247, column: 17, scope: !146)
!152 = !DILocation(line: 247, column: 10, scope: !146)
!153 = !DILocation(line: 252, column: 1, scope: !129)
!154 = distinct !DISubprogram(name: "HashTable_AllocOnce", scope: !7, file: !7, line: 274, type: !155, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!155 = !DISubroutineType(types: !156)
!156 = !{!43, !157, !31, !51, !56}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!158 = !DILocalVariable(name: "var", arg: 1, scope: !154, file: !7, line: 274, type: !157)
!159 = !DILocation(line: 274, column: 33, scope: !154)
!160 = !DILocalVariable(name: "numEntries", arg: 2, scope: !154, file: !7, line: 275, type: !31)
!161 = !DILocation(line: 275, column: 28, scope: !154)
!162 = !DILocalVariable(name: "keyType", arg: 3, scope: !154, file: !7, line: 276, type: !51)
!163 = !DILocation(line: 276, column: 25, scope: !154)
!164 = !DILocalVariable(name: "fn", arg: 4, scope: !154, file: !7, line: 277, type: !56)
!165 = !DILocation(line: 277, column: 42, scope: !154)
!166 = !DILocalVariable(name: "ht", scope: !154, file: !7, line: 279, type: !43)
!167 = !DILocation(line: 279, column: 15, scope: !154)
!168 = !DILocation(line: 281, column: 29, scope: !169)
!169 = distinct !DILexicalBlock(scope: !154, file: !7, line: 281, column: 8)
!170 = !DILocation(line: 281, column: 14, scope: !169)
!171 = !DILocation(line: 281, column: 12, scope: !169)
!172 = !DILocation(line: 281, column: 35, scope: !169)
!173 = !DILocation(line: 281, column: 8, scope: !154)
!174 = !DILocalVariable(name: "new", scope: !175, file: !7, line: 282, type: !43)
!175 = distinct !DILexicalBlock(scope: !169, file: !7, line: 281, column: 43)
!176 = !DILocation(line: 282, column: 18, scope: !175)
!177 = !DILocation(line: 282, column: 40, scope: !175)
!178 = !DILocation(line: 282, column: 52, scope: !175)
!179 = !DILocation(line: 282, column: 61, scope: !175)
!180 = !DILocation(line: 282, column: 24, scope: !175)
!181 = !DILocation(line: 286, column: 39, scope: !175)
!182 = !DILocation(line: 286, column: 49, scope: !175)
!183 = !DILocation(line: 286, column: 12, scope: !175)
!184 = !DILocation(line: 286, column: 10, scope: !175)
!185 = !DILocation(line: 288, column: 11, scope: !186)
!186 = distinct !DILexicalBlock(scope: !175, file: !7, line: 288, column: 11)
!187 = !DILocation(line: 288, column: 14, scope: !186)
!188 = !DILocation(line: 288, column: 11, scope: !175)
!189 = !DILocation(line: 289, column: 15, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !7, line: 288, column: 22)
!191 = !DILocation(line: 289, column: 13, scope: !190)
!192 = !DILocation(line: 290, column: 7, scope: !190)
!193 = !DILocation(line: 291, column: 31, scope: !194)
!194 = distinct !DILexicalBlock(scope: !186, file: !7, line: 290, column: 14)
!195 = !DILocation(line: 291, column: 10, scope: !194)
!196 = !DILocation(line: 293, column: 4, scope: !175)
!197 = !DILocation(line: 296, column: 11, scope: !154)
!198 = !DILocation(line: 296, column: 4, scope: !154)
!199 = distinct !DISubprogram(name: "Atomic_ReadPtr", scope: !13, file: !13, line: 3829, type: !200, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!200 = !DISubroutineType(types: !201)
!201 = !{!4, !202}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!204 = !DILocalVariable(name: "var", arg: 1, scope: !199, file: !13, line: 3829, type: !202)
!205 = !DILocation(line: 3829, column: 368, scope: !199)
!206 = !DILocation(line: 3829, column: 415, scope: !199)
!207 = !DILocation(line: 3829, column: 401, scope: !199)
!208 = !DILocation(line: 3829, column: 382, scope: !199)
!209 = !DILocation(line: 3829, column: 375, scope: !199)
!210 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWritePtr", scope: !13, file: !13, line: 3829, type: !211, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!211 = !DISubroutineType(types: !212)
!212 = !{!4, !157, !25, !25}
!213 = !DILocalVariable(name: "var", arg: 1, scope: !210, file: !13, line: 3829, type: !157)
!214 = !DILocation(line: 3829, column: 757, scope: !210)
!215 = !DILocalVariable(name: "oldVal", arg: 2, scope: !210, file: !13, line: 3829, type: !25)
!216 = !DILocation(line: 3829, column: 775, scope: !210)
!217 = !DILocalVariable(name: "newVal", arg: 3, scope: !210, file: !13, line: 3829, type: !25)
!218 = !DILocation(line: 3829, column: 796, scope: !210)
!219 = !DILocation(line: 3829, column: 858, scope: !210)
!220 = !DILocation(line: 3829, column: 882, scope: !210)
!221 = !DILocation(line: 3829, column: 871, scope: !210)
!222 = !DILocation(line: 3829, column: 909, scope: !210)
!223 = !DILocation(line: 3829, column: 898, scope: !210)
!224 = !DILocation(line: 3829, column: 832, scope: !210)
!225 = !DILocation(line: 3829, column: 813, scope: !210)
!226 = !DILocation(line: 3829, column: 806, scope: !210)
!227 = distinct !DISubprogram(name: "HashTable_FreeUnsafe", scope: !7, file: !7, line: 400, type: !228, isLocal: false, isDefinition: true, scopeLine: 401, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !43}
!230 = !DILocalVariable(name: "ht", arg: 1, scope: !227, file: !7, line: 400, type: !43)
!231 = !DILocation(line: 400, column: 33, scope: !227)
!232 = !DILocation(line: 402, column: 8, scope: !233)
!233 = distinct !DILexicalBlock(scope: !227, file: !7, line: 402, column: 8)
!234 = !DILocation(line: 402, column: 11, scope: !233)
!235 = !DILocation(line: 402, column: 8, scope: !227)
!236 = !DILocation(line: 403, column: 30, scope: !237)
!237 = distinct !DILexicalBlock(scope: !233, file: !7, line: 402, column: 19)
!238 = !DILocation(line: 403, column: 7, scope: !237)
!239 = !DILocation(line: 405, column: 12, scope: !237)
!240 = !DILocation(line: 405, column: 16, scope: !237)
!241 = !DILocation(line: 405, column: 7, scope: !237)
!242 = !DILocation(line: 406, column: 12, scope: !237)
!243 = !DILocation(line: 406, column: 7, scope: !237)
!244 = !DILocation(line: 407, column: 4, scope: !237)
!245 = !DILocation(line: 408, column: 1, scope: !227)
!246 = distinct !DISubprogram(name: "HashTable_Clear", scope: !7, file: !7, line: 341, type: !228, isLocal: false, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!247 = !DILocalVariable(name: "ht", arg: 1, scope: !246, file: !7, line: 341, type: !43)
!248 = !DILocation(line: 341, column: 28, scope: !246)
!249 = !DILocation(line: 346, column: 27, scope: !246)
!250 = !DILocation(line: 346, column: 4, scope: !246)
!251 = !DILocation(line: 347, column: 1, scope: !246)
!252 = distinct !DISubprogram(name: "HashTableClearInternal", scope: !7, file: !7, line: 317, type: !228, isLocal: true, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!253 = !DILocalVariable(name: "ht", arg: 1, scope: !252, file: !7, line: 317, type: !43)
!254 = !DILocation(line: 317, column: 35, scope: !252)
!255 = !DILocalVariable(name: "i", scope: !252, file: !7, line: 319, type: !51)
!256 = !DILocation(line: 319, column: 8, scope: !252)
!257 = !DILocation(line: 321, column: 4, scope: !252)
!258 = !DILocation(line: 321, column: 8, scope: !252)
!259 = !DILocation(line: 321, column: 20, scope: !252)
!260 = !DILocation(line: 323, column: 11, scope: !261)
!261 = distinct !DILexicalBlock(scope: !252, file: !7, line: 323, column: 4)
!262 = !DILocation(line: 323, column: 9, scope: !261)
!263 = !DILocation(line: 323, column: 16, scope: !264)
!264 = !DILexicalBlockFile(scope: !265, file: !7, discriminator: 1)
!265 = distinct !DILexicalBlock(scope: !261, file: !7, line: 323, column: 4)
!266 = !DILocation(line: 323, column: 20, scope: !264)
!267 = !DILocation(line: 323, column: 24, scope: !264)
!268 = !DILocation(line: 323, column: 18, scope: !264)
!269 = !DILocation(line: 323, column: 4, scope: !264)
!270 = !DILocalVariable(name: "entry", scope: !271, file: !7, line: 324, type: !5)
!271 = distinct !DILexicalBlock(scope: !265, file: !7, line: 323, column: 41)
!272 = !DILocation(line: 324, column: 23, scope: !271)
!273 = !DILocation(line: 326, column: 7, scope: !271)
!274 = !DILocation(line: 326, column: 72, scope: !275)
!275 = !DILexicalBlockFile(scope: !271, file: !7, discriminator: 1)
!276 = !DILocation(line: 326, column: 60, scope: !275)
!277 = !DILocation(line: 326, column: 64, scope: !275)
!278 = !DILocation(line: 326, column: 43, scope: !275)
!279 = !DILocation(line: 326, column: 24, scope: !275)
!280 = !DILocation(line: 326, column: 21, scope: !275)
!281 = !DILocation(line: 326, column: 79, scope: !275)
!282 = !DILocation(line: 326, column: 7, scope: !275)
!283 = !DILocation(line: 327, column: 40, scope: !284)
!284 = distinct !DILexicalBlock(scope: !271, file: !7, line: 326, column: 54)
!285 = !DILocation(line: 327, column: 28, scope: !284)
!286 = !DILocation(line: 327, column: 32, scope: !284)
!287 = !DILocation(line: 327, column: 82, scope: !284)
!288 = !DILocation(line: 327, column: 89, scope: !284)
!289 = !DILocation(line: 327, column: 65, scope: !284)
!290 = !DILocation(line: 327, column: 46, scope: !284)
!291 = !DILocation(line: 327, column: 45, scope: !284)
!292 = !DILocation(line: 327, column: 10, scope: !293)
!293 = !DILexicalBlockFile(scope: !284, file: !7, discriminator: 1)
!294 = !DILocation(line: 328, column: 14, scope: !295)
!295 = distinct !DILexicalBlock(scope: !284, file: !7, line: 328, column: 14)
!296 = !DILocation(line: 328, column: 18, scope: !295)
!297 = !DILocation(line: 328, column: 14, scope: !284)
!298 = !DILocation(line: 329, column: 27, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !7, line: 328, column: 27)
!300 = !DILocation(line: 329, column: 34, scope: !299)
!301 = !DILocation(line: 329, column: 13, scope: !299)
!302 = !DILocation(line: 330, column: 10, scope: !299)
!303 = !DILocation(line: 331, column: 14, scope: !304)
!304 = distinct !DILexicalBlock(scope: !284, file: !7, line: 331, column: 14)
!305 = !DILocation(line: 331, column: 18, scope: !304)
!306 = !DILocation(line: 331, column: 14, scope: !284)
!307 = !DILocation(line: 332, column: 13, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !7, line: 331, column: 31)
!309 = !DILocation(line: 332, column: 17, scope: !308)
!310 = !DILocation(line: 332, column: 45, scope: !308)
!311 = !DILocation(line: 332, column: 52, scope: !308)
!312 = !DILocation(line: 332, column: 29, scope: !308)
!313 = !DILocation(line: 332, column: 13, scope: !314)
!314 = !DILexicalBlockFile(scope: !308, file: !7, discriminator: 1)
!315 = !DILocation(line: 333, column: 10, scope: !308)
!316 = !DILocation(line: 334, column: 15, scope: !284)
!317 = !DILocation(line: 334, column: 10, scope: !284)
!318 = !DILocation(line: 326, column: 7, scope: !319)
!319 = !DILexicalBlockFile(scope: !271, file: !7, discriminator: 2)
!320 = distinct !{!320, !273}
!321 = !DILocation(line: 336, column: 4, scope: !271)
!322 = !DILocation(line: 323, column: 37, scope: !323)
!323 = !DILexicalBlockFile(scope: !265, file: !7, discriminator: 2)
!324 = !DILocation(line: 323, column: 4, scope: !323)
!325 = distinct !{!325, !326}
!326 = !DILocation(line: 323, column: 4, scope: !252)
!327 = !DILocation(line: 337, column: 1, scope: !252)
!328 = distinct !DISubprogram(name: "HashTable_Free", scope: !7, file: !7, line: 368, type: !228, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!329 = !DILocalVariable(name: "ht", arg: 1, scope: !328, file: !7, line: 368, type: !43)
!330 = !DILocation(line: 368, column: 27, scope: !328)
!331 = !DILocation(line: 370, column: 8, scope: !332)
!332 = distinct !DILexicalBlock(scope: !328, file: !7, line: 370, column: 8)
!333 = !DILocation(line: 370, column: 11, scope: !332)
!334 = !DILocation(line: 370, column: 8, scope: !328)
!335 = !DILocation(line: 373, column: 30, scope: !336)
!336 = distinct !DILexicalBlock(scope: !332, file: !7, line: 370, column: 19)
!337 = !DILocation(line: 373, column: 7, scope: !336)
!338 = !DILocation(line: 375, column: 12, scope: !336)
!339 = !DILocation(line: 375, column: 16, scope: !336)
!340 = !DILocation(line: 375, column: 7, scope: !336)
!341 = !DILocation(line: 376, column: 12, scope: !336)
!342 = !DILocation(line: 376, column: 7, scope: !336)
!343 = !DILocation(line: 377, column: 4, scope: !336)
!344 = !DILocation(line: 378, column: 1, scope: !328)
!345 = distinct !DISubprogram(name: "HashTable_Lookup", scope: !7, file: !7, line: 464, type: !346, isLocal: false, isDefinition: true, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!346 = !DISubroutineType(types: !347)
!347 = !{!53, !348, !25, !350}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!351 = !DILocalVariable(name: "ht", arg: 1, scope: !345, file: !7, line: 464, type: !348)
!352 = !DILocation(line: 464, column: 35, scope: !345)
!353 = !DILocalVariable(name: "keyStr", arg: 2, scope: !345, file: !7, line: 465, type: !25)
!354 = !DILocation(line: 465, column: 30, scope: !345)
!355 = !DILocalVariable(name: "clientData", arg: 3, scope: !345, file: !7, line: 466, type: !350)
!356 = !DILocation(line: 466, column: 25, scope: !345)
!357 = !DILocalVariable(name: "hash", scope: !345, file: !7, line: 468, type: !31)
!358 = !DILocation(line: 468, column: 11, scope: !345)
!359 = !DILocation(line: 468, column: 39, scope: !345)
!360 = !DILocation(line: 468, column: 43, scope: !345)
!361 = !DILocation(line: 468, column: 18, scope: !345)
!362 = !DILocalVariable(name: "entry", scope: !345, file: !7, line: 469, type: !5)
!363 = !DILocation(line: 469, column: 20, scope: !345)
!364 = !DILocation(line: 469, column: 44, scope: !345)
!365 = !DILocation(line: 469, column: 48, scope: !345)
!366 = !DILocation(line: 469, column: 56, scope: !345)
!367 = !DILocation(line: 469, column: 28, scope: !345)
!368 = !DILocation(line: 471, column: 8, scope: !369)
!369 = distinct !DILexicalBlock(scope: !345, file: !7, line: 471, column: 8)
!370 = !DILocation(line: 471, column: 14, scope: !369)
!371 = !DILocation(line: 471, column: 8, scope: !345)
!372 = !DILocation(line: 472, column: 7, scope: !373)
!373 = distinct !DILexicalBlock(scope: !369, file: !7, line: 471, column: 22)
!374 = !DILocation(line: 475, column: 8, scope: !375)
!375 = distinct !DILexicalBlock(scope: !345, file: !7, line: 475, column: 8)
!376 = !DILocation(line: 475, column: 8, scope: !345)
!377 = !DILocation(line: 476, column: 37, scope: !378)
!378 = distinct !DILexicalBlock(scope: !375, file: !7, line: 475, column: 20)
!379 = !DILocation(line: 476, column: 44, scope: !378)
!380 = !DILocation(line: 476, column: 21, scope: !378)
!381 = !DILocation(line: 476, column: 8, scope: !378)
!382 = !DILocation(line: 476, column: 19, scope: !378)
!383 = !DILocation(line: 477, column: 4, scope: !378)
!384 = !DILocation(line: 479, column: 4, scope: !345)
!385 = !DILocation(line: 480, column: 1, scope: !345)
!386 = distinct !DISubprogram(name: "HashTableComputeHash", scope: !7, file: !7, line: 119, type: !387, isLocal: true, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!387 = !DISubroutineType(types: !388)
!388 = !{!31, !348, !25}
!389 = !DILocalVariable(name: "ht", arg: 1, scope: !386, file: !7, line: 119, type: !348)
!390 = !DILocation(line: 119, column: 39, scope: !386)
!391 = !DILocalVariable(name: "s", arg: 2, scope: !386, file: !7, line: 120, type: !25)
!392 = !DILocation(line: 120, column: 34, scope: !386)
!393 = !DILocalVariable(name: "h", scope: !386, file: !7, line: 122, type: !31)
!394 = !DILocation(line: 122, column: 11, scope: !386)
!395 = !DILocation(line: 124, column: 12, scope: !386)
!396 = !DILocation(line: 124, column: 16, scope: !386)
!397 = !DILocation(line: 124, column: 4, scope: !386)
!398 = !DILocalVariable(name: "c", scope: !399, file: !7, line: 126, type: !51)
!399 = distinct !DILexicalBlock(scope: !400, file: !7, line: 125, column: 12)
!400 = distinct !DILexicalBlock(scope: !386, file: !7, line: 124, column: 25)
!401 = !DILocation(line: 126, column: 14, scope: !399)
!402 = !DILocalVariable(name: "keyPtr", scope: !399, file: !7, line: 127, type: !29)
!403 = !DILocation(line: 127, column: 25, scope: !399)
!404 = !DILocation(line: 127, column: 52, scope: !399)
!405 = !DILocation(line: 129, column: 10, scope: !399)
!406 = !DILocation(line: 129, column: 29, scope: !407)
!407 = !DILexicalBlockFile(scope: !399, file: !7, discriminator: 1)
!408 = !DILocation(line: 129, column: 22, scope: !407)
!409 = !DILocation(line: 129, column: 20, scope: !407)
!410 = !DILocation(line: 129, column: 10, scope: !407)
!411 = !DILocation(line: 130, column: 18, scope: !412)
!412 = distinct !DILexicalBlock(scope: !399, file: !7, line: 129, column: 34)
!413 = !DILocation(line: 130, column: 15, scope: !412)
!414 = !DILocation(line: 131, column: 17, scope: !412)
!415 = !DILocation(line: 131, column: 19, scope: !412)
!416 = !DILocation(line: 131, column: 26, scope: !412)
!417 = !DILocation(line: 131, column: 28, scope: !412)
!418 = !DILocation(line: 131, column: 24, scope: !412)
!419 = !DILocation(line: 131, column: 15, scope: !412)
!420 = !DILocation(line: 129, column: 10, scope: !421)
!421 = !DILexicalBlockFile(scope: !399, file: !7, discriminator: 2)
!422 = distinct !{!422, !405}
!423 = !DILocation(line: 134, column: 7, scope: !400)
!424 = !DILocalVariable(name: "c", scope: !425, file: !7, line: 136, type: !51)
!425 = distinct !DILexicalBlock(scope: !400, file: !7, line: 135, column: 12)
!426 = !DILocation(line: 136, column: 14, scope: !425)
!427 = !DILocalVariable(name: "keyPtr", scope: !425, file: !7, line: 137, type: !29)
!428 = !DILocation(line: 137, column: 25, scope: !425)
!429 = !DILocation(line: 137, column: 52, scope: !425)
!430 = !DILocation(line: 139, column: 10, scope: !425)
!431 = !DILocation(line: 139, column: 37, scope: !432)
!432 = !DILexicalBlockFile(scope: !425, file: !7, discriminator: 1)
!433 = !DILocation(line: 139, column: 30, scope: !432)
!434 = !DILocation(line: 139, column: 22, scope: !432)
!435 = !DILocation(line: 139, column: 20, scope: !432)
!436 = !DILocation(line: 139, column: 10, scope: !432)
!437 = !DILocation(line: 140, column: 18, scope: !438)
!438 = distinct !DILexicalBlock(scope: !425, file: !7, line: 139, column: 43)
!439 = !DILocation(line: 140, column: 15, scope: !438)
!440 = !DILocation(line: 141, column: 17, scope: !438)
!441 = !DILocation(line: 141, column: 19, scope: !438)
!442 = !DILocation(line: 141, column: 26, scope: !438)
!443 = !DILocation(line: 141, column: 28, scope: !438)
!444 = !DILocation(line: 141, column: 24, scope: !438)
!445 = !DILocation(line: 141, column: 15, scope: !438)
!446 = !DILocation(line: 139, column: 10, scope: !447)
!447 = !DILexicalBlockFile(scope: !425, file: !7, discriminator: 2)
!448 = distinct !{!448, !430}
!449 = !DILocation(line: 144, column: 7, scope: !400)
!450 = !DILocation(line: 146, column: 7, scope: !400)
!451 = distinct !{!451, !450}
!452 = !DILocation(line: 146, column: 94, scope: !453)
!453 = !DILexicalBlockFile(scope: !454, file: !7, discriminator: 1)
!454 = distinct !DILexicalBlock(scope: !400, file: !7, line: 146, column: 10)
!455 = !DILocation(line: 151, column: 35, scope: !456)
!456 = distinct !DILexicalBlock(scope: !457, file: !7, line: 150, column: 14)
!457 = distinct !DILexicalBlock(scope: !400, file: !7, line: 148, column: 11)
!458 = !DILocation(line: 151, column: 23, scope: !456)
!459 = !DILocation(line: 151, column: 14, scope: !456)
!460 = !DILocation(line: 151, column: 70, scope: !456)
!461 = !DILocation(line: 151, column: 58, scope: !456)
!462 = !DILocation(line: 151, column: 72, scope: !456)
!463 = !DILocation(line: 151, column: 39, scope: !456)
!464 = !DILocation(line: 151, column: 37, scope: !456)
!465 = !DILocation(line: 151, column: 12, scope: !456)
!466 = !DILocation(line: 153, column: 9, scope: !400)
!467 = !DILocation(line: 154, column: 7, scope: !400)
!468 = !DILocation(line: 156, column: 7, scope: !400)
!469 = !DILocalVariable(name: "numBits", scope: !470, file: !7, line: 160, type: !51)
!470 = distinct !DILexicalBlock(scope: !386, file: !7, line: 159, column: 4)
!471 = !DILocation(line: 160, column: 11, scope: !470)
!472 = !DILocation(line: 160, column: 21, scope: !470)
!473 = !DILocation(line: 160, column: 25, scope: !470)
!474 = !DILocalVariable(name: "mask", scope: !470, file: !7, line: 161, type: !31)
!475 = !DILocation(line: 161, column: 14, scope: !470)
!476 = !DILocation(line: 161, column: 29, scope: !470)
!477 = !DILocation(line: 161, column: 25, scope: !470)
!478 = !DILocation(line: 161, column: 39, scope: !470)
!479 = !DILocation(line: 163, column: 7, scope: !470)
!480 = !DILocation(line: 163, column: 14, scope: !481)
!481 = !DILexicalBlockFile(scope: !482, file: !7, discriminator: 1)
!482 = distinct !DILexicalBlock(scope: !483, file: !7, line: 163, column: 7)
!483 = distinct !DILexicalBlock(scope: !470, file: !7, line: 163, column: 7)
!484 = !DILocation(line: 163, column: 18, scope: !481)
!485 = !DILocation(line: 163, column: 16, scope: !481)
!486 = !DILocation(line: 163, column: 7, scope: !481)
!487 = !DILocation(line: 164, column: 7, scope: !488)
!488 = distinct !DILexicalBlock(scope: !482, file: !7, line: 163, column: 57)
!489 = !DILocation(line: 163, column: 29, scope: !490)
!490 = !DILexicalBlockFile(scope: !482, file: !7, discriminator: 2)
!491 = !DILocation(line: 163, column: 33, scope: !490)
!492 = !DILocation(line: 163, column: 31, scope: !490)
!493 = !DILocation(line: 163, column: 42, scope: !490)
!494 = !DILocation(line: 163, column: 47, scope: !490)
!495 = !DILocation(line: 163, column: 44, scope: !490)
!496 = !DILocation(line: 163, column: 39, scope: !490)
!497 = !DILocation(line: 163, column: 26, scope: !490)
!498 = !DILocation(line: 163, column: 7, scope: !490)
!499 = distinct !{!499, !479}
!500 = !DILocation(line: 169, column: 11, scope: !386)
!501 = !DILocation(line: 169, column: 4, scope: !386)
!502 = distinct !DISubprogram(name: "HashTableLookup", scope: !7, file: !7, line: 428, type: !503, isLocal: true, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!503 = !DISubroutineType(types: !504)
!504 = !{!5, !348, !25, !31}
!505 = !DILocalVariable(name: "ht", arg: 1, scope: !502, file: !7, line: 428, type: !348)
!506 = !DILocation(line: 428, column: 34, scope: !502)
!507 = !DILocalVariable(name: "keyStr", arg: 2, scope: !502, file: !7, line: 429, type: !25)
!508 = !DILocation(line: 429, column: 29, scope: !502)
!509 = !DILocalVariable(name: "hash", arg: 3, scope: !502, file: !7, line: 430, type: !31)
!510 = !DILocation(line: 430, column: 24, scope: !502)
!511 = !DILocalVariable(name: "entry", scope: !502, file: !7, line: 432, type: !5)
!512 = !DILocation(line: 432, column: 20, scope: !502)
!513 = !DILocation(line: 434, column: 66, scope: !514)
!514 = distinct !DILexicalBlock(scope: !502, file: !7, line: 434, column: 4)
!515 = !DILocation(line: 434, column: 54, scope: !514)
!516 = !DILocation(line: 434, column: 58, scope: !514)
!517 = !DILocation(line: 434, column: 37, scope: !514)
!518 = !DILocation(line: 434, column: 18, scope: !514)
!519 = !DILocation(line: 434, column: 15, scope: !514)
!520 = !DILocation(line: 434, column: 9, scope: !514)
!521 = !DILocation(line: 435, column: 9, scope: !522)
!522 = distinct !DILexicalBlock(scope: !514, file: !7, line: 434, column: 4)
!523 = !DILocation(line: 435, column: 15, scope: !522)
!524 = !DILocation(line: 434, column: 4, scope: !525)
!525 = !DILexicalBlockFile(scope: !514, file: !7, discriminator: 1)
!526 = !DILocation(line: 437, column: 30, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !7, line: 437, column: 11)
!528 = distinct !DILexicalBlock(scope: !522, file: !7, line: 436, column: 70)
!529 = !DILocation(line: 437, column: 34, scope: !527)
!530 = !DILocation(line: 437, column: 41, scope: !527)
!531 = !DILocation(line: 437, column: 49, scope: !527)
!532 = !DILocation(line: 437, column: 11, scope: !527)
!533 = !DILocation(line: 437, column: 11, scope: !528)
!534 = !DILocation(line: 438, column: 17, scope: !535)
!535 = distinct !DILexicalBlock(scope: !527, file: !7, line: 437, column: 58)
!536 = !DILocation(line: 438, column: 10, scope: !535)
!537 = !DILocation(line: 440, column: 4, scope: !528)
!538 = !DILocation(line: 436, column: 54, scope: !522)
!539 = !DILocation(line: 436, column: 61, scope: !522)
!540 = !DILocation(line: 436, column: 37, scope: !522)
!541 = !DILocation(line: 436, column: 18, scope: !522)
!542 = !DILocation(line: 436, column: 15, scope: !522)
!543 = !DILocation(line: 434, column: 4, scope: !544)
!544 = !DILexicalBlockFile(scope: !522, file: !7, discriminator: 2)
!545 = distinct !{!545, !546}
!546 = !DILocation(line: 434, column: 4, scope: !502)
!547 = !DILocation(line: 442, column: 4, scope: !502)
!548 = !DILocation(line: 443, column: 1, scope: !502)
!549 = distinct !DISubprogram(name: "HashTable_Delete", scope: !7, file: !7, line: 501, type: !550, isLocal: false, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!550 = !DISubroutineType(types: !551)
!551 = !{!53, !43, !25}
!552 = !DILocalVariable(name: "ht", arg: 1, scope: !549, file: !7, line: 501, type: !43)
!553 = !DILocation(line: 501, column: 29, scope: !549)
!554 = !DILocalVariable(name: "keyStr", arg: 2, scope: !549, file: !7, line: 502, type: !25)
!555 = !DILocation(line: 502, column: 30, scope: !549)
!556 = !DILocation(line: 504, column: 37, scope: !549)
!557 = !DILocation(line: 504, column: 41, scope: !549)
!558 = !DILocation(line: 504, column: 11, scope: !549)
!559 = !DILocation(line: 504, column: 4, scope: !549)
!560 = distinct !DISubprogram(name: "HashTable_LookupAndDelete", scope: !7, file: !7, line: 530, type: !561, isLocal: false, isDefinition: true, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!561 = !DISubroutineType(types: !562)
!562 = !{!53, !43, !25, !350}
!563 = !DILocalVariable(name: "ht", arg: 1, scope: !560, file: !7, line: 530, type: !43)
!564 = !DILocation(line: 530, column: 38, scope: !560)
!565 = !DILocalVariable(name: "keyStr", arg: 2, scope: !560, file: !7, line: 531, type: !25)
!566 = !DILocation(line: 531, column: 39, scope: !560)
!567 = !DILocalVariable(name: "clientData", arg: 3, scope: !560, file: !7, line: 532, type: !350)
!568 = !DILocation(line: 532, column: 34, scope: !560)
!569 = !DILocalVariable(name: "hash", scope: !560, file: !7, line: 534, type: !31)
!570 = !DILocation(line: 534, column: 11, scope: !560)
!571 = !DILocation(line: 534, column: 39, scope: !560)
!572 = !DILocation(line: 534, column: 43, scope: !560)
!573 = !DILocation(line: 534, column: 18, scope: !560)
!574 = !DILocalVariable(name: "linkp", scope: !560, file: !7, line: 535, type: !61)
!575 = !DILocation(line: 535, column: 19, scope: !560)
!576 = !DILocalVariable(name: "entry", scope: !560, file: !7, line: 536, type: !5)
!577 = !DILocation(line: 536, column: 20, scope: !560)
!578 = !DILocation(line: 540, column: 30, scope: !579)
!579 = distinct !DILexicalBlock(scope: !560, file: !7, line: 540, column: 4)
!580 = !DILocation(line: 540, column: 18, scope: !579)
!581 = !DILocation(line: 540, column: 22, scope: !579)
!582 = !DILocation(line: 540, column: 15, scope: !579)
!583 = !DILocation(line: 540, column: 9, scope: !579)
!584 = !DILocation(line: 541, column: 56, scope: !585)
!585 = distinct !DILexicalBlock(scope: !579, file: !7, line: 540, column: 4)
!586 = !DILocation(line: 541, column: 38, scope: !585)
!587 = !DILocation(line: 541, column: 19, scope: !585)
!588 = !DILocation(line: 541, column: 16, scope: !585)
!589 = !DILocation(line: 541, column: 66, scope: !585)
!590 = !DILocation(line: 540, column: 4, scope: !591)
!591 = !DILexicalBlockFile(scope: !579, file: !7, discriminator: 1)
!592 = !DILocation(line: 543, column: 30, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !7, line: 543, column: 11)
!594 = distinct !DILexicalBlock(scope: !585, file: !7, line: 542, column: 31)
!595 = !DILocation(line: 543, column: 34, scope: !593)
!596 = !DILocation(line: 543, column: 41, scope: !593)
!597 = !DILocation(line: 543, column: 49, scope: !593)
!598 = !DILocation(line: 543, column: 11, scope: !593)
!599 = !DILocation(line: 543, column: 11, scope: !594)
!600 = !DILocation(line: 544, column: 29, scope: !601)
!601 = distinct !DILexicalBlock(scope: !593, file: !7, line: 543, column: 58)
!602 = !DILocation(line: 544, column: 74, scope: !601)
!603 = !DILocation(line: 544, column: 81, scope: !601)
!604 = !DILocation(line: 544, column: 57, scope: !601)
!605 = !DILocation(line: 544, column: 38, scope: !601)
!606 = !DILocation(line: 544, column: 37, scope: !601)
!607 = !DILocation(line: 544, column: 10, scope: !608)
!608 = !DILexicalBlockFile(scope: !601, file: !7, discriminator: 1)
!609 = !DILocation(line: 545, column: 10, scope: !601)
!610 = !DILocation(line: 545, column: 14, scope: !601)
!611 = !DILocation(line: 545, column: 25, scope: !601)
!612 = !DILocation(line: 546, column: 14, scope: !613)
!613 = distinct !DILexicalBlock(scope: !601, file: !7, line: 546, column: 14)
!614 = !DILocation(line: 546, column: 18, scope: !613)
!615 = !DILocation(line: 546, column: 14, scope: !601)
!616 = !DILocation(line: 547, column: 27, scope: !617)
!617 = distinct !DILexicalBlock(scope: !613, file: !7, line: 546, column: 27)
!618 = !DILocation(line: 547, column: 34, scope: !617)
!619 = !DILocation(line: 547, column: 13, scope: !617)
!620 = !DILocation(line: 548, column: 10, scope: !617)
!621 = !DILocation(line: 549, column: 14, scope: !622)
!622 = distinct !DILexicalBlock(scope: !601, file: !7, line: 549, column: 14)
!623 = !DILocation(line: 549, column: 25, scope: !622)
!624 = !DILocation(line: 549, column: 14, scope: !601)
!625 = !DILocation(line: 550, column: 43, scope: !626)
!626 = distinct !DILexicalBlock(scope: !622, file: !7, line: 549, column: 33)
!627 = !DILocation(line: 550, column: 50, scope: !626)
!628 = !DILocation(line: 550, column: 27, scope: !626)
!629 = !DILocation(line: 550, column: 14, scope: !626)
!630 = !DILocation(line: 550, column: 25, scope: !626)
!631 = !DILocation(line: 551, column: 10, scope: !626)
!632 = !DILocation(line: 551, column: 21, scope: !633)
!633 = !DILexicalBlockFile(scope: !634, file: !7, discriminator: 1)
!634 = distinct !DILexicalBlock(scope: !622, file: !7, line: 551, column: 21)
!635 = !DILocation(line: 551, column: 25, scope: !633)
!636 = !DILocation(line: 552, column: 13, scope: !637)
!637 = distinct !DILexicalBlock(scope: !634, file: !7, line: 551, column: 38)
!638 = !DILocation(line: 552, column: 17, scope: !637)
!639 = !DILocation(line: 552, column: 45, scope: !637)
!640 = !DILocation(line: 552, column: 52, scope: !637)
!641 = !DILocation(line: 552, column: 29, scope: !637)
!642 = !DILocation(line: 552, column: 13, scope: !643)
!643 = !DILexicalBlockFile(scope: !637, file: !7, discriminator: 1)
!644 = !DILocation(line: 553, column: 10, scope: !637)
!645 = !DILocation(line: 554, column: 15, scope: !601)
!646 = !DILocation(line: 554, column: 10, scope: !601)
!647 = !DILocation(line: 556, column: 10, scope: !601)
!648 = !DILocation(line: 558, column: 4, scope: !594)
!649 = !DILocation(line: 542, column: 18, scope: !585)
!650 = !DILocation(line: 542, column: 25, scope: !585)
!651 = !DILocation(line: 542, column: 15, scope: !585)
!652 = !DILocation(line: 540, column: 4, scope: !653)
!653 = !DILexicalBlockFile(scope: !585, file: !7, discriminator: 2)
!654 = distinct !{!654, !655}
!655 = !DILocation(line: 540, column: 4, scope: !560)
!656 = !DILocation(line: 560, column: 4, scope: !560)
!657 = !DILocation(line: 561, column: 1, scope: !560)
!658 = distinct !DISubprogram(name: "HashTableEqualKeys", scope: !7, file: !7, line: 190, type: !659, isLocal: true, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!659 = !DISubroutineType(types: !660)
!660 = !{!53, !348, !25, !25}
!661 = !DILocalVariable(name: "ht", arg: 1, scope: !658, file: !7, line: 190, type: !348)
!662 = !DILocation(line: 190, column: 37, scope: !658)
!663 = !DILocalVariable(name: "key1", arg: 2, scope: !658, file: !7, line: 191, type: !25)
!664 = !DILocation(line: 191, column: 32, scope: !658)
!665 = !DILocalVariable(name: "key2", arg: 3, scope: !658, file: !7, line: 192, type: !25)
!666 = !DILocation(line: 192, column: 32, scope: !658)
!667 = !DILocation(line: 194, column: 12, scope: !658)
!668 = !DILocation(line: 194, column: 16, scope: !658)
!669 = !DILocation(line: 194, column: 4, scope: !658)
!670 = !DILocation(line: 196, column: 36, scope: !671)
!671 = distinct !DILexicalBlock(scope: !658, file: !7, line: 194, column: 25)
!672 = !DILocation(line: 196, column: 57, scope: !671)
!673 = !DILocation(line: 196, column: 14, scope: !671)
!674 = !DILocation(line: 196, column: 63, scope: !671)
!675 = !DILocation(line: 196, column: 7, scope: !671)
!676 = !DILocation(line: 199, column: 40, scope: !671)
!677 = !DILocation(line: 199, column: 61, scope: !671)
!678 = !DILocation(line: 199, column: 14, scope: !671)
!679 = !DILocation(line: 199, column: 67, scope: !671)
!680 = !DILocation(line: 199, column: 7, scope: !671)
!681 = !DILocation(line: 202, column: 14, scope: !671)
!682 = !DILocation(line: 202, column: 22, scope: !671)
!683 = !DILocation(line: 202, column: 19, scope: !671)
!684 = !DILocation(line: 202, column: 7, scope: !671)
!685 = !DILocation(line: 204, column: 1, scope: !658)
!686 = distinct !DISubprogram(name: "Atomic_WritePtr", scope: !13, file: !13, line: 3829, type: !687, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !157, !25}
!689 = !DILocalVariable(name: "var", arg: 1, scope: !686, file: !13, line: 3829, type: !157)
!690 = !DILocation(line: 3829, column: 470, scope: !686)
!691 = !DILocalVariable(name: "val", arg: 2, scope: !686, file: !13, line: 3829, type: !25)
!692 = !DILocation(line: 3829, column: 488, scope: !686)
!693 = !DILocation(line: 3829, column: 510, scope: !686)
!694 = !DILocation(line: 3829, column: 534, scope: !686)
!695 = !DILocation(line: 3829, column: 523, scope: !686)
!696 = !DILocation(line: 3829, column: 495, scope: !686)
!697 = !DILocation(line: 3829, column: 540, scope: !686)
!698 = distinct !DISubprogram(name: "HashTable_Insert", scope: !7, file: !7, line: 585, type: !699, isLocal: false, isDefinition: true, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!699 = !DISubroutineType(types: !700)
!700 = !{!53, !43, !25, !4}
!701 = !DILocalVariable(name: "ht", arg: 1, scope: !698, file: !7, line: 585, type: !43)
!702 = !DILocation(line: 585, column: 29, scope: !698)
!703 = !DILocalVariable(name: "keyStr", arg: 2, scope: !698, file: !7, line: 586, type: !25)
!704 = !DILocation(line: 586, column: 30, scope: !698)
!705 = !DILocalVariable(name: "clientData", arg: 3, scope: !698, file: !7, line: 587, type: !4)
!706 = !DILocation(line: 587, column: 24, scope: !698)
!707 = !DILocation(line: 589, column: 35, scope: !698)
!708 = !DILocation(line: 589, column: 39, scope: !698)
!709 = !DILocation(line: 589, column: 47, scope: !698)
!710 = !DILocation(line: 589, column: 11, scope: !698)
!711 = !DILocation(line: 589, column: 59, scope: !698)
!712 = !DILocation(line: 589, column: 4, scope: !698)
!713 = distinct !DISubprogram(name: "HashTableLookupOrInsert", scope: !7, file: !7, line: 750, type: !714, isLocal: false, isDefinition: true, scopeLine: 753, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!714 = !DISubroutineType(types: !715)
!715 = !{!5, !43, !25, !4}
!716 = !DILocalVariable(name: "ht", arg: 1, scope: !713, file: !7, line: 750, type: !43)
!717 = !DILocation(line: 750, column: 36, scope: !713)
!718 = !DILocalVariable(name: "keyStr", arg: 2, scope: !713, file: !7, line: 751, type: !25)
!719 = !DILocation(line: 751, column: 37, scope: !713)
!720 = !DILocalVariable(name: "clientData", arg: 3, scope: !713, file: !7, line: 752, type: !4)
!721 = !DILocation(line: 752, column: 31, scope: !713)
!722 = !DILocalVariable(name: "hash", scope: !713, file: !7, line: 754, type: !31)
!723 = !DILocation(line: 754, column: 11, scope: !713)
!724 = !DILocation(line: 754, column: 39, scope: !713)
!725 = !DILocation(line: 754, column: 43, scope: !713)
!726 = !DILocation(line: 754, column: 18, scope: !713)
!727 = !DILocalVariable(name: "entry", scope: !713, file: !7, line: 755, type: !5)
!728 = !DILocation(line: 755, column: 20, scope: !713)
!729 = !DILocalVariable(name: "oldEntry", scope: !713, file: !7, line: 756, type: !5)
!730 = !DILocation(line: 756, column: 20, scope: !713)
!731 = !DILocalVariable(name: "head", scope: !713, file: !7, line: 757, type: !5)
!732 = !DILocation(line: 757, column: 20, scope: !713)
!733 = !DILocation(line: 757, column: 4, scope: !713)
!734 = !DILocation(line: 760, column: 60, scope: !713)
!735 = !DILocation(line: 760, column: 48, scope: !713)
!736 = !DILocation(line: 760, column: 52, scope: !713)
!737 = !DILocation(line: 760, column: 31, scope: !713)
!738 = !DILocation(line: 760, column: 12, scope: !713)
!739 = !DILocation(line: 760, column: 9, scope: !713)
!740 = !DILocation(line: 762, column: 31, scope: !713)
!741 = !DILocation(line: 762, column: 35, scope: !713)
!742 = !DILocation(line: 762, column: 43, scope: !713)
!743 = !DILocation(line: 762, column: 15, scope: !713)
!744 = !DILocation(line: 762, column: 13, scope: !713)
!745 = !DILocation(line: 763, column: 8, scope: !746)
!746 = distinct !DILexicalBlock(scope: !713, file: !7, line: 763, column: 8)
!747 = !DILocation(line: 763, column: 17, scope: !746)
!748 = !DILocation(line: 763, column: 8, scope: !713)
!749 = !DILocation(line: 764, column: 11, scope: !750)
!750 = distinct !DILexicalBlock(scope: !751, file: !7, line: 764, column: 11)
!751 = distinct !DILexicalBlock(scope: !746, file: !7, line: 763, column: 25)
!752 = !DILocation(line: 764, column: 17, scope: !750)
!753 = !DILocation(line: 764, column: 11, scope: !751)
!754 = !DILocation(line: 765, column: 14, scope: !755)
!755 = distinct !DILexicalBlock(scope: !756, file: !7, line: 765, column: 14)
!756 = distinct !DILexicalBlock(scope: !750, file: !7, line: 764, column: 25)
!757 = !DILocation(line: 765, column: 18, scope: !755)
!758 = !DILocation(line: 765, column: 14, scope: !756)
!759 = !DILocation(line: 766, column: 27, scope: !760)
!760 = distinct !DILexicalBlock(scope: !755, file: !7, line: 765, column: 27)
!761 = !DILocation(line: 766, column: 34, scope: !760)
!762 = !DILocation(line: 766, column: 13, scope: !760)
!763 = !DILocation(line: 767, column: 10, scope: !760)
!764 = !DILocation(line: 768, column: 15, scope: !756)
!765 = !DILocation(line: 768, column: 10, scope: !756)
!766 = !DILocation(line: 769, column: 7, scope: !756)
!767 = !DILocation(line: 771, column: 14, scope: !751)
!768 = !DILocation(line: 771, column: 7, scope: !751)
!769 = !DILocation(line: 774, column: 8, scope: !770)
!770 = distinct !DILexicalBlock(scope: !713, file: !7, line: 774, column: 8)
!771 = !DILocation(line: 774, column: 14, scope: !770)
!772 = !DILocation(line: 774, column: 8, scope: !713)
!773 = !DILocation(line: 775, column: 15, scope: !774)
!774 = distinct !DILexicalBlock(scope: !770, file: !7, line: 774, column: 22)
!775 = !DILocation(line: 775, column: 13, scope: !774)
!776 = !DILocation(line: 776, column: 11, scope: !777)
!777 = distinct !DILexicalBlock(scope: !774, file: !7, line: 776, column: 11)
!778 = !DILocation(line: 776, column: 15, scope: !777)
!779 = !DILocation(line: 776, column: 11, scope: !774)
!780 = !DILocation(line: 777, column: 43, scope: !781)
!781 = distinct !DILexicalBlock(scope: !777, file: !7, line: 776, column: 24)
!782 = !DILocation(line: 777, column: 26, scope: !781)
!783 = !DILocation(line: 777, column: 10, scope: !781)
!784 = !DILocation(line: 777, column: 17, scope: !781)
!785 = !DILocation(line: 777, column: 24, scope: !781)
!786 = !DILocation(line: 778, column: 7, scope: !781)
!787 = !DILocation(line: 779, column: 26, scope: !788)
!788 = distinct !DILexicalBlock(scope: !777, file: !7, line: 778, column: 14)
!789 = !DILocation(line: 779, column: 10, scope: !788)
!790 = !DILocation(line: 779, column: 17, scope: !788)
!791 = !DILocation(line: 779, column: 24, scope: !788)
!792 = !DILocation(line: 781, column: 24, scope: !774)
!793 = !DILocation(line: 781, column: 31, scope: !774)
!794 = !DILocation(line: 781, column: 43, scope: !774)
!795 = !DILocation(line: 781, column: 7, scope: !774)
!796 = !DILocation(line: 782, column: 4, scope: !774)
!797 = !DILocation(line: 783, column: 22, scope: !713)
!798 = !DILocation(line: 783, column: 29, scope: !713)
!799 = !DILocation(line: 783, column: 36, scope: !713)
!800 = !DILocation(line: 783, column: 4, scope: !713)
!801 = !DILocation(line: 784, column: 8, scope: !802)
!802 = distinct !DILexicalBlock(scope: !713, file: !7, line: 784, column: 8)
!803 = !DILocation(line: 784, column: 12, scope: !802)
!804 = !DILocation(line: 784, column: 8, scope: !713)
!805 = !DILocation(line: 785, column: 54, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !7, line: 785, column: 11)
!807 = distinct !DILexicalBlock(scope: !802, file: !7, line: 784, column: 20)
!808 = !DILocation(line: 785, column: 42, scope: !806)
!809 = !DILocation(line: 785, column: 46, scope: !806)
!810 = !DILocation(line: 785, column: 62, scope: !806)
!811 = !DILocation(line: 785, column: 68, scope: !806)
!812 = !DILocation(line: 785, column: 13, scope: !806)
!813 = !DILocation(line: 785, column: 79, scope: !806)
!814 = !DILocation(line: 785, column: 78, scope: !806)
!815 = !DILocation(line: 785, column: 75, scope: !806)
!816 = !DILocation(line: 785, column: 11, scope: !807)
!817 = !DILocation(line: 786, column: 10, scope: !818)
!818 = distinct !DILexicalBlock(scope: !806, file: !7, line: 785, column: 87)
!819 = !DILocation(line: 788, column: 4, scope: !807)
!820 = !DILocation(line: 789, column: 37, scope: !821)
!821 = distinct !DILexicalBlock(scope: !802, file: !7, line: 788, column: 11)
!822 = !DILocation(line: 789, column: 25, scope: !821)
!823 = !DILocation(line: 789, column: 29, scope: !821)
!824 = !DILocation(line: 789, column: 45, scope: !821)
!825 = !DILocation(line: 789, column: 7, scope: !821)
!826 = !DILocation(line: 792, column: 4, scope: !713)
!827 = !DILocation(line: 792, column: 8, scope: !713)
!828 = !DILocation(line: 792, column: 19, scope: !713)
!829 = !DILocation(line: 794, column: 4, scope: !713)
!830 = !DILocation(line: 795, column: 1, scope: !713)
!831 = distinct !DISubprogram(name: "HashTable_LookupOrInsert", scope: !7, file: !7, line: 615, type: !832, isLocal: false, isDefinition: true, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!832 = !DISubroutineType(types: !833)
!833 = !{!4, !43, !25, !4}
!834 = !DILocalVariable(name: "ht", arg: 1, scope: !831, file: !7, line: 615, type: !43)
!835 = !DILocation(line: 615, column: 37, scope: !831)
!836 = !DILocalVariable(name: "keyStr", arg: 2, scope: !831, file: !7, line: 616, type: !25)
!837 = !DILocation(line: 616, column: 38, scope: !831)
!838 = !DILocalVariable(name: "clientData", arg: 3, scope: !831, file: !7, line: 617, type: !4)
!839 = !DILocation(line: 617, column: 32, scope: !831)
!840 = !DILocalVariable(name: "entry", scope: !831, file: !7, line: 619, type: !5)
!841 = !DILocation(line: 619, column: 20, scope: !831)
!842 = !DILocation(line: 619, column: 52, scope: !831)
!843 = !DILocation(line: 619, column: 56, scope: !831)
!844 = !DILocation(line: 619, column: 64, scope: !831)
!845 = !DILocation(line: 619, column: 28, scope: !831)
!846 = !DILocation(line: 621, column: 11, scope: !831)
!847 = !DILocation(line: 621, column: 17, scope: !831)
!848 = !DILocation(line: 621, column: 26, scope: !849)
!849 = !DILexicalBlockFile(scope: !831, file: !7, discriminator: 1)
!850 = !DILocation(line: 621, column: 11, scope: !849)
!851 = !DILocation(line: 621, column: 55, scope: !852)
!852 = !DILexicalBlockFile(scope: !831, file: !7, discriminator: 2)
!853 = !DILocation(line: 621, column: 62, scope: !852)
!854 = !DILocation(line: 621, column: 39, scope: !852)
!855 = !DILocation(line: 621, column: 11, scope: !852)
!856 = !DILocation(line: 621, column: 11, scope: !857)
!857 = !DILexicalBlockFile(scope: !831, file: !7, discriminator: 3)
!858 = !DILocation(line: 621, column: 4, scope: !857)
!859 = distinct !DISubprogram(name: "HashTable_ReplaceOrInsert", scope: !7, file: !7, line: 648, type: !699, isLocal: false, isDefinition: true, scopeLine: 651, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!860 = !DILocalVariable(name: "ht", arg: 1, scope: !859, file: !7, line: 648, type: !43)
!861 = !DILocation(line: 648, column: 38, scope: !859)
!862 = !DILocalVariable(name: "keyStr", arg: 2, scope: !859, file: !7, line: 649, type: !25)
!863 = !DILocation(line: 649, column: 39, scope: !859)
!864 = !DILocalVariable(name: "clientData", arg: 3, scope: !859, file: !7, line: 650, type: !4)
!865 = !DILocation(line: 650, column: 33, scope: !859)
!866 = !DILocalVariable(name: "entry", scope: !859, file: !7, line: 652, type: !5)
!867 = !DILocation(line: 652, column: 20, scope: !859)
!868 = !DILocation(line: 652, column: 52, scope: !859)
!869 = !DILocation(line: 652, column: 56, scope: !859)
!870 = !DILocation(line: 652, column: 64, scope: !859)
!871 = !DILocation(line: 652, column: 28, scope: !859)
!872 = !DILocation(line: 654, column: 8, scope: !873)
!873 = distinct !DILexicalBlock(scope: !859, file: !7, line: 654, column: 8)
!874 = !DILocation(line: 654, column: 14, scope: !873)
!875 = !DILocation(line: 654, column: 8, scope: !859)
!876 = !DILocation(line: 655, column: 7, scope: !877)
!877 = distinct !DILexicalBlock(scope: !873, file: !7, line: 654, column: 22)
!878 = !DILocation(line: 659, column: 8, scope: !879)
!879 = distinct !DILexicalBlock(scope: !859, file: !7, line: 659, column: 8)
!880 = !DILocation(line: 659, column: 12, scope: !879)
!881 = !DILocation(line: 659, column: 19, scope: !879)
!882 = !DILocation(line: 659, column: 22, scope: !883)
!883 = !DILexicalBlockFile(scope: !879, file: !7, discriminator: 1)
!884 = !DILocation(line: 659, column: 26, scope: !883)
!885 = !DILocation(line: 659, column: 8, scope: !883)
!886 = !DILocalVariable(name: "old", scope: !887, file: !7, line: 660, type: !4)
!887 = distinct !DILexicalBlock(scope: !879, file: !7, line: 659, column: 39)
!888 = !DILocation(line: 660, column: 13, scope: !887)
!889 = !DILocation(line: 660, column: 40, scope: !887)
!890 = !DILocation(line: 660, column: 47, scope: !887)
!891 = !DILocation(line: 660, column: 59, scope: !887)
!892 = !DILocation(line: 660, column: 19, scope: !887)
!893 = !DILocation(line: 662, column: 7, scope: !887)
!894 = !DILocation(line: 662, column: 11, scope: !887)
!895 = !DILocation(line: 662, column: 23, scope: !887)
!896 = !DILocation(line: 663, column: 4, scope: !887)
!897 = !DILocation(line: 666, column: 11, scope: !898)
!898 = distinct !DILexicalBlock(scope: !899, file: !7, line: 666, column: 11)
!899 = distinct !DILexicalBlock(scope: !879, file: !7, line: 665, column: 4)
!900 = !DILocation(line: 666, column: 15, scope: !898)
!901 = !DILocation(line: 666, column: 11, scope: !899)
!902 = !DILocation(line: 667, column: 10, scope: !903)
!903 = distinct !DILexicalBlock(scope: !898, file: !7, line: 666, column: 28)
!904 = !DILocation(line: 667, column: 14, scope: !903)
!905 = !DILocation(line: 667, column: 42, scope: !903)
!906 = !DILocation(line: 667, column: 49, scope: !903)
!907 = !DILocation(line: 667, column: 26, scope: !903)
!908 = !DILocation(line: 667, column: 10, scope: !909)
!909 = !DILexicalBlockFile(scope: !903, file: !7, discriminator: 1)
!910 = !DILocation(line: 668, column: 7, scope: !903)
!911 = !DILocation(line: 669, column: 24, scope: !899)
!912 = !DILocation(line: 669, column: 31, scope: !899)
!913 = !DILocation(line: 669, column: 43, scope: !899)
!914 = !DILocation(line: 669, column: 7, scope: !899)
!915 = !DILocation(line: 672, column: 4, scope: !859)
!916 = !DILocation(line: 673, column: 1, scope: !859)
!917 = distinct !DISubprogram(name: "Atomic_ReadWritePtr", scope: !13, file: !13, line: 3829, type: !918, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!918 = !DISubroutineType(types: !919)
!919 = !{!4, !157, !25}
!920 = !DILocalVariable(name: "var", arg: 1, scope: !917, file: !13, line: 3829, type: !157)
!921 = !DILocation(line: 3829, column: 595, scope: !917)
!922 = !DILocalVariable(name: "val", arg: 2, scope: !917, file: !13, line: 3829, type: !25)
!923 = !DILocation(line: 3829, column: 613, scope: !917)
!924 = !DILocation(line: 3829, column: 665, scope: !917)
!925 = !DILocation(line: 3829, column: 689, scope: !917)
!926 = !DILocation(line: 3829, column: 678, scope: !917)
!927 = !DILocation(line: 3829, column: 646, scope: !917)
!928 = !DILocation(line: 3829, column: 627, scope: !917)
!929 = !DILocation(line: 3829, column: 620, scope: !917)
!930 = distinct !DISubprogram(name: "HashTable_ReplaceIfEqual", scope: !7, file: !7, line: 695, type: !931, isLocal: false, isDefinition: true, scopeLine: 699, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!931 = !DISubroutineType(types: !932)
!932 = !{!53, !43, !25, !4, !4}
!933 = !DILocalVariable(name: "ht", arg: 1, scope: !930, file: !7, line: 695, type: !43)
!934 = !DILocation(line: 695, column: 37, scope: !930)
!935 = !DILocalVariable(name: "keyStr", arg: 2, scope: !930, file: !7, line: 696, type: !25)
!936 = !DILocation(line: 696, column: 38, scope: !930)
!937 = !DILocalVariable(name: "oldClientData", arg: 3, scope: !930, file: !7, line: 697, type: !4)
!938 = !DILocation(line: 697, column: 32, scope: !930)
!939 = !DILocalVariable(name: "newClientData", arg: 4, scope: !930, file: !7, line: 698, type: !4)
!940 = !DILocation(line: 698, column: 32, scope: !930)
!941 = !DILocalVariable(name: "hash", scope: !930, file: !7, line: 700, type: !31)
!942 = !DILocation(line: 700, column: 11, scope: !930)
!943 = !DILocation(line: 700, column: 39, scope: !930)
!944 = !DILocation(line: 700, column: 43, scope: !930)
!945 = !DILocation(line: 700, column: 18, scope: !930)
!946 = !DILocalVariable(name: "entry", scope: !930, file: !7, line: 701, type: !5)
!947 = !DILocation(line: 701, column: 20, scope: !930)
!948 = !DILocation(line: 701, column: 44, scope: !930)
!949 = !DILocation(line: 701, column: 48, scope: !930)
!950 = !DILocation(line: 701, column: 56, scope: !930)
!951 = !DILocation(line: 701, column: 28, scope: !930)
!952 = !DILocalVariable(name: "retval", scope: !930, file: !7, line: 702, type: !53)
!953 = !DILocation(line: 702, column: 9, scope: !930)
!954 = !DILocation(line: 704, column: 8, scope: !955)
!955 = distinct !DILexicalBlock(scope: !930, file: !7, line: 704, column: 8)
!956 = !DILocation(line: 704, column: 14, scope: !955)
!957 = !DILocation(line: 704, column: 8, scope: !930)
!958 = !DILocation(line: 705, column: 7, scope: !959)
!959 = distinct !DILexicalBlock(scope: !955, file: !7, line: 704, column: 22)
!960 = !DILocation(line: 709, column: 8, scope: !961)
!961 = distinct !DILexicalBlock(scope: !930, file: !7, line: 709, column: 8)
!962 = !DILocation(line: 709, column: 12, scope: !961)
!963 = !DILocation(line: 709, column: 8, scope: !930)
!964 = !DILocalVariable(name: "data", scope: !965, file: !7, line: 710, type: !4)
!965 = distinct !DILexicalBlock(scope: !961, file: !7, line: 709, column: 20)
!966 = !DILocation(line: 710, column: 13, scope: !965)
!967 = !DILocation(line: 710, column: 48, scope: !965)
!968 = !DILocation(line: 710, column: 55, scope: !965)
!969 = !DILocation(line: 711, column: 47, scope: !965)
!970 = !DILocation(line: 711, column: 62, scope: !965)
!971 = !DILocation(line: 710, column: 20, scope: !965)
!972 = !DILocation(line: 712, column: 11, scope: !973)
!973 = distinct !DILexicalBlock(scope: !965, file: !7, line: 712, column: 11)
!974 = !DILocation(line: 712, column: 19, scope: !973)
!975 = !DILocation(line: 712, column: 16, scope: !973)
!976 = !DILocation(line: 712, column: 11, scope: !965)
!977 = !DILocation(line: 713, column: 17, scope: !978)
!978 = distinct !DILexicalBlock(scope: !973, file: !7, line: 712, column: 34)
!979 = !DILocation(line: 714, column: 14, scope: !980)
!980 = distinct !DILexicalBlock(scope: !978, file: !7, line: 714, column: 14)
!981 = !DILocation(line: 714, column: 18, scope: !980)
!982 = !DILocation(line: 714, column: 30, scope: !980)
!983 = !DILocation(line: 714, column: 14, scope: !978)
!984 = !DILocation(line: 715, column: 13, scope: !985)
!985 = distinct !DILexicalBlock(scope: !980, file: !7, line: 714, column: 38)
!986 = !DILocation(line: 715, column: 17, scope: !985)
!987 = !DILocation(line: 715, column: 29, scope: !985)
!988 = !DILocation(line: 716, column: 10, scope: !985)
!989 = !DILocation(line: 717, column: 7, scope: !978)
!990 = !DILocation(line: 718, column: 4, scope: !965)
!991 = !DILocation(line: 720, column: 24, scope: !992)
!992 = distinct !DILexicalBlock(scope: !961, file: !7, line: 720, column: 8)
!993 = !DILocation(line: 720, column: 31, scope: !992)
!994 = !DILocation(line: 720, column: 8, scope: !992)
!995 = !DILocation(line: 720, column: 46, scope: !992)
!996 = !DILocation(line: 720, column: 43, scope: !992)
!997 = !DILocation(line: 720, column: 8, scope: !961)
!998 = !DILocation(line: 721, column: 14, scope: !999)
!999 = distinct !DILexicalBlock(scope: !992, file: !7, line: 720, column: 61)
!1000 = !DILocation(line: 722, column: 11, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !999, file: !7, line: 722, column: 11)
!1002 = !DILocation(line: 722, column: 15, scope: !1001)
!1003 = !DILocation(line: 722, column: 11, scope: !999)
!1004 = !DILocation(line: 723, column: 10, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1001, file: !7, line: 722, column: 28)
!1006 = !DILocation(line: 723, column: 14, scope: !1005)
!1007 = !DILocation(line: 723, column: 42, scope: !1005)
!1008 = !DILocation(line: 723, column: 49, scope: !1005)
!1009 = !DILocation(line: 723, column: 26, scope: !1005)
!1010 = !DILocation(line: 723, column: 10, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1005, file: !7, discriminator: 1)
!1012 = !DILocation(line: 724, column: 7, scope: !1005)
!1013 = !DILocation(line: 725, column: 24, scope: !999)
!1014 = !DILocation(line: 725, column: 31, scope: !999)
!1015 = !DILocation(line: 725, column: 43, scope: !999)
!1016 = !DILocation(line: 725, column: 7, scope: !999)
!1017 = !DILocation(line: 726, column: 4, scope: !999)
!1018 = !DILocation(line: 728, column: 11, scope: !930)
!1019 = !DILocation(line: 728, column: 4, scope: !930)
!1020 = !DILocation(line: 729, column: 1, scope: !930)
!1021 = distinct !DISubprogram(name: "HashTable_GetNumElements", scope: !7, file: !7, line: 819, type: !1022, isLocal: false, isDefinition: true, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!63, !348}
!1024 = !DILocalVariable(name: "ht", arg: 1, scope: !1021, file: !7, line: 819, type: !348)
!1025 = !DILocation(line: 819, column: 43, scope: !1021)
!1026 = !DILocation(line: 824, column: 11, scope: !1021)
!1027 = !DILocation(line: 824, column: 15, scope: !1021)
!1028 = !DILocation(line: 824, column: 4, scope: !1021)
!1029 = distinct !DISubprogram(name: "HashTable_KeyArray", scope: !7, file: !7, line: 847, type: !1030, isLocal: false, isDefinition: true, scopeLine: 850, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !348, !1032, !1034}
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64, align: 64)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!1035 = !DILocalVariable(name: "ht", arg: 1, scope: !1029, file: !7, line: 847, type: !348)
!1036 = !DILocation(line: 847, column: 37, scope: !1029)
!1037 = !DILocalVariable(name: "keys", arg: 2, scope: !1029, file: !7, line: 848, type: !1032)
!1038 = !DILocation(line: 848, column: 34, scope: !1029)
!1039 = !DILocalVariable(name: "size", arg: 3, scope: !1029, file: !7, line: 849, type: !1034)
!1040 = !DILocation(line: 849, column: 28, scope: !1029)
!1041 = !DILocalVariable(name: "i", scope: !1029, file: !7, line: 851, type: !31)
!1042 = !DILocation(line: 851, column: 11, scope: !1029)
!1043 = !DILocalVariable(name: "j", scope: !1029, file: !7, line: 852, type: !63)
!1044 = !DILocation(line: 852, column: 11, scope: !1029)
!1045 = !DILocation(line: 860, column: 5, scope: !1029)
!1046 = !DILocation(line: 860, column: 10, scope: !1029)
!1047 = !DILocation(line: 861, column: 37, scope: !1029)
!1048 = !DILocation(line: 861, column: 12, scope: !1029)
!1049 = !DILocation(line: 861, column: 5, scope: !1029)
!1050 = !DILocation(line: 861, column: 10, scope: !1029)
!1051 = !DILocation(line: 863, column: 9, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1029, file: !7, line: 863, column: 8)
!1053 = !DILocation(line: 863, column: 8, scope: !1052)
!1054 = !DILocation(line: 863, column: 14, scope: !1052)
!1055 = !DILocation(line: 863, column: 8, scope: !1029)
!1056 = !DILocation(line: 864, column: 7, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1052, file: !7, line: 863, column: 20)
!1058 = !DILocation(line: 868, column: 30, scope: !1029)
!1059 = !DILocation(line: 868, column: 29, scope: !1029)
!1060 = !DILocation(line: 868, column: 35, scope: !1029)
!1061 = !DILocation(line: 868, column: 12, scope: !1029)
!1062 = !DILocation(line: 868, column: 5, scope: !1029)
!1063 = !DILocation(line: 868, column: 10, scope: !1029)
!1064 = !DILocation(line: 871, column: 11, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1029, file: !7, line: 871, column: 4)
!1066 = !DILocation(line: 871, column: 18, scope: !1065)
!1067 = !DILocation(line: 871, column: 9, scope: !1065)
!1068 = !DILocation(line: 871, column: 23, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !1070, file: !7, discriminator: 1)
!1070 = distinct !DILexicalBlock(scope: !1065, file: !7, line: 871, column: 4)
!1071 = !DILocation(line: 871, column: 27, scope: !1069)
!1072 = !DILocation(line: 871, column: 31, scope: !1069)
!1073 = !DILocation(line: 871, column: 25, scope: !1069)
!1074 = !DILocation(line: 871, column: 4, scope: !1069)
!1075 = !DILocalVariable(name: "entry", scope: !1076, file: !7, line: 872, type: !5)
!1076 = distinct !DILexicalBlock(scope: !1070, file: !7, line: 871, column: 48)
!1077 = !DILocation(line: 872, column: 23, scope: !1076)
!1078 = !DILocation(line: 874, column: 69, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1076, file: !7, line: 874, column: 7)
!1080 = !DILocation(line: 874, column: 57, scope: !1079)
!1081 = !DILocation(line: 874, column: 61, scope: !1079)
!1082 = !DILocation(line: 874, column: 40, scope: !1079)
!1083 = !DILocation(line: 874, column: 21, scope: !1079)
!1084 = !DILocation(line: 874, column: 18, scope: !1079)
!1085 = !DILocation(line: 874, column: 12, scope: !1079)
!1086 = !DILocation(line: 875, column: 12, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1079, file: !7, line: 874, column: 7)
!1088 = !DILocation(line: 875, column: 18, scope: !1087)
!1089 = !DILocation(line: 874, column: 7, scope: !1090)
!1090 = !DILexicalBlockFile(scope: !1079, file: !7, discriminator: 1)
!1091 = !DILocation(line: 877, column: 25, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1087, file: !7, line: 876, column: 73)
!1093 = !DILocation(line: 877, column: 32, scope: !1092)
!1094 = !DILocation(line: 877, column: 19, scope: !1092)
!1095 = !DILocation(line: 877, column: 12, scope: !1092)
!1096 = !DILocation(line: 877, column: 11, scope: !1092)
!1097 = !DILocation(line: 877, column: 10, scope: !1092)
!1098 = !DILocation(line: 877, column: 23, scope: !1092)
!1099 = !DILocation(line: 878, column: 7, scope: !1092)
!1100 = !DILocation(line: 876, column: 57, scope: !1087)
!1101 = !DILocation(line: 876, column: 64, scope: !1087)
!1102 = !DILocation(line: 876, column: 40, scope: !1087)
!1103 = !DILocation(line: 876, column: 21, scope: !1087)
!1104 = !DILocation(line: 876, column: 18, scope: !1087)
!1105 = !DILocation(line: 874, column: 7, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !1087, file: !7, discriminator: 2)
!1107 = distinct !{!1107, !1108}
!1108 = !DILocation(line: 874, column: 7, scope: !1076)
!1109 = !DILocation(line: 879, column: 4, scope: !1076)
!1110 = !DILocation(line: 871, column: 44, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1070, file: !7, discriminator: 2)
!1112 = !DILocation(line: 871, column: 4, scope: !1111)
!1113 = distinct !{!1113, !1114}
!1114 = !DILocation(line: 871, column: 4, scope: !1029)
!1115 = !DILocation(line: 880, column: 1, scope: !1029)
!1116 = distinct !DISubprogram(name: "HashTable_ToArray", scope: !7, file: !7, line: 903, type: !1117, isLocal: false, isDefinition: true, scopeLine: 906, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{null, !348, !1119, !1034}
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!1120 = !DILocalVariable(name: "ht", arg: 1, scope: !1116, file: !7, line: 903, type: !348)
!1121 = !DILocation(line: 903, column: 36, scope: !1116)
!1122 = !DILocalVariable(name: "clientDatas", arg: 2, scope: !1116, file: !7, line: 904, type: !1119)
!1123 = !DILocation(line: 904, column: 27, scope: !1116)
!1124 = !DILocalVariable(name: "size", arg: 3, scope: !1116, file: !7, line: 905, type: !1034)
!1125 = !DILocation(line: 905, column: 27, scope: !1116)
!1126 = !DILocalVariable(name: "i", scope: !1116, file: !7, line: 907, type: !31)
!1127 = !DILocation(line: 907, column: 11, scope: !1116)
!1128 = !DILocalVariable(name: "j", scope: !1116, file: !7, line: 908, type: !63)
!1129 = !DILocation(line: 908, column: 11, scope: !1116)
!1130 = !DILocation(line: 916, column: 5, scope: !1116)
!1131 = !DILocation(line: 916, column: 17, scope: !1116)
!1132 = !DILocation(line: 917, column: 37, scope: !1116)
!1133 = !DILocation(line: 917, column: 12, scope: !1116)
!1134 = !DILocation(line: 917, column: 5, scope: !1116)
!1135 = !DILocation(line: 917, column: 10, scope: !1116)
!1136 = !DILocation(line: 919, column: 9, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1116, file: !7, line: 919, column: 8)
!1138 = !DILocation(line: 919, column: 8, scope: !1137)
!1139 = !DILocation(line: 919, column: 14, scope: !1137)
!1140 = !DILocation(line: 919, column: 8, scope: !1116)
!1141 = !DILocation(line: 920, column: 7, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1137, file: !7, line: 919, column: 20)
!1143 = !DILocation(line: 924, column: 37, scope: !1116)
!1144 = !DILocation(line: 924, column: 36, scope: !1116)
!1145 = !DILocation(line: 924, column: 42, scope: !1116)
!1146 = !DILocation(line: 924, column: 19, scope: !1116)
!1147 = !DILocation(line: 924, column: 5, scope: !1116)
!1148 = !DILocation(line: 924, column: 17, scope: !1116)
!1149 = !DILocation(line: 927, column: 11, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1116, file: !7, line: 927, column: 4)
!1151 = !DILocation(line: 927, column: 18, scope: !1150)
!1152 = !DILocation(line: 927, column: 9, scope: !1150)
!1153 = !DILocation(line: 927, column: 23, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !1155, file: !7, discriminator: 1)
!1155 = distinct !DILexicalBlock(scope: !1150, file: !7, line: 927, column: 4)
!1156 = !DILocation(line: 927, column: 27, scope: !1154)
!1157 = !DILocation(line: 927, column: 31, scope: !1154)
!1158 = !DILocation(line: 927, column: 25, scope: !1154)
!1159 = !DILocation(line: 927, column: 4, scope: !1154)
!1160 = !DILocalVariable(name: "entry", scope: !1161, file: !7, line: 928, type: !5)
!1161 = distinct !DILexicalBlock(scope: !1155, file: !7, line: 927, column: 48)
!1162 = !DILocation(line: 928, column: 23, scope: !1161)
!1163 = !DILocation(line: 930, column: 69, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1161, file: !7, line: 930, column: 7)
!1165 = !DILocation(line: 930, column: 57, scope: !1164)
!1166 = !DILocation(line: 930, column: 61, scope: !1164)
!1167 = !DILocation(line: 930, column: 40, scope: !1164)
!1168 = !DILocation(line: 930, column: 21, scope: !1164)
!1169 = !DILocation(line: 930, column: 18, scope: !1164)
!1170 = !DILocation(line: 930, column: 12, scope: !1164)
!1171 = !DILocation(line: 931, column: 12, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1164, file: !7, line: 930, column: 7)
!1173 = !DILocation(line: 931, column: 18, scope: !1172)
!1174 = !DILocation(line: 930, column: 7, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !1164, file: !7, discriminator: 1)
!1176 = !DILocation(line: 933, column: 48, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1172, file: !7, line: 932, column: 73)
!1178 = !DILocation(line: 933, column: 55, scope: !1177)
!1179 = !DILocation(line: 933, column: 32, scope: !1177)
!1180 = !DILocation(line: 933, column: 26, scope: !1177)
!1181 = !DILocation(line: 933, column: 12, scope: !1177)
!1182 = !DILocation(line: 933, column: 11, scope: !1177)
!1183 = !DILocation(line: 933, column: 10, scope: !1177)
!1184 = !DILocation(line: 933, column: 30, scope: !1177)
!1185 = !DILocation(line: 934, column: 7, scope: !1177)
!1186 = !DILocation(line: 932, column: 57, scope: !1172)
!1187 = !DILocation(line: 932, column: 64, scope: !1172)
!1188 = !DILocation(line: 932, column: 40, scope: !1172)
!1189 = !DILocation(line: 932, column: 21, scope: !1172)
!1190 = !DILocation(line: 932, column: 18, scope: !1172)
!1191 = !DILocation(line: 930, column: 7, scope: !1192)
!1192 = !DILexicalBlockFile(scope: !1172, file: !7, discriminator: 2)
!1193 = distinct !{!1193, !1194}
!1194 = !DILocation(line: 930, column: 7, scope: !1161)
!1195 = !DILocation(line: 935, column: 4, scope: !1161)
!1196 = !DILocation(line: 927, column: 44, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1155, file: !7, discriminator: 2)
!1198 = !DILocation(line: 927, column: 4, scope: !1197)
!1199 = distinct !{!1199, !1200}
!1200 = !DILocation(line: 927, column: 4, scope: !1116)
!1201 = !DILocation(line: 936, column: 1, scope: !1116)
!1202 = distinct !DISubprogram(name: "HashTable_ForEach", scope: !7, file: !7, line: 959, type: !1203, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!51, !348, !1205, !4}
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "HashTableForEachCallback", file: !45, line: 45, baseType: !1206)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64, align: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!51, !34, !4, !4}
!1209 = !DILocalVariable(name: "ht", arg: 1, scope: !1202, file: !7, line: 959, type: !348)
!1210 = !DILocation(line: 959, column: 36, scope: !1202)
!1211 = !DILocalVariable(name: "cb", arg: 2, scope: !1202, file: !7, line: 960, type: !1205)
!1212 = !DILocation(line: 960, column: 44, scope: !1202)
!1213 = !DILocalVariable(name: "clientData", arg: 3, scope: !1202, file: !7, line: 961, type: !4)
!1214 = !DILocation(line: 961, column: 25, scope: !1202)
!1215 = !DILocalVariable(name: "i", scope: !1202, file: !7, line: 963, type: !51)
!1216 = !DILocation(line: 963, column: 8, scope: !1202)
!1217 = !DILocation(line: 968, column: 11, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1202, file: !7, line: 968, column: 4)
!1219 = !DILocation(line: 968, column: 9, scope: !1218)
!1220 = !DILocation(line: 968, column: 16, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !1222, file: !7, discriminator: 1)
!1222 = distinct !DILexicalBlock(scope: !1218, file: !7, line: 968, column: 4)
!1223 = !DILocation(line: 968, column: 20, scope: !1221)
!1224 = !DILocation(line: 968, column: 24, scope: !1221)
!1225 = !DILocation(line: 968, column: 18, scope: !1221)
!1226 = !DILocation(line: 968, column: 4, scope: !1221)
!1227 = !DILocalVariable(name: "entry", scope: !1228, file: !7, line: 969, type: !5)
!1228 = distinct !DILexicalBlock(scope: !1222, file: !7, line: 968, column: 41)
!1229 = !DILocation(line: 969, column: 23, scope: !1228)
!1230 = !DILocation(line: 971, column: 69, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1228, file: !7, line: 971, column: 7)
!1232 = !DILocation(line: 971, column: 57, scope: !1231)
!1233 = !DILocation(line: 971, column: 61, scope: !1231)
!1234 = !DILocation(line: 971, column: 40, scope: !1231)
!1235 = !DILocation(line: 971, column: 21, scope: !1231)
!1236 = !DILocation(line: 971, column: 18, scope: !1231)
!1237 = !DILocation(line: 971, column: 12, scope: !1231)
!1238 = !DILocation(line: 972, column: 12, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1231, file: !7, line: 971, column: 7)
!1240 = !DILocation(line: 972, column: 18, scope: !1239)
!1241 = !DILocation(line: 971, column: 7, scope: !1242)
!1242 = !DILexicalBlockFile(scope: !1231, file: !7, discriminator: 1)
!1243 = !DILocalVariable(name: "result", scope: !1244, file: !7, line: 974, type: !51)
!1244 = distinct !DILexicalBlock(scope: !1239, file: !7, line: 973, column: 73)
!1245 = !DILocation(line: 974, column: 14, scope: !1244)
!1246 = !DILocation(line: 974, column: 25, scope: !1244)
!1247 = !DILocation(line: 974, column: 29, scope: !1244)
!1248 = !DILocation(line: 974, column: 36, scope: !1244)
!1249 = !DILocation(line: 974, column: 60, scope: !1244)
!1250 = !DILocation(line: 974, column: 67, scope: !1244)
!1251 = !DILocation(line: 974, column: 44, scope: !1244)
!1252 = !DILocation(line: 975, column: 29, scope: !1244)
!1253 = !DILocation(line: 974, column: 23, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !1244, file: !7, discriminator: 1)
!1255 = !DILocation(line: 977, column: 14, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1244, file: !7, line: 977, column: 14)
!1257 = !DILocation(line: 977, column: 14, scope: !1244)
!1258 = !DILocation(line: 978, column: 20, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1256, file: !7, line: 977, column: 22)
!1260 = !DILocation(line: 978, column: 13, scope: !1259)
!1261 = !DILocation(line: 980, column: 7, scope: !1244)
!1262 = !DILocation(line: 973, column: 57, scope: !1239)
!1263 = !DILocation(line: 973, column: 64, scope: !1239)
!1264 = !DILocation(line: 973, column: 40, scope: !1239)
!1265 = !DILocation(line: 973, column: 21, scope: !1239)
!1266 = !DILocation(line: 973, column: 18, scope: !1239)
!1267 = !DILocation(line: 971, column: 7, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1239, file: !7, discriminator: 2)
!1269 = distinct !{!1269, !1270}
!1270 = !DILocation(line: 971, column: 7, scope: !1228)
!1271 = !DILocation(line: 981, column: 4, scope: !1228)
!1272 = !DILocation(line: 968, column: 37, scope: !1273)
!1273 = !DILexicalBlockFile(scope: !1222, file: !7, discriminator: 2)
!1274 = !DILocation(line: 968, column: 4, scope: !1273)
!1275 = distinct !{!1275, !1276}
!1276 = !DILocation(line: 968, column: 4, scope: !1202)
!1277 = !DILocation(line: 983, column: 4, scope: !1202)
!1278 = !DILocation(line: 984, column: 1, scope: !1202)
!1279 = distinct !DISubprogram(name: "Atomic_Read64", scope: !13, file: !13, line: 2143, type: !1280, isLocal: true, isDefinition: true, scopeLine: 2144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!19, !1282}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64, align: 64)
!1283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1284 = !DILocalVariable(name: "var", arg: 1, scope: !1279, file: !13, line: 2143, type: !1282)
!1285 = !DILocation(line: 2143, column: 36, scope: !1279)
!1286 = !DILocalVariable(name: "value", scope: !1279, file: !13, line: 2146, type: !19)
!1287 = !DILocation(line: 2146, column: 11, scope: !1279)
!1288 = !DILocation(line: 2160, column: 14, scope: !1279)
!1289 = !DILocation(line: 2160, column: 19, scope: !1279)
!1290 = !DILocation(line: 2157, column: 4, scope: !1279)
!1291 = !{i32 83722}
!1292 = !DILocation(line: 2213, column: 11, scope: !1279)
!1293 = !DILocation(line: 2213, column: 4, scope: !1279)
!1294 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWrite64", scope: !13, file: !13, line: 1190, type: !1295, isLocal: true, isDefinition: true, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!19, !1297, !19, !19}
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!1298 = !DILocalVariable(name: "var", arg: 1, scope: !1294, file: !13, line: 1190, type: !1297)
!1299 = !DILocation(line: 1190, column: 42, scope: !1294)
!1300 = !DILocalVariable(name: "oldVal", arg: 2, scope: !1294, file: !13, line: 1191, type: !19)
!1301 = !DILocation(line: 1191, column: 34, scope: !1294)
!1302 = !DILocalVariable(name: "newVal", arg: 3, scope: !1294, file: !13, line: 1192, type: !19)
!1303 = !DILocation(line: 1192, column: 34, scope: !1294)
!1304 = !DILocalVariable(name: "val", scope: !1294, file: !13, line: 1240, type: !19)
!1305 = !DILocation(line: 1240, column: 11, scope: !1294)
!1306 = !DILocation(line: 1246, column: 15, scope: !1294)
!1307 = !DILocation(line: 1246, column: 20, scope: !1294)
!1308 = !DILocation(line: 1247, column: 14, scope: !1294)
!1309 = !DILocation(line: 1248, column: 14, scope: !1294)
!1310 = !DILocation(line: 1243, column: 4, scope: !1294)
!1311 = !{i32 76164}
!1312 = !DILocation(line: 1251, column: 11, scope: !1294)
!1313 = !DILocation(line: 1251, column: 4, scope: !1294)
!1314 = distinct !DISubprogram(name: "Atomic_Write64", scope: !13, file: !13, line: 2604, type: !1315, isLocal: true, isDefinition: true, scopeLine: 2606, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{null, !1297, !19}
!1317 = !DILocalVariable(name: "var", arg: 1, scope: !1314, file: !13, line: 2604, type: !1297)
!1318 = !DILocation(line: 2604, column: 31, scope: !1314)
!1319 = !DILocalVariable(name: "val", arg: 2, scope: !1314, file: !13, line: 2605, type: !19)
!1320 = !DILocation(line: 2605, column: 23, scope: !1314)
!1321 = !DILocation(line: 2622, column: 15, scope: !1314)
!1322 = !DILocation(line: 2622, column: 20, scope: !1314)
!1323 = !DILocation(line: 2623, column: 14, scope: !1314)
!1324 = !DILocation(line: 2620, column: 4, scope: !1314)
!1325 = !{i32 87396}
!1326 = !DILocation(line: 2643, column: 1, scope: !1314)
!1327 = distinct !DISubprogram(name: "Atomic_ReadWrite64", scope: !13, file: !13, line: 2554, type: !1328, isLocal: true, isDefinition: true, scopeLine: 2556, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!19, !1297, !19}
!1330 = !DILocalVariable(name: "var", arg: 1, scope: !1327, file: !13, line: 2554, type: !1297)
!1331 = !DILocation(line: 2554, column: 35, scope: !1327)
!1332 = !DILocalVariable(name: "val", arg: 2, scope: !1327, file: !13, line: 2555, type: !19)
!1333 = !DILocation(line: 2555, column: 27, scope: !1327)
!1334 = !DILocation(line: 2563, column: 15, scope: !1327)
!1335 = !DILocation(line: 2563, column: 20, scope: !1327)
!1336 = !DILocation(line: 2564, column: 14, scope: !1327)
!1337 = !DILocation(line: 2560, column: 4, scope: !1327)
!1338 = !{i32 86824}
!1339 = !DILocation(line: 2567, column: 11, scope: !1327)
!1340 = !DILocation(line: 2567, column: 4, scope: !1327)
