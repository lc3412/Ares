; ModuleID = './[inter]iso.o.i'
source_filename = "./[inter]iso.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [42 x i8] c"iso_recv(), expected ISO_PDU_DT, got 0x%x\00", align 1
@g_negotiate_rdp_protocol = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Connecting to server using NLA...\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Connecting to server using SSL...\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"iso_connect(), expected ISO_PDU_CC, got 0x%x\00", align 1
@g_rdp_version = external global i32, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"SSL with user authentication required by server\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"SSL not allowed by server\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"no valid authentication certificate on server\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"inconsistent negotiation flags\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"SSL required by server\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"CredSSP required by server\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"unknown reason\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"Protocol negotiation failed with reason: %s\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Retrying with plain RDP.\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Failed to connect, %s.\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"iso_connect(), expected RDP_NEG_RSP, got 0x%x\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"Failed to connect using SSL, trying with plain RDP.\00", align 1
@g_encryption = external global i32, align 4
@.str.16 = private unnamed_addr constant [34 x i8] c"Connection established using SSL.\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"Connection established using plain RDP.\00", align 1
@.str.18 = private unnamed_addr constant [69 x i8] c"iso_connect(), unexpected protocol in negotiation response, got 0x%x\00", align 1
@g_encryption_initial = external global i32, align 4
@.str.19 = private unnamed_addr constant [46 x i8] c"iso_recv_msg(), bad packet header, length < 4\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Cookie: mstshash=\00", align 1

; Function Attrs: nounwind uwtable
define %struct.stream* @iso_init(i32) #0 !dbg !62 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stream*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !82, metadata !83), !dbg !84
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !85, metadata !83), !dbg !86
  %4 = load i32, i32* %2, align 4, !dbg !87
  %5 = add nsw i32 %4, 7, !dbg !88
  %6 = call %struct.stream* @tcp_init(i32 %5), !dbg !89
  store %struct.stream* %6, %struct.stream** %3, align 8, !dbg !90
  %7 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !91
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 0, !dbg !93
  %9 = load i8*, i8** %8, align 8, !dbg !93
  %10 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !94
  %11 = getelementptr inbounds %struct.stream, %struct.stream* %10, i32 0, i32 4, !dbg !95
  store i8* %9, i8** %11, align 8, !dbg !96
  %12 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !97
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %12, i32 0, i32 0, !dbg !98
  %14 = load i8*, i8** %13, align 8, !dbg !99
  %15 = getelementptr inbounds i8, i8* %14, i64 7, !dbg !99
  store i8* %15, i8** %13, align 8, !dbg !99
  %16 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !100
  ret %struct.stream* %16, !dbg !101
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct.stream* @tcp_init(i32) #2

; Function Attrs: nounwind uwtable
define void @iso_send(%struct.stream*) #0 !dbg !102 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i16, align 2
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !105, metadata !83), !dbg !106
  call void @llvm.dbg.declare(metadata i16* %3, metadata !107, metadata !83), !dbg !108
  %4 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !109
  %5 = getelementptr inbounds %struct.stream, %struct.stream* %4, i32 0, i32 4, !dbg !110
  %6 = load i8*, i8** %5, align 8, !dbg !110
  %7 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !111
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 0, !dbg !112
  store i8* %6, i8** %8, align 8, !dbg !113
  %9 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !114
  %10 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 1, !dbg !115
  %11 = load i8*, i8** %10, align 8, !dbg !115
  %12 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !116
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %12, i32 0, i32 0, !dbg !117
  %14 = load i8*, i8** %13, align 8, !dbg !117
  %15 = ptrtoint i8* %11 to i64, !dbg !118
  %16 = ptrtoint i8* %14 to i64, !dbg !118
  %17 = sub i64 %15, %16, !dbg !118
  %18 = trunc i64 %17 to i16, !dbg !114
  store i16 %18, i16* %3, align 2, !dbg !119
  %19 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !120
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !121
  %21 = load i8*, i8** %20, align 8, !dbg !122
  %22 = getelementptr inbounds i8, i8* %21, i32 1, !dbg !122
  store i8* %22, i8** %20, align 8, !dbg !122
  store i8 3, i8* %21, align 1, !dbg !123
  %23 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !124
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 0, !dbg !125
  %25 = load i8*, i8** %24, align 8, !dbg !126
  %26 = getelementptr inbounds i8, i8* %25, i32 1, !dbg !126
  store i8* %26, i8** %24, align 8, !dbg !126
  store i8 0, i8* %25, align 1, !dbg !127
  %27 = load i16, i16* %3, align 2, !dbg !128
  %28 = zext i16 %27 to i32, !dbg !130
  %29 = ashr i32 %28, 8, !dbg !131
  %30 = and i32 %29, 255, !dbg !132
  %31 = trunc i32 %30 to i8, !dbg !133
  %32 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !134
  %33 = getelementptr inbounds %struct.stream, %struct.stream* %32, i32 0, i32 0, !dbg !135
  %34 = load i8*, i8** %33, align 8, !dbg !136
  %35 = getelementptr inbounds i8, i8* %34, i32 1, !dbg !136
  store i8* %35, i8** %33, align 8, !dbg !136
  store i8 %31, i8* %34, align 1, !dbg !137
  %36 = load i16, i16* %3, align 2, !dbg !138
  %37 = zext i16 %36 to i32, !dbg !139
  %38 = and i32 %37, 255, !dbg !140
  %39 = trunc i32 %38 to i8, !dbg !139
  %40 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !141
  %41 = getelementptr inbounds %struct.stream, %struct.stream* %40, i32 0, i32 0, !dbg !142
  %42 = load i8*, i8** %41, align 8, !dbg !143
  %43 = getelementptr inbounds i8, i8* %42, i32 1, !dbg !143
  store i8* %43, i8** %41, align 8, !dbg !143
  store i8 %39, i8* %42, align 1, !dbg !144
  %44 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !145
  %45 = getelementptr inbounds %struct.stream, %struct.stream* %44, i32 0, i32 0, !dbg !146
  %46 = load i8*, i8** %45, align 8, !dbg !147
  %47 = getelementptr inbounds i8, i8* %46, i32 1, !dbg !147
  store i8* %47, i8** %45, align 8, !dbg !147
  store i8 2, i8* %46, align 1, !dbg !148
  %48 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !149
  %49 = getelementptr inbounds %struct.stream, %struct.stream* %48, i32 0, i32 0, !dbg !150
  %50 = load i8*, i8** %49, align 8, !dbg !151
  %51 = getelementptr inbounds i8, i8* %50, i32 1, !dbg !151
  store i8* %51, i8** %49, align 8, !dbg !151
  store i8 -16, i8* %50, align 1, !dbg !152
  %52 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !153
  %53 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 0, !dbg !154
  %54 = load i8*, i8** %53, align 8, !dbg !155
  %55 = getelementptr inbounds i8, i8* %54, i32 1, !dbg !155
  store i8* %55, i8** %53, align 8, !dbg !155
  store i8 -128, i8* %54, align 1, !dbg !156
  %56 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !157
  call void @tcp_send(%struct.stream* %56), !dbg !158
  ret void, !dbg !159
}

declare void @tcp_send(%struct.stream*) #2

; Function Attrs: nounwind uwtable
define %struct.stream* @iso_recv(i32*, i8*) #0 !dbg !160 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stream*, align 8
  %7 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !166, metadata !83), !dbg !167
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !168, metadata !83), !dbg !169
  call void @llvm.dbg.declare(metadata %struct.stream** %6, metadata !170, metadata !83), !dbg !171
  call void @llvm.dbg.declare(metadata i8* %7, metadata !172, metadata !83), !dbg !173
  store i8 0, i8* %7, align 1, !dbg !173
  %8 = load i32*, i32** %4, align 8, !dbg !174
  %9 = load i8*, i8** %5, align 8, !dbg !175
  %10 = call %struct.stream* @iso_recv_msg(i8* %7, i32* %8, i8* %9), !dbg !176
  store %struct.stream* %10, %struct.stream** %6, align 8, !dbg !177
  %11 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !178
  %12 = icmp eq %struct.stream* %11, null, !dbg !180
  br i1 %12, label %13, label %14, !dbg !181

; <label>:13:                                     ; preds = %2
  store %struct.stream* null, %struct.stream** %3, align 8, !dbg !182
  br label %29, !dbg !182

; <label>:14:                                     ; preds = %2
  %15 = load i32*, i32** %4, align 8, !dbg !183
  %16 = load i32, i32* %15, align 4, !dbg !185
  %17 = icmp eq i32 %16, 1, !dbg !186
  br i1 %17, label %18, label %20, !dbg !187

; <label>:18:                                     ; preds = %14
  %19 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !188
  store %struct.stream* %19, %struct.stream** %3, align 8, !dbg !189
  br label %29, !dbg !189

; <label>:20:                                     ; preds = %14
  %21 = load i8, i8* %7, align 1, !dbg !190
  %22 = zext i8 %21 to i32, !dbg !190
  %23 = icmp ne i32 %22, 240, !dbg !192
  br i1 %23, label %24, label %27, !dbg !193

; <label>:24:                                     ; preds = %20
  %25 = load i8, i8* %7, align 1, !dbg !194
  %26 = zext i8 %25 to i32, !dbg !194
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), i32 %26), !dbg !196
  store %struct.stream* null, %struct.stream** %3, align 8, !dbg !197
  br label %29, !dbg !197

; <label>:27:                                     ; preds = %20
  %28 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !198
  store %struct.stream* %28, %struct.stream** %3, align 8, !dbg !199
  br label %29, !dbg !199

; <label>:29:                                     ; preds = %27, %24, %18, %13
  %30 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !200
  ret %struct.stream* %30, !dbg !200
}

; Function Attrs: nounwind uwtable
define internal %struct.stream* @iso_recv_msg(i8*, i32*, i8*) #0 !dbg !201 {
  %4 = alloca %struct.stream*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stream*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !204, metadata !83), !dbg !205
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !206, metadata !83), !dbg !207
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !208, metadata !83), !dbg !209
  call void @llvm.dbg.declare(metadata %struct.stream** %8, metadata !210, metadata !83), !dbg !211
  call void @llvm.dbg.declare(metadata i16* %9, metadata !212, metadata !83), !dbg !213
  call void @llvm.dbg.declare(metadata i8* %10, metadata !214, metadata !83), !dbg !215
  %11 = call %struct.stream* @tcp_recv(%struct.stream* null, i32 4), !dbg !216
  store %struct.stream* %11, %struct.stream** %8, align 8, !dbg !217
  %12 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !218
  %13 = icmp eq %struct.stream* %12, null, !dbg !220
  br i1 %13, label %14, label %15, !dbg !221

; <label>:14:                                     ; preds = %3
  store %struct.stream* null, %struct.stream** %4, align 8, !dbg !222
  br label %126, !dbg !222

; <label>:15:                                     ; preds = %3
  %16 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !223
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %16, i32 0, i32 0, !dbg !224
  %18 = load i8*, i8** %17, align 8, !dbg !225
  %19 = getelementptr inbounds i8, i8* %18, i32 1, !dbg !225
  store i8* %19, i8** %17, align 8, !dbg !225
  %20 = load i8, i8* %18, align 1, !dbg !226
  store i8 %20, i8* %10, align 1, !dbg !227
  %21 = load i8*, i8** %7, align 8, !dbg !228
  store i8 0, i8* %21, align 1, !dbg !229
  %22 = load i32*, i32** %6, align 8, !dbg !230
  store i32 0, i32* %22, align 4, !dbg !231
  %23 = load i8, i8* %10, align 1, !dbg !232
  %24 = zext i8 %23 to i32, !dbg !232
  %25 = icmp eq i32 %24, 3, !dbg !234
  br i1 %25, label %26, label %48, !dbg !235

; <label>:26:                                     ; preds = %15
  %27 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !236
  %28 = getelementptr inbounds %struct.stream, %struct.stream* %27, i32 0, i32 0, !dbg !238
  %29 = load i8*, i8** %28, align 8, !dbg !239
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !239
  store i8* %30, i8** %28, align 8, !dbg !239
  %31 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !240
  %32 = getelementptr inbounds %struct.stream, %struct.stream* %31, i32 0, i32 0, !dbg !242
  %33 = load i8*, i8** %32, align 8, !dbg !243
  %34 = getelementptr inbounds i8, i8* %33, i32 1, !dbg !243
  store i8* %34, i8** %32, align 8, !dbg !243
  %35 = load i8, i8* %33, align 1, !dbg !244
  %36 = zext i8 %35 to i16, !dbg !244
  store i16 %36, i16* %9, align 2, !dbg !245
  %37 = load i16, i16* %9, align 2, !dbg !246
  %38 = zext i16 %37 to i32, !dbg !247
  %39 = shl i32 %38, 8, !dbg !248
  %40 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !249
  %41 = getelementptr inbounds %struct.stream, %struct.stream* %40, i32 0, i32 0, !dbg !250
  %42 = load i8*, i8** %41, align 8, !dbg !251
  %43 = getelementptr inbounds i8, i8* %42, i32 1, !dbg !251
  store i8* %43, i8** %41, align 8, !dbg !251
  %44 = load i8, i8* %42, align 1, !dbg !252
  %45 = zext i8 %44 to i32, !dbg !252
  %46 = add nsw i32 %39, %45, !dbg !253
  %47 = trunc i32 %46 to i16, !dbg !254
  store i16 %47, i16* %9, align 2, !dbg !255
  br label %79, !dbg !256

; <label>:48:                                     ; preds = %15
  %49 = load i32*, i32** %6, align 8, !dbg !257
  store i32 1, i32* %49, align 4, !dbg !259
  %50 = load i8, i8* %10, align 1, !dbg !260
  %51 = load i8*, i8** %7, align 8, !dbg !261
  store i8 %50, i8* %51, align 1, !dbg !262
  %52 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !263
  %53 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 0, !dbg !264
  %54 = load i8*, i8** %53, align 8, !dbg !265
  %55 = getelementptr inbounds i8, i8* %54, i32 1, !dbg !265
  store i8* %55, i8** %53, align 8, !dbg !265
  %56 = load i8, i8* %54, align 1, !dbg !266
  %57 = zext i8 %56 to i16, !dbg !266
  store i16 %57, i16* %9, align 2, !dbg !267
  %58 = load i16, i16* %9, align 2, !dbg !268
  %59 = zext i16 %58 to i32, !dbg !268
  %60 = and i32 %59, 128, !dbg !270
  %61 = icmp ne i32 %60, 0, !dbg !270
  br i1 %61, label %62, label %78, !dbg !271

; <label>:62:                                     ; preds = %48
  %63 = load i16, i16* %9, align 2, !dbg !272
  %64 = zext i16 %63 to i32, !dbg !272
  %65 = and i32 %64, -129, !dbg !272
  %66 = trunc i32 %65 to i16, !dbg !272
  store i16 %66, i16* %9, align 2, !dbg !272
  %67 = load i16, i16* %9, align 2, !dbg !274
  %68 = zext i16 %67 to i32, !dbg !275
  %69 = shl i32 %68, 8, !dbg !276
  %70 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !277
  %71 = getelementptr inbounds %struct.stream, %struct.stream* %70, i32 0, i32 0, !dbg !278
  %72 = load i8*, i8** %71, align 8, !dbg !279
  %73 = getelementptr inbounds i8, i8* %72, i32 1, !dbg !279
  store i8* %73, i8** %71, align 8, !dbg !279
  %74 = load i8, i8* %72, align 1, !dbg !280
  %75 = zext i8 %74 to i32, !dbg !280
  %76 = add nsw i32 %69, %75, !dbg !281
  %77 = trunc i32 %76 to i16, !dbg !282
  store i16 %77, i16* %9, align 2, !dbg !283
  br label %78, !dbg !284

; <label>:78:                                     ; preds = %62, %48
  br label %79

; <label>:79:                                     ; preds = %78, %26
  %80 = load i16, i16* %9, align 2, !dbg !285
  %81 = zext i16 %80 to i32, !dbg !285
  %82 = icmp slt i32 %81, 4, !dbg !287
  br i1 %82, label %83, label %84, !dbg !288

; <label>:83:                                     ; preds = %79
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i32 0, i32 0)), !dbg !289
  store %struct.stream* null, %struct.stream** %4, align 8, !dbg !291
  br label %126, !dbg !291

; <label>:84:                                     ; preds = %79
  %85 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !292
  %86 = load i16, i16* %9, align 2, !dbg !293
  %87 = zext i16 %86 to i32, !dbg !293
  %88 = sub nsw i32 %87, 4, !dbg !294
  %89 = call %struct.stream* @tcp_recv(%struct.stream* %85, i32 %88), !dbg !295
  store %struct.stream* %89, %struct.stream** %8, align 8, !dbg !296
  %90 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !297
  %91 = icmp eq %struct.stream* %90, null, !dbg !299
  br i1 %91, label %92, label %93, !dbg !300

; <label>:92:                                     ; preds = %84
  store %struct.stream* null, %struct.stream** %4, align 8, !dbg !301
  br label %126, !dbg !301

; <label>:93:                                     ; preds = %84
  %94 = load i32*, i32** %6, align 8, !dbg !302
  %95 = load i32, i32* %94, align 4, !dbg !304
  %96 = icmp eq i32 %95, 1, !dbg !305
  br i1 %96, label %97, label %99, !dbg !306

; <label>:97:                                     ; preds = %93
  %98 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !307
  store %struct.stream* %98, %struct.stream** %4, align 8, !dbg !308
  br label %126, !dbg !308

; <label>:99:                                     ; preds = %93
  %100 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !309
  %101 = getelementptr inbounds %struct.stream, %struct.stream* %100, i32 0, i32 0, !dbg !310
  %102 = load i8*, i8** %101, align 8, !dbg !311
  %103 = getelementptr inbounds i8, i8* %102, i64 1, !dbg !311
  store i8* %103, i8** %101, align 8, !dbg !311
  %104 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !312
  %105 = getelementptr inbounds %struct.stream, %struct.stream* %104, i32 0, i32 0, !dbg !313
  %106 = load i8*, i8** %105, align 8, !dbg !314
  %107 = getelementptr inbounds i8, i8* %106, i32 1, !dbg !314
  store i8* %107, i8** %105, align 8, !dbg !314
  %108 = load i8, i8* %106, align 1, !dbg !315
  %109 = load i8*, i8** %5, align 8, !dbg !316
  store i8 %108, i8* %109, align 1, !dbg !317
  %110 = load i8*, i8** %5, align 8, !dbg !318
  %111 = load i8, i8* %110, align 1, !dbg !320
  %112 = zext i8 %111 to i32, !dbg !320
  %113 = icmp eq i32 %112, 240, !dbg !321
  br i1 %113, label %114, label %120, !dbg !322

; <label>:114:                                    ; preds = %99
  %115 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !323
  %116 = getelementptr inbounds %struct.stream, %struct.stream* %115, i32 0, i32 0, !dbg !325
  %117 = load i8*, i8** %116, align 8, !dbg !326
  %118 = getelementptr inbounds i8, i8* %117, i64 1, !dbg !326
  store i8* %118, i8** %116, align 8, !dbg !326
  %119 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !327
  store %struct.stream* %119, %struct.stream** %4, align 8, !dbg !328
  br label %126, !dbg !328

; <label>:120:                                    ; preds = %99
  %121 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !329
  %122 = getelementptr inbounds %struct.stream, %struct.stream* %121, i32 0, i32 0, !dbg !330
  %123 = load i8*, i8** %122, align 8, !dbg !331
  %124 = getelementptr inbounds i8, i8* %123, i64 5, !dbg !331
  store i8* %124, i8** %122, align 8, !dbg !331
  %125 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !332
  store %struct.stream* %125, %struct.stream** %4, align 8, !dbg !333
  br label %126, !dbg !333

; <label>:126:                                    ; preds = %120, %114, %97, %92, %83, %14
  %127 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !334
  ret %struct.stream* %127, !dbg !334
}

declare void @logger(i32, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @iso_connect(i8*, i8*, i8*, i8*, i32, i32*) #0 !dbg !335 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.stream*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8*, align 8
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !340, metadata !83), !dbg !341
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !342, metadata !83), !dbg !343
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !344, metadata !83), !dbg !345
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !346, metadata !83), !dbg !347
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !348, metadata !83), !dbg !349
  store i32* %5, i32** %13, align 8
  call void @llvm.dbg.declare(metadata i32** %13, metadata !350, metadata !83), !dbg !351
  %23 = load i32, i32* %12, align 4, !dbg !352
  call void @llvm.dbg.declare(metadata %struct.stream** %14, metadata !353, metadata !83), !dbg !354
  call void @llvm.dbg.declare(metadata i8* %15, metadata !355, metadata !83), !dbg !356
  call void @llvm.dbg.declare(metadata i32* %16, metadata !357, metadata !83), !dbg !358
  call void @llvm.dbg.declare(metadata i32* %17, metadata !359, metadata !83), !dbg !360
  call void @llvm.dbg.declare(metadata i8* %18, metadata !361, metadata !83), !dbg !362
  store i32 1, i32* @g_negotiate_rdp_protocol, align 4, !dbg !363
  store i32 1, i32* %16, align 4, !dbg !364
  %24 = load i32, i32* %16, align 4, !dbg !365
  %25 = and i32 %24, 2, !dbg !367
  %26 = icmp ne i32 %25, 0, !dbg !367
  br i1 %26, label %27, label %28, !dbg !368

; <label>:27:                                     ; preds = %6
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0)), !dbg !369
  br label %29, !dbg !369

; <label>:28:                                     ; preds = %6
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0)), !dbg !370
  br label %29

; <label>:29:                                     ; preds = %28, %27
  br label %30, !dbg !371

; <label>:30:                                     ; preds = %121, %105, %29
  %31 = load i32*, i32** %13, align 8, !dbg !373
  store i32 0, i32* %31, align 4, !dbg !374
  store i8 0, i8* %15, align 1, !dbg !375
  %32 = load i8*, i8** %8, align 8, !dbg !376
  %33 = call i32 @tcp_connect(i8* %32), !dbg !378
  %34 = icmp ne i32 %33, 0, !dbg !378
  br i1 %34, label %36, label %35, !dbg !379

; <label>:35:                                     ; preds = %30
  store i32 0, i32* %7, align 4, !dbg !380
  br label %138, !dbg !380

; <label>:36:                                     ; preds = %30
  %37 = load i8*, i8** %9, align 8, !dbg !381
  %38 = load i32, i32* %16, align 4, !dbg !382
  call void @iso_send_connection_request(i8* %37, i32 %38), !dbg !383
  %39 = call %struct.stream* @iso_recv_msg(i8* %15, i32* %17, i8* %18), !dbg !384
  store %struct.stream* %39, %struct.stream** %14, align 8, !dbg !385
  %40 = load %struct.stream*, %struct.stream** %14, align 8, !dbg !386
  %41 = icmp eq %struct.stream* %40, null, !dbg !388
  br i1 %41, label %42, label %43, !dbg !389

; <label>:42:                                     ; preds = %36
  store i32 0, i32* %7, align 4, !dbg !390
  br label %138, !dbg !390

; <label>:43:                                     ; preds = %36
  %44 = load i8, i8* %15, align 1, !dbg !391
  %45 = zext i8 %44 to i32, !dbg !391
  %46 = icmp ne i32 %45, 208, !dbg !393
  br i1 %46, label %47, label %50, !dbg !394

; <label>:47:                                     ; preds = %43
  %48 = load i8, i8* %15, align 1, !dbg !395
  %49 = zext i8 %48 to i32, !dbg !395
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0), i32 %49), !dbg !397
  call void @tcp_disconnect(), !dbg !398
  store i32 0, i32* %7, align 4, !dbg !399
  br label %138, !dbg !399

; <label>:50:                                     ; preds = %43
  %51 = load i32, i32* @g_rdp_version, align 4, !dbg !400
  %52 = icmp uge i32 %51, 5, !dbg !402
  br i1 %52, label %53, label %137, !dbg !403

; <label>:53:                                     ; preds = %50
  %54 = load %struct.stream*, %struct.stream** %14, align 8, !dbg !404
  %55 = getelementptr inbounds %struct.stream, %struct.stream* %54, i32 0, i32 0, !dbg !406
  %56 = load i8*, i8** %55, align 8, !dbg !406
  %57 = getelementptr inbounds i8, i8* %56, i64 8, !dbg !407
  %58 = load %struct.stream*, %struct.stream** %14, align 8, !dbg !408
  %59 = getelementptr inbounds %struct.stream, %struct.stream* %58, i32 0, i32 1, !dbg !409
  %60 = load i8*, i8** %59, align 8, !dbg !409
  %61 = icmp ule i8* %57, %60, !dbg !410
  br i1 %61, label %62, label %137, !dbg !411

; <label>:62:                                     ; preds = %53
  call void @llvm.dbg.declare(metadata i8** %19, metadata !412, metadata !83), !dbg !416
  store i8* null, i8** %19, align 8, !dbg !416
  call void @llvm.dbg.declare(metadata i8* %20, metadata !417, metadata !83), !dbg !418
  store i8 0, i8* %20, align 1, !dbg !418
  call void @llvm.dbg.declare(metadata i32* %21, metadata !419, metadata !83), !dbg !420
  store i32 0, i32* %21, align 4, !dbg !420
  %63 = load %struct.stream*, %struct.stream** %14, align 8, !dbg !421
  %64 = getelementptr inbounds %struct.stream, %struct.stream* %63, i32 0, i32 0, !dbg !422
  %65 = load i8*, i8** %64, align 8, !dbg !423
  %66 = getelementptr inbounds i8, i8* %65, i32 1, !dbg !423
  store i8* %66, i8** %64, align 8, !dbg !423
  %67 = load i8, i8* %65, align 1, !dbg !424
  store i8 %67, i8* %20, align 1, !dbg !425
  %68 = load %struct.stream*, %struct.stream** %14, align 8, !dbg !426
  %69 = getelementptr inbounds %struct.stream, %struct.stream* %68, i32 0, i32 0, !dbg !427
  %70 = load i8*, i8** %69, align 8, !dbg !428
  %71 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !428
  store i8* %71, i8** %69, align 8, !dbg !428
  %72 = load %struct.stream*, %struct.stream** %14, align 8, !dbg !429
  %73 = getelementptr inbounds %struct.stream, %struct.stream* %72, i32 0, i32 0, !dbg !430
  %74 = load i8*, i8** %73, align 8, !dbg !431
  %75 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !431
  store i8* %75, i8** %73, align 8, !dbg !431
  %76 = load %struct.stream*, %struct.stream** %14, align 8, !dbg !432
  %77 = getelementptr inbounds %struct.stream, %struct.stream* %76, i32 0, i32 0, !dbg !434
  %78 = load i8*, i8** %77, align 8, !dbg !434
  %79 = bitcast i8* %78 to i32*, !dbg !435
  %80 = load i32, i32* %79, align 4, !dbg !435
  store i32 %80, i32* %21, align 4, !dbg !436
  %81 = load %struct.stream*, %struct.stream** %14, align 8, !dbg !437
  %82 = getelementptr inbounds %struct.stream, %struct.stream* %81, i32 0, i32 0, !dbg !438
  %83 = load i8*, i8** %82, align 8, !dbg !439
  %84 = getelementptr inbounds i8, i8* %83, i64 4, !dbg !439
  store i8* %84, i8** %82, align 8, !dbg !439
  %85 = load i8, i8* %20, align 1, !dbg !440
  %86 = zext i8 %85 to i32, !dbg !440
  %87 = icmp eq i32 %86, 3, !dbg !442
  br i1 %87, label %88, label %108, !dbg !443

; <label>:88:                                     ; preds = %62
  call void @llvm.dbg.declare(metadata i32* %22, metadata !444, metadata !83), !dbg !446
  store i32 0, i32* %22, align 4, !dbg !446
  %89 = load i32, i32* %21, align 4, !dbg !447
  switch i32 %89, label %96 [
    i32 6, label %90
    i32 2, label %91
    i32 3, label %92
    i32 4, label %93
    i32 1, label %94
    i32 5, label %95
  ], !dbg !448

; <label>:90:                                     ; preds = %88
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0), i8** %19, align 8, !dbg !449
  br label %97, !dbg !451

; <label>:91:                                     ; preds = %88
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0), i8** %19, align 8, !dbg !452
  store i32 1, i32* %22, align 4, !dbg !453
  br label %97, !dbg !454

; <label>:92:                                     ; preds = %88
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i32 0, i32 0), i8** %19, align 8, !dbg !455
  store i32 1, i32* %22, align 4, !dbg !456
  br label %97, !dbg !457

; <label>:93:                                     ; preds = %88
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0), i8** %19, align 8, !dbg !458
  br label %97, !dbg !459

; <label>:94:                                     ; preds = %88
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8** %19, align 8, !dbg !460
  br label %97, !dbg !461

; <label>:95:                                     ; preds = %88
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i8** %19, align 8, !dbg !462
  br label %97, !dbg !463

; <label>:96:                                     ; preds = %88
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8** %19, align 8, !dbg !464
  br label %97, !dbg !465

; <label>:97:                                     ; preds = %96, %95, %94, %93, %92, %91, %90
  call void @tcp_disconnect(), !dbg !466
  %98 = load i32, i32* %22, align 4, !dbg !467
  %99 = icmp ne i32 %98, 0, !dbg !467
  br i1 %99, label %100, label %106, !dbg !469

; <label>:100:                                    ; preds = %97
  %101 = load i8*, i8** %19, align 8, !dbg !470
  %102 = icmp ne i8* %101, null, !dbg !473
  br i1 %102, label %103, label %105, !dbg !474

; <label>:103:                                    ; preds = %100
  %104 = load i8*, i8** %19, align 8, !dbg !475
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0), i8* %104), !dbg !477
  br label %105, !dbg !478

; <label>:105:                                    ; preds = %103, %100
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0)), !dbg !479
  store i32 0, i32* @g_negotiate_rdp_protocol, align 4, !dbg !480
  br label %30, !dbg !481

; <label>:106:                                    ; preds = %97
  %107 = load i8*, i8** %19, align 8, !dbg !482
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i8* %107), !dbg !483
  store i32 0, i32* %7, align 4, !dbg !484
  br label %138, !dbg !484

; <label>:108:                                    ; preds = %62
  %109 = load i8, i8* %20, align 1, !dbg !485
  %110 = zext i8 %109 to i32, !dbg !485
  %111 = icmp ne i32 %110, 2, !dbg !487
  br i1 %111, label %112, label %115, !dbg !488

; <label>:112:                                    ; preds = %108
  call void @tcp_disconnect(), !dbg !489
  %113 = load i8, i8* %20, align 1, !dbg !491
  %114 = zext i8 %113 to i32, !dbg !491
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i32 0, i32 0), i32 %114), !dbg !492
  store i32 0, i32* %7, align 4, !dbg !493
  br label %138, !dbg !493

; <label>:115:                                    ; preds = %108
  %116 = load i32, i32* %21, align 4, !dbg !494
  %117 = icmp eq i32 %116, 1, !dbg !496
  br i1 %117, label %118, label %123, !dbg !497

; <label>:118:                                    ; preds = %115
  %119 = call i32 @tcp_tls_connect(), !dbg !498
  %120 = icmp ne i32 %119, 0, !dbg !498
  br i1 %120, label %122, label %121, !dbg !501

; <label>:121:                                    ; preds = %118
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i32 0, i32 0)), !dbg !502
  call void @tcp_disconnect(), !dbg !504
  store i32 0, i32* %16, align 4, !dbg !505
  br label %30, !dbg !506

; <label>:122:                                    ; preds = %118
  store i32 0, i32* @g_encryption, align 4, !dbg !507
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i32 0, i32 0)), !dbg !508
  br label %134, !dbg !509

; <label>:123:                                    ; preds = %115
  %124 = load i32, i32* %21, align 4, !dbg !510
  %125 = icmp eq i32 %124, 0, !dbg !512
  br i1 %125, label %126, label %127, !dbg !513

; <label>:126:                                    ; preds = %123
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i32 0, i32 0)), !dbg !514
  br label %133, !dbg !516

; <label>:127:                                    ; preds = %123
  %128 = load i32, i32* %21, align 4, !dbg !517
  %129 = icmp ne i32 %128, 0, !dbg !519
  br i1 %129, label %130, label %132, !dbg !520

; <label>:130:                                    ; preds = %127
  call void @tcp_disconnect(), !dbg !521
  %131 = load i32, i32* %21, align 4, !dbg !523
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.18, i32 0, i32 0), i32 %131), !dbg !524
  store i32 0, i32* %7, align 4, !dbg !525
  br label %138, !dbg !525

; <label>:132:                                    ; preds = %127
  br label %133

; <label>:133:                                    ; preds = %132, %126
  br label %134

; <label>:134:                                    ; preds = %133, %122
  %135 = load i32, i32* %21, align 4, !dbg !526
  %136 = load i32*, i32** %13, align 8, !dbg !527
  store i32 %135, i32* %136, align 4, !dbg !528
  br label %137, !dbg !529

; <label>:137:                                    ; preds = %134, %53, %50
  store i32 1, i32* %7, align 4, !dbg !530
  br label %138, !dbg !530

; <label>:138:                                    ; preds = %137, %130, %112, %106, %47, %42, %35
  %139 = load i32, i32* %7, align 4, !dbg !531
  ret i32 %139, !dbg !531
}

declare i32 @tcp_connect(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @iso_send_connection_request(i8*, i32) #0 !dbg !532 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stream*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !535, metadata !83), !dbg !536
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !537, metadata !83), !dbg !538
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !539, metadata !83), !dbg !540
  call void @llvm.dbg.declare(metadata i32* %6, metadata !541, metadata !83), !dbg !542
  %7 = load i8*, i8** %3, align 8, !dbg !543
  %8 = call i64 @strlen(i8* %7) #5, !dbg !544
  %9 = add i64 30, %8, !dbg !545
  %10 = trunc i64 %9 to i32, !dbg !546
  store i32 %10, i32* %6, align 4, !dbg !542
  %11 = load i32, i32* @g_rdp_version, align 4, !dbg !547
  %12 = icmp uge i32 %11, 5, !dbg !549
  br i1 %12, label %13, label %19, !dbg !550

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* @g_negotiate_rdp_protocol, align 4, !dbg !551
  %15 = icmp ne i32 %14, 0, !dbg !551
  br i1 %15, label %16, label %19, !dbg !553

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %6, align 4, !dbg !554
  %18 = add nsw i32 %17, 8, !dbg !554
  store i32 %18, i32* %6, align 4, !dbg !554
  br label %19, !dbg !555

; <label>:19:                                     ; preds = %16, %13, %2
  %20 = load i32, i32* %6, align 4, !dbg !556
  %21 = call %struct.stream* @tcp_init(i32 %20), !dbg !557
  store %struct.stream* %21, %struct.stream** %5, align 8, !dbg !558
  %22 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !559
  %23 = getelementptr inbounds %struct.stream, %struct.stream* %22, i32 0, i32 0, !dbg !560
  %24 = load i8*, i8** %23, align 8, !dbg !561
  %25 = getelementptr inbounds i8, i8* %24, i32 1, !dbg !561
  store i8* %25, i8** %23, align 8, !dbg !561
  store i8 3, i8* %24, align 1, !dbg !562
  %26 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !563
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %26, i32 0, i32 0, !dbg !564
  %28 = load i8*, i8** %27, align 8, !dbg !565
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !565
  store i8* %29, i8** %27, align 8, !dbg !565
  store i8 0, i8* %28, align 1, !dbg !566
  %30 = load i32, i32* %6, align 4, !dbg !567
  %31 = ashr i32 %30, 8, !dbg !569
  %32 = and i32 %31, 255, !dbg !570
  %33 = trunc i32 %32 to i8, !dbg !571
  %34 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !572
  %35 = getelementptr inbounds %struct.stream, %struct.stream* %34, i32 0, i32 0, !dbg !573
  %36 = load i8*, i8** %35, align 8, !dbg !574
  %37 = getelementptr inbounds i8, i8* %36, i32 1, !dbg !574
  store i8* %37, i8** %35, align 8, !dbg !574
  store i8 %33, i8* %36, align 1, !dbg !575
  %38 = load i32, i32* %6, align 4, !dbg !576
  %39 = and i32 %38, 255, !dbg !577
  %40 = trunc i32 %39 to i8, !dbg !578
  %41 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !579
  %42 = getelementptr inbounds %struct.stream, %struct.stream* %41, i32 0, i32 0, !dbg !580
  %43 = load i8*, i8** %42, align 8, !dbg !581
  %44 = getelementptr inbounds i8, i8* %43, i32 1, !dbg !581
  store i8* %44, i8** %42, align 8, !dbg !581
  store i8 %40, i8* %43, align 1, !dbg !582
  %45 = load i32, i32* %6, align 4, !dbg !583
  %46 = sub nsw i32 %45, 5, !dbg !584
  %47 = trunc i32 %46 to i8, !dbg !583
  %48 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !585
  %49 = getelementptr inbounds %struct.stream, %struct.stream* %48, i32 0, i32 0, !dbg !586
  %50 = load i8*, i8** %49, align 8, !dbg !587
  %51 = getelementptr inbounds i8, i8* %50, i32 1, !dbg !587
  store i8* %51, i8** %49, align 8, !dbg !587
  store i8 %47, i8* %50, align 1, !dbg !588
  %52 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !589
  %53 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 0, !dbg !590
  %54 = load i8*, i8** %53, align 8, !dbg !591
  %55 = getelementptr inbounds i8, i8* %54, i32 1, !dbg !591
  store i8* %55, i8** %53, align 8, !dbg !591
  store i8 -32, i8* %54, align 1, !dbg !592
  %56 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !593
  %57 = getelementptr inbounds %struct.stream, %struct.stream* %56, i32 0, i32 0, !dbg !595
  %58 = load i8*, i8** %57, align 8, !dbg !595
  %59 = bitcast i8* %58 to i16*, !dbg !596
  store i16 0, i16* %59, align 2, !dbg !597
  %60 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !598
  %61 = getelementptr inbounds %struct.stream, %struct.stream* %60, i32 0, i32 0, !dbg !599
  %62 = load i8*, i8** %61, align 8, !dbg !600
  %63 = getelementptr inbounds i8, i8* %62, i64 2, !dbg !600
  store i8* %63, i8** %61, align 8, !dbg !600
  %64 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !601
  %65 = getelementptr inbounds %struct.stream, %struct.stream* %64, i32 0, i32 0, !dbg !603
  %66 = load i8*, i8** %65, align 8, !dbg !603
  %67 = bitcast i8* %66 to i16*, !dbg !604
  store i16 0, i16* %67, align 2, !dbg !605
  %68 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !606
  %69 = getelementptr inbounds %struct.stream, %struct.stream* %68, i32 0, i32 0, !dbg !607
  %70 = load i8*, i8** %69, align 8, !dbg !608
  %71 = getelementptr inbounds i8, i8* %70, i64 2, !dbg !608
  store i8* %71, i8** %69, align 8, !dbg !608
  %72 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !609
  %73 = getelementptr inbounds %struct.stream, %struct.stream* %72, i32 0, i32 0, !dbg !610
  %74 = load i8*, i8** %73, align 8, !dbg !611
  %75 = getelementptr inbounds i8, i8* %74, i32 1, !dbg !611
  store i8* %75, i8** %73, align 8, !dbg !611
  store i8 0, i8* %74, align 1, !dbg !612
  %76 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !613
  %77 = getelementptr inbounds %struct.stream, %struct.stream* %76, i32 0, i32 0, !dbg !615
  %78 = load i8*, i8** %77, align 8, !dbg !615
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i64 17, i32 1, i1 false), !dbg !616
  %79 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !617
  %80 = getelementptr inbounds %struct.stream, %struct.stream* %79, i32 0, i32 0, !dbg !618
  %81 = load i8*, i8** %80, align 8, !dbg !619
  %82 = getelementptr inbounds i8, i8* %81, i64 17, !dbg !619
  store i8* %82, i8** %80, align 8, !dbg !619
  %83 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !620
  %84 = getelementptr inbounds %struct.stream, %struct.stream* %83, i32 0, i32 0, !dbg !622
  %85 = load i8*, i8** %84, align 8, !dbg !622
  %86 = load i8*, i8** %3, align 8, !dbg !623
  %87 = load i8*, i8** %3, align 8, !dbg !624
  %88 = call i64 @strlen(i8* %87) #5, !dbg !625
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 %88, i32 1, i1 false), !dbg !626
  %89 = load i8*, i8** %3, align 8, !dbg !628
  %90 = call i64 @strlen(i8* %89) #5, !dbg !629
  %91 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !631
  %92 = getelementptr inbounds %struct.stream, %struct.stream* %91, i32 0, i32 0, !dbg !632
  %93 = load i8*, i8** %92, align 8, !dbg !633
  %94 = getelementptr inbounds i8, i8* %93, i64 %90, !dbg !633
  store i8* %94, i8** %92, align 8, !dbg !633
  %95 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !634
  %96 = getelementptr inbounds %struct.stream, %struct.stream* %95, i32 0, i32 0, !dbg !635
  %97 = load i8*, i8** %96, align 8, !dbg !636
  %98 = getelementptr inbounds i8, i8* %97, i32 1, !dbg !636
  store i8* %98, i8** %96, align 8, !dbg !636
  store i8 13, i8* %97, align 1, !dbg !637
  %99 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !638
  %100 = getelementptr inbounds %struct.stream, %struct.stream* %99, i32 0, i32 0, !dbg !639
  %101 = load i8*, i8** %100, align 8, !dbg !640
  %102 = getelementptr inbounds i8, i8* %101, i32 1, !dbg !640
  store i8* %102, i8** %100, align 8, !dbg !640
  store i8 10, i8* %101, align 1, !dbg !641
  %103 = load i32, i32* @g_rdp_version, align 4, !dbg !642
  %104 = icmp uge i32 %103, 5, !dbg !644
  br i1 %104, label %105, label %134, !dbg !645

; <label>:105:                                    ; preds = %19
  %106 = load i32, i32* @g_negotiate_rdp_protocol, align 4, !dbg !646
  %107 = icmp ne i32 %106, 0, !dbg !646
  br i1 %107, label %108, label %134, !dbg !648

; <label>:108:                                    ; preds = %105
  %109 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !649
  %110 = getelementptr inbounds %struct.stream, %struct.stream* %109, i32 0, i32 0, !dbg !651
  %111 = load i8*, i8** %110, align 8, !dbg !652
  %112 = getelementptr inbounds i8, i8* %111, i32 1, !dbg !652
  store i8* %112, i8** %110, align 8, !dbg !652
  store i8 1, i8* %111, align 1, !dbg !653
  %113 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !654
  %114 = getelementptr inbounds %struct.stream, %struct.stream* %113, i32 0, i32 0, !dbg !655
  %115 = load i8*, i8** %114, align 8, !dbg !656
  %116 = getelementptr inbounds i8, i8* %115, i32 1, !dbg !656
  store i8* %116, i8** %114, align 8, !dbg !656
  store i8 0, i8* %115, align 1, !dbg !657
  %117 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !658
  %118 = getelementptr inbounds %struct.stream, %struct.stream* %117, i32 0, i32 0, !dbg !660
  %119 = load i8*, i8** %118, align 8, !dbg !660
  %120 = bitcast i8* %119 to i16*, !dbg !661
  store i16 8, i16* %120, align 2, !dbg !662
  %121 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !663
  %122 = getelementptr inbounds %struct.stream, %struct.stream* %121, i32 0, i32 0, !dbg !664
  %123 = load i8*, i8** %122, align 8, !dbg !665
  %124 = getelementptr inbounds i8, i8* %123, i64 2, !dbg !665
  store i8* %124, i8** %122, align 8, !dbg !665
  %125 = load i32, i32* %4, align 4, !dbg !666
  %126 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !668
  %127 = getelementptr inbounds %struct.stream, %struct.stream* %126, i32 0, i32 0, !dbg !669
  %128 = load i8*, i8** %127, align 8, !dbg !669
  %129 = bitcast i8* %128 to i32*, !dbg !670
  store i32 %125, i32* %129, align 4, !dbg !671
  %130 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !672
  %131 = getelementptr inbounds %struct.stream, %struct.stream* %130, i32 0, i32 0, !dbg !673
  %132 = load i8*, i8** %131, align 8, !dbg !674
  %133 = getelementptr inbounds i8, i8* %132, i64 4, !dbg !674
  store i8* %133, i8** %131, align 8, !dbg !674
  br label %134, !dbg !675

; <label>:134:                                    ; preds = %108, %105, %19
  %135 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !676
  %136 = getelementptr inbounds %struct.stream, %struct.stream* %135, i32 0, i32 0, !dbg !677
  %137 = load i8*, i8** %136, align 8, !dbg !677
  %138 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !678
  %139 = getelementptr inbounds %struct.stream, %struct.stream* %138, i32 0, i32 1, !dbg !679
  store i8* %137, i8** %139, align 8, !dbg !680
  %140 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !681
  call void @tcp_send(%struct.stream* %140), !dbg !682
  ret void, !dbg !683
}

declare void @tcp_disconnect() #2

declare i32 @tcp_tls_connect() #2

; Function Attrs: nounwind uwtable
define void @iso_disconnect() #0 !dbg !684 {
  call void @iso_send_msg(i8 zeroext -128), !dbg !687
  call void @tcp_disconnect(), !dbg !688
  ret void, !dbg !689
}

; Function Attrs: nounwind uwtable
define internal void @iso_send_msg(i8 zeroext) #0 !dbg !690 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.stream*, align 8
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !693, metadata !83), !dbg !694
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !695, metadata !83), !dbg !696
  %4 = call %struct.stream* @tcp_init(i32 11), !dbg !697
  store %struct.stream* %4, %struct.stream** %3, align 8, !dbg !698
  %5 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !699
  %6 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !700
  %7 = load i8*, i8** %6, align 8, !dbg !701
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !701
  store i8* %8, i8** %6, align 8, !dbg !701
  store i8 3, i8* %7, align 1, !dbg !702
  %9 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !703
  %10 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 0, !dbg !704
  %11 = load i8*, i8** %10, align 8, !dbg !705
  %12 = getelementptr inbounds i8, i8* %11, i32 1, !dbg !705
  store i8* %12, i8** %10, align 8, !dbg !705
  store i8 0, i8* %11, align 1, !dbg !706
  %13 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !707
  %14 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 0, !dbg !709
  %15 = load i8*, i8** %14, align 8, !dbg !710
  %16 = getelementptr inbounds i8, i8* %15, i32 1, !dbg !710
  store i8* %16, i8** %14, align 8, !dbg !710
  store i8 0, i8* %15, align 1, !dbg !711
  %17 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !712
  %18 = getelementptr inbounds %struct.stream, %struct.stream* %17, i32 0, i32 0, !dbg !713
  %19 = load i8*, i8** %18, align 8, !dbg !714
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !714
  store i8* %20, i8** %18, align 8, !dbg !714
  store i8 11, i8* %19, align 1, !dbg !715
  %21 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !716
  %22 = getelementptr inbounds %struct.stream, %struct.stream* %21, i32 0, i32 0, !dbg !717
  %23 = load i8*, i8** %22, align 8, !dbg !718
  %24 = getelementptr inbounds i8, i8* %23, i32 1, !dbg !718
  store i8* %24, i8** %22, align 8, !dbg !718
  store i8 6, i8* %23, align 1, !dbg !719
  %25 = load i8, i8* %2, align 1, !dbg !720
  %26 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !721
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %26, i32 0, i32 0, !dbg !722
  %28 = load i8*, i8** %27, align 8, !dbg !723
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !723
  store i8* %29, i8** %27, align 8, !dbg !723
  store i8 %25, i8* %28, align 1, !dbg !724
  %30 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !725
  %31 = getelementptr inbounds %struct.stream, %struct.stream* %30, i32 0, i32 0, !dbg !727
  %32 = load i8*, i8** %31, align 8, !dbg !727
  %33 = bitcast i8* %32 to i16*, !dbg !728
  store i16 0, i16* %33, align 2, !dbg !729
  %34 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !730
  %35 = getelementptr inbounds %struct.stream, %struct.stream* %34, i32 0, i32 0, !dbg !731
  %36 = load i8*, i8** %35, align 8, !dbg !732
  %37 = getelementptr inbounds i8, i8* %36, i64 2, !dbg !732
  store i8* %37, i8** %35, align 8, !dbg !732
  %38 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !733
  %39 = getelementptr inbounds %struct.stream, %struct.stream* %38, i32 0, i32 0, !dbg !735
  %40 = load i8*, i8** %39, align 8, !dbg !735
  %41 = bitcast i8* %40 to i16*, !dbg !736
  store i16 0, i16* %41, align 2, !dbg !737
  %42 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !738
  %43 = getelementptr inbounds %struct.stream, %struct.stream* %42, i32 0, i32 0, !dbg !739
  %44 = load i8*, i8** %43, align 8, !dbg !740
  %45 = getelementptr inbounds i8, i8* %44, i64 2, !dbg !740
  store i8* %45, i8** %43, align 8, !dbg !740
  %46 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !741
  %47 = getelementptr inbounds %struct.stream, %struct.stream* %46, i32 0, i32 0, !dbg !742
  %48 = load i8*, i8** %47, align 8, !dbg !743
  %49 = getelementptr inbounds i8, i8* %48, i32 1, !dbg !743
  store i8* %49, i8** %47, align 8, !dbg !743
  store i8 0, i8* %48, align 1, !dbg !744
  %50 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !745
  %51 = getelementptr inbounds %struct.stream, %struct.stream* %50, i32 0, i32 0, !dbg !746
  %52 = load i8*, i8** %51, align 8, !dbg !746
  %53 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !747
  %54 = getelementptr inbounds %struct.stream, %struct.stream* %53, i32 0, i32 1, !dbg !748
  store i8* %52, i8** %54, align 8, !dbg !749
  %55 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !750
  call void @tcp_send(%struct.stream* %55), !dbg !751
  ret void, !dbg !752
}

; Function Attrs: nounwind uwtable
define void @iso_reset_state() #0 !dbg !753 {
  %1 = load i32, i32* @g_encryption_initial, align 4, !dbg !754
  store i32 %1, i32* @g_encryption, align 4, !dbg !755
  call void @tcp_reset_state(), !dbg !756
  ret void, !dbg !757
}

declare void @tcp_reset_state() #2

declare %struct.stream* @tcp_recv(%struct.stream*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!59, !60}
!llvm.ident = !{!61}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !46, globals: !54)
!1 = !DIFile(filename: "[inter]iso.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2 = !{!3, !11, !23, !30, !35, !41}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ISO_PDU_CODE", file: !4, line: 64, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "constants.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "ISO_PDU_CR", value: 224)
!7 = !DIEnumerator(name: "ISO_PDU_CC", value: 208)
!8 = !DIEnumerator(name: "ISO_PDU_DR", value: 128)
!9 = !DIEnumerator(name: "ISO_PDU_DT", value: 240)
!10 = !DIEnumerator(name: "ISO_PDU_ER", value: 112)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_subject_t", file: !12, line: 46, size: 32, align: 32, elements: !13)
!12 = !DIFile(filename: "utils.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22}
!14 = !DIEnumerator(name: "GUI", value: 0)
!15 = !DIEnumerator(name: "Keyboard", value: 1)
!16 = !DIEnumerator(name: "Clipboard", value: 2)
!17 = !DIEnumerator(name: "Sound", value: 3)
!18 = !DIEnumerator(name: "Protocol", value: 4)
!19 = !DIEnumerator(name: "Graphics", value: 5)
!20 = !DIEnumerator(name: "Core", value: 6)
!21 = !DIEnumerator(name: "SmartCard", value: 7)
!22 = !DIEnumerator(name: "Disk", value: 8)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_level_t", file: !12, line: 37, size: 32, align: 32, elements: !24)
!24 = !{!25, !26, !27, !28, !29}
!25 = !DIEnumerator(name: "Debug", value: 0)
!26 = !DIEnumerator(name: "Verbose", value: 1)
!27 = !DIEnumerator(name: "Warning", value: 2)
!28 = !DIEnumerator(name: "Error", value: 3)
!29 = !DIEnumerator(name: "Notice", value: 4)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "RDP_NEG_REQ_CODE", file: !4, line: 81, size: 32, align: 32, elements: !31)
!31 = !{!32, !33, !34}
!32 = !DIEnumerator(name: "PROTOCOL_RDP", value: 0)
!33 = !DIEnumerator(name: "PROTOCOL_SSL", value: 1)
!34 = !DIEnumerator(name: "PROTOCOL_HYBRID", value: 2)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_RDP_VERSION", file: !36, line: 52, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!37 = !{!38, !39, !40}
!38 = !DIEnumerator(name: "RDP_V4", value: 4)
!39 = !DIEnumerator(name: "RDP_V5", value: 5)
!40 = !DIEnumerator(name: "RDP_V6", value: 6)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "RDP_NEG_TYPE_CODE", file: !4, line: 74, size: 32, align: 32, elements: !42)
!42 = !{!43, !44, !45}
!43 = !DIEnumerator(name: "RDP_NEG_REQ", value: 1)
!44 = !DIEnumerator(name: "RDP_NEG_RSP", value: 2)
!45 = !DIEnumerator(name: "RDP_NEG_FAILURE", value: 3)
!46 = !{!47, !48, !51}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !36, line: 43, baseType: !50)
!50 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !36, line: 41, baseType: !53)
!53 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!54 = !{!55}
!55 = distinct !DIGlobalVariable(name: "g_negotiate_rdp_protocol", scope: !0, file: !56, line: 29, type: !57, isLocal: true, isDefinition: true, variable: i32* @g_negotiate_rdp_protocol)
!56 = !DIFile(filename: "iso.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !36, line: 28, baseType: !58)
!58 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!59 = !{i32 2, !"Dwarf Version", i32 4}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!62 = distinct !DISubprogram(name: "iso_init", scope: !56, file: !56, line: 162, type: !63, isLocal: false, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!63 = !DISubroutineType(types: !64)
!64 = !{!65, !58}
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !66, line: 40, baseType: !67)
!66 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !66, line: 25, size: 576, align: 64, elements: !69)
!69 = !{!70, !73, !74, !75, !76, !77, !78, !79, !80}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !68, file: !66, line: 27, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !68, file: !66, line: 28, baseType: !71, size: 64, align: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !68, file: !66, line: 29, baseType: !71, size: 64, align: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !68, file: !66, line: 30, baseType: !50, size: 32, align: 32, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !68, file: !66, line: 33, baseType: !71, size: 64, align: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !68, file: !66, line: 34, baseType: !71, size: 64, align: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !68, file: !66, line: 35, baseType: !71, size: 64, align: 64, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !68, file: !66, line: 36, baseType: !71, size: 64, align: 64, offset: 448)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !68, file: !66, line: 37, baseType: !71, size: 64, align: 64, offset: 512)
!81 = !{}
!82 = !DILocalVariable(name: "length", arg: 1, scope: !62, file: !56, line: 162, type: !58)
!83 = !DIExpression()
!84 = !DILocation(line: 162, column: 14, scope: !62)
!85 = !DILocalVariable(name: "s", scope: !62, file: !56, line: 164, type: !65)
!86 = !DILocation(line: 164, column: 9, scope: !62)
!87 = !DILocation(line: 166, column: 15, scope: !62)
!88 = !DILocation(line: 166, column: 22, scope: !62)
!89 = !DILocation(line: 166, column: 6, scope: !62)
!90 = !DILocation(line: 166, column: 4, scope: !62)
!91 = !DILocation(line: 167, column: 20, scope: !92)
!92 = distinct !DILexicalBlock(scope: !62, file: !56, line: 167, column: 2)
!93 = !DILocation(line: 167, column: 24, scope: !92)
!94 = !DILocation(line: 167, column: 5, scope: !92)
!95 = !DILocation(line: 167, column: 9, scope: !92)
!96 = !DILocation(line: 167, column: 17, scope: !92)
!97 = !DILocation(line: 167, column: 28, scope: !92)
!98 = !DILocation(line: 167, column: 32, scope: !92)
!99 = !DILocation(line: 167, column: 34, scope: !92)
!100 = !DILocation(line: 169, column: 9, scope: !62)
!101 = !DILocation(line: 169, column: 2, scope: !62)
!102 = distinct !DISubprogram(name: "iso_send", scope: !56, file: !56, line: 174, type: !103, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !65}
!105 = !DILocalVariable(name: "s", arg: 1, scope: !102, file: !56, line: 174, type: !65)
!106 = !DILocation(line: 174, column: 17, scope: !102)
!107 = !DILocalVariable(name: "length", scope: !102, file: !56, line: 176, type: !52)
!108 = !DILocation(line: 176, column: 9, scope: !102)
!109 = !DILocation(line: 178, column: 12, scope: !102)
!110 = !DILocation(line: 178, column: 16, scope: !102)
!111 = !DILocation(line: 178, column: 3, scope: !102)
!112 = !DILocation(line: 178, column: 7, scope: !102)
!113 = !DILocation(line: 178, column: 9, scope: !102)
!114 = !DILocation(line: 179, column: 11, scope: !102)
!115 = !DILocation(line: 179, column: 14, scope: !102)
!116 = !DILocation(line: 179, column: 20, scope: !102)
!117 = !DILocation(line: 179, column: 23, scope: !102)
!118 = !DILocation(line: 179, column: 18, scope: !102)
!119 = !DILocation(line: 179, column: 9, scope: !102)
!120 = !DILocation(line: 181, column: 5, scope: !102)
!121 = !DILocation(line: 181, column: 9, scope: !102)
!122 = !DILocation(line: 181, column: 10, scope: !102)
!123 = !DILocation(line: 181, column: 14, scope: !102)
!124 = !DILocation(line: 182, column: 5, scope: !102)
!125 = !DILocation(line: 182, column: 9, scope: !102)
!126 = !DILocation(line: 182, column: 10, scope: !102)
!127 = !DILocation(line: 182, column: 14, scope: !102)
!128 = !DILocation(line: 183, column: 20, scope: !129)
!129 = distinct !DILexicalBlock(scope: !102, file: !56, line: 183, column: 2)
!130 = !DILocation(line: 183, column: 19, scope: !129)
!131 = !DILocation(line: 183, column: 28, scope: !129)
!132 = !DILocation(line: 183, column: 34, scope: !129)
!133 = !DILocation(line: 183, column: 18, scope: !129)
!134 = !DILocation(line: 183, column: 7, scope: !129)
!135 = !DILocation(line: 183, column: 11, scope: !129)
!136 = !DILocation(line: 183, column: 12, scope: !129)
!137 = !DILocation(line: 183, column: 16, scope: !129)
!138 = !DILocation(line: 183, column: 57, scope: !129)
!139 = !DILocation(line: 183, column: 56, scope: !129)
!140 = !DILocation(line: 183, column: 65, scope: !129)
!141 = !DILocation(line: 183, column: 45, scope: !129)
!142 = !DILocation(line: 183, column: 49, scope: !129)
!143 = !DILocation(line: 183, column: 50, scope: !129)
!144 = !DILocation(line: 183, column: 54, scope: !129)
!145 = !DILocation(line: 185, column: 5, scope: !102)
!146 = !DILocation(line: 185, column: 9, scope: !102)
!147 = !DILocation(line: 185, column: 10, scope: !102)
!148 = !DILocation(line: 185, column: 14, scope: !102)
!149 = !DILocation(line: 186, column: 5, scope: !102)
!150 = !DILocation(line: 186, column: 9, scope: !102)
!151 = !DILocation(line: 186, column: 10, scope: !102)
!152 = !DILocation(line: 186, column: 14, scope: !102)
!153 = !DILocation(line: 187, column: 5, scope: !102)
!154 = !DILocation(line: 187, column: 9, scope: !102)
!155 = !DILocation(line: 187, column: 10, scope: !102)
!156 = !DILocation(line: 187, column: 14, scope: !102)
!157 = !DILocation(line: 189, column: 11, scope: !102)
!158 = !DILocation(line: 189, column: 2, scope: !102)
!159 = !DILocation(line: 190, column: 1, scope: !102)
!160 = distinct !DISubprogram(name: "iso_recv", scope: !56, file: !56, line: 194, type: !161, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!161 = !DISubroutineType(types: !162)
!162 = !{!65, !163, !164}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !36, line: 39, baseType: !72)
!166 = !DILocalVariable(name: "is_fastpath", arg: 1, scope: !160, file: !56, line: 194, type: !163)
!167 = !DILocation(line: 194, column: 19, scope: !160)
!168 = !DILocalVariable(name: "fastpath_hdr", arg: 2, scope: !160, file: !56, line: 194, type: !164)
!169 = !DILocation(line: 194, column: 39, scope: !160)
!170 = !DILocalVariable(name: "s", scope: !160, file: !56, line: 196, type: !65)
!171 = !DILocation(line: 196, column: 9, scope: !160)
!172 = !DILocalVariable(name: "code", scope: !160, file: !56, line: 197, type: !165)
!173 = !DILocation(line: 197, column: 8, scope: !160)
!174 = !DILocation(line: 199, column: 26, scope: !160)
!175 = !DILocation(line: 199, column: 39, scope: !160)
!176 = !DILocation(line: 199, column: 6, scope: !160)
!177 = !DILocation(line: 199, column: 4, scope: !160)
!178 = !DILocation(line: 200, column: 6, scope: !179)
!179 = distinct !DILexicalBlock(scope: !160, file: !56, line: 200, column: 6)
!180 = !DILocation(line: 200, column: 8, scope: !179)
!181 = !DILocation(line: 200, column: 6, scope: !160)
!182 = !DILocation(line: 201, column: 3, scope: !179)
!183 = !DILocation(line: 203, column: 7, scope: !184)
!184 = distinct !DILexicalBlock(scope: !160, file: !56, line: 203, column: 6)
!185 = !DILocation(line: 203, column: 6, scope: !184)
!186 = !DILocation(line: 203, column: 19, scope: !184)
!187 = !DILocation(line: 203, column: 6, scope: !160)
!188 = !DILocation(line: 204, column: 10, scope: !184)
!189 = !DILocation(line: 204, column: 3, scope: !184)
!190 = !DILocation(line: 206, column: 6, scope: !191)
!191 = distinct !DILexicalBlock(scope: !160, file: !56, line: 206, column: 6)
!192 = !DILocation(line: 206, column: 11, scope: !191)
!193 = !DILocation(line: 206, column: 6, scope: !160)
!194 = !DILocation(line: 208, column: 72, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !56, line: 207, column: 2)
!196 = !DILocation(line: 208, column: 3, scope: !195)
!197 = !DILocation(line: 209, column: 3, scope: !195)
!198 = !DILocation(line: 211, column: 9, scope: !160)
!199 = !DILocation(line: 211, column: 2, scope: !160)
!200 = !DILocation(line: 212, column: 1, scope: !160)
!201 = distinct !DISubprogram(name: "iso_recv_msg", scope: !56, file: !56, line: 101, type: !202, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!202 = !DISubroutineType(types: !203)
!203 = !{!65, !164, !163, !164}
!204 = !DILocalVariable(name: "code", arg: 1, scope: !201, file: !56, line: 101, type: !164)
!205 = !DILocation(line: 101, column: 22, scope: !201)
!206 = !DILocalVariable(name: "is_fastpath", arg: 2, scope: !201, file: !56, line: 101, type: !163)
!207 = !DILocation(line: 101, column: 37, scope: !201)
!208 = !DILocalVariable(name: "fastpath_hdr", arg: 3, scope: !201, file: !56, line: 101, type: !164)
!209 = !DILocation(line: 101, column: 57, scope: !201)
!210 = !DILocalVariable(name: "s", scope: !201, file: !56, line: 103, type: !65)
!211 = !DILocation(line: 103, column: 9, scope: !201)
!212 = !DILocalVariable(name: "length", scope: !201, file: !56, line: 104, type: !52)
!213 = !DILocation(line: 104, column: 9, scope: !201)
!214 = !DILocalVariable(name: "version", scope: !201, file: !56, line: 105, type: !165)
!215 = !DILocation(line: 105, column: 8, scope: !201)
!216 = !DILocation(line: 107, column: 6, scope: !201)
!217 = !DILocation(line: 107, column: 4, scope: !201)
!218 = !DILocation(line: 108, column: 6, scope: !219)
!219 = distinct !DILexicalBlock(scope: !201, file: !56, line: 108, column: 6)
!220 = !DILocation(line: 108, column: 8, scope: !219)
!221 = !DILocation(line: 108, column: 6, scope: !201)
!222 = !DILocation(line: 109, column: 3, scope: !219)
!223 = !DILocation(line: 111, column: 15, scope: !201)
!224 = !DILocation(line: 111, column: 19, scope: !201)
!225 = !DILocation(line: 111, column: 20, scope: !201)
!226 = !DILocation(line: 111, column: 12, scope: !201)
!227 = !DILocation(line: 111, column: 10, scope: !201)
!228 = !DILocation(line: 114, column: 3, scope: !201)
!229 = !DILocation(line: 114, column: 16, scope: !201)
!230 = !DILocation(line: 115, column: 3, scope: !201)
!231 = !DILocation(line: 115, column: 15, scope: !201)
!232 = !DILocation(line: 116, column: 6, scope: !233)
!233 = distinct !DILexicalBlock(scope: !201, file: !56, line: 116, column: 6)
!234 = !DILocation(line: 116, column: 14, scope: !233)
!235 = !DILocation(line: 116, column: 6, scope: !201)
!236 = !DILocation(line: 118, column: 4, scope: !237)
!237 = distinct !DILexicalBlock(scope: !233, file: !56, line: 117, column: 2)
!238 = !DILocation(line: 118, column: 8, scope: !237)
!239 = !DILocation(line: 118, column: 10, scope: !237)
!240 = !DILocation(line: 119, column: 17, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !56, line: 119, column: 3)
!242 = !DILocation(line: 119, column: 21, scope: !241)
!243 = !DILocation(line: 119, column: 22, scope: !241)
!244 = !DILocation(line: 119, column: 14, scope: !241)
!245 = !DILocation(line: 119, column: 12, scope: !241)
!246 = !DILocation(line: 119, column: 38, scope: !241)
!247 = !DILocation(line: 119, column: 37, scope: !241)
!248 = !DILocation(line: 119, column: 46, scope: !241)
!249 = !DILocation(line: 119, column: 57, scope: !241)
!250 = !DILocation(line: 119, column: 61, scope: !241)
!251 = !DILocation(line: 119, column: 62, scope: !241)
!252 = !DILocation(line: 119, column: 54, scope: !241)
!253 = !DILocation(line: 119, column: 52, scope: !241)
!254 = !DILocation(line: 119, column: 36, scope: !241)
!255 = !DILocation(line: 119, column: 34, scope: !241)
!256 = !DILocation(line: 120, column: 2, scope: !237)
!257 = !DILocation(line: 125, column: 4, scope: !258)
!258 = distinct !DILexicalBlock(scope: !233, file: !56, line: 122, column: 2)
!259 = !DILocation(line: 125, column: 16, scope: !258)
!260 = !DILocation(line: 126, column: 19, scope: !258)
!261 = !DILocation(line: 126, column: 4, scope: !258)
!262 = !DILocation(line: 126, column: 17, scope: !258)
!263 = !DILocation(line: 127, column: 15, scope: !258)
!264 = !DILocation(line: 127, column: 19, scope: !258)
!265 = !DILocation(line: 127, column: 20, scope: !258)
!266 = !DILocation(line: 127, column: 12, scope: !258)
!267 = !DILocation(line: 127, column: 10, scope: !258)
!268 = !DILocation(line: 128, column: 7, scope: !269)
!269 = distinct !DILexicalBlock(scope: !258, file: !56, line: 128, column: 7)
!270 = !DILocation(line: 128, column: 14, scope: !269)
!271 = !DILocation(line: 128, column: 7, scope: !258)
!272 = !DILocation(line: 131, column: 11, scope: !273)
!273 = distinct !DILexicalBlock(scope: !269, file: !56, line: 129, column: 3)
!274 = !DILocation(line: 132, column: 15, scope: !273)
!275 = !DILocation(line: 132, column: 14, scope: !273)
!276 = !DILocation(line: 132, column: 23, scope: !273)
!277 = !DILocation(line: 132, column: 34, scope: !273)
!278 = !DILocation(line: 132, column: 38, scope: !273)
!279 = !DILocation(line: 132, column: 39, scope: !273)
!280 = !DILocation(line: 132, column: 31, scope: !273)
!281 = !DILocation(line: 132, column: 29, scope: !273)
!282 = !DILocation(line: 132, column: 13, scope: !273)
!283 = !DILocation(line: 132, column: 11, scope: !273)
!284 = !DILocation(line: 133, column: 3, scope: !273)
!285 = !DILocation(line: 136, column: 6, scope: !286)
!286 = distinct !DILexicalBlock(scope: !201, file: !56, line: 136, column: 6)
!287 = !DILocation(line: 136, column: 13, scope: !286)
!288 = !DILocation(line: 136, column: 6, scope: !201)
!289 = !DILocation(line: 138, column: 3, scope: !290)
!290 = distinct !DILexicalBlock(scope: !286, file: !56, line: 137, column: 2)
!291 = !DILocation(line: 139, column: 3, scope: !290)
!292 = !DILocation(line: 142, column: 15, scope: !201)
!293 = !DILocation(line: 142, column: 18, scope: !201)
!294 = !DILocation(line: 142, column: 25, scope: !201)
!295 = !DILocation(line: 142, column: 6, scope: !201)
!296 = !DILocation(line: 142, column: 4, scope: !201)
!297 = !DILocation(line: 143, column: 6, scope: !298)
!298 = distinct !DILexicalBlock(scope: !201, file: !56, line: 143, column: 6)
!299 = !DILocation(line: 143, column: 8, scope: !298)
!300 = !DILocation(line: 143, column: 6, scope: !201)
!301 = !DILocation(line: 144, column: 3, scope: !298)
!302 = !DILocation(line: 146, column: 7, scope: !303)
!303 = distinct !DILexicalBlock(scope: !201, file: !56, line: 146, column: 6)
!304 = !DILocation(line: 146, column: 6, scope: !303)
!305 = !DILocation(line: 146, column: 19, scope: !303)
!306 = !DILocation(line: 146, column: 6, scope: !201)
!307 = !DILocation(line: 147, column: 10, scope: !303)
!308 = !DILocation(line: 147, column: 3, scope: !303)
!309 = !DILocation(line: 149, column: 3, scope: !201)
!310 = !DILocation(line: 149, column: 7, scope: !201)
!311 = !DILocation(line: 149, column: 9, scope: !201)
!312 = !DILocation(line: 150, column: 13, scope: !201)
!313 = !DILocation(line: 150, column: 17, scope: !201)
!314 = !DILocation(line: 150, column: 18, scope: !201)
!315 = !DILocation(line: 150, column: 10, scope: !201)
!316 = !DILocation(line: 150, column: 3, scope: !201)
!317 = !DILocation(line: 150, column: 8, scope: !201)
!318 = !DILocation(line: 151, column: 7, scope: !319)
!319 = distinct !DILexicalBlock(scope: !201, file: !56, line: 151, column: 6)
!320 = !DILocation(line: 151, column: 6, scope: !319)
!321 = !DILocation(line: 151, column: 12, scope: !319)
!322 = !DILocation(line: 151, column: 6, scope: !201)
!323 = !DILocation(line: 153, column: 4, scope: !324)
!324 = distinct !DILexicalBlock(scope: !319, file: !56, line: 152, column: 2)
!325 = !DILocation(line: 153, column: 8, scope: !324)
!326 = !DILocation(line: 153, column: 10, scope: !324)
!327 = !DILocation(line: 154, column: 10, scope: !324)
!328 = !DILocation(line: 154, column: 3, scope: !324)
!329 = !DILocation(line: 156, column: 3, scope: !201)
!330 = !DILocation(line: 156, column: 7, scope: !201)
!331 = !DILocation(line: 156, column: 9, scope: !201)
!332 = !DILocation(line: 157, column: 9, scope: !201)
!333 = !DILocation(line: 157, column: 2, scope: !201)
!334 = !DILocation(line: 158, column: 1, scope: !201)
!335 = distinct !DISubprogram(name: "iso_connect", scope: !56, file: !56, line: 216, type: !336, isLocal: false, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!336 = !DISubroutineType(types: !337)
!337 = !{!57, !338, !338, !338, !338, !57, !48}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!340 = !DILocalVariable(name: "server", arg: 1, scope: !335, file: !56, line: 216, type: !338)
!341 = !DILocation(line: 216, column: 19, scope: !335)
!342 = !DILocalVariable(name: "username", arg: 2, scope: !335, file: !56, line: 216, type: !338)
!343 = !DILocation(line: 216, column: 33, scope: !335)
!344 = !DILocalVariable(name: "domain", arg: 3, scope: !335, file: !56, line: 216, type: !338)
!345 = !DILocation(line: 216, column: 49, scope: !335)
!346 = !DILocalVariable(name: "password", arg: 4, scope: !335, file: !56, line: 216, type: !338)
!347 = !DILocation(line: 216, column: 63, scope: !335)
!348 = !DILocalVariable(name: "reconnect", arg: 5, scope: !335, file: !56, line: 217, type: !57)
!349 = !DILocation(line: 217, column: 14, scope: !335)
!350 = !DILocalVariable(name: "selected_protocol", arg: 6, scope: !335, file: !56, line: 217, type: !48)
!351 = !DILocation(line: 217, column: 34, scope: !335)
!352 = !DILocation(line: 219, column: 9, scope: !335)
!353 = !DILocalVariable(name: "s", scope: !335, file: !56, line: 220, type: !65)
!354 = !DILocation(line: 220, column: 9, scope: !335)
!355 = !DILocalVariable(name: "code", scope: !335, file: !56, line: 221, type: !165)
!356 = !DILocation(line: 221, column: 8, scope: !335)
!357 = !DILocalVariable(name: "neg_proto", scope: !335, file: !56, line: 222, type: !49)
!358 = !DILocation(line: 222, column: 9, scope: !335)
!359 = !DILocalVariable(name: "is_fastpath", scope: !335, file: !56, line: 223, type: !57)
!360 = !DILocation(line: 223, column: 10, scope: !335)
!361 = !DILocalVariable(name: "fastpath_hdr", scope: !335, file: !56, line: 224, type: !165)
!362 = !DILocation(line: 224, column: 8, scope: !335)
!363 = !DILocation(line: 226, column: 27, scope: !335)
!364 = !DILocation(line: 228, column: 12, scope: !335)
!365 = !DILocation(line: 239, column: 6, scope: !366)
!366 = distinct !DILexicalBlock(scope: !335, file: !56, line: 239, column: 6)
!367 = !DILocation(line: 239, column: 16, scope: !366)
!368 = !DILocation(line: 239, column: 6, scope: !335)
!369 = !DILocation(line: 240, column: 3, scope: !366)
!370 = !DILocation(line: 242, column: 3, scope: !366)
!371 = !DILocation(line: 239, column: 18, scope: !372)
!372 = !DILexicalBlockFile(scope: !366, file: !56, discriminator: 1)
!373 = !DILocation(line: 245, column: 3, scope: !335)
!374 = !DILocation(line: 245, column: 21, scope: !335)
!375 = !DILocation(line: 246, column: 7, scope: !335)
!376 = !DILocation(line: 248, column: 19, scope: !377)
!377 = distinct !DILexicalBlock(scope: !335, file: !56, line: 248, column: 6)
!378 = !DILocation(line: 248, column: 7, scope: !377)
!379 = !DILocation(line: 248, column: 6, scope: !335)
!380 = !DILocation(line: 249, column: 3, scope: !377)
!381 = !DILocation(line: 251, column: 30, scope: !335)
!382 = !DILocation(line: 251, column: 40, scope: !335)
!383 = !DILocation(line: 251, column: 2, scope: !335)
!384 = !DILocation(line: 253, column: 6, scope: !335)
!385 = !DILocation(line: 253, column: 4, scope: !335)
!386 = !DILocation(line: 254, column: 6, scope: !387)
!387 = distinct !DILexicalBlock(scope: !335, file: !56, line: 254, column: 6)
!388 = !DILocation(line: 254, column: 8, scope: !387)
!389 = !DILocation(line: 254, column: 6, scope: !335)
!390 = !DILocation(line: 255, column: 3, scope: !387)
!391 = !DILocation(line: 257, column: 6, scope: !392)
!392 = distinct !DILexicalBlock(scope: !335, file: !56, line: 257, column: 6)
!393 = !DILocation(line: 257, column: 11, scope: !392)
!394 = !DILocation(line: 257, column: 6, scope: !335)
!395 = !DILocation(line: 259, column: 75, scope: !396)
!396 = distinct !DILexicalBlock(scope: !392, file: !56, line: 258, column: 2)
!397 = !DILocation(line: 259, column: 3, scope: !396)
!398 = !DILocation(line: 260, column: 3, scope: !396)
!399 = !DILocation(line: 261, column: 3, scope: !396)
!400 = !DILocation(line: 264, column: 6, scope: !401)
!401 = distinct !DILexicalBlock(scope: !335, file: !56, line: 264, column: 6)
!402 = !DILocation(line: 264, column: 20, scope: !401)
!403 = !DILocation(line: 264, column: 30, scope: !401)
!404 = !DILocation(line: 264, column: 35, scope: !405)
!405 = !DILexicalBlockFile(scope: !401, file: !56, discriminator: 1)
!406 = !DILocation(line: 264, column: 39, scope: !405)
!407 = !DILocation(line: 264, column: 41, scope: !405)
!408 = !DILocation(line: 264, column: 49, scope: !405)
!409 = !DILocation(line: 264, column: 53, scope: !405)
!410 = !DILocation(line: 264, column: 45, scope: !405)
!411 = !DILocation(line: 264, column: 6, scope: !405)
!412 = !DILocalVariable(name: "reason", scope: !413, file: !56, line: 267, type: !414)
!413 = distinct !DILexicalBlock(scope: !401, file: !56, line: 265, column: 2)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!416 = !DILocation(line: 267, column: 15, scope: !413)
!417 = !DILocalVariable(name: "type", scope: !413, file: !56, line: 269, type: !165)
!418 = !DILocation(line: 269, column: 9, scope: !413)
!419 = !DILocalVariable(name: "data", scope: !413, file: !56, line: 270, type: !49)
!420 = !DILocation(line: 270, column: 10, scope: !413)
!421 = !DILocation(line: 272, column: 13, scope: !413)
!422 = !DILocation(line: 272, column: 17, scope: !413)
!423 = !DILocation(line: 272, column: 18, scope: !413)
!424 = !DILocation(line: 272, column: 10, scope: !413)
!425 = !DILocation(line: 272, column: 8, scope: !413)
!426 = !DILocation(line: 273, column: 4, scope: !413)
!427 = !DILocation(line: 273, column: 8, scope: !413)
!428 = !DILocation(line: 273, column: 10, scope: !413)
!429 = !DILocation(line: 274, column: 4, scope: !413)
!430 = !DILocation(line: 274, column: 8, scope: !413)
!431 = !DILocation(line: 274, column: 10, scope: !413)
!432 = !DILocation(line: 275, column: 25, scope: !433)
!433 = distinct !DILexicalBlock(scope: !413, file: !56, line: 275, column: 3)
!434 = !DILocation(line: 275, column: 29, scope: !433)
!435 = !DILocation(line: 275, column: 12, scope: !433)
!436 = !DILocation(line: 275, column: 10, scope: !433)
!437 = !DILocation(line: 275, column: 34, scope: !433)
!438 = !DILocation(line: 275, column: 38, scope: !433)
!439 = !DILocation(line: 275, column: 40, scope: !433)
!440 = !DILocation(line: 277, column: 7, scope: !441)
!441 = distinct !DILexicalBlock(scope: !413, file: !56, line: 277, column: 7)
!442 = !DILocation(line: 277, column: 12, scope: !441)
!443 = !DILocation(line: 277, column: 7, scope: !413)
!444 = !DILocalVariable(name: "retry_without_neg", scope: !445, file: !56, line: 279, type: !57)
!445 = distinct !DILexicalBlock(scope: !441, file: !56, line: 278, column: 3)
!446 = !DILocation(line: 279, column: 12, scope: !445)
!447 = !DILocation(line: 281, column: 12, scope: !445)
!448 = !DILocation(line: 281, column: 4, scope: !445)
!449 = !DILocation(line: 284, column: 13, scope: !450)
!450 = distinct !DILexicalBlock(scope: !445, file: !56, line: 282, column: 4)
!451 = !DILocation(line: 285, column: 6, scope: !450)
!452 = !DILocation(line: 287, column: 13, scope: !450)
!453 = !DILocation(line: 288, column: 24, scope: !450)
!454 = !DILocation(line: 289, column: 6, scope: !450)
!455 = !DILocation(line: 291, column: 13, scope: !450)
!456 = !DILocation(line: 292, column: 24, scope: !450)
!457 = !DILocation(line: 293, column: 6, scope: !450)
!458 = !DILocation(line: 295, column: 13, scope: !450)
!459 = !DILocation(line: 296, column: 6, scope: !450)
!460 = !DILocation(line: 298, column: 13, scope: !450)
!461 = !DILocation(line: 299, column: 6, scope: !450)
!462 = !DILocation(line: 301, column: 13, scope: !450)
!463 = !DILocation(line: 302, column: 6, scope: !450)
!464 = !DILocation(line: 304, column: 13, scope: !450)
!465 = !DILocation(line: 305, column: 4, scope: !450)
!466 = !DILocation(line: 307, column: 4, scope: !445)
!467 = !DILocation(line: 309, column: 8, scope: !468)
!468 = distinct !DILexicalBlock(scope: !445, file: !56, line: 309, column: 8)
!469 = !DILocation(line: 309, column: 8, scope: !445)
!470 = !DILocation(line: 311, column: 9, scope: !471)
!471 = distinct !DILexicalBlock(scope: !472, file: !56, line: 311, column: 9)
!472 = distinct !DILexicalBlock(scope: !468, file: !56, line: 310, column: 4)
!473 = !DILocation(line: 311, column: 16, scope: !471)
!474 = !DILocation(line: 311, column: 9, scope: !472)
!475 = !DILocation(line: 315, column: 13, scope: !476)
!476 = distinct !DILexicalBlock(scope: !471, file: !56, line: 312, column: 5)
!477 = !DILocation(line: 313, column: 6, scope: !476)
!478 = !DILocation(line: 316, column: 5, scope: !476)
!479 = !DILocation(line: 318, column: 5, scope: !472)
!480 = !DILocation(line: 319, column: 30, scope: !472)
!481 = !DILocation(line: 320, column: 5, scope: !472)
!482 = !DILocation(line: 323, column: 53, scope: !445)
!483 = !DILocation(line: 323, column: 4, scope: !445)
!484 = !DILocation(line: 324, column: 4, scope: !445)
!485 = !DILocation(line: 327, column: 7, scope: !486)
!486 = distinct !DILexicalBlock(scope: !413, file: !56, line: 327, column: 7)
!487 = !DILocation(line: 327, column: 12, scope: !486)
!488 = !DILocation(line: 327, column: 7, scope: !413)
!489 = !DILocation(line: 329, column: 4, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !56, line: 328, column: 3)
!491 = !DILocation(line: 331, column: 11, scope: !490)
!492 = !DILocation(line: 330, column: 4, scope: !490)
!493 = !DILocation(line: 332, column: 4, scope: !490)
!494 = !DILocation(line: 336, column: 7, scope: !495)
!495 = distinct !DILexicalBlock(scope: !413, file: !56, line: 336, column: 7)
!496 = !DILocation(line: 336, column: 12, scope: !495)
!497 = !DILocation(line: 336, column: 7, scope: !413)
!498 = !DILocation(line: 338, column: 9, scope: !499)
!499 = distinct !DILexicalBlock(scope: !500, file: !56, line: 338, column: 8)
!500 = distinct !DILexicalBlock(scope: !495, file: !56, line: 337, column: 3)
!501 = !DILocation(line: 338, column: 8, scope: !500)
!502 = !DILocation(line: 341, column: 5, scope: !503)
!503 = distinct !DILexicalBlock(scope: !499, file: !56, line: 339, column: 4)
!504 = !DILocation(line: 343, column: 5, scope: !503)
!505 = !DILocation(line: 344, column: 15, scope: !503)
!506 = !DILocation(line: 345, column: 5, scope: !503)
!507 = !DILocation(line: 348, column: 17, scope: !500)
!508 = !DILocation(line: 349, column: 4, scope: !500)
!509 = !DILocation(line: 350, column: 3, scope: !500)
!510 = !DILocation(line: 369, column: 12, scope: !511)
!511 = distinct !DILexicalBlock(scope: !495, file: !56, line: 369, column: 12)
!512 = !DILocation(line: 369, column: 17, scope: !511)
!513 = !DILocation(line: 369, column: 12, scope: !495)
!514 = !DILocation(line: 371, column: 4, scope: !515)
!515 = distinct !DILexicalBlock(scope: !511, file: !56, line: 370, column: 3)
!516 = !DILocation(line: 372, column: 3, scope: !515)
!517 = !DILocation(line: 373, column: 12, scope: !518)
!518 = distinct !DILexicalBlock(scope: !511, file: !56, line: 373, column: 12)
!519 = !DILocation(line: 373, column: 17, scope: !518)
!520 = !DILocation(line: 373, column: 12, scope: !511)
!521 = !DILocation(line: 375, column: 4, scope: !522)
!522 = distinct !DILexicalBlock(scope: !518, file: !56, line: 374, column: 3)
!523 = !DILocation(line: 378, column: 11, scope: !522)
!524 = !DILocation(line: 376, column: 4, scope: !522)
!525 = !DILocation(line: 379, column: 4, scope: !522)
!526 = !DILocation(line: 382, column: 24, scope: !413)
!527 = !DILocation(line: 382, column: 4, scope: !413)
!528 = !DILocation(line: 382, column: 22, scope: !413)
!529 = !DILocation(line: 383, column: 2, scope: !413)
!530 = !DILocation(line: 384, column: 2, scope: !335)
!531 = !DILocation(line: 385, column: 1, scope: !335)
!532 = distinct !DISubprogram(name: "iso_send_connection_request", scope: !56, file: !56, line: 60, type: !533, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !338, !49}
!535 = !DILocalVariable(name: "username", arg: 1, scope: !532, file: !56, line: 60, type: !338)
!536 = !DILocation(line: 60, column: 35, scope: !532)
!537 = !DILocalVariable(name: "neg_proto", arg: 2, scope: !532, file: !56, line: 60, type: !49)
!538 = !DILocation(line: 60, column: 52, scope: !532)
!539 = !DILocalVariable(name: "s", scope: !532, file: !56, line: 62, type: !65)
!540 = !DILocation(line: 62, column: 9, scope: !532)
!541 = !DILocalVariable(name: "length", scope: !532, file: !56, line: 63, type: !58)
!542 = !DILocation(line: 63, column: 6, scope: !532)
!543 = !DILocation(line: 63, column: 27, scope: !532)
!544 = !DILocation(line: 63, column: 20, scope: !532)
!545 = !DILocation(line: 63, column: 18, scope: !532)
!546 = !DILocation(line: 63, column: 15, scope: !532)
!547 = !DILocation(line: 65, column: 6, scope: !548)
!548 = distinct !DILexicalBlock(scope: !532, file: !56, line: 65, column: 6)
!549 = !DILocation(line: 65, column: 20, scope: !548)
!550 = !DILocation(line: 65, column: 30, scope: !548)
!551 = !DILocation(line: 65, column: 33, scope: !552)
!552 = !DILexicalBlockFile(scope: !548, file: !56, discriminator: 1)
!553 = !DILocation(line: 65, column: 6, scope: !552)
!554 = !DILocation(line: 66, column: 10, scope: !548)
!555 = !DILocation(line: 66, column: 3, scope: !548)
!556 = !DILocation(line: 68, column: 15, scope: !532)
!557 = !DILocation(line: 68, column: 6, scope: !532)
!558 = !DILocation(line: 68, column: 4, scope: !532)
!559 = !DILocation(line: 70, column: 5, scope: !532)
!560 = !DILocation(line: 70, column: 9, scope: !532)
!561 = !DILocation(line: 70, column: 10, scope: !532)
!562 = !DILocation(line: 70, column: 14, scope: !532)
!563 = !DILocation(line: 71, column: 5, scope: !532)
!564 = !DILocation(line: 71, column: 9, scope: !532)
!565 = !DILocation(line: 71, column: 10, scope: !532)
!566 = !DILocation(line: 71, column: 14, scope: !532)
!567 = !DILocation(line: 72, column: 20, scope: !568)
!568 = distinct !DILexicalBlock(scope: !532, file: !56, line: 72, column: 2)
!569 = !DILocation(line: 72, column: 28, scope: !568)
!570 = !DILocation(line: 72, column: 34, scope: !568)
!571 = !DILocation(line: 72, column: 18, scope: !568)
!572 = !DILocation(line: 72, column: 7, scope: !568)
!573 = !DILocation(line: 72, column: 11, scope: !568)
!574 = !DILocation(line: 72, column: 12, scope: !568)
!575 = !DILocation(line: 72, column: 16, scope: !568)
!576 = !DILocation(line: 72, column: 57, scope: !568)
!577 = !DILocation(line: 72, column: 65, scope: !568)
!578 = !DILocation(line: 72, column: 56, scope: !568)
!579 = !DILocation(line: 72, column: 45, scope: !568)
!580 = !DILocation(line: 72, column: 49, scope: !568)
!581 = !DILocation(line: 72, column: 50, scope: !568)
!582 = !DILocation(line: 72, column: 54, scope: !568)
!583 = !DILocation(line: 74, column: 16, scope: !532)
!584 = !DILocation(line: 74, column: 23, scope: !532)
!585 = !DILocation(line: 74, column: 5, scope: !532)
!586 = !DILocation(line: 74, column: 9, scope: !532)
!587 = !DILocation(line: 74, column: 10, scope: !532)
!588 = !DILocation(line: 74, column: 14, scope: !532)
!589 = !DILocation(line: 75, column: 5, scope: !532)
!590 = !DILocation(line: 75, column: 9, scope: !532)
!591 = !DILocation(line: 75, column: 10, scope: !532)
!592 = !DILocation(line: 75, column: 14, scope: !532)
!593 = !DILocation(line: 76, column: 17, scope: !594)
!594 = distinct !DILexicalBlock(scope: !532, file: !56, line: 76, column: 2)
!595 = !DILocation(line: 76, column: 21, scope: !594)
!596 = !DILocation(line: 76, column: 4, scope: !594)
!597 = !DILocation(line: 76, column: 24, scope: !594)
!598 = !DILocation(line: 76, column: 30, scope: !594)
!599 = !DILocation(line: 76, column: 34, scope: !594)
!600 = !DILocation(line: 76, column: 36, scope: !594)
!601 = !DILocation(line: 77, column: 17, scope: !602)
!602 = distinct !DILexicalBlock(scope: !532, file: !56, line: 77, column: 2)
!603 = !DILocation(line: 77, column: 21, scope: !602)
!604 = !DILocation(line: 77, column: 4, scope: !602)
!605 = !DILocation(line: 77, column: 24, scope: !602)
!606 = !DILocation(line: 77, column: 30, scope: !602)
!607 = !DILocation(line: 77, column: 34, scope: !602)
!608 = !DILocation(line: 77, column: 36, scope: !602)
!609 = !DILocation(line: 78, column: 5, scope: !532)
!610 = !DILocation(line: 78, column: 9, scope: !532)
!611 = !DILocation(line: 78, column: 10, scope: !532)
!612 = !DILocation(line: 78, column: 14, scope: !532)
!613 = !DILocation(line: 80, column: 12, scope: !614)
!614 = distinct !DILexicalBlock(scope: !532, file: !56, line: 80, column: 2)
!615 = !DILocation(line: 80, column: 16, scope: !614)
!616 = !DILocation(line: 80, column: 4, scope: !614)
!617 = !DILocation(line: 80, column: 69, scope: !614)
!618 = !DILocation(line: 80, column: 73, scope: !614)
!619 = !DILocation(line: 80, column: 75, scope: !614)
!620 = !DILocation(line: 81, column: 12, scope: !621)
!621 = distinct !DILexicalBlock(scope: !532, file: !56, line: 81, column: 2)
!622 = !DILocation(line: 81, column: 16, scope: !621)
!623 = !DILocation(line: 81, column: 18, scope: !621)
!624 = !DILocation(line: 81, column: 34, scope: !621)
!625 = !DILocation(line: 81, column: 27, scope: !621)
!626 = !DILocation(line: 81, column: 4, scope: !627)
!627 = !DILexicalBlockFile(scope: !621, file: !56, discriminator: 1)
!628 = !DILocation(line: 81, column: 63, scope: !621)
!629 = !DILocation(line: 81, column: 56, scope: !630)
!630 = !DILexicalBlockFile(scope: !621, file: !56, discriminator: 2)
!631 = !DILocation(line: 81, column: 47, scope: !621)
!632 = !DILocation(line: 81, column: 51, scope: !621)
!633 = !DILocation(line: 81, column: 53, scope: !621)
!634 = !DILocation(line: 83, column: 5, scope: !532)
!635 = !DILocation(line: 83, column: 9, scope: !532)
!636 = !DILocation(line: 83, column: 10, scope: !532)
!637 = !DILocation(line: 83, column: 14, scope: !532)
!638 = !DILocation(line: 84, column: 5, scope: !532)
!639 = !DILocation(line: 84, column: 9, scope: !532)
!640 = !DILocation(line: 84, column: 10, scope: !532)
!641 = !DILocation(line: 84, column: 14, scope: !532)
!642 = !DILocation(line: 86, column: 6, scope: !643)
!643 = distinct !DILexicalBlock(scope: !532, file: !56, line: 86, column: 6)
!644 = !DILocation(line: 86, column: 20, scope: !643)
!645 = !DILocation(line: 86, column: 30, scope: !643)
!646 = !DILocation(line: 86, column: 33, scope: !647)
!647 = !DILexicalBlockFile(scope: !643, file: !56, discriminator: 1)
!648 = !DILocation(line: 86, column: 6, scope: !647)
!649 = !DILocation(line: 89, column: 6, scope: !650)
!650 = distinct !DILexicalBlock(scope: !643, file: !56, line: 87, column: 2)
!651 = !DILocation(line: 89, column: 10, scope: !650)
!652 = !DILocation(line: 89, column: 11, scope: !650)
!653 = !DILocation(line: 89, column: 15, scope: !650)
!654 = !DILocation(line: 90, column: 6, scope: !650)
!655 = !DILocation(line: 90, column: 10, scope: !650)
!656 = !DILocation(line: 90, column: 11, scope: !650)
!657 = !DILocation(line: 90, column: 15, scope: !650)
!658 = !DILocation(line: 91, column: 18, scope: !659)
!659 = distinct !DILexicalBlock(scope: !650, file: !56, line: 91, column: 3)
!660 = !DILocation(line: 91, column: 22, scope: !659)
!661 = !DILocation(line: 91, column: 5, scope: !659)
!662 = !DILocation(line: 91, column: 25, scope: !659)
!663 = !DILocation(line: 91, column: 31, scope: !659)
!664 = !DILocation(line: 91, column: 35, scope: !659)
!665 = !DILocation(line: 91, column: 37, scope: !659)
!666 = !DILocation(line: 92, column: 27, scope: !667)
!667 = distinct !DILexicalBlock(scope: !650, file: !56, line: 92, column: 3)
!668 = !DILocation(line: 92, column: 18, scope: !667)
!669 = !DILocation(line: 92, column: 22, scope: !667)
!670 = !DILocation(line: 92, column: 5, scope: !667)
!671 = !DILocation(line: 92, column: 25, scope: !667)
!672 = !DILocation(line: 92, column: 39, scope: !667)
!673 = !DILocation(line: 92, column: 43, scope: !667)
!674 = !DILocation(line: 92, column: 45, scope: !667)
!675 = !DILocation(line: 93, column: 2, scope: !650)
!676 = !DILocation(line: 95, column: 14, scope: !532)
!677 = !DILocation(line: 95, column: 18, scope: !532)
!678 = !DILocation(line: 95, column: 3, scope: !532)
!679 = !DILocation(line: 95, column: 7, scope: !532)
!680 = !DILocation(line: 95, column: 11, scope: !532)
!681 = !DILocation(line: 96, column: 11, scope: !532)
!682 = !DILocation(line: 96, column: 2, scope: !532)
!683 = !DILocation(line: 97, column: 1, scope: !532)
!684 = distinct !DISubprogram(name: "iso_disconnect", scope: !56, file: !56, line: 389, type: !685, isLocal: false, isDefinition: true, scopeLine: 390, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!685 = !DISubroutineType(types: !686)
!686 = !{null}
!687 = !DILocation(line: 391, column: 2, scope: !684)
!688 = !DILocation(line: 392, column: 2, scope: !684)
!689 = !DILocation(line: 393, column: 1, scope: !684)
!690 = distinct !DISubprogram(name: "iso_send_msg", scope: !56, file: !56, line: 39, type: !691, isLocal: true, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !165}
!693 = !DILocalVariable(name: "code", arg: 1, scope: !690, file: !56, line: 39, type: !165)
!694 = !DILocation(line: 39, column: 20, scope: !690)
!695 = !DILocalVariable(name: "s", scope: !690, file: !56, line: 41, type: !65)
!696 = !DILocation(line: 41, column: 9, scope: !690)
!697 = !DILocation(line: 43, column: 6, scope: !690)
!698 = !DILocation(line: 43, column: 4, scope: !690)
!699 = !DILocation(line: 45, column: 5, scope: !690)
!700 = !DILocation(line: 45, column: 9, scope: !690)
!701 = !DILocation(line: 45, column: 10, scope: !690)
!702 = !DILocation(line: 45, column: 14, scope: !690)
!703 = !DILocation(line: 46, column: 5, scope: !690)
!704 = !DILocation(line: 46, column: 9, scope: !690)
!705 = !DILocation(line: 46, column: 10, scope: !690)
!706 = !DILocation(line: 46, column: 14, scope: !690)
!707 = !DILocation(line: 47, column: 7, scope: !708)
!708 = distinct !DILexicalBlock(scope: !690, file: !56, line: 47, column: 2)
!709 = !DILocation(line: 47, column: 11, scope: !708)
!710 = !DILocation(line: 47, column: 12, scope: !708)
!711 = !DILocation(line: 47, column: 16, scope: !708)
!712 = !DILocation(line: 47, column: 41, scope: !708)
!713 = !DILocation(line: 47, column: 45, scope: !708)
!714 = !DILocation(line: 47, column: 46, scope: !708)
!715 = !DILocation(line: 47, column: 50, scope: !708)
!716 = !DILocation(line: 49, column: 5, scope: !690)
!717 = !DILocation(line: 49, column: 9, scope: !690)
!718 = !DILocation(line: 49, column: 10, scope: !690)
!719 = !DILocation(line: 49, column: 14, scope: !690)
!720 = !DILocation(line: 50, column: 16, scope: !690)
!721 = !DILocation(line: 50, column: 5, scope: !690)
!722 = !DILocation(line: 50, column: 9, scope: !690)
!723 = !DILocation(line: 50, column: 10, scope: !690)
!724 = !DILocation(line: 50, column: 14, scope: !690)
!725 = !DILocation(line: 51, column: 17, scope: !726)
!726 = distinct !DILexicalBlock(scope: !690, file: !56, line: 51, column: 2)
!727 = !DILocation(line: 51, column: 21, scope: !726)
!728 = !DILocation(line: 51, column: 4, scope: !726)
!729 = !DILocation(line: 51, column: 24, scope: !726)
!730 = !DILocation(line: 51, column: 30, scope: !726)
!731 = !DILocation(line: 51, column: 34, scope: !726)
!732 = !DILocation(line: 51, column: 36, scope: !726)
!733 = !DILocation(line: 52, column: 17, scope: !734)
!734 = distinct !DILexicalBlock(scope: !690, file: !56, line: 52, column: 2)
!735 = !DILocation(line: 52, column: 21, scope: !734)
!736 = !DILocation(line: 52, column: 4, scope: !734)
!737 = !DILocation(line: 52, column: 24, scope: !734)
!738 = !DILocation(line: 52, column: 30, scope: !734)
!739 = !DILocation(line: 52, column: 34, scope: !734)
!740 = !DILocation(line: 52, column: 36, scope: !734)
!741 = !DILocation(line: 53, column: 5, scope: !690)
!742 = !DILocation(line: 53, column: 9, scope: !690)
!743 = !DILocation(line: 53, column: 10, scope: !690)
!744 = !DILocation(line: 53, column: 14, scope: !690)
!745 = !DILocation(line: 55, column: 14, scope: !690)
!746 = !DILocation(line: 55, column: 18, scope: !690)
!747 = !DILocation(line: 55, column: 3, scope: !690)
!748 = !DILocation(line: 55, column: 7, scope: !690)
!749 = !DILocation(line: 55, column: 11, scope: !690)
!750 = !DILocation(line: 56, column: 11, scope: !690)
!751 = !DILocation(line: 56, column: 2, scope: !690)
!752 = !DILocation(line: 57, column: 1, scope: !690)
!753 = distinct !DISubprogram(name: "iso_reset_state", scope: !56, file: !56, line: 397, type: !685, isLocal: false, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!754 = !DILocation(line: 399, column: 17, scope: !753)
!755 = !DILocation(line: 399, column: 15, scope: !753)
!756 = !DILocation(line: 400, column: 2, scope: !753)
!757 = !DILocation(line: 401, column: 1, scope: !753)
