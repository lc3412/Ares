; ModuleID = './vmstdio.o.i'
source_filename = "./vmstdio.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.DynBuf = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define i32 @StdIO_ReadNextLine(%struct._IO_FILE*, i8**, i64, i64*) #0 !dbg !14 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.DynBuf, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !84, metadata !85), !dbg !86
  store i8** %1, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !87, metadata !85), !dbg !88
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !89, metadata !85), !dbg !90
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !91, metadata !85), !dbg !92
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %10, metadata !93, metadata !85), !dbg !101
  call void @DynBuf_Init(%struct.DynBuf* %10), !dbg !102
  br label %15, !dbg !103

; <label>:15:                                     ; preds = %64, %4
  call void @llvm.dbg.declare(metadata i8** %11, metadata !104, metadata !85), !dbg !108
  call void @llvm.dbg.declare(metadata i64* %12, metadata !109, metadata !85), !dbg !110
  call void @llvm.dbg.declare(metadata i64* %13, metadata !111, metadata !85), !dbg !112
  call void @llvm.dbg.declare(metadata i64* %14, metadata !113, metadata !85), !dbg !114
  %16 = call signext i8 @DynBuf_Enlarge(%struct.DynBuf* %10, i64 2), !dbg !115
  %17 = sext i8 %16 to i32, !dbg !115
  %18 = icmp eq i32 %17, 0, !dbg !117
  br i1 %18, label %19, label %22, !dbg !118

; <label>:19:                                     ; preds = %15
  %20 = call i32* @__errno_location() #1, !dbg !119
  store i32 12, i32* %20, align 4, !dbg !121
  %21 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !122
  br label %82, !dbg !123

; <label>:22:                                     ; preds = %15
  %23 = call i8* @DynBuf_Get(%struct.DynBuf* %10), !dbg !124
  store i8* %23, i8** %11, align 8, !dbg !125
  %24 = call i64 @DynBuf_GetSize(%struct.DynBuf* %10), !dbg !126
  store i64 %24, i64* %12, align 8, !dbg !127
  %25 = call i64 @DynBuf_GetAllocatedSize(%struct.DynBuf* %10), !dbg !128
  store i64 %25, i64* %13, align 8, !dbg !129
  %26 = load i64, i64* %13, align 8, !dbg !130
  %27 = load i64, i64* %12, align 8, !dbg !131
  %28 = sub i64 %26, %27, !dbg !132
  store i64 %28, i64* %14, align 8, !dbg !133
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !134
  %30 = load i8*, i8** %11, align 8, !dbg !136
  %31 = load i64, i64* %12, align 8, !dbg !137
  %32 = getelementptr inbounds i8, i8* %30, i64 %31, !dbg !138
  %33 = call i8* @SuperFgets(%struct._IO_FILE* %29, i64* %14, i8* %32), !dbg !139
  %34 = icmp eq i8* %33, null, !dbg !140
  br i1 %34, label %35, label %37, !dbg !141

; <label>:35:                                     ; preds = %22
  %36 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !142
  br label %82, !dbg !145

; <label>:37:                                     ; preds = %22
  %38 = load i64, i64* %14, align 8, !dbg !146
  %39 = load i64, i64* %12, align 8, !dbg !147
  %40 = add i64 %39, %38, !dbg !147
  store i64 %40, i64* %12, align 8, !dbg !147
  %41 = load i64, i64* %12, align 8, !dbg !148
  call void @DynBuf_SetSize(%struct.DynBuf* %10, i64 %41), !dbg !149
  %42 = load i64, i64* %8, align 8, !dbg !150
  %43 = icmp ne i64 %42, 0, !dbg !152
  br i1 %43, label %44, label %51, !dbg !153

; <label>:44:                                     ; preds = %37
  %45 = load i64, i64* %12, align 8, !dbg !154
  %46 = load i64, i64* %8, align 8, !dbg !156
  %47 = icmp uge i64 %45, %46, !dbg !157
  br i1 %47, label %48, label %51, !dbg !158

; <label>:48:                                     ; preds = %44
  %49 = call i32* @__errno_location() #1, !dbg !159
  store i32 7, i32* %49, align 4, !dbg !162
  %50 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !163
  br label %82, !dbg !164

; <label>:51:                                     ; preds = %44, %37
  %52 = load i64, i64* %12, align 8, !dbg !165
  %53 = load i64, i64* %13, align 8, !dbg !167
  %54 = icmp ult i64 %52, %53, !dbg !168
  br i1 %54, label %55, label %64, !dbg !169

; <label>:55:                                     ; preds = %51
  %56 = load i64, i64* %12, align 8, !dbg !170
  %57 = icmp eq i64 %56, 0, !dbg !173
  br i1 %57, label %58, label %63, !dbg !174

; <label>:58:                                     ; preds = %55
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !175
  %60 = call i32 @feof(%struct._IO_FILE* %59) #6, !dbg !177
  %61 = icmp ne i32 %60, 0, !dbg !177
  br i1 %61, label %62, label %63, !dbg !178

; <label>:62:                                     ; preds = %58
  call void @DynBuf_Destroy(%struct.DynBuf* %10), !dbg !179
  store i32 1, i32* %5, align 4, !dbg !181
  br label %83, !dbg !181

; <label>:63:                                     ; preds = %58, %55
  br label %65, !dbg !182

; <label>:64:                                     ; preds = %51
  br label %15, !dbg !183, !llvm.loop !185

; <label>:65:                                     ; preds = %63
  %66 = call signext i8 @DynBuf_Append(%struct.DynBuf* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i64 1), !dbg !186
  %67 = sext i8 %66 to i32, !dbg !186
  %68 = icmp eq i32 %67, 0, !dbg !188
  br i1 %68, label %69, label %72, !dbg !189

; <label>:69:                                     ; preds = %65
  %70 = call i32* @__errno_location() #1, !dbg !190
  store i32 12, i32* %70, align 4, !dbg !193
  %71 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !194
  br label %82, !dbg !195

; <label>:72:                                     ; preds = %65
  %73 = call i8* @DynBuf_Get(%struct.DynBuf* %10), !dbg !196
  %74 = load i8**, i8*** %7, align 8, !dbg !197
  store i8* %73, i8** %74, align 8, !dbg !198
  %75 = load i64*, i64** %9, align 8, !dbg !199
  %76 = icmp ne i64* %75, null, !dbg !199
  br i1 %76, label %77, label %81, !dbg !201

; <label>:77:                                     ; preds = %72
  %78 = call i64 @DynBuf_GetSize(%struct.DynBuf* %10), !dbg !202
  %79 = sub i64 %78, 1, !dbg !204
  %80 = load i64*, i64** %9, align 8, !dbg !205
  store i64 %79, i64* %80, align 8, !dbg !206
  br label %81, !dbg !207

; <label>:81:                                     ; preds = %77, %72
  store i32 2, i32* %5, align 4, !dbg !208
  br label %83, !dbg !208

; <label>:82:                                     ; preds = %69, %48, %35, %19
  call void @DynBuf_Destroy(%struct.DynBuf* %10), !dbg !209
  store i32 0, i32* %5, align 4, !dbg !210
  br label %83, !dbg !210

; <label>:83:                                     ; preds = %82, %81, %62
  %84 = load i32, i32* %5, align 4, !dbg !211
  ret i32 %84, !dbg !211
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @DynBuf_Init(%struct.DynBuf*) #2

declare signext i8 @DynBuf_Enlarge(%struct.DynBuf*, i64) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare i32 @assert(...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @DynBuf_Get(%struct.DynBuf*) #4 !dbg !212 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !217, metadata !85), !dbg !218
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !219
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 0, !dbg !220
  %5 = load i8*, i8** %4, align 8, !dbg !220
  ret i8* %5, !dbg !221
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @DynBuf_GetSize(%struct.DynBuf*) #4 !dbg !222 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !225, metadata !85), !dbg !226
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !227
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 1, !dbg !228
  %5 = load i64, i64* %4, align 8, !dbg !228
  ret i64 %5, !dbg !229
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @DynBuf_GetAllocatedSize(%struct.DynBuf*) #4 !dbg !230 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !231, metadata !85), !dbg !232
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !233
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 2, !dbg !234
  %5 = load i64, i64* %4, align 8, !dbg !234
  ret i64 %5, !dbg !235
}

; Function Attrs: nounwind uwtable
define internal i8* @SuperFgets(%struct._IO_FILE*, i64*, i8*) #0 !dbg !236 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !239, metadata !85), !dbg !240
  store i64* %1, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !241, metadata !85), !dbg !242
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !243, metadata !85), !dbg !244
  call void @llvm.dbg.declare(metadata i8** %8, metadata !245, metadata !85), !dbg !246
  %11 = load i8*, i8** %7, align 8, !dbg !247
  store i8* %11, i8** %8, align 8, !dbg !246
  call void @llvm.dbg.declare(metadata i64* %9, metadata !248, metadata !85), !dbg !249
  store i64 0, i64* %9, align 8, !dbg !249
  %12 = call i32* @__errno_location() #1, !dbg !250
  store i32 0, i32* %12, align 4, !dbg !251
  store i64 0, i64* %9, align 8, !dbg !252
  br label %13, !dbg !254

; <label>:13:                                     ; preds = %59, %3
  %14 = load i64, i64* %9, align 8, !dbg !255
  %15 = load i64*, i64** %6, align 8, !dbg !258
  %16 = load i64, i64* %15, align 8, !dbg !259
  %17 = icmp ult i64 %14, %16, !dbg !260
  br i1 %17, label %18, label %62, !dbg !261

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata i32* %10, metadata !262, metadata !85), !dbg !264
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !265
  %20 = call i32 @_IO_getc(%struct._IO_FILE* %19), !dbg !265
  store i32 %20, i32* %10, align 4, !dbg !266
  %21 = load i32, i32* %10, align 4, !dbg !267
  %22 = icmp eq i32 %21, -1, !dbg !269
  br i1 %22, label %23, label %29, !dbg !270

; <label>:23:                                     ; preds = %18
  %24 = call i32* @__errno_location() #1, !dbg !271
  %25 = load i32, i32* %24, align 4, !dbg !274
  %26 = icmp ne i32 %25, 0, !dbg !275
  br i1 %26, label %27, label %28, !dbg !276

; <label>:27:                                     ; preds = %23
  store i8* null, i8** %4, align 8, !dbg !277
  br label %66, !dbg !277

; <label>:28:                                     ; preds = %23
  br label %62, !dbg !279

; <label>:29:                                     ; preds = %18
  %30 = load i32, i32* %10, align 4, !dbg !281
  %31 = icmp eq i32 %30, 10, !dbg !283
  br i1 %31, label %32, label %33, !dbg !284

; <label>:32:                                     ; preds = %29
  br label %62, !dbg !285

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %10, align 4, !dbg !287
  %35 = icmp eq i32 %34, 13, !dbg !289
  br i1 %35, label %36, label %53, !dbg !290

; <label>:36:                                     ; preds = %33
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !291
  %38 = call i32 @_IO_getc(%struct._IO_FILE* %37), !dbg !291
  store i32 %38, i32* %10, align 4, !dbg !293
  %39 = load i32, i32* %10, align 4, !dbg !294
  %40 = icmp ne i32 %39, -1, !dbg !296
  br i1 %40, label %41, label %51, !dbg !297

; <label>:41:                                     ; preds = %36
  %42 = load i32, i32* %10, align 4, !dbg !298
  %43 = icmp ne i32 %42, 10, !dbg !300
  br i1 %43, label %44, label %51, !dbg !301

; <label>:44:                                     ; preds = %41
  %45 = load i32, i32* %10, align 4, !dbg !302
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !305
  %47 = call i32 @ungetc(i32 %45, %struct._IO_FILE* %46), !dbg !306
  %48 = icmp eq i32 %47, -1, !dbg !307
  br i1 %48, label %49, label %50, !dbg !308

; <label>:49:                                     ; preds = %44
  store i8* null, i8** %4, align 8, !dbg !309
  br label %66, !dbg !309

; <label>:50:                                     ; preds = %44
  br label %51, !dbg !311

; <label>:51:                                     ; preds = %50, %41, %36
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !312
  call void @clearerr(%struct._IO_FILE* %52) #6, !dbg !313
  br label %62, !dbg !314

; <label>:53:                                     ; preds = %33
  %54 = load i32, i32* %10, align 4, !dbg !315
  %55 = trunc i32 %54 to i8, !dbg !315
  %56 = load i64, i64* %9, align 8, !dbg !316
  %57 = load i8*, i8** %8, align 8, !dbg !317
  %58 = getelementptr inbounds i8, i8* %57, i64 %56, !dbg !317
  store i8 %55, i8* %58, align 1, !dbg !318
  br label %59, !dbg !319

; <label>:59:                                     ; preds = %53
  %60 = load i64, i64* %9, align 8, !dbg !320
  %61 = add i64 %60, 1, !dbg !320
  store i64 %61, i64* %9, align 8, !dbg !320
  br label %13, !dbg !322, !llvm.loop !323

; <label>:62:                                     ; preds = %51, %32, %28, %13
  %63 = load i64, i64* %9, align 8, !dbg !325
  %64 = load i64*, i64** %6, align 8, !dbg !326
  store i64 %63, i64* %64, align 8, !dbg !327
  %65 = load i8*, i8** %8, align 8, !dbg !328
  store i8* %65, i8** %4, align 8, !dbg !329
  br label %66, !dbg !329

; <label>:66:                                     ; preds = %62, %49, %27
  %67 = load i8*, i8** %4, align 8, !dbg !330
  ret i8* %67, !dbg !330
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @DynBuf_SetSize(%struct.DynBuf*, i64) #4 !dbg !331 {
  %3 = alloca %struct.DynBuf*, align 8
  %4 = alloca i64, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %3, metadata !335, metadata !85), !dbg !336
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !337, metadata !85), !dbg !338
  %5 = load i64, i64* %4, align 8, !dbg !339
  %6 = load %struct.DynBuf*, %struct.DynBuf** %3, align 8, !dbg !340
  %7 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %6, i32 0, i32 1, !dbg !341
  store i64 %5, i64* %7, align 8, !dbg !342
  ret void, !dbg !343
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #5

declare void @DynBuf_Destroy(%struct.DynBuf*) #2

declare signext i8 @DynBuf_Append(%struct.DynBuf*, i8*, i64) #2

declare i32 @_IO_getc(%struct._IO_FILE*) #2

declare i32 @ungetc(i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare void @clearerr(%struct._IO_FILE*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9)
!1 = !DIFile(filename: "vmstdio.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line711")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 34, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmstdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line711")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "StdIO_Error", value: 0)
!7 = !DIEnumerator(name: "StdIO_EOF", value: 1)
!8 = !DIEnumerator(name: "StdIO_Success", value: 2)
!9 = !{!10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!14 = distinct !DISubprogram(name: "StdIO_ReadNextLine", scope: !15, file: !15, line: 187, type: !16, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!15 = !DIFile(filename: "vmstdio.c", directory: "/home/lichi/Desktop/open-vm-tools/line711")
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19, !81, !73, !82}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "StdIO_Status", file: !4, line: 38, baseType: !3)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !21, line: 48, baseType: !22)
!21 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line711")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !23, line: 241, size: 1728, align: 64, elements: !24)
!23 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/open-vm-tools/line711")
!24 = !{!25, !27, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !48, !49, !50, !51, !55, !57, !59, !63, !66, !68, !69, !70, !71, !72, !76, !77}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !22, file: !23, line: 242, baseType: !26, size: 32, align: 32)
!26 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !22, file: !23, line: 247, baseType: !28, size: 64, align: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !22, file: !23, line: 248, baseType: !28, size: 64, align: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !22, file: !23, line: 249, baseType: !28, size: 64, align: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !22, file: !23, line: 250, baseType: !28, size: 64, align: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !22, file: !23, line: 251, baseType: !28, size: 64, align: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !22, file: !23, line: 252, baseType: !28, size: 64, align: 64, offset: 384)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !22, file: !23, line: 253, baseType: !28, size: 64, align: 64, offset: 448)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !22, file: !23, line: 254, baseType: !28, size: 64, align: 64, offset: 512)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !22, file: !23, line: 256, baseType: !28, size: 64, align: 64, offset: 576)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !22, file: !23, line: 257, baseType: !28, size: 64, align: 64, offset: 640)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !22, file: !23, line: 258, baseType: !28, size: 64, align: 64, offset: 704)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !22, file: !23, line: 260, baseType: !41, size: 64, align: 64, offset: 768)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !23, line: 156, size: 192, align: 64, elements: !43)
!43 = !{!44, !45, !47}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !42, file: !23, line: 157, baseType: !41, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !42, file: !23, line: 158, baseType: !46, size: 64, align: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !42, file: !23, line: 162, baseType: !26, size: 32, align: 32, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !22, file: !23, line: 262, baseType: !46, size: 64, align: 64, offset: 832)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !22, file: !23, line: 264, baseType: !26, size: 32, align: 32, offset: 896)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !22, file: !23, line: 268, baseType: !26, size: 32, align: 32, offset: 928)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !22, file: !23, line: 270, baseType: !52, size: 64, align: 64, offset: 960)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !53, line: 131, baseType: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line711")
!54 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !22, file: !23, line: 274, baseType: !56, size: 16, align: 16, offset: 1024)
!56 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !22, file: !23, line: 275, baseType: !58, size: 8, align: 8, offset: 1040)
!58 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !22, file: !23, line: 276, baseType: !60, size: 8, align: 8, offset: 1048)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 8, align: 8, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 1)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !22, file: !23, line: 280, baseType: !64, size: 64, align: 64, offset: 1088)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !23, line: 150, baseType: null)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !22, file: !23, line: 289, baseType: !67, size: 64, align: 64, offset: 1152)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !53, line: 132, baseType: !54)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !22, file: !23, line: 297, baseType: !10, size: 64, align: 64, offset: 1216)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !22, file: !23, line: 298, baseType: !10, size: 64, align: 64, offset: 1280)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !22, file: !23, line: 299, baseType: !10, size: 64, align: 64, offset: 1344)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !22, file: !23, line: 300, baseType: !10, size: 64, align: 64, offset: 1408)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !22, file: !23, line: 302, baseType: !73, size: 64, align: 64, offset: 1472)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 216, baseType: !75)
!74 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line711")
!75 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !22, file: !23, line: 303, baseType: !26, size: 32, align: 32, offset: 1536)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !22, file: !23, line: 305, baseType: !78, size: 160, align: 8, offset: 1568)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 160, align: 8, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 20)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!83 = !{}
!84 = !DILocalVariable(name: "stream", arg: 1, scope: !14, file: !15, line: 187, type: !19)
!85 = !DIExpression()
!86 = !DILocation(line: 187, column: 26, scope: !14)
!87 = !DILocalVariable(name: "buf", arg: 2, scope: !14, file: !15, line: 188, type: !81)
!88 = !DILocation(line: 188, column: 27, scope: !14)
!89 = !DILocalVariable(name: "maxBufLength", arg: 3, scope: !14, file: !15, line: 189, type: !73)
!90 = !DILocation(line: 189, column: 27, scope: !14)
!91 = !DILocalVariable(name: "count", arg: 4, scope: !14, file: !15, line: 190, type: !82)
!92 = !DILocation(line: 190, column: 28, scope: !14)
!93 = !DILocalVariable(name: "b", scope: !14, file: !15, line: 192, type: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "DynBuf", file: !95, line: 40, baseType: !96)
!95 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dynbuf.h", directory: "/home/lichi/Desktop/open-vm-tools/line711")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DynBuf", file: !95, line: 36, size: 192, align: 64, elements: !97)
!97 = !{!98, !99, !100}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !96, file: !95, line: 37, baseType: !28, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !96, file: !95, line: 38, baseType: !73, size: 64, align: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !96, file: !95, line: 39, baseType: !73, size: 64, align: 64, offset: 128)
!101 = !DILocation(line: 192, column: 11, scope: !14)
!102 = !DILocation(line: 197, column: 4, scope: !14)
!103 = !DILocation(line: 199, column: 4, scope: !14)
!104 = !DILocalVariable(name: "data", scope: !105, file: !15, line: 200, type: !28)
!105 = distinct !DILexicalBlock(scope: !106, file: !15, line: 199, column: 13)
!106 = distinct !DILexicalBlock(scope: !107, file: !15, line: 199, column: 4)
!107 = distinct !DILexicalBlock(scope: !14, file: !15, line: 199, column: 4)
!108 = !DILocation(line: 200, column: 13, scope: !105)
!109 = !DILocalVariable(name: "size", scope: !105, file: !15, line: 201, type: !73)
!110 = !DILocation(line: 201, column: 14, scope: !105)
!111 = !DILocalVariable(name: "max", scope: !105, file: !15, line: 202, type: !73)
!112 = !DILocation(line: 202, column: 14, scope: !105)
!113 = !DILocalVariable(name: "nr", scope: !105, file: !15, line: 203, type: !73)
!114 = !DILocation(line: 203, column: 14, scope: !105)
!115 = !DILocation(line: 210, column: 11, scope: !116)
!116 = distinct !DILexicalBlock(scope: !105, file: !15, line: 210, column: 11)
!117 = !DILocation(line: 210, column: 33, scope: !116)
!118 = !DILocation(line: 210, column: 11, scope: !105)
!119 = !DILocation(line: 211, column: 11, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !15, line: 210, column: 39)
!121 = !DILocation(line: 211, column: 15, scope: !120)
!122 = !DILocation(line: 212, column: 1, scope: !120)
!123 = !DILocation(line: 213, column: 10, scope: !120)
!124 = !DILocation(line: 218, column: 14, scope: !105)
!125 = !DILocation(line: 218, column: 12, scope: !105)
!126 = !DILocation(line: 219, column: 14, scope: !105)
!127 = !DILocation(line: 219, column: 12, scope: !105)
!128 = !DILocation(line: 221, column: 13, scope: !105)
!129 = !DILocation(line: 221, column: 11, scope: !105)
!130 = !DILocation(line: 222, column: 12, scope: !105)
!131 = !DILocation(line: 222, column: 18, scope: !105)
!132 = !DILocation(line: 222, column: 16, scope: !105)
!133 = !DILocation(line: 222, column: 10, scope: !105)
!134 = !DILocation(line: 224, column: 22, scope: !135)
!135 = distinct !DILexicalBlock(scope: !105, file: !15, line: 224, column: 11)
!136 = !DILocation(line: 224, column: 35, scope: !135)
!137 = !DILocation(line: 224, column: 42, scope: !135)
!138 = !DILocation(line: 224, column: 40, scope: !135)
!139 = !DILocation(line: 224, column: 11, scope: !135)
!140 = !DILocation(line: 224, column: 48, scope: !135)
!141 = !DILocation(line: 224, column: 11, scope: !105)
!142 = !DILocation(line: 224, column: 1, scope: !143)
!143 = !DILexicalBlockFile(scope: !144, file: !15, discriminator: 1)
!144 = distinct !DILexicalBlock(scope: !135, file: !15, line: 223, column: 56)
!145 = !DILocation(line: 225, column: 10, scope: !144)
!146 = !DILocation(line: 228, column: 15, scope: !105)
!147 = !DILocation(line: 228, column: 12, scope: !105)
!148 = !DILocation(line: 229, column: 26, scope: !105)
!149 = !DILocation(line: 229, column: 7, scope: !105)
!150 = !DILocation(line: 231, column: 11, scope: !151)
!151 = distinct !DILexicalBlock(scope: !105, file: !15, line: 231, column: 11)
!152 = !DILocation(line: 231, column: 24, scope: !151)
!153 = !DILocation(line: 231, column: 29, scope: !151)
!154 = !DILocation(line: 231, column: 32, scope: !155)
!155 = !DILexicalBlockFile(scope: !151, file: !15, discriminator: 1)
!156 = !DILocation(line: 231, column: 40, scope: !155)
!157 = !DILocation(line: 231, column: 37, scope: !155)
!158 = !DILocation(line: 231, column: 11, scope: !155)
!159 = !DILocation(line: 231, column: 11, scope: !160)
!160 = !DILexicalBlockFile(scope: !161, file: !15, discriminator: 2)
!161 = distinct !DILexicalBlock(scope: !151, file: !15, line: 231, column: 54)
!162 = !DILocation(line: 231, column: 15, scope: !160)
!163 = !DILocation(line: 232, column: 1, scope: !161)
!164 = !DILocation(line: 233, column: 10, scope: !161)
!165 = !DILocation(line: 236, column: 11, scope: !166)
!166 = distinct !DILexicalBlock(scope: !105, file: !15, line: 236, column: 11)
!167 = !DILocation(line: 236, column: 18, scope: !166)
!168 = !DILocation(line: 236, column: 16, scope: !166)
!169 = !DILocation(line: 236, column: 11, scope: !105)
!170 = !DILocation(line: 239, column: 14, scope: !171)
!171 = distinct !DILexicalBlock(scope: !172, file: !15, line: 239, column: 14)
!172 = distinct !DILexicalBlock(scope: !166, file: !15, line: 236, column: 23)
!173 = !DILocation(line: 239, column: 19, scope: !171)
!174 = !DILocation(line: 239, column: 24, scope: !171)
!175 = !DILocation(line: 239, column: 32, scope: !176)
!176 = !DILexicalBlockFile(scope: !171, file: !15, discriminator: 1)
!177 = !DILocation(line: 239, column: 27, scope: !176)
!178 = !DILocation(line: 239, column: 14, scope: !176)
!179 = !DILocation(line: 241, column: 13, scope: !180)
!180 = distinct !DILexicalBlock(scope: !171, file: !15, line: 239, column: 41)
!181 = !DILocation(line: 243, column: 13, scope: !180)
!182 = !DILocation(line: 246, column: 10, scope: !172)
!183 = !DILocation(line: 199, column: 4, scope: !184)
!184 = !DILexicalBlockFile(scope: !106, file: !15, discriminator: 1)
!185 = distinct !{!185, !103}
!186 = !DILocation(line: 259, column: 8, scope: !187)
!187 = distinct !DILexicalBlock(scope: !14, file: !15, line: 259, column: 8)
!188 = !DILocation(line: 259, column: 33, scope: !187)
!189 = !DILocation(line: 259, column: 8, scope: !14)
!190 = !DILocation(line: 259, column: 8, scope: !191)
!191 = !DILexicalBlockFile(scope: !192, file: !15, discriminator: 1)
!192 = distinct !DILexicalBlock(scope: !187, file: !15, line: 259, column: 39)
!193 = !DILocation(line: 259, column: 12, scope: !191)
!194 = !DILocation(line: 260, column: 1, scope: !192)
!195 = !DILocation(line: 261, column: 7, scope: !192)
!196 = !DILocation(line: 264, column: 11, scope: !14)
!197 = !DILocation(line: 264, column: 5, scope: !14)
!198 = !DILocation(line: 264, column: 9, scope: !14)
!199 = !DILocation(line: 265, column: 8, scope: !200)
!200 = distinct !DILexicalBlock(scope: !14, file: !15, line: 265, column: 8)
!201 = !DILocation(line: 265, column: 8, scope: !14)
!202 = !DILocation(line: 266, column: 16, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !15, line: 265, column: 15)
!204 = !DILocation(line: 266, column: 35, scope: !203)
!205 = !DILocation(line: 266, column: 8, scope: !203)
!206 = !DILocation(line: 266, column: 14, scope: !203)
!207 = !DILocation(line: 267, column: 4, scope: !203)
!208 = !DILocation(line: 269, column: 4, scope: !14)
!209 = !DILocation(line: 272, column: 4, scope: !14)
!210 = !DILocation(line: 274, column: 4, scope: !14)
!211 = !DILocation(line: 275, column: 1, scope: !14)
!212 = distinct !DISubprogram(name: "DynBuf_Get", scope: !95, file: !95, line: 113, type: !213, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!213 = !DISubroutineType(types: !214)
!214 = !{!10, !215}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!217 = !DILocalVariable(name: "b", arg: 1, scope: !212, file: !95, line: 113, type: !215)
!218 = !DILocation(line: 113, column: 26, scope: !212)
!219 = !DILocation(line: 117, column: 11, scope: !212)
!220 = !DILocation(line: 117, column: 14, scope: !212)
!221 = !DILocation(line: 117, column: 4, scope: !212)
!222 = distinct !DISubprogram(name: "DynBuf_GetSize", scope: !95, file: !95, line: 174, type: !223, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!223 = !DISubroutineType(types: !224)
!224 = !{!73, !215}
!225 = !DILocalVariable(name: "b", arg: 1, scope: !222, file: !95, line: 174, type: !215)
!226 = !DILocation(line: 174, column: 30, scope: !222)
!227 = !DILocation(line: 178, column: 11, scope: !222)
!228 = !DILocation(line: 178, column: 14, scope: !222)
!229 = !DILocation(line: 178, column: 4, scope: !222)
!230 = distinct !DISubprogram(name: "DynBuf_GetAllocatedSize", scope: !95, file: !95, line: 234, type: !223, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!231 = !DILocalVariable(name: "b", arg: 1, scope: !230, file: !95, line: 234, type: !215)
!232 = !DILocation(line: 234, column: 39, scope: !230)
!233 = !DILocation(line: 238, column: 11, scope: !230)
!234 = !DILocation(line: 238, column: 14, scope: !230)
!235 = !DILocation(line: 238, column: 4, scope: !230)
!236 = distinct !DISubprogram(name: "SuperFgets", scope: !15, file: !15, line: 67, type: !237, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!237 = !DISubroutineType(types: !238)
!238 = !{!10, !19, !82, !10}
!239 = !DILocalVariable(name: "stream", arg: 1, scope: !236, file: !15, line: 67, type: !19)
!240 = !DILocation(line: 67, column: 18, scope: !236)
!241 = !DILocalVariable(name: "count", arg: 2, scope: !236, file: !15, line: 68, type: !82)
!242 = !DILocation(line: 68, column: 20, scope: !236)
!243 = !DILocalVariable(name: "bufIn", arg: 3, scope: !236, file: !15, line: 69, type: !10)
!244 = !DILocation(line: 69, column: 18, scope: !236)
!245 = !DILocalVariable(name: "buf", scope: !236, file: !15, line: 71, type: !28)
!246 = !DILocation(line: 71, column: 10, scope: !236)
!247 = !DILocation(line: 71, column: 16, scope: !236)
!248 = !DILocalVariable(name: "size", scope: !236, file: !15, line: 72, type: !73)
!249 = !DILocation(line: 72, column: 11, scope: !236)
!250 = !DILocation(line: 85, column: 5, scope: !236)
!251 = !DILocation(line: 85, column: 9, scope: !236)
!252 = !DILocation(line: 87, column: 14, scope: !253)
!253 = distinct !DILexicalBlock(scope: !236, file: !15, line: 87, column: 4)
!254 = !DILocation(line: 87, column: 9, scope: !253)
!255 = !DILocation(line: 87, column: 19, scope: !256)
!256 = !DILexicalBlockFile(scope: !257, file: !15, discriminator: 1)
!257 = distinct !DILexicalBlock(scope: !253, file: !15, line: 87, column: 4)
!258 = !DILocation(line: 87, column: 27, scope: !256)
!259 = !DILocation(line: 87, column: 26, scope: !256)
!260 = !DILocation(line: 87, column: 24, scope: !256)
!261 = !DILocation(line: 87, column: 4, scope: !256)
!262 = !DILocalVariable(name: "c", scope: !263, file: !15, line: 88, type: !26)
!263 = distinct !DILexicalBlock(scope: !257, file: !15, line: 87, column: 42)
!264 = !DILocation(line: 88, column: 11, scope: !263)
!265 = !DILocation(line: 90, column: 10, scope: !263)
!266 = !DILocation(line: 90, column: 9, scope: !263)
!267 = !DILocation(line: 92, column: 11, scope: !268)
!268 = distinct !DILexicalBlock(scope: !263, file: !15, line: 92, column: 11)
!269 = !DILocation(line: 92, column: 13, scope: !268)
!270 = !DILocation(line: 92, column: 11, scope: !263)
!271 = !DILocation(line: 93, column: 15, scope: !272)
!272 = distinct !DILexicalBlock(scope: !273, file: !15, line: 93, column: 13)
!273 = distinct !DILexicalBlock(scope: !268, file: !15, line: 92, column: 20)
!274 = !DILocation(line: 93, column: 14, scope: !272)
!275 = !DILocation(line: 93, column: 13, scope: !272)
!276 = !DILocation(line: 93, column: 13, scope: !273)
!277 = !DILocation(line: 95, column: 13, scope: !278)
!278 = distinct !DILexicalBlock(scope: !272, file: !15, line: 93, column: 20)
!279 = !DILocation(line: 98, column: 13, scope: !280)
!280 = distinct !DILexicalBlock(scope: !272, file: !15, line: 96, column: 17)
!281 = !DILocation(line: 102, column: 11, scope: !282)
!282 = distinct !DILexicalBlock(scope: !263, file: !15, line: 102, column: 11)
!283 = !DILocation(line: 102, column: 13, scope: !282)
!284 = !DILocation(line: 102, column: 11, scope: !263)
!285 = !DILocation(line: 104, column: 10, scope: !286)
!286 = distinct !DILexicalBlock(scope: !282, file: !15, line: 102, column: 22)
!287 = !DILocation(line: 107, column: 11, scope: !288)
!288 = distinct !DILexicalBlock(scope: !263, file: !15, line: 107, column: 11)
!289 = !DILocation(line: 107, column: 13, scope: !288)
!290 = !DILocation(line: 107, column: 11, scope: !263)
!291 = !DILocation(line: 117, column: 13, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !15, line: 107, column: 22)
!293 = !DILocation(line: 117, column: 12, scope: !292)
!294 = !DILocation(line: 118, column: 14, scope: !295)
!295 = distinct !DILexicalBlock(scope: !292, file: !15, line: 118, column: 14)
!296 = !DILocation(line: 118, column: 16, scope: !295)
!297 = !DILocation(line: 118, column: 22, scope: !295)
!298 = !DILocation(line: 118, column: 25, scope: !299)
!299 = !DILexicalBlockFile(scope: !295, file: !15, discriminator: 1)
!300 = !DILocation(line: 118, column: 27, scope: !299)
!301 = !DILocation(line: 118, column: 14, scope: !299)
!302 = !DILocation(line: 121, column: 24, scope: !303)
!303 = distinct !DILexicalBlock(scope: !304, file: !15, line: 121, column: 17)
!304 = distinct !DILexicalBlock(scope: !295, file: !15, line: 118, column: 36)
!305 = !DILocation(line: 121, column: 27, scope: !303)
!306 = !DILocation(line: 121, column: 17, scope: !303)
!307 = !DILocation(line: 121, column: 35, scope: !303)
!308 = !DILocation(line: 121, column: 17, scope: !304)
!309 = !DILocation(line: 122, column: 16, scope: !310)
!310 = distinct !DILexicalBlock(scope: !303, file: !15, line: 121, column: 42)
!311 = !DILocation(line: 124, column: 10, scope: !304)
!312 = !DILocation(line: 127, column: 19, scope: !292)
!313 = !DILocation(line: 127, column: 10, scope: !292)
!314 = !DILocation(line: 130, column: 10, scope: !292)
!315 = !DILocation(line: 133, column: 19, scope: !263)
!316 = !DILocation(line: 133, column: 11, scope: !263)
!317 = !DILocation(line: 133, column: 7, scope: !263)
!318 = !DILocation(line: 133, column: 17, scope: !263)
!319 = !DILocation(line: 134, column: 4, scope: !263)
!320 = !DILocation(line: 87, column: 38, scope: !321)
!321 = !DILexicalBlockFile(scope: !257, file: !15, discriminator: 2)
!322 = !DILocation(line: 87, column: 4, scope: !321)
!323 = distinct !{!323, !324}
!324 = !DILocation(line: 87, column: 4, scope: !236)
!325 = !DILocation(line: 136, column: 13, scope: !236)
!326 = !DILocation(line: 136, column: 5, scope: !236)
!327 = !DILocation(line: 136, column: 11, scope: !236)
!328 = !DILocation(line: 138, column: 11, scope: !236)
!329 = !DILocation(line: 138, column: 4, scope: !236)
!330 = !DILocation(line: 139, column: 1, scope: !236)
!331 = distinct !DISubprogram(name: "DynBuf_SetSize", scope: !95, file: !95, line: 203, type: !332, isLocal: true, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !334, !73}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!335 = !DILocalVariable(name: "b", arg: 1, scope: !331, file: !95, line: 203, type: !334)
!336 = !DILocation(line: 203, column: 24, scope: !331)
!337 = !DILocalVariable(name: "size", arg: 2, scope: !331, file: !95, line: 204, type: !73)
!338 = !DILocation(line: 204, column: 23, scope: !331)
!339 = !DILocation(line: 209, column: 14, scope: !331)
!340 = !DILocation(line: 209, column: 4, scope: !331)
!341 = !DILocation(line: 209, column: 7, scope: !331)
!342 = !DILocation(line: 209, column: 12, scope: !331)
!343 = !DILocation(line: 210, column: 1, scope: !331)
