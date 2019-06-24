; ModuleID = './hgfsBd.o.i'
source_filename = "./hgfsBd.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RpcOut = type opaque

@.str = private unnamed_addr constant [49 x i8] c"HgfsBd_GetChannel: Failed to allocate an RpcOut\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"f \00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"HgfsBd_Dispatch: RpcOut_send returned failure\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"HgfsBd_GetBuf: Failed to allocate a bd buffer\0A\00", align 1

; Function Attrs: nounwind uwtable
define i8* @HgfsBd_GetBuf() #0 !dbg !10 {
  %1 = call i8* @HgfsBdGetBufInt(i64 6144), !dbg !14
  ret i8* %1, !dbg !15
}

; Function Attrs: nounwind uwtable
define internal i8* @HgfsBdGetBufInt(i64) #0 !dbg !16 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !22, metadata !23), !dbg !24
  call void @llvm.dbg.declare(metadata i64* %4, metadata !25, metadata !23), !dbg !26
  %6 = load i64, i64* %3, align 8, !dbg !27
  %7 = add i64 %6, 2, !dbg !28
  store i64 %7, i64* %4, align 8, !dbg !26
  call void @llvm.dbg.declare(metadata i8** %5, metadata !29, metadata !23), !dbg !30
  %8 = load i64, i64* %4, align 8, !dbg !31
  %9 = call noalias i8* @calloc(i64 1, i64 %8) #5, !dbg !32
  store i8* %9, i8** %5, align 8, !dbg !30
  %10 = load i8*, i8** %5, align 8, !dbg !33
  %11 = icmp ne i8* %10, null, !dbg !33
  br i1 %11, label %13, label %12, !dbg !35

; <label>:12:                                     ; preds = %1
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i32 0, i32 0)), !dbg !36
  store i8* null, i8** %2, align 8, !dbg !38
  br label %19, !dbg !38

; <label>:13:                                     ; preds = %1
  %14 = load i8*, i8** %5, align 8, !dbg !39
  %15 = load i64, i64* %4, align 8, !dbg !40
  %16 = call i8* @Str_Strcpy(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i64 %15), !dbg !41
  %17 = load i8*, i8** %5, align 8, !dbg !42
  %18 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !43
  store i8* %18, i8** %2, align 8, !dbg !44
  br label %19, !dbg !44

; <label>:19:                                     ; preds = %13, %12
  %20 = load i8*, i8** %2, align 8, !dbg !45
  ret i8* %20, !dbg !45
}

; Function Attrs: nounwind uwtable
define i8* @HgfsBd_GetLargeBuf() #0 !dbg !46 {
  %1 = call i8* @HgfsBdGetBufInt(i64 63488), !dbg !47
  ret i8* %1, !dbg !48
}

; Function Attrs: nounwind uwtable
define void @HgfsBd_PutBuf(i8*) #0 !dbg !49 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !52, metadata !23), !dbg !53
  %3 = load i8*, i8** %2, align 8, !dbg !54
  %4 = getelementptr inbounds i8, i8* %3, i64 -2, !dbg !55
  call void @free(i8* %4) #5, !dbg !56
  ret void, !dbg !57
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.RpcOut* @HgfsBd_GetChannel() #0 !dbg !58 {
  %1 = alloca %struct.RpcOut*, align 8
  %2 = alloca %struct.RpcOut*, align 8
  %3 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata %struct.RpcOut** %2, metadata !65, metadata !23), !dbg !66
  %4 = call %struct.RpcOut* @RpcOut_Construct(), !dbg !67
  store %struct.RpcOut* %4, %struct.RpcOut** %2, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata i8* %3, metadata !68, metadata !23), !dbg !71
  %5 = load %struct.RpcOut*, %struct.RpcOut** %2, align 8, !dbg !72
  %6 = icmp ne %struct.RpcOut* %5, null, !dbg !72
  br i1 %6, label %8, label %7, !dbg !74

; <label>:7:                                      ; preds = %0
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0)), !dbg !75
  store %struct.RpcOut* null, %struct.RpcOut** %1, align 8, !dbg !77
  br label %18, !dbg !77

; <label>:8:                                      ; preds = %0
  %9 = load %struct.RpcOut*, %struct.RpcOut** %2, align 8, !dbg !78
  %10 = call signext i8 @RpcOut_start(%struct.RpcOut* %9), !dbg !79
  store i8 %10, i8* %3, align 1, !dbg !80
  %11 = load i8, i8* %3, align 1, !dbg !81
  %12 = sext i8 %11 to i32, !dbg !81
  %13 = icmp eq i32 %12, 0, !dbg !83
  br i1 %13, label %14, label %16, !dbg !84

; <label>:14:                                     ; preds = %8
  %15 = load %struct.RpcOut*, %struct.RpcOut** %2, align 8, !dbg !85
  call void @RpcOut_Destruct(%struct.RpcOut* %15), !dbg !87
  store %struct.RpcOut* null, %struct.RpcOut** %1, align 8, !dbg !88
  br label %18, !dbg !88

; <label>:16:                                     ; preds = %8
  %17 = load %struct.RpcOut*, %struct.RpcOut** %2, align 8, !dbg !89
  store %struct.RpcOut* %17, %struct.RpcOut** %1, align 8, !dbg !90
  br label %18, !dbg !90

; <label>:18:                                     ; preds = %16, %14, %7
  %19 = load %struct.RpcOut*, %struct.RpcOut** %1, align 8, !dbg !91
  ret %struct.RpcOut* %19, !dbg !91
}

declare %struct.RpcOut* @RpcOut_Construct() #3

declare void @Debug(i8*, ...) #3

declare signext i8 @RpcOut_start(%struct.RpcOut*) #3

declare void @RpcOut_Destruct(%struct.RpcOut*) #3

; Function Attrs: nounwind uwtable
define signext i8 @HgfsBd_CloseChannel(%struct.RpcOut*) #0 !dbg !92 {
  %2 = alloca %struct.RpcOut*, align 8
  %3 = alloca i8, align 1
  store %struct.RpcOut* %0, %struct.RpcOut** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcOut** %2, metadata !95, metadata !23), !dbg !96
  call void @llvm.dbg.declare(metadata i8* %3, metadata !97, metadata !23), !dbg !98
  %4 = load %struct.RpcOut*, %struct.RpcOut** %2, align 8, !dbg !99
  %5 = call signext i8 @RpcOut_stop(%struct.RpcOut* %4), !dbg !100
  store i8 %5, i8* %3, align 1, !dbg !101
  %6 = load i8, i8* %3, align 1, !dbg !102
  %7 = sext i8 %6 to i32, !dbg !102
  %8 = icmp eq i32 %7, 1, !dbg !104
  br i1 %8, label %9, label %11, !dbg !105

; <label>:9:                                      ; preds = %1
  %10 = load %struct.RpcOut*, %struct.RpcOut** %2, align 8, !dbg !106
  call void @RpcOut_Destruct(%struct.RpcOut* %10), !dbg !108
  br label %11, !dbg !109

; <label>:11:                                     ; preds = %9, %1
  %12 = load i8, i8* %3, align 1, !dbg !110
  ret i8 %12, !dbg !111
}

declare signext i8 @RpcOut_stop(%struct.RpcOut*) #3

; Function Attrs: nounwind uwtable
define i32 @HgfsBd_Dispatch(%struct.RpcOut*, i8*, i64*, i8**) #0 !dbg !112 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.RpcOut*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.RpcOut* %0, %struct.RpcOut** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcOut** %6, metadata !120, metadata !23), !dbg !121
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !122, metadata !23), !dbg !123
  store i64* %2, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !124, metadata !23), !dbg !125
  store i8** %3, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !126, metadata !23), !dbg !127
  call void @llvm.dbg.declare(metadata i8* %10, metadata !128, metadata !23), !dbg !129
  call void @llvm.dbg.declare(metadata i8* %11, metadata !130, metadata !23), !dbg !131
  call void @llvm.dbg.declare(metadata i8** %12, metadata !132, metadata !23), !dbg !133
  call void @llvm.dbg.declare(metadata i64* %13, metadata !134, metadata !23), !dbg !135
  call void @llvm.dbg.declare(metadata i8** %14, metadata !136, metadata !23), !dbg !137
  %15 = load i8*, i8** %7, align 8, !dbg !138
  %16 = getelementptr inbounds i8, i8* %15, i64 -2, !dbg !139
  store i8* %16, i8** %14, align 8, !dbg !137
  %17 = load i8*, i8** %14, align 8, !dbg !140
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i64 2, i32 1, i1 false), !dbg !141
  %18 = load %struct.RpcOut*, %struct.RpcOut** %6, align 8, !dbg !142
  %19 = load i8*, i8** %14, align 8, !dbg !143
  %20 = load i64*, i64** %8, align 8, !dbg !144
  %21 = load i64, i64* %20, align 8, !dbg !145
  %22 = add i64 %21, 2, !dbg !146
  %23 = call signext i8 @RpcOut_send(%struct.RpcOut* %18, i8* %19, i64 %22, i8* %11, i8** %12, i64* %13), !dbg !147
  store i8 %23, i8* %10, align 1, !dbg !148
  %24 = load i8, i8* %10, align 1, !dbg !149
  %25 = icmp ne i8 %24, 0, !dbg !149
  br i1 %25, label %26, label %29, !dbg !151

; <label>:26:                                     ; preds = %4
  %27 = load i8, i8* %11, align 1, !dbg !152
  %28 = icmp ne i8 %27, 0, !dbg !152
  br i1 %28, label %30, label %29, !dbg !154

; <label>:29:                                     ; preds = %26, %4
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i32 0, i32 0)), !dbg !155
  store i32 -1, i32* %5, align 4, !dbg !157
  br label %35, !dbg !157

; <label>:30:                                     ; preds = %26
  %31 = load i8*, i8** %12, align 8, !dbg !158
  %32 = load i8**, i8*** %9, align 8, !dbg !159
  store i8* %31, i8** %32, align 8, !dbg !160
  %33 = load i64, i64* %13, align 8, !dbg !161
  %34 = load i64*, i64** %8, align 8, !dbg !162
  store i64 %33, i64* %34, align 8, !dbg !163
  store i32 0, i32* %5, align 4, !dbg !164
  br label %35, !dbg !164

; <label>:35:                                     ; preds = %30, %29
  %36 = load i32, i32* %5, align 4, !dbg !165
  ret i32 %36, !dbg !165
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare signext i8 @RpcOut_send(%struct.RpcOut*, i8*, i64, i8*, i8**, i64*) #3

; Function Attrs: nounwind uwtable
define signext i8 @HgfsBd_Enabled(%struct.RpcOut*, i8*) #0 !dbg !166 {
  %3 = alloca %struct.RpcOut*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.RpcOut* %0, %struct.RpcOut** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcOut** %3, metadata !169, metadata !23), !dbg !170
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !171, metadata !23), !dbg !172
  call void @llvm.dbg.declare(metadata i8** %5, metadata !173, metadata !23), !dbg !174
  call void @llvm.dbg.declare(metadata i64* %6, metadata !175, metadata !23), !dbg !176
  call void @llvm.dbg.declare(metadata i8* %7, metadata !177, metadata !23), !dbg !178
  call void @llvm.dbg.declare(metadata i8* %8, metadata !179, metadata !23), !dbg !180
  %9 = load %struct.RpcOut*, %struct.RpcOut** %3, align 8, !dbg !181
  %10 = load i8*, i8** %4, align 8, !dbg !182
  %11 = getelementptr inbounds i8, i8* %10, i64 -2, !dbg !183
  %12 = call signext i8 @RpcOut_send(%struct.RpcOut* %9, i8* %11, i64 2, i8* %8, i8** %5, i64* %6), !dbg !184
  store i8 %12, i8* %7, align 1, !dbg !185
  %13 = load i8, i8* %7, align 1, !dbg !186
  %14 = sext i8 %13 to i32, !dbg !186
  %15 = icmp ne i32 %14, 0, !dbg !186
  br i1 %15, label %16, label %21, !dbg !188

; <label>:16:                                     ; preds = %2
  %17 = load i8, i8* %8, align 1, !dbg !189
  %18 = sext i8 %17 to i32, !dbg !189
  %19 = icmp ne i32 %18, 0, !dbg !189
  br i1 %19, label %20, label %21, !dbg !191

; <label>:20:                                     ; preds = %16
  br label %21, !dbg !192

; <label>:21:                                     ; preds = %20, %16, %2
  %22 = load i8, i8* %7, align 1, !dbg !194
  %23 = sext i8 %22 to i32, !dbg !194
  %24 = icmp ne i32 %23, 0, !dbg !194
  br i1 %24, label %25, label %29, !dbg !195

; <label>:25:                                     ; preds = %21
  %26 = load i8, i8* %8, align 1, !dbg !196
  %27 = sext i8 %26 to i32, !dbg !196
  %28 = icmp ne i32 %27, 0, !dbg !198
  br label %29

; <label>:29:                                     ; preds = %25, %21
  %30 = phi i1 [ false, %21 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32, !dbg !199
  %32 = trunc i32 %31 to i8, !dbg !201
  ret i8 %32, !dbg !202
}

; Function Attrs: nounwind uwtable
define signext i8 @HgfsBd_OpenBackdoor(%struct.RpcOut**) #0 !dbg !203 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.RpcOut**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store %struct.RpcOut** %0, %struct.RpcOut*** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcOut*** %3, metadata !207, metadata !23), !dbg !208
  call void @llvm.dbg.declare(metadata i8** %4, metadata !209, metadata !23), !dbg !210
  store i8* null, i8** %4, align 8, !dbg !210
  call void @llvm.dbg.declare(metadata i8* %5, metadata !211, metadata !23), !dbg !212
  store i8 0, i8* %5, align 1, !dbg !212
  %6 = load %struct.RpcOut**, %struct.RpcOut*** %3, align 8, !dbg !213
  %7 = load %struct.RpcOut*, %struct.RpcOut** %6, align 8, !dbg !215
  %8 = icmp ne %struct.RpcOut* %7, null, !dbg !216
  br i1 %8, label %9, label %10, !dbg !217

; <label>:9:                                      ; preds = %1
  store i8 1, i8* %2, align 1, !dbg !218
  br label %49, !dbg !218

; <label>:10:                                     ; preds = %1
  %11 = call %struct.RpcOut* @HgfsBd_GetChannel(), !dbg !220
  %12 = load %struct.RpcOut**, %struct.RpcOut*** %3, align 8, !dbg !221
  store %struct.RpcOut* %11, %struct.RpcOut** %12, align 8, !dbg !222
  %13 = load %struct.RpcOut**, %struct.RpcOut*** %3, align 8, !dbg !223
  %14 = load %struct.RpcOut*, %struct.RpcOut** %13, align 8, !dbg !225
  %15 = icmp eq %struct.RpcOut* %14, null, !dbg !226
  br i1 %15, label %16, label %17, !dbg !227

; <label>:16:                                     ; preds = %10
  store i8 0, i8* %2, align 1, !dbg !228
  br label %49, !dbg !228

; <label>:17:                                     ; preds = %10
  %18 = call i8* @HgfsBd_GetBuf(), !dbg !230
  store i8* %18, i8** %4, align 8, !dbg !231
  %19 = load i8*, i8** %4, align 8, !dbg !232
  %20 = icmp eq i8* %19, null, !dbg !234
  br i1 %20, label %21, label %22, !dbg !235

; <label>:21:                                     ; preds = %17
  br label %30, !dbg !236

; <label>:22:                                     ; preds = %17
  %23 = load %struct.RpcOut**, %struct.RpcOut*** %3, align 8, !dbg !238
  %24 = load %struct.RpcOut*, %struct.RpcOut** %23, align 8, !dbg !240
  %25 = load i8*, i8** %4, align 8, !dbg !241
  %26 = call signext i8 @HgfsBd_Enabled(%struct.RpcOut* %24, i8* %25), !dbg !242
  %27 = icmp ne i8 %26, 0, !dbg !242
  br i1 %27, label %29, label %28, !dbg !243

; <label>:28:                                     ; preds = %22
  br label %30, !dbg !244

; <label>:29:                                     ; preds = %22
  store i8 1, i8* %5, align 1, !dbg !246
  br label %30, !dbg !247

; <label>:30:                                     ; preds = %29, %28, %21
  %31 = load i8*, i8** %4, align 8, !dbg !248
  %32 = icmp ne i8* %31, null, !dbg !250
  br i1 %32, label %33, label %35, !dbg !251

; <label>:33:                                     ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !252
  call void @HgfsBd_PutBuf(i8* %34), !dbg !254
  br label %35, !dbg !255

; <label>:35:                                     ; preds = %33, %30
  %36 = load i8, i8* %5, align 1, !dbg !256
  %37 = icmp ne i8 %36, 0, !dbg !256
  br i1 %37, label %47, label %38, !dbg !258

; <label>:38:                                     ; preds = %35
  %39 = load %struct.RpcOut**, %struct.RpcOut*** %3, align 8, !dbg !259
  %40 = load %struct.RpcOut*, %struct.RpcOut** %39, align 8, !dbg !261
  %41 = icmp ne %struct.RpcOut* %40, null, !dbg !262
  br i1 %41, label %42, label %47, !dbg !263

; <label>:42:                                     ; preds = %38
  %43 = load %struct.RpcOut**, %struct.RpcOut*** %3, align 8, !dbg !264
  %44 = load %struct.RpcOut*, %struct.RpcOut** %43, align 8, !dbg !266
  %45 = call signext i8 @HgfsBd_CloseChannel(%struct.RpcOut* %44), !dbg !267
  %46 = load %struct.RpcOut**, %struct.RpcOut*** %3, align 8, !dbg !268
  store %struct.RpcOut* null, %struct.RpcOut** %46, align 8, !dbg !269
  br label %47, !dbg !270

; <label>:47:                                     ; preds = %42, %38, %35
  %48 = load i8, i8* %5, align 1, !dbg !271
  store i8 %48, i8* %2, align 1, !dbg !272
  br label %49, !dbg !272

; <label>:49:                                     ; preds = %47, %16, %9
  %50 = load i8, i8* %2, align 1, !dbg !273
  ret i8 %50, !dbg !273
}

; Function Attrs: nounwind uwtable
define signext i8 @HgfsBd_CloseBackdoor(%struct.RpcOut**) #0 !dbg !274 {
  %2 = alloca %struct.RpcOut**, align 8
  %3 = alloca i8, align 1
  store %struct.RpcOut** %0, %struct.RpcOut*** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcOut*** %2, metadata !275, metadata !23), !dbg !276
  call void @llvm.dbg.declare(metadata i8* %3, metadata !277, metadata !23), !dbg !278
  store i8 1, i8* %3, align 1, !dbg !278
  %4 = load %struct.RpcOut**, %struct.RpcOut*** %2, align 8, !dbg !279
  %5 = load %struct.RpcOut*, %struct.RpcOut** %4, align 8, !dbg !281
  %6 = icmp ne %struct.RpcOut* %5, null, !dbg !282
  br i1 %6, label %7, label %15, !dbg !283

; <label>:7:                                      ; preds = %1
  %8 = load %struct.RpcOut**, %struct.RpcOut*** %2, align 8, !dbg !284
  %9 = load %struct.RpcOut*, %struct.RpcOut** %8, align 8, !dbg !287
  %10 = call signext i8 @HgfsBd_CloseChannel(%struct.RpcOut* %9), !dbg !288
  %11 = icmp ne i8 %10, 0, !dbg !288
  br i1 %11, label %13, label %12, !dbg !289

; <label>:12:                                     ; preds = %7
  store i8 0, i8* %3, align 1, !dbg !290
  br label %13, !dbg !292

; <label>:13:                                     ; preds = %12, %7
  %14 = load %struct.RpcOut**, %struct.RpcOut*** %2, align 8, !dbg !293
  store %struct.RpcOut* null, %struct.RpcOut** %14, align 8, !dbg !294
  br label %15, !dbg !295

; <label>:15:                                     ; preds = %13, %1
  %16 = load i8, i8* %3, align 1, !dbg !296
  ret i8 %16, !dbg !297
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare i8* @Str_Strcpy(i8*, i8*, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "hgfsBd.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line351")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!10 = distinct !DISubprogram(name: "HgfsBd_GetBuf", scope: !11, file: !11, line: 115, type: !12, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!11 = !DIFile(filename: "hgfsBd.c", directory: "/home/lichi/Desktop/open-vm-tools/line351")
!12 = !DISubroutineType(types: !13)
!13 = !{!5}
!14 = !DILocation(line: 117, column: 11, scope: !10)
!15 = !DILocation(line: 117, column: 4, scope: !10)
!16 = distinct !DISubprogram(name: "HgfsBdGetBufInt", scope: !11, file: !11, line: 77, type: !17, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{!5, !19}
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 216, baseType: !21)
!20 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line351")
!21 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!22 = !DILocalVariable(name: "bufSize", arg: 1, scope: !16, file: !11, line: 77, type: !19)
!23 = !DIExpression()
!24 = !DILocation(line: 77, column: 24, scope: !16)
!25 = !DILocalVariable(name: "len", scope: !16, file: !11, line: 84, type: !19)
!26 = !DILocation(line: 84, column: 11, scope: !16)
!27 = !DILocation(line: 84, column: 17, scope: !16)
!28 = !DILocation(line: 84, column: 25, scope: !16)
!29 = !DILocalVariable(name: "buf", scope: !16, file: !11, line: 85, type: !5)
!30 = !DILocation(line: 85, column: 10, scope: !16)
!31 = !DILocation(line: 85, column: 45, scope: !16)
!32 = !DILocation(line: 85, column: 24, scope: !16)
!33 = !DILocation(line: 87, column: 9, scope: !34)
!34 = distinct !DILexicalBlock(scope: !16, file: !11, line: 87, column: 8)
!35 = !DILocation(line: 87, column: 8, scope: !16)
!36 = !DILocation(line: 88, column: 7, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !11, line: 87, column: 14)
!38 = !DILocation(line: 89, column: 7, scope: !37)
!39 = !DILocation(line: 92, column: 15, scope: !16)
!40 = !DILocation(line: 92, column: 29, scope: !16)
!41 = !DILocation(line: 92, column: 4, scope: !16)
!42 = !DILocation(line: 94, column: 11, scope: !16)
!43 = !DILocation(line: 94, column: 15, scope: !16)
!44 = !DILocation(line: 94, column: 4, scope: !16)
!45 = !DILocation(line: 95, column: 1, scope: !16)
!46 = distinct !DISubprogram(name: "HgfsBd_GetLargeBuf", scope: !11, file: !11, line: 137, type: !12, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!47 = !DILocation(line: 139, column: 11, scope: !46)
!48 = !DILocation(line: 139, column: 4, scope: !46)
!49 = distinct !DISubprogram(name: "HgfsBd_PutBuf", scope: !11, file: !11, line: 160, type: !50, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !5}
!52 = !DILocalVariable(name: "buf", arg: 1, scope: !49, file: !11, line: 160, type: !5)
!53 = !DILocation(line: 160, column: 21, scope: !49)
!54 = !DILocation(line: 164, column: 9, scope: !49)
!55 = !DILocation(line: 164, column: 13, scope: !49)
!56 = !DILocation(line: 164, column: 4, scope: !49)
!57 = !DILocation(line: 165, column: 1, scope: !49)
!58 = distinct !DISubprogram(name: "HgfsBd_GetChannel", scope: !11, file: !11, line: 186, type: !59, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!59 = !DISubroutineType(types: !60)
!60 = !{!61}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcOut", file: !63, line: 48, baseType: !64)
!63 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/rpcout.h", directory: "/home/lichi/Desktop/open-vm-tools/line351")
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "RpcOut", file: !63, line: 48, flags: DIFlagFwdDecl)
!65 = !DILocalVariable(name: "out", scope: !58, file: !11, line: 188, type: !61)
!66 = !DILocation(line: 188, column: 12, scope: !58)
!67 = !DILocation(line: 188, column: 18, scope: !58)
!68 = !DILocalVariable(name: "status", scope: !58, file: !11, line: 189, type: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !70, line: 230, baseType: !6)
!70 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line351")
!71 = !DILocation(line: 189, column: 9, scope: !58)
!72 = !DILocation(line: 191, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !58, file: !11, line: 191, column: 8)
!74 = !DILocation(line: 191, column: 8, scope: !58)
!75 = !DILocation(line: 192, column: 7, scope: !76)
!76 = distinct !DILexicalBlock(scope: !73, file: !11, line: 191, column: 14)
!77 = !DILocation(line: 193, column: 7, scope: !76)
!78 = !DILocation(line: 196, column: 26, scope: !58)
!79 = !DILocation(line: 196, column: 13, scope: !58)
!80 = !DILocation(line: 196, column: 11, scope: !58)
!81 = !DILocation(line: 197, column: 8, scope: !82)
!82 = distinct !DILexicalBlock(scope: !58, file: !11, line: 197, column: 8)
!83 = !DILocation(line: 197, column: 15, scope: !82)
!84 = !DILocation(line: 197, column: 8, scope: !58)
!85 = !DILocation(line: 198, column: 23, scope: !86)
!86 = distinct !DILexicalBlock(scope: !82, file: !11, line: 197, column: 21)
!87 = !DILocation(line: 198, column: 7, scope: !86)
!88 = !DILocation(line: 199, column: 7, scope: !86)
!89 = !DILocation(line: 202, column: 11, scope: !58)
!90 = !DILocation(line: 202, column: 4, scope: !58)
!91 = !DILocation(line: 203, column: 1, scope: !58)
!92 = distinct !DISubprogram(name: "HgfsBd_CloseChannel", scope: !11, file: !11, line: 223, type: !93, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!93 = !DISubroutineType(types: !94)
!94 = !{!69, !61}
!95 = !DILocalVariable(name: "out", arg: 1, scope: !92, file: !11, line: 223, type: !61)
!96 = !DILocation(line: 223, column: 29, scope: !92)
!97 = !DILocalVariable(name: "success", scope: !92, file: !11, line: 225, type: !69)
!98 = !DILocation(line: 225, column: 9, scope: !92)
!99 = !DILocation(line: 229, column: 26, scope: !92)
!100 = !DILocation(line: 229, column: 14, scope: !92)
!101 = !DILocation(line: 229, column: 12, scope: !92)
!102 = !DILocation(line: 230, column: 8, scope: !103)
!103 = distinct !DILexicalBlock(scope: !92, file: !11, line: 230, column: 8)
!104 = !DILocation(line: 230, column: 16, scope: !103)
!105 = !DILocation(line: 230, column: 8, scope: !92)
!106 = !DILocation(line: 231, column: 23, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !11, line: 230, column: 22)
!108 = !DILocation(line: 231, column: 7, scope: !107)
!109 = !DILocation(line: 232, column: 4, scope: !107)
!110 = !DILocation(line: 234, column: 11, scope: !92)
!111 = !DILocation(line: 234, column: 4, scope: !92)
!112 = distinct !DISubprogram(name: "HgfsBd_Dispatch", scope: !11, file: !11, line: 257, type: !113, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!113 = !DISubroutineType(types: !114)
!114 = !{!115, !61, !5, !116, !117}
!115 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!120 = !DILocalVariable(name: "out", arg: 1, scope: !112, file: !11, line: 257, type: !61)
!121 = !DILocation(line: 257, column: 25, scope: !112)
!122 = !DILocalVariable(name: "packetIn", arg: 2, scope: !112, file: !11, line: 258, type: !5)
!123 = !DILocation(line: 258, column: 23, scope: !112)
!124 = !DILocalVariable(name: "packetSize", arg: 3, scope: !112, file: !11, line: 259, type: !116)
!125 = !DILocation(line: 259, column: 25, scope: !112)
!126 = !DILocalVariable(name: "packetOut", arg: 4, scope: !112, file: !11, line: 260, type: !117)
!127 = !DILocation(line: 260, column: 30, scope: !112)
!128 = !DILocalVariable(name: "success", scope: !112, file: !11, line: 262, type: !69)
!129 = !DILocation(line: 262, column: 9, scope: !112)
!130 = !DILocalVariable(name: "rpcStatus", scope: !112, file: !11, line: 263, type: !69)
!131 = !DILocation(line: 263, column: 9, scope: !112)
!132 = !DILocalVariable(name: "reply", scope: !112, file: !11, line: 264, type: !118)
!133 = !DILocation(line: 264, column: 16, scope: !112)
!134 = !DILocalVariable(name: "replyLen", scope: !112, file: !11, line: 265, type: !19)
!135 = !DILocation(line: 265, column: 11, scope: !112)
!136 = !DILocalVariable(name: "bdPacket", scope: !112, file: !11, line: 266, type: !5)
!137 = !DILocation(line: 266, column: 10, scope: !112)
!138 = !DILocation(line: 266, column: 21, scope: !112)
!139 = !DILocation(line: 266, column: 30, scope: !112)
!140 = !DILocation(line: 273, column: 11, scope: !112)
!141 = !DILocation(line: 273, column: 4, scope: !112)
!142 = !DILocation(line: 275, column: 26, scope: !112)
!143 = !DILocation(line: 275, column: 31, scope: !112)
!144 = !DILocation(line: 275, column: 42, scope: !112)
!145 = !DILocation(line: 275, column: 41, scope: !112)
!146 = !DILocation(line: 275, column: 53, scope: !112)
!147 = !DILocation(line: 275, column: 14, scope: !112)
!148 = !DILocation(line: 275, column: 12, scope: !112)
!149 = !DILocation(line: 277, column: 9, scope: !150)
!150 = distinct !DILexicalBlock(scope: !112, file: !11, line: 277, column: 8)
!151 = !DILocation(line: 277, column: 17, scope: !150)
!152 = !DILocation(line: 277, column: 21, scope: !153)
!153 = !DILexicalBlockFile(scope: !150, file: !11, discriminator: 1)
!154 = !DILocation(line: 277, column: 8, scope: !153)
!155 = !DILocation(line: 278, column: 7, scope: !156)
!156 = distinct !DILexicalBlock(scope: !150, file: !11, line: 277, column: 32)
!157 = !DILocation(line: 279, column: 7, scope: !156)
!158 = !DILocation(line: 283, column: 17, scope: !112)
!159 = !DILocation(line: 283, column: 5, scope: !112)
!160 = !DILocation(line: 283, column: 15, scope: !112)
!161 = !DILocation(line: 284, column: 18, scope: !112)
!162 = !DILocation(line: 284, column: 5, scope: !112)
!163 = !DILocation(line: 284, column: 16, scope: !112)
!164 = !DILocation(line: 286, column: 4, scope: !112)
!165 = !DILocation(line: 287, column: 1, scope: !112)
!166 = distinct !DISubprogram(name: "HgfsBd_Enabled", scope: !11, file: !11, line: 308, type: !167, isLocal: false, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!167 = !DISubroutineType(types: !168)
!168 = !{!69, !61, !5}
!169 = !DILocalVariable(name: "out", arg: 1, scope: !166, file: !11, line: 308, type: !61)
!170 = !DILocation(line: 308, column: 24, scope: !166)
!171 = !DILocalVariable(name: "requestPacket", arg: 2, scope: !166, file: !11, line: 309, type: !5)
!172 = !DILocation(line: 309, column: 22, scope: !166)
!173 = !DILocalVariable(name: "replyPacket", scope: !166, file: !11, line: 311, type: !118)
!174 = !DILocation(line: 311, column: 16, scope: !166)
!175 = !DILocalVariable(name: "replyLen", scope: !166, file: !11, line: 312, type: !19)
!176 = !DILocation(line: 312, column: 11, scope: !166)
!177 = !DILocalVariable(name: "success", scope: !166, file: !11, line: 313, type: !69)
!178 = !DILocation(line: 313, column: 9, scope: !166)
!179 = !DILocalVariable(name: "rpcStatus", scope: !166, file: !11, line: 314, type: !69)
!180 = !DILocation(line: 314, column: 9, scope: !166)
!181 = !DILocation(line: 323, column: 26, scope: !166)
!182 = !DILocation(line: 323, column: 31, scope: !166)
!183 = !DILocation(line: 323, column: 45, scope: !166)
!184 = !DILocation(line: 323, column: 14, scope: !166)
!185 = !DILocation(line: 323, column: 12, scope: !166)
!186 = !DILocation(line: 326, column: 8, scope: !187)
!187 = distinct !DILexicalBlock(scope: !166, file: !11, line: 326, column: 8)
!188 = !DILocation(line: 326, column: 16, scope: !187)
!189 = !DILocation(line: 326, column: 19, scope: !190)
!190 = !DILexicalBlockFile(scope: !187, file: !11, discriminator: 1)
!191 = !DILocation(line: 326, column: 8, scope: !190)
!192 = !DILocation(line: 328, column: 4, scope: !193)
!193 = distinct !DILexicalBlock(scope: !187, file: !11, line: 326, column: 30)
!194 = !DILocation(line: 330, column: 11, scope: !166)
!195 = !DILocation(line: 330, column: 19, scope: !166)
!196 = !DILocation(line: 330, column: 22, scope: !197)
!197 = !DILexicalBlockFile(scope: !166, file: !11, discriminator: 1)
!198 = !DILocation(line: 330, column: 19, scope: !197)
!199 = !DILocation(line: 330, column: 19, scope: !200)
!200 = !DILexicalBlockFile(scope: !166, file: !11, discriminator: 2)
!201 = !DILocation(line: 330, column: 11, scope: !200)
!202 = !DILocation(line: 330, column: 4, scope: !200)
!203 = distinct !DISubprogram(name: "HgfsBd_OpenBackdoor", scope: !11, file: !11, line: 354, type: !204, isLocal: false, isDefinition: true, scopeLine: 355, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!204 = !DISubroutineType(types: !205)
!205 = !{!69, !206}
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!207 = !DILocalVariable(name: "out", arg: 1, scope: !203, file: !11, line: 354, type: !206)
!208 = !DILocation(line: 354, column: 30, scope: !203)
!209 = !DILocalVariable(name: "packetBuffer", scope: !203, file: !11, line: 356, type: !5)
!210 = !DILocation(line: 356, column: 10, scope: !203)
!211 = !DILocalVariable(name: "success", scope: !203, file: !11, line: 357, type: !69)
!212 = !DILocation(line: 357, column: 9, scope: !203)
!213 = !DILocation(line: 362, column: 9, scope: !214)
!214 = distinct !DILexicalBlock(scope: !203, file: !11, line: 362, column: 8)
!215 = !DILocation(line: 362, column: 8, scope: !214)
!216 = !DILocation(line: 362, column: 13, scope: !214)
!217 = !DILocation(line: 362, column: 8, scope: !203)
!218 = !DILocation(line: 363, column: 7, scope: !219)
!219 = distinct !DILexicalBlock(scope: !214, file: !11, line: 362, column: 21)
!220 = !DILocation(line: 367, column: 11, scope: !203)
!221 = !DILocation(line: 367, column: 5, scope: !203)
!222 = !DILocation(line: 367, column: 9, scope: !203)
!223 = !DILocation(line: 368, column: 9, scope: !224)
!224 = distinct !DILexicalBlock(scope: !203, file: !11, line: 368, column: 8)
!225 = !DILocation(line: 368, column: 8, scope: !224)
!226 = !DILocation(line: 368, column: 13, scope: !224)
!227 = !DILocation(line: 368, column: 8, scope: !203)
!228 = !DILocation(line: 369, column: 7, scope: !229)
!229 = distinct !DILexicalBlock(scope: !224, file: !11, line: 368, column: 21)
!230 = !DILocation(line: 373, column: 19, scope: !203)
!231 = !DILocation(line: 373, column: 17, scope: !203)
!232 = !DILocation(line: 374, column: 8, scope: !233)
!233 = distinct !DILexicalBlock(scope: !203, file: !11, line: 374, column: 8)
!234 = !DILocation(line: 374, column: 21, scope: !233)
!235 = !DILocation(line: 374, column: 8, scope: !203)
!236 = !DILocation(line: 375, column: 7, scope: !237)
!237 = distinct !DILexicalBlock(scope: !233, file: !11, line: 374, column: 29)
!238 = !DILocation(line: 379, column: 25, scope: !239)
!239 = distinct !DILexicalBlock(scope: !203, file: !11, line: 379, column: 8)
!240 = !DILocation(line: 379, column: 24, scope: !239)
!241 = !DILocation(line: 379, column: 30, scope: !239)
!242 = !DILocation(line: 379, column: 9, scope: !239)
!243 = !DILocation(line: 379, column: 8, scope: !203)
!244 = !DILocation(line: 380, column: 7, scope: !245)
!245 = distinct !DILexicalBlock(scope: !239, file: !11, line: 379, column: 45)
!246 = !DILocation(line: 382, column: 12, scope: !203)
!247 = !DILocation(line: 382, column: 4, scope: !203)
!248 = !DILocation(line: 385, column: 8, scope: !249)
!249 = distinct !DILexicalBlock(scope: !203, file: !11, line: 385, column: 8)
!250 = !DILocation(line: 385, column: 21, scope: !249)
!251 = !DILocation(line: 385, column: 8, scope: !203)
!252 = !DILocation(line: 386, column: 21, scope: !253)
!253 = distinct !DILexicalBlock(scope: !249, file: !11, line: 385, column: 29)
!254 = !DILocation(line: 386, column: 7, scope: !253)
!255 = !DILocation(line: 387, column: 4, scope: !253)
!256 = !DILocation(line: 388, column: 9, scope: !257)
!257 = distinct !DILexicalBlock(scope: !203, file: !11, line: 388, column: 8)
!258 = !DILocation(line: 388, column: 17, scope: !257)
!259 = !DILocation(line: 388, column: 21, scope: !260)
!260 = !DILexicalBlockFile(scope: !257, file: !11, discriminator: 1)
!261 = !DILocation(line: 388, column: 20, scope: !260)
!262 = !DILocation(line: 388, column: 25, scope: !260)
!263 = !DILocation(line: 388, column: 8, scope: !260)
!264 = !DILocation(line: 389, column: 28, scope: !265)
!265 = distinct !DILexicalBlock(scope: !257, file: !11, line: 388, column: 33)
!266 = !DILocation(line: 389, column: 27, scope: !265)
!267 = !DILocation(line: 389, column: 7, scope: !265)
!268 = !DILocation(line: 390, column: 8, scope: !265)
!269 = !DILocation(line: 390, column: 12, scope: !265)
!270 = !DILocation(line: 391, column: 4, scope: !265)
!271 = !DILocation(line: 392, column: 11, scope: !203)
!272 = !DILocation(line: 392, column: 4, scope: !203)
!273 = !DILocation(line: 393, column: 1, scope: !203)
!274 = distinct !DISubprogram(name: "HgfsBd_CloseBackdoor", scope: !11, file: !11, line: 414, type: !204, isLocal: false, isDefinition: true, scopeLine: 415, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!275 = !DILocalVariable(name: "out", arg: 1, scope: !274, file: !11, line: 414, type: !206)
!276 = !DILocation(line: 414, column: 31, scope: !274)
!277 = !DILocalVariable(name: "success", scope: !274, file: !11, line: 416, type: !69)
!278 = !DILocation(line: 416, column: 9, scope: !274)
!279 = !DILocation(line: 420, column: 9, scope: !280)
!280 = distinct !DILexicalBlock(scope: !274, file: !11, line: 420, column: 8)
!281 = !DILocation(line: 420, column: 8, scope: !280)
!282 = !DILocation(line: 420, column: 13, scope: !280)
!283 = !DILocation(line: 420, column: 8, scope: !274)
!284 = !DILocation(line: 421, column: 33, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !11, line: 421, column: 11)
!286 = distinct !DILexicalBlock(scope: !280, file: !11, line: 420, column: 21)
!287 = !DILocation(line: 421, column: 32, scope: !285)
!288 = !DILocation(line: 421, column: 12, scope: !285)
!289 = !DILocation(line: 421, column: 11, scope: !286)
!290 = !DILocation(line: 422, column: 18, scope: !291)
!291 = distinct !DILexicalBlock(scope: !285, file: !11, line: 421, column: 39)
!292 = !DILocation(line: 423, column: 7, scope: !291)
!293 = !DILocation(line: 424, column: 8, scope: !286)
!294 = !DILocation(line: 424, column: 12, scope: !286)
!295 = !DILocation(line: 425, column: 4, scope: !286)
!296 = !DILocation(line: 427, column: 11, scope: !274)
!297 = !DILocation(line: 427, column: 4, scope: !274)
