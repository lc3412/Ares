; ModuleID = './dynbuf.o.i'
source_filename = "./dynbuf.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.DynBuf = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [50 x i8] c"Unrecoverable memory allocation failure at %s:%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"MEM_ALLOC %s:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [101 x i8] c"/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dynbuf.h\00", align 1

; Function Attrs: nounwind uwtable
define void @DynBuf_Init(%struct.DynBuf*) #0 !dbg !8 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !25, metadata !26), !dbg !27
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !28
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 0, !dbg !29
  store i8* null, i8** %4, align 8, !dbg !30
  %5 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !31
  %6 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %5, i32 0, i32 1, !dbg !32
  store i64 0, i64* %6, align 8, !dbg !33
  %7 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !34
  %8 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %7, i32 0, i32 2, !dbg !35
  store i64 0, i64* %8, align 8, !dbg !36
  ret void, !dbg !37
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define void @DynBuf_InitWithMemory(%struct.DynBuf*, i64, i8*) #0 !dbg !38 {
  %4 = alloca %struct.DynBuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %4, metadata !41, metadata !26), !dbg !42
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !43, metadata !26), !dbg !44
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !45, metadata !26), !dbg !46
  %7 = load %struct.DynBuf*, %struct.DynBuf** %4, align 8, !dbg !47
  %8 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %7, i32 0, i32 1, !dbg !48
  store i64 0, i64* %8, align 8, !dbg !49
  %9 = load i8*, i8** %6, align 8, !dbg !50
  %10 = load %struct.DynBuf*, %struct.DynBuf** %4, align 8, !dbg !51
  %11 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %10, i32 0, i32 0, !dbg !52
  store i8* %9, i8** %11, align 8, !dbg !53
  %12 = load i64, i64* %5, align 8, !dbg !54
  %13 = load %struct.DynBuf*, %struct.DynBuf** %4, align 8, !dbg !55
  %14 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %13, i32 0, i32 2, !dbg !56
  store i64 %12, i64* %14, align 8, !dbg !57
  ret void, !dbg !58
}

; Function Attrs: nounwind uwtable
define void @DynBuf_Destroy(%struct.DynBuf*) #0 !dbg !59 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !60, metadata !26), !dbg !61
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !62
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 0, !dbg !63
  %5 = load i8*, i8** %4, align 8, !dbg !63
  call void @free(i8* %5) #6, !dbg !64
  %6 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !65
  call void @DynBuf_Init(%struct.DynBuf* %6), !dbg !66
  ret void, !dbg !67
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @DynBuf_Attach(%struct.DynBuf*, i64, i8*) #0 !dbg !68 {
  %4 = alloca %struct.DynBuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %4, metadata !69, metadata !26), !dbg !70
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !71, metadata !26), !dbg !72
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !73, metadata !26), !dbg !74
  %7 = load %struct.DynBuf*, %struct.DynBuf** %4, align 8, !dbg !75
  %8 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %7, i32 0, i32 0, !dbg !76
  %9 = load i8*, i8** %8, align 8, !dbg !76
  call void @free(i8* %9) #6, !dbg !77
  %10 = load i8*, i8** %6, align 8, !dbg !78
  %11 = load %struct.DynBuf*, %struct.DynBuf** %4, align 8, !dbg !79
  %12 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %11, i32 0, i32 0, !dbg !80
  store i8* %10, i8** %12, align 8, !dbg !81
  %13 = load i64, i64* %5, align 8, !dbg !82
  %14 = load %struct.DynBuf*, %struct.DynBuf** %4, align 8, !dbg !83
  %15 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %14, i32 0, i32 2, !dbg !84
  store i64 %13, i64* %15, align 8, !dbg !85
  %16 = load %struct.DynBuf*, %struct.DynBuf** %4, align 8, !dbg !86
  %17 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %16, i32 0, i32 1, !dbg !87
  store i64 %13, i64* %17, align 8, !dbg !88
  ret void, !dbg !89
}

; Function Attrs: nounwind uwtable
define i8* @DynBuf_Detach(%struct.DynBuf*) #0 !dbg !90 {
  %2 = alloca %struct.DynBuf*, align 8
  %3 = alloca i8*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !93, metadata !26), !dbg !94
  call void @llvm.dbg.declare(metadata i8** %3, metadata !95, metadata !26), !dbg !96
  %4 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !97
  %5 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %4, i32 0, i32 0, !dbg !98
  %6 = load i8*, i8** %5, align 8, !dbg !98
  store i8* %6, i8** %3, align 8, !dbg !99
  %7 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !100
  %8 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %7, i32 0, i32 0, !dbg !101
  store i8* null, i8** %8, align 8, !dbg !102
  %9 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !103
  %10 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %9, i32 0, i32 2, !dbg !104
  store i64 0, i64* %10, align 8, !dbg !105
  %11 = load i8*, i8** %3, align 8, !dbg !106
  ret i8* %11, !dbg !107
}

; Function Attrs: nounwind uwtable
define i8* @DynBuf_DetachString(%struct.DynBuf*) #0 !dbg !108 {
  %2 = alloca %struct.DynBuf*, align 8
  %3 = alloca i8*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !111, metadata !26), !dbg !112
  call void @llvm.dbg.declare(metadata i8** %3, metadata !113, metadata !26), !dbg !114
  %4 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !115
  %5 = call i8* @DynBuf_GetString(%struct.DynBuf* %4), !dbg !116
  store i8* %5, i8** %3, align 8, !dbg !114
  %6 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !117
  %7 = call i8* @DynBuf_Detach(%struct.DynBuf* %6), !dbg !118
  %8 = load i8*, i8** %3, align 8, !dbg !119
  ret i8* %8, !dbg !120
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @DynBuf_GetString(%struct.DynBuf*) #3 !dbg !121 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !122, metadata !26), !dbg !123
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !124
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 1, !dbg !126
  %5 = load i64, i64* %4, align 8, !dbg !126
  %6 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !127
  %7 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %6, i32 0, i32 2, !dbg !128
  %8 = load i64, i64* %7, align 8, !dbg !128
  %9 = icmp eq i64 %5, %8, !dbg !129
  br i1 %9, label %10, label %24, !dbg !130

; <label>:10:                                     ; preds = %1
  %11 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !131
  %12 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !135
  %13 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %12, i32 0, i32 1, !dbg !136
  %14 = load i64, i64* %13, align 8, !dbg !136
  %15 = add i64 %14, 1, !dbg !137
  %16 = call signext i8 @DynBuf_Enlarge(%struct.DynBuf* %11, i64 %15), !dbg !138
  %17 = icmp ne i8 %16, 0, !dbg !139
  %18 = xor i1 %17, true, !dbg !139
  %19 = zext i1 %18 to i32, !dbg !139
  %20 = sext i32 %19 to i64, !dbg !140
  %21 = icmp ne i64 %20, 0, !dbg !141
  br i1 %21, label %22, label %23, !dbg !142

; <label>:22:                                     ; preds = %10
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.2, i32 0, i32 0), i32 146) #7, !dbg !143
  unreachable, !dbg !143

; <label>:23:                                     ; preds = %10
  br label %24, !dbg !146

; <label>:24:                                     ; preds = %23, %1
  %25 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !147
  %26 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %25, i32 0, i32 1, !dbg !148
  %27 = load i64, i64* %26, align 8, !dbg !148
  %28 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !149
  %29 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %28, i32 0, i32 0, !dbg !150
  %30 = load i8*, i8** %29, align 8, !dbg !150
  %31 = getelementptr inbounds i8, i8* %30, i64 %27, !dbg !149
  store i8 0, i8* %31, align 1, !dbg !151
  %32 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !152
  %33 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %32, i32 0, i32 0, !dbg !153
  %34 = load i8*, i8** %33, align 8, !dbg !153
  ret i8* %34, !dbg !154
}

; Function Attrs: nounwind uwtable
define signext i8 @DynBuf_Enlarge(%struct.DynBuf*, i64) #0 !dbg !155 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.DynBuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %4, metadata !160, metadata !26), !dbg !161
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !162, metadata !26), !dbg !163
  call void @llvm.dbg.declare(metadata i64* %6, metadata !164, metadata !26), !dbg !165
  %7 = load %struct.DynBuf*, %struct.DynBuf** %4, align 8, !dbg !166
  %8 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %7, i32 0, i32 2, !dbg !167
  %9 = load i64, i64* %8, align 8, !dbg !167
  %10 = icmp ne i64 %9, 0, !dbg !166
  br i1 %10, label %11, label %28, !dbg !166

; <label>:11:                                     ; preds = %2
  %12 = load %struct.DynBuf*, %struct.DynBuf** %4, align 8, !dbg !168
  %13 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %12, i32 0, i32 2, !dbg !169
  %14 = load i64, i64* %13, align 8, !dbg !169
  %15 = icmp ult i64 %14, 262144, !dbg !170
  br i1 %15, label %16, label %21, !dbg !168

; <label>:16:                                     ; preds = %11
  %17 = load %struct.DynBuf*, %struct.DynBuf** %4, align 8, !dbg !171
  %18 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %17, i32 0, i32 2, !dbg !173
  %19 = load i64, i64* %18, align 8, !dbg !173
  %20 = mul i64 %19, 2, !dbg !174
  br label %26, !dbg !175

; <label>:21:                                     ; preds = %11
  %22 = load %struct.DynBuf*, %struct.DynBuf** %4, align 8, !dbg !176
  %23 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %22, i32 0, i32 2, !dbg !177
  %24 = load i64, i64* %23, align 8, !dbg !177
  %25 = add i64 %24, 262144, !dbg !178
  br label %26, !dbg !179

; <label>:26:                                     ; preds = %21, %16
  %27 = phi i64 [ %20, %16 ], [ %25, %21 ], !dbg !181
  br label %29, !dbg !183

; <label>:28:                                     ; preds = %2
  br label %29, !dbg !184

; <label>:29:                                     ; preds = %28, %26
  %30 = phi i64 [ %27, %26 ], [ 128, %28 ], !dbg !185
  store i64 %30, i64* %6, align 8, !dbg !186
  %31 = load i64, i64* %5, align 8, !dbg !187
  %32 = load i64, i64* %6, align 8, !dbg !189
  %33 = icmp ugt i64 %31, %32, !dbg !190
  br i1 %33, label %34, label %36, !dbg !191

; <label>:34:                                     ; preds = %29
  %35 = load i64, i64* %5, align 8, !dbg !192
  store i64 %35, i64* %6, align 8, !dbg !194
  br label %36, !dbg !195

; <label>:36:                                     ; preds = %34, %29
  %37 = load i64, i64* %6, align 8, !dbg !196
  %38 = load %struct.DynBuf*, %struct.DynBuf** %4, align 8, !dbg !198
  %39 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %38, i32 0, i32 2, !dbg !199
  %40 = load i64, i64* %39, align 8, !dbg !199
  %41 = icmp ult i64 %37, %40, !dbg !200
  br i1 %41, label %42, label %43, !dbg !201

; <label>:42:                                     ; preds = %36
  store i8 0, i8* %3, align 1, !dbg !202
  br label %47, !dbg !202

; <label>:43:                                     ; preds = %36
  %44 = load %struct.DynBuf*, %struct.DynBuf** %4, align 8, !dbg !204
  %45 = load i64, i64* %6, align 8, !dbg !205
  %46 = call signext i8 @DynBufRealloc(%struct.DynBuf* %44, i64 %45), !dbg !206
  store i8 %46, i8* %3, align 1, !dbg !207
  br label %47, !dbg !207

; <label>:47:                                     ; preds = %43, %42
  %48 = load i8, i8* %3, align 1, !dbg !208
  ret i8 %48, !dbg !208
}

; Function Attrs: nounwind uwtable
define internal signext i8 @DynBufRealloc(%struct.DynBuf*, i64) #0 !dbg !209 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.DynBuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %4, metadata !210, metadata !26), !dbg !211
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !212, metadata !26), !dbg !213
  call void @llvm.dbg.declare(metadata i8** %6, metadata !214, metadata !26), !dbg !215
  %7 = load %struct.DynBuf*, %struct.DynBuf** %4, align 8, !dbg !216
  %8 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %7, i32 0, i32 0, !dbg !217
  %9 = load i8*, i8** %8, align 8, !dbg !217
  %10 = load i64, i64* %5, align 8, !dbg !218
  %11 = call i8* @realloc(i8* %9, i64 %10) #6, !dbg !219
  store i8* %11, i8** %6, align 8, !dbg !220
  %12 = load i8*, i8** %6, align 8, !dbg !221
  %13 = icmp eq i8* %12, null, !dbg !223
  br i1 %13, label %14, label %18, !dbg !224

; <label>:14:                                     ; preds = %2
  %15 = load i64, i64* %5, align 8, !dbg !225
  %16 = icmp ne i64 %15, 0, !dbg !225
  br i1 %16, label %17, label %18, !dbg !227

; <label>:17:                                     ; preds = %14
  store i8 0, i8* %3, align 1, !dbg !228
  br label %25, !dbg !228

; <label>:18:                                     ; preds = %14, %2
  %19 = load i8*, i8** %6, align 8, !dbg !230
  %20 = load %struct.DynBuf*, %struct.DynBuf** %4, align 8, !dbg !231
  %21 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %20, i32 0, i32 0, !dbg !232
  store i8* %19, i8** %21, align 8, !dbg !233
  %22 = load i64, i64* %5, align 8, !dbg !234
  %23 = load %struct.DynBuf*, %struct.DynBuf** %4, align 8, !dbg !235
  %24 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %23, i32 0, i32 2, !dbg !236
  store i64 %22, i64* %24, align 8, !dbg !237
  store i8 1, i8* %3, align 1, !dbg !238
  br label %25, !dbg !238

; <label>:25:                                     ; preds = %18, %17
  %26 = load i8, i8* %3, align 1, !dbg !239
  ret i8 %26, !dbg !239
}

; Function Attrs: nounwind uwtable
define signext i8 @DynBuf_Append(%struct.DynBuf*, i8*, i64) #0 !dbg !240 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.DynBuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %5, metadata !245, metadata !26), !dbg !246
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !247, metadata !26), !dbg !248
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !249, metadata !26), !dbg !250
  call void @llvm.dbg.declare(metadata i64* %8, metadata !251, metadata !26), !dbg !252
  %9 = load i64, i64* %7, align 8, !dbg !253
  %10 = icmp ule i64 %9, 0, !dbg !255
  br i1 %10, label %11, label %12, !dbg !256

; <label>:11:                                     ; preds = %3
  store i8 1, i8* %4, align 1, !dbg !257
  br label %50, !dbg !257

; <label>:12:                                     ; preds = %3
  %13 = load %struct.DynBuf*, %struct.DynBuf** %5, align 8, !dbg !259
  %14 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %13, i32 0, i32 1, !dbg !260
  %15 = load i64, i64* %14, align 8, !dbg !260
  %16 = load i64, i64* %7, align 8, !dbg !261
  %17 = add i64 %15, %16, !dbg !262
  store i64 %17, i64* %8, align 8, !dbg !263
  %18 = load i64, i64* %8, align 8, !dbg !264
  %19 = load %struct.DynBuf*, %struct.DynBuf** %5, align 8, !dbg !266
  %20 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %19, i32 0, i32 1, !dbg !267
  %21 = load i64, i64* %20, align 8, !dbg !267
  %22 = icmp ult i64 %18, %21, !dbg !268
  br i1 %22, label %23, label %24, !dbg !269

; <label>:23:                                     ; preds = %12
  store i8 0, i8* %4, align 1, !dbg !270
  br label %50, !dbg !270

; <label>:24:                                     ; preds = %12
  %25 = load i64, i64* %8, align 8, !dbg !272
  %26 = load %struct.DynBuf*, %struct.DynBuf** %5, align 8, !dbg !274
  %27 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %26, i32 0, i32 2, !dbg !275
  %28 = load i64, i64* %27, align 8, !dbg !275
  %29 = icmp ugt i64 %25, %28, !dbg !276
  br i1 %29, label %30, label %37, !dbg !277

; <label>:30:                                     ; preds = %24
  %31 = load %struct.DynBuf*, %struct.DynBuf** %5, align 8, !dbg !278
  %32 = load i64, i64* %8, align 8, !dbg !281
  %33 = call signext i8 @DynBuf_Enlarge(%struct.DynBuf* %31, i64 %32), !dbg !282
  %34 = icmp ne i8 %33, 0, !dbg !282
  br i1 %34, label %36, label %35, !dbg !283

; <label>:35:                                     ; preds = %30
  store i8 0, i8* %4, align 1, !dbg !284
  br label %50, !dbg !284

; <label>:36:                                     ; preds = %30
  br label %37, !dbg !286

; <label>:37:                                     ; preds = %36, %24
  %38 = load %struct.DynBuf*, %struct.DynBuf** %5, align 8, !dbg !287
  %39 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %38, i32 0, i32 0, !dbg !288
  %40 = load i8*, i8** %39, align 8, !dbg !288
  %41 = load %struct.DynBuf*, %struct.DynBuf** %5, align 8, !dbg !289
  %42 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %41, i32 0, i32 1, !dbg !290
  %43 = load i64, i64* %42, align 8, !dbg !290
  %44 = getelementptr inbounds i8, i8* %40, i64 %43, !dbg !291
  %45 = load i8*, i8** %6, align 8, !dbg !292
  %46 = load i64, i64* %7, align 8, !dbg !293
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 %46, i32 1, i1 false), !dbg !294
  %47 = load i64, i64* %8, align 8, !dbg !295
  %48 = load %struct.DynBuf*, %struct.DynBuf** %5, align 8, !dbg !296
  %49 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %48, i32 0, i32 1, !dbg !297
  store i64 %47, i64* %49, align 8, !dbg !298
  store i8 1, i8* %4, align 1, !dbg !299
  br label %50, !dbg !299

; <label>:50:                                     ; preds = %37, %35, %23, %11
  %51 = load i8, i8* %4, align 1, !dbg !300
  ret i8 %51, !dbg !300
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @DynBuf_SafeInternalAppend(%struct.DynBuf*, i8*, i64, i8*, i32) #0 !dbg !301 {
  %6 = alloca %struct.DynBuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.DynBuf* %0, %struct.DynBuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %6, metadata !307, metadata !26), !dbg !308
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !309, metadata !26), !dbg !310
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !311, metadata !26), !dbg !312
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !313, metadata !26), !dbg !314
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !315, metadata !26), !dbg !316
  %11 = load %struct.DynBuf*, %struct.DynBuf** %6, align 8, !dbg !317
  %12 = load i8*, i8** %7, align 8, !dbg !319
  %13 = load i64, i64* %8, align 8, !dbg !320
  %14 = call signext i8 @DynBuf_Append(%struct.DynBuf* %11, i8* %12, i64 %13), !dbg !321
  %15 = icmp ne i8 %14, 0, !dbg !321
  br i1 %15, label %19, label %16, !dbg !322

; <label>:16:                                     ; preds = %5
  %17 = load i8*, i8** %9, align 8, !dbg !323
  %18 = load i32, i32* %10, align 4, !dbg !325
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i8* %17, i32 %18) #7, !dbg !326
  unreachable, !dbg !326

; <label>:19:                                     ; preds = %5
  ret void, !dbg !327
}

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #5

; Function Attrs: nounwind uwtable
define signext i8 @DynBuf_Trim(%struct.DynBuf*) #0 !dbg !328 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !331, metadata !26), !dbg !332
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !333
  %4 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !334
  %5 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %4, i32 0, i32 1, !dbg !335
  %6 = load i64, i64* %5, align 8, !dbg !335
  %7 = call signext i8 @DynBufRealloc(%struct.DynBuf* %3, i64 %6), !dbg !336
  ret i8 %7, !dbg !337
}

; Function Attrs: nounwind uwtable
define signext i8 @DynBuf_Copy(%struct.DynBuf*, %struct.DynBuf*) #0 !dbg !338 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.DynBuf*, align 8
  %5 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %4, metadata !341, metadata !26), !dbg !342
  store %struct.DynBuf* %1, %struct.DynBuf** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %5, metadata !343, metadata !26), !dbg !344
  %6 = load %struct.DynBuf*, %struct.DynBuf** %4, align 8, !dbg !345
  %7 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %6, i32 0, i32 2, !dbg !346
  %8 = load i64, i64* %7, align 8, !dbg !346
  %9 = call noalias i8* @malloc(i64 %8) #6, !dbg !347
  %10 = load %struct.DynBuf*, %struct.DynBuf** %5, align 8, !dbg !348
  %11 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %10, i32 0, i32 0, !dbg !349
  store i8* %9, i8** %11, align 8, !dbg !350
  %12 = load %struct.DynBuf*, %struct.DynBuf** %5, align 8, !dbg !351
  %13 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %12, i32 0, i32 0, !dbg !353
  %14 = load i8*, i8** %13, align 8, !dbg !353
  %15 = icmp eq i8* %14, null, !dbg !354
  br i1 %15, label %16, label %17, !dbg !355

; <label>:16:                                     ; preds = %2
  store i8 0, i8* %3, align 1, !dbg !356
  br label %37, !dbg !356

; <label>:17:                                     ; preds = %2
  %18 = load %struct.DynBuf*, %struct.DynBuf** %4, align 8, !dbg !358
  %19 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %18, i32 0, i32 1, !dbg !359
  %20 = load i64, i64* %19, align 8, !dbg !359
  %21 = load %struct.DynBuf*, %struct.DynBuf** %5, align 8, !dbg !360
  %22 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %21, i32 0, i32 1, !dbg !361
  store i64 %20, i64* %22, align 8, !dbg !362
  %23 = load %struct.DynBuf*, %struct.DynBuf** %4, align 8, !dbg !363
  %24 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %23, i32 0, i32 2, !dbg !364
  %25 = load i64, i64* %24, align 8, !dbg !364
  %26 = load %struct.DynBuf*, %struct.DynBuf** %5, align 8, !dbg !365
  %27 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %26, i32 0, i32 2, !dbg !366
  store i64 %25, i64* %27, align 8, !dbg !367
  %28 = load %struct.DynBuf*, %struct.DynBuf** %5, align 8, !dbg !368
  %29 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %28, i32 0, i32 0, !dbg !369
  %30 = load i8*, i8** %29, align 8, !dbg !369
  %31 = load %struct.DynBuf*, %struct.DynBuf** %4, align 8, !dbg !370
  %32 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %31, i32 0, i32 0, !dbg !371
  %33 = load i8*, i8** %32, align 8, !dbg !371
  %34 = load %struct.DynBuf*, %struct.DynBuf** %4, align 8, !dbg !372
  %35 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %34, i32 0, i32 1, !dbg !373
  %36 = load i64, i64* %35, align 8, !dbg !373
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %33, i64 %36, i32 1, i1 false), !dbg !374
  store i8 1, i8* %3, align 1, !dbg !375
  br label %37, !dbg !375

; <label>:37:                                     ; preds = %17, %16
  %38 = load i8, i8* %3, align 1, !dbg !376
  ret i8 %38, !dbg !376
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "dynbuf.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line579")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!8 = distinct !DISubprogram(name: "DynBuf_Init", scope: !9, file: !9, line: 51, type: !10, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!9 = !DIFile(filename: "dynbuf.c", directory: "/home/lichi/Desktop/open-vm-tools/line579")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "DynBuf", file: !14, line: 40, baseType: !15)
!14 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dynbuf.h", directory: "/home/lichi/Desktop/open-vm-tools/line579")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DynBuf", file: !14, line: 36, size: 192, align: 64, elements: !16)
!16 = !{!17, !20, !24}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !15, file: !14, line: 37, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !15, file: !14, line: 38, baseType: !21, size: 64, align: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !22, line: 216, baseType: !23)
!22 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line579")
!23 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !15, file: !14, line: 39, baseType: !21, size: 64, align: 64, offset: 128)
!25 = !DILocalVariable(name: "b", arg: 1, scope: !8, file: !9, line: 51, type: !12)
!26 = !DIExpression()
!27 = !DILocation(line: 51, column: 21, scope: !8)
!28 = !DILocation(line: 55, column: 4, scope: !8)
!29 = !DILocation(line: 55, column: 7, scope: !8)
!30 = !DILocation(line: 55, column: 12, scope: !8)
!31 = !DILocation(line: 56, column: 4, scope: !8)
!32 = !DILocation(line: 56, column: 7, scope: !8)
!33 = !DILocation(line: 56, column: 12, scope: !8)
!34 = !DILocation(line: 57, column: 4, scope: !8)
!35 = !DILocation(line: 57, column: 7, scope: !8)
!36 = !DILocation(line: 57, column: 17, scope: !8)
!37 = !DILocation(line: 58, column: 1, scope: !8)
!38 = distinct !DISubprogram(name: "DynBuf_InitWithMemory", scope: !9, file: !9, line: 79, type: !39, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !12, !21, !4}
!41 = !DILocalVariable(name: "b", arg: 1, scope: !38, file: !9, line: 79, type: !12)
!42 = !DILocation(line: 79, column: 31, scope: !38)
!43 = !DILocalVariable(name: "dataSize", arg: 2, scope: !38, file: !9, line: 80, type: !21)
!44 = !DILocation(line: 80, column: 30, scope: !38)
!45 = !DILocalVariable(name: "data", arg: 3, scope: !38, file: !9, line: 81, type: !4)
!46 = !DILocation(line: 81, column: 29, scope: !38)
!47 = !DILocation(line: 87, column: 4, scope: !38)
!48 = !DILocation(line: 87, column: 7, scope: !38)
!49 = !DILocation(line: 87, column: 12, scope: !38)
!50 = !DILocation(line: 88, column: 14, scope: !38)
!51 = !DILocation(line: 88, column: 4, scope: !38)
!52 = !DILocation(line: 88, column: 7, scope: !38)
!53 = !DILocation(line: 88, column: 12, scope: !38)
!54 = !DILocation(line: 89, column: 19, scope: !38)
!55 = !DILocation(line: 89, column: 4, scope: !38)
!56 = !DILocation(line: 89, column: 7, scope: !38)
!57 = !DILocation(line: 89, column: 17, scope: !38)
!58 = !DILocation(line: 90, column: 1, scope: !38)
!59 = distinct !DISubprogram(name: "DynBuf_Destroy", scope: !9, file: !9, line: 110, type: !10, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!60 = !DILocalVariable(name: "b", arg: 1, scope: !59, file: !9, line: 110, type: !12)
!61 = !DILocation(line: 110, column: 24, scope: !59)
!62 = !DILocation(line: 114, column: 9, scope: !59)
!63 = !DILocation(line: 114, column: 12, scope: !59)
!64 = !DILocation(line: 114, column: 4, scope: !59)
!65 = !DILocation(line: 115, column: 16, scope: !59)
!66 = !DILocation(line: 115, column: 4, scope: !59)
!67 = !DILocation(line: 116, column: 1, scope: !59)
!68 = distinct !DISubprogram(name: "DynBuf_Attach", scope: !9, file: !9, line: 137, type: !39, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!69 = !DILocalVariable(name: "b", arg: 1, scope: !68, file: !9, line: 137, type: !12)
!70 = !DILocation(line: 137, column: 23, scope: !68)
!71 = !DILocalVariable(name: "size", arg: 2, scope: !68, file: !9, line: 138, type: !21)
!72 = !DILocation(line: 138, column: 22, scope: !68)
!73 = !DILocalVariable(name: "data", arg: 3, scope: !68, file: !9, line: 139, type: !4)
!74 = !DILocation(line: 139, column: 21, scope: !68)
!75 = !DILocation(line: 144, column: 9, scope: !68)
!76 = !DILocation(line: 144, column: 12, scope: !68)
!77 = !DILocation(line: 144, column: 4, scope: !68)
!78 = !DILocation(line: 145, column: 14, scope: !68)
!79 = !DILocation(line: 145, column: 4, scope: !68)
!80 = !DILocation(line: 145, column: 7, scope: !68)
!81 = !DILocation(line: 145, column: 12, scope: !68)
!82 = !DILocation(line: 146, column: 29, scope: !68)
!83 = !DILocation(line: 146, column: 14, scope: !68)
!84 = !DILocation(line: 146, column: 17, scope: !68)
!85 = !DILocation(line: 146, column: 27, scope: !68)
!86 = !DILocation(line: 146, column: 4, scope: !68)
!87 = !DILocation(line: 146, column: 7, scope: !68)
!88 = !DILocation(line: 146, column: 12, scope: !68)
!89 = !DILocation(line: 147, column: 1, scope: !68)
!90 = distinct !DISubprogram(name: "DynBuf_Detach", scope: !9, file: !9, line: 168, type: !91, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!91 = !DISubroutineType(types: !92)
!92 = !{!4, !12}
!93 = !DILocalVariable(name: "b", arg: 1, scope: !90, file: !9, line: 168, type: !12)
!94 = !DILocation(line: 168, column: 23, scope: !90)
!95 = !DILocalVariable(name: "data", scope: !90, file: !9, line: 170, type: !4)
!96 = !DILocation(line: 170, column: 10, scope: !90)
!97 = !DILocation(line: 174, column: 11, scope: !90)
!98 = !DILocation(line: 174, column: 14, scope: !90)
!99 = !DILocation(line: 174, column: 9, scope: !90)
!100 = !DILocation(line: 175, column: 4, scope: !90)
!101 = !DILocation(line: 175, column: 7, scope: !90)
!102 = !DILocation(line: 175, column: 12, scope: !90)
!103 = !DILocation(line: 176, column: 4, scope: !90)
!104 = !DILocation(line: 176, column: 7, scope: !90)
!105 = !DILocation(line: 176, column: 17, scope: !90)
!106 = !DILocation(line: 178, column: 11, scope: !90)
!107 = !DILocation(line: 178, column: 4, scope: !90)
!108 = distinct !DISubprogram(name: "DynBuf_DetachString", scope: !9, file: !9, line: 201, type: !109, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!109 = !DISubroutineType(types: !110)
!110 = !{!18, !12}
!111 = !DILocalVariable(name: "b", arg: 1, scope: !108, file: !9, line: 201, type: !12)
!112 = !DILocation(line: 201, column: 29, scope: !108)
!113 = !DILocalVariable(name: "data", scope: !108, file: !9, line: 203, type: !18)
!114 = !DILocation(line: 203, column: 10, scope: !108)
!115 = !DILocation(line: 203, column: 34, scope: !108)
!116 = !DILocation(line: 203, column: 17, scope: !108)
!117 = !DILocation(line: 204, column: 18, scope: !108)
!118 = !DILocation(line: 204, column: 4, scope: !108)
!119 = !DILocation(line: 205, column: 11, scope: !108)
!120 = !DILocation(line: 205, column: 4, scope: !108)
!121 = distinct !DISubprogram(name: "DynBuf_GetString", scope: !14, file: !14, line: 141, type: !109, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!122 = !DILocalVariable(name: "b", arg: 1, scope: !121, file: !14, line: 141, type: !12)
!123 = !DILocation(line: 141, column: 26, scope: !121)
!124 = !DILocation(line: 145, column: 8, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !14, line: 145, column: 8)
!126 = !DILocation(line: 145, column: 11, scope: !125)
!127 = !DILocation(line: 145, column: 19, scope: !125)
!128 = !DILocation(line: 145, column: 22, scope: !125)
!129 = !DILocation(line: 145, column: 16, scope: !125)
!130 = !DILocation(line: 145, column: 8, scope: !121)
!131 = !DILocation(line: 146, column: 48, scope: !132)
!132 = distinct !DILexicalBlock(scope: !133, file: !14, line: 146, column: 13)
!133 = distinct !DILexicalBlock(scope: !134, file: !14, line: 146, column: 8)
!134 = distinct !DILexicalBlock(scope: !125, file: !14, line: 145, column: 33)
!135 = !DILocation(line: 146, column: 51, scope: !132)
!136 = !DILocation(line: 146, column: 54, scope: !132)
!137 = !DILocation(line: 146, column: 59, scope: !132)
!138 = !DILocation(line: 146, column: 33, scope: !132)
!139 = !DILocation(line: 146, column: 31, scope: !132)
!140 = !DILocation(line: 146, column: 30, scope: !132)
!141 = !DILocation(line: 146, column: 13, scope: !132)
!142 = !DILocation(line: 146, column: 13, scope: !133)
!143 = !DILocation(line: 146, column: 73, scope: !144)
!144 = !DILexicalBlockFile(scope: !145, file: !14, discriminator: 1)
!145 = distinct !DILexicalBlock(scope: !132, file: !14, line: 146, column: 71)
!146 = !DILocation(line: 147, column: 4, scope: !134)
!147 = !DILocation(line: 148, column: 12, scope: !121)
!148 = !DILocation(line: 148, column: 15, scope: !121)
!149 = !DILocation(line: 148, column: 4, scope: !121)
!150 = !DILocation(line: 148, column: 7, scope: !121)
!151 = !DILocation(line: 148, column: 21, scope: !121)
!152 = !DILocation(line: 149, column: 11, scope: !121)
!153 = !DILocation(line: 149, column: 14, scope: !121)
!154 = !DILocation(line: 149, column: 4, scope: !121)
!155 = distinct !DISubprogram(name: "DynBuf_Enlarge", scope: !9, file: !9, line: 267, type: !156, isLocal: false, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!156 = !DISubroutineType(types: !157)
!157 = !{!158, !12, !21}
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !159, line: 230, baseType: !19)
!159 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line579")
!160 = !DILocalVariable(name: "b", arg: 1, scope: !155, file: !9, line: 267, type: !12)
!161 = !DILocation(line: 267, column: 24, scope: !155)
!162 = !DILocalVariable(name: "minSize", arg: 2, scope: !155, file: !9, line: 268, type: !21)
!163 = !DILocation(line: 268, column: 23, scope: !155)
!164 = !DILocalVariable(name: "newAllocated", scope: !155, file: !9, line: 270, type: !21)
!165 = !DILocation(line: 270, column: 11, scope: !155)
!166 = !DILocation(line: 274, column: 19, scope: !155)
!167 = !DILocation(line: 274, column: 22, scope: !155)
!168 = !DILocation(line: 283, column: 26, scope: !155)
!169 = !DILocation(line: 283, column: 29, scope: !155)
!170 = !DILocation(line: 283, column: 39, scope: !155)
!171 = !DILocation(line: 283, column: 54, scope: !172)
!172 = !DILexicalBlockFile(scope: !155, file: !9, discriminator: 1)
!173 = !DILocation(line: 283, column: 57, scope: !172)
!174 = !DILocation(line: 283, column: 67, scope: !172)
!175 = !DILocation(line: 283, column: 26, scope: !172)
!176 = !DILocation(line: 284, column: 54, scope: !155)
!177 = !DILocation(line: 284, column: 57, scope: !155)
!178 = !DILocation(line: 284, column: 67, scope: !155)
!179 = !DILocation(line: 283, column: 26, scope: !180)
!180 = !DILexicalBlockFile(scope: !155, file: !9, discriminator: 2)
!181 = !DILocation(line: 283, column: 26, scope: !182)
!182 = !DILexicalBlockFile(scope: !155, file: !9, discriminator: 3)
!183 = !DILocation(line: 274, column: 19, scope: !172)
!184 = !DILocation(line: 274, column: 19, scope: !180)
!185 = !DILocation(line: 274, column: 19, scope: !182)
!186 = !DILocation(line: 274, column: 17, scope: !182)
!187 = !DILocation(line: 298, column: 8, scope: !188)
!188 = distinct !DILexicalBlock(scope: !155, file: !9, line: 298, column: 8)
!189 = !DILocation(line: 298, column: 18, scope: !188)
!190 = !DILocation(line: 298, column: 16, scope: !188)
!191 = !DILocation(line: 298, column: 8, scope: !155)
!192 = !DILocation(line: 299, column: 22, scope: !193)
!193 = distinct !DILexicalBlock(scope: !188, file: !9, line: 298, column: 32)
!194 = !DILocation(line: 299, column: 20, scope: !193)
!195 = !DILocation(line: 300, column: 4, scope: !193)
!196 = !DILocation(line: 308, column: 8, scope: !197)
!197 = distinct !DILexicalBlock(scope: !155, file: !9, line: 308, column: 8)
!198 = !DILocation(line: 308, column: 23, scope: !197)
!199 = !DILocation(line: 308, column: 26, scope: !197)
!200 = !DILocation(line: 308, column: 21, scope: !197)
!201 = !DILocation(line: 308, column: 8, scope: !155)
!202 = !DILocation(line: 309, column: 7, scope: !203)
!203 = distinct !DILexicalBlock(scope: !197, file: !9, line: 308, column: 37)
!204 = !DILocation(line: 312, column: 25, scope: !155)
!205 = !DILocation(line: 312, column: 28, scope: !155)
!206 = !DILocation(line: 312, column: 11, scope: !155)
!207 = !DILocation(line: 312, column: 4, scope: !155)
!208 = !DILocation(line: 313, column: 1, scope: !155)
!209 = distinct !DISubprogram(name: "DynBufRealloc", scope: !9, file: !9, line: 227, type: !156, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!210 = !DILocalVariable(name: "b", arg: 1, scope: !209, file: !9, line: 227, type: !12)
!211 = !DILocation(line: 227, column: 23, scope: !209)
!212 = !DILocalVariable(name: "newAllocated", arg: 2, scope: !209, file: !9, line: 228, type: !21)
!213 = !DILocation(line: 228, column: 22, scope: !209)
!214 = !DILocalVariable(name: "new_data", scope: !209, file: !9, line: 230, type: !4)
!215 = !DILocation(line: 230, column: 10, scope: !209)
!216 = !DILocation(line: 234, column: 23, scope: !209)
!217 = !DILocation(line: 234, column: 26, scope: !209)
!218 = !DILocation(line: 234, column: 32, scope: !209)
!219 = !DILocation(line: 234, column: 15, scope: !209)
!220 = !DILocation(line: 234, column: 13, scope: !209)
!221 = !DILocation(line: 235, column: 8, scope: !222)
!222 = distinct !DILexicalBlock(scope: !209, file: !9, line: 235, column: 8)
!223 = !DILocation(line: 235, column: 17, scope: !222)
!224 = !DILocation(line: 235, column: 24, scope: !222)
!225 = !DILocation(line: 235, column: 27, scope: !226)
!226 = !DILexicalBlockFile(scope: !222, file: !9, discriminator: 1)
!227 = !DILocation(line: 235, column: 8, scope: !226)
!228 = !DILocation(line: 237, column: 7, scope: !229)
!229 = distinct !DILexicalBlock(scope: !222, file: !9, line: 235, column: 41)
!230 = !DILocation(line: 240, column: 14, scope: !209)
!231 = !DILocation(line: 240, column: 4, scope: !209)
!232 = !DILocation(line: 240, column: 7, scope: !209)
!233 = !DILocation(line: 240, column: 12, scope: !209)
!234 = !DILocation(line: 241, column: 19, scope: !209)
!235 = !DILocation(line: 241, column: 4, scope: !209)
!236 = !DILocation(line: 241, column: 7, scope: !209)
!237 = !DILocation(line: 241, column: 17, scope: !209)
!238 = !DILocation(line: 243, column: 4, scope: !209)
!239 = !DILocation(line: 244, column: 1, scope: !209)
!240 = distinct !DISubprogram(name: "DynBuf_Append", scope: !9, file: !9, line: 335, type: !241, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!241 = !DISubroutineType(types: !242)
!242 = !{!158, !12, !243, !21}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!245 = !DILocalVariable(name: "b", arg: 1, scope: !240, file: !9, line: 335, type: !12)
!246 = !DILocation(line: 335, column: 23, scope: !240)
!247 = !DILocalVariable(name: "data", arg: 2, scope: !240, file: !9, line: 336, type: !243)
!248 = !DILocation(line: 336, column: 27, scope: !240)
!249 = !DILocalVariable(name: "size", arg: 3, scope: !240, file: !9, line: 337, type: !21)
!250 = !DILocation(line: 337, column: 22, scope: !240)
!251 = !DILocalVariable(name: "new_size", scope: !240, file: !9, line: 339, type: !21)
!252 = !DILocation(line: 339, column: 11, scope: !240)
!253 = !DILocation(line: 343, column: 8, scope: !254)
!254 = distinct !DILexicalBlock(scope: !240, file: !9, line: 343, column: 8)
!255 = !DILocation(line: 343, column: 13, scope: !254)
!256 = !DILocation(line: 343, column: 8, scope: !240)
!257 = !DILocation(line: 344, column: 7, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !9, line: 343, column: 19)
!259 = !DILocation(line: 349, column: 15, scope: !240)
!260 = !DILocation(line: 349, column: 18, scope: !240)
!261 = !DILocation(line: 349, column: 25, scope: !240)
!262 = !DILocation(line: 349, column: 23, scope: !240)
!263 = !DILocation(line: 349, column: 13, scope: !240)
!264 = !DILocation(line: 351, column: 8, scope: !265)
!265 = distinct !DILexicalBlock(scope: !240, file: !9, line: 351, column: 8)
!266 = !DILocation(line: 351, column: 19, scope: !265)
!267 = !DILocation(line: 351, column: 22, scope: !265)
!268 = !DILocation(line: 351, column: 17, scope: !265)
!269 = !DILocation(line: 351, column: 8, scope: !240)
!270 = !DILocation(line: 352, column: 7, scope: !271)
!271 = distinct !DILexicalBlock(scope: !265, file: !9, line: 351, column: 28)
!272 = !DILocation(line: 355, column: 8, scope: !273)
!273 = distinct !DILexicalBlock(scope: !240, file: !9, line: 355, column: 8)
!274 = !DILocation(line: 355, column: 19, scope: !273)
!275 = !DILocation(line: 355, column: 22, scope: !273)
!276 = !DILocation(line: 355, column: 17, scope: !273)
!277 = !DILocation(line: 355, column: 8, scope: !240)
!278 = !DILocation(line: 357, column: 27, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !9, line: 357, column: 11)
!280 = distinct !DILexicalBlock(scope: !273, file: !9, line: 355, column: 33)
!281 = !DILocation(line: 357, column: 30, scope: !279)
!282 = !DILocation(line: 357, column: 12, scope: !279)
!283 = !DILocation(line: 357, column: 11, scope: !280)
!284 = !DILocation(line: 358, column: 10, scope: !285)
!285 = distinct !DILexicalBlock(scope: !279, file: !9, line: 357, column: 41)
!286 = !DILocation(line: 360, column: 4, scope: !280)
!287 = !DILocation(line: 362, column: 11, scope: !240)
!288 = !DILocation(line: 362, column: 14, scope: !240)
!289 = !DILocation(line: 362, column: 21, scope: !240)
!290 = !DILocation(line: 362, column: 24, scope: !240)
!291 = !DILocation(line: 362, column: 19, scope: !240)
!292 = !DILocation(line: 362, column: 30, scope: !240)
!293 = !DILocation(line: 362, column: 36, scope: !240)
!294 = !DILocation(line: 362, column: 4, scope: !240)
!295 = !DILocation(line: 363, column: 14, scope: !240)
!296 = !DILocation(line: 363, column: 4, scope: !240)
!297 = !DILocation(line: 363, column: 7, scope: !240)
!298 = !DILocation(line: 363, column: 12, scope: !240)
!299 = !DILocation(line: 365, column: 4, scope: !240)
!300 = !DILocation(line: 366, column: 1, scope: !240)
!301 = distinct !DISubprogram(name: "DynBuf_SafeInternalAppend", scope: !9, file: !9, line: 388, type: !302, isLocal: false, isDefinition: true, scopeLine: 393, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !12, !243, !21, !304, !306}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!306 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!307 = !DILocalVariable(name: "b", arg: 1, scope: !301, file: !9, line: 388, type: !12)
!308 = !DILocation(line: 388, column: 35, scope: !301)
!309 = !DILocalVariable(name: "data", arg: 2, scope: !301, file: !9, line: 389, type: !243)
!310 = !DILocation(line: 389, column: 39, scope: !301)
!311 = !DILocalVariable(name: "size", arg: 3, scope: !301, file: !9, line: 390, type: !21)
!312 = !DILocation(line: 390, column: 34, scope: !301)
!313 = !DILocalVariable(name: "file", arg: 4, scope: !301, file: !9, line: 391, type: !304)
!314 = !DILocation(line: 391, column: 39, scope: !301)
!315 = !DILocalVariable(name: "lineno", arg: 5, scope: !301, file: !9, line: 392, type: !306)
!316 = !DILocation(line: 392, column: 40, scope: !301)
!317 = !DILocation(line: 394, column: 23, scope: !318)
!318 = distinct !DILexicalBlock(scope: !301, file: !9, line: 394, column: 8)
!319 = !DILocation(line: 394, column: 26, scope: !318)
!320 = !DILocation(line: 394, column: 32, scope: !318)
!321 = !DILocation(line: 394, column: 9, scope: !318)
!322 = !DILocation(line: 394, column: 8, scope: !301)
!323 = !DILocation(line: 396, column: 13, scope: !324)
!324 = distinct !DILexicalBlock(scope: !318, file: !9, line: 394, column: 39)
!325 = !DILocation(line: 396, column: 19, scope: !324)
!326 = !DILocation(line: 395, column: 7, scope: !324)
!327 = !DILocation(line: 398, column: 1, scope: !301)
!328 = distinct !DISubprogram(name: "DynBuf_Trim", scope: !9, file: !9, line: 419, type: !329, isLocal: false, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!329 = !DISubroutineType(types: !330)
!330 = !{!158, !12}
!331 = !DILocalVariable(name: "b", arg: 1, scope: !328, file: !9, line: 419, type: !12)
!332 = !DILocation(line: 419, column: 21, scope: !328)
!333 = !DILocation(line: 423, column: 25, scope: !328)
!334 = !DILocation(line: 423, column: 28, scope: !328)
!335 = !DILocation(line: 423, column: 31, scope: !328)
!336 = !DILocation(line: 423, column: 11, scope: !328)
!337 = !DILocation(line: 423, column: 4, scope: !328)
!338 = distinct !DISubprogram(name: "DynBuf_Copy", scope: !9, file: !9, line: 447, type: !339, isLocal: false, isDefinition: true, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!339 = !DISubroutineType(types: !340)
!340 = !{!158, !12, !12}
!341 = !DILocalVariable(name: "src", arg: 1, scope: !338, file: !9, line: 447, type: !12)
!342 = !DILocation(line: 447, column: 21, scope: !338)
!343 = !DILocalVariable(name: "dest", arg: 2, scope: !338, file: !9, line: 448, type: !12)
!344 = !DILocation(line: 448, column: 21, scope: !338)
!345 = !DILocation(line: 454, column: 24, scope: !338)
!346 = !DILocation(line: 454, column: 29, scope: !338)
!347 = !DILocation(line: 454, column: 17, scope: !338)
!348 = !DILocation(line: 454, column: 4, scope: !338)
!349 = !DILocation(line: 454, column: 10, scope: !338)
!350 = !DILocation(line: 454, column: 15, scope: !338)
!351 = !DILocation(line: 456, column: 8, scope: !352)
!352 = distinct !DILexicalBlock(scope: !338, file: !9, line: 456, column: 8)
!353 = !DILocation(line: 456, column: 14, scope: !352)
!354 = !DILocation(line: 456, column: 19, scope: !352)
!355 = !DILocation(line: 456, column: 8, scope: !338)
!356 = !DILocation(line: 457, column: 7, scope: !357)
!357 = distinct !DILexicalBlock(scope: !352, file: !9, line: 456, column: 27)
!358 = !DILocation(line: 460, column: 17, scope: !338)
!359 = !DILocation(line: 460, column: 22, scope: !338)
!360 = !DILocation(line: 460, column: 4, scope: !338)
!361 = !DILocation(line: 460, column: 10, scope: !338)
!362 = !DILocation(line: 460, column: 15, scope: !338)
!363 = !DILocation(line: 461, column: 22, scope: !338)
!364 = !DILocation(line: 461, column: 27, scope: !338)
!365 = !DILocation(line: 461, column: 4, scope: !338)
!366 = !DILocation(line: 461, column: 10, scope: !338)
!367 = !DILocation(line: 461, column: 20, scope: !338)
!368 = !DILocation(line: 463, column: 11, scope: !338)
!369 = !DILocation(line: 463, column: 17, scope: !338)
!370 = !DILocation(line: 463, column: 23, scope: !338)
!371 = !DILocation(line: 463, column: 28, scope: !338)
!372 = !DILocation(line: 463, column: 34, scope: !338)
!373 = !DILocation(line: 463, column: 39, scope: !338)
!374 = !DILocation(line: 463, column: 4, scope: !338)
!375 = !DILocation(line: 465, column: 4, scope: !338)
!376 = !DILocation(line: 466, column: 1, scope: !338)
