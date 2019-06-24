; ModuleID = './libDynxdr_la-dynxdr.o.i'
source_filename = "./libDynxdr_la-dynxdr.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }
%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.DynXdrData = type { %struct.DynBuf, i8 }
%struct.DynBuf = type { i8*, i64, i64 }

@DynXdr_Create.dynXdrOps = internal global %struct.xdr_ops { i32 (%struct.XDR*, i64*)* null, i32 (%struct.XDR*, i64*)* @DynXdrPutLong, i32 (%struct.XDR*, i8*, i32)* null, i32 (%struct.XDR*, i8*, i32)* @DynXdrPutBytes, i32 (%struct.XDR*)* @DynXdrGetPos, i32 (%struct.XDR*, i32)* @DynXdrSetPos, i32* (%struct.XDR*, i32)* @DynXdrInline, void (%struct.XDR*)* null, i32 (%struct.XDR*, i32*)* null, i32 (%struct.XDR*, i32*)* @DynXdrPutInt32 }, align 8

; Function Attrs: nounwind uwtable
define %struct.XDR* @DynXdr_Create(%struct.XDR*) #0 !dbg !43 {
  %2 = alloca %struct.XDR*, align 8
  %3 = alloca %struct.XDR*, align 8
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca %struct.DynXdrData*, align 8
  store %struct.XDR* %0, %struct.XDR** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %3, metadata !117, metadata !118), !dbg !119
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !120, metadata !118), !dbg !121
  call void @llvm.dbg.declare(metadata %struct.DynXdrData** %5, metadata !122, metadata !118), !dbg !123
  %6 = load %struct.XDR*, %struct.XDR** %3, align 8, !dbg !124
  %7 = icmp eq %struct.XDR* %6, null, !dbg !126
  br i1 %7, label %8, label %16, !dbg !127

; <label>:8:                                      ; preds = %1
  %9 = call noalias i8* @malloc(i64 48) #6, !dbg !128
  %10 = bitcast i8* %9 to %struct.XDR*, !dbg !128
  store %struct.XDR* %10, %struct.XDR** %4, align 8, !dbg !130
  %11 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !131
  %12 = icmp eq %struct.XDR* %11, null, !dbg !133
  br i1 %12, label %13, label %15, !dbg !134

; <label>:13:                                     ; preds = %8
  %14 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !135
  br label %47, !dbg !137

; <label>:15:                                     ; preds = %8
  br label %18, !dbg !138

; <label>:16:                                     ; preds = %1
  %17 = load %struct.XDR*, %struct.XDR** %3, align 8, !dbg !139
  store %struct.XDR* %17, %struct.XDR** %4, align 8, !dbg !141
  br label %18

; <label>:18:                                     ; preds = %16, %15
  %19 = call noalias i8* @malloc(i64 32) #6, !dbg !142
  %20 = bitcast i8* %19 to %struct.DynXdrData*, !dbg !142
  store %struct.DynXdrData* %20, %struct.DynXdrData** %5, align 8, !dbg !143
  %21 = load %struct.DynXdrData*, %struct.DynXdrData** %5, align 8, !dbg !144
  %22 = icmp eq %struct.DynXdrData* %21, null, !dbg !146
  br i1 %22, label %23, label %25, !dbg !147

; <label>:23:                                     ; preds = %18
  %24 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !148
  br label %47, !dbg !151

; <label>:25:                                     ; preds = %18
  %26 = load %struct.XDR*, %struct.XDR** %3, align 8, !dbg !152
  %27 = icmp eq %struct.XDR* %26, null, !dbg !153
  %28 = zext i1 %27 to i32, !dbg !153
  %29 = trunc i32 %28 to i8, !dbg !154
  %30 = load %struct.DynXdrData*, %struct.DynXdrData** %5, align 8, !dbg !155
  %31 = getelementptr inbounds %struct.DynXdrData, %struct.DynXdrData* %30, i32 0, i32 1, !dbg !156
  store i8 %29, i8* %31, align 8, !dbg !157
  %32 = load %struct.DynXdrData*, %struct.DynXdrData** %5, align 8, !dbg !157
  %33 = getelementptr inbounds %struct.DynXdrData, %struct.DynXdrData* %32, i32 0, i32 0, !dbg !153
  call void @DynBuf_Init(%struct.DynBuf* %33), !dbg !155
  %34 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !158
  %35 = getelementptr inbounds %struct.XDR, %struct.XDR* %34, i32 0, i32 0, !dbg !159
  store i32 0, i32* %35, align 8, !dbg !160
  %36 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !161
  %37 = getelementptr inbounds %struct.XDR, %struct.XDR* %36, i32 0, i32 2, !dbg !162
  store i8* null, i8** %37, align 8, !dbg !163
  %38 = load %struct.DynXdrData*, %struct.DynXdrData** %5, align 8, !dbg !164
  %39 = bitcast %struct.DynXdrData* %38 to i8*, !dbg !165
  %40 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !166
  %41 = getelementptr inbounds %struct.XDR, %struct.XDR* %40, i32 0, i32 3, !dbg !167
  store i8* %39, i8** %41, align 8, !dbg !168
  %42 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !169
  %43 = getelementptr inbounds %struct.XDR, %struct.XDR* %42, i32 0, i32 4, !dbg !170
  store i8* null, i8** %43, align 8, !dbg !171
  %44 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !172
  %45 = getelementptr inbounds %struct.XDR, %struct.XDR* %44, i32 0, i32 1, !dbg !173
  store %struct.xdr_ops* @DynXdr_Create.dynXdrOps, %struct.xdr_ops** %45, align 8, !dbg !174
  %46 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !175
  store %struct.XDR* %46, %struct.XDR** %2, align 8, !dbg !176
  br label %54, !dbg !176

; <label>:47:                                     ; preds = %23, %13
  %48 = load %struct.XDR*, %struct.XDR** %3, align 8, !dbg !177
  %49 = icmp eq %struct.XDR* %48, null, !dbg !179
  br i1 %49, label %50, label %53, !dbg !180

; <label>:50:                                     ; preds = %47
  %51 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !181
  %52 = bitcast %struct.XDR* %51 to i8*, !dbg !181
  call void @free(i8* %52) #6, !dbg !183
  br label %53, !dbg !184

; <label>:53:                                     ; preds = %50, %47
  store %struct.XDR* null, %struct.XDR** %2, align 8, !dbg !185
  br label %54, !dbg !185

; <label>:54:                                     ; preds = %53, %25
  %55 = load %struct.XDR*, %struct.XDR** %2, align 8, !dbg !186
  ret %struct.XDR* %55, !dbg !186
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i32 @DynXdrPutLong(%struct.XDR*, i64*) #0 !dbg !187 {
  %3 = alloca %struct.XDR*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.DynXdrData*, align 8
  store %struct.XDR* %0, %struct.XDR** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %3, metadata !188, metadata !118), !dbg !189
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !190, metadata !118), !dbg !191
  call void @llvm.dbg.declare(metadata i32* %5, metadata !192, metadata !118), !dbg !193
  call void @llvm.dbg.declare(metadata %struct.DynXdrData** %6, metadata !194, metadata !118), !dbg !195
  %7 = load %struct.XDR*, %struct.XDR** %3, align 8, !dbg !196
  %8 = getelementptr inbounds %struct.XDR, %struct.XDR* %7, i32 0, i32 3, !dbg !197
  %9 = load i8*, i8** %8, align 8, !dbg !197
  %10 = bitcast i8* %9 to %struct.DynXdrData*, !dbg !198
  store %struct.DynXdrData* %10, %struct.DynXdrData** %6, align 8, !dbg !195
  %11 = load i64*, i64** %4, align 8, !dbg !199
  %12 = load i64, i64* %11, align 8, !dbg !200
  %13 = trunc i64 %12 to i32, !dbg !201
  %14 = call i32 @htonl(i32 %13) #1, !dbg !202
  store i32 %14, i32* %5, align 4, !dbg !203
  %15 = load %struct.DynXdrData*, %struct.DynXdrData** %6, align 8, !dbg !204
  %16 = getelementptr inbounds %struct.DynXdrData, %struct.DynXdrData* %15, i32 0, i32 0, !dbg !205
  %17 = bitcast i32* %5 to i8*, !dbg !206
  %18 = call signext i8 @DynBuf_Append(%struct.DynBuf* %16, i8* %17, i64 4), !dbg !207
  %19 = sext i8 %18 to i32, !dbg !207
  ret i32 %19, !dbg !208
}

; Function Attrs: nounwind uwtable
define internal i32 @DynXdrPutBytes(%struct.XDR*, i8*, i32) #0 !dbg !209 {
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.DynXdrData*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !210, metadata !118), !dbg !211
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !212, metadata !118), !dbg !213
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !214, metadata !118), !dbg !215
  call void @llvm.dbg.declare(metadata %struct.DynXdrData** %7, metadata !216, metadata !118), !dbg !217
  %8 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !218
  %9 = getelementptr inbounds %struct.XDR, %struct.XDR* %8, i32 0, i32 3, !dbg !219
  %10 = load i8*, i8** %9, align 8, !dbg !219
  %11 = bitcast i8* %10 to %struct.DynXdrData*, !dbg !220
  store %struct.DynXdrData* %11, %struct.DynXdrData** %7, align 8, !dbg !217
  %12 = load %struct.DynXdrData*, %struct.DynXdrData** %7, align 8, !dbg !221
  %13 = getelementptr inbounds %struct.DynXdrData, %struct.DynXdrData* %12, i32 0, i32 0, !dbg !222
  %14 = load i8*, i8** %5, align 8, !dbg !223
  %15 = load i32, i32* %6, align 4, !dbg !224
  %16 = zext i32 %15 to i64, !dbg !224
  %17 = call signext i8 @DynBuf_Append(%struct.DynBuf* %13, i8* %14, i64 %16), !dbg !225
  %18 = sext i8 %17 to i32, !dbg !225
  ret i32 %18, !dbg !226
}

; Function Attrs: nounwind uwtable
define internal i32 @DynXdrGetPos(%struct.XDR*) #0 !dbg !227 {
  %2 = alloca %struct.XDR*, align 8
  %3 = alloca %struct.DynXdrData*, align 8
  store %struct.XDR* %0, %struct.XDR** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %2, metadata !228, metadata !118), !dbg !229
  call void @llvm.dbg.declare(metadata %struct.DynXdrData** %3, metadata !230, metadata !118), !dbg !231
  %4 = load %struct.XDR*, %struct.XDR** %2, align 8, !dbg !232
  %5 = getelementptr inbounds %struct.XDR, %struct.XDR* %4, i32 0, i32 3, !dbg !233
  %6 = load i8*, i8** %5, align 8, !dbg !233
  %7 = bitcast i8* %6 to %struct.DynXdrData*, !dbg !234
  store %struct.DynXdrData* %7, %struct.DynXdrData** %3, align 8, !dbg !231
  %8 = load %struct.DynXdrData*, %struct.DynXdrData** %3, align 8, !dbg !235
  %9 = getelementptr inbounds %struct.DynXdrData, %struct.DynXdrData* %8, i32 0, i32 0, !dbg !236
  %10 = call i64 @DynBuf_GetSize(%struct.DynBuf* %9), !dbg !237
  %11 = trunc i64 %10 to i32, !dbg !238
  ret i32 %11, !dbg !239
}

; Function Attrs: nounwind uwtable
define internal i32 @DynXdrSetPos(%struct.XDR*, i32) #0 !dbg !240 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.DynXdrData*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !241, metadata !118), !dbg !242
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !243, metadata !118), !dbg !244
  call void @llvm.dbg.declare(metadata %struct.DynXdrData** %6, metadata !245, metadata !118), !dbg !246
  %7 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !247
  %8 = getelementptr inbounds %struct.XDR, %struct.XDR* %7, i32 0, i32 3, !dbg !248
  %9 = load i8*, i8** %8, align 8, !dbg !248
  %10 = bitcast i8* %9 to %struct.DynXdrData*, !dbg !249
  store %struct.DynXdrData* %10, %struct.DynXdrData** %6, align 8, !dbg !246
  %11 = load i32, i32* %5, align 4, !dbg !250
  %12 = zext i32 %11 to i64, !dbg !250
  %13 = load %struct.DynXdrData*, %struct.DynXdrData** %6, align 8, !dbg !252
  %14 = getelementptr inbounds %struct.DynXdrData, %struct.DynXdrData* %13, i32 0, i32 0, !dbg !253
  %15 = call i64 @DynBuf_GetAllocatedSize(%struct.DynBuf* %14), !dbg !254
  %16 = icmp ule i64 %12, %15, !dbg !255
  br i1 %16, label %17, label %22, !dbg !256

; <label>:17:                                     ; preds = %2
  %18 = load %struct.DynXdrData*, %struct.DynXdrData** %6, align 8, !dbg !257
  %19 = getelementptr inbounds %struct.DynXdrData, %struct.DynXdrData* %18, i32 0, i32 0, !dbg !259
  %20 = load i32, i32* %5, align 4, !dbg !260
  %21 = zext i32 %20 to i64, !dbg !261
  call void @DynBuf_SetSize(%struct.DynBuf* %19, i64 %21), !dbg !262
  store i32 1, i32* %3, align 4, !dbg !263
  br label %23, !dbg !263

; <label>:22:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !264
  br label %23, !dbg !264

; <label>:23:                                     ; preds = %22, %17
  %24 = load i32, i32* %3, align 4, !dbg !265
  ret i32 %24, !dbg !265
}

; Function Attrs: nounwind uwtable
define internal i32* @DynXdrInline(%struct.XDR*, i32) #0 !dbg !266 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.DynXdrData*, align 8
  %7 = alloca %struct.DynBuf*, align 8
  %8 = alloca i32*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !267, metadata !118), !dbg !268
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !269, metadata !118), !dbg !270
  call void @llvm.dbg.declare(metadata %struct.DynXdrData** %6, metadata !271, metadata !118), !dbg !272
  %9 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !273
  %10 = getelementptr inbounds %struct.XDR, %struct.XDR* %9, i32 0, i32 3, !dbg !274
  %11 = load i8*, i8** %10, align 8, !dbg !274
  %12 = bitcast i8* %11 to %struct.DynXdrData*, !dbg !275
  store %struct.DynXdrData* %12, %struct.DynXdrData** %6, align 8, !dbg !272
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %7, metadata !276, metadata !118), !dbg !278
  %13 = load %struct.DynXdrData*, %struct.DynXdrData** %6, align 8, !dbg !279
  %14 = getelementptr inbounds %struct.DynXdrData, %struct.DynXdrData* %13, i32 0, i32 0, !dbg !280
  store %struct.DynBuf* %14, %struct.DynBuf** %7, align 8, !dbg !278
  call void @llvm.dbg.declare(metadata i32** %8, metadata !281, metadata !118), !dbg !282
  %15 = load i32, i32* %5, align 4, !dbg !283
  %16 = icmp eq i32 %15, 0, !dbg !285
  br i1 %16, label %17, label %26, !dbg !286

; <label>:17:                                     ; preds = %2
  %18 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !287
  %19 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %18, i32 0, i32 1, !dbg !289
  %20 = load i64, i64* %19, align 8, !dbg !289
  %21 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !290
  %22 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %21, i32 0, i32 0, !dbg !291
  %23 = load i8*, i8** %22, align 8, !dbg !291
  %24 = getelementptr inbounds i8, i8* %23, i64 %20, !dbg !290
  %25 = bitcast i8* %24 to i32*, !dbg !292
  store i32* %25, i32** %3, align 8, !dbg !293
  br label %65, !dbg !293

; <label>:26:                                     ; preds = %2
  %27 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !294
  %28 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %27, i32 0, i32 2, !dbg !296
  %29 = load i64, i64* %28, align 8, !dbg !296
  %30 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !297
  %31 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %30, i32 0, i32 1, !dbg !298
  %32 = load i64, i64* %31, align 8, !dbg !298
  %33 = sub i64 %29, %32, !dbg !299
  %34 = load i32, i32* %5, align 4, !dbg !300
  %35 = zext i32 %34 to i64, !dbg !300
  %36 = icmp ult i64 %33, %35, !dbg !301
  br i1 %36, label %37, label %49, !dbg !302

; <label>:37:                                     ; preds = %26
  %38 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !303
  %39 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !306
  %40 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %39, i32 0, i32 1, !dbg !307
  %41 = load i64, i64* %40, align 8, !dbg !307
  %42 = load i32, i32* %5, align 4, !dbg !308
  %43 = zext i32 %42 to i64, !dbg !308
  %44 = add i64 %41, %43, !dbg !309
  %45 = call signext i8 @DynBuf_Enlarge(%struct.DynBuf* %38, i64 %44), !dbg !310
  %46 = icmp ne i8 %45, 0, !dbg !310
  br i1 %46, label %48, label %47, !dbg !311

; <label>:47:                                     ; preds = %37
  store i32* null, i32** %3, align 8, !dbg !312
  br label %65, !dbg !312

; <label>:48:                                     ; preds = %37
  br label %49, !dbg !314

; <label>:49:                                     ; preds = %48, %26
  %50 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !315
  %51 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %50, i32 0, i32 1, !dbg !316
  %52 = load i64, i64* %51, align 8, !dbg !316
  %53 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !317
  %54 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %53, i32 0, i32 0, !dbg !318
  %55 = load i8*, i8** %54, align 8, !dbg !318
  %56 = getelementptr inbounds i8, i8* %55, i64 %52, !dbg !317
  %57 = bitcast i8* %56 to i32*, !dbg !319
  store i32* %57, i32** %8, align 8, !dbg !320
  %58 = load i32, i32* %5, align 4, !dbg !321
  %59 = zext i32 %58 to i64, !dbg !321
  %60 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !322
  %61 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %60, i32 0, i32 1, !dbg !323
  %62 = load i64, i64* %61, align 8, !dbg !324
  %63 = add i64 %62, %59, !dbg !324
  store i64 %63, i64* %61, align 8, !dbg !324
  %64 = load i32*, i32** %8, align 8, !dbg !325
  store i32* %64, i32** %3, align 8, !dbg !326
  br label %65, !dbg !326

; <label>:65:                                     ; preds = %49, %47, %17
  %66 = load i32*, i32** %3, align 8, !dbg !327
  ret i32* %66, !dbg !327
}

; Function Attrs: nounwind uwtable
define internal i32 @DynXdrPutInt32(%struct.XDR*, i32*) #0 !dbg !328 {
  %3 = alloca %struct.XDR*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.DynXdrData*, align 8
  store %struct.XDR* %0, %struct.XDR** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %3, metadata !329, metadata !118), !dbg !330
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !331, metadata !118), !dbg !332
  call void @llvm.dbg.declare(metadata i32* %5, metadata !333, metadata !118), !dbg !334
  %7 = load i32*, i32** %4, align 8, !dbg !335
  %8 = load i32, i32* %7, align 4, !dbg !336
  %9 = call i32 @htonl(i32 %8) #1, !dbg !337
  store i32 %9, i32* %5, align 4, !dbg !334
  call void @llvm.dbg.declare(metadata %struct.DynXdrData** %6, metadata !338, metadata !118), !dbg !339
  %10 = load %struct.XDR*, %struct.XDR** %3, align 8, !dbg !340
  %11 = getelementptr inbounds %struct.XDR, %struct.XDR* %10, i32 0, i32 3, !dbg !341
  %12 = load i8*, i8** %11, align 8, !dbg !341
  %13 = bitcast i8* %12 to %struct.DynXdrData*, !dbg !342
  store %struct.DynXdrData* %13, %struct.DynXdrData** %6, align 8, !dbg !339
  %14 = load %struct.DynXdrData*, %struct.DynXdrData** %6, align 8, !dbg !343
  %15 = getelementptr inbounds %struct.DynXdrData, %struct.DynXdrData* %14, i32 0, i32 0, !dbg !344
  %16 = bitcast i32* %5 to i8*, !dbg !345
  %17 = call signext i8 @DynBuf_Append(%struct.DynBuf* %15, i8* %16, i64 4), !dbg !346
  %18 = sext i8 %17 to i32, !dbg !346
  ret i32 %18, !dbg !347
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i32 @assert(...) #3

declare void @DynBuf_Init(%struct.DynBuf*) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define signext i8 @DynXdr_AppendRaw(%struct.XDR*, i8*, i64) #0 !dbg !348 {
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.DynBuf*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !353, metadata !118), !dbg !354
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !355, metadata !118), !dbg !356
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !357, metadata !118), !dbg !358
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %7, metadata !359, metadata !118), !dbg !360
  %8 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !361
  %9 = getelementptr inbounds %struct.XDR, %struct.XDR* %8, i32 0, i32 3, !dbg !362
  %10 = load i8*, i8** %9, align 8, !dbg !362
  %11 = bitcast i8* %10 to %struct.DynXdrData*, !dbg !363
  %12 = getelementptr inbounds %struct.DynXdrData, %struct.DynXdrData* %11, i32 0, i32 0, !dbg !363
  store %struct.DynBuf* %12, %struct.DynBuf** %7, align 8, !dbg !360
  %13 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !364
  %14 = load i8*, i8** %5, align 8, !dbg !365
  %15 = load i64, i64* %6, align 8, !dbg !366
  %16 = call signext i8 @DynBuf_Append(%struct.DynBuf* %13, i8* %14, i64 %15), !dbg !367
  ret i8 %16, !dbg !368
}

declare signext i8 @DynBuf_Append(%struct.DynBuf*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i8* @DynXdr_AllocGet(%struct.XDR*) #0 !dbg !369 {
  %2 = alloca %struct.XDR*, align 8
  %3 = alloca %struct.DynBuf*, align 8
  store %struct.XDR* %0, %struct.XDR** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %2, metadata !372, metadata !118), !dbg !373
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %3, metadata !374, metadata !118), !dbg !375
  %4 = load %struct.XDR*, %struct.XDR** %2, align 8, !dbg !376
  %5 = getelementptr inbounds %struct.XDR, %struct.XDR* %4, i32 0, i32 3, !dbg !377
  %6 = load i8*, i8** %5, align 8, !dbg !377
  %7 = bitcast i8* %6 to %struct.DynXdrData*, !dbg !378
  %8 = getelementptr inbounds %struct.DynXdrData, %struct.DynXdrData* %7, i32 0, i32 0, !dbg !378
  store %struct.DynBuf* %8, %struct.DynBuf** %3, align 8, !dbg !375
  %9 = load %struct.DynBuf*, %struct.DynBuf** %3, align 8, !dbg !379
  %10 = call i8* @DynBuf_Get(%struct.DynBuf* %9), !dbg !380
  %11 = load %struct.DynBuf*, %struct.DynBuf** %3, align 8, !dbg !381
  %12 = call i64 @DynBuf_GetSize(%struct.DynBuf* %11), !dbg !382
  %13 = call i8* @Util_Memdup(i8* %10, i64 %12), !dbg !384
  ret i8* %13, !dbg !386
}

declare i8* @Util_Memdup(i8*, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @DynBuf_Get(%struct.DynBuf*) #4 !dbg !387 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !392, metadata !118), !dbg !393
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !394
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 0, !dbg !395
  %5 = load i8*, i8** %4, align 8, !dbg !395
  ret i8* %5, !dbg !396
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @DynBuf_GetSize(%struct.DynBuf*) #4 !dbg !397 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !400, metadata !118), !dbg !401
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !402
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 1, !dbg !403
  %5 = load i64, i64* %4, align 8, !dbg !403
  ret i64 %5, !dbg !404
}

; Function Attrs: nounwind uwtable
define i8* @DynXdr_Get(%struct.XDR*) #0 !dbg !405 {
  %2 = alloca %struct.XDR*, align 8
  %3 = alloca %struct.DynBuf*, align 8
  store %struct.XDR* %0, %struct.XDR** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %2, metadata !406, metadata !118), !dbg !407
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %3, metadata !408, metadata !118), !dbg !409
  %4 = load %struct.XDR*, %struct.XDR** %2, align 8, !dbg !410
  %5 = getelementptr inbounds %struct.XDR, %struct.XDR* %4, i32 0, i32 3, !dbg !411
  %6 = load i8*, i8** %5, align 8, !dbg !411
  %7 = bitcast i8* %6 to %struct.DynXdrData*, !dbg !412
  %8 = getelementptr inbounds %struct.DynXdrData, %struct.DynXdrData* %7, i32 0, i32 0, !dbg !412
  store %struct.DynBuf* %8, %struct.DynBuf** %3, align 8, !dbg !409
  %9 = load %struct.DynBuf*, %struct.DynBuf** %3, align 8, !dbg !413
  %10 = call i8* @DynBuf_Get(%struct.DynBuf* %9), !dbg !414
  ret i8* %10, !dbg !415
}

; Function Attrs: nounwind uwtable
define void @DynXdr_Destroy(%struct.XDR*, i8 signext) #0 !dbg !416 {
  %3 = alloca %struct.XDR*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.DynXdrData*, align 8
  store %struct.XDR* %0, %struct.XDR** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %3, metadata !419, metadata !118), !dbg !420
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !421, metadata !118), !dbg !422
  %6 = load %struct.XDR*, %struct.XDR** %3, align 8, !dbg !423
  %7 = icmp ne %struct.XDR* %6, null, !dbg !423
  br i1 %7, label %8, label %29, !dbg !425

; <label>:8:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.DynXdrData** %5, metadata !426, metadata !118), !dbg !428
  %9 = load %struct.XDR*, %struct.XDR** %3, align 8, !dbg !429
  %10 = getelementptr inbounds %struct.XDR, %struct.XDR* %9, i32 0, i32 3, !dbg !430
  %11 = load i8*, i8** %10, align 8, !dbg !430
  %12 = bitcast i8* %11 to %struct.DynXdrData*, !dbg !431
  store %struct.DynXdrData* %12, %struct.DynXdrData** %5, align 8, !dbg !428
  %13 = load i8, i8* %4, align 1, !dbg !432
  %14 = icmp ne i8 %13, 0, !dbg !432
  br i1 %14, label %15, label %18, !dbg !434

; <label>:15:                                     ; preds = %8
  %16 = load %struct.DynXdrData*, %struct.DynXdrData** %5, align 8, !dbg !435
  %17 = getelementptr inbounds %struct.DynXdrData, %struct.DynXdrData* %16, i32 0, i32 0, !dbg !437
  call void @DynBuf_Destroy(%struct.DynBuf* %17), !dbg !438
  br label %18, !dbg !439

; <label>:18:                                     ; preds = %15, %8
  %19 = load %struct.DynXdrData*, %struct.DynXdrData** %5, align 8, !dbg !440
  %20 = getelementptr inbounds %struct.DynXdrData, %struct.DynXdrData* %19, i32 0, i32 1, !dbg !442
  %21 = load i8, i8* %20, align 8, !dbg !442
  %22 = icmp ne i8 %21, 0, !dbg !440
  br i1 %22, label %23, label %26, !dbg !443

; <label>:23:                                     ; preds = %18
  %24 = load %struct.XDR*, %struct.XDR** %3, align 8, !dbg !444
  %25 = bitcast %struct.XDR* %24 to i8*, !dbg !444
  call void @free(i8* %25) #6, !dbg !446
  br label %26, !dbg !447

; <label>:26:                                     ; preds = %23, %18
  %27 = load %struct.DynXdrData*, %struct.DynXdrData** %5, align 8, !dbg !448
  %28 = bitcast %struct.DynXdrData* %27 to i8*, !dbg !448
  call void @free(i8* %28) #6, !dbg !449
  br label %29, !dbg !450

; <label>:29:                                     ; preds = %26, %2
  ret void, !dbg !451
}

declare void @DynBuf_Destroy(%struct.DynBuf*) #3

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @DynBuf_GetAllocatedSize(%struct.DynBuf*) #4 !dbg !452 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !453, metadata !118), !dbg !454
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !455
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 2, !dbg !456
  %5 = load i64, i64* %4, align 8, !dbg !456
  ret i64 %5, !dbg !457
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @DynBuf_SetSize(%struct.DynBuf*, i64) #4 !dbg !458 {
  %3 = alloca %struct.DynBuf*, align 8
  %4 = alloca i64, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %3, metadata !461, metadata !118), !dbg !462
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !463, metadata !118), !dbg !464
  %5 = load i64, i64* %4, align 8, !dbg !465
  %6 = load %struct.DynBuf*, %struct.DynBuf** %3, align 8, !dbg !466
  %7 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %6, i32 0, i32 1, !dbg !467
  store i64 %5, i64* %7, align 8, !dbg !468
  ret void, !dbg !469
}

declare signext i8 @DynBuf_Enlarge(%struct.DynBuf*, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!114, !115}
!llvm.ident = !{!116}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, globals: !41)
!1 = !DIFile(filename: "libDynxdr_la-dynxdr.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line147")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdr_op", file: !4, line: 81, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/rpc/xdr.h", directory: "/home/lichi/Desktop/open-vm-tools/line147")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "XDR_ENCODE", value: 0)
!7 = !DIEnumerator(name: "XDR_DECODE", value: 1)
!8 = !DIEnumerator(name: "XDR_FREE", value: 2)
!9 = !{!10, !11, !13, !32, !36, !25, !40}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "DynXdrData", file: !15, line: 43, baseType: !16)
!15 = !DIFile(filename: "dynxdr.c", directory: "/home/lichi/Desktop/open-vm-tools/line147")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DynXdrData", file: !15, line: 40, size: 256, align: 64, elements: !17)
!17 = !{!18, !29}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !16, file: !15, line: 41, baseType: !19, size: 192, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "DynBuf", file: !20, line: 40, baseType: !21)
!20 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dynbuf.h", directory: "/home/lichi/Desktop/open-vm-tools/line147")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DynBuf", file: !20, line: 36, size: 192, align: 64, elements: !22)
!22 = !{!23, !24, !28}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !21, file: !20, line: 37, baseType: !11, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !21, file: !20, line: 38, baseType: !25, size: 64, align: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 216, baseType: !27)
!26 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line147")
!27 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !21, file: !20, line: 39, baseType: !25, size: 64, align: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "freeMe", scope: !16, file: !15, line: 42, baseType: !30, size: 8, align: 8, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !31, line: 230, baseType: !12)
!31 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line147")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !31, line: 174, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !34, line: 196, baseType: !35)
!34 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line147")
!35 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !34, line: 35, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !38, line: 32, baseType: !39)
!38 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line147")
!39 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!41 = !{!42}
!42 = distinct !DIGlobalVariable(name: "dynXdrOps", scope: !43, file: !15, line: 314, type: !53, isLocal: true, isDefinition: true, variable: %struct.xdr_ops* @DynXdr_Create.dynXdrOps)
!43 = distinct !DISubprogram(name: "DynXdr_Create", scope: !15, file: !15, line: 312, type: !44, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !113)
!44 = !DISubroutineType(types: !45)
!45 = !{!46, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "XDR", file: !4, line: 109, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "XDR", file: !4, line: 110, size: 384, align: 64, elements: !49)
!49 = !{!50, !51, !109, !110, !111, !112}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "x_op", scope: !48, file: !4, line: 112, baseType: !3, size: 32, align: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "x_ops", scope: !48, file: !4, line: 136, baseType: !52, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdr_ops", file: !4, line: 113, size: 640, align: 64, elements: !54)
!54 = !{!55, !63, !69, !75, !81, !87, !91, !95, !99, !103}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "x_getlong", scope: !53, file: !4, line: 115, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !46, !61}
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_t", file: !60, line: 37, baseType: !35)
!60 = !DIFile(filename: "/usr/include/rpc/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line147")
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "x_putlong", scope: !53, file: !4, line: 117, baseType: !64, size: 64, align: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!59, !46, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "x_getbytes", scope: !53, file: !4, line: 119, baseType: !70, size: 64, align: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!59, !46, !73, !36}
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !34, line: 116, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__caddr_t", file: !38, line: 183, baseType: !11)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "x_putbytes", scope: !53, file: !4, line: 121, baseType: !76, size: 64, align: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!59, !46, !79, !36}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "x_getpostn", scope: !53, file: !4, line: 123, baseType: !82, size: 64, align: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{!36, !85}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "x_setpostn", scope: !53, file: !4, line: 125, baseType: !88, size: 64, align: 64, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{!59, !46, !36}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "x_inline", scope: !53, file: !4, line: 127, baseType: !92, size: 64, align: 64, offset: 384)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{!40, !46, !36}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "x_destroy", scope: !53, file: !4, line: 129, baseType: !96, size: 64, align: 64, offset: 448)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !46}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "x_getint32", scope: !53, file: !4, line: 131, baseType: !100, size: 64, align: 64, offset: 512)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!59, !46, !40}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "x_putint32", scope: !53, file: !4, line: 133, baseType: !104, size: 64, align: 64, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!59, !46, !107}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "x_public", scope: !48, file: !4, line: 137, baseType: !73, size: 64, align: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "x_private", scope: !48, file: !4, line: 138, baseType: !73, size: 64, align: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "x_base", scope: !48, file: !4, line: 139, baseType: !73, size: 64, align: 64, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "x_handy", scope: !48, file: !4, line: 140, baseType: !36, size: 32, align: 32, offset: 320)
!113 = !{}
!114 = !{i32 2, !"Dwarf Version", i32 4}
!115 = !{i32 2, !"Debug Info Version", i32 3}
!116 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!117 = !DILocalVariable(name: "in", arg: 1, scope: !43, file: !15, line: 312, type: !46)
!118 = !DIExpression()
!119 = !DILocation(line: 312, column: 20, scope: !43)
!120 = !DILocalVariable(name: "ret", scope: !43, file: !15, line: 341, type: !46)
!121 = !DILocation(line: 341, column: 9, scope: !43)
!122 = !DILocalVariable(name: "priv", scope: !43, file: !15, line: 342, type: !13)
!123 = !DILocation(line: 342, column: 16, scope: !43)
!124 = !DILocation(line: 344, column: 8, scope: !125)
!125 = distinct !DILexicalBlock(scope: !43, file: !15, line: 344, column: 8)
!126 = !DILocation(line: 344, column: 11, scope: !125)
!127 = !DILocation(line: 344, column: 8, scope: !43)
!128 = !DILocation(line: 345, column: 13, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !15, line: 344, column: 19)
!130 = !DILocation(line: 345, column: 11, scope: !129)
!131 = !DILocation(line: 346, column: 11, scope: !132)
!132 = distinct !DILexicalBlock(scope: !129, file: !15, line: 346, column: 11)
!133 = !DILocation(line: 346, column: 15, scope: !132)
!134 = !DILocation(line: 346, column: 11, scope: !129)
!135 = !DILocation(line: 347, column: 1, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !15, line: 346, column: 23)
!137 = !DILocation(line: 348, column: 10, scope: !136)
!138 = !DILocation(line: 350, column: 4, scope: !129)
!139 = !DILocation(line: 351, column: 13, scope: !140)
!140 = distinct !DILexicalBlock(scope: !125, file: !15, line: 350, column: 11)
!141 = !DILocation(line: 351, column: 11, scope: !140)
!142 = !DILocation(line: 354, column: 11, scope: !43)
!143 = !DILocation(line: 354, column: 9, scope: !43)
!144 = !DILocation(line: 355, column: 8, scope: !145)
!145 = distinct !DILexicalBlock(scope: !43, file: !15, line: 355, column: 8)
!146 = !DILocation(line: 355, column: 13, scope: !145)
!147 = !DILocation(line: 355, column: 8, scope: !43)
!148 = !DILocation(line: 355, column: 1, scope: !149)
!149 = !DILexicalBlockFile(scope: !150, file: !15, discriminator: 1)
!150 = distinct !DILexicalBlock(scope: !145, file: !15, line: 354, column: 21)
!151 = !DILocation(line: 356, column: 7, scope: !150)
!152 = !DILocation(line: 359, column: 20, scope: !43)
!153 = !DILocation(line: 359, column: 23, scope: !43)
!154 = !DILocation(line: 359, column: 19, scope: !43)
!155 = !DILocation(line: 359, column: 4, scope: !43)
!156 = !DILocation(line: 359, column: 10, scope: !43)
!157 = !DILocation(line: 359, column: 17, scope: !43)
!158 = !DILocation(line: 361, column: 4, scope: !43)
!159 = !DILocation(line: 361, column: 9, scope: !43)
!160 = !DILocation(line: 361, column: 14, scope: !43)
!161 = !DILocation(line: 362, column: 4, scope: !43)
!162 = !DILocation(line: 362, column: 9, scope: !43)
!163 = !DILocation(line: 362, column: 18, scope: !43)
!164 = !DILocation(line: 363, column: 30, scope: !43)
!165 = !DILocation(line: 363, column: 21, scope: !43)
!166 = !DILocation(line: 363, column: 4, scope: !43)
!167 = !DILocation(line: 363, column: 9, scope: !43)
!168 = !DILocation(line: 363, column: 19, scope: !43)
!169 = !DILocation(line: 364, column: 4, scope: !43)
!170 = !DILocation(line: 364, column: 9, scope: !43)
!171 = !DILocation(line: 364, column: 16, scope: !43)
!172 = !DILocation(line: 365, column: 4, scope: !43)
!173 = !DILocation(line: 365, column: 9, scope: !43)
!174 = !DILocation(line: 365, column: 15, scope: !43)
!175 = !DILocation(line: 367, column: 11, scope: !43)
!176 = !DILocation(line: 367, column: 4, scope: !43)
!177 = !DILocation(line: 370, column: 8, scope: !178)
!178 = distinct !DILexicalBlock(scope: !43, file: !15, line: 370, column: 8)
!179 = !DILocation(line: 370, column: 11, scope: !178)
!180 = !DILocation(line: 370, column: 8, scope: !43)
!181 = !DILocation(line: 371, column: 12, scope: !182)
!182 = distinct !DILexicalBlock(scope: !178, file: !15, line: 370, column: 19)
!183 = !DILocation(line: 371, column: 7, scope: !182)
!184 = !DILocation(line: 372, column: 4, scope: !182)
!185 = !DILocation(line: 373, column: 4, scope: !43)
!186 = !DILocation(line: 374, column: 1, scope: !43)
!187 = distinct !DISubprogram(name: "DynXdrPutLong", scope: !15, file: !15, line: 232, type: !65, isLocal: true, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !113)
!188 = !DILocalVariable(name: "xdrs", arg: 1, scope: !187, file: !15, line: 232, type: !46)
!189 = !DILocation(line: 232, column: 20, scope: !187)
!190 = !DILocalVariable(name: "lp", arg: 2, scope: !187, file: !15, line: 233, type: !67)
!191 = !DILocation(line: 233, column: 27, scope: !187)
!192 = !DILocalVariable(name: "out", scope: !187, file: !15, line: 235, type: !32)
!193 = !DILocation(line: 235, column: 10, scope: !187)
!194 = !DILocalVariable(name: "priv", scope: !187, file: !15, line: 236, type: !13)
!195 = !DILocation(line: 236, column: 16, scope: !187)
!196 = !DILocation(line: 236, column: 38, scope: !187)
!197 = !DILocation(line: 236, column: 44, scope: !187)
!198 = !DILocation(line: 236, column: 23, scope: !187)
!199 = !DILocation(line: 241, column: 24, scope: !187)
!200 = !DILocation(line: 241, column: 23, scope: !187)
!201 = !DILocation(line: 241, column: 16, scope: !187)
!202 = !DILocation(line: 241, column: 10, scope: !187)
!203 = !DILocation(line: 241, column: 8, scope: !187)
!204 = !DILocation(line: 242, column: 26, scope: !187)
!205 = !DILocation(line: 242, column: 32, scope: !187)
!206 = !DILocation(line: 242, column: 38, scope: !187)
!207 = !DILocation(line: 242, column: 11, scope: !187)
!208 = !DILocation(line: 242, column: 4, scope: !187)
!209 = distinct !DISubprogram(name: "DynXdrPutBytes", scope: !15, file: !15, line: 109, type: !77, isLocal: true, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !113)
!210 = !DILocalVariable(name: "xdrs", arg: 1, scope: !209, file: !15, line: 109, type: !46)
!211 = !DILocation(line: 109, column: 21, scope: !209)
!212 = !DILocalVariable(name: "data", arg: 2, scope: !209, file: !15, line: 110, type: !79)
!213 = !DILocation(line: 110, column: 28, scope: !209)
!214 = !DILocalVariable(name: "len", arg: 3, scope: !209, file: !15, line: 111, type: !36)
!215 = !DILocation(line: 111, column: 22, scope: !209)
!216 = !DILocalVariable(name: "priv", scope: !209, file: !15, line: 113, type: !13)
!217 = !DILocation(line: 113, column: 16, scope: !209)
!218 = !DILocation(line: 113, column: 38, scope: !209)
!219 = !DILocation(line: 113, column: 44, scope: !209)
!220 = !DILocation(line: 113, column: 23, scope: !209)
!221 = !DILocation(line: 114, column: 26, scope: !209)
!222 = !DILocation(line: 114, column: 32, scope: !209)
!223 = !DILocation(line: 114, column: 38, scope: !209)
!224 = !DILocation(line: 114, column: 44, scope: !209)
!225 = !DILocation(line: 114, column: 11, scope: !209)
!226 = !DILocation(line: 114, column: 4, scope: !209)
!227 = distinct !DISubprogram(name: "DynXdrGetPos", scope: !15, file: !15, line: 138, type: !83, isLocal: true, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !113)
!228 = !DILocalVariable(name: "xdrs", arg: 1, scope: !227, file: !15, line: 138, type: !85)
!229 = !DILocation(line: 138, column: 25, scope: !227)
!230 = !DILocalVariable(name: "priv", scope: !227, file: !15, line: 140, type: !13)
!231 = !DILocation(line: 140, column: 16, scope: !227)
!232 = !DILocation(line: 140, column: 38, scope: !227)
!233 = !DILocation(line: 140, column: 44, scope: !227)
!234 = !DILocation(line: 140, column: 23, scope: !227)
!235 = !DILocation(line: 141, column: 35, scope: !227)
!236 = !DILocation(line: 141, column: 41, scope: !227)
!237 = !DILocation(line: 141, column: 19, scope: !227)
!238 = !DILocation(line: 141, column: 11, scope: !227)
!239 = !DILocation(line: 141, column: 4, scope: !227)
!240 = distinct !DISubprogram(name: "DynXdrSetPos", scope: !15, file: !15, line: 163, type: !89, isLocal: true, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !113)
!241 = !DILocalVariable(name: "xdrs", arg: 1, scope: !240, file: !15, line: 163, type: !46)
!242 = !DILocation(line: 163, column: 19, scope: !240)
!243 = !DILocalVariable(name: "pos", arg: 2, scope: !240, file: !15, line: 164, type: !36)
!244 = !DILocation(line: 164, column: 20, scope: !240)
!245 = !DILocalVariable(name: "priv", scope: !240, file: !15, line: 166, type: !13)
!246 = !DILocation(line: 166, column: 16, scope: !240)
!247 = !DILocation(line: 166, column: 38, scope: !240)
!248 = !DILocation(line: 166, column: 44, scope: !240)
!249 = !DILocation(line: 166, column: 23, scope: !240)
!250 = !DILocation(line: 167, column: 8, scope: !251)
!251 = distinct !DILexicalBlock(scope: !240, file: !15, line: 167, column: 8)
!252 = !DILocation(line: 167, column: 40, scope: !251)
!253 = !DILocation(line: 167, column: 46, scope: !251)
!254 = !DILocation(line: 167, column: 15, scope: !251)
!255 = !DILocation(line: 167, column: 12, scope: !251)
!256 = !DILocation(line: 167, column: 8, scope: !240)
!257 = !DILocation(line: 168, column: 23, scope: !258)
!258 = distinct !DILexicalBlock(scope: !251, file: !15, line: 167, column: 53)
!259 = !DILocation(line: 168, column: 29, scope: !258)
!260 = !DILocation(line: 168, column: 44, scope: !258)
!261 = !DILocation(line: 168, column: 35, scope: !258)
!262 = !DILocation(line: 168, column: 7, scope: !258)
!263 = !DILocation(line: 169, column: 7, scope: !258)
!264 = !DILocation(line: 171, column: 4, scope: !240)
!265 = !DILocation(line: 172, column: 1, scope: !240)
!266 = distinct !DISubprogram(name: "DynXdrInline", scope: !15, file: !15, line: 265, type: !93, isLocal: true, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !113)
!267 = !DILocalVariable(name: "xdrs", arg: 1, scope: !266, file: !15, line: 265, type: !46)
!268 = !DILocation(line: 265, column: 19, scope: !266)
!269 = !DILocalVariable(name: "len", arg: 2, scope: !266, file: !15, line: 266, type: !36)
!270 = !DILocation(line: 266, column: 20, scope: !266)
!271 = !DILocalVariable(name: "priv", scope: !266, file: !15, line: 268, type: !13)
!272 = !DILocation(line: 268, column: 16, scope: !266)
!273 = !DILocation(line: 268, column: 37, scope: !266)
!274 = !DILocation(line: 268, column: 43, scope: !266)
!275 = !DILocation(line: 268, column: 23, scope: !266)
!276 = !DILocalVariable(name: "buf", scope: !266, file: !15, line: 269, type: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!278 = !DILocation(line: 269, column: 12, scope: !266)
!279 = !DILocation(line: 269, column: 19, scope: !266)
!280 = !DILocation(line: 269, column: 25, scope: !266)
!281 = !DILocalVariable(name: "retAddr", scope: !266, file: !15, line: 270, type: !40)
!282 = !DILocation(line: 270, column: 13, scope: !266)
!283 = !DILocation(line: 275, column: 8, scope: !284)
!284 = distinct !DILexicalBlock(scope: !266, file: !15, line: 275, column: 8)
!285 = !DILocation(line: 275, column: 12, scope: !284)
!286 = !DILocation(line: 275, column: 8, scope: !266)
!287 = !DILocation(line: 276, column: 36, scope: !288)
!288 = distinct !DILexicalBlock(scope: !284, file: !15, line: 275, column: 18)
!289 = !DILocation(line: 276, column: 41, scope: !288)
!290 = !DILocation(line: 276, column: 26, scope: !288)
!291 = !DILocation(line: 276, column: 31, scope: !288)
!292 = !DILocation(line: 276, column: 14, scope: !288)
!293 = !DILocation(line: 276, column: 7, scope: !288)
!294 = !DILocation(line: 279, column: 8, scope: !295)
!295 = distinct !DILexicalBlock(scope: !266, file: !15, line: 279, column: 8)
!296 = !DILocation(line: 279, column: 13, scope: !295)
!297 = !DILocation(line: 279, column: 25, scope: !295)
!298 = !DILocation(line: 279, column: 30, scope: !295)
!299 = !DILocation(line: 279, column: 23, scope: !295)
!300 = !DILocation(line: 279, column: 37, scope: !295)
!301 = !DILocation(line: 279, column: 35, scope: !295)
!302 = !DILocation(line: 279, column: 8, scope: !266)
!303 = !DILocation(line: 281, column: 27, scope: !304)
!304 = distinct !DILexicalBlock(scope: !305, file: !15, line: 281, column: 11)
!305 = distinct !DILexicalBlock(scope: !295, file: !15, line: 279, column: 42)
!306 = !DILocation(line: 281, column: 32, scope: !304)
!307 = !DILocation(line: 281, column: 37, scope: !304)
!308 = !DILocation(line: 281, column: 44, scope: !304)
!309 = !DILocation(line: 281, column: 42, scope: !304)
!310 = !DILocation(line: 281, column: 12, scope: !304)
!311 = !DILocation(line: 281, column: 11, scope: !305)
!312 = !DILocation(line: 282, column: 10, scope: !313)
!313 = distinct !DILexicalBlock(scope: !304, file: !15, line: 281, column: 50)
!314 = !DILocation(line: 284, column: 4, scope: !305)
!315 = !DILocation(line: 286, column: 36, scope: !266)
!316 = !DILocation(line: 286, column: 41, scope: !266)
!317 = !DILocation(line: 286, column: 26, scope: !266)
!318 = !DILocation(line: 286, column: 31, scope: !266)
!319 = !DILocation(line: 286, column: 14, scope: !266)
!320 = !DILocation(line: 286, column: 12, scope: !266)
!321 = !DILocation(line: 287, column: 17, scope: !266)
!322 = !DILocation(line: 287, column: 4, scope: !266)
!323 = !DILocation(line: 287, column: 9, scope: !266)
!324 = !DILocation(line: 287, column: 14, scope: !266)
!325 = !DILocation(line: 289, column: 11, scope: !266)
!326 = !DILocation(line: 289, column: 4, scope: !266)
!327 = !DILocation(line: 290, column: 1, scope: !266)
!328 = distinct !DISubprogram(name: "DynXdrPutInt32", scope: !15, file: !15, line: 204, type: !105, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !113)
!329 = !DILocalVariable(name: "xdrs", arg: 1, scope: !328, file: !15, line: 204, type: !46)
!330 = !DILocation(line: 204, column: 21, scope: !328)
!331 = !DILocalVariable(name: "ip", arg: 2, scope: !328, file: !15, line: 205, type: !107)
!332 = !DILocation(line: 205, column: 31, scope: !328)
!333 = !DILocalVariable(name: "out", scope: !328, file: !15, line: 207, type: !33)
!334 = !DILocation(line: 207, column: 12, scope: !328)
!335 = !DILocation(line: 207, column: 25, scope: !328)
!336 = !DILocation(line: 207, column: 24, scope: !328)
!337 = !DILocation(line: 207, column: 18, scope: !328)
!338 = !DILocalVariable(name: "priv", scope: !328, file: !15, line: 208, type: !13)
!339 = !DILocation(line: 208, column: 16, scope: !328)
!340 = !DILocation(line: 208, column: 38, scope: !328)
!341 = !DILocation(line: 208, column: 44, scope: !328)
!342 = !DILocation(line: 208, column: 23, scope: !328)
!343 = !DILocation(line: 209, column: 26, scope: !328)
!344 = !DILocation(line: 209, column: 32, scope: !328)
!345 = !DILocation(line: 209, column: 38, scope: !328)
!346 = !DILocation(line: 209, column: 11, scope: !328)
!347 = !DILocation(line: 209, column: 4, scope: !328)
!348 = distinct !DISubprogram(name: "DynXdr_AppendRaw", scope: !15, file: !15, line: 397, type: !349, isLocal: false, isDefinition: true, scopeLine: 400, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !113)
!349 = !DISubroutineType(types: !350)
!350 = !{!30, !46, !351, !25}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!353 = !DILocalVariable(name: "xdrs", arg: 1, scope: !348, file: !15, line: 397, type: !46)
!354 = !DILocation(line: 397, column: 23, scope: !348)
!355 = !DILocalVariable(name: "buf", arg: 2, scope: !348, file: !15, line: 398, type: !351)
!356 = !DILocation(line: 398, column: 30, scope: !348)
!357 = !DILocalVariable(name: "len", arg: 3, scope: !348, file: !15, line: 399, type: !25)
!358 = !DILocation(line: 399, column: 25, scope: !348)
!359 = !DILocalVariable(name: "intbuf", scope: !348, file: !15, line: 401, type: !277)
!360 = !DILocation(line: 401, column: 12, scope: !348)
!361 = !DILocation(line: 401, column: 38, scope: !348)
!362 = !DILocation(line: 401, column: 44, scope: !348)
!363 = !DILocation(line: 401, column: 56, scope: !348)
!364 = !DILocation(line: 402, column: 25, scope: !348)
!365 = !DILocation(line: 402, column: 33, scope: !348)
!366 = !DILocation(line: 402, column: 38, scope: !348)
!367 = !DILocation(line: 402, column: 11, scope: !348)
!368 = !DILocation(line: 402, column: 4, scope: !348)
!369 = distinct !DISubprogram(name: "DynXdr_AllocGet", scope: !15, file: !15, line: 425, type: !370, isLocal: false, isDefinition: true, scopeLine: 426, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !113)
!370 = !DISubroutineType(types: !371)
!371 = !{!10, !46}
!372 = !DILocalVariable(name: "xdrs", arg: 1, scope: !369, file: !15, line: 425, type: !46)
!373 = !DILocation(line: 425, column: 22, scope: !369)
!374 = !DILocalVariable(name: "buf", scope: !369, file: !15, line: 427, type: !277)
!375 = !DILocation(line: 427, column: 12, scope: !369)
!376 = !DILocation(line: 427, column: 35, scope: !369)
!377 = !DILocation(line: 427, column: 41, scope: !369)
!378 = !DILocation(line: 427, column: 53, scope: !369)
!379 = !DILocation(line: 428, column: 34, scope: !369)
!380 = !DILocation(line: 428, column: 23, scope: !369)
!381 = !DILocation(line: 428, column: 55, scope: !369)
!382 = !DILocation(line: 428, column: 40, scope: !383)
!383 = !DILexicalBlockFile(scope: !369, file: !15, discriminator: 1)
!384 = !DILocation(line: 428, column: 11, scope: !385)
!385 = !DILexicalBlockFile(scope: !369, file: !15, discriminator: 2)
!386 = !DILocation(line: 428, column: 4, scope: !369)
!387 = distinct !DISubprogram(name: "DynBuf_Get", scope: !20, file: !20, line: 113, type: !388, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !113)
!388 = !DISubroutineType(types: !389)
!389 = !{!10, !390}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!392 = !DILocalVariable(name: "b", arg: 1, scope: !387, file: !20, line: 113, type: !390)
!393 = !DILocation(line: 113, column: 26, scope: !387)
!394 = !DILocation(line: 117, column: 11, scope: !387)
!395 = !DILocation(line: 117, column: 14, scope: !387)
!396 = !DILocation(line: 117, column: 4, scope: !387)
!397 = distinct !DISubprogram(name: "DynBuf_GetSize", scope: !20, file: !20, line: 174, type: !398, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !113)
!398 = !DISubroutineType(types: !399)
!399 = !{!25, !390}
!400 = !DILocalVariable(name: "b", arg: 1, scope: !397, file: !20, line: 174, type: !390)
!401 = !DILocation(line: 174, column: 30, scope: !397)
!402 = !DILocation(line: 178, column: 11, scope: !397)
!403 = !DILocation(line: 178, column: 14, scope: !397)
!404 = !DILocation(line: 178, column: 4, scope: !397)
!405 = distinct !DISubprogram(name: "DynXdr_Get", scope: !15, file: !15, line: 449, type: !370, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !113)
!406 = !DILocalVariable(name: "xdrs", arg: 1, scope: !405, file: !15, line: 449, type: !46)
!407 = !DILocation(line: 449, column: 17, scope: !405)
!408 = !DILocalVariable(name: "buf", scope: !405, file: !15, line: 451, type: !277)
!409 = !DILocation(line: 451, column: 12, scope: !405)
!410 = !DILocation(line: 451, column: 35, scope: !405)
!411 = !DILocation(line: 451, column: 41, scope: !405)
!412 = !DILocation(line: 451, column: 53, scope: !405)
!413 = !DILocation(line: 452, column: 22, scope: !405)
!414 = !DILocation(line: 452, column: 11, scope: !405)
!415 = !DILocation(line: 452, column: 4, scope: !405)
!416 = distinct !DISubprogram(name: "DynXdr_Destroy", scope: !15, file: !15, line: 475, type: !417, isLocal: false, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !113)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !46, !30}
!419 = !DILocalVariable(name: "xdrs", arg: 1, scope: !416, file: !15, line: 475, type: !46)
!420 = !DILocation(line: 475, column: 21, scope: !416)
!421 = !DILocalVariable(name: "release", arg: 2, scope: !416, file: !15, line: 476, type: !30)
!422 = !DILocation(line: 476, column: 21, scope: !416)
!423 = !DILocation(line: 478, column: 8, scope: !424)
!424 = distinct !DILexicalBlock(scope: !416, file: !15, line: 478, column: 8)
!425 = !DILocation(line: 478, column: 8, scope: !416)
!426 = !DILocalVariable(name: "priv", scope: !427, file: !15, line: 479, type: !13)
!427 = distinct !DILexicalBlock(scope: !424, file: !15, line: 478, column: 14)
!428 = !DILocation(line: 479, column: 19, scope: !427)
!429 = !DILocation(line: 479, column: 41, scope: !427)
!430 = !DILocation(line: 479, column: 47, scope: !427)
!431 = !DILocation(line: 479, column: 26, scope: !427)
!432 = !DILocation(line: 480, column: 11, scope: !433)
!433 = distinct !DILexicalBlock(scope: !427, file: !15, line: 480, column: 11)
!434 = !DILocation(line: 480, column: 11, scope: !427)
!435 = !DILocation(line: 481, column: 26, scope: !436)
!436 = distinct !DILexicalBlock(scope: !433, file: !15, line: 480, column: 20)
!437 = !DILocation(line: 481, column: 32, scope: !436)
!438 = !DILocation(line: 481, column: 10, scope: !436)
!439 = !DILocation(line: 482, column: 7, scope: !436)
!440 = !DILocation(line: 483, column: 11, scope: !441)
!441 = distinct !DILexicalBlock(scope: !427, file: !15, line: 483, column: 11)
!442 = !DILocation(line: 483, column: 17, scope: !441)
!443 = !DILocation(line: 483, column: 11, scope: !427)
!444 = !DILocation(line: 484, column: 15, scope: !445)
!445 = distinct !DILexicalBlock(scope: !441, file: !15, line: 483, column: 25)
!446 = !DILocation(line: 484, column: 10, scope: !445)
!447 = !DILocation(line: 485, column: 7, scope: !445)
!448 = !DILocation(line: 486, column: 12, scope: !427)
!449 = !DILocation(line: 486, column: 7, scope: !427)
!450 = !DILocation(line: 487, column: 4, scope: !427)
!451 = !DILocation(line: 488, column: 1, scope: !416)
!452 = distinct !DISubprogram(name: "DynBuf_GetAllocatedSize", scope: !20, file: !20, line: 234, type: !398, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !113)
!453 = !DILocalVariable(name: "b", arg: 1, scope: !452, file: !20, line: 234, type: !390)
!454 = !DILocation(line: 234, column: 39, scope: !452)
!455 = !DILocation(line: 238, column: 11, scope: !452)
!456 = !DILocation(line: 238, column: 14, scope: !452)
!457 = !DILocation(line: 238, column: 4, scope: !452)
!458 = distinct !DISubprogram(name: "DynBuf_SetSize", scope: !20, file: !20, line: 203, type: !459, isLocal: true, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !113)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !277, !25}
!461 = !DILocalVariable(name: "b", arg: 1, scope: !458, file: !20, line: 203, type: !277)
!462 = !DILocation(line: 203, column: 24, scope: !458)
!463 = !DILocalVariable(name: "size", arg: 2, scope: !458, file: !20, line: 204, type: !25)
!464 = !DILocation(line: 204, column: 23, scope: !458)
!465 = !DILocation(line: 209, column: 14, scope: !458)
!466 = !DILocation(line: 209, column: 4, scope: !458)
!467 = !DILocation(line: 209, column: 7, scope: !458)
!468 = !DILocation(line: 209, column: 12, scope: !458)
!469 = !DILocation(line: 210, column: 1, scope: !458)
