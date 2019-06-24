; ModuleID = './libvmbackup_la-guestQuiesce_xdr.o.i'
source_filename = "./libvmbackup_la-guestQuiesce_xdr.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }
%struct.GuestQuiesceParamsV1 = type { i8, i8, i8, i8, i8, i8*, i32, i8* }
%struct.GuestQuiesceParamsV2 = type { %struct.GuestQuiesceParamsV1, i32, i32, i8, i8 }
%struct.GuestQuiesceParams = type { i32, %union.anon }
%union.anon = type { %struct.GuestQuiesceParamsV1* }

; Function Attrs: nounwind uwtable
define i32 @xdr_GuestQuiesceParamsVersion(%struct.XDR*, i32*) #0 !dbg !103 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca i32*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !110, metadata !111), !dbg !112
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !113, metadata !111), !dbg !114
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !115
  %7 = load i32*, i32** %5, align 8, !dbg !117
  %8 = call i32 @xdr_enum(%struct.XDR* %6, i32* %7) #4, !dbg !118
  %9 = icmp ne i32 %8, 0, !dbg !118
  br i1 %9, label %11, label %10, !dbg !119

; <label>:10:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !120
  br label %12, !dbg !120

; <label>:11:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !121
  br label %12, !dbg !121

; <label>:12:                                     ; preds = %11, %10
  %13 = load i32, i32* %3, align 4, !dbg !122
  ret i32 %13, !dbg !122
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @xdr_enum(%struct.XDR*, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @xdr_GuestQuiesceParamsV1(%struct.XDR*, %struct.GuestQuiesceParamsV1*) #0 !dbg !123 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca %struct.GuestQuiesceParamsV1*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !143, metadata !111), !dbg !144
  store %struct.GuestQuiesceParamsV1* %1, %struct.GuestQuiesceParamsV1** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestQuiesceParamsV1** %5, metadata !145, metadata !111), !dbg !146
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !147
  %7 = load %struct.GuestQuiesceParamsV1*, %struct.GuestQuiesceParamsV1** %5, align 8, !dbg !149
  %8 = getelementptr inbounds %struct.GuestQuiesceParamsV1, %struct.GuestQuiesceParamsV1* %7, i32 0, i32 0, !dbg !150
  %9 = call i32 @xdr_Bool(%struct.XDR* %6, i8* %8), !dbg !151
  %10 = icmp ne i32 %9, 0, !dbg !151
  br i1 %10, label %12, label %11, !dbg !152

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !153
  br label %62, !dbg !153

; <label>:12:                                     ; preds = %2
  %13 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !154
  %14 = load %struct.GuestQuiesceParamsV1*, %struct.GuestQuiesceParamsV1** %5, align 8, !dbg !156
  %15 = getelementptr inbounds %struct.GuestQuiesceParamsV1, %struct.GuestQuiesceParamsV1* %14, i32 0, i32 1, !dbg !157
  %16 = call i32 @xdr_Bool(%struct.XDR* %13, i8* %15), !dbg !158
  %17 = icmp ne i32 %16, 0, !dbg !158
  br i1 %17, label %19, label %18, !dbg !159

; <label>:18:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !160
  br label %62, !dbg !160

; <label>:19:                                     ; preds = %12
  %20 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !161
  %21 = load %struct.GuestQuiesceParamsV1*, %struct.GuestQuiesceParamsV1** %5, align 8, !dbg !163
  %22 = getelementptr inbounds %struct.GuestQuiesceParamsV1, %struct.GuestQuiesceParamsV1* %21, i32 0, i32 2, !dbg !164
  %23 = call i32 @xdr_Bool(%struct.XDR* %20, i8* %22), !dbg !165
  %24 = icmp ne i32 %23, 0, !dbg !165
  br i1 %24, label %26, label %25, !dbg !166

; <label>:25:                                     ; preds = %19
  store i32 0, i32* %3, align 4, !dbg !167
  br label %62, !dbg !167

; <label>:26:                                     ; preds = %19
  %27 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !168
  %28 = load %struct.GuestQuiesceParamsV1*, %struct.GuestQuiesceParamsV1** %5, align 8, !dbg !170
  %29 = getelementptr inbounds %struct.GuestQuiesceParamsV1, %struct.GuestQuiesceParamsV1* %28, i32 0, i32 3, !dbg !171
  %30 = call i32 @xdr_Bool(%struct.XDR* %27, i8* %29), !dbg !172
  %31 = icmp ne i32 %30, 0, !dbg !172
  br i1 %31, label %33, label %32, !dbg !173

; <label>:32:                                     ; preds = %26
  store i32 0, i32* %3, align 4, !dbg !174
  br label %62, !dbg !174

; <label>:33:                                     ; preds = %26
  %34 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !175
  %35 = load %struct.GuestQuiesceParamsV1*, %struct.GuestQuiesceParamsV1** %5, align 8, !dbg !177
  %36 = getelementptr inbounds %struct.GuestQuiesceParamsV1, %struct.GuestQuiesceParamsV1* %35, i32 0, i32 4, !dbg !178
  %37 = call i32 @xdr_Bool(%struct.XDR* %34, i8* %36), !dbg !179
  %38 = icmp ne i32 %37, 0, !dbg !179
  br i1 %38, label %40, label %39, !dbg !180

; <label>:39:                                     ; preds = %33
  store i32 0, i32* %3, align 4, !dbg !181
  br label %62, !dbg !181

; <label>:40:                                     ; preds = %33
  %41 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !182
  %42 = load %struct.GuestQuiesceParamsV1*, %struct.GuestQuiesceParamsV1** %5, align 8, !dbg !184
  %43 = getelementptr inbounds %struct.GuestQuiesceParamsV1, %struct.GuestQuiesceParamsV1* %42, i32 0, i32 5, !dbg !185
  %44 = call i32 @xdr_string(%struct.XDR* %41, i8** %43, i32 256) #4, !dbg !186
  %45 = icmp ne i32 %44, 0, !dbg !186
  br i1 %45, label %47, label %46, !dbg !187

; <label>:46:                                     ; preds = %40
  store i32 0, i32* %3, align 4, !dbg !188
  br label %62, !dbg !188

; <label>:47:                                     ; preds = %40
  %48 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !189
  %49 = load %struct.GuestQuiesceParamsV1*, %struct.GuestQuiesceParamsV1** %5, align 8, !dbg !191
  %50 = getelementptr inbounds %struct.GuestQuiesceParamsV1, %struct.GuestQuiesceParamsV1* %49, i32 0, i32 6, !dbg !192
  %51 = call i32 @xdr_uint32(%struct.XDR* %48, i32* %50), !dbg !193
  %52 = icmp ne i32 %51, 0, !dbg !193
  br i1 %52, label %54, label %53, !dbg !194

; <label>:53:                                     ; preds = %47
  store i32 0, i32* %3, align 4, !dbg !195
  br label %62, !dbg !195

; <label>:54:                                     ; preds = %47
  %55 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !196
  %56 = load %struct.GuestQuiesceParamsV1*, %struct.GuestQuiesceParamsV1** %5, align 8, !dbg !198
  %57 = getelementptr inbounds %struct.GuestQuiesceParamsV1, %struct.GuestQuiesceParamsV1* %56, i32 0, i32 7, !dbg !199
  %58 = call i32 @xdr_string(%struct.XDR* %55, i8** %57, i32 3200) #4, !dbg !200
  %59 = icmp ne i32 %58, 0, !dbg !200
  br i1 %59, label %61, label %60, !dbg !201

; <label>:60:                                     ; preds = %54
  store i32 0, i32* %3, align 4, !dbg !202
  br label %62, !dbg !202

; <label>:61:                                     ; preds = %54
  store i32 1, i32* %3, align 4, !dbg !203
  br label %62, !dbg !203

; <label>:62:                                     ; preds = %61, %60, %53, %46, %39, %32, %25, %18, %11
  %63 = load i32, i32* %3, align 4, !dbg !204
  ret i32 %63, !dbg !204
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @xdr_Bool(%struct.XDR*, i8*) #3 !dbg !205 {
  %3 = alloca %struct.XDR*, align 8
  %4 = alloca i8*, align 8
  store %struct.XDR* %0, %struct.XDR** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %3, metadata !210, metadata !111), !dbg !211
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !212, metadata !111), !dbg !213
  %5 = load %struct.XDR*, %struct.XDR** %3, align 8, !dbg !214
  %6 = load i8*, i8** %4, align 8, !dbg !215
  %7 = call i32 @xdr_char(%struct.XDR* %5, i8* %6) #4, !dbg !216
  ret i32 %7, !dbg !217
}

; Function Attrs: nounwind
declare i32 @xdr_string(%struct.XDR*, i8**, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @xdr_uint32(%struct.XDR*, i32*) #3 !dbg !218 {
  %3 = alloca %struct.XDR*, align 8
  %4 = alloca i32*, align 8
  store %struct.XDR* %0, %struct.XDR** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %3, metadata !222, metadata !111), !dbg !223
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !224, metadata !111), !dbg !225
  %5 = load %struct.XDR*, %struct.XDR** %3, align 8, !dbg !226
  %6 = load i32*, i32** %4, align 8, !dbg !227
  %7 = call i32 @xdr_uint32_t(%struct.XDR* %5, i32* %6) #4, !dbg !228
  ret i32 %7, !dbg !229
}

; Function Attrs: nounwind uwtable
define i32 @xdr_GuestQuiesceParamsV2(%struct.XDR*, %struct.GuestQuiesceParamsV2*) #0 !dbg !230 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca %struct.GuestQuiesceParamsV2*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !242, metadata !111), !dbg !243
  store %struct.GuestQuiesceParamsV2* %1, %struct.GuestQuiesceParamsV2** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestQuiesceParamsV2** %5, metadata !244, metadata !111), !dbg !245
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !246
  %7 = load %struct.GuestQuiesceParamsV2*, %struct.GuestQuiesceParamsV2** %5, align 8, !dbg !248
  %8 = getelementptr inbounds %struct.GuestQuiesceParamsV2, %struct.GuestQuiesceParamsV2* %7, i32 0, i32 0, !dbg !249
  %9 = call i32 @xdr_GuestQuiesceParamsV1(%struct.XDR* %6, %struct.GuestQuiesceParamsV1* %8), !dbg !250
  %10 = icmp ne i32 %9, 0, !dbg !250
  br i1 %10, label %12, label %11, !dbg !251

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !252
  br label %41, !dbg !252

; <label>:12:                                     ; preds = %2
  %13 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !253
  %14 = load %struct.GuestQuiesceParamsV2*, %struct.GuestQuiesceParamsV2** %5, align 8, !dbg !255
  %15 = getelementptr inbounds %struct.GuestQuiesceParamsV2, %struct.GuestQuiesceParamsV2* %14, i32 0, i32 1, !dbg !256
  %16 = call i32 @xdr_uint32(%struct.XDR* %13, i32* %15), !dbg !257
  %17 = icmp ne i32 %16, 0, !dbg !257
  br i1 %17, label %19, label %18, !dbg !258

; <label>:18:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !259
  br label %41, !dbg !259

; <label>:19:                                     ; preds = %12
  %20 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !260
  %21 = load %struct.GuestQuiesceParamsV2*, %struct.GuestQuiesceParamsV2** %5, align 8, !dbg !262
  %22 = getelementptr inbounds %struct.GuestQuiesceParamsV2, %struct.GuestQuiesceParamsV2* %21, i32 0, i32 2, !dbg !263
  %23 = call i32 @xdr_uint32(%struct.XDR* %20, i32* %22), !dbg !264
  %24 = icmp ne i32 %23, 0, !dbg !264
  br i1 %24, label %26, label %25, !dbg !265

; <label>:25:                                     ; preds = %19
  store i32 0, i32* %3, align 4, !dbg !266
  br label %41, !dbg !266

; <label>:26:                                     ; preds = %19
  %27 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !267
  %28 = load %struct.GuestQuiesceParamsV2*, %struct.GuestQuiesceParamsV2** %5, align 8, !dbg !269
  %29 = getelementptr inbounds %struct.GuestQuiesceParamsV2, %struct.GuestQuiesceParamsV2* %28, i32 0, i32 3, !dbg !270
  %30 = call i32 @xdr_Bool(%struct.XDR* %27, i8* %29), !dbg !271
  %31 = icmp ne i32 %30, 0, !dbg !271
  br i1 %31, label %33, label %32, !dbg !272

; <label>:32:                                     ; preds = %26
  store i32 0, i32* %3, align 4, !dbg !273
  br label %41, !dbg !273

; <label>:33:                                     ; preds = %26
  %34 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !274
  %35 = load %struct.GuestQuiesceParamsV2*, %struct.GuestQuiesceParamsV2** %5, align 8, !dbg !276
  %36 = getelementptr inbounds %struct.GuestQuiesceParamsV2, %struct.GuestQuiesceParamsV2* %35, i32 0, i32 4, !dbg !277
  %37 = call i32 @xdr_Bool(%struct.XDR* %34, i8* %36), !dbg !278
  %38 = icmp ne i32 %37, 0, !dbg !278
  br i1 %38, label %40, label %39, !dbg !279

; <label>:39:                                     ; preds = %33
  store i32 0, i32* %3, align 4, !dbg !280
  br label %41, !dbg !280

; <label>:40:                                     ; preds = %33
  store i32 1, i32* %3, align 4, !dbg !281
  br label %41, !dbg !281

; <label>:41:                                     ; preds = %40, %39, %32, %25, %18, %11
  %42 = load i32, i32* %3, align 4, !dbg !282
  ret i32 %42, !dbg !282
}

; Function Attrs: nounwind uwtable
define i32 @xdr_GuestQuiesceParams(%struct.XDR*, %struct.GuestQuiesceParams*) #0 !dbg !283 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca %struct.GuestQuiesceParams*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !298, metadata !111), !dbg !299
  store %struct.GuestQuiesceParams* %1, %struct.GuestQuiesceParams** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestQuiesceParams** %5, metadata !300, metadata !111), !dbg !301
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !302
  %7 = load %struct.GuestQuiesceParams*, %struct.GuestQuiesceParams** %5, align 8, !dbg !304
  %8 = getelementptr inbounds %struct.GuestQuiesceParams, %struct.GuestQuiesceParams* %7, i32 0, i32 0, !dbg !305
  %9 = call i32 @xdr_GuestQuiesceParamsVersion(%struct.XDR* %6, i32* %8), !dbg !306
  %10 = icmp ne i32 %9, 0, !dbg !306
  br i1 %10, label %12, label %11, !dbg !307

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !308
  br label %38, !dbg !308

; <label>:12:                                     ; preds = %2
  %13 = load %struct.GuestQuiesceParams*, %struct.GuestQuiesceParams** %5, align 8, !dbg !309
  %14 = getelementptr inbounds %struct.GuestQuiesceParams, %struct.GuestQuiesceParams* %13, i32 0, i32 0, !dbg !310
  %15 = load i32, i32* %14, align 8, !dbg !310
  switch i32 %15, label %36 [
    i32 1, label %16
    i32 2, label %26
  ], !dbg !311

; <label>:16:                                     ; preds = %12
  %17 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !312
  %18 = load %struct.GuestQuiesceParams*, %struct.GuestQuiesceParams** %5, align 8, !dbg !315
  %19 = getelementptr inbounds %struct.GuestQuiesceParams, %struct.GuestQuiesceParams* %18, i32 0, i32 1, !dbg !316
  %20 = bitcast %union.anon* %19 to %struct.GuestQuiesceParamsV1**, !dbg !317
  %21 = bitcast %struct.GuestQuiesceParamsV1** %20 to i8**, !dbg !318
  %22 = call i32 @xdr_pointer(%struct.XDR* %17, i8** %21, i32 32, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.GuestQuiesceParamsV1*)* @xdr_GuestQuiesceParamsV1 to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !319
  %23 = icmp ne i32 %22, 0, !dbg !319
  br i1 %23, label %25, label %24, !dbg !320

; <label>:24:                                     ; preds = %16
  store i32 0, i32* %3, align 4, !dbg !321
  br label %38, !dbg !321

; <label>:25:                                     ; preds = %16
  br label %37, !dbg !322

; <label>:26:                                     ; preds = %12
  %27 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !323
  %28 = load %struct.GuestQuiesceParams*, %struct.GuestQuiesceParams** %5, align 8, !dbg !325
  %29 = getelementptr inbounds %struct.GuestQuiesceParams, %struct.GuestQuiesceParams* %28, i32 0, i32 1, !dbg !326
  %30 = bitcast %union.anon* %29 to %struct.GuestQuiesceParamsV2**, !dbg !327
  %31 = bitcast %struct.GuestQuiesceParamsV2** %30 to i8**, !dbg !328
  %32 = call i32 @xdr_pointer(%struct.XDR* %27, i8** %31, i32 48, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.GuestQuiesceParamsV2*)* @xdr_GuestQuiesceParamsV2 to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !329
  %33 = icmp ne i32 %32, 0, !dbg !329
  br i1 %33, label %35, label %34, !dbg !330

; <label>:34:                                     ; preds = %26
  store i32 0, i32* %3, align 4, !dbg !331
  br label %38, !dbg !331

; <label>:35:                                     ; preds = %26
  br label %37, !dbg !332

; <label>:36:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !333
  br label %38, !dbg !333

; <label>:37:                                     ; preds = %35, %25
  store i32 1, i32* %3, align 4, !dbg !334
  br label %38, !dbg !334

; <label>:38:                                     ; preds = %37, %36, %34, %24, %11
  %39 = load i32, i32* %3, align 4, !dbg !335
  ret i32 %39, !dbg !335
}

; Function Attrs: nounwind
declare i32 @xdr_pointer(%struct.XDR*, i8**, i32, i32 (%struct.XDR*, i8*, ...)*) #2

; Function Attrs: nounwind
declare i32 @xdr_char(%struct.XDR*, i8*) #2

; Function Attrs: nounwind
declare i32 @xdr_uint32_t(%struct.XDR*, i32*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!100, !101}
!llvm.ident = !{!102}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !14)
!1 = !DIFile(filename: "libvmbackup_la-guestQuiesce_xdr.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1611")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdr_op", file: !4, line: 81, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/rpc/xdr.h", directory: "/home/lichi/Desktop/open-vm-tools/line1611")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "XDR_ENCODE", value: 0)
!7 = !DIEnumerator(name: "XDR_DECODE", value: 1)
!8 = !DIEnumerator(name: "XDR_FREE", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "GuestQuiesceParamsVersion", file: !10, line: 17, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "guestQuiesce.h", directory: "/home/lichi/Desktop/open-vm-tools/line1611")
!11 = !{!12, !13}
!12 = !DIEnumerator(name: "GUESTQUIESCEPARAMS_V1", value: 1)
!13 = !DIEnumerator(name: "GUESTQUIESCEPARAMS_V2", value: 2)
!14 = !{!15, !19, !22}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "enum_t", file: !17, line: 38, baseType: !18)
!17 = !DIFile(filename: "/usr/include/rpc/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1611")
!18 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "xdrproc_t", file: !4, line: 152, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !27, !99, null}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_t", file: !17, line: 37, baseType: !18)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "XDR", file: !4, line: 109, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "XDR", file: !4, line: 110, size: 384, align: 64, elements: !30)
!30 = !{!31, !32, !95, !96, !97, !98}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "x_op", scope: !29, file: !4, line: 112, baseType: !3, size: 32, align: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "x_ops", scope: !29, file: !4, line: 136, baseType: !33, size: 64, align: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdr_ops", file: !4, line: 113, size: 640, align: 64, elements: !35)
!35 = !{!36, !42, !48, !59, !65, !71, !75, !81, !85, !89}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "x_getlong", scope: !34, file: !4, line: 115, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{!26, !27, !40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "x_putlong", scope: !34, file: !4, line: 117, baseType: !43, size: 64, align: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{!26, !27, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "x_getbytes", scope: !34, file: !4, line: 119, baseType: !49, size: 64, align: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!26, !27, !52, !56}
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !53, line: 116, baseType: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1611")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__caddr_t", file: !55, line: 183, baseType: !20)
!55 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1611")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !53, line: 35, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !55, line: 32, baseType: !58)
!58 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "x_putbytes", scope: !34, file: !4, line: 121, baseType: !60, size: 64, align: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!26, !27, !63, !56}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "x_getpostn", scope: !34, file: !4, line: 123, baseType: !66, size: 64, align: 64, offset: 256)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!56, !69}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "x_setpostn", scope: !34, file: !4, line: 125, baseType: !72, size: 64, align: 64, offset: 320)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!26, !27, !56}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "x_inline", scope: !34, file: !4, line: 127, baseType: !76, size: 64, align: 64, offset: 384)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!79, !27, !56}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !53, line: 196, baseType: !18)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "x_destroy", scope: !34, file: !4, line: 129, baseType: !82, size: 64, align: 64, offset: 448)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !27}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "x_getint32", scope: !34, file: !4, line: 131, baseType: !86, size: 64, align: 64, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{!26, !27, !79}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "x_putint32", scope: !34, file: !4, line: 133, baseType: !90, size: 64, align: 64, offset: 576)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{!26, !27, !93}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "x_public", scope: !29, file: !4, line: 137, baseType: !52, size: 64, align: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "x_private", scope: !29, file: !4, line: 138, baseType: !52, size: 64, align: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "x_base", scope: !29, file: !4, line: 139, baseType: !52, size: 64, align: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "x_handy", scope: !29, file: !4, line: 140, baseType: !56, size: 32, align: 32, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!100 = !{i32 2, !"Dwarf Version", i32 4}
!101 = !{i32 2, !"Debug Info Version", i32 3}
!102 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!103 = distinct !DISubprogram(name: "xdr_GuestQuiesceParamsVersion", scope: !104, file: !104, line: 9, type: !105, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!104 = !DIFile(filename: "guestQuiesce_xdr.c", directory: "/home/lichi/Desktop/open-vm-tools/line1611")
!105 = !DISubroutineType(types: !106)
!106 = !{!26, !27, !107}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestQuiesceParamsVersion", file: !10, line: 21, baseType: !9)
!109 = !{}
!110 = !DILocalVariable(name: "xdrs", arg: 1, scope: !103, file: !104, line: 9, type: !27)
!111 = !DIExpression()
!112 = !DILocation(line: 9, column: 37, scope: !103)
!113 = !DILocalVariable(name: "objp", arg: 2, scope: !103, file: !104, line: 9, type: !107)
!114 = !DILocation(line: 9, column: 70, scope: !103)
!115 = !DILocation(line: 12, column: 18, scope: !116)
!116 = distinct !DILexicalBlock(scope: !103, file: !104, line: 12, column: 7)
!117 = !DILocation(line: 12, column: 35, scope: !116)
!118 = !DILocation(line: 12, column: 8, scope: !116)
!119 = !DILocation(line: 12, column: 7, scope: !103)
!120 = !DILocation(line: 13, column: 4, scope: !116)
!121 = !DILocation(line: 14, column: 2, scope: !103)
!122 = !DILocation(line: 15, column: 1, scope: !103)
!123 = distinct !DISubprogram(name: "xdr_GuestQuiesceParamsV1", scope: !104, file: !104, line: 18, type: !124, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!124 = !DISubroutineType(types: !125)
!125 = !{!26, !27, !126}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestQuiesceParamsV1", file: !10, line: 35, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestQuiesceParamsV1", file: !10, line: 25, size: 256, align: 64, elements: !129)
!129 = !{!130, !133, !134, !135, !136, !137, !138, !142}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "createManifest", scope: !128, file: !10, line: 26, baseType: !131, size: 8, align: 8)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !132, line: 230, baseType: !21)
!132 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1611")
!133 = !DIDerivedType(tag: DW_TAG_member, name: "quiesceApps", scope: !128, file: !10, line: 27, baseType: !131, size: 8, align: 8, offset: 8)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "quiesceFS", scope: !128, file: !10, line: 28, baseType: !131, size: 8, align: 8, offset: 16)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "writableSnapshot", scope: !128, file: !10, line: 29, baseType: !131, size: 8, align: 8, offset: 24)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "execScripts", scope: !128, file: !10, line: 30, baseType: !131, size: 8, align: 8, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "scriptArg", scope: !128, file: !10, line: 31, baseType: !20, size: 64, align: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !128, file: !10, line: 32, baseType: !139, size: 32, align: 32, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !132, line: 173, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !141, line: 51, baseType: !58)
!141 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1611")
!142 = !DIDerivedType(tag: DW_TAG_member, name: "diskUuids", scope: !128, file: !10, line: 33, baseType: !20, size: 64, align: 64, offset: 192)
!143 = !DILocalVariable(name: "xdrs", arg: 1, scope: !123, file: !104, line: 18, type: !27)
!144 = !DILocation(line: 18, column: 32, scope: !123)
!145 = !DILocalVariable(name: "objp", arg: 2, scope: !123, file: !104, line: 18, type: !126)
!146 = !DILocation(line: 18, column: 60, scope: !123)
!147 = !DILocation(line: 21, column: 18, scope: !148)
!148 = distinct !DILexicalBlock(scope: !123, file: !104, line: 21, column: 7)
!149 = !DILocation(line: 21, column: 25, scope: !148)
!150 = !DILocation(line: 21, column: 31, scope: !148)
!151 = !DILocation(line: 21, column: 8, scope: !148)
!152 = !DILocation(line: 21, column: 7, scope: !123)
!153 = !DILocation(line: 22, column: 4, scope: !148)
!154 = !DILocation(line: 23, column: 18, scope: !155)
!155 = distinct !DILexicalBlock(scope: !123, file: !104, line: 23, column: 7)
!156 = !DILocation(line: 23, column: 25, scope: !155)
!157 = !DILocation(line: 23, column: 31, scope: !155)
!158 = !DILocation(line: 23, column: 8, scope: !155)
!159 = !DILocation(line: 23, column: 7, scope: !123)
!160 = !DILocation(line: 24, column: 4, scope: !155)
!161 = !DILocation(line: 25, column: 18, scope: !162)
!162 = distinct !DILexicalBlock(scope: !123, file: !104, line: 25, column: 7)
!163 = !DILocation(line: 25, column: 25, scope: !162)
!164 = !DILocation(line: 25, column: 31, scope: !162)
!165 = !DILocation(line: 25, column: 8, scope: !162)
!166 = !DILocation(line: 25, column: 7, scope: !123)
!167 = !DILocation(line: 26, column: 4, scope: !162)
!168 = !DILocation(line: 27, column: 18, scope: !169)
!169 = distinct !DILexicalBlock(scope: !123, file: !104, line: 27, column: 7)
!170 = !DILocation(line: 27, column: 25, scope: !169)
!171 = !DILocation(line: 27, column: 31, scope: !169)
!172 = !DILocation(line: 27, column: 8, scope: !169)
!173 = !DILocation(line: 27, column: 7, scope: !123)
!174 = !DILocation(line: 28, column: 4, scope: !169)
!175 = !DILocation(line: 29, column: 18, scope: !176)
!176 = distinct !DILexicalBlock(scope: !123, file: !104, line: 29, column: 7)
!177 = !DILocation(line: 29, column: 25, scope: !176)
!178 = !DILocation(line: 29, column: 31, scope: !176)
!179 = !DILocation(line: 29, column: 8, scope: !176)
!180 = !DILocation(line: 29, column: 7, scope: !123)
!181 = !DILocation(line: 30, column: 4, scope: !176)
!182 = !DILocation(line: 31, column: 20, scope: !183)
!183 = distinct !DILexicalBlock(scope: !123, file: !104, line: 31, column: 7)
!184 = !DILocation(line: 31, column: 27, scope: !183)
!185 = !DILocation(line: 31, column: 33, scope: !183)
!186 = !DILocation(line: 31, column: 8, scope: !183)
!187 = !DILocation(line: 31, column: 7, scope: !123)
!188 = !DILocation(line: 32, column: 4, scope: !183)
!189 = !DILocation(line: 33, column: 20, scope: !190)
!190 = distinct !DILexicalBlock(scope: !123, file: !104, line: 33, column: 7)
!191 = !DILocation(line: 33, column: 27, scope: !190)
!192 = !DILocation(line: 33, column: 33, scope: !190)
!193 = !DILocation(line: 33, column: 8, scope: !190)
!194 = !DILocation(line: 33, column: 7, scope: !123)
!195 = !DILocation(line: 34, column: 4, scope: !190)
!196 = !DILocation(line: 35, column: 20, scope: !197)
!197 = distinct !DILexicalBlock(scope: !123, file: !104, line: 35, column: 7)
!198 = !DILocation(line: 35, column: 27, scope: !197)
!199 = !DILocation(line: 35, column: 33, scope: !197)
!200 = !DILocation(line: 35, column: 8, scope: !197)
!201 = !DILocation(line: 35, column: 7, scope: !123)
!202 = !DILocation(line: 36, column: 4, scope: !197)
!203 = !DILocation(line: 37, column: 2, scope: !123)
!204 = !DILocation(line: 38, column: 1, scope: !123)
!205 = distinct !DISubprogram(name: "xdr_Bool", scope: !206, file: !206, line: 264, type: !207, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!206 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmxrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1611")
!207 = !DISubroutineType(types: !208)
!208 = !{!26, !27, !209}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!210 = !DILocalVariable(name: "xdrs", arg: 1, scope: !205, file: !206, line: 264, type: !27)
!211 = !DILocation(line: 264, column: 15, scope: !205)
!212 = !DILocalVariable(name: "ip", arg: 2, scope: !205, file: !206, line: 265, type: !209)
!213 = !DILocation(line: 265, column: 16, scope: !205)
!214 = !DILocation(line: 267, column: 20, scope: !205)
!215 = !DILocation(line: 267, column: 26, scope: !205)
!216 = !DILocation(line: 267, column: 11, scope: !205)
!217 = !DILocation(line: 267, column: 4, scope: !205)
!218 = distinct !DISubprogram(name: "xdr_uint32", scope: !206, file: !206, line: 191, type: !219, isLocal: true, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!219 = !DISubroutineType(types: !220)
!220 = !{!26, !27, !221}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!222 = !DILocalVariable(name: "xdrs", arg: 1, scope: !218, file: !206, line: 191, type: !27)
!223 = !DILocation(line: 191, column: 17, scope: !218)
!224 = !DILocalVariable(name: "ip", arg: 2, scope: !218, file: !206, line: 192, type: !221)
!225 = !DILocation(line: 192, column: 20, scope: !218)
!226 = !DILocation(line: 194, column: 24, scope: !218)
!227 = !DILocation(line: 194, column: 30, scope: !218)
!228 = !DILocation(line: 194, column: 11, scope: !218)
!229 = !DILocation(line: 194, column: 4, scope: !218)
!230 = distinct !DISubprogram(name: "xdr_GuestQuiesceParamsV2", scope: !104, file: !104, line: 41, type: !231, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!231 = !DISubroutineType(types: !232)
!232 = !{!26, !27, !233}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestQuiesceParamsV2", file: !10, line: 44, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestQuiesceParamsV2", file: !10, line: 37, size: 384, align: 64, elements: !236)
!236 = !{!237, !238, !239, !240, !241}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "paramsV1", scope: !235, file: !10, line: 38, baseType: !128, size: 256, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "vssBackupContext", scope: !235, file: !10, line: 39, baseType: !139, size: 32, align: 32, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "vssBackupType", scope: !235, file: !10, line: 40, baseType: !139, size: 32, align: 32, offset: 288)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "vssBootableSystemState", scope: !235, file: !10, line: 41, baseType: !131, size: 8, align: 8, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "vssPartialFileSupport", scope: !235, file: !10, line: 42, baseType: !131, size: 8, align: 8, offset: 328)
!242 = !DILocalVariable(name: "xdrs", arg: 1, scope: !230, file: !104, line: 41, type: !27)
!243 = !DILocation(line: 41, column: 32, scope: !230)
!244 = !DILocalVariable(name: "objp", arg: 2, scope: !230, file: !104, line: 41, type: !233)
!245 = !DILocation(line: 41, column: 60, scope: !230)
!246 = !DILocation(line: 44, column: 34, scope: !247)
!247 = distinct !DILexicalBlock(scope: !230, file: !104, line: 44, column: 7)
!248 = !DILocation(line: 44, column: 41, scope: !247)
!249 = !DILocation(line: 44, column: 47, scope: !247)
!250 = !DILocation(line: 44, column: 8, scope: !247)
!251 = !DILocation(line: 44, column: 7, scope: !230)
!252 = !DILocation(line: 45, column: 4, scope: !247)
!253 = !DILocation(line: 46, column: 20, scope: !254)
!254 = distinct !DILexicalBlock(scope: !230, file: !104, line: 46, column: 7)
!255 = !DILocation(line: 46, column: 27, scope: !254)
!256 = !DILocation(line: 46, column: 33, scope: !254)
!257 = !DILocation(line: 46, column: 8, scope: !254)
!258 = !DILocation(line: 46, column: 7, scope: !230)
!259 = !DILocation(line: 47, column: 4, scope: !254)
!260 = !DILocation(line: 48, column: 20, scope: !261)
!261 = distinct !DILexicalBlock(scope: !230, file: !104, line: 48, column: 7)
!262 = !DILocation(line: 48, column: 27, scope: !261)
!263 = !DILocation(line: 48, column: 33, scope: !261)
!264 = !DILocation(line: 48, column: 8, scope: !261)
!265 = !DILocation(line: 48, column: 7, scope: !230)
!266 = !DILocation(line: 49, column: 4, scope: !261)
!267 = !DILocation(line: 50, column: 18, scope: !268)
!268 = distinct !DILexicalBlock(scope: !230, file: !104, line: 50, column: 7)
!269 = !DILocation(line: 50, column: 25, scope: !268)
!270 = !DILocation(line: 50, column: 31, scope: !268)
!271 = !DILocation(line: 50, column: 8, scope: !268)
!272 = !DILocation(line: 50, column: 7, scope: !230)
!273 = !DILocation(line: 51, column: 4, scope: !268)
!274 = !DILocation(line: 52, column: 18, scope: !275)
!275 = distinct !DILexicalBlock(scope: !230, file: !104, line: 52, column: 7)
!276 = !DILocation(line: 52, column: 25, scope: !275)
!277 = !DILocation(line: 52, column: 31, scope: !275)
!278 = !DILocation(line: 52, column: 8, scope: !275)
!279 = !DILocation(line: 52, column: 7, scope: !230)
!280 = !DILocation(line: 53, column: 4, scope: !275)
!281 = !DILocation(line: 54, column: 2, scope: !230)
!282 = !DILocation(line: 55, column: 1, scope: !230)
!283 = distinct !DISubprogram(name: "xdr_GuestQuiesceParams", scope: !104, file: !104, line: 58, type: !284, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!284 = !DISubroutineType(types: !285)
!285 = !{!26, !27, !286}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestQuiesceParams", file: !10, line: 53, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestQuiesceParams", file: !10, line: 46, size: 128, align: 64, elements: !289)
!289 = !{!290, !291}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !288, file: !10, line: 47, baseType: !108, size: 32, align: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "GuestQuiesceParams_u", scope: !288, file: !10, line: 51, baseType: !292, size: 64, align: 64, offset: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !288, file: !10, line: 48, size: 64, align: 64, elements: !293)
!293 = !{!294, !296}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "guestQuiesceParamsV1", scope: !292, file: !10, line: 49, baseType: !295, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "guestQuiesceParamsV2", scope: !292, file: !10, line: 50, baseType: !297, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!298 = !DILocalVariable(name: "xdrs", arg: 1, scope: !283, file: !104, line: 58, type: !27)
!299 = !DILocation(line: 58, column: 30, scope: !283)
!300 = !DILocalVariable(name: "objp", arg: 2, scope: !283, file: !104, line: 58, type: !286)
!301 = !DILocation(line: 58, column: 56, scope: !283)
!302 = !DILocation(line: 61, column: 39, scope: !303)
!303 = distinct !DILexicalBlock(scope: !283, file: !104, line: 61, column: 7)
!304 = !DILocation(line: 61, column: 46, scope: !303)
!305 = !DILocation(line: 61, column: 52, scope: !303)
!306 = !DILocation(line: 61, column: 8, scope: !303)
!307 = !DILocation(line: 61, column: 7, scope: !283)
!308 = !DILocation(line: 62, column: 4, scope: !303)
!309 = !DILocation(line: 63, column: 10, scope: !283)
!310 = !DILocation(line: 63, column: 16, scope: !283)
!311 = !DILocation(line: 63, column: 2, scope: !283)
!312 = !DILocation(line: 65, column: 22, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !104, line: 65, column: 8)
!314 = distinct !DILexicalBlock(scope: !283, file: !104, line: 63, column: 21)
!315 = !DILocation(line: 65, column: 38, scope: !313)
!316 = !DILocation(line: 65, column: 44, scope: !313)
!317 = !DILocation(line: 65, column: 65, scope: !313)
!318 = !DILocation(line: 65, column: 28, scope: !313)
!319 = !DILocation(line: 65, column: 9, scope: !313)
!320 = !DILocation(line: 65, column: 8, scope: !314)
!321 = !DILocation(line: 66, column: 5, scope: !313)
!322 = !DILocation(line: 67, column: 3, scope: !314)
!323 = !DILocation(line: 69, column: 22, scope: !324)
!324 = distinct !DILexicalBlock(scope: !314, file: !104, line: 69, column: 8)
!325 = !DILocation(line: 69, column: 38, scope: !324)
!326 = !DILocation(line: 69, column: 44, scope: !324)
!327 = !DILocation(line: 69, column: 65, scope: !324)
!328 = !DILocation(line: 69, column: 28, scope: !324)
!329 = !DILocation(line: 69, column: 9, scope: !324)
!330 = !DILocation(line: 69, column: 8, scope: !314)
!331 = !DILocation(line: 70, column: 5, scope: !324)
!332 = !DILocation(line: 71, column: 3, scope: !314)
!333 = !DILocation(line: 73, column: 3, scope: !314)
!334 = !DILocation(line: 75, column: 2, scope: !283)
!335 = !DILocation(line: 76, column: 1, scope: !283)
