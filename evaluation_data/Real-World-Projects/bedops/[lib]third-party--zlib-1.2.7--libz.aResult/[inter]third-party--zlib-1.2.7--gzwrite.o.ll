; ModuleID = './[inter]third-party--zlib-1.2.7--gzwrite.o.i'
source_filename = "./[inter]third-party--zlib-1.2.7--gzwrite.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gzFile_s = type { i32, i8*, i64 }
%struct.gz_state = type { %struct.gzFile_s, i32, i32, i8*, i32, i32, i8*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, i8*, %struct.z_stream_s }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [37 x i8] c"requested length does not fit in int\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"1.2.7\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"stdio error (consult errno)\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"internal error: deflate stream corrupt\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gzwrite(%struct.gzFile_s*, i8*, i32) #0 !dbg !85 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gzFile_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gz_state*, align 8
  %11 = alloca %struct.z_stream_s*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %5, metadata !94, metadata !95), !dbg !96
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !97, metadata !95), !dbg !98
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !99, metadata !95), !dbg !100
  call void @llvm.dbg.declare(metadata i32* %8, metadata !101, metadata !95), !dbg !102
  %12 = load i32, i32* %7, align 4, !dbg !103
  store i32 %12, i32* %8, align 4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %9, metadata !104, metadata !95), !dbg !105
  call void @llvm.dbg.declare(metadata %struct.gz_state** %10, metadata !106, metadata !95), !dbg !107
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %11, metadata !108, metadata !95), !dbg !111
  %13 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8, !dbg !112
  %14 = icmp eq %struct.gzFile_s* %13, null, !dbg !114
  br i1 %14, label %15, label %16, !dbg !115

; <label>:15:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !116
  br label %171, !dbg !116

; <label>:16:                                     ; preds = %3
  %17 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8, !dbg !117
  %18 = bitcast %struct.gzFile_s* %17 to %struct.gz_state*, !dbg !118
  store %struct.gz_state* %18, %struct.gz_state** %10, align 8, !dbg !119
  %19 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !120
  %20 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %19, i32 0, i32 19, !dbg !121
  store %struct.z_stream_s* %20, %struct.z_stream_s** %11, align 8, !dbg !122
  %21 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !123
  %22 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %21, i32 0, i32 1, !dbg !125
  %23 = load i32, i32* %22, align 8, !dbg !125
  %24 = icmp ne i32 %23, 31153, !dbg !126
  br i1 %24, label %30, label %25, !dbg !127

; <label>:25:                                     ; preds = %16
  %26 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !128
  %27 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %26, i32 0, i32 17, !dbg !130
  %28 = load i32, i32* %27, align 4, !dbg !130
  %29 = icmp ne i32 %28, 0, !dbg !131
  br i1 %29, label %30, label %31, !dbg !132

; <label>:30:                                     ; preds = %25, %16
  store i32 0, i32* %4, align 4, !dbg !133
  br label %171, !dbg !133

; <label>:31:                                     ; preds = %25
  %32 = load i32, i32* %7, align 4, !dbg !134
  %33 = icmp slt i32 %32, 0, !dbg !136
  br i1 %33, label %34, label %36, !dbg !137

; <label>:34:                                     ; preds = %31
  %35 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !138
  call void @gz_error(%struct.gz_state* %35, i32 -3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0)), !dbg !140
  store i32 0, i32* %4, align 4, !dbg !141
  br label %171, !dbg !141

; <label>:36:                                     ; preds = %31
  %37 = load i32, i32* %7, align 4, !dbg !142
  %38 = icmp eq i32 %37, 0, !dbg !144
  br i1 %38, label %39, label %40, !dbg !145

; <label>:39:                                     ; preds = %36
  store i32 0, i32* %4, align 4, !dbg !146
  br label %171, !dbg !146

; <label>:40:                                     ; preds = %36
  %41 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !147
  %42 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %41, i32 0, i32 4, !dbg !149
  %43 = load i32, i32* %42, align 8, !dbg !149
  %44 = icmp eq i32 %43, 0, !dbg !150
  br i1 %44, label %45, label %50, !dbg !151

; <label>:45:                                     ; preds = %40
  %46 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !152
  %47 = call i32 @gz_init(%struct.gz_state* %46), !dbg !154
  %48 = icmp eq i32 %47, -1, !dbg !155
  br i1 %48, label %49, label %50, !dbg !156

; <label>:49:                                     ; preds = %45
  store i32 0, i32* %4, align 4, !dbg !157
  br label %171, !dbg !157

; <label>:50:                                     ; preds = %45, %40
  %51 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !158
  %52 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %51, i32 0, i32 16, !dbg !160
  %53 = load i32, i32* %52, align 8, !dbg !160
  %54 = icmp ne i32 %53, 0, !dbg !158
  br i1 %54, label %55, label %66, !dbg !161

; <label>:55:                                     ; preds = %50
  %56 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !162
  %57 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %56, i32 0, i32 16, !dbg !164
  store i32 0, i32* %57, align 8, !dbg !165
  %58 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !166
  %59 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !168
  %60 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %59, i32 0, i32 15, !dbg !169
  %61 = load i64, i64* %60, align 8, !dbg !169
  %62 = call i32 @gz_zero(%struct.gz_state* %58, i64 %61), !dbg !170
  %63 = icmp eq i32 %62, -1, !dbg !171
  br i1 %63, label %64, label %65, !dbg !172

; <label>:64:                                     ; preds = %55
  store i32 0, i32* %4, align 4, !dbg !173
  br label %171, !dbg !173

; <label>:65:                                     ; preds = %55
  br label %66, !dbg !174

; <label>:66:                                     ; preds = %65, %50
  %67 = load i32, i32* %7, align 4, !dbg !175
  %68 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !177
  %69 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %68, i32 0, i32 4, !dbg !178
  %70 = load i32, i32* %69, align 8, !dbg !178
  %71 = icmp ult i32 %67, %70, !dbg !179
  br i1 %71, label %72, label %140, !dbg !180

; <label>:72:                                     ; preds = %66
  br label %73, !dbg !181, !llvm.loop !183

; <label>:73:                                     ; preds = %136, %72
  %74 = load %struct.z_stream_s*, %struct.z_stream_s** %11, align 8, !dbg !184
  %75 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %74, i32 0, i32 1, !dbg !187
  %76 = load i32, i32* %75, align 8, !dbg !187
  %77 = icmp eq i32 %76, 0, !dbg !188
  br i1 %77, label %78, label %84, !dbg !189

; <label>:78:                                     ; preds = %73
  %79 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !190
  %80 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %79, i32 0, i32 6, !dbg !191
  %81 = load i8*, i8** %80, align 8, !dbg !191
  %82 = load %struct.z_stream_s*, %struct.z_stream_s** %11, align 8, !dbg !192
  %83 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %82, i32 0, i32 0, !dbg !193
  store i8* %81, i8** %83, align 8, !dbg !194
  br label %84, !dbg !192

; <label>:84:                                     ; preds = %78, %73
  %85 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !195
  %86 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %85, i32 0, i32 4, !dbg !196
  %87 = load i32, i32* %86, align 8, !dbg !196
  %88 = load %struct.z_stream_s*, %struct.z_stream_s** %11, align 8, !dbg !197
  %89 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %88, i32 0, i32 1, !dbg !198
  %90 = load i32, i32* %89, align 8, !dbg !198
  %91 = sub i32 %87, %90, !dbg !199
  store i32 %91, i32* %9, align 4, !dbg !200
  %92 = load i32, i32* %9, align 4, !dbg !201
  %93 = load i32, i32* %7, align 4, !dbg !203
  %94 = icmp ugt i32 %92, %93, !dbg !204
  br i1 %94, label %95, label %97, !dbg !205

; <label>:95:                                     ; preds = %84
  %96 = load i32, i32* %7, align 4, !dbg !206
  store i32 %96, i32* %9, align 4, !dbg !207
  br label %97, !dbg !208

; <label>:97:                                     ; preds = %95, %84
  %98 = load %struct.z_stream_s*, %struct.z_stream_s** %11, align 8, !dbg !209
  %99 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %98, i32 0, i32 0, !dbg !210
  %100 = load i8*, i8** %99, align 8, !dbg !210
  %101 = load %struct.z_stream_s*, %struct.z_stream_s** %11, align 8, !dbg !211
  %102 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %101, i32 0, i32 1, !dbg !212
  %103 = load i32, i32* %102, align 8, !dbg !212
  %104 = zext i32 %103 to i64, !dbg !213
  %105 = getelementptr inbounds i8, i8* %100, i64 %104, !dbg !213
  %106 = load i8*, i8** %6, align 8, !dbg !214
  %107 = load i32, i32* %9, align 4, !dbg !215
  %108 = zext i32 %107 to i64, !dbg !215
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %105, i8* %106, i64 %108, i32 1, i1 false), !dbg !216
  %109 = load i32, i32* %9, align 4, !dbg !217
  %110 = load %struct.z_stream_s*, %struct.z_stream_s** %11, align 8, !dbg !218
  %111 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %110, i32 0, i32 1, !dbg !219
  %112 = load i32, i32* %111, align 8, !dbg !220
  %113 = add i32 %112, %109, !dbg !220
  store i32 %113, i32* %111, align 8, !dbg !220
  %114 = load i32, i32* %9, align 4, !dbg !221
  %115 = zext i32 %114 to i64, !dbg !221
  %116 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !222
  %117 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %116, i32 0, i32 0, !dbg !223
  %118 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %117, i32 0, i32 2, !dbg !224
  %119 = load i64, i64* %118, align 8, !dbg !225
  %120 = add nsw i64 %119, %115, !dbg !225
  store i64 %120, i64* %118, align 8, !dbg !225
  %121 = load i8*, i8** %6, align 8, !dbg !226
  %122 = load i32, i32* %9, align 4, !dbg !227
  %123 = zext i32 %122 to i64, !dbg !228
  %124 = getelementptr inbounds i8, i8* %121, i64 %123, !dbg !228
  store i8* %124, i8** %6, align 8, !dbg !229
  %125 = load i32, i32* %9, align 4, !dbg !230
  %126 = load i32, i32* %7, align 4, !dbg !231
  %127 = sub i32 %126, %125, !dbg !231
  store i32 %127, i32* %7, align 4, !dbg !231
  %128 = load i32, i32* %7, align 4, !dbg !232
  %129 = icmp ne i32 %128, 0, !dbg !232
  br i1 %129, label %130, label %135, !dbg !234

; <label>:130:                                    ; preds = %97
  %131 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !235
  %132 = call i32 @gz_comp(%struct.gz_state* %131, i32 0), !dbg !237
  %133 = icmp eq i32 %132, -1, !dbg !238
  br i1 %133, label %134, label %135, !dbg !239

; <label>:134:                                    ; preds = %130
  store i32 0, i32* %4, align 4, !dbg !240
  br label %171, !dbg !240

; <label>:135:                                    ; preds = %130, %97
  br label %136, !dbg !241

; <label>:136:                                    ; preds = %135
  %137 = load i32, i32* %7, align 4, !dbg !242
  %138 = icmp ne i32 %137, 0, !dbg !244
  br i1 %138, label %73, label %139, !dbg !244, !llvm.loop !183

; <label>:139:                                    ; preds = %136
  br label %169, !dbg !245

; <label>:140:                                    ; preds = %66
  %141 = load %struct.z_stream_s*, %struct.z_stream_s** %11, align 8, !dbg !246
  %142 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %141, i32 0, i32 1, !dbg !249
  %143 = load i32, i32* %142, align 8, !dbg !249
  %144 = icmp ne i32 %143, 0, !dbg !246
  br i1 %144, label %145, label %150, !dbg !250

; <label>:145:                                    ; preds = %140
  %146 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !251
  %147 = call i32 @gz_comp(%struct.gz_state* %146, i32 0), !dbg !253
  %148 = icmp eq i32 %147, -1, !dbg !254
  br i1 %148, label %149, label %150, !dbg !255

; <label>:149:                                    ; preds = %145
  store i32 0, i32* %4, align 4, !dbg !256
  br label %171, !dbg !256

; <label>:150:                                    ; preds = %145, %140
  %151 = load i32, i32* %7, align 4, !dbg !257
  %152 = load %struct.z_stream_s*, %struct.z_stream_s** %11, align 8, !dbg !258
  %153 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %152, i32 0, i32 1, !dbg !259
  store i32 %151, i32* %153, align 8, !dbg !260
  %154 = load i8*, i8** %6, align 8, !dbg !261
  %155 = load %struct.z_stream_s*, %struct.z_stream_s** %11, align 8, !dbg !262
  %156 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %155, i32 0, i32 0, !dbg !263
  store i8* %154, i8** %156, align 8, !dbg !264
  %157 = load i32, i32* %7, align 4, !dbg !265
  %158 = zext i32 %157 to i64, !dbg !265
  %159 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !266
  %160 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %159, i32 0, i32 0, !dbg !267
  %161 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %160, i32 0, i32 2, !dbg !268
  %162 = load i64, i64* %161, align 8, !dbg !269
  %163 = add nsw i64 %162, %158, !dbg !269
  store i64 %163, i64* %161, align 8, !dbg !269
  %164 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !270
  %165 = call i32 @gz_comp(%struct.gz_state* %164, i32 0), !dbg !272
  %166 = icmp eq i32 %165, -1, !dbg !273
  br i1 %166, label %167, label %168, !dbg !274

; <label>:167:                                    ; preds = %150
  store i32 0, i32* %4, align 4, !dbg !275
  br label %171, !dbg !275

; <label>:168:                                    ; preds = %150
  br label %169

; <label>:169:                                    ; preds = %168, %139
  %170 = load i32, i32* %8, align 4, !dbg !276
  store i32 %170, i32* %4, align 4, !dbg !277
  br label %171, !dbg !277

; <label>:171:                                    ; preds = %169, %167, %149, %134, %64, %49, %39, %34, %30, %15
  %172 = load i32, i32* %4, align 4, !dbg !278
  ret i32 %172, !dbg !278
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gz_error(%struct.gz_state*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gz_init(%struct.gz_state*) #0 !dbg !279 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gz_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_stream_s*, align 8
  store %struct.gz_state* %0, %struct.gz_state** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.gz_state** %3, metadata !282, metadata !95), !dbg !283
  call void @llvm.dbg.declare(metadata i32* %4, metadata !284, metadata !95), !dbg !285
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %5, metadata !286, metadata !95), !dbg !287
  %6 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !288
  %7 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %6, i32 0, i32 19, !dbg !289
  store %struct.z_stream_s* %7, %struct.z_stream_s** %5, align 8, !dbg !287
  %8 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !290
  %9 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %8, i32 0, i32 5, !dbg !291
  %10 = load i32, i32* %9, align 4, !dbg !291
  %11 = zext i32 %10 to i64, !dbg !290
  %12 = call noalias i8* @malloc(i64 %11) #5, !dbg !292
  %13 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !293
  %14 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %13, i32 0, i32 6, !dbg !294
  store i8* %12, i8** %14, align 8, !dbg !295
  %15 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !296
  %16 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %15, i32 0, i32 6, !dbg !298
  %17 = load i8*, i8** %16, align 8, !dbg !298
  %18 = icmp eq i8* %17, null, !dbg !299
  br i1 %18, label %19, label %21, !dbg !300

; <label>:19:                                     ; preds = %1
  %20 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !301
  call void @gz_error(%struct.gz_state* %20, i32 -4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)), !dbg !303
  store i32 -1, i32* %2, align 4, !dbg !304
  br label %97, !dbg !304

; <label>:21:                                     ; preds = %1
  %22 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !305
  %23 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %22, i32 0, i32 8, !dbg !307
  %24 = load i32, i32* %23, align 8, !dbg !307
  %25 = icmp ne i32 %24, 0, !dbg !305
  br i1 %25, label %69, label %26, !dbg !308

; <label>:26:                                     ; preds = %21
  %27 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !309
  %28 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %27, i32 0, i32 5, !dbg !311
  %29 = load i32, i32* %28, align 4, !dbg !311
  %30 = zext i32 %29 to i64, !dbg !309
  %31 = call noalias i8* @malloc(i64 %30) #5, !dbg !312
  %32 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !313
  %33 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %32, i32 0, i32 7, !dbg !314
  store i8* %31, i8** %33, align 8, !dbg !315
  %34 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !316
  %35 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %34, i32 0, i32 7, !dbg !318
  %36 = load i8*, i8** %35, align 8, !dbg !318
  %37 = icmp eq i8* %36, null, !dbg !319
  br i1 %37, label %38, label %43, !dbg !320

; <label>:38:                                     ; preds = %26
  %39 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !321
  %40 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %39, i32 0, i32 6, !dbg !323
  %41 = load i8*, i8** %40, align 8, !dbg !323
  call void @free(i8* %41) #5, !dbg !324
  %42 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !325
  call void @gz_error(%struct.gz_state* %42, i32 -4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)), !dbg !326
  store i32 -1, i32* %2, align 4, !dbg !327
  br label %97, !dbg !327

; <label>:43:                                     ; preds = %26
  %44 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !328
  %45 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %44, i32 0, i32 8, !dbg !329
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %45, align 8, !dbg !330
  %46 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !331
  %47 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %46, i32 0, i32 9, !dbg !332
  store void (i8*, i8*)* null, void (i8*, i8*)** %47, align 8, !dbg !333
  %48 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !334
  %49 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %48, i32 0, i32 10, !dbg !335
  store i8* null, i8** %49, align 8, !dbg !336
  %50 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !337
  %51 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !338
  %52 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %51, i32 0, i32 13, !dbg !339
  %53 = load i32, i32* %52, align 8, !dbg !339
  %54 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !340
  %55 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %54, i32 0, i32 14, !dbg !341
  %56 = load i32, i32* %55, align 4, !dbg !341
  %57 = call i32 @deflateInit2_(%struct.z_stream_s* %50, i32 %53, i32 8, i32 31, i32 8, i32 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 112), !dbg !342
  store i32 %57, i32* %4, align 4, !dbg !343
  %58 = load i32, i32* %4, align 4, !dbg !344
  %59 = icmp ne i32 %58, 0, !dbg !346
  br i1 %59, label %60, label %68, !dbg !347

; <label>:60:                                     ; preds = %43
  %61 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !348
  %62 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %61, i32 0, i32 7, !dbg !350
  %63 = load i8*, i8** %62, align 8, !dbg !350
  call void @free(i8* %63) #5, !dbg !351
  %64 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !352
  %65 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %64, i32 0, i32 6, !dbg !353
  %66 = load i8*, i8** %65, align 8, !dbg !353
  call void @free(i8* %66) #5, !dbg !354
  %67 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !355
  call void @gz_error(%struct.gz_state* %67, i32 -4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)), !dbg !356
  store i32 -1, i32* %2, align 4, !dbg !357
  br label %97, !dbg !357

; <label>:68:                                     ; preds = %43
  br label %69, !dbg !358

; <label>:69:                                     ; preds = %68, %21
  %70 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !359
  %71 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %70, i32 0, i32 5, !dbg !360
  %72 = load i32, i32* %71, align 4, !dbg !360
  %73 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !361
  %74 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %73, i32 0, i32 4, !dbg !362
  store i32 %72, i32* %74, align 8, !dbg !363
  %75 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !364
  %76 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %75, i32 0, i32 8, !dbg !366
  %77 = load i32, i32* %76, align 8, !dbg !366
  %78 = icmp ne i32 %77, 0, !dbg !364
  br i1 %78, label %96, label %79, !dbg !367

; <label>:79:                                     ; preds = %69
  %80 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !368
  %81 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %80, i32 0, i32 4, !dbg !370
  %82 = load i32, i32* %81, align 8, !dbg !370
  %83 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !371
  %84 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %83, i32 0, i32 4, !dbg !372
  store i32 %82, i32* %84, align 8, !dbg !373
  %85 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !374
  %86 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %85, i32 0, i32 7, !dbg !375
  %87 = load i8*, i8** %86, align 8, !dbg !375
  %88 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !376
  %89 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %88, i32 0, i32 3, !dbg !377
  store i8* %87, i8** %89, align 8, !dbg !378
  %90 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !379
  %91 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %90, i32 0, i32 3, !dbg !380
  %92 = load i8*, i8** %91, align 8, !dbg !380
  %93 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !381
  %94 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %93, i32 0, i32 0, !dbg !382
  %95 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %94, i32 0, i32 1, !dbg !383
  store i8* %92, i8** %95, align 8, !dbg !384
  br label %96, !dbg !385

; <label>:96:                                     ; preds = %79, %69
  store i32 0, i32* %2, align 4, !dbg !386
  br label %97, !dbg !386

; <label>:97:                                     ; preds = %96, %60, %38, %19
  %98 = load i32, i32* %2, align 4, !dbg !387
  ret i32 %98, !dbg !387
}

; Function Attrs: nounwind uwtable
define internal i32 @gz_zero(%struct.gz_state*, i64) #0 !dbg !388 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gz_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_stream_s*, align 8
  store %struct.gz_state* %0, %struct.gz_state** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gz_state** %4, metadata !391, metadata !95), !dbg !392
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !393, metadata !95), !dbg !394
  call void @llvm.dbg.declare(metadata i32* %6, metadata !395, metadata !95), !dbg !396
  call void @llvm.dbg.declare(metadata i32* %7, metadata !397, metadata !95), !dbg !398
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %8, metadata !399, metadata !95), !dbg !400
  %9 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !401
  %10 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %9, i32 0, i32 19, !dbg !402
  store %struct.z_stream_s* %10, %struct.z_stream_s** %8, align 8, !dbg !400
  %11 = load %struct.z_stream_s*, %struct.z_stream_s** %8, align 8, !dbg !403
  %12 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %11, i32 0, i32 1, !dbg !405
  %13 = load i32, i32* %12, align 8, !dbg !405
  %14 = icmp ne i32 %13, 0, !dbg !403
  br i1 %14, label %15, label %20, !dbg !406

; <label>:15:                                     ; preds = %2
  %16 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !407
  %17 = call i32 @gz_comp(%struct.gz_state* %16, i32 0), !dbg !409
  %18 = icmp eq i32 %17, -1, !dbg !410
  br i1 %18, label %19, label %20, !dbg !411

; <label>:19:                                     ; preds = %15
  store i32 -1, i32* %3, align 4, !dbg !412
  br label %74, !dbg !412

; <label>:20:                                     ; preds = %15, %2
  store i32 1, i32* %6, align 4, !dbg !413
  br label %21, !dbg !414

; <label>:21:                                     ; preds = %68, %20
  %22 = load i64, i64* %5, align 8, !dbg !415
  %23 = icmp ne i64 %22, 0, !dbg !417
  br i1 %23, label %24, label %73, !dbg !417

; <label>:24:                                     ; preds = %21
  %25 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !418
  %26 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %25, i32 0, i32 4, !dbg !420
  %27 = load i32, i32* %26, align 8, !dbg !420
  %28 = zext i32 %27 to i64, !dbg !421
  %29 = load i64, i64* %5, align 8, !dbg !422
  %30 = icmp sgt i64 %28, %29, !dbg !423
  br i1 %30, label %31, label %34, !dbg !424

; <label>:31:                                     ; preds = %24
  %32 = load i64, i64* %5, align 8, !dbg !425
  %33 = trunc i64 %32 to i32, !dbg !426
  br label %38, !dbg !427

; <label>:34:                                     ; preds = %24
  %35 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !429
  %36 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %35, i32 0, i32 4, !dbg !430
  %37 = load i32, i32* %36, align 8, !dbg !430
  br label %38, !dbg !431

; <label>:38:                                     ; preds = %34, %31
  %39 = phi i32 [ %33, %31 ], [ %37, %34 ], !dbg !433
  store i32 %39, i32* %7, align 4, !dbg !435
  %40 = load i32, i32* %6, align 4, !dbg !436
  %41 = icmp ne i32 %40, 0, !dbg !436
  br i1 %41, label %42, label %48, !dbg !438

; <label>:42:                                     ; preds = %38
  %43 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !439
  %44 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %43, i32 0, i32 6, !dbg !441
  %45 = load i8*, i8** %44, align 8, !dbg !441
  %46 = load i32, i32* %7, align 4, !dbg !442
  %47 = zext i32 %46 to i64, !dbg !442
  call void @llvm.memset.p0i8.i64(i8* %45, i8 0, i64 %47, i32 1, i1 false), !dbg !443
  store i32 0, i32* %6, align 4, !dbg !444
  br label %48, !dbg !445

; <label>:48:                                     ; preds = %42, %38
  %49 = load i32, i32* %7, align 4, !dbg !446
  %50 = load %struct.z_stream_s*, %struct.z_stream_s** %8, align 8, !dbg !447
  %51 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %50, i32 0, i32 1, !dbg !448
  store i32 %49, i32* %51, align 8, !dbg !449
  %52 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !450
  %53 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %52, i32 0, i32 6, !dbg !451
  %54 = load i8*, i8** %53, align 8, !dbg !451
  %55 = load %struct.z_stream_s*, %struct.z_stream_s** %8, align 8, !dbg !452
  %56 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %55, i32 0, i32 0, !dbg !453
  store i8* %54, i8** %56, align 8, !dbg !454
  %57 = load i32, i32* %7, align 4, !dbg !455
  %58 = zext i32 %57 to i64, !dbg !455
  %59 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !456
  %60 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %59, i32 0, i32 0, !dbg !457
  %61 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %60, i32 0, i32 2, !dbg !458
  %62 = load i64, i64* %61, align 8, !dbg !459
  %63 = add nsw i64 %62, %58, !dbg !459
  store i64 %63, i64* %61, align 8, !dbg !459
  %64 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !460
  %65 = call i32 @gz_comp(%struct.gz_state* %64, i32 0), !dbg !462
  %66 = icmp eq i32 %65, -1, !dbg !463
  br i1 %66, label %67, label %68, !dbg !464

; <label>:67:                                     ; preds = %48
  store i32 -1, i32* %3, align 4, !dbg !465
  br label %74, !dbg !465

; <label>:68:                                     ; preds = %48
  %69 = load i32, i32* %7, align 4, !dbg !466
  %70 = zext i32 %69 to i64, !dbg !466
  %71 = load i64, i64* %5, align 8, !dbg !467
  %72 = sub nsw i64 %71, %70, !dbg !467
  store i64 %72, i64* %5, align 8, !dbg !467
  br label %21, !dbg !468, !llvm.loop !470

; <label>:73:                                     ; preds = %21
  store i32 0, i32* %3, align 4, !dbg !471
  br label %74, !dbg !471

; <label>:74:                                     ; preds = %73, %67, %19
  %75 = load i32, i32* %3, align 4, !dbg !472
  ret i32 %75, !dbg !472
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i32 @gz_comp(%struct.gz_state*, i32) #0 !dbg !473 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gz_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.z_stream_s*, align 8
  store %struct.gz_state* %0, %struct.gz_state** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gz_state** %4, metadata !476, metadata !95), !dbg !477
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !478, metadata !95), !dbg !479
  call void @llvm.dbg.declare(metadata i32* %6, metadata !480, metadata !95), !dbg !481
  call void @llvm.dbg.declare(metadata i32* %7, metadata !482, metadata !95), !dbg !483
  call void @llvm.dbg.declare(metadata i32* %8, metadata !484, metadata !95), !dbg !485
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %9, metadata !486, metadata !95), !dbg !487
  %10 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !488
  %11 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %10, i32 0, i32 19, !dbg !489
  store %struct.z_stream_s* %11, %struct.z_stream_s** %9, align 8, !dbg !487
  %12 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !490
  %13 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %12, i32 0, i32 4, !dbg !492
  %14 = load i32, i32* %13, align 8, !dbg !492
  %15 = icmp eq i32 %14, 0, !dbg !493
  br i1 %15, label %16, label %21, !dbg !494

; <label>:16:                                     ; preds = %2
  %17 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !495
  %18 = call i32 @gz_init(%struct.gz_state* %17), !dbg !497
  %19 = icmp eq i32 %18, -1, !dbg !498
  br i1 %19, label %20, label %21, !dbg !499

; <label>:20:                                     ; preds = %16
  store i32 -1, i32* %3, align 4, !dbg !500
  br label %146, !dbg !500

; <label>:21:                                     ; preds = %16, %2
  %22 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !501
  %23 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %22, i32 0, i32 8, !dbg !503
  %24 = load i32, i32* %23, align 8, !dbg !503
  %25 = icmp ne i32 %24, 0, !dbg !501
  br i1 %25, label %26, label %50, !dbg !504

; <label>:26:                                     ; preds = %21
  %27 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !505
  %28 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %27, i32 0, i32 2, !dbg !507
  %29 = load i32, i32* %28, align 4, !dbg !507
  %30 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !508
  %31 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %30, i32 0, i32 0, !dbg !509
  %32 = load i8*, i8** %31, align 8, !dbg !509
  %33 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !510
  %34 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %33, i32 0, i32 1, !dbg !511
  %35 = load i32, i32* %34, align 8, !dbg !511
  %36 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 %29, i8* %32, i32 %35), !dbg !512
  store i32 %36, i32* %7, align 4, !dbg !513
  %37 = load i32, i32* %7, align 4, !dbg !514
  %38 = icmp slt i32 %37, 0, !dbg !516
  br i1 %38, label %45, label %39, !dbg !517

; <label>:39:                                     ; preds = %26
  %40 = load i32, i32* %7, align 4, !dbg !518
  %41 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !520
  %42 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %41, i32 0, i32 1, !dbg !521
  %43 = load i32, i32* %42, align 8, !dbg !521
  %44 = icmp ne i32 %40, %43, !dbg !522
  br i1 %44, label %45, label %47, !dbg !523

; <label>:45:                                     ; preds = %39, %26
  %46 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !524
  call void @gz_error(%struct.gz_state* %46, i32 -1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0)), !dbg !526
  store i32 -1, i32* %3, align 4, !dbg !527
  br label %146, !dbg !527

; <label>:47:                                     ; preds = %39
  %48 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !528
  %49 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %48, i32 0, i32 1, !dbg !529
  store i32 0, i32* %49, align 8, !dbg !530
  store i32 0, i32* %3, align 4, !dbg !531
  br label %146, !dbg !531

; <label>:50:                                     ; preds = %21
  store i32 0, i32* %6, align 4, !dbg !532
  br label %51, !dbg !533, !llvm.loop !534

; <label>:51:                                     ; preds = %136, %50
  %52 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !535
  %53 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %52, i32 0, i32 4, !dbg !538
  %54 = load i32, i32* %53, align 8, !dbg !538
  %55 = icmp eq i32 %54, 0, !dbg !539
  br i1 %55, label %65, label %56, !dbg !540

; <label>:56:                                     ; preds = %51
  %57 = load i32, i32* %5, align 4, !dbg !541
  %58 = icmp ne i32 %57, 0, !dbg !543
  br i1 %58, label %59, label %119, !dbg !544

; <label>:59:                                     ; preds = %56
  %60 = load i32, i32* %5, align 4, !dbg !545
  %61 = icmp ne i32 %60, 4, !dbg !546
  br i1 %61, label %65, label %62, !dbg !547

; <label>:62:                                     ; preds = %59
  %63 = load i32, i32* %6, align 4, !dbg !548
  %64 = icmp eq i32 %63, 1, !dbg !549
  br i1 %64, label %65, label %119, !dbg !550

; <label>:65:                                     ; preds = %62, %59, %51
  %66 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !552
  %67 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %66, i32 0, i32 3, !dbg !554
  %68 = load i8*, i8** %67, align 8, !dbg !554
  %69 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !555
  %70 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %69, i32 0, i32 0, !dbg !556
  %71 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %70, i32 0, i32 1, !dbg !557
  %72 = load i8*, i8** %71, align 8, !dbg !557
  %73 = ptrtoint i8* %68 to i64, !dbg !558
  %74 = ptrtoint i8* %72 to i64, !dbg !558
  %75 = sub i64 %73, %74, !dbg !558
  %76 = trunc i64 %75 to i32, !dbg !559
  store i32 %76, i32* %8, align 4, !dbg !560
  %77 = load i32, i32* %8, align 4, !dbg !561
  %78 = icmp ne i32 %77, 0, !dbg !561
  br i1 %78, label %79, label %96, !dbg !563

; <label>:79:                                     ; preds = %65
  %80 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !564
  %81 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %80, i32 0, i32 2, !dbg !566
  %82 = load i32, i32* %81, align 4, !dbg !566
  %83 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !567
  %84 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %83, i32 0, i32 0, !dbg !568
  %85 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %84, i32 0, i32 1, !dbg !569
  %86 = load i8*, i8** %85, align 8, !dbg !569
  %87 = load i32, i32* %8, align 4, !dbg !570
  %88 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 %82, i8* %86, i32 %87), !dbg !571
  store i32 %88, i32* %7, align 4, !dbg !572
  %89 = icmp slt i32 %88, 0, !dbg !573
  br i1 %89, label %94, label %90, !dbg !574

; <label>:90:                                     ; preds = %79
  %91 = load i32, i32* %7, align 4, !dbg !575
  %92 = load i32, i32* %8, align 4, !dbg !576
  %93 = icmp ne i32 %91, %92, !dbg !577
  br i1 %93, label %94, label %96, !dbg !578

; <label>:94:                                     ; preds = %90, %79
  %95 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !580
  call void @gz_error(%struct.gz_state* %95, i32 -1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0)), !dbg !582
  store i32 -1, i32* %3, align 4, !dbg !583
  br label %146, !dbg !583

; <label>:96:                                     ; preds = %90, %65
  %97 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !584
  %98 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %97, i32 0, i32 4, !dbg !586
  %99 = load i32, i32* %98, align 8, !dbg !586
  %100 = icmp eq i32 %99, 0, !dbg !587
  br i1 %100, label %101, label %112, !dbg !588

; <label>:101:                                    ; preds = %96
  %102 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !589
  %103 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %102, i32 0, i32 4, !dbg !591
  %104 = load i32, i32* %103, align 8, !dbg !591
  %105 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !592
  %106 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %105, i32 0, i32 4, !dbg !593
  store i32 %104, i32* %106, align 8, !dbg !594
  %107 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !595
  %108 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %107, i32 0, i32 7, !dbg !596
  %109 = load i8*, i8** %108, align 8, !dbg !596
  %110 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !597
  %111 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %110, i32 0, i32 3, !dbg !598
  store i8* %109, i8** %111, align 8, !dbg !599
  br label %112, !dbg !600

; <label>:112:                                    ; preds = %101, %96
  %113 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !601
  %114 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %113, i32 0, i32 3, !dbg !602
  %115 = load i8*, i8** %114, align 8, !dbg !602
  %116 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !603
  %117 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %116, i32 0, i32 0, !dbg !604
  %118 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %117, i32 0, i32 1, !dbg !605
  store i8* %115, i8** %118, align 8, !dbg !606
  br label %119, !dbg !607

; <label>:119:                                    ; preds = %112, %62, %56
  %120 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !608
  %121 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %120, i32 0, i32 4, !dbg !609
  %122 = load i32, i32* %121, align 8, !dbg !609
  store i32 %122, i32* %8, align 4, !dbg !610
  %123 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !611
  %124 = load i32, i32* %5, align 4, !dbg !612
  %125 = call i32 @deflate(%struct.z_stream_s* %123, i32 %124), !dbg !613
  store i32 %125, i32* %6, align 4, !dbg !614
  %126 = load i32, i32* %6, align 4, !dbg !615
  %127 = icmp eq i32 %126, -2, !dbg !617
  br i1 %127, label %128, label %130, !dbg !618

; <label>:128:                                    ; preds = %119
  %129 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !619
  call void @gz_error(%struct.gz_state* %129, i32 -2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0)), !dbg !621
  store i32 -1, i32* %3, align 4, !dbg !622
  br label %146, !dbg !622

; <label>:130:                                    ; preds = %119
  %131 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !623
  %132 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %131, i32 0, i32 4, !dbg !624
  %133 = load i32, i32* %132, align 8, !dbg !624
  %134 = load i32, i32* %8, align 4, !dbg !625
  %135 = sub i32 %134, %133, !dbg !625
  store i32 %135, i32* %8, align 4, !dbg !625
  br label %136, !dbg !626

; <label>:136:                                    ; preds = %130
  %137 = load i32, i32* %8, align 4, !dbg !627
  %138 = icmp ne i32 %137, 0, !dbg !629
  br i1 %138, label %51, label %139, !dbg !629, !llvm.loop !534

; <label>:139:                                    ; preds = %136
  %140 = load i32, i32* %5, align 4, !dbg !630
  %141 = icmp eq i32 %140, 4, !dbg !632
  br i1 %141, label %142, label %145, !dbg !633

; <label>:142:                                    ; preds = %139
  %143 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !634
  %144 = call i32 @deflateReset(%struct.z_stream_s* %143), !dbg !635
  br label %145, !dbg !635

; <label>:145:                                    ; preds = %142, %139
  store i32 0, i32* %3, align 4, !dbg !636
  br label %146, !dbg !636

; <label>:146:                                    ; preds = %145, %128, %94, %47, %45, %20
  %147 = load i32, i32* %3, align 4, !dbg !637
  ret i32 %147, !dbg !637
}

; Function Attrs: nounwind uwtable
define i32 @gzputc(%struct.gzFile_s*, i32) #0 !dbg !638 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gzFile_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca %struct.gz_state*, align 8
  %8 = alloca %struct.z_stream_s*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %4, metadata !641, metadata !95), !dbg !642
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !643, metadata !95), !dbg !644
  call void @llvm.dbg.declare(metadata [1 x i8]* %6, metadata !645, metadata !95), !dbg !649
  call void @llvm.dbg.declare(metadata %struct.gz_state** %7, metadata !650, metadata !95), !dbg !651
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %8, metadata !652, metadata !95), !dbg !653
  %9 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8, !dbg !654
  %10 = icmp eq %struct.gzFile_s* %9, null, !dbg !656
  br i1 %10, label %11, label %12, !dbg !657

; <label>:11:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !658
  br label %93, !dbg !658

; <label>:12:                                     ; preds = %2
  %13 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8, !dbg !659
  %14 = bitcast %struct.gzFile_s* %13 to %struct.gz_state*, !dbg !660
  store %struct.gz_state* %14, %struct.gz_state** %7, align 8, !dbg !661
  %15 = load %struct.gz_state*, %struct.gz_state** %7, align 8, !dbg !662
  %16 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %15, i32 0, i32 19, !dbg !663
  store %struct.z_stream_s* %16, %struct.z_stream_s** %8, align 8, !dbg !664
  %17 = load %struct.gz_state*, %struct.gz_state** %7, align 8, !dbg !665
  %18 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %17, i32 0, i32 1, !dbg !667
  %19 = load i32, i32* %18, align 8, !dbg !667
  %20 = icmp ne i32 %19, 31153, !dbg !668
  br i1 %20, label %26, label %21, !dbg !669

; <label>:21:                                     ; preds = %12
  %22 = load %struct.gz_state*, %struct.gz_state** %7, align 8, !dbg !670
  %23 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %22, i32 0, i32 17, !dbg !672
  %24 = load i32, i32* %23, align 4, !dbg !672
  %25 = icmp ne i32 %24, 0, !dbg !673
  br i1 %25, label %26, label %27, !dbg !674

; <label>:26:                                     ; preds = %21, %12
  store i32 -1, i32* %3, align 4, !dbg !675
  br label %93, !dbg !675

; <label>:27:                                     ; preds = %21
  %28 = load %struct.gz_state*, %struct.gz_state** %7, align 8, !dbg !676
  %29 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %28, i32 0, i32 16, !dbg !678
  %30 = load i32, i32* %29, align 8, !dbg !678
  %31 = icmp ne i32 %30, 0, !dbg !676
  br i1 %31, label %32, label %43, !dbg !679

; <label>:32:                                     ; preds = %27
  %33 = load %struct.gz_state*, %struct.gz_state** %7, align 8, !dbg !680
  %34 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %33, i32 0, i32 16, !dbg !682
  store i32 0, i32* %34, align 8, !dbg !683
  %35 = load %struct.gz_state*, %struct.gz_state** %7, align 8, !dbg !684
  %36 = load %struct.gz_state*, %struct.gz_state** %7, align 8, !dbg !686
  %37 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %36, i32 0, i32 15, !dbg !687
  %38 = load i64, i64* %37, align 8, !dbg !687
  %39 = call i32 @gz_zero(%struct.gz_state* %35, i64 %38), !dbg !688
  %40 = icmp eq i32 %39, -1, !dbg !689
  br i1 %40, label %41, label %42, !dbg !690

; <label>:41:                                     ; preds = %32
  store i32 -1, i32* %3, align 4, !dbg !691
  br label %93, !dbg !691

; <label>:42:                                     ; preds = %32
  br label %43, !dbg !692

; <label>:43:                                     ; preds = %42, %27
  %44 = load %struct.z_stream_s*, %struct.z_stream_s** %8, align 8, !dbg !693
  %45 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %44, i32 0, i32 1, !dbg !695
  %46 = load i32, i32* %45, align 8, !dbg !695
  %47 = load %struct.gz_state*, %struct.gz_state** %7, align 8, !dbg !696
  %48 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %47, i32 0, i32 4, !dbg !697
  %49 = load i32, i32* %48, align 8, !dbg !697
  %50 = icmp ult i32 %46, %49, !dbg !698
  br i1 %50, label %51, label %81, !dbg !699

; <label>:51:                                     ; preds = %43
  %52 = load %struct.z_stream_s*, %struct.z_stream_s** %8, align 8, !dbg !700
  %53 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %52, i32 0, i32 1, !dbg !703
  %54 = load i32, i32* %53, align 8, !dbg !703
  %55 = icmp eq i32 %54, 0, !dbg !704
  br i1 %55, label %56, label %62, !dbg !705

; <label>:56:                                     ; preds = %51
  %57 = load %struct.gz_state*, %struct.gz_state** %7, align 8, !dbg !706
  %58 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %57, i32 0, i32 6, !dbg !707
  %59 = load i8*, i8** %58, align 8, !dbg !707
  %60 = load %struct.z_stream_s*, %struct.z_stream_s** %8, align 8, !dbg !708
  %61 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %60, i32 0, i32 0, !dbg !709
  store i8* %59, i8** %61, align 8, !dbg !710
  br label %62, !dbg !708

; <label>:62:                                     ; preds = %56, %51
  %63 = load i32, i32* %5, align 4, !dbg !711
  %64 = trunc i32 %63 to i8, !dbg !711
  %65 = load %struct.z_stream_s*, %struct.z_stream_s** %8, align 8, !dbg !712
  %66 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %65, i32 0, i32 1, !dbg !713
  %67 = load i32, i32* %66, align 8, !dbg !714
  %68 = add i32 %67, 1, !dbg !714
  store i32 %68, i32* %66, align 8, !dbg !714
  %69 = zext i32 %67 to i64, !dbg !715
  %70 = load %struct.z_stream_s*, %struct.z_stream_s** %8, align 8, !dbg !715
  %71 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %70, i32 0, i32 0, !dbg !716
  %72 = load i8*, i8** %71, align 8, !dbg !716
  %73 = getelementptr inbounds i8, i8* %72, i64 %69, !dbg !715
  store i8 %64, i8* %73, align 1, !dbg !717
  %74 = load %struct.gz_state*, %struct.gz_state** %7, align 8, !dbg !718
  %75 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %74, i32 0, i32 0, !dbg !719
  %76 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %75, i32 0, i32 2, !dbg !720
  %77 = load i64, i64* %76, align 8, !dbg !721
  %78 = add nsw i64 %77, 1, !dbg !721
  store i64 %78, i64* %76, align 8, !dbg !721
  %79 = load i32, i32* %5, align 4, !dbg !722
  %80 = and i32 %79, 255, !dbg !723
  store i32 %80, i32* %3, align 4, !dbg !724
  br label %93, !dbg !724

; <label>:81:                                     ; preds = %43
  %82 = load i32, i32* %5, align 4, !dbg !725
  %83 = trunc i32 %82 to i8, !dbg !725
  %84 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0, !dbg !726
  store i8 %83, i8* %84, align 1, !dbg !727
  %85 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8, !dbg !728
  %86 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i32 0, i32 0, !dbg !730
  %87 = call i32 @gzwrite(%struct.gzFile_s* %85, i8* %86, i32 1), !dbg !731
  %88 = icmp ne i32 %87, 1, !dbg !732
  br i1 %88, label %89, label %90, !dbg !733

; <label>:89:                                     ; preds = %81
  store i32 -1, i32* %3, align 4, !dbg !734
  br label %93, !dbg !734

; <label>:90:                                     ; preds = %81
  %91 = load i32, i32* %5, align 4, !dbg !735
  %92 = and i32 %91, 255, !dbg !736
  store i32 %92, i32* %3, align 4, !dbg !737
  br label %93, !dbg !737

; <label>:93:                                     ; preds = %90, %89, %62, %41, %26, %11
  %94 = load i32, i32* %3, align 4, !dbg !738
  ret i32 %94, !dbg !738
}

; Function Attrs: nounwind uwtable
define i32 @gzputs(%struct.gzFile_s*, i8*) #0 !dbg !739 {
  %3 = alloca %struct.gzFile_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gzFile_s* %0, %struct.gzFile_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %3, metadata !744, metadata !95), !dbg !745
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !746, metadata !95), !dbg !747
  call void @llvm.dbg.declare(metadata i32* %5, metadata !748, metadata !95), !dbg !749
  call void @llvm.dbg.declare(metadata i32* %6, metadata !750, metadata !95), !dbg !751
  %7 = load i8*, i8** %4, align 8, !dbg !752
  %8 = call i64 @strlen(i8* %7) #7, !dbg !753
  %9 = trunc i64 %8 to i32, !dbg !754
  store i32 %9, i32* %6, align 4, !dbg !755
  %10 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !756
  %11 = load i8*, i8** %4, align 8, !dbg !757
  %12 = load i32, i32* %6, align 4, !dbg !758
  %13 = call i32 @gzwrite(%struct.gzFile_s* %10, i8* %11, i32 %12), !dbg !759
  store i32 %13, i32* %5, align 4, !dbg !760
  %14 = load i32, i32* %5, align 4, !dbg !761
  %15 = icmp eq i32 %14, 0, !dbg !762
  br i1 %15, label %16, label %20, !dbg !763

; <label>:16:                                     ; preds = %2
  %17 = load i32, i32* %6, align 4, !dbg !764
  %18 = icmp ne i32 %17, 0, !dbg !766
  br i1 %18, label %19, label %20, !dbg !767

; <label>:19:                                     ; preds = %16
  br label %22, !dbg !768

; <label>:20:                                     ; preds = %16, %2
  %21 = load i32, i32* %5, align 4, !dbg !770
  br label %22, !dbg !772

; <label>:22:                                     ; preds = %20, %19
  %23 = phi i32 [ -1, %19 ], [ %21, %20 ], !dbg !773
  ret i32 %23, !dbg !775
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @gzprintf(%struct.gzFile_s*, i8*, ...) #0 !dbg !776 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gzFile_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gz_state*, align 8
  %9 = alloca %struct.z_stream_s*, align 8
  %10 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.gzFile_s* %0, %struct.gzFile_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %4, metadata !779, metadata !95), !dbg !780
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !781, metadata !95), !dbg !782
  call void @llvm.dbg.declare(metadata i32* %6, metadata !783, metadata !95), !dbg !784
  call void @llvm.dbg.declare(metadata i32* %7, metadata !785, metadata !95), !dbg !786
  call void @llvm.dbg.declare(metadata %struct.gz_state** %8, metadata !787, metadata !95), !dbg !788
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %9, metadata !789, metadata !95), !dbg !790
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %10, metadata !791, metadata !95), !dbg !804
  %11 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8, !dbg !805
  %12 = icmp eq %struct.gzFile_s* %11, null, !dbg !807
  br i1 %12, label %13, label %14, !dbg !808

; <label>:13:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !809
  br label %123, !dbg !809

; <label>:14:                                     ; preds = %2
  %15 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8, !dbg !810
  %16 = bitcast %struct.gzFile_s* %15 to %struct.gz_state*, !dbg !811
  store %struct.gz_state* %16, %struct.gz_state** %8, align 8, !dbg !812
  %17 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !813
  %18 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %17, i32 0, i32 19, !dbg !814
  store %struct.z_stream_s* %18, %struct.z_stream_s** %9, align 8, !dbg !815
  %19 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !816
  %20 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %19, i32 0, i32 1, !dbg !818
  %21 = load i32, i32* %20, align 8, !dbg !818
  %22 = icmp ne i32 %21, 31153, !dbg !819
  br i1 %22, label %28, label %23, !dbg !820

; <label>:23:                                     ; preds = %14
  %24 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !821
  %25 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %24, i32 0, i32 17, !dbg !823
  %26 = load i32, i32* %25, align 4, !dbg !823
  %27 = icmp ne i32 %26, 0, !dbg !824
  br i1 %27, label %28, label %29, !dbg !825

; <label>:28:                                     ; preds = %23, %14
  store i32 0, i32* %3, align 4, !dbg !826
  br label %123, !dbg !826

; <label>:29:                                     ; preds = %23
  %30 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !827
  %31 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %30, i32 0, i32 4, !dbg !829
  %32 = load i32, i32* %31, align 8, !dbg !829
  %33 = icmp eq i32 %32, 0, !dbg !830
  br i1 %33, label %34, label %39, !dbg !831

; <label>:34:                                     ; preds = %29
  %35 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !832
  %36 = call i32 @gz_init(%struct.gz_state* %35), !dbg !834
  %37 = icmp eq i32 %36, -1, !dbg !835
  br i1 %37, label %38, label %39, !dbg !836

; <label>:38:                                     ; preds = %34
  store i32 0, i32* %3, align 4, !dbg !837
  br label %123, !dbg !837

; <label>:39:                                     ; preds = %34, %29
  %40 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !838
  %41 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %40, i32 0, i32 16, !dbg !840
  %42 = load i32, i32* %41, align 8, !dbg !840
  %43 = icmp ne i32 %42, 0, !dbg !838
  br i1 %43, label %44, label %55, !dbg !841

; <label>:44:                                     ; preds = %39
  %45 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !842
  %46 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %45, i32 0, i32 16, !dbg !844
  store i32 0, i32* %46, align 8, !dbg !845
  %47 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !846
  %48 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !848
  %49 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %48, i32 0, i32 15, !dbg !849
  %50 = load i64, i64* %49, align 8, !dbg !849
  %51 = call i32 @gz_zero(%struct.gz_state* %47, i64 %50), !dbg !850
  %52 = icmp eq i32 %51, -1, !dbg !851
  br i1 %52, label %53, label %54, !dbg !852

; <label>:53:                                     ; preds = %44
  store i32 0, i32* %3, align 4, !dbg !853
  br label %123, !dbg !853

; <label>:54:                                     ; preds = %44
  br label %55, !dbg !854

; <label>:55:                                     ; preds = %54, %39
  %56 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !855
  %57 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %56, i32 0, i32 1, !dbg !857
  %58 = load i32, i32* %57, align 8, !dbg !857
  %59 = icmp ne i32 %58, 0, !dbg !855
  br i1 %59, label %60, label %65, !dbg !858

; <label>:60:                                     ; preds = %55
  %61 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !859
  %62 = call i32 @gz_comp(%struct.gz_state* %61, i32 0), !dbg !861
  %63 = icmp eq i32 %62, -1, !dbg !862
  br i1 %63, label %64, label %65, !dbg !863

; <label>:64:                                     ; preds = %60
  store i32 0, i32* %3, align 4, !dbg !864
  br label %123, !dbg !864

; <label>:65:                                     ; preds = %60, %55
  %66 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !865
  %67 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %66, i32 0, i32 4, !dbg !866
  %68 = load i32, i32* %67, align 8, !dbg !866
  store i32 %68, i32* %6, align 4, !dbg !867
  %69 = load i32, i32* %6, align 4, !dbg !868
  %70 = sub nsw i32 %69, 1, !dbg !869
  %71 = sext i32 %70 to i64, !dbg !870
  %72 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !870
  %73 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %72, i32 0, i32 6, !dbg !871
  %74 = load i8*, i8** %73, align 8, !dbg !871
  %75 = getelementptr inbounds i8, i8* %74, i64 %71, !dbg !870
  store i8 0, i8* %75, align 1, !dbg !872
  %76 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i32 0, i32 0, !dbg !873
  %77 = bitcast %struct.__va_list_tag* %76 to i8*, !dbg !873
  call void @llvm.va_start(i8* %77), !dbg !873
  %78 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !874
  %79 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %78, i32 0, i32 6, !dbg !875
  %80 = load i8*, i8** %79, align 8, !dbg !875
  %81 = load i32, i32* %6, align 4, !dbg !876
  %82 = sext i32 %81 to i64, !dbg !876
  %83 = load i8*, i8** %5, align 8, !dbg !877
  %84 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i32 0, i32 0, !dbg !878
  %85 = call i32 @vsnprintf(i8* %80, i64 %82, i8* %83, %struct.__va_list_tag* %84) #5, !dbg !879
  store i32 %85, i32* %7, align 4, !dbg !880
  %86 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i32 0, i32 0, !dbg !881
  %87 = bitcast %struct.__va_list_tag* %86 to i8*, !dbg !881
  call void @llvm.va_end(i8* %87), !dbg !881
  %88 = load i32, i32* %7, align 4, !dbg !882
  %89 = icmp sle i32 %88, 0, !dbg !884
  br i1 %89, label %105, label %90, !dbg !885

; <label>:90:                                     ; preds = %65
  %91 = load i32, i32* %7, align 4, !dbg !886
  %92 = load i32, i32* %6, align 4, !dbg !888
  %93 = icmp sge i32 %91, %92, !dbg !889
  br i1 %93, label %105, label %94, !dbg !890

; <label>:94:                                     ; preds = %90
  %95 = load i32, i32* %6, align 4, !dbg !891
  %96 = sub nsw i32 %95, 1, !dbg !893
  %97 = sext i32 %96 to i64, !dbg !894
  %98 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !894
  %99 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %98, i32 0, i32 6, !dbg !895
  %100 = load i8*, i8** %99, align 8, !dbg !895
  %101 = getelementptr inbounds i8, i8* %100, i64 %97, !dbg !894
  %102 = load i8, i8* %101, align 1, !dbg !894
  %103 = zext i8 %102 to i32, !dbg !894
  %104 = icmp ne i32 %103, 0, !dbg !896
  br i1 %104, label %105, label %106, !dbg !897

; <label>:105:                                    ; preds = %94, %90, %65
  store i32 0, i32* %3, align 4, !dbg !898
  br label %123, !dbg !898

; <label>:106:                                    ; preds = %94
  %107 = load i32, i32* %7, align 4, !dbg !899
  %108 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !900
  %109 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %108, i32 0, i32 1, !dbg !901
  store i32 %107, i32* %109, align 8, !dbg !902
  %110 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !903
  %111 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %110, i32 0, i32 6, !dbg !904
  %112 = load i8*, i8** %111, align 8, !dbg !904
  %113 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !905
  %114 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %113, i32 0, i32 0, !dbg !906
  store i8* %112, i8** %114, align 8, !dbg !907
  %115 = load i32, i32* %7, align 4, !dbg !908
  %116 = sext i32 %115 to i64, !dbg !908
  %117 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !909
  %118 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %117, i32 0, i32 0, !dbg !910
  %119 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %118, i32 0, i32 2, !dbg !911
  %120 = load i64, i64* %119, align 8, !dbg !912
  %121 = add nsw i64 %120, %116, !dbg !912
  store i64 %121, i64* %119, align 8, !dbg !912
  %122 = load i32, i32* %7, align 4, !dbg !913
  store i32 %122, i32* %3, align 4, !dbg !914
  br label %123, !dbg !914

; <label>:123:                                    ; preds = %106, %105, %64, %53, %38, %28, %13
  %124 = load i32, i32* %3, align 4, !dbg !915
  ret i32 %124, !dbg !915
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #6

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind uwtable
define i32 @gzflush(%struct.gzFile_s*, i32) #0 !dbg !916 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gzFile_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %4, metadata !917, metadata !95), !dbg !918
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !919, metadata !95), !dbg !920
  call void @llvm.dbg.declare(metadata %struct.gz_state** %6, metadata !921, metadata !95), !dbg !922
  %7 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8, !dbg !923
  %8 = icmp eq %struct.gzFile_s* %7, null, !dbg !925
  br i1 %8, label %9, label %10, !dbg !926

; <label>:9:                                      ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !927
  br label %53, !dbg !927

; <label>:10:                                     ; preds = %2
  %11 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8, !dbg !928
  %12 = bitcast %struct.gzFile_s* %11 to %struct.gz_state*, !dbg !929
  store %struct.gz_state* %12, %struct.gz_state** %6, align 8, !dbg !930
  %13 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !931
  %14 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %13, i32 0, i32 1, !dbg !933
  %15 = load i32, i32* %14, align 8, !dbg !933
  %16 = icmp ne i32 %15, 31153, !dbg !934
  br i1 %16, label %22, label %17, !dbg !935

; <label>:17:                                     ; preds = %10
  %18 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !936
  %19 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %18, i32 0, i32 17, !dbg !938
  %20 = load i32, i32* %19, align 4, !dbg !938
  %21 = icmp ne i32 %20, 0, !dbg !939
  br i1 %21, label %22, label %23, !dbg !940

; <label>:22:                                     ; preds = %17, %10
  store i32 -2, i32* %3, align 4, !dbg !941
  br label %53, !dbg !941

; <label>:23:                                     ; preds = %17
  %24 = load i32, i32* %5, align 4, !dbg !942
  %25 = icmp slt i32 %24, 0, !dbg !944
  br i1 %25, label %29, label %26, !dbg !945

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %5, align 4, !dbg !946
  %28 = icmp sgt i32 %27, 4, !dbg !948
  br i1 %28, label %29, label %30, !dbg !949

; <label>:29:                                     ; preds = %26, %23
  store i32 -2, i32* %3, align 4, !dbg !950
  br label %53, !dbg !950

; <label>:30:                                     ; preds = %26
  %31 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !951
  %32 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %31, i32 0, i32 16, !dbg !953
  %33 = load i32, i32* %32, align 8, !dbg !953
  %34 = icmp ne i32 %33, 0, !dbg !951
  br i1 %34, label %35, label %46, !dbg !954

; <label>:35:                                     ; preds = %30
  %36 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !955
  %37 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %36, i32 0, i32 16, !dbg !957
  store i32 0, i32* %37, align 8, !dbg !958
  %38 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !959
  %39 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !961
  %40 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %39, i32 0, i32 15, !dbg !962
  %41 = load i64, i64* %40, align 8, !dbg !962
  %42 = call i32 @gz_zero(%struct.gz_state* %38, i64 %41), !dbg !963
  %43 = icmp eq i32 %42, -1, !dbg !964
  br i1 %43, label %44, label %45, !dbg !965

; <label>:44:                                     ; preds = %35
  store i32 -1, i32* %3, align 4, !dbg !966
  br label %53, !dbg !966

; <label>:45:                                     ; preds = %35
  br label %46, !dbg !967

; <label>:46:                                     ; preds = %45, %30
  %47 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !968
  %48 = load i32, i32* %5, align 4, !dbg !969
  %49 = call i32 @gz_comp(%struct.gz_state* %47, i32 %48), !dbg !970
  %50 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !971
  %51 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %50, i32 0, i32 17, !dbg !972
  %52 = load i32, i32* %51, align 4, !dbg !972
  store i32 %52, i32* %3, align 4, !dbg !973
  br label %53, !dbg !973

; <label>:53:                                     ; preds = %46, %44, %29, %22, %9
  %54 = load i32, i32* %3, align 4, !dbg !974
  ret i32 %54, !dbg !974
}

; Function Attrs: nounwind uwtable
define i32 @gzsetparams(%struct.gzFile_s*, i32, i32) #0 !dbg !975 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gzFile_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gz_state*, align 8
  %9 = alloca %struct.z_stream_s*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %5, metadata !978, metadata !95), !dbg !979
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !980, metadata !95), !dbg !981
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !982, metadata !95), !dbg !983
  call void @llvm.dbg.declare(metadata %struct.gz_state** %8, metadata !984, metadata !95), !dbg !985
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %9, metadata !986, metadata !95), !dbg !987
  %10 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8, !dbg !988
  %11 = icmp eq %struct.gzFile_s* %10, null, !dbg !990
  br i1 %11, label %12, label %13, !dbg !991

; <label>:12:                                     ; preds = %3
  store i32 -2, i32* %4, align 4, !dbg !992
  br label %87, !dbg !992

; <label>:13:                                     ; preds = %3
  %14 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8, !dbg !993
  %15 = bitcast %struct.gzFile_s* %14 to %struct.gz_state*, !dbg !994
  store %struct.gz_state* %15, %struct.gz_state** %8, align 8, !dbg !995
  %16 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !996
  %17 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %16, i32 0, i32 19, !dbg !997
  store %struct.z_stream_s* %17, %struct.z_stream_s** %9, align 8, !dbg !998
  %18 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !999
  %19 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %18, i32 0, i32 1, !dbg !1001
  %20 = load i32, i32* %19, align 8, !dbg !1001
  %21 = icmp ne i32 %20, 31153, !dbg !1002
  br i1 %21, label %27, label %22, !dbg !1003

; <label>:22:                                     ; preds = %13
  %23 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !1004
  %24 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %23, i32 0, i32 17, !dbg !1006
  %25 = load i32, i32* %24, align 4, !dbg !1006
  %26 = icmp ne i32 %25, 0, !dbg !1007
  br i1 %26, label %27, label %28, !dbg !1008

; <label>:27:                                     ; preds = %22, %13
  store i32 -2, i32* %4, align 4, !dbg !1009
  br label %87, !dbg !1009

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* %6, align 4, !dbg !1010
  %30 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !1012
  %31 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %30, i32 0, i32 13, !dbg !1013
  %32 = load i32, i32* %31, align 8, !dbg !1013
  %33 = icmp eq i32 %29, %32, !dbg !1014
  br i1 %33, label %34, label %41, !dbg !1015

; <label>:34:                                     ; preds = %28
  %35 = load i32, i32* %7, align 4, !dbg !1016
  %36 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !1018
  %37 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %36, i32 0, i32 14, !dbg !1019
  %38 = load i32, i32* %37, align 4, !dbg !1019
  %39 = icmp eq i32 %35, %38, !dbg !1020
  br i1 %39, label %40, label %41, !dbg !1021

; <label>:40:                                     ; preds = %34
  store i32 0, i32* %4, align 4, !dbg !1022
  br label %87, !dbg !1022

; <label>:41:                                     ; preds = %34, %28
  %42 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !1023
  %43 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %42, i32 0, i32 16, !dbg !1025
  %44 = load i32, i32* %43, align 8, !dbg !1025
  %45 = icmp ne i32 %44, 0, !dbg !1023
  br i1 %45, label %46, label %57, !dbg !1026

; <label>:46:                                     ; preds = %41
  %47 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !1027
  %48 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %47, i32 0, i32 16, !dbg !1029
  store i32 0, i32* %48, align 8, !dbg !1030
  %49 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !1031
  %50 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !1033
  %51 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %50, i32 0, i32 15, !dbg !1034
  %52 = load i64, i64* %51, align 8, !dbg !1034
  %53 = call i32 @gz_zero(%struct.gz_state* %49, i64 %52), !dbg !1035
  %54 = icmp eq i32 %53, -1, !dbg !1036
  br i1 %54, label %55, label %56, !dbg !1037

; <label>:55:                                     ; preds = %46
  store i32 -1, i32* %4, align 4, !dbg !1038
  br label %87, !dbg !1038

; <label>:56:                                     ; preds = %46
  br label %57, !dbg !1039

; <label>:57:                                     ; preds = %56, %41
  %58 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !1040
  %59 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %58, i32 0, i32 4, !dbg !1042
  %60 = load i32, i32* %59, align 8, !dbg !1042
  %61 = icmp ne i32 %60, 0, !dbg !1040
  br i1 %61, label %62, label %80, !dbg !1043

; <label>:62:                                     ; preds = %57
  %63 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !1044
  %64 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %63, i32 0, i32 1, !dbg !1047
  %65 = load i32, i32* %64, align 8, !dbg !1047
  %66 = icmp ne i32 %65, 0, !dbg !1044
  br i1 %66, label %67, label %75, !dbg !1048

; <label>:67:                                     ; preds = %62
  %68 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !1049
  %69 = call i32 @gz_comp(%struct.gz_state* %68, i32 1), !dbg !1051
  %70 = icmp eq i32 %69, -1, !dbg !1052
  br i1 %70, label %71, label %75, !dbg !1053

; <label>:71:                                     ; preds = %67
  %72 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !1054
  %73 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %72, i32 0, i32 17, !dbg !1055
  %74 = load i32, i32* %73, align 4, !dbg !1055
  store i32 %74, i32* %4, align 4, !dbg !1056
  br label %87, !dbg !1056

; <label>:75:                                     ; preds = %67, %62
  %76 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !1057
  %77 = load i32, i32* %6, align 4, !dbg !1058
  %78 = load i32, i32* %7, align 4, !dbg !1059
  %79 = call i32 @deflateParams(%struct.z_stream_s* %76, i32 %77, i32 %78), !dbg !1060
  br label %80, !dbg !1061

; <label>:80:                                     ; preds = %75, %57
  %81 = load i32, i32* %6, align 4, !dbg !1062
  %82 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !1063
  %83 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %82, i32 0, i32 13, !dbg !1064
  store i32 %81, i32* %83, align 8, !dbg !1065
  %84 = load i32, i32* %7, align 4, !dbg !1066
  %85 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !1067
  %86 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %85, i32 0, i32 14, !dbg !1068
  store i32 %84, i32* %86, align 4, !dbg !1069
  store i32 0, i32* %4, align 4, !dbg !1070
  br label %87, !dbg !1070

; <label>:87:                                     ; preds = %80, %71, %55, %40, %27, %12
  %88 = load i32, i32* %4, align 4, !dbg !1071
  ret i32 %88, !dbg !1071
}

declare i32 @deflateParams(%struct.z_stream_s*, i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gzclose_w(%struct.gzFile_s*) #0 !dbg !1072 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gzFile_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %3, metadata !1075, metadata !95), !dbg !1076
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1077, metadata !95), !dbg !1078
  store i32 0, i32* %4, align 4, !dbg !1078
  call void @llvm.dbg.declare(metadata %struct.gz_state** %5, metadata !1079, metadata !95), !dbg !1080
  %6 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !1081
  %7 = icmp eq %struct.gzFile_s* %6, null, !dbg !1083
  br i1 %7, label %8, label %9, !dbg !1084

; <label>:8:                                      ; preds = %1
  store i32 -2, i32* %2, align 4, !dbg !1085
  br label %80, !dbg !1085

; <label>:9:                                      ; preds = %1
  %10 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !1086
  %11 = bitcast %struct.gzFile_s* %10 to %struct.gz_state*, !dbg !1087
  store %struct.gz_state* %11, %struct.gz_state** %5, align 8, !dbg !1088
  %12 = load %struct.gz_state*, %struct.gz_state** %5, align 8, !dbg !1089
  %13 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %12, i32 0, i32 1, !dbg !1091
  %14 = load i32, i32* %13, align 8, !dbg !1091
  %15 = icmp ne i32 %14, 31153, !dbg !1092
  br i1 %15, label %16, label %17, !dbg !1093

; <label>:16:                                     ; preds = %9
  store i32 -2, i32* %2, align 4, !dbg !1094
  br label %80, !dbg !1094

; <label>:17:                                     ; preds = %9
  %18 = load %struct.gz_state*, %struct.gz_state** %5, align 8, !dbg !1095
  %19 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %18, i32 0, i32 16, !dbg !1097
  %20 = load i32, i32* %19, align 8, !dbg !1097
  %21 = icmp ne i32 %20, 0, !dbg !1095
  br i1 %21, label %22, label %36, !dbg !1098

; <label>:22:                                     ; preds = %17
  %23 = load %struct.gz_state*, %struct.gz_state** %5, align 8, !dbg !1099
  %24 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %23, i32 0, i32 16, !dbg !1101
  store i32 0, i32* %24, align 8, !dbg !1102
  %25 = load %struct.gz_state*, %struct.gz_state** %5, align 8, !dbg !1103
  %26 = load %struct.gz_state*, %struct.gz_state** %5, align 8, !dbg !1105
  %27 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %26, i32 0, i32 15, !dbg !1106
  %28 = load i64, i64* %27, align 8, !dbg !1106
  %29 = call i32 @gz_zero(%struct.gz_state* %25, i64 %28), !dbg !1107
  %30 = icmp eq i32 %29, -1, !dbg !1108
  br i1 %30, label %31, label %35, !dbg !1109

; <label>:31:                                     ; preds = %22
  %32 = load %struct.gz_state*, %struct.gz_state** %5, align 8, !dbg !1110
  %33 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %32, i32 0, i32 17, !dbg !1111
  %34 = load i32, i32* %33, align 4, !dbg !1111
  store i32 %34, i32* %4, align 4, !dbg !1112
  br label %35, !dbg !1113

; <label>:35:                                     ; preds = %31, %22
  br label %36, !dbg !1114

; <label>:36:                                     ; preds = %35, %17
  %37 = load %struct.gz_state*, %struct.gz_state** %5, align 8, !dbg !1115
  %38 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %37, i32 0, i32 4, !dbg !1117
  %39 = load i32, i32* %38, align 8, !dbg !1117
  %40 = icmp ne i32 %39, 0, !dbg !1115
  br i1 %40, label %41, label %65, !dbg !1118

; <label>:41:                                     ; preds = %36
  %42 = load %struct.gz_state*, %struct.gz_state** %5, align 8, !dbg !1119
  %43 = call i32 @gz_comp(%struct.gz_state* %42, i32 4), !dbg !1122
  %44 = icmp eq i32 %43, -1, !dbg !1123
  br i1 %44, label %45, label %49, !dbg !1124

; <label>:45:                                     ; preds = %41
  %46 = load %struct.gz_state*, %struct.gz_state** %5, align 8, !dbg !1125
  %47 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %46, i32 0, i32 17, !dbg !1126
  %48 = load i32, i32* %47, align 4, !dbg !1126
  store i32 %48, i32* %4, align 4, !dbg !1127
  br label %49, !dbg !1128

; <label>:49:                                     ; preds = %45, %41
  %50 = load %struct.gz_state*, %struct.gz_state** %5, align 8, !dbg !1129
  %51 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %50, i32 0, i32 8, !dbg !1131
  %52 = load i32, i32* %51, align 8, !dbg !1131
  %53 = icmp ne i32 %52, 0, !dbg !1129
  br i1 %53, label %61, label %54, !dbg !1132

; <label>:54:                                     ; preds = %49
  %55 = load %struct.gz_state*, %struct.gz_state** %5, align 8, !dbg !1133
  %56 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %55, i32 0, i32 19, !dbg !1135
  %57 = call i32 @deflateEnd(%struct.z_stream_s* %56), !dbg !1136
  %58 = load %struct.gz_state*, %struct.gz_state** %5, align 8, !dbg !1137
  %59 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %58, i32 0, i32 7, !dbg !1138
  %60 = load i8*, i8** %59, align 8, !dbg !1138
  call void @free(i8* %60) #5, !dbg !1139
  br label %61, !dbg !1140

; <label>:61:                                     ; preds = %54, %49
  %62 = load %struct.gz_state*, %struct.gz_state** %5, align 8, !dbg !1141
  %63 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %62, i32 0, i32 6, !dbg !1142
  %64 = load i8*, i8** %63, align 8, !dbg !1142
  call void @free(i8* %64) #5, !dbg !1143
  br label %65, !dbg !1144

; <label>:65:                                     ; preds = %61, %36
  %66 = load %struct.gz_state*, %struct.gz_state** %5, align 8, !dbg !1145
  call void @gz_error(%struct.gz_state* %66, i32 0, i8* null), !dbg !1146
  %67 = load %struct.gz_state*, %struct.gz_state** %5, align 8, !dbg !1147
  %68 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %67, i32 0, i32 3, !dbg !1148
  %69 = load i8*, i8** %68, align 8, !dbg !1148
  call void @free(i8* %69) #5, !dbg !1149
  %70 = load %struct.gz_state*, %struct.gz_state** %5, align 8, !dbg !1150
  %71 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %70, i32 0, i32 2, !dbg !1152
  %72 = load i32, i32* %71, align 4, !dbg !1152
  %73 = call i32 (i32, ...) bitcast (i32 (...)* @close to i32 (i32, ...)*)(i32 %72), !dbg !1153
  %74 = icmp eq i32 %73, -1, !dbg !1154
  br i1 %74, label %75, label %76, !dbg !1155

; <label>:75:                                     ; preds = %65
  store i32 -1, i32* %4, align 4, !dbg !1156
  br label %76, !dbg !1157

; <label>:76:                                     ; preds = %75, %65
  %77 = load %struct.gz_state*, %struct.gz_state** %5, align 8, !dbg !1158
  %78 = bitcast %struct.gz_state* %77 to i8*, !dbg !1158
  call void @free(i8* %78) #5, !dbg !1159
  %79 = load i32, i32* %4, align 4, !dbg !1160
  store i32 %79, i32* %2, align 4, !dbg !1161
  br label %80, !dbg !1161

; <label>:80:                                     ; preds = %76, %16, %8
  %81 = load i32, i32* %2, align 4, !dbg !1162
  ret i32 %81, !dbg !1162
}

declare i32 @deflateEnd(%struct.z_stream_s*) #2

; Function Attrs: nounwind
declare void @free(i8*) #6

declare i32 @close(...) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #6

declare i32 @deflateInit2_(%struct.z_stream_s*, i32, i32, i32, i32, i32, i8*, i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

declare i32 @write(...) #2

declare i32 @deflate(%struct.z_stream_s*, i32) #2

declare i32 @deflateReset(%struct.z_stream_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!82, !83}
!llvm.ident = !{!84}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "[inter]third-party--zlib-1.2.7--gzwrite.o.i", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!2 = !{}
!3 = !{!4, !5, !23, !26, !81, !16, !21}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "gz_statep", file: !6, line: 177, baseType: !7)
!6 = !DIFile(filename: "gzguts.h", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "gz_state", file: !6, line: 176, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 145, size: 1856, align: 64, elements: !10)
!10 = !{!11, !22, !24, !25, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !9, file: !6, line: 147, baseType: !12, size: 192, align: 64)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gzFile_s", file: !13, line: 1670, size: 192, align: 64, elements: !14)
!13 = !DIFile(filename: "zlib.h", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!14 = !{!15, !17, !20}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "have", scope: !12, file: !13, line: 1671, baseType: !16, size: 32, align: 32)
!16 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !12, file: !13, line: 1672, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !12, file: !13, line: 1673, baseType: !21, size: 64, align: 64, offset: 128)
!21 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !9, file: !6, line: 152, baseType: !23, size: 32, align: 32, offset: 192)
!23 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !9, file: !6, line: 153, baseType: !23, size: 32, align: 32, offset: 224)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !9, file: !6, line: 154, baseType: !26, size: 64, align: 64, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !9, file: !6, line: 155, baseType: !16, size: 32, align: 32, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !9, file: !6, line: 156, baseType: !16, size: 32, align: 32, offset: 352)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !9, file: !6, line: 157, baseType: !18, size: 64, align: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !9, file: !6, line: 158, baseType: !18, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "direct", scope: !9, file: !6, line: 159, baseType: !23, size: 32, align: 32, offset: 512)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "how", scope: !9, file: !6, line: 161, baseType: !23, size: 32, align: 32, offset: 544)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !9, file: !6, line: 162, baseType: !21, size: 64, align: 64, offset: 576)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !9, file: !6, line: 163, baseType: !23, size: 32, align: 32, offset: 640)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "past", scope: !9, file: !6, line: 164, baseType: !23, size: 32, align: 32, offset: 672)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !9, file: !6, line: 166, baseType: !23, size: 32, align: 32, offset: 704)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "strategy", scope: !9, file: !6, line: 167, baseType: !23, size: 32, align: 32, offset: 736)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !9, file: !6, line: 169, baseType: !21, size: 64, align: 64, offset: 768)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !9, file: !6, line: 170, baseType: !23, size: 32, align: 32, offset: 832)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !9, file: !6, line: 172, baseType: !23, size: 32, align: 32, offset: 864)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !9, file: !6, line: 173, baseType: !26, size: 64, align: 64, offset: 896)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "strm", scope: !9, file: !6, line: 175, baseType: !44, size: 896, align: 64, offset: 960)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !13, line: 104, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !13, line: 85, size: 896, align: 64, elements: !46)
!46 = !{!47, !52, !54, !57, !58, !59, !60, !61, !66, !72, !77, !78, !79, !80}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !45, file: !13, line: 86, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bytef", file: !50, line: 374, baseType: !51)
!50 = !DIFile(filename: "zconf.h", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !50, line: 365, baseType: !19)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !45, file: !13, line: 87, baseType: !53, size: 32, align: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uInt", file: !50, line: 367, baseType: !16)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !45, file: !13, line: 88, baseType: !55, size: 64, align: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !50, line: 368, baseType: !56)
!56 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !45, file: !13, line: 90, baseType: !48, size: 64, align: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !45, file: !13, line: 91, baseType: !53, size: 32, align: 32, offset: 256)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !45, file: !13, line: 92, baseType: !55, size: 64, align: 64, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !45, file: !13, line: 94, baseType: !26, size: 64, align: 64, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !45, file: !13, line: 95, baseType: !62, size: 64, align: 64, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !13, line: 1742, size: 32, align: 32, elements: !64)
!64 = !{!65}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !63, file: !13, line: 1742, baseType: !23, size: 32, align: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "zalloc", scope: !45, file: !13, line: 97, baseType: !67, size: 64, align: 64, offset: 512)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_func", file: !13, line: 80, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!71, !71, !53, !53}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidpf", file: !50, line: 383, baseType: !4)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "zfree", scope: !45, file: !13, line: 98, baseType: !73, size: 64, align: 64, offset: 576)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "free_func", file: !13, line: 81, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !71, !71}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !45, file: !13, line: 99, baseType: !71, size: 64, align: 64, offset: 640)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !45, file: !13, line: 101, baseType: !23, size: 32, align: 32, offset: 704)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !45, file: !13, line: 102, baseType: !55, size: 64, align: 64, offset: 768)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !45, file: !13, line: 103, baseType: !55, size: 64, align: 64, offset: 832)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidp", file: !50, line: 384, baseType: !4)
!82 = !{i32 2, !"Dwarf Version", i32 4}
!83 = !{i32 2, !"Debug Info Version", i32 3}
!84 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!85 = distinct !DISubprogram(name: "gzwrite", scope: !86, file: !86, line: 165, type: !87, isLocal: false, isDefinition: true, scopeLine: 169, isOptimized: false, unit: !0, variables: !2)
!86 = !DIFile(filename: "gzwrite.c", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!87 = !DISubroutineType(types: !88)
!88 = !{!23, !89, !91, !16}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "gzFile", file: !13, line: 1207, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidpc", file: !50, line: 382, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!94 = !DILocalVariable(name: "file", arg: 1, scope: !85, file: !86, line: 166, type: !89)
!95 = !DIExpression()
!96 = !DILocation(line: 166, column: 12, scope: !85)
!97 = !DILocalVariable(name: "buf", arg: 2, scope: !85, file: !86, line: 167, type: !91)
!98 = !DILocation(line: 167, column: 12, scope: !85)
!99 = !DILocalVariable(name: "len", arg: 3, scope: !85, file: !86, line: 168, type: !16)
!100 = !DILocation(line: 168, column: 14, scope: !85)
!101 = !DILocalVariable(name: "put", scope: !85, file: !86, line: 170, type: !16)
!102 = !DILocation(line: 170, column: 14, scope: !85)
!103 = !DILocation(line: 170, column: 20, scope: !85)
!104 = !DILocalVariable(name: "n", scope: !85, file: !86, line: 171, type: !16)
!105 = !DILocation(line: 171, column: 14, scope: !85)
!106 = !DILocalVariable(name: "state", scope: !85, file: !86, line: 172, type: !5)
!107 = !DILocation(line: 172, column: 15, scope: !85)
!108 = !DILocalVariable(name: "strm", scope: !85, file: !86, line: 173, type: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_streamp", file: !13, line: 106, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!111 = !DILocation(line: 173, column: 15, scope: !85)
!112 = !DILocation(line: 176, column: 9, scope: !113)
!113 = distinct !DILexicalBlock(scope: !85, file: !86, line: 176, column: 9)
!114 = !DILocation(line: 176, column: 14, scope: !113)
!115 = !DILocation(line: 176, column: 9, scope: !85)
!116 = !DILocation(line: 177, column: 9, scope: !113)
!117 = !DILocation(line: 178, column: 24, scope: !85)
!118 = !DILocation(line: 178, column: 13, scope: !85)
!119 = !DILocation(line: 178, column: 11, scope: !85)
!120 = !DILocation(line: 179, column: 14, scope: !85)
!121 = !DILocation(line: 179, column: 21, scope: !85)
!122 = !DILocation(line: 179, column: 10, scope: !85)
!123 = !DILocation(line: 182, column: 9, scope: !124)
!124 = distinct !DILexicalBlock(scope: !85, file: !86, line: 182, column: 9)
!125 = !DILocation(line: 182, column: 16, scope: !124)
!126 = !DILocation(line: 182, column: 21, scope: !124)
!127 = !DILocation(line: 182, column: 30, scope: !124)
!128 = !DILocation(line: 182, column: 33, scope: !129)
!129 = !DILexicalBlockFile(scope: !124, file: !86, discriminator: 1)
!130 = !DILocation(line: 182, column: 40, scope: !129)
!131 = !DILocation(line: 182, column: 44, scope: !129)
!132 = !DILocation(line: 182, column: 9, scope: !129)
!133 = !DILocation(line: 183, column: 9, scope: !124)
!134 = !DILocation(line: 187, column: 14, scope: !135)
!135 = distinct !DILexicalBlock(scope: !85, file: !86, line: 187, column: 9)
!136 = !DILocation(line: 187, column: 18, scope: !135)
!137 = !DILocation(line: 187, column: 9, scope: !85)
!138 = !DILocation(line: 188, column: 18, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !86, line: 187, column: 23)
!140 = !DILocation(line: 188, column: 9, scope: !139)
!141 = !DILocation(line: 189, column: 9, scope: !139)
!142 = !DILocation(line: 193, column: 9, scope: !143)
!143 = distinct !DILexicalBlock(scope: !85, file: !86, line: 193, column: 9)
!144 = !DILocation(line: 193, column: 13, scope: !143)
!145 = !DILocation(line: 193, column: 9, scope: !85)
!146 = !DILocation(line: 194, column: 9, scope: !143)
!147 = !DILocation(line: 197, column: 9, scope: !148)
!148 = distinct !DILexicalBlock(scope: !85, file: !86, line: 197, column: 9)
!149 = !DILocation(line: 197, column: 16, scope: !148)
!150 = !DILocation(line: 197, column: 21, scope: !148)
!151 = !DILocation(line: 197, column: 26, scope: !148)
!152 = !DILocation(line: 197, column: 37, scope: !153)
!153 = !DILexicalBlockFile(scope: !148, file: !86, discriminator: 1)
!154 = !DILocation(line: 197, column: 29, scope: !153)
!155 = !DILocation(line: 197, column: 44, scope: !153)
!156 = !DILocation(line: 197, column: 9, scope: !153)
!157 = !DILocation(line: 198, column: 9, scope: !148)
!158 = !DILocation(line: 201, column: 9, scope: !159)
!159 = distinct !DILexicalBlock(scope: !85, file: !86, line: 201, column: 9)
!160 = !DILocation(line: 201, column: 16, scope: !159)
!161 = !DILocation(line: 201, column: 9, scope: !85)
!162 = !DILocation(line: 202, column: 9, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !86, line: 201, column: 22)
!164 = !DILocation(line: 202, column: 16, scope: !163)
!165 = !DILocation(line: 202, column: 21, scope: !163)
!166 = !DILocation(line: 203, column: 21, scope: !167)
!167 = distinct !DILexicalBlock(scope: !163, file: !86, line: 203, column: 13)
!168 = !DILocation(line: 203, column: 28, scope: !167)
!169 = !DILocation(line: 203, column: 35, scope: !167)
!170 = !DILocation(line: 203, column: 13, scope: !167)
!171 = !DILocation(line: 203, column: 41, scope: !167)
!172 = !DILocation(line: 203, column: 13, scope: !163)
!173 = !DILocation(line: 204, column: 13, scope: !167)
!174 = !DILocation(line: 205, column: 5, scope: !163)
!175 = !DILocation(line: 208, column: 9, scope: !176)
!176 = distinct !DILexicalBlock(scope: !85, file: !86, line: 208, column: 9)
!177 = !DILocation(line: 208, column: 15, scope: !176)
!178 = !DILocation(line: 208, column: 22, scope: !176)
!179 = !DILocation(line: 208, column: 13, scope: !176)
!180 = !DILocation(line: 208, column: 9, scope: !85)
!181 = !DILocation(line: 210, column: 9, scope: !182)
!182 = distinct !DILexicalBlock(scope: !176, file: !86, line: 208, column: 28)
!183 = distinct !{!183, !181}
!184 = !DILocation(line: 211, column: 17, scope: !185)
!185 = distinct !DILexicalBlock(scope: !186, file: !86, line: 211, column: 17)
!186 = distinct !DILexicalBlock(scope: !182, file: !86, line: 210, column: 12)
!187 = !DILocation(line: 211, column: 23, scope: !185)
!188 = !DILocation(line: 211, column: 32, scope: !185)
!189 = !DILocation(line: 211, column: 17, scope: !186)
!190 = !DILocation(line: 212, column: 33, scope: !185)
!191 = !DILocation(line: 212, column: 40, scope: !185)
!192 = !DILocation(line: 212, column: 17, scope: !185)
!193 = !DILocation(line: 212, column: 23, scope: !185)
!194 = !DILocation(line: 212, column: 31, scope: !185)
!195 = !DILocation(line: 213, column: 17, scope: !186)
!196 = !DILocation(line: 213, column: 24, scope: !186)
!197 = !DILocation(line: 213, column: 31, scope: !186)
!198 = !DILocation(line: 213, column: 37, scope: !186)
!199 = !DILocation(line: 213, column: 29, scope: !186)
!200 = !DILocation(line: 213, column: 15, scope: !186)
!201 = !DILocation(line: 214, column: 17, scope: !202)
!202 = distinct !DILexicalBlock(scope: !186, file: !86, line: 214, column: 17)
!203 = !DILocation(line: 214, column: 21, scope: !202)
!204 = !DILocation(line: 214, column: 19, scope: !202)
!205 = !DILocation(line: 214, column: 17, scope: !186)
!206 = !DILocation(line: 215, column: 21, scope: !202)
!207 = !DILocation(line: 215, column: 19, scope: !202)
!208 = !DILocation(line: 215, column: 17, scope: !202)
!209 = !DILocation(line: 216, column: 20, scope: !186)
!210 = !DILocation(line: 216, column: 26, scope: !186)
!211 = !DILocation(line: 216, column: 36, scope: !186)
!212 = !DILocation(line: 216, column: 42, scope: !186)
!213 = !DILocation(line: 216, column: 34, scope: !186)
!214 = !DILocation(line: 216, column: 52, scope: !186)
!215 = !DILocation(line: 216, column: 57, scope: !186)
!216 = !DILocation(line: 216, column: 13, scope: !186)
!217 = !DILocation(line: 217, column: 31, scope: !186)
!218 = !DILocation(line: 217, column: 13, scope: !186)
!219 = !DILocation(line: 217, column: 19, scope: !186)
!220 = !DILocation(line: 217, column: 28, scope: !186)
!221 = !DILocation(line: 218, column: 29, scope: !186)
!222 = !DILocation(line: 218, column: 13, scope: !186)
!223 = !DILocation(line: 218, column: 20, scope: !186)
!224 = !DILocation(line: 218, column: 22, scope: !186)
!225 = !DILocation(line: 218, column: 26, scope: !186)
!226 = !DILocation(line: 219, column: 27, scope: !186)
!227 = !DILocation(line: 219, column: 33, scope: !186)
!228 = !DILocation(line: 219, column: 31, scope: !186)
!229 = !DILocation(line: 219, column: 17, scope: !186)
!230 = !DILocation(line: 220, column: 20, scope: !186)
!231 = !DILocation(line: 220, column: 17, scope: !186)
!232 = !DILocation(line: 221, column: 17, scope: !233)
!233 = distinct !DILexicalBlock(scope: !186, file: !86, line: 221, column: 17)
!234 = !DILocation(line: 221, column: 21, scope: !233)
!235 = !DILocation(line: 221, column: 32, scope: !236)
!236 = !DILexicalBlockFile(scope: !233, file: !86, discriminator: 1)
!237 = !DILocation(line: 221, column: 24, scope: !236)
!238 = !DILocation(line: 221, column: 42, scope: !236)
!239 = !DILocation(line: 221, column: 17, scope: !236)
!240 = !DILocation(line: 222, column: 17, scope: !233)
!241 = !DILocation(line: 223, column: 9, scope: !186)
!242 = !DILocation(line: 223, column: 18, scope: !243)
!243 = !DILexicalBlockFile(scope: !182, file: !86, discriminator: 1)
!244 = !DILocation(line: 223, column: 9, scope: !243)
!245 = !DILocation(line: 224, column: 5, scope: !182)
!246 = !DILocation(line: 227, column: 13, scope: !247)
!247 = distinct !DILexicalBlock(scope: !248, file: !86, line: 227, column: 13)
!248 = distinct !DILexicalBlock(scope: !176, file: !86, line: 225, column: 10)
!249 = !DILocation(line: 227, column: 19, scope: !247)
!250 = !DILocation(line: 227, column: 28, scope: !247)
!251 = !DILocation(line: 227, column: 39, scope: !252)
!252 = !DILexicalBlockFile(scope: !247, file: !86, discriminator: 1)
!253 = !DILocation(line: 227, column: 31, scope: !252)
!254 = !DILocation(line: 227, column: 49, scope: !252)
!255 = !DILocation(line: 227, column: 13, scope: !252)
!256 = !DILocation(line: 228, column: 13, scope: !247)
!257 = !DILocation(line: 231, column: 26, scope: !248)
!258 = !DILocation(line: 231, column: 9, scope: !248)
!259 = !DILocation(line: 231, column: 15, scope: !248)
!260 = !DILocation(line: 231, column: 24, scope: !248)
!261 = !DILocation(line: 232, column: 32, scope: !248)
!262 = !DILocation(line: 232, column: 9, scope: !248)
!263 = !DILocation(line: 232, column: 15, scope: !248)
!264 = !DILocation(line: 232, column: 23, scope: !248)
!265 = !DILocation(line: 233, column: 25, scope: !248)
!266 = !DILocation(line: 233, column: 9, scope: !248)
!267 = !DILocation(line: 233, column: 16, scope: !248)
!268 = !DILocation(line: 233, column: 18, scope: !248)
!269 = !DILocation(line: 233, column: 22, scope: !248)
!270 = !DILocation(line: 234, column: 21, scope: !271)
!271 = distinct !DILexicalBlock(scope: !248, file: !86, line: 234, column: 13)
!272 = !DILocation(line: 234, column: 13, scope: !271)
!273 = !DILocation(line: 234, column: 31, scope: !271)
!274 = !DILocation(line: 234, column: 13, scope: !248)
!275 = !DILocation(line: 235, column: 13, scope: !271)
!276 = !DILocation(line: 239, column: 17, scope: !85)
!277 = !DILocation(line: 239, column: 5, scope: !85)
!278 = !DILocation(line: 240, column: 1, scope: !85)
!279 = distinct !DISubprogram(name: "gz_init", scope: !86, file: !86, line: 15, type: !280, isLocal: true, isDefinition: true, scopeLine: 17, isOptimized: false, unit: !0, variables: !2)
!280 = !DISubroutineType(types: !281)
!281 = !{!23, !5}
!282 = !DILocalVariable(name: "state", arg: 1, scope: !279, file: !86, line: 16, type: !5)
!283 = !DILocation(line: 16, column: 15, scope: !279)
!284 = !DILocalVariable(name: "ret", scope: !279, file: !86, line: 18, type: !23)
!285 = !DILocation(line: 18, column: 9, scope: !279)
!286 = !DILocalVariable(name: "strm", scope: !279, file: !86, line: 19, type: !109)
!287 = !DILocation(line: 19, column: 15, scope: !279)
!288 = !DILocation(line: 19, column: 24, scope: !279)
!289 = !DILocation(line: 19, column: 31, scope: !279)
!290 = !DILocation(line: 22, column: 24, scope: !279)
!291 = !DILocation(line: 22, column: 31, scope: !279)
!292 = !DILocation(line: 22, column: 17, scope: !279)
!293 = !DILocation(line: 22, column: 5, scope: !279)
!294 = !DILocation(line: 22, column: 12, scope: !279)
!295 = !DILocation(line: 22, column: 15, scope: !279)
!296 = !DILocation(line: 23, column: 9, scope: !297)
!297 = distinct !DILexicalBlock(scope: !279, file: !86, line: 23, column: 9)
!298 = !DILocation(line: 23, column: 16, scope: !297)
!299 = !DILocation(line: 23, column: 19, scope: !297)
!300 = !DILocation(line: 23, column: 9, scope: !279)
!301 = !DILocation(line: 24, column: 18, scope: !302)
!302 = distinct !DILexicalBlock(scope: !297, file: !86, line: 23, column: 27)
!303 = !DILocation(line: 24, column: 9, scope: !302)
!304 = !DILocation(line: 25, column: 9, scope: !302)
!305 = !DILocation(line: 29, column: 10, scope: !306)
!306 = distinct !DILexicalBlock(scope: !279, file: !86, line: 29, column: 9)
!307 = !DILocation(line: 29, column: 17, scope: !306)
!308 = !DILocation(line: 29, column: 9, scope: !279)
!309 = !DILocation(line: 31, column: 29, scope: !310)
!310 = distinct !DILexicalBlock(scope: !306, file: !86, line: 29, column: 25)
!311 = !DILocation(line: 31, column: 36, scope: !310)
!312 = !DILocation(line: 31, column: 22, scope: !310)
!313 = !DILocation(line: 31, column: 9, scope: !310)
!314 = !DILocation(line: 31, column: 16, scope: !310)
!315 = !DILocation(line: 31, column: 20, scope: !310)
!316 = !DILocation(line: 32, column: 13, scope: !317)
!317 = distinct !DILexicalBlock(scope: !310, file: !86, line: 32, column: 13)
!318 = !DILocation(line: 32, column: 20, scope: !317)
!319 = !DILocation(line: 32, column: 24, scope: !317)
!320 = !DILocation(line: 32, column: 13, scope: !310)
!321 = !DILocation(line: 33, column: 18, scope: !322)
!322 = distinct !DILexicalBlock(scope: !317, file: !86, line: 32, column: 32)
!323 = !DILocation(line: 33, column: 25, scope: !322)
!324 = !DILocation(line: 33, column: 13, scope: !322)
!325 = !DILocation(line: 34, column: 22, scope: !322)
!326 = !DILocation(line: 34, column: 13, scope: !322)
!327 = !DILocation(line: 35, column: 13, scope: !322)
!328 = !DILocation(line: 39, column: 9, scope: !310)
!329 = !DILocation(line: 39, column: 15, scope: !310)
!330 = !DILocation(line: 39, column: 22, scope: !310)
!331 = !DILocation(line: 40, column: 9, scope: !310)
!332 = !DILocation(line: 40, column: 15, scope: !310)
!333 = !DILocation(line: 40, column: 21, scope: !310)
!334 = !DILocation(line: 41, column: 9, scope: !310)
!335 = !DILocation(line: 41, column: 15, scope: !310)
!336 = !DILocation(line: 41, column: 22, scope: !310)
!337 = !DILocation(line: 42, column: 30, scope: !310)
!338 = !DILocation(line: 42, column: 37, scope: !310)
!339 = !DILocation(line: 42, column: 44, scope: !310)
!340 = !DILocation(line: 42, column: 71, scope: !310)
!341 = !DILocation(line: 42, column: 78, scope: !310)
!342 = !DILocation(line: 42, column: 15, scope: !310)
!343 = !DILocation(line: 42, column: 13, scope: !310)
!344 = !DILocation(line: 44, column: 13, scope: !345)
!345 = distinct !DILexicalBlock(scope: !310, file: !86, line: 44, column: 13)
!346 = !DILocation(line: 44, column: 17, scope: !345)
!347 = !DILocation(line: 44, column: 13, scope: !310)
!348 = !DILocation(line: 45, column: 18, scope: !349)
!349 = distinct !DILexicalBlock(scope: !345, file: !86, line: 44, column: 23)
!350 = !DILocation(line: 45, column: 25, scope: !349)
!351 = !DILocation(line: 45, column: 13, scope: !349)
!352 = !DILocation(line: 46, column: 18, scope: !349)
!353 = !DILocation(line: 46, column: 25, scope: !349)
!354 = !DILocation(line: 46, column: 13, scope: !349)
!355 = !DILocation(line: 47, column: 22, scope: !349)
!356 = !DILocation(line: 47, column: 13, scope: !349)
!357 = !DILocation(line: 48, column: 13, scope: !349)
!358 = !DILocation(line: 50, column: 5, scope: !310)
!359 = !DILocation(line: 53, column: 19, scope: !279)
!360 = !DILocation(line: 53, column: 26, scope: !279)
!361 = !DILocation(line: 53, column: 5, scope: !279)
!362 = !DILocation(line: 53, column: 12, scope: !279)
!363 = !DILocation(line: 53, column: 17, scope: !279)
!364 = !DILocation(line: 56, column: 10, scope: !365)
!365 = distinct !DILexicalBlock(scope: !279, file: !86, line: 56, column: 9)
!366 = !DILocation(line: 56, column: 17, scope: !365)
!367 = !DILocation(line: 56, column: 9, scope: !279)
!368 = !DILocation(line: 57, column: 27, scope: !369)
!369 = distinct !DILexicalBlock(scope: !365, file: !86, line: 56, column: 25)
!370 = !DILocation(line: 57, column: 34, scope: !369)
!371 = !DILocation(line: 57, column: 9, scope: !369)
!372 = !DILocation(line: 57, column: 15, scope: !369)
!373 = !DILocation(line: 57, column: 25, scope: !369)
!374 = !DILocation(line: 58, column: 26, scope: !369)
!375 = !DILocation(line: 58, column: 33, scope: !369)
!376 = !DILocation(line: 58, column: 9, scope: !369)
!377 = !DILocation(line: 58, column: 15, scope: !369)
!378 = !DILocation(line: 58, column: 24, scope: !369)
!379 = !DILocation(line: 59, column: 25, scope: !369)
!380 = !DILocation(line: 59, column: 31, scope: !369)
!381 = !DILocation(line: 59, column: 9, scope: !369)
!382 = !DILocation(line: 59, column: 16, scope: !369)
!383 = !DILocation(line: 59, column: 18, scope: !369)
!384 = !DILocation(line: 59, column: 23, scope: !369)
!385 = !DILocation(line: 60, column: 5, scope: !369)
!386 = !DILocation(line: 61, column: 5, scope: !279)
!387 = !DILocation(line: 62, column: 1, scope: !279)
!388 = distinct !DISubprogram(name: "gz_zero", scope: !86, file: !86, line: 133, type: !389, isLocal: true, isDefinition: true, scopeLine: 136, isOptimized: false, unit: !0, variables: !2)
!389 = !DISubroutineType(types: !390)
!390 = !{!23, !5, !21}
!391 = !DILocalVariable(name: "state", arg: 1, scope: !388, file: !86, line: 134, type: !5)
!392 = !DILocation(line: 134, column: 15, scope: !388)
!393 = !DILocalVariable(name: "len", arg: 2, scope: !388, file: !86, line: 135, type: !21)
!394 = !DILocation(line: 135, column: 10, scope: !388)
!395 = !DILocalVariable(name: "first", scope: !388, file: !86, line: 137, type: !23)
!396 = !DILocation(line: 137, column: 9, scope: !388)
!397 = !DILocalVariable(name: "n", scope: !388, file: !86, line: 138, type: !16)
!398 = !DILocation(line: 138, column: 14, scope: !388)
!399 = !DILocalVariable(name: "strm", scope: !388, file: !86, line: 139, type: !109)
!400 = !DILocation(line: 139, column: 15, scope: !388)
!401 = !DILocation(line: 139, column: 24, scope: !388)
!402 = !DILocation(line: 139, column: 31, scope: !388)
!403 = !DILocation(line: 142, column: 9, scope: !404)
!404 = distinct !DILexicalBlock(scope: !388, file: !86, line: 142, column: 9)
!405 = !DILocation(line: 142, column: 15, scope: !404)
!406 = !DILocation(line: 142, column: 24, scope: !404)
!407 = !DILocation(line: 142, column: 35, scope: !408)
!408 = !DILexicalBlockFile(scope: !404, file: !86, discriminator: 1)
!409 = !DILocation(line: 142, column: 27, scope: !408)
!410 = !DILocation(line: 142, column: 45, scope: !408)
!411 = !DILocation(line: 142, column: 9, scope: !408)
!412 = !DILocation(line: 143, column: 9, scope: !404)
!413 = !DILocation(line: 146, column: 11, scope: !388)
!414 = !DILocation(line: 147, column: 5, scope: !388)
!415 = !DILocation(line: 147, column: 12, scope: !416)
!416 = !DILexicalBlockFile(scope: !388, file: !86, discriminator: 1)
!417 = !DILocation(line: 147, column: 5, scope: !416)
!418 = !DILocation(line: 148, column: 82, scope: !419)
!419 = distinct !DILexicalBlock(scope: !388, file: !86, line: 147, column: 17)
!420 = !DILocation(line: 148, column: 89, scope: !419)
!421 = !DILocation(line: 148, column: 76, scope: !419)
!422 = !DILocation(line: 148, column: 96, scope: !419)
!423 = !DILocation(line: 148, column: 94, scope: !419)
!424 = !DILocation(line: 148, column: 13, scope: !419)
!425 = !DILocation(line: 149, column: 23, scope: !419)
!426 = !DILocation(line: 149, column: 13, scope: !419)
!427 = !DILocation(line: 148, column: 13, scope: !428)
!428 = !DILexicalBlockFile(scope: !419, file: !86, discriminator: 1)
!429 = !DILocation(line: 149, column: 29, scope: !428)
!430 = !DILocation(line: 149, column: 36, scope: !428)
!431 = !DILocation(line: 148, column: 13, scope: !432)
!432 = !DILexicalBlockFile(scope: !419, file: !86, discriminator: 2)
!433 = !DILocation(line: 148, column: 13, scope: !434)
!434 = !DILexicalBlockFile(scope: !419, file: !86, discriminator: 3)
!435 = !DILocation(line: 148, column: 11, scope: !434)
!436 = !DILocation(line: 150, column: 13, scope: !437)
!437 = distinct !DILexicalBlock(scope: !419, file: !86, line: 150, column: 13)
!438 = !DILocation(line: 150, column: 13, scope: !419)
!439 = !DILocation(line: 151, column: 20, scope: !440)
!440 = distinct !DILexicalBlock(scope: !437, file: !86, line: 150, column: 20)
!441 = !DILocation(line: 151, column: 27, scope: !440)
!442 = !DILocation(line: 151, column: 34, scope: !440)
!443 = !DILocation(line: 151, column: 13, scope: !440)
!444 = !DILocation(line: 152, column: 19, scope: !440)
!445 = !DILocation(line: 153, column: 9, scope: !440)
!446 = !DILocation(line: 154, column: 26, scope: !419)
!447 = !DILocation(line: 154, column: 9, scope: !419)
!448 = !DILocation(line: 154, column: 15, scope: !419)
!449 = !DILocation(line: 154, column: 24, scope: !419)
!450 = !DILocation(line: 155, column: 25, scope: !419)
!451 = !DILocation(line: 155, column: 32, scope: !419)
!452 = !DILocation(line: 155, column: 9, scope: !419)
!453 = !DILocation(line: 155, column: 15, scope: !419)
!454 = !DILocation(line: 155, column: 23, scope: !419)
!455 = !DILocation(line: 156, column: 25, scope: !419)
!456 = !DILocation(line: 156, column: 9, scope: !419)
!457 = !DILocation(line: 156, column: 16, scope: !419)
!458 = !DILocation(line: 156, column: 18, scope: !419)
!459 = !DILocation(line: 156, column: 22, scope: !419)
!460 = !DILocation(line: 157, column: 21, scope: !461)
!461 = distinct !DILexicalBlock(scope: !419, file: !86, line: 157, column: 13)
!462 = !DILocation(line: 157, column: 13, scope: !461)
!463 = !DILocation(line: 157, column: 31, scope: !461)
!464 = !DILocation(line: 157, column: 13, scope: !419)
!465 = !DILocation(line: 158, column: 13, scope: !461)
!466 = !DILocation(line: 159, column: 16, scope: !419)
!467 = !DILocation(line: 159, column: 13, scope: !419)
!468 = !DILocation(line: 147, column: 5, scope: !469)
!469 = !DILexicalBlockFile(scope: !388, file: !86, discriminator: 2)
!470 = distinct !{!470, !414}
!471 = !DILocation(line: 161, column: 5, scope: !388)
!472 = !DILocation(line: 162, column: 1, scope: !388)
!473 = distinct !DISubprogram(name: "gz_comp", scope: !86, file: !86, line: 70, type: !474, isLocal: true, isDefinition: true, scopeLine: 73, isOptimized: false, unit: !0, variables: !2)
!474 = !DISubroutineType(types: !475)
!475 = !{!23, !5, !23}
!476 = !DILocalVariable(name: "state", arg: 1, scope: !473, file: !86, line: 71, type: !5)
!477 = !DILocation(line: 71, column: 15, scope: !473)
!478 = !DILocalVariable(name: "flush", arg: 2, scope: !473, file: !86, line: 72, type: !23)
!479 = !DILocation(line: 72, column: 9, scope: !473)
!480 = !DILocalVariable(name: "ret", scope: !473, file: !86, line: 74, type: !23)
!481 = !DILocation(line: 74, column: 9, scope: !473)
!482 = !DILocalVariable(name: "got", scope: !473, file: !86, line: 74, type: !23)
!483 = !DILocation(line: 74, column: 14, scope: !473)
!484 = !DILocalVariable(name: "have", scope: !473, file: !86, line: 75, type: !16)
!485 = !DILocation(line: 75, column: 14, scope: !473)
!486 = !DILocalVariable(name: "strm", scope: !473, file: !86, line: 76, type: !109)
!487 = !DILocation(line: 76, column: 15, scope: !473)
!488 = !DILocation(line: 76, column: 24, scope: !473)
!489 = !DILocation(line: 76, column: 31, scope: !473)
!490 = !DILocation(line: 79, column: 9, scope: !491)
!491 = distinct !DILexicalBlock(scope: !473, file: !86, line: 79, column: 9)
!492 = !DILocation(line: 79, column: 16, scope: !491)
!493 = !DILocation(line: 79, column: 21, scope: !491)
!494 = !DILocation(line: 79, column: 26, scope: !491)
!495 = !DILocation(line: 79, column: 37, scope: !496)
!496 = !DILexicalBlockFile(scope: !491, file: !86, discriminator: 1)
!497 = !DILocation(line: 79, column: 29, scope: !496)
!498 = !DILocation(line: 79, column: 44, scope: !496)
!499 = !DILocation(line: 79, column: 9, scope: !496)
!500 = !DILocation(line: 80, column: 9, scope: !491)
!501 = !DILocation(line: 83, column: 9, scope: !502)
!502 = distinct !DILexicalBlock(scope: !473, file: !86, line: 83, column: 9)
!503 = !DILocation(line: 83, column: 16, scope: !502)
!504 = !DILocation(line: 83, column: 9, scope: !473)
!505 = !DILocation(line: 84, column: 21, scope: !506)
!506 = distinct !DILexicalBlock(scope: !502, file: !86, line: 83, column: 24)
!507 = !DILocation(line: 84, column: 28, scope: !506)
!508 = !DILocation(line: 84, column: 32, scope: !506)
!509 = !DILocation(line: 84, column: 38, scope: !506)
!510 = !DILocation(line: 84, column: 47, scope: !506)
!511 = !DILocation(line: 84, column: 53, scope: !506)
!512 = !DILocation(line: 84, column: 15, scope: !506)
!513 = !DILocation(line: 84, column: 13, scope: !506)
!514 = !DILocation(line: 85, column: 13, scope: !515)
!515 = distinct !DILexicalBlock(scope: !506, file: !86, line: 85, column: 13)
!516 = !DILocation(line: 85, column: 17, scope: !515)
!517 = !DILocation(line: 85, column: 21, scope: !515)
!518 = !DILocation(line: 85, column: 34, scope: !519)
!519 = !DILexicalBlockFile(scope: !515, file: !86, discriminator: 1)
!520 = !DILocation(line: 85, column: 41, scope: !519)
!521 = !DILocation(line: 85, column: 47, scope: !519)
!522 = !DILocation(line: 85, column: 38, scope: !519)
!523 = !DILocation(line: 85, column: 13, scope: !519)
!524 = !DILocation(line: 86, column: 22, scope: !525)
!525 = distinct !DILexicalBlock(scope: !515, file: !86, line: 85, column: 57)
!526 = !DILocation(line: 86, column: 13, scope: !525)
!527 = !DILocation(line: 87, column: 13, scope: !525)
!528 = !DILocation(line: 89, column: 9, scope: !506)
!529 = !DILocation(line: 89, column: 15, scope: !506)
!530 = !DILocation(line: 89, column: 24, scope: !506)
!531 = !DILocation(line: 90, column: 9, scope: !506)
!532 = !DILocation(line: 94, column: 9, scope: !473)
!533 = !DILocation(line: 95, column: 5, scope: !473)
!534 = distinct !{!534, !533}
!535 = !DILocation(line: 98, column: 13, scope: !536)
!536 = distinct !DILexicalBlock(scope: !537, file: !86, line: 98, column: 13)
!537 = distinct !DILexicalBlock(scope: !473, file: !86, line: 95, column: 8)
!538 = !DILocation(line: 98, column: 19, scope: !536)
!539 = !DILocation(line: 98, column: 29, scope: !536)
!540 = !DILocation(line: 98, column: 34, scope: !536)
!541 = !DILocation(line: 98, column: 38, scope: !542)
!542 = !DILexicalBlockFile(scope: !536, file: !86, discriminator: 1)
!543 = !DILocation(line: 98, column: 44, scope: !542)
!544 = !DILocation(line: 98, column: 49, scope: !542)
!545 = !DILocation(line: 99, column: 14, scope: !536)
!546 = !DILocation(line: 99, column: 20, scope: !536)
!547 = !DILocation(line: 99, column: 25, scope: !536)
!548 = !DILocation(line: 99, column: 28, scope: !542)
!549 = !DILocation(line: 99, column: 32, scope: !542)
!550 = !DILocation(line: 98, column: 13, scope: !551)
!551 = !DILexicalBlockFile(scope: !537, file: !86, discriminator: 2)
!552 = !DILocation(line: 100, column: 31, scope: !553)
!553 = distinct !DILexicalBlock(scope: !536, file: !86, line: 99, column: 40)
!554 = !DILocation(line: 100, column: 37, scope: !553)
!555 = !DILocation(line: 100, column: 48, scope: !553)
!556 = !DILocation(line: 100, column: 55, scope: !553)
!557 = !DILocation(line: 100, column: 57, scope: !553)
!558 = !DILocation(line: 100, column: 46, scope: !553)
!559 = !DILocation(line: 100, column: 20, scope: !553)
!560 = !DILocation(line: 100, column: 18, scope: !553)
!561 = !DILocation(line: 101, column: 17, scope: !562)
!562 = distinct !DILexicalBlock(scope: !553, file: !86, line: 101, column: 17)
!563 = !DILocation(line: 101, column: 22, scope: !562)
!564 = !DILocation(line: 101, column: 39, scope: !565)
!565 = !DILexicalBlockFile(scope: !562, file: !86, discriminator: 1)
!566 = !DILocation(line: 101, column: 46, scope: !565)
!567 = !DILocation(line: 101, column: 50, scope: !565)
!568 = !DILocation(line: 101, column: 57, scope: !565)
!569 = !DILocation(line: 101, column: 59, scope: !565)
!570 = !DILocation(line: 101, column: 65, scope: !565)
!571 = !DILocation(line: 101, column: 33, scope: !565)
!572 = !DILocation(line: 101, column: 31, scope: !565)
!573 = !DILocation(line: 101, column: 72, scope: !565)
!574 = !DILocation(line: 101, column: 76, scope: !565)
!575 = !DILocation(line: 102, column: 36, scope: !562)
!576 = !DILocation(line: 102, column: 43, scope: !562)
!577 = !DILocation(line: 102, column: 40, scope: !562)
!578 = !DILocation(line: 101, column: 17, scope: !579)
!579 = !DILexicalBlockFile(scope: !553, file: !86, discriminator: 2)
!580 = !DILocation(line: 103, column: 26, scope: !581)
!581 = distinct !DILexicalBlock(scope: !562, file: !86, line: 102, column: 50)
!582 = !DILocation(line: 103, column: 17, scope: !581)
!583 = !DILocation(line: 104, column: 17, scope: !581)
!584 = !DILocation(line: 106, column: 17, scope: !585)
!585 = distinct !DILexicalBlock(scope: !553, file: !86, line: 106, column: 17)
!586 = !DILocation(line: 106, column: 23, scope: !585)
!587 = !DILocation(line: 106, column: 33, scope: !585)
!588 = !DILocation(line: 106, column: 17, scope: !553)
!589 = !DILocation(line: 107, column: 35, scope: !590)
!590 = distinct !DILexicalBlock(scope: !585, file: !86, line: 106, column: 39)
!591 = !DILocation(line: 107, column: 42, scope: !590)
!592 = !DILocation(line: 107, column: 17, scope: !590)
!593 = !DILocation(line: 107, column: 23, scope: !590)
!594 = !DILocation(line: 107, column: 33, scope: !590)
!595 = !DILocation(line: 108, column: 34, scope: !590)
!596 = !DILocation(line: 108, column: 41, scope: !590)
!597 = !DILocation(line: 108, column: 17, scope: !590)
!598 = !DILocation(line: 108, column: 23, scope: !590)
!599 = !DILocation(line: 108, column: 32, scope: !590)
!600 = !DILocation(line: 109, column: 13, scope: !590)
!601 = !DILocation(line: 110, column: 29, scope: !553)
!602 = !DILocation(line: 110, column: 35, scope: !553)
!603 = !DILocation(line: 110, column: 13, scope: !553)
!604 = !DILocation(line: 110, column: 20, scope: !553)
!605 = !DILocation(line: 110, column: 22, scope: !553)
!606 = !DILocation(line: 110, column: 27, scope: !553)
!607 = !DILocation(line: 111, column: 9, scope: !553)
!608 = !DILocation(line: 114, column: 16, scope: !537)
!609 = !DILocation(line: 114, column: 22, scope: !537)
!610 = !DILocation(line: 114, column: 14, scope: !537)
!611 = !DILocation(line: 115, column: 23, scope: !537)
!612 = !DILocation(line: 115, column: 29, scope: !537)
!613 = !DILocation(line: 115, column: 15, scope: !537)
!614 = !DILocation(line: 115, column: 13, scope: !537)
!615 = !DILocation(line: 116, column: 13, scope: !616)
!616 = distinct !DILexicalBlock(scope: !537, file: !86, line: 116, column: 13)
!617 = !DILocation(line: 116, column: 17, scope: !616)
!618 = !DILocation(line: 116, column: 13, scope: !537)
!619 = !DILocation(line: 117, column: 22, scope: !620)
!620 = distinct !DILexicalBlock(scope: !616, file: !86, line: 116, column: 26)
!621 = !DILocation(line: 117, column: 13, scope: !620)
!622 = !DILocation(line: 119, column: 13, scope: !620)
!623 = !DILocation(line: 121, column: 17, scope: !537)
!624 = !DILocation(line: 121, column: 23, scope: !537)
!625 = !DILocation(line: 121, column: 14, scope: !537)
!626 = !DILocation(line: 122, column: 5, scope: !537)
!627 = !DILocation(line: 122, column: 14, scope: !628)
!628 = !DILexicalBlockFile(scope: !473, file: !86, discriminator: 1)
!629 = !DILocation(line: 122, column: 5, scope: !628)
!630 = !DILocation(line: 125, column: 9, scope: !631)
!631 = distinct !DILexicalBlock(scope: !473, file: !86, line: 125, column: 9)
!632 = !DILocation(line: 125, column: 15, scope: !631)
!633 = !DILocation(line: 125, column: 9, scope: !473)
!634 = !DILocation(line: 126, column: 22, scope: !631)
!635 = !DILocation(line: 126, column: 9, scope: !631)
!636 = !DILocation(line: 129, column: 5, scope: !473)
!637 = !DILocation(line: 130, column: 1, scope: !473)
!638 = distinct !DISubprogram(name: "gzputc", scope: !86, file: !86, line: 243, type: !639, isLocal: false, isDefinition: true, scopeLine: 246, isOptimized: false, unit: !0, variables: !2)
!639 = !DISubroutineType(types: !640)
!640 = !{!23, !89, !23}
!641 = !DILocalVariable(name: "file", arg: 1, scope: !638, file: !86, line: 244, type: !89)
!642 = !DILocation(line: 244, column: 12, scope: !638)
!643 = !DILocalVariable(name: "c", arg: 2, scope: !638, file: !86, line: 245, type: !23)
!644 = !DILocation(line: 245, column: 9, scope: !638)
!645 = !DILocalVariable(name: "buf", scope: !638, file: !86, line: 247, type: !646)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, align: 8, elements: !647)
!647 = !{!648}
!648 = !DISubrange(count: 1)
!649 = !DILocation(line: 247, column: 19, scope: !638)
!650 = !DILocalVariable(name: "state", scope: !638, file: !86, line: 248, type: !5)
!651 = !DILocation(line: 248, column: 15, scope: !638)
!652 = !DILocalVariable(name: "strm", scope: !638, file: !86, line: 249, type: !109)
!653 = !DILocation(line: 249, column: 15, scope: !638)
!654 = !DILocation(line: 252, column: 9, scope: !655)
!655 = distinct !DILexicalBlock(scope: !638, file: !86, line: 252, column: 9)
!656 = !DILocation(line: 252, column: 14, scope: !655)
!657 = !DILocation(line: 252, column: 9, scope: !638)
!658 = !DILocation(line: 253, column: 9, scope: !655)
!659 = !DILocation(line: 254, column: 24, scope: !638)
!660 = !DILocation(line: 254, column: 13, scope: !638)
!661 = !DILocation(line: 254, column: 11, scope: !638)
!662 = !DILocation(line: 255, column: 14, scope: !638)
!663 = !DILocation(line: 255, column: 21, scope: !638)
!664 = !DILocation(line: 255, column: 10, scope: !638)
!665 = !DILocation(line: 258, column: 9, scope: !666)
!666 = distinct !DILexicalBlock(scope: !638, file: !86, line: 258, column: 9)
!667 = !DILocation(line: 258, column: 16, scope: !666)
!668 = !DILocation(line: 258, column: 21, scope: !666)
!669 = !DILocation(line: 258, column: 30, scope: !666)
!670 = !DILocation(line: 258, column: 33, scope: !671)
!671 = !DILexicalBlockFile(scope: !666, file: !86, discriminator: 1)
!672 = !DILocation(line: 258, column: 40, scope: !671)
!673 = !DILocation(line: 258, column: 44, scope: !671)
!674 = !DILocation(line: 258, column: 9, scope: !671)
!675 = !DILocation(line: 259, column: 9, scope: !666)
!676 = !DILocation(line: 262, column: 9, scope: !677)
!677 = distinct !DILexicalBlock(scope: !638, file: !86, line: 262, column: 9)
!678 = !DILocation(line: 262, column: 16, scope: !677)
!679 = !DILocation(line: 262, column: 9, scope: !638)
!680 = !DILocation(line: 263, column: 9, scope: !681)
!681 = distinct !DILexicalBlock(scope: !677, file: !86, line: 262, column: 22)
!682 = !DILocation(line: 263, column: 16, scope: !681)
!683 = !DILocation(line: 263, column: 21, scope: !681)
!684 = !DILocation(line: 264, column: 21, scope: !685)
!685 = distinct !DILexicalBlock(scope: !681, file: !86, line: 264, column: 13)
!686 = !DILocation(line: 264, column: 28, scope: !685)
!687 = !DILocation(line: 264, column: 35, scope: !685)
!688 = !DILocation(line: 264, column: 13, scope: !685)
!689 = !DILocation(line: 264, column: 41, scope: !685)
!690 = !DILocation(line: 264, column: 13, scope: !681)
!691 = !DILocation(line: 265, column: 13, scope: !685)
!692 = !DILocation(line: 266, column: 5, scope: !681)
!693 = !DILocation(line: 270, column: 9, scope: !694)
!694 = distinct !DILexicalBlock(scope: !638, file: !86, line: 270, column: 9)
!695 = !DILocation(line: 270, column: 15, scope: !694)
!696 = !DILocation(line: 270, column: 26, scope: !694)
!697 = !DILocation(line: 270, column: 33, scope: !694)
!698 = !DILocation(line: 270, column: 24, scope: !694)
!699 = !DILocation(line: 270, column: 9, scope: !638)
!700 = !DILocation(line: 271, column: 13, scope: !701)
!701 = distinct !DILexicalBlock(scope: !702, file: !86, line: 271, column: 13)
!702 = distinct !DILexicalBlock(scope: !694, file: !86, line: 270, column: 39)
!703 = !DILocation(line: 271, column: 19, scope: !701)
!704 = !DILocation(line: 271, column: 28, scope: !701)
!705 = !DILocation(line: 271, column: 13, scope: !702)
!706 = !DILocation(line: 272, column: 29, scope: !701)
!707 = !DILocation(line: 272, column: 36, scope: !701)
!708 = !DILocation(line: 272, column: 13, scope: !701)
!709 = !DILocation(line: 272, column: 19, scope: !701)
!710 = !DILocation(line: 272, column: 27, scope: !701)
!711 = !DILocation(line: 273, column: 43, scope: !702)
!712 = !DILocation(line: 273, column: 23, scope: !702)
!713 = !DILocation(line: 273, column: 29, scope: !702)
!714 = !DILocation(line: 273, column: 37, scope: !702)
!715 = !DILocation(line: 273, column: 9, scope: !702)
!716 = !DILocation(line: 273, column: 15, scope: !702)
!717 = !DILocation(line: 273, column: 41, scope: !702)
!718 = !DILocation(line: 274, column: 9, scope: !702)
!719 = !DILocation(line: 274, column: 16, scope: !702)
!720 = !DILocation(line: 274, column: 18, scope: !702)
!721 = !DILocation(line: 274, column: 21, scope: !702)
!722 = !DILocation(line: 275, column: 16, scope: !702)
!723 = !DILocation(line: 275, column: 18, scope: !702)
!724 = !DILocation(line: 275, column: 9, scope: !702)
!725 = !DILocation(line: 279, column: 14, scope: !638)
!726 = !DILocation(line: 279, column: 5, scope: !638)
!727 = !DILocation(line: 279, column: 12, scope: !638)
!728 = !DILocation(line: 280, column: 17, scope: !729)
!729 = distinct !DILexicalBlock(scope: !638, file: !86, line: 280, column: 9)
!730 = !DILocation(line: 280, column: 23, scope: !729)
!731 = !DILocation(line: 280, column: 9, scope: !729)
!732 = !DILocation(line: 280, column: 31, scope: !729)
!733 = !DILocation(line: 280, column: 9, scope: !638)
!734 = !DILocation(line: 281, column: 9, scope: !729)
!735 = !DILocation(line: 282, column: 12, scope: !638)
!736 = !DILocation(line: 282, column: 14, scope: !638)
!737 = !DILocation(line: 282, column: 5, scope: !638)
!738 = !DILocation(line: 283, column: 1, scope: !638)
!739 = distinct !DISubprogram(name: "gzputs", scope: !86, file: !86, line: 286, type: !740, isLocal: false, isDefinition: true, scopeLine: 289, isOptimized: false, unit: !0, variables: !2)
!740 = !DISubroutineType(types: !741)
!741 = !{!23, !89, !742}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64, align: 64)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!744 = !DILocalVariable(name: "file", arg: 1, scope: !739, file: !86, line: 287, type: !89)
!745 = !DILocation(line: 287, column: 12, scope: !739)
!746 = !DILocalVariable(name: "str", arg: 2, scope: !739, file: !86, line: 288, type: !742)
!747 = !DILocation(line: 288, column: 17, scope: !739)
!748 = !DILocalVariable(name: "ret", scope: !739, file: !86, line: 290, type: !23)
!749 = !DILocation(line: 290, column: 9, scope: !739)
!750 = !DILocalVariable(name: "len", scope: !739, file: !86, line: 291, type: !16)
!751 = !DILocation(line: 291, column: 14, scope: !739)
!752 = !DILocation(line: 294, column: 28, scope: !739)
!753 = !DILocation(line: 294, column: 21, scope: !739)
!754 = !DILocation(line: 294, column: 11, scope: !739)
!755 = !DILocation(line: 294, column: 9, scope: !739)
!756 = !DILocation(line: 295, column: 19, scope: !739)
!757 = !DILocation(line: 295, column: 25, scope: !739)
!758 = !DILocation(line: 295, column: 30, scope: !739)
!759 = !DILocation(line: 295, column: 11, scope: !739)
!760 = !DILocation(line: 295, column: 9, scope: !739)
!761 = !DILocation(line: 296, column: 12, scope: !739)
!762 = !DILocation(line: 296, column: 16, scope: !739)
!763 = !DILocation(line: 296, column: 21, scope: !739)
!764 = !DILocation(line: 296, column: 24, scope: !765)
!765 = !DILexicalBlockFile(scope: !739, file: !86, discriminator: 1)
!766 = !DILocation(line: 296, column: 28, scope: !765)
!767 = !DILocation(line: 296, column: 12, scope: !765)
!768 = !DILocation(line: 296, column: 12, scope: !769)
!769 = !DILexicalBlockFile(scope: !739, file: !86, discriminator: 2)
!770 = !DILocation(line: 296, column: 40, scope: !771)
!771 = !DILexicalBlockFile(scope: !739, file: !86, discriminator: 3)
!772 = !DILocation(line: 296, column: 12, scope: !771)
!773 = !DILocation(line: 296, column: 12, scope: !774)
!774 = !DILexicalBlockFile(scope: !739, file: !86, discriminator: 4)
!775 = !DILocation(line: 296, column: 5, scope: !774)
!776 = distinct !DISubprogram(name: "gzprintf", scope: !86, file: !86, line: 303, type: !777, isLocal: false, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!777 = !DISubroutineType(types: !778)
!778 = !{!23, !89, !742, null}
!779 = !DILocalVariable(name: "file", arg: 1, scope: !776, file: !86, line: 303, type: !89)
!780 = !DILocation(line: 303, column: 22, scope: !776)
!781 = !DILocalVariable(name: "format", arg: 2, scope: !776, file: !86, line: 303, type: !742)
!782 = !DILocation(line: 303, column: 40, scope: !776)
!783 = !DILocalVariable(name: "size", scope: !776, file: !86, line: 305, type: !23)
!784 = !DILocation(line: 305, column: 9, scope: !776)
!785 = !DILocalVariable(name: "len", scope: !776, file: !86, line: 305, type: !23)
!786 = !DILocation(line: 305, column: 15, scope: !776)
!787 = !DILocalVariable(name: "state", scope: !776, file: !86, line: 306, type: !5)
!788 = !DILocation(line: 306, column: 15, scope: !776)
!789 = !DILocalVariable(name: "strm", scope: !776, file: !86, line: 307, type: !109)
!790 = !DILocation(line: 307, column: 15, scope: !776)
!791 = !DILocalVariable(name: "va", scope: !776, file: !86, line: 308, type: !792)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !793, line: 79, baseType: !794)
!793 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !795, line: 40, baseType: !796)
!795 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 308, baseType: !797)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !798, size: 192, align: 64, elements: !647)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 308, size: 192, align: 64, elements: !799)
!799 = !{!800, !801, !802, !803}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !798, file: !1, line: 308, baseType: !16, size: 32, align: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !798, file: !1, line: 308, baseType: !16, size: 32, align: 32, offset: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !798, file: !1, line: 308, baseType: !4, size: 64, align: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !798, file: !1, line: 308, baseType: !4, size: 64, align: 64, offset: 128)
!804 = !DILocation(line: 308, column: 13, scope: !776)
!805 = !DILocation(line: 311, column: 9, scope: !806)
!806 = distinct !DILexicalBlock(scope: !776, file: !86, line: 311, column: 9)
!807 = !DILocation(line: 311, column: 14, scope: !806)
!808 = !DILocation(line: 311, column: 9, scope: !776)
!809 = !DILocation(line: 312, column: 9, scope: !806)
!810 = !DILocation(line: 313, column: 24, scope: !776)
!811 = !DILocation(line: 313, column: 13, scope: !776)
!812 = !DILocation(line: 313, column: 11, scope: !776)
!813 = !DILocation(line: 314, column: 14, scope: !776)
!814 = !DILocation(line: 314, column: 21, scope: !776)
!815 = !DILocation(line: 314, column: 10, scope: !776)
!816 = !DILocation(line: 317, column: 9, scope: !817)
!817 = distinct !DILexicalBlock(scope: !776, file: !86, line: 317, column: 9)
!818 = !DILocation(line: 317, column: 16, scope: !817)
!819 = !DILocation(line: 317, column: 21, scope: !817)
!820 = !DILocation(line: 317, column: 30, scope: !817)
!821 = !DILocation(line: 317, column: 33, scope: !822)
!822 = !DILexicalBlockFile(scope: !817, file: !86, discriminator: 1)
!823 = !DILocation(line: 317, column: 40, scope: !822)
!824 = !DILocation(line: 317, column: 44, scope: !822)
!825 = !DILocation(line: 317, column: 9, scope: !822)
!826 = !DILocation(line: 318, column: 9, scope: !817)
!827 = !DILocation(line: 321, column: 9, scope: !828)
!828 = distinct !DILexicalBlock(scope: !776, file: !86, line: 321, column: 9)
!829 = !DILocation(line: 321, column: 16, scope: !828)
!830 = !DILocation(line: 321, column: 21, scope: !828)
!831 = !DILocation(line: 321, column: 26, scope: !828)
!832 = !DILocation(line: 321, column: 37, scope: !833)
!833 = !DILexicalBlockFile(scope: !828, file: !86, discriminator: 1)
!834 = !DILocation(line: 321, column: 29, scope: !833)
!835 = !DILocation(line: 321, column: 44, scope: !833)
!836 = !DILocation(line: 321, column: 9, scope: !833)
!837 = !DILocation(line: 322, column: 9, scope: !828)
!838 = !DILocation(line: 325, column: 9, scope: !839)
!839 = distinct !DILexicalBlock(scope: !776, file: !86, line: 325, column: 9)
!840 = !DILocation(line: 325, column: 16, scope: !839)
!841 = !DILocation(line: 325, column: 9, scope: !776)
!842 = !DILocation(line: 326, column: 9, scope: !843)
!843 = distinct !DILexicalBlock(scope: !839, file: !86, line: 325, column: 22)
!844 = !DILocation(line: 326, column: 16, scope: !843)
!845 = !DILocation(line: 326, column: 21, scope: !843)
!846 = !DILocation(line: 327, column: 21, scope: !847)
!847 = distinct !DILexicalBlock(scope: !843, file: !86, line: 327, column: 13)
!848 = !DILocation(line: 327, column: 28, scope: !847)
!849 = !DILocation(line: 327, column: 35, scope: !847)
!850 = !DILocation(line: 327, column: 13, scope: !847)
!851 = !DILocation(line: 327, column: 41, scope: !847)
!852 = !DILocation(line: 327, column: 13, scope: !843)
!853 = !DILocation(line: 328, column: 13, scope: !847)
!854 = !DILocation(line: 329, column: 5, scope: !843)
!855 = !DILocation(line: 332, column: 9, scope: !856)
!856 = distinct !DILexicalBlock(scope: !776, file: !86, line: 332, column: 9)
!857 = !DILocation(line: 332, column: 15, scope: !856)
!858 = !DILocation(line: 332, column: 24, scope: !856)
!859 = !DILocation(line: 332, column: 35, scope: !860)
!860 = !DILexicalBlockFile(scope: !856, file: !86, discriminator: 1)
!861 = !DILocation(line: 332, column: 27, scope: !860)
!862 = !DILocation(line: 332, column: 45, scope: !860)
!863 = !DILocation(line: 332, column: 9, scope: !860)
!864 = !DILocation(line: 333, column: 9, scope: !856)
!865 = !DILocation(line: 336, column: 18, scope: !776)
!866 = !DILocation(line: 336, column: 25, scope: !776)
!867 = !DILocation(line: 336, column: 10, scope: !776)
!868 = !DILocation(line: 337, column: 15, scope: !776)
!869 = !DILocation(line: 337, column: 20, scope: !776)
!870 = !DILocation(line: 337, column: 5, scope: !776)
!871 = !DILocation(line: 337, column: 12, scope: !776)
!872 = !DILocation(line: 337, column: 25, scope: !776)
!873 = !DILocation(line: 338, column: 4, scope: !776)
!874 = !DILocation(line: 355, column: 30, scope: !776)
!875 = !DILocation(line: 355, column: 37, scope: !776)
!876 = !DILocation(line: 355, column: 42, scope: !776)
!877 = !DILocation(line: 355, column: 48, scope: !776)
!878 = !DILocation(line: 355, column: 56, scope: !776)
!879 = !DILocation(line: 355, column: 11, scope: !776)
!880 = !DILocation(line: 355, column: 9, scope: !776)
!881 = !DILocation(line: 356, column: 4, scope: !776)
!882 = !DILocation(line: 361, column: 9, scope: !883)
!883 = distinct !DILexicalBlock(scope: !776, file: !86, line: 361, column: 9)
!884 = !DILocation(line: 361, column: 13, scope: !883)
!885 = !DILocation(line: 361, column: 18, scope: !883)
!886 = !DILocation(line: 361, column: 21, scope: !887)
!887 = !DILexicalBlockFile(scope: !883, file: !86, discriminator: 1)
!888 = !DILocation(line: 361, column: 33, scope: !887)
!889 = !DILocation(line: 361, column: 25, scope: !887)
!890 = !DILocation(line: 361, column: 38, scope: !887)
!891 = !DILocation(line: 361, column: 51, scope: !892)
!892 = !DILexicalBlockFile(scope: !883, file: !86, discriminator: 2)
!893 = !DILocation(line: 361, column: 56, scope: !892)
!894 = !DILocation(line: 361, column: 41, scope: !892)
!895 = !DILocation(line: 361, column: 48, scope: !892)
!896 = !DILocation(line: 361, column: 61, scope: !892)
!897 = !DILocation(line: 361, column: 9, scope: !892)
!898 = !DILocation(line: 362, column: 9, scope: !883)
!899 = !DILocation(line: 365, column: 32, scope: !776)
!900 = !DILocation(line: 365, column: 5, scope: !776)
!901 = !DILocation(line: 365, column: 11, scope: !776)
!902 = !DILocation(line: 365, column: 20, scope: !776)
!903 = !DILocation(line: 366, column: 21, scope: !776)
!904 = !DILocation(line: 366, column: 28, scope: !776)
!905 = !DILocation(line: 366, column: 5, scope: !776)
!906 = !DILocation(line: 366, column: 11, scope: !776)
!907 = !DILocation(line: 366, column: 19, scope: !776)
!908 = !DILocation(line: 367, column: 21, scope: !776)
!909 = !DILocation(line: 367, column: 5, scope: !776)
!910 = !DILocation(line: 367, column: 12, scope: !776)
!911 = !DILocation(line: 367, column: 14, scope: !776)
!912 = !DILocation(line: 367, column: 18, scope: !776)
!913 = !DILocation(line: 368, column: 12, scope: !776)
!914 = !DILocation(line: 368, column: 5, scope: !776)
!915 = !DILocation(line: 369, column: 1, scope: !776)
!916 = distinct !DISubprogram(name: "gzflush", scope: !86, file: !86, line: 453, type: !639, isLocal: false, isDefinition: true, scopeLine: 456, isOptimized: false, unit: !0, variables: !2)
!917 = !DILocalVariable(name: "file", arg: 1, scope: !916, file: !86, line: 454, type: !89)
!918 = !DILocation(line: 454, column: 12, scope: !916)
!919 = !DILocalVariable(name: "flush", arg: 2, scope: !916, file: !86, line: 455, type: !23)
!920 = !DILocation(line: 455, column: 9, scope: !916)
!921 = !DILocalVariable(name: "state", scope: !916, file: !86, line: 457, type: !5)
!922 = !DILocation(line: 457, column: 15, scope: !916)
!923 = !DILocation(line: 460, column: 9, scope: !924)
!924 = distinct !DILexicalBlock(scope: !916, file: !86, line: 460, column: 9)
!925 = !DILocation(line: 460, column: 14, scope: !924)
!926 = !DILocation(line: 460, column: 9, scope: !916)
!927 = !DILocation(line: 461, column: 9, scope: !924)
!928 = !DILocation(line: 462, column: 24, scope: !916)
!929 = !DILocation(line: 462, column: 13, scope: !916)
!930 = !DILocation(line: 462, column: 11, scope: !916)
!931 = !DILocation(line: 465, column: 9, scope: !932)
!932 = distinct !DILexicalBlock(scope: !916, file: !86, line: 465, column: 9)
!933 = !DILocation(line: 465, column: 16, scope: !932)
!934 = !DILocation(line: 465, column: 21, scope: !932)
!935 = !DILocation(line: 465, column: 30, scope: !932)
!936 = !DILocation(line: 465, column: 33, scope: !937)
!937 = !DILexicalBlockFile(scope: !932, file: !86, discriminator: 1)
!938 = !DILocation(line: 465, column: 40, scope: !937)
!939 = !DILocation(line: 465, column: 44, scope: !937)
!940 = !DILocation(line: 465, column: 9, scope: !937)
!941 = !DILocation(line: 466, column: 9, scope: !932)
!942 = !DILocation(line: 469, column: 9, scope: !943)
!943 = distinct !DILexicalBlock(scope: !916, file: !86, line: 469, column: 9)
!944 = !DILocation(line: 469, column: 15, scope: !943)
!945 = !DILocation(line: 469, column: 19, scope: !943)
!946 = !DILocation(line: 469, column: 22, scope: !947)
!947 = !DILexicalBlockFile(scope: !943, file: !86, discriminator: 1)
!948 = !DILocation(line: 469, column: 28, scope: !947)
!949 = !DILocation(line: 469, column: 9, scope: !947)
!950 = !DILocation(line: 470, column: 9, scope: !943)
!951 = !DILocation(line: 473, column: 9, scope: !952)
!952 = distinct !DILexicalBlock(scope: !916, file: !86, line: 473, column: 9)
!953 = !DILocation(line: 473, column: 16, scope: !952)
!954 = !DILocation(line: 473, column: 9, scope: !916)
!955 = !DILocation(line: 474, column: 9, scope: !956)
!956 = distinct !DILexicalBlock(scope: !952, file: !86, line: 473, column: 22)
!957 = !DILocation(line: 474, column: 16, scope: !956)
!958 = !DILocation(line: 474, column: 21, scope: !956)
!959 = !DILocation(line: 475, column: 21, scope: !960)
!960 = distinct !DILexicalBlock(scope: !956, file: !86, line: 475, column: 13)
!961 = !DILocation(line: 475, column: 28, scope: !960)
!962 = !DILocation(line: 475, column: 35, scope: !960)
!963 = !DILocation(line: 475, column: 13, scope: !960)
!964 = !DILocation(line: 475, column: 41, scope: !960)
!965 = !DILocation(line: 475, column: 13, scope: !956)
!966 = !DILocation(line: 476, column: 13, scope: !960)
!967 = !DILocation(line: 477, column: 5, scope: !956)
!968 = !DILocation(line: 480, column: 13, scope: !916)
!969 = !DILocation(line: 480, column: 20, scope: !916)
!970 = !DILocation(line: 480, column: 5, scope: !916)
!971 = !DILocation(line: 481, column: 12, scope: !916)
!972 = !DILocation(line: 481, column: 19, scope: !916)
!973 = !DILocation(line: 481, column: 5, scope: !916)
!974 = !DILocation(line: 482, column: 1, scope: !916)
!975 = distinct !DISubprogram(name: "gzsetparams", scope: !86, file: !86, line: 485, type: !976, isLocal: false, isDefinition: true, scopeLine: 489, isOptimized: false, unit: !0, variables: !2)
!976 = !DISubroutineType(types: !977)
!977 = !{!23, !89, !23, !23}
!978 = !DILocalVariable(name: "file", arg: 1, scope: !975, file: !86, line: 486, type: !89)
!979 = !DILocation(line: 486, column: 12, scope: !975)
!980 = !DILocalVariable(name: "level", arg: 2, scope: !975, file: !86, line: 487, type: !23)
!981 = !DILocation(line: 487, column: 9, scope: !975)
!982 = !DILocalVariable(name: "strategy", arg: 3, scope: !975, file: !86, line: 488, type: !23)
!983 = !DILocation(line: 488, column: 9, scope: !975)
!984 = !DILocalVariable(name: "state", scope: !975, file: !86, line: 490, type: !5)
!985 = !DILocation(line: 490, column: 15, scope: !975)
!986 = !DILocalVariable(name: "strm", scope: !975, file: !86, line: 491, type: !109)
!987 = !DILocation(line: 491, column: 15, scope: !975)
!988 = !DILocation(line: 494, column: 9, scope: !989)
!989 = distinct !DILexicalBlock(scope: !975, file: !86, line: 494, column: 9)
!990 = !DILocation(line: 494, column: 14, scope: !989)
!991 = !DILocation(line: 494, column: 9, scope: !975)
!992 = !DILocation(line: 495, column: 9, scope: !989)
!993 = !DILocation(line: 496, column: 24, scope: !975)
!994 = !DILocation(line: 496, column: 13, scope: !975)
!995 = !DILocation(line: 496, column: 11, scope: !975)
!996 = !DILocation(line: 497, column: 14, scope: !975)
!997 = !DILocation(line: 497, column: 21, scope: !975)
!998 = !DILocation(line: 497, column: 10, scope: !975)
!999 = !DILocation(line: 500, column: 9, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !975, file: !86, line: 500, column: 9)
!1001 = !DILocation(line: 500, column: 16, scope: !1000)
!1002 = !DILocation(line: 500, column: 21, scope: !1000)
!1003 = !DILocation(line: 500, column: 30, scope: !1000)
!1004 = !DILocation(line: 500, column: 33, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !1000, file: !86, discriminator: 1)
!1006 = !DILocation(line: 500, column: 40, scope: !1005)
!1007 = !DILocation(line: 500, column: 44, scope: !1005)
!1008 = !DILocation(line: 500, column: 9, scope: !1005)
!1009 = !DILocation(line: 501, column: 9, scope: !1000)
!1010 = !DILocation(line: 504, column: 9, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !975, file: !86, line: 504, column: 9)
!1012 = !DILocation(line: 504, column: 18, scope: !1011)
!1013 = !DILocation(line: 504, column: 25, scope: !1011)
!1014 = !DILocation(line: 504, column: 15, scope: !1011)
!1015 = !DILocation(line: 504, column: 31, scope: !1011)
!1016 = !DILocation(line: 504, column: 34, scope: !1017)
!1017 = !DILexicalBlockFile(scope: !1011, file: !86, discriminator: 1)
!1018 = !DILocation(line: 504, column: 46, scope: !1017)
!1019 = !DILocation(line: 504, column: 53, scope: !1017)
!1020 = !DILocation(line: 504, column: 43, scope: !1017)
!1021 = !DILocation(line: 504, column: 9, scope: !1017)
!1022 = !DILocation(line: 505, column: 9, scope: !1011)
!1023 = !DILocation(line: 508, column: 9, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !975, file: !86, line: 508, column: 9)
!1025 = !DILocation(line: 508, column: 16, scope: !1024)
!1026 = !DILocation(line: 508, column: 9, scope: !975)
!1027 = !DILocation(line: 509, column: 9, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1024, file: !86, line: 508, column: 22)
!1029 = !DILocation(line: 509, column: 16, scope: !1028)
!1030 = !DILocation(line: 509, column: 21, scope: !1028)
!1031 = !DILocation(line: 510, column: 21, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1028, file: !86, line: 510, column: 13)
!1033 = !DILocation(line: 510, column: 28, scope: !1032)
!1034 = !DILocation(line: 510, column: 35, scope: !1032)
!1035 = !DILocation(line: 510, column: 13, scope: !1032)
!1036 = !DILocation(line: 510, column: 41, scope: !1032)
!1037 = !DILocation(line: 510, column: 13, scope: !1028)
!1038 = !DILocation(line: 511, column: 13, scope: !1032)
!1039 = !DILocation(line: 512, column: 5, scope: !1028)
!1040 = !DILocation(line: 515, column: 9, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !975, file: !86, line: 515, column: 9)
!1042 = !DILocation(line: 515, column: 16, scope: !1041)
!1043 = !DILocation(line: 515, column: 9, scope: !975)
!1044 = !DILocation(line: 517, column: 13, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !86, line: 517, column: 13)
!1046 = distinct !DILexicalBlock(scope: !1041, file: !86, line: 515, column: 22)
!1047 = !DILocation(line: 517, column: 19, scope: !1045)
!1048 = !DILocation(line: 517, column: 28, scope: !1045)
!1049 = !DILocation(line: 517, column: 39, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !1045, file: !86, discriminator: 1)
!1051 = !DILocation(line: 517, column: 31, scope: !1050)
!1052 = !DILocation(line: 517, column: 49, scope: !1050)
!1053 = !DILocation(line: 517, column: 13, scope: !1050)
!1054 = !DILocation(line: 518, column: 20, scope: !1045)
!1055 = !DILocation(line: 518, column: 27, scope: !1045)
!1056 = !DILocation(line: 518, column: 13, scope: !1045)
!1057 = !DILocation(line: 519, column: 23, scope: !1046)
!1058 = !DILocation(line: 519, column: 29, scope: !1046)
!1059 = !DILocation(line: 519, column: 36, scope: !1046)
!1060 = !DILocation(line: 519, column: 9, scope: !1046)
!1061 = !DILocation(line: 520, column: 5, scope: !1046)
!1062 = !DILocation(line: 521, column: 20, scope: !975)
!1063 = !DILocation(line: 521, column: 5, scope: !975)
!1064 = !DILocation(line: 521, column: 12, scope: !975)
!1065 = !DILocation(line: 521, column: 18, scope: !975)
!1066 = !DILocation(line: 522, column: 23, scope: !975)
!1067 = !DILocation(line: 522, column: 5, scope: !975)
!1068 = !DILocation(line: 522, column: 12, scope: !975)
!1069 = !DILocation(line: 522, column: 21, scope: !975)
!1070 = !DILocation(line: 523, column: 5, scope: !975)
!1071 = !DILocation(line: 524, column: 1, scope: !975)
!1072 = distinct !DISubprogram(name: "gzclose_w", scope: !86, file: !86, line: 527, type: !1073, isLocal: false, isDefinition: true, scopeLine: 529, isOptimized: false, unit: !0, variables: !2)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!23, !89}
!1075 = !DILocalVariable(name: "file", arg: 1, scope: !1072, file: !86, line: 528, type: !89)
!1076 = !DILocation(line: 528, column: 12, scope: !1072)
!1077 = !DILocalVariable(name: "ret", scope: !1072, file: !86, line: 530, type: !23)
!1078 = !DILocation(line: 530, column: 9, scope: !1072)
!1079 = !DILocalVariable(name: "state", scope: !1072, file: !86, line: 531, type: !5)
!1080 = !DILocation(line: 531, column: 15, scope: !1072)
!1081 = !DILocation(line: 534, column: 9, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1072, file: !86, line: 534, column: 9)
!1083 = !DILocation(line: 534, column: 14, scope: !1082)
!1084 = !DILocation(line: 534, column: 9, scope: !1072)
!1085 = !DILocation(line: 535, column: 9, scope: !1082)
!1086 = !DILocation(line: 536, column: 24, scope: !1072)
!1087 = !DILocation(line: 536, column: 13, scope: !1072)
!1088 = !DILocation(line: 536, column: 11, scope: !1072)
!1089 = !DILocation(line: 539, column: 9, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1072, file: !86, line: 539, column: 9)
!1091 = !DILocation(line: 539, column: 16, scope: !1090)
!1092 = !DILocation(line: 539, column: 21, scope: !1090)
!1093 = !DILocation(line: 539, column: 9, scope: !1072)
!1094 = !DILocation(line: 540, column: 9, scope: !1090)
!1095 = !DILocation(line: 543, column: 9, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1072, file: !86, line: 543, column: 9)
!1097 = !DILocation(line: 543, column: 16, scope: !1096)
!1098 = !DILocation(line: 543, column: 9, scope: !1072)
!1099 = !DILocation(line: 544, column: 9, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1096, file: !86, line: 543, column: 22)
!1101 = !DILocation(line: 544, column: 16, scope: !1100)
!1102 = !DILocation(line: 544, column: 21, scope: !1100)
!1103 = !DILocation(line: 545, column: 21, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1100, file: !86, line: 545, column: 13)
!1105 = !DILocation(line: 545, column: 28, scope: !1104)
!1106 = !DILocation(line: 545, column: 35, scope: !1104)
!1107 = !DILocation(line: 545, column: 13, scope: !1104)
!1108 = !DILocation(line: 545, column: 41, scope: !1104)
!1109 = !DILocation(line: 545, column: 13, scope: !1100)
!1110 = !DILocation(line: 546, column: 19, scope: !1104)
!1111 = !DILocation(line: 546, column: 26, scope: !1104)
!1112 = !DILocation(line: 546, column: 17, scope: !1104)
!1113 = !DILocation(line: 546, column: 13, scope: !1104)
!1114 = !DILocation(line: 547, column: 5, scope: !1100)
!1115 = !DILocation(line: 550, column: 9, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1072, file: !86, line: 550, column: 9)
!1117 = !DILocation(line: 550, column: 16, scope: !1116)
!1118 = !DILocation(line: 550, column: 9, scope: !1072)
!1119 = !DILocation(line: 551, column: 21, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !86, line: 551, column: 13)
!1121 = distinct !DILexicalBlock(scope: !1116, file: !86, line: 550, column: 22)
!1122 = !DILocation(line: 551, column: 13, scope: !1120)
!1123 = !DILocation(line: 551, column: 31, scope: !1120)
!1124 = !DILocation(line: 551, column: 13, scope: !1121)
!1125 = !DILocation(line: 552, column: 19, scope: !1120)
!1126 = !DILocation(line: 552, column: 26, scope: !1120)
!1127 = !DILocation(line: 552, column: 17, scope: !1120)
!1128 = !DILocation(line: 552, column: 13, scope: !1120)
!1129 = !DILocation(line: 553, column: 14, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1121, file: !86, line: 553, column: 13)
!1131 = !DILocation(line: 553, column: 21, scope: !1130)
!1132 = !DILocation(line: 553, column: 13, scope: !1121)
!1133 = !DILocation(line: 554, column: 32, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1130, file: !86, line: 553, column: 29)
!1135 = !DILocation(line: 554, column: 39, scope: !1134)
!1136 = !DILocation(line: 554, column: 19, scope: !1134)
!1137 = !DILocation(line: 555, column: 18, scope: !1134)
!1138 = !DILocation(line: 555, column: 25, scope: !1134)
!1139 = !DILocation(line: 555, column: 13, scope: !1134)
!1140 = !DILocation(line: 556, column: 9, scope: !1134)
!1141 = !DILocation(line: 557, column: 14, scope: !1121)
!1142 = !DILocation(line: 557, column: 21, scope: !1121)
!1143 = !DILocation(line: 557, column: 9, scope: !1121)
!1144 = !DILocation(line: 558, column: 5, scope: !1121)
!1145 = !DILocation(line: 559, column: 14, scope: !1072)
!1146 = !DILocation(line: 559, column: 5, scope: !1072)
!1147 = !DILocation(line: 560, column: 10, scope: !1072)
!1148 = !DILocation(line: 560, column: 17, scope: !1072)
!1149 = !DILocation(line: 560, column: 5, scope: !1072)
!1150 = !DILocation(line: 561, column: 15, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1072, file: !86, line: 561, column: 9)
!1152 = !DILocation(line: 561, column: 22, scope: !1151)
!1153 = !DILocation(line: 561, column: 9, scope: !1151)
!1154 = !DILocation(line: 561, column: 26, scope: !1151)
!1155 = !DILocation(line: 561, column: 9, scope: !1072)
!1156 = !DILocation(line: 562, column: 13, scope: !1151)
!1157 = !DILocation(line: 562, column: 9, scope: !1151)
!1158 = !DILocation(line: 563, column: 10, scope: !1072)
!1159 = !DILocation(line: 563, column: 5, scope: !1072)
!1160 = !DILocation(line: 564, column: 12, scope: !1072)
!1161 = !DILocation(line: 564, column: 5, scope: !1072)
!1162 = !DILocation(line: 565, column: 1, scope: !1072)
