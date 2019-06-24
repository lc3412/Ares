; ModuleID = './[inter]third-party--zlib-1.2.7--gzlib.o.i'
source_filename = "./[inter]third-party--zlib-1.2.7--gzlib.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gzFile_s = type { i32, i8*, i64 }
%struct.gz_state = type { %struct.gzFile_s, i32, i32, i8*, i32, i32, i8*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, i8*, %struct.z_stream_s }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"<fd:%d>\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c": \00", align 1

; Function Attrs: nounwind uwtable
define %struct.gzFile_s* @gzopen(i8*, i8*) #0 !dbg !86 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !92, metadata !93), !dbg !94
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !95, metadata !93), !dbg !96
  %5 = load i8*, i8** %3, align 8, !dbg !97
  %6 = load i8*, i8** %4, align 8, !dbg !98
  %7 = call %struct.gzFile_s* @gz_open(i8* %5, i32 -1, i8* %6), !dbg !99
  ret %struct.gzFile_s* %7, !dbg !100
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal %struct.gzFile_s* @gz_open(i8*, i32, i8*) #0 !dbg !101 {
  %4 = alloca %struct.gzFile_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gz_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !106, metadata !93), !dbg !107
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !108, metadata !93), !dbg !109
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !110, metadata !93), !dbg !111
  call void @llvm.dbg.declare(metadata %struct.gz_state** %8, metadata !112, metadata !93), !dbg !113
  call void @llvm.dbg.declare(metadata i64* %9, metadata !114, metadata !93), !dbg !117
  call void @llvm.dbg.declare(metadata i32* %10, metadata !118, metadata !93), !dbg !119
  call void @llvm.dbg.declare(metadata i32* %11, metadata !120, metadata !93), !dbg !121
  store i32 0, i32* %11, align 4, !dbg !121
  call void @llvm.dbg.declare(metadata i32* %12, metadata !122, metadata !93), !dbg !123
  store i32 0, i32* %12, align 4, !dbg !123
  %13 = load i8*, i8** %5, align 8, !dbg !124
  %14 = icmp eq i8* %13, null, !dbg !126
  br i1 %14, label %15, label %16, !dbg !127

; <label>:15:                                     ; preds = %3
  store %struct.gzFile_s* null, %struct.gzFile_s** %4, align 8, !dbg !128
  br label %219, !dbg !128

; <label>:16:                                     ; preds = %3
  %17 = call noalias i8* @malloc(i64 232) #5, !dbg !129
  %18 = bitcast i8* %17 to %struct.gz_state*, !dbg !129
  store %struct.gz_state* %18, %struct.gz_state** %8, align 8, !dbg !130
  %19 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !131
  %20 = icmp eq %struct.gz_state* %19, null, !dbg !133
  br i1 %20, label %21, label %22, !dbg !134

; <label>:21:                                     ; preds = %16
  store %struct.gzFile_s* null, %struct.gzFile_s** %4, align 8, !dbg !135
  br label %219, !dbg !135

; <label>:22:                                     ; preds = %16
  %23 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !136
  %24 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %23, i32 0, i32 4, !dbg !137
  store i32 0, i32* %24, align 8, !dbg !138
  %25 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !139
  %26 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %25, i32 0, i32 5, !dbg !140
  store i32 8192, i32* %26, align 4, !dbg !141
  %27 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !142
  %28 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %27, i32 0, i32 18, !dbg !143
  store i8* null, i8** %28, align 8, !dbg !144
  %29 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !145
  %30 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %29, i32 0, i32 1, !dbg !146
  store i32 0, i32* %30, align 8, !dbg !147
  %31 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !148
  %32 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %31, i32 0, i32 13, !dbg !149
  store i32 -1, i32* %32, align 8, !dbg !150
  %33 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !151
  %34 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %33, i32 0, i32 14, !dbg !152
  store i32 0, i32* %34, align 4, !dbg !153
  %35 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !154
  %36 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %35, i32 0, i32 8, !dbg !155
  store i32 0, i32* %36, align 8, !dbg !156
  br label %37, !dbg !157

; <label>:37:                                     ; preds = %94, %22
  %38 = load i8*, i8** %7, align 8, !dbg !158
  %39 = load i8, i8* %38, align 1, !dbg !160
  %40 = icmp ne i8 %39, 0, !dbg !161
  br i1 %40, label %41, label %97, !dbg !161

; <label>:41:                                     ; preds = %37
  %42 = load i8*, i8** %7, align 8, !dbg !162
  %43 = load i8, i8* %42, align 1, !dbg !165
  %44 = sext i8 %43 to i32, !dbg !165
  %45 = icmp sge i32 %44, 48, !dbg !166
  br i1 %45, label %46, label %58, !dbg !167

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** %7, align 8, !dbg !168
  %48 = load i8, i8* %47, align 1, !dbg !170
  %49 = sext i8 %48 to i32, !dbg !170
  %50 = icmp sle i32 %49, 57, !dbg !171
  br i1 %50, label %51, label %58, !dbg !172

; <label>:51:                                     ; preds = %46
  %52 = load i8*, i8** %7, align 8, !dbg !173
  %53 = load i8, i8* %52, align 1, !dbg !174
  %54 = sext i8 %53 to i32, !dbg !174
  %55 = sub nsw i32 %54, 48, !dbg !175
  %56 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !176
  %57 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %56, i32 0, i32 13, !dbg !177
  store i32 %55, i32* %57, align 8, !dbg !178
  br label %94, !dbg !176

; <label>:58:                                     ; preds = %46, %41
  %59 = load i8*, i8** %7, align 8, !dbg !179
  %60 = load i8, i8* %59, align 1, !dbg !180
  %61 = sext i8 %60 to i32, !dbg !180
  switch i32 %61, label %92 [
    i32 114, label %62
    i32 119, label %65
    i32 97, label %68
    i32 43, label %71
    i32 98, label %74
    i32 101, label %75
    i32 120, label %76
    i32 102, label %77
    i32 104, label %80
    i32 82, label %83
    i32 70, label %86
    i32 84, label %89
  ], !dbg !181

; <label>:62:                                     ; preds = %58
  %63 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !182
  %64 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %63, i32 0, i32 1, !dbg !184
  store i32 7247, i32* %64, align 8, !dbg !185
  br label %93, !dbg !186

; <label>:65:                                     ; preds = %58
  %66 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !187
  %67 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %66, i32 0, i32 1, !dbg !188
  store i32 31153, i32* %67, align 8, !dbg !189
  br label %93, !dbg !190

; <label>:68:                                     ; preds = %58
  %69 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !191
  %70 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %69, i32 0, i32 1, !dbg !192
  store i32 1, i32* %70, align 8, !dbg !193
  br label %93, !dbg !194

; <label>:71:                                     ; preds = %58
  %72 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !195
  %73 = bitcast %struct.gz_state* %72 to i8*, !dbg !195
  call void @free(i8* %73) #5, !dbg !196
  store %struct.gzFile_s* null, %struct.gzFile_s** %4, align 8, !dbg !197
  br label %219, !dbg !197

; <label>:74:                                     ; preds = %58
  br label %93, !dbg !198

; <label>:75:                                     ; preds = %58
  store i32 1, i32* %11, align 4, !dbg !199
  br label %93, !dbg !200

; <label>:76:                                     ; preds = %58
  store i32 1, i32* %12, align 4, !dbg !201
  br label %93, !dbg !202

; <label>:77:                                     ; preds = %58
  %78 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !203
  %79 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %78, i32 0, i32 14, !dbg !204
  store i32 1, i32* %79, align 4, !dbg !205
  br label %93, !dbg !206

; <label>:80:                                     ; preds = %58
  %81 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !207
  %82 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %81, i32 0, i32 14, !dbg !208
  store i32 2, i32* %82, align 4, !dbg !209
  br label %93, !dbg !210

; <label>:83:                                     ; preds = %58
  %84 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !211
  %85 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %84, i32 0, i32 14, !dbg !212
  store i32 3, i32* %85, align 4, !dbg !213
  br label %93, !dbg !214

; <label>:86:                                     ; preds = %58
  %87 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !215
  %88 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %87, i32 0, i32 14, !dbg !216
  store i32 4, i32* %88, align 4, !dbg !217
  br label %89, !dbg !215

; <label>:89:                                     ; preds = %58, %86
  %90 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !218
  %91 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %90, i32 0, i32 8, !dbg !219
  store i32 1, i32* %91, align 8, !dbg !220
  br label %92, !dbg !218

; <label>:92:                                     ; preds = %58, %89
  br label %93, !dbg !221

; <label>:93:                                     ; preds = %92, %83, %80, %77, %76, %75, %74, %68, %65, %62
  br label %94

; <label>:94:                                     ; preds = %93, %51
  %95 = load i8*, i8** %7, align 8, !dbg !222
  %96 = getelementptr inbounds i8, i8* %95, i32 1, !dbg !222
  store i8* %96, i8** %7, align 8, !dbg !222
  br label %37, !dbg !223, !llvm.loop !225

; <label>:97:                                     ; preds = %37
  %98 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !226
  %99 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %98, i32 0, i32 1, !dbg !228
  %100 = load i32, i32* %99, align 8, !dbg !228
  %101 = icmp eq i32 %100, 0, !dbg !229
  br i1 %101, label %102, label %105, !dbg !230

; <label>:102:                                    ; preds = %97
  %103 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !231
  %104 = bitcast %struct.gz_state* %103 to i8*, !dbg !231
  call void @free(i8* %104) #5, !dbg !233
  store %struct.gzFile_s* null, %struct.gzFile_s** %4, align 8, !dbg !234
  br label %219, !dbg !234

; <label>:105:                                    ; preds = %97
  %106 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !235
  %107 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %106, i32 0, i32 1, !dbg !237
  %108 = load i32, i32* %107, align 8, !dbg !237
  %109 = icmp eq i32 %108, 7247, !dbg !238
  br i1 %109, label %110, label %121, !dbg !239

; <label>:110:                                    ; preds = %105
  %111 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !240
  %112 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %111, i32 0, i32 8, !dbg !243
  %113 = load i32, i32* %112, align 8, !dbg !243
  %114 = icmp ne i32 %113, 0, !dbg !240
  br i1 %114, label %115, label %118, !dbg !244

; <label>:115:                                    ; preds = %110
  %116 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !245
  %117 = bitcast %struct.gz_state* %116 to i8*, !dbg !245
  call void @free(i8* %117) #5, !dbg !247
  store %struct.gzFile_s* null, %struct.gzFile_s** %4, align 8, !dbg !248
  br label %219, !dbg !248

; <label>:118:                                    ; preds = %110
  %119 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !249
  %120 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %119, i32 0, i32 8, !dbg !250
  store i32 1, i32* %120, align 8, !dbg !251
  br label %121, !dbg !252

; <label>:121:                                    ; preds = %118, %105
  %122 = load i8*, i8** %5, align 8, !dbg !253
  %123 = call i64 @strlen(i8* %122) #6, !dbg !254
  store i64 %123, i64* %9, align 8, !dbg !255
  %124 = load i64, i64* %9, align 8, !dbg !256
  %125 = add i64 %124, 1, !dbg !257
  %126 = call noalias i8* @malloc(i64 %125) #5, !dbg !258
  %127 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !259
  %128 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %127, i32 0, i32 3, !dbg !260
  store i8* %126, i8** %128, align 8, !dbg !261
  %129 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !262
  %130 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %129, i32 0, i32 3, !dbg !264
  %131 = load i8*, i8** %130, align 8, !dbg !264
  %132 = icmp eq i8* %131, null, !dbg !265
  br i1 %132, label %133, label %136, !dbg !266

; <label>:133:                                    ; preds = %121
  %134 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !267
  %135 = bitcast %struct.gz_state* %134 to i8*, !dbg !267
  call void @free(i8* %135) #5, !dbg !269
  store %struct.gzFile_s* null, %struct.gzFile_s** %4, align 8, !dbg !270
  br label %219, !dbg !270

; <label>:136:                                    ; preds = %121
  %137 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !271
  %138 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %137, i32 0, i32 3, !dbg !272
  %139 = load i8*, i8** %138, align 8, !dbg !272
  %140 = load i8*, i8** %5, align 8, !dbg !273
  %141 = call i8* @strcpy(i8* %139, i8* %140) #5, !dbg !274
  %142 = load i32, i32* %11, align 4, !dbg !275
  %143 = icmp ne i32 %142, 0, !dbg !275
  %144 = select i1 %143, i32 524288, i32 0, !dbg !275
  %145 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !276
  %146 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %145, i32 0, i32 1, !dbg !277
  %147 = load i32, i32* %146, align 8, !dbg !277
  %148 = icmp eq i32 %147, 7247, !dbg !278
  br i1 %148, label %149, label %150, !dbg !276

; <label>:149:                                    ; preds = %136
  br label %161, !dbg !279

; <label>:150:                                    ; preds = %136
  %151 = load i32, i32* %12, align 4, !dbg !280
  %152 = icmp ne i32 %151, 0, !dbg !280
  %153 = select i1 %152, i32 128, i32 0, !dbg !280
  %154 = or i32 65, %153, !dbg !281
  %155 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !282
  %156 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %155, i32 0, i32 1, !dbg !283
  %157 = load i32, i32* %156, align 8, !dbg !283
  %158 = icmp eq i32 %157, 31153, !dbg !284
  %159 = select i1 %158, i32 512, i32 1024, !dbg !282
  %160 = or i32 %154, %159, !dbg !285
  br label %161, !dbg !286

; <label>:161:                                    ; preds = %150, %149
  %162 = phi i32 [ 0, %149 ], [ %160, %150 ], !dbg !287
  %163 = or i32 %144, %162, !dbg !289
  store i32 %163, i32* %10, align 4, !dbg !290
  %164 = load i32, i32* %6, align 4, !dbg !291
  %165 = icmp sgt i32 %164, -1, !dbg !292
  br i1 %165, label %166, label %168, !dbg !291

; <label>:166:                                    ; preds = %161
  %167 = load i32, i32* %6, align 4, !dbg !293
  br label %172, !dbg !294

; <label>:168:                                    ; preds = %161
  %169 = load i8*, i8** %5, align 8, !dbg !295
  %170 = load i32, i32* %10, align 4, !dbg !296
  %171 = call i32 (i8*, i32, ...) @open(i8* %169, i32 %170, i32 438), !dbg !297
  br label %172, !dbg !298

; <label>:172:                                    ; preds = %168, %166
  %173 = phi i32 [ %167, %166 ], [ %171, %168 ], !dbg !299
  %174 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !300
  %175 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %174, i32 0, i32 2, !dbg !301
  store i32 %173, i32* %175, align 4, !dbg !302
  %176 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !303
  %177 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %176, i32 0, i32 2, !dbg !305
  %178 = load i32, i32* %177, align 4, !dbg !305
  %179 = icmp eq i32 %178, -1, !dbg !306
  br i1 %179, label %180, label %186, !dbg !307

; <label>:180:                                    ; preds = %172
  %181 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !308
  %182 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %181, i32 0, i32 3, !dbg !310
  %183 = load i8*, i8** %182, align 8, !dbg !310
  call void @free(i8* %183) #5, !dbg !311
  %184 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !312
  %185 = bitcast %struct.gz_state* %184 to i8*, !dbg !312
  call void @free(i8* %185) #5, !dbg !313
  store %struct.gzFile_s* null, %struct.gzFile_s** %4, align 8, !dbg !314
  br label %219, !dbg !314

; <label>:186:                                    ; preds = %172
  %187 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !315
  %188 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %187, i32 0, i32 1, !dbg !317
  %189 = load i32, i32* %188, align 8, !dbg !317
  %190 = icmp eq i32 %189, 1, !dbg !318
  br i1 %190, label %191, label %194, !dbg !319

; <label>:191:                                    ; preds = %186
  %192 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !320
  %193 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %192, i32 0, i32 1, !dbg !321
  store i32 31153, i32* %193, align 8, !dbg !322
  br label %194, !dbg !320

; <label>:194:                                    ; preds = %191, %186
  %195 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !323
  %196 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %195, i32 0, i32 1, !dbg !325
  %197 = load i32, i32* %196, align 8, !dbg !325
  %198 = icmp eq i32 %197, 7247, !dbg !326
  br i1 %198, label %199, label %215, !dbg !327

; <label>:199:                                    ; preds = %194
  %200 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !328
  %201 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %200, i32 0, i32 2, !dbg !330
  %202 = load i32, i32* %201, align 4, !dbg !330
  %203 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @lseek to i32 (i32, i32, i32, ...)*)(i32 %202, i32 0, i32 1), !dbg !331
  %204 = sext i32 %203 to i64, !dbg !331
  %205 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !332
  %206 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %205, i32 0, i32 10, !dbg !333
  store i64 %204, i64* %206, align 8, !dbg !334
  %207 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !335
  %208 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %207, i32 0, i32 10, !dbg !337
  %209 = load i64, i64* %208, align 8, !dbg !337
  %210 = icmp eq i64 %209, -1, !dbg !338
  br i1 %210, label %211, label %214, !dbg !339

; <label>:211:                                    ; preds = %199
  %212 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !340
  %213 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %212, i32 0, i32 10, !dbg !342
  store i64 0, i64* %213, align 8, !dbg !343
  br label %214, !dbg !340

; <label>:214:                                    ; preds = %211, %199
  br label %215, !dbg !344

; <label>:215:                                    ; preds = %214, %194
  %216 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !345
  call void @gz_reset(%struct.gz_state* %216), !dbg !346
  %217 = load %struct.gz_state*, %struct.gz_state** %8, align 8, !dbg !347
  %218 = bitcast %struct.gz_state* %217 to %struct.gzFile_s*, !dbg !348
  store %struct.gzFile_s* %218, %struct.gzFile_s** %4, align 8, !dbg !349
  br label %219, !dbg !349

; <label>:219:                                    ; preds = %215, %180, %133, %115, %102, %71, %21, %15
  %220 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8, !dbg !350
  ret %struct.gzFile_s* %220, !dbg !350
}

; Function Attrs: nounwind uwtable
define %struct.gzFile_s* @gzopen64(i8*, i8*) #0 !dbg !351 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !352, metadata !93), !dbg !353
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !354, metadata !93), !dbg !355
  %5 = load i8*, i8** %3, align 8, !dbg !356
  %6 = load i8*, i8** %4, align 8, !dbg !357
  %7 = call %struct.gzFile_s* @gz_open(i8* %5, i32 -1, i8* %6), !dbg !358
  ret %struct.gzFile_s* %7, !dbg !359
}

; Function Attrs: nounwind uwtable
define %struct.gzFile_s* @gzdopen(i32, i8*) #0 !dbg !360 {
  %3 = alloca %struct.gzFile_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gzFile_s*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !363, metadata !93), !dbg !364
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !365, metadata !93), !dbg !366
  call void @llvm.dbg.declare(metadata i8** %6, metadata !367, metadata !93), !dbg !368
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %7, metadata !369, metadata !93), !dbg !370
  %8 = load i32, i32* %4, align 4, !dbg !371
  %9 = icmp eq i32 %8, -1, !dbg !373
  br i1 %9, label %13, label %10, !dbg !374

; <label>:10:                                     ; preds = %2
  %11 = call noalias i8* @malloc(i64 19) #5, !dbg !375
  store i8* %11, i8** %6, align 8, !dbg !377
  %12 = icmp eq i8* %11, null, !dbg !378
  br i1 %12, label %13, label %14, !dbg !379

; <label>:13:                                     ; preds = %10, %2
  store %struct.gzFile_s* null, %struct.gzFile_s** %3, align 8, !dbg !380
  br label %24, !dbg !380

; <label>:14:                                     ; preds = %10
  %15 = load i8*, i8** %6, align 8, !dbg !381
  %16 = load i32, i32* %4, align 4, !dbg !382
  %17 = call i32 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 %16) #5, !dbg !383
  %18 = load i8*, i8** %6, align 8, !dbg !384
  %19 = load i32, i32* %4, align 4, !dbg !385
  %20 = load i8*, i8** %5, align 8, !dbg !386
  %21 = call %struct.gzFile_s* @gz_open(i8* %18, i32 %19, i8* %20), !dbg !387
  store %struct.gzFile_s* %21, %struct.gzFile_s** %7, align 8, !dbg !388
  %22 = load i8*, i8** %6, align 8, !dbg !389
  call void @free(i8* %22) #5, !dbg !390
  %23 = load %struct.gzFile_s*, %struct.gzFile_s** %7, align 8, !dbg !391
  store %struct.gzFile_s* %23, %struct.gzFile_s** %3, align 8, !dbg !392
  br label %24, !dbg !392

; <label>:24:                                     ; preds = %14, %13
  %25 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !393
  ret %struct.gzFile_s* %25, !dbg !393
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @gzbuffer(%struct.gzFile_s*, i32) #0 !dbg !394 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gzFile_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %4, metadata !397, metadata !93), !dbg !398
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !399, metadata !93), !dbg !400
  call void @llvm.dbg.declare(metadata %struct.gz_state** %6, metadata !401, metadata !93), !dbg !402
  %7 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8, !dbg !403
  %8 = icmp eq %struct.gzFile_s* %7, null, !dbg !405
  br i1 %8, label %9, label %10, !dbg !406

; <label>:9:                                      ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !407
  br label %37, !dbg !407

; <label>:10:                                     ; preds = %2
  %11 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8, !dbg !408
  %12 = bitcast %struct.gzFile_s* %11 to %struct.gz_state*, !dbg !409
  store %struct.gz_state* %12, %struct.gz_state** %6, align 8, !dbg !410
  %13 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !411
  %14 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %13, i32 0, i32 1, !dbg !413
  %15 = load i32, i32* %14, align 8, !dbg !413
  %16 = icmp ne i32 %15, 7247, !dbg !414
  br i1 %16, label %17, label %23, !dbg !415

; <label>:17:                                     ; preds = %10
  %18 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !416
  %19 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %18, i32 0, i32 1, !dbg !418
  %20 = load i32, i32* %19, align 8, !dbg !418
  %21 = icmp ne i32 %20, 31153, !dbg !419
  br i1 %21, label %22, label %23, !dbg !420

; <label>:22:                                     ; preds = %17
  store i32 -1, i32* %3, align 4, !dbg !421
  br label %37, !dbg !421

; <label>:23:                                     ; preds = %17, %10
  %24 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !422
  %25 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %24, i32 0, i32 4, !dbg !424
  %26 = load i32, i32* %25, align 8, !dbg !424
  %27 = icmp ne i32 %26, 0, !dbg !425
  br i1 %27, label %28, label %29, !dbg !426

; <label>:28:                                     ; preds = %23
  store i32 -1, i32* %3, align 4, !dbg !427
  br label %37, !dbg !427

; <label>:29:                                     ; preds = %23
  %30 = load i32, i32* %5, align 4, !dbg !428
  %31 = icmp ult i32 %30, 2, !dbg !430
  br i1 %31, label %32, label %33, !dbg !431

; <label>:32:                                     ; preds = %29
  store i32 2, i32* %5, align 4, !dbg !432
  br label %33, !dbg !433

; <label>:33:                                     ; preds = %32, %29
  %34 = load i32, i32* %5, align 4, !dbg !434
  %35 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !435
  %36 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %35, i32 0, i32 5, !dbg !436
  store i32 %34, i32* %36, align 4, !dbg !437
  store i32 0, i32* %3, align 4, !dbg !438
  br label %37, !dbg !438

; <label>:37:                                     ; preds = %33, %28, %22, %9
  %38 = load i32, i32* %3, align 4, !dbg !439
  ret i32 %38, !dbg !439
}

; Function Attrs: nounwind uwtable
define i32 @gzrewind(%struct.gzFile_s*) #0 !dbg !440 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gzFile_s*, align 8
  %4 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %3, metadata !443, metadata !93), !dbg !444
  call void @llvm.dbg.declare(metadata %struct.gz_state** %4, metadata !445, metadata !93), !dbg !446
  %5 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !447
  %6 = icmp eq %struct.gzFile_s* %5, null, !dbg !449
  br i1 %6, label %7, label %8, !dbg !450

; <label>:7:                                      ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !451
  br label %38, !dbg !451

; <label>:8:                                      ; preds = %1
  %9 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !452
  %10 = bitcast %struct.gzFile_s* %9 to %struct.gz_state*, !dbg !453
  store %struct.gz_state* %10, %struct.gz_state** %4, align 8, !dbg !454
  %11 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !455
  %12 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %11, i32 0, i32 1, !dbg !457
  %13 = load i32, i32* %12, align 8, !dbg !457
  %14 = icmp ne i32 %13, 7247, !dbg !458
  br i1 %14, label %25, label %15, !dbg !459

; <label>:15:                                     ; preds = %8
  %16 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !460
  %17 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %16, i32 0, i32 17, !dbg !461
  %18 = load i32, i32* %17, align 4, !dbg !461
  %19 = icmp ne i32 %18, 0, !dbg !462
  br i1 %19, label %20, label %26, !dbg !463

; <label>:20:                                     ; preds = %15
  %21 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !464
  %22 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %21, i32 0, i32 17, !dbg !466
  %23 = load i32, i32* %22, align 4, !dbg !466
  %24 = icmp ne i32 %23, -5, !dbg !467
  br i1 %24, label %25, label %26, !dbg !468

; <label>:25:                                     ; preds = %20, %8
  store i32 -1, i32* %2, align 4, !dbg !470
  br label %38, !dbg !470

; <label>:26:                                     ; preds = %20, %15
  %27 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !471
  %28 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %27, i32 0, i32 2, !dbg !473
  %29 = load i32, i32* %28, align 4, !dbg !473
  %30 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !474
  %31 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %30, i32 0, i32 10, !dbg !475
  %32 = load i64, i64* %31, align 8, !dbg !475
  %33 = call i32 (i32, i64, i32, ...) bitcast (i32 (...)* @lseek to i32 (i32, i64, i32, ...)*)(i32 %29, i64 %32, i32 0), !dbg !476
  %34 = icmp eq i32 %33, -1, !dbg !477
  br i1 %34, label %35, label %36, !dbg !478

; <label>:35:                                     ; preds = %26
  store i32 -1, i32* %2, align 4, !dbg !479
  br label %38, !dbg !479

; <label>:36:                                     ; preds = %26
  %37 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !480
  call void @gz_reset(%struct.gz_state* %37), !dbg !481
  store i32 0, i32* %2, align 4, !dbg !482
  br label %38, !dbg !482

; <label>:38:                                     ; preds = %36, %35, %25, %7
  %39 = load i32, i32* %2, align 4, !dbg !483
  ret i32 %39, !dbg !483
}

declare i32 @lseek(...) #3

; Function Attrs: nounwind uwtable
define internal void @gz_reset(%struct.gz_state*) #0 !dbg !484 {
  %2 = alloca %struct.gz_state*, align 8
  store %struct.gz_state* %0, %struct.gz_state** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.gz_state** %2, metadata !487, metadata !93), !dbg !488
  %3 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !489
  %4 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %3, i32 0, i32 0, !dbg !490
  %5 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %4, i32 0, i32 0, !dbg !491
  store i32 0, i32* %5, align 8, !dbg !492
  %6 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !493
  %7 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %6, i32 0, i32 1, !dbg !495
  %8 = load i32, i32* %7, align 8, !dbg !495
  %9 = icmp eq i32 %8, 7247, !dbg !496
  br i1 %9, label %10, label %17, !dbg !497

; <label>:10:                                     ; preds = %1
  %11 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !498
  %12 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %11, i32 0, i32 11, !dbg !500
  store i32 0, i32* %12, align 8, !dbg !501
  %13 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !502
  %14 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %13, i32 0, i32 12, !dbg !503
  store i32 0, i32* %14, align 4, !dbg !504
  %15 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !505
  %16 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %15, i32 0, i32 9, !dbg !506
  store i32 0, i32* %16, align 4, !dbg !507
  br label %17, !dbg !508

; <label>:17:                                     ; preds = %10, %1
  %18 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !509
  %19 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %18, i32 0, i32 16, !dbg !510
  store i32 0, i32* %19, align 8, !dbg !511
  %20 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !512
  call void @gz_error(%struct.gz_state* %20, i32 0, i8* null), !dbg !513
  %21 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !514
  %22 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %21, i32 0, i32 0, !dbg !515
  %23 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %22, i32 0, i32 2, !dbg !516
  store i64 0, i64* %23, align 8, !dbg !517
  %24 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !518
  %25 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %24, i32 0, i32 19, !dbg !519
  %26 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %25, i32 0, i32 1, !dbg !520
  store i32 0, i32* %26, align 8, !dbg !521
  ret void, !dbg !522
}

; Function Attrs: nounwind uwtable
define i64 @gzseek64(%struct.gzFile_s*, i64, i32) #0 !dbg !523 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.gzFile_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %5, metadata !526, metadata !93), !dbg !527
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !528, metadata !93), !dbg !529
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !530, metadata !93), !dbg !531
  call void @llvm.dbg.declare(metadata i32* %8, metadata !532, metadata !93), !dbg !533
  call void @llvm.dbg.declare(metadata i64* %9, metadata !534, metadata !93), !dbg !535
  call void @llvm.dbg.declare(metadata %struct.gz_state** %10, metadata !536, metadata !93), !dbg !537
  %11 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8, !dbg !538
  %12 = icmp eq %struct.gzFile_s* %11, null, !dbg !540
  br i1 %12, label %13, label %14, !dbg !541

; <label>:13:                                     ; preds = %3
  store i64 -1, i64* %4, align 8, !dbg !542
  br label %215, !dbg !542

; <label>:14:                                     ; preds = %3
  %15 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8, !dbg !543
  %16 = bitcast %struct.gzFile_s* %15 to %struct.gz_state*, !dbg !544
  store %struct.gz_state* %16, %struct.gz_state** %10, align 8, !dbg !545
  %17 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !546
  %18 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %17, i32 0, i32 1, !dbg !548
  %19 = load i32, i32* %18, align 8, !dbg !548
  %20 = icmp ne i32 %19, 7247, !dbg !549
  br i1 %20, label %21, label %27, !dbg !550

; <label>:21:                                     ; preds = %14
  %22 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !551
  %23 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %22, i32 0, i32 1, !dbg !553
  %24 = load i32, i32* %23, align 8, !dbg !553
  %25 = icmp ne i32 %24, 31153, !dbg !554
  br i1 %25, label %26, label %27, !dbg !555

; <label>:26:                                     ; preds = %21
  store i64 -1, i64* %4, align 8, !dbg !556
  br label %215, !dbg !556

; <label>:27:                                     ; preds = %21, %14
  %28 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !557
  %29 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %28, i32 0, i32 17, !dbg !559
  %30 = load i32, i32* %29, align 4, !dbg !559
  %31 = icmp ne i32 %30, 0, !dbg !560
  br i1 %31, label %32, label %38, !dbg !561

; <label>:32:                                     ; preds = %27
  %33 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !562
  %34 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %33, i32 0, i32 17, !dbg !564
  %35 = load i32, i32* %34, align 4, !dbg !564
  %36 = icmp ne i32 %35, -5, !dbg !565
  br i1 %36, label %37, label %38, !dbg !566

; <label>:37:                                     ; preds = %32
  store i64 -1, i64* %4, align 8, !dbg !567
  br label %215, !dbg !567

; <label>:38:                                     ; preds = %32, %27
  %39 = load i32, i32* %7, align 4, !dbg !568
  %40 = icmp ne i32 %39, 0, !dbg !570
  br i1 %40, label %41, label %45, !dbg !571

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* %7, align 4, !dbg !572
  %43 = icmp ne i32 %42, 1, !dbg !574
  br i1 %43, label %44, label %45, !dbg !575

; <label>:44:                                     ; preds = %41
  store i64 -1, i64* %4, align 8, !dbg !576
  br label %215, !dbg !576

; <label>:45:                                     ; preds = %41, %38
  %46 = load i32, i32* %7, align 4, !dbg !577
  %47 = icmp eq i32 %46, 0, !dbg !579
  br i1 %47, label %48, label %55, !dbg !580

; <label>:48:                                     ; preds = %45
  %49 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !581
  %50 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %49, i32 0, i32 0, !dbg !582
  %51 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %50, i32 0, i32 2, !dbg !583
  %52 = load i64, i64* %51, align 8, !dbg !583
  %53 = load i64, i64* %6, align 8, !dbg !584
  %54 = sub nsw i64 %53, %52, !dbg !584
  store i64 %54, i64* %6, align 8, !dbg !584
  br label %67, !dbg !585

; <label>:55:                                     ; preds = %45
  %56 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !586
  %57 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %56, i32 0, i32 16, !dbg !588
  %58 = load i32, i32* %57, align 8, !dbg !588
  %59 = icmp ne i32 %58, 0, !dbg !586
  br i1 %59, label %60, label %66, !dbg !589

; <label>:60:                                     ; preds = %55
  %61 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !590
  %62 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %61, i32 0, i32 15, !dbg !591
  %63 = load i64, i64* %62, align 8, !dbg !591
  %64 = load i64, i64* %6, align 8, !dbg !592
  %65 = add nsw i64 %64, %63, !dbg !592
  store i64 %65, i64* %6, align 8, !dbg !592
  br label %66, !dbg !593

; <label>:66:                                     ; preds = %60, %55
  br label %67

; <label>:67:                                     ; preds = %66, %48
  %68 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !594
  %69 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %68, i32 0, i32 16, !dbg !595
  store i32 0, i32* %69, align 8, !dbg !596
  %70 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !597
  %71 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %70, i32 0, i32 1, !dbg !599
  %72 = load i32, i32* %71, align 8, !dbg !599
  %73 = icmp eq i32 %72, 7247, !dbg !600
  br i1 %73, label %74, label %127, !dbg !601

; <label>:74:                                     ; preds = %67
  %75 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !602
  %76 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %75, i32 0, i32 9, !dbg !604
  %77 = load i32, i32* %76, align 4, !dbg !604
  %78 = icmp eq i32 %77, 1, !dbg !605
  br i1 %78, label %79, label %127, !dbg !606

; <label>:79:                                     ; preds = %74
  %80 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !607
  %81 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %80, i32 0, i32 0, !dbg !608
  %82 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %81, i32 0, i32 2, !dbg !609
  %83 = load i64, i64* %82, align 8, !dbg !609
  %84 = load i64, i64* %6, align 8, !dbg !610
  %85 = add nsw i64 %83, %84, !dbg !611
  %86 = icmp sge i64 %85, 0, !dbg !612
  br i1 %86, label %87, label %127, !dbg !613

; <label>:87:                                     ; preds = %79
  %88 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !615
  %89 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %88, i32 0, i32 2, !dbg !617
  %90 = load i32, i32* %89, align 4, !dbg !617
  %91 = load i64, i64* %6, align 8, !dbg !618
  %92 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !619
  %93 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %92, i32 0, i32 0, !dbg !620
  %94 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %93, i32 0, i32 0, !dbg !621
  %95 = load i32, i32* %94, align 8, !dbg !621
  %96 = zext i32 %95 to i64, !dbg !619
  %97 = sub nsw i64 %91, %96, !dbg !622
  %98 = call i32 (i32, i64, i32, ...) bitcast (i32 (...)* @lseek to i32 (i32, i64, i32, ...)*)(i32 %90, i64 %97, i32 1), !dbg !623
  %99 = sext i32 %98 to i64, !dbg !623
  store i64 %99, i64* %9, align 8, !dbg !624
  %100 = load i64, i64* %9, align 8, !dbg !625
  %101 = icmp eq i64 %100, -1, !dbg !627
  br i1 %101, label %102, label %103, !dbg !628

; <label>:102:                                    ; preds = %87
  store i64 -1, i64* %4, align 8, !dbg !629
  br label %215, !dbg !629

; <label>:103:                                    ; preds = %87
  %104 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !630
  %105 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %104, i32 0, i32 0, !dbg !631
  %106 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %105, i32 0, i32 0, !dbg !632
  store i32 0, i32* %106, align 8, !dbg !633
  %107 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !634
  %108 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %107, i32 0, i32 11, !dbg !635
  store i32 0, i32* %108, align 8, !dbg !636
  %109 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !637
  %110 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %109, i32 0, i32 12, !dbg !638
  store i32 0, i32* %110, align 4, !dbg !639
  %111 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !640
  %112 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %111, i32 0, i32 16, !dbg !641
  store i32 0, i32* %112, align 8, !dbg !642
  %113 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !643
  call void @gz_error(%struct.gz_state* %113, i32 0, i8* null), !dbg !644
  %114 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !645
  %115 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %114, i32 0, i32 19, !dbg !646
  %116 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %115, i32 0, i32 1, !dbg !647
  store i32 0, i32* %116, align 8, !dbg !648
  %117 = load i64, i64* %6, align 8, !dbg !649
  %118 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !650
  %119 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %118, i32 0, i32 0, !dbg !651
  %120 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %119, i32 0, i32 2, !dbg !652
  %121 = load i64, i64* %120, align 8, !dbg !653
  %122 = add nsw i64 %121, %117, !dbg !653
  store i64 %122, i64* %120, align 8, !dbg !653
  %123 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !654
  %124 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %123, i32 0, i32 0, !dbg !655
  %125 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %124, i32 0, i32 2, !dbg !656
  %126 = load i64, i64* %125, align 8, !dbg !656
  store i64 %126, i64* %4, align 8, !dbg !657
  br label %215, !dbg !657

; <label>:127:                                    ; preds = %79, %74, %67
  %128 = load i64, i64* %6, align 8, !dbg !658
  %129 = icmp slt i64 %128, 0, !dbg !660
  br i1 %129, label %130, label %152, !dbg !661

; <label>:130:                                    ; preds = %127
  %131 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !662
  %132 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %131, i32 0, i32 1, !dbg !665
  %133 = load i32, i32* %132, align 8, !dbg !665
  %134 = icmp ne i32 %133, 7247, !dbg !666
  br i1 %134, label %135, label %136, !dbg !667

; <label>:135:                                    ; preds = %130
  store i64 -1, i64* %4, align 8, !dbg !668
  br label %215, !dbg !668

; <label>:136:                                    ; preds = %130
  %137 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !669
  %138 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %137, i32 0, i32 0, !dbg !670
  %139 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %138, i32 0, i32 2, !dbg !671
  %140 = load i64, i64* %139, align 8, !dbg !671
  %141 = load i64, i64* %6, align 8, !dbg !672
  %142 = add nsw i64 %141, %140, !dbg !672
  store i64 %142, i64* %6, align 8, !dbg !672
  %143 = load i64, i64* %6, align 8, !dbg !673
  %144 = icmp slt i64 %143, 0, !dbg !675
  br i1 %144, label %145, label %146, !dbg !676

; <label>:145:                                    ; preds = %136
  store i64 -1, i64* %4, align 8, !dbg !677
  br label %215, !dbg !677

; <label>:146:                                    ; preds = %136
  %147 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8, !dbg !678
  %148 = call i32 @gzrewind(%struct.gzFile_s* %147), !dbg !680
  %149 = icmp eq i32 %148, -1, !dbg !681
  br i1 %149, label %150, label %151, !dbg !682

; <label>:150:                                    ; preds = %146
  store i64 -1, i64* %4, align 8, !dbg !683
  br label %215, !dbg !683

; <label>:151:                                    ; preds = %146
  br label %152, !dbg !684

; <label>:152:                                    ; preds = %151, %127
  %153 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !685
  %154 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %153, i32 0, i32 1, !dbg !687
  %155 = load i32, i32* %154, align 8, !dbg !687
  %156 = icmp eq i32 %155, 7247, !dbg !688
  br i1 %156, label %157, label %199, !dbg !689

; <label>:157:                                    ; preds = %152
  %158 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !690
  %159 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %158, i32 0, i32 0, !dbg !692
  %160 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %159, i32 0, i32 0, !dbg !693
  %161 = load i32, i32* %160, align 8, !dbg !693
  %162 = zext i32 %161 to i64, !dbg !694
  %163 = load i64, i64* %6, align 8, !dbg !695
  %164 = icmp sgt i64 %162, %163, !dbg !696
  br i1 %164, label %165, label %168, !dbg !697

; <label>:165:                                    ; preds = %157
  %166 = load i64, i64* %6, align 8, !dbg !698
  %167 = trunc i64 %166 to i32, !dbg !699
  br label %173, !dbg !700

; <label>:168:                                    ; preds = %157
  %169 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !702
  %170 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %169, i32 0, i32 0, !dbg !703
  %171 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %170, i32 0, i32 0, !dbg !704
  %172 = load i32, i32* %171, align 8, !dbg !704
  br label %173, !dbg !705

; <label>:173:                                    ; preds = %168, %165
  %174 = phi i32 [ %167, %165 ], [ %172, %168 ], !dbg !707
  store i32 %174, i32* %8, align 4, !dbg !709
  %175 = load i32, i32* %8, align 4, !dbg !710
  %176 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !711
  %177 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %176, i32 0, i32 0, !dbg !712
  %178 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %177, i32 0, i32 0, !dbg !713
  %179 = load i32, i32* %178, align 8, !dbg !714
  %180 = sub i32 %179, %175, !dbg !714
  store i32 %180, i32* %178, align 8, !dbg !714
  %181 = load i32, i32* %8, align 4, !dbg !715
  %182 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !716
  %183 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %182, i32 0, i32 0, !dbg !717
  %184 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %183, i32 0, i32 1, !dbg !718
  %185 = load i8*, i8** %184, align 8, !dbg !719
  %186 = zext i32 %181 to i64, !dbg !719
  %187 = getelementptr inbounds i8, i8* %185, i64 %186, !dbg !719
  store i8* %187, i8** %184, align 8, !dbg !719
  %188 = load i32, i32* %8, align 4, !dbg !720
  %189 = zext i32 %188 to i64, !dbg !720
  %190 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !721
  %191 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %190, i32 0, i32 0, !dbg !722
  %192 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %191, i32 0, i32 2, !dbg !723
  %193 = load i64, i64* %192, align 8, !dbg !724
  %194 = add nsw i64 %193, %189, !dbg !724
  store i64 %194, i64* %192, align 8, !dbg !724
  %195 = load i32, i32* %8, align 4, !dbg !725
  %196 = zext i32 %195 to i64, !dbg !725
  %197 = load i64, i64* %6, align 8, !dbg !726
  %198 = sub nsw i64 %197, %196, !dbg !726
  store i64 %198, i64* %6, align 8, !dbg !726
  br label %199, !dbg !727

; <label>:199:                                    ; preds = %173, %152
  %200 = load i64, i64* %6, align 8, !dbg !728
  %201 = icmp ne i64 %200, 0, !dbg !728
  br i1 %201, label %202, label %208, !dbg !730

; <label>:202:                                    ; preds = %199
  %203 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !731
  %204 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %203, i32 0, i32 16, !dbg !733
  store i32 1, i32* %204, align 8, !dbg !734
  %205 = load i64, i64* %6, align 8, !dbg !735
  %206 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !736
  %207 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %206, i32 0, i32 15, !dbg !737
  store i64 %205, i64* %207, align 8, !dbg !738
  br label %208, !dbg !739

; <label>:208:                                    ; preds = %202, %199
  %209 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !740
  %210 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %209, i32 0, i32 0, !dbg !741
  %211 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %210, i32 0, i32 2, !dbg !742
  %212 = load i64, i64* %211, align 8, !dbg !742
  %213 = load i64, i64* %6, align 8, !dbg !743
  %214 = add nsw i64 %212, %213, !dbg !744
  store i64 %214, i64* %4, align 8, !dbg !745
  br label %215, !dbg !745

; <label>:215:                                    ; preds = %208, %150, %145, %135, %103, %102, %44, %37, %26, %13
  %216 = load i64, i64* %4, align 8, !dbg !746
  ret i64 %216, !dbg !746
}

; Function Attrs: nounwind uwtable
define void @gz_error(%struct.gz_state*, i32, i8*) #0 !dbg !747 {
  %4 = alloca %struct.gz_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.gz_state* %0, %struct.gz_state** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gz_state** %4, metadata !750, metadata !93), !dbg !751
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !752, metadata !93), !dbg !753
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !754, metadata !93), !dbg !755
  %7 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !756
  %8 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %7, i32 0, i32 18, !dbg !758
  %9 = load i8*, i8** %8, align 8, !dbg !758
  %10 = icmp ne i8* %9, null, !dbg !759
  br i1 %10, label %11, label %23, !dbg !760

; <label>:11:                                     ; preds = %3
  %12 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !761
  %13 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %12, i32 0, i32 17, !dbg !764
  %14 = load i32, i32* %13, align 4, !dbg !764
  %15 = icmp ne i32 %14, -4, !dbg !765
  br i1 %15, label %16, label %20, !dbg !766

; <label>:16:                                     ; preds = %11
  %17 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !767
  %18 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %17, i32 0, i32 18, !dbg !768
  %19 = load i8*, i8** %18, align 8, !dbg !768
  call void @free(i8* %19) #5, !dbg !769
  br label %20, !dbg !769

; <label>:20:                                     ; preds = %16, %11
  %21 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !770
  %22 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %21, i32 0, i32 18, !dbg !771
  store i8* null, i8** %22, align 8, !dbg !772
  br label %23, !dbg !773

; <label>:23:                                     ; preds = %20, %3
  %24 = load i32, i32* %5, align 4, !dbg !774
  %25 = icmp ne i32 %24, 0, !dbg !776
  br i1 %25, label %26, label %33, !dbg !777

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %5, align 4, !dbg !778
  %28 = icmp ne i32 %27, -5, !dbg !780
  br i1 %28, label %29, label %33, !dbg !781

; <label>:29:                                     ; preds = %26
  %30 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !782
  %31 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %30, i32 0, i32 0, !dbg !783
  %32 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %31, i32 0, i32 0, !dbg !784
  store i32 0, i32* %32, align 8, !dbg !785
  br label %33, !dbg !782

; <label>:33:                                     ; preds = %29, %26, %23
  %34 = load i32, i32* %5, align 4, !dbg !786
  %35 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !787
  %36 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %35, i32 0, i32 17, !dbg !788
  store i32 %34, i32* %36, align 4, !dbg !789
  %37 = load i8*, i8** %6, align 8, !dbg !790
  %38 = icmp eq i8* %37, null, !dbg !792
  br i1 %38, label %39, label %40, !dbg !793

; <label>:39:                                     ; preds = %33
  br label %82, !dbg !794

; <label>:40:                                     ; preds = %33
  %41 = load i32, i32* %5, align 4, !dbg !795
  %42 = icmp eq i32 %41, -4, !dbg !797
  br i1 %42, label %43, label %47, !dbg !798

; <label>:43:                                     ; preds = %40
  %44 = load i8*, i8** %6, align 8, !dbg !799
  %45 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !801
  %46 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %45, i32 0, i32 18, !dbg !802
  store i8* %44, i8** %46, align 8, !dbg !803
  br label %82, !dbg !804

; <label>:47:                                     ; preds = %40
  %48 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !805
  %49 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %48, i32 0, i32 3, !dbg !807
  %50 = load i8*, i8** %49, align 8, !dbg !807
  %51 = call i64 @strlen(i8* %50) #6, !dbg !808
  %52 = load i8*, i8** %6, align 8, !dbg !809
  %53 = call i64 @strlen(i8* %52) #6, !dbg !810
  %54 = add i64 %51, %53, !dbg !812
  %55 = add i64 %54, 3, !dbg !813
  %56 = call noalias i8* @malloc(i64 %55) #5, !dbg !814
  %57 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !816
  %58 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %57, i32 0, i32 18, !dbg !817
  store i8* %56, i8** %58, align 8, !dbg !818
  %59 = icmp eq i8* %56, null, !dbg !819
  br i1 %59, label %60, label %65, !dbg !820

; <label>:60:                                     ; preds = %47
  %61 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !821
  %62 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %61, i32 0, i32 17, !dbg !823
  store i32 -4, i32* %62, align 4, !dbg !824
  %63 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !825
  %64 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %63, i32 0, i32 18, !dbg !826
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8** %64, align 8, !dbg !827
  br label %82, !dbg !828

; <label>:65:                                     ; preds = %47
  %66 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !829
  %67 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %66, i32 0, i32 18, !dbg !830
  %68 = load i8*, i8** %67, align 8, !dbg !830
  %69 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !831
  %70 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %69, i32 0, i32 3, !dbg !832
  %71 = load i8*, i8** %70, align 8, !dbg !832
  %72 = call i8* @strcpy(i8* %68, i8* %71) #5, !dbg !833
  %73 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !834
  %74 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %73, i32 0, i32 18, !dbg !835
  %75 = load i8*, i8** %74, align 8, !dbg !835
  %76 = call i8* @strcat(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #5, !dbg !836
  %77 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !837
  %78 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %77, i32 0, i32 18, !dbg !838
  %79 = load i8*, i8** %78, align 8, !dbg !838
  %80 = load i8*, i8** %6, align 8, !dbg !839
  %81 = call i8* @strcat(i8* %79, i8* %80) #5, !dbg !840
  br label %82, !dbg !841

; <label>:82:                                     ; preds = %65, %60, %43, %39
  ret void, !dbg !842
}

; Function Attrs: nounwind uwtable
define i64 @gzseek(%struct.gzFile_s*, i64, i32) #0 !dbg !843 {
  %4 = alloca %struct.gzFile_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %4, metadata !844, metadata !93), !dbg !845
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !846, metadata !93), !dbg !847
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !848, metadata !93), !dbg !849
  call void @llvm.dbg.declare(metadata i64* %7, metadata !850, metadata !93), !dbg !851
  %8 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8, !dbg !852
  %9 = load i64, i64* %5, align 8, !dbg !853
  %10 = load i32, i32* %6, align 4, !dbg !854
  %11 = call i64 @gzseek64(%struct.gzFile_s* %8, i64 %9, i32 %10), !dbg !855
  store i64 %11, i64* %7, align 8, !dbg !856
  %12 = load i64, i64* %7, align 8, !dbg !857
  %13 = load i64, i64* %7, align 8, !dbg !858
  %14 = icmp eq i64 %12, %13, !dbg !859
  br i1 %14, label %15, label %17, !dbg !857

; <label>:15:                                     ; preds = %3
  %16 = load i64, i64* %7, align 8, !dbg !860
  br label %18, !dbg !862

; <label>:17:                                     ; preds = %3
  br label %18, !dbg !863

; <label>:18:                                     ; preds = %17, %15
  %19 = phi i64 [ %16, %15 ], [ -1, %17 ], !dbg !865
  ret i64 %19, !dbg !867
}

; Function Attrs: nounwind uwtable
define i64 @gztell64(%struct.gzFile_s*) #0 !dbg !868 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.gzFile_s*, align 8
  %4 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %3, metadata !871, metadata !93), !dbg !872
  call void @llvm.dbg.declare(metadata %struct.gz_state** %4, metadata !873, metadata !93), !dbg !874
  %5 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !875
  %6 = icmp eq %struct.gzFile_s* %5, null, !dbg !877
  br i1 %6, label %7, label %8, !dbg !878

; <label>:7:                                      ; preds = %1
  store i64 -1, i64* %2, align 8, !dbg !879
  br label %38, !dbg !879

; <label>:8:                                      ; preds = %1
  %9 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !880
  %10 = bitcast %struct.gzFile_s* %9 to %struct.gz_state*, !dbg !881
  store %struct.gz_state* %10, %struct.gz_state** %4, align 8, !dbg !882
  %11 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !883
  %12 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %11, i32 0, i32 1, !dbg !885
  %13 = load i32, i32* %12, align 8, !dbg !885
  %14 = icmp ne i32 %13, 7247, !dbg !886
  br i1 %14, label %15, label %21, !dbg !887

; <label>:15:                                     ; preds = %8
  %16 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !888
  %17 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %16, i32 0, i32 1, !dbg !890
  %18 = load i32, i32* %17, align 8, !dbg !890
  %19 = icmp ne i32 %18, 31153, !dbg !891
  br i1 %19, label %20, label %21, !dbg !892

; <label>:20:                                     ; preds = %15
  store i64 -1, i64* %2, align 8, !dbg !893
  br label %38, !dbg !893

; <label>:21:                                     ; preds = %15, %8
  %22 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !894
  %23 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %22, i32 0, i32 0, !dbg !895
  %24 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %23, i32 0, i32 2, !dbg !896
  %25 = load i64, i64* %24, align 8, !dbg !896
  %26 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !897
  %27 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %26, i32 0, i32 16, !dbg !898
  %28 = load i32, i32* %27, align 8, !dbg !898
  %29 = icmp ne i32 %28, 0, !dbg !897
  br i1 %29, label %30, label %34, !dbg !897

; <label>:30:                                     ; preds = %21
  %31 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !899
  %32 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %31, i32 0, i32 15, !dbg !901
  %33 = load i64, i64* %32, align 8, !dbg !901
  br label %35, !dbg !902

; <label>:34:                                     ; preds = %21
  br label %35, !dbg !903

; <label>:35:                                     ; preds = %34, %30
  %36 = phi i64 [ %33, %30 ], [ 0, %34 ], !dbg !905
  %37 = add nsw i64 %25, %36, !dbg !907
  store i64 %37, i64* %2, align 8, !dbg !908
  br label %38, !dbg !908

; <label>:38:                                     ; preds = %35, %20, %7
  %39 = load i64, i64* %2, align 8, !dbg !909
  ret i64 %39, !dbg !909
}

; Function Attrs: nounwind uwtable
define i64 @gztell(%struct.gzFile_s*) #0 !dbg !910 {
  %2 = alloca %struct.gzFile_s*, align 8
  %3 = alloca i64, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %2, metadata !911, metadata !93), !dbg !912
  call void @llvm.dbg.declare(metadata i64* %3, metadata !913, metadata !93), !dbg !914
  %4 = load %struct.gzFile_s*, %struct.gzFile_s** %2, align 8, !dbg !915
  %5 = call i64 @gztell64(%struct.gzFile_s* %4), !dbg !916
  store i64 %5, i64* %3, align 8, !dbg !917
  %6 = load i64, i64* %3, align 8, !dbg !918
  %7 = load i64, i64* %3, align 8, !dbg !919
  %8 = icmp eq i64 %6, %7, !dbg !920
  br i1 %8, label %9, label %11, !dbg !918

; <label>:9:                                      ; preds = %1
  %10 = load i64, i64* %3, align 8, !dbg !921
  br label %12, !dbg !923

; <label>:11:                                     ; preds = %1
  br label %12, !dbg !924

; <label>:12:                                     ; preds = %11, %9
  %13 = phi i64 [ %10, %9 ], [ -1, %11 ], !dbg !926
  ret i64 %13, !dbg !928
}

; Function Attrs: nounwind uwtable
define i64 @gzoffset64(%struct.gzFile_s*) #0 !dbg !929 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.gzFile_s*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %3, metadata !930, metadata !93), !dbg !931
  call void @llvm.dbg.declare(metadata i64* %4, metadata !932, metadata !93), !dbg !933
  call void @llvm.dbg.declare(metadata %struct.gz_state** %5, metadata !934, metadata !93), !dbg !935
  %6 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !936
  %7 = icmp eq %struct.gzFile_s* %6, null, !dbg !938
  br i1 %7, label %8, label %9, !dbg !939

; <label>:8:                                      ; preds = %1
  store i64 -1, i64* %2, align 8, !dbg !940
  br label %46, !dbg !940

; <label>:9:                                      ; preds = %1
  %10 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !941
  %11 = bitcast %struct.gzFile_s* %10 to %struct.gz_state*, !dbg !942
  store %struct.gz_state* %11, %struct.gz_state** %5, align 8, !dbg !943
  %12 = load %struct.gz_state*, %struct.gz_state** %5, align 8, !dbg !944
  %13 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %12, i32 0, i32 1, !dbg !946
  %14 = load i32, i32* %13, align 8, !dbg !946
  %15 = icmp ne i32 %14, 7247, !dbg !947
  br i1 %15, label %16, label %22, !dbg !948

; <label>:16:                                     ; preds = %9
  %17 = load %struct.gz_state*, %struct.gz_state** %5, align 8, !dbg !949
  %18 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %17, i32 0, i32 1, !dbg !951
  %19 = load i32, i32* %18, align 8, !dbg !951
  %20 = icmp ne i32 %19, 31153, !dbg !952
  br i1 %20, label %21, label %22, !dbg !953

; <label>:21:                                     ; preds = %16
  store i64 -1, i64* %2, align 8, !dbg !954
  br label %46, !dbg !954

; <label>:22:                                     ; preds = %16, %9
  %23 = load %struct.gz_state*, %struct.gz_state** %5, align 8, !dbg !955
  %24 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %23, i32 0, i32 2, !dbg !956
  %25 = load i32, i32* %24, align 4, !dbg !956
  %26 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @lseek to i32 (i32, i32, i32, ...)*)(i32 %25, i32 0, i32 1), !dbg !957
  %27 = sext i32 %26 to i64, !dbg !957
  store i64 %27, i64* %4, align 8, !dbg !958
  %28 = load i64, i64* %4, align 8, !dbg !959
  %29 = icmp eq i64 %28, -1, !dbg !961
  br i1 %29, label %30, label %31, !dbg !962

; <label>:30:                                     ; preds = %22
  store i64 -1, i64* %2, align 8, !dbg !963
  br label %46, !dbg !963

; <label>:31:                                     ; preds = %22
  %32 = load %struct.gz_state*, %struct.gz_state** %5, align 8, !dbg !964
  %33 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %32, i32 0, i32 1, !dbg !966
  %34 = load i32, i32* %33, align 8, !dbg !966
  %35 = icmp eq i32 %34, 7247, !dbg !967
  br i1 %35, label %36, label %44, !dbg !968

; <label>:36:                                     ; preds = %31
  %37 = load %struct.gz_state*, %struct.gz_state** %5, align 8, !dbg !969
  %38 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %37, i32 0, i32 19, !dbg !970
  %39 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %38, i32 0, i32 1, !dbg !971
  %40 = load i32, i32* %39, align 8, !dbg !971
  %41 = zext i32 %40 to i64, !dbg !969
  %42 = load i64, i64* %4, align 8, !dbg !972
  %43 = sub nsw i64 %42, %41, !dbg !972
  store i64 %43, i64* %4, align 8, !dbg !972
  br label %44, !dbg !973

; <label>:44:                                     ; preds = %36, %31
  %45 = load i64, i64* %4, align 8, !dbg !974
  store i64 %45, i64* %2, align 8, !dbg !975
  br label %46, !dbg !975

; <label>:46:                                     ; preds = %44, %30, %21, %8
  %47 = load i64, i64* %2, align 8, !dbg !976
  ret i64 %47, !dbg !976
}

; Function Attrs: nounwind uwtable
define i64 @gzoffset(%struct.gzFile_s*) #0 !dbg !977 {
  %2 = alloca %struct.gzFile_s*, align 8
  %3 = alloca i64, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %2, metadata !978, metadata !93), !dbg !979
  call void @llvm.dbg.declare(metadata i64* %3, metadata !980, metadata !93), !dbg !981
  %4 = load %struct.gzFile_s*, %struct.gzFile_s** %2, align 8, !dbg !982
  %5 = call i64 @gzoffset64(%struct.gzFile_s* %4), !dbg !983
  store i64 %5, i64* %3, align 8, !dbg !984
  %6 = load i64, i64* %3, align 8, !dbg !985
  %7 = load i64, i64* %3, align 8, !dbg !986
  %8 = icmp eq i64 %6, %7, !dbg !987
  br i1 %8, label %9, label %11, !dbg !985

; <label>:9:                                      ; preds = %1
  %10 = load i64, i64* %3, align 8, !dbg !988
  br label %12, !dbg !990

; <label>:11:                                     ; preds = %1
  br label %12, !dbg !991

; <label>:12:                                     ; preds = %11, %9
  %13 = phi i64 [ %10, %9 ], [ -1, %11 ], !dbg !993
  ret i64 %13, !dbg !995
}

; Function Attrs: nounwind uwtable
define i32 @gzeof(%struct.gzFile_s*) #0 !dbg !996 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gzFile_s*, align 8
  %4 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %3, metadata !997, metadata !93), !dbg !998
  call void @llvm.dbg.declare(metadata %struct.gz_state** %4, metadata !999, metadata !93), !dbg !1000
  %5 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !1001
  %6 = icmp eq %struct.gzFile_s* %5, null, !dbg !1003
  br i1 %6, label %7, label %8, !dbg !1004

; <label>:7:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !1005
  br label %33, !dbg !1005

; <label>:8:                                      ; preds = %1
  %9 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !1006
  %10 = bitcast %struct.gzFile_s* %9 to %struct.gz_state*, !dbg !1007
  store %struct.gz_state* %10, %struct.gz_state** %4, align 8, !dbg !1008
  %11 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !1009
  %12 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %11, i32 0, i32 1, !dbg !1011
  %13 = load i32, i32* %12, align 8, !dbg !1011
  %14 = icmp ne i32 %13, 7247, !dbg !1012
  br i1 %14, label %15, label %21, !dbg !1013

; <label>:15:                                     ; preds = %8
  %16 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !1014
  %17 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %16, i32 0, i32 1, !dbg !1016
  %18 = load i32, i32* %17, align 8, !dbg !1016
  %19 = icmp ne i32 %18, 31153, !dbg !1017
  br i1 %19, label %20, label %21, !dbg !1018

; <label>:20:                                     ; preds = %15
  store i32 0, i32* %2, align 4, !dbg !1019
  br label %33, !dbg !1019

; <label>:21:                                     ; preds = %15, %8
  %22 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !1020
  %23 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %22, i32 0, i32 1, !dbg !1021
  %24 = load i32, i32* %23, align 8, !dbg !1021
  %25 = icmp eq i32 %24, 7247, !dbg !1022
  br i1 %25, label %26, label %30, !dbg !1020

; <label>:26:                                     ; preds = %21
  %27 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !1023
  %28 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %27, i32 0, i32 12, !dbg !1025
  %29 = load i32, i32* %28, align 4, !dbg !1025
  br label %31, !dbg !1026

; <label>:30:                                     ; preds = %21
  br label %31, !dbg !1027

; <label>:31:                                     ; preds = %30, %26
  %32 = phi i32 [ %29, %26 ], [ 0, %30 ], !dbg !1029
  store i32 %32, i32* %2, align 4, !dbg !1031
  br label %33, !dbg !1031

; <label>:33:                                     ; preds = %31, %20, %7
  %34 = load i32, i32* %2, align 4, !dbg !1032
  ret i32 %34, !dbg !1032
}

; Function Attrs: nounwind uwtable
define i8* @gzerror(%struct.gzFile_s*, i32*) #0 !dbg !1033 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.gzFile_s*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %4, metadata !1037, metadata !93), !dbg !1038
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1039, metadata !93), !dbg !1040
  call void @llvm.dbg.declare(metadata %struct.gz_state** %6, metadata !1041, metadata !93), !dbg !1042
  %7 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8, !dbg !1043
  %8 = icmp eq %struct.gzFile_s* %7, null, !dbg !1045
  br i1 %8, label %9, label %10, !dbg !1046

; <label>:9:                                      ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !1047
  br label %43, !dbg !1047

; <label>:10:                                     ; preds = %2
  %11 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8, !dbg !1048
  %12 = bitcast %struct.gzFile_s* %11 to %struct.gz_state*, !dbg !1049
  store %struct.gz_state* %12, %struct.gz_state** %6, align 8, !dbg !1050
  %13 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !1051
  %14 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %13, i32 0, i32 1, !dbg !1053
  %15 = load i32, i32* %14, align 8, !dbg !1053
  %16 = icmp ne i32 %15, 7247, !dbg !1054
  br i1 %16, label %17, label %23, !dbg !1055

; <label>:17:                                     ; preds = %10
  %18 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !1056
  %19 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %18, i32 0, i32 1, !dbg !1058
  %20 = load i32, i32* %19, align 8, !dbg !1058
  %21 = icmp ne i32 %20, 31153, !dbg !1059
  br i1 %21, label %22, label %23, !dbg !1060

; <label>:22:                                     ; preds = %17
  store i8* null, i8** %3, align 8, !dbg !1061
  br label %43, !dbg !1061

; <label>:23:                                     ; preds = %17, %10
  %24 = load i32*, i32** %5, align 8, !dbg !1062
  %25 = icmp ne i32* %24, null, !dbg !1064
  br i1 %25, label %26, label %31, !dbg !1065

; <label>:26:                                     ; preds = %23
  %27 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !1066
  %28 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %27, i32 0, i32 17, !dbg !1067
  %29 = load i32, i32* %28, align 4, !dbg !1067
  %30 = load i32*, i32** %5, align 8, !dbg !1068
  store i32 %29, i32* %30, align 4, !dbg !1069
  br label %31, !dbg !1070

; <label>:31:                                     ; preds = %26, %23
  %32 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !1071
  %33 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %32, i32 0, i32 18, !dbg !1072
  %34 = load i8*, i8** %33, align 8, !dbg !1072
  %35 = icmp eq i8* %34, null, !dbg !1073
  br i1 %35, label %36, label %37, !dbg !1071

; <label>:36:                                     ; preds = %31
  br label %41, !dbg !1074

; <label>:37:                                     ; preds = %31
  %38 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !1076
  %39 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %38, i32 0, i32 18, !dbg !1078
  %40 = load i8*, i8** %39, align 8, !dbg !1078
  br label %41, !dbg !1079

; <label>:41:                                     ; preds = %37, %36
  %42 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %36 ], [ %40, %37 ], !dbg !1080
  store i8* %42, i8** %3, align 8, !dbg !1082
  br label %43, !dbg !1082

; <label>:43:                                     ; preds = %41, %22, %9
  %44 = load i8*, i8** %3, align 8, !dbg !1083
  ret i8* %44, !dbg !1083
}

; Function Attrs: nounwind uwtable
define void @gzclearerr(%struct.gzFile_s*) #0 !dbg !1084 {
  %2 = alloca %struct.gzFile_s*, align 8
  %3 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %2, metadata !1087, metadata !93), !dbg !1088
  call void @llvm.dbg.declare(metadata %struct.gz_state** %3, metadata !1089, metadata !93), !dbg !1090
  %4 = load %struct.gzFile_s*, %struct.gzFile_s** %2, align 8, !dbg !1091
  %5 = icmp eq %struct.gzFile_s* %4, null, !dbg !1093
  br i1 %5, label %6, label %7, !dbg !1094

; <label>:6:                                      ; preds = %1
  br label %32, !dbg !1095

; <label>:7:                                      ; preds = %1
  %8 = load %struct.gzFile_s*, %struct.gzFile_s** %2, align 8, !dbg !1096
  %9 = bitcast %struct.gzFile_s* %8 to %struct.gz_state*, !dbg !1097
  store %struct.gz_state* %9, %struct.gz_state** %3, align 8, !dbg !1098
  %10 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1099
  %11 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %10, i32 0, i32 1, !dbg !1101
  %12 = load i32, i32* %11, align 8, !dbg !1101
  %13 = icmp ne i32 %12, 7247, !dbg !1102
  br i1 %13, label %14, label %20, !dbg !1103

; <label>:14:                                     ; preds = %7
  %15 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1104
  %16 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %15, i32 0, i32 1, !dbg !1106
  %17 = load i32, i32* %16, align 8, !dbg !1106
  %18 = icmp ne i32 %17, 31153, !dbg !1107
  br i1 %18, label %19, label %20, !dbg !1108

; <label>:19:                                     ; preds = %14
  br label %32, !dbg !1109

; <label>:20:                                     ; preds = %14, %7
  %21 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1110
  %22 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %21, i32 0, i32 1, !dbg !1112
  %23 = load i32, i32* %22, align 8, !dbg !1112
  %24 = icmp eq i32 %23, 7247, !dbg !1113
  br i1 %24, label %25, label %30, !dbg !1114

; <label>:25:                                     ; preds = %20
  %26 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1115
  %27 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %26, i32 0, i32 11, !dbg !1117
  store i32 0, i32* %27, align 8, !dbg !1118
  %28 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1119
  %29 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %28, i32 0, i32 12, !dbg !1120
  store i32 0, i32* %29, align 4, !dbg !1121
  br label %30, !dbg !1122

; <label>:30:                                     ; preds = %25, %20
  %31 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1123
  call void @gz_error(%struct.gz_state* %31, i32 0, i8* null), !dbg !1124
  br label %32, !dbg !1125

; <label>:32:                                     ; preds = %30, %19, %6
  ret void, !dbg !1126
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

declare i32 @open(i8*, i32, ...) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!83, !84}
!llvm.ident = !{!85}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "[inter]third-party--zlib-1.2.7--gzlib.o.i", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!2 = !{}
!3 = !{!4, !5, !21, !16, !26, !81}
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
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "gzFile", file: !13, line: 1207, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!83 = !{i32 2, !"Dwarf Version", i32 4}
!84 = !{i32 2, !"Debug Info Version", i32 3}
!85 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!86 = distinct !DISubprogram(name: "gzopen", scope: !87, file: !87, line: 262, type: !88, isLocal: false, isDefinition: true, scopeLine: 265, isOptimized: false, unit: !0, variables: !2)
!87 = !DIFile(filename: "gzlib.c", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!88 = !DISubroutineType(types: !89)
!89 = !{!81, !90, !90}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!92 = !DILocalVariable(name: "path", arg: 1, scope: !86, file: !87, line: 263, type: !90)
!93 = !DIExpression()
!94 = !DILocation(line: 263, column: 17, scope: !86)
!95 = !DILocalVariable(name: "mode", arg: 2, scope: !86, file: !87, line: 264, type: !90)
!96 = !DILocation(line: 264, column: 17, scope: !86)
!97 = !DILocation(line: 266, column: 20, scope: !86)
!98 = !DILocation(line: 266, column: 30, scope: !86)
!99 = !DILocation(line: 266, column: 12, scope: !86)
!100 = !DILocation(line: 266, column: 5, scope: !86)
!101 = distinct !DISubprogram(name: "gz_open", scope: !87, file: !87, line: 91, type: !102, isLocal: true, isDefinition: true, scopeLine: 95, isOptimized: false, unit: !0, variables: !2)
!102 = !DISubroutineType(types: !103)
!103 = !{!81, !104, !23, !90}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!106 = !DILocalVariable(name: "path", arg: 1, scope: !101, file: !87, line: 92, type: !104)
!107 = !DILocation(line: 92, column: 17, scope: !101)
!108 = !DILocalVariable(name: "fd", arg: 2, scope: !101, file: !87, line: 93, type: !23)
!109 = !DILocation(line: 93, column: 9, scope: !101)
!110 = !DILocalVariable(name: "mode", arg: 3, scope: !101, file: !87, line: 94, type: !90)
!111 = !DILocation(line: 94, column: 17, scope: !101)
!112 = !DILocalVariable(name: "state", scope: !101, file: !87, line: 96, type: !5)
!113 = !DILocation(line: 96, column: 15, scope: !101)
!114 = !DILocalVariable(name: "len", scope: !101, file: !87, line: 97, type: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !116, line: 216, baseType: !56)
!116 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!117 = !DILocation(line: 97, column: 12, scope: !101)
!118 = !DILocalVariable(name: "oflag", scope: !101, file: !87, line: 98, type: !23)
!119 = !DILocation(line: 98, column: 9, scope: !101)
!120 = !DILocalVariable(name: "cloexec", scope: !101, file: !87, line: 100, type: !23)
!121 = !DILocation(line: 100, column: 9, scope: !101)
!122 = !DILocalVariable(name: "exclusive", scope: !101, file: !87, line: 103, type: !23)
!123 = !DILocation(line: 103, column: 9, scope: !101)
!124 = !DILocation(line: 107, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !101, file: !87, line: 107, column: 9)
!126 = !DILocation(line: 107, column: 14, scope: !125)
!127 = !DILocation(line: 107, column: 9, scope: !101)
!128 = !DILocation(line: 108, column: 9, scope: !125)
!129 = !DILocation(line: 111, column: 13, scope: !101)
!130 = !DILocation(line: 111, column: 11, scope: !101)
!131 = !DILocation(line: 112, column: 9, scope: !132)
!132 = distinct !DILexicalBlock(scope: !101, file: !87, line: 112, column: 9)
!133 = !DILocation(line: 112, column: 15, scope: !132)
!134 = !DILocation(line: 112, column: 9, scope: !101)
!135 = !DILocation(line: 113, column: 9, scope: !132)
!136 = !DILocation(line: 114, column: 5, scope: !101)
!137 = !DILocation(line: 114, column: 12, scope: !101)
!138 = !DILocation(line: 114, column: 17, scope: !101)
!139 = !DILocation(line: 115, column: 5, scope: !101)
!140 = !DILocation(line: 115, column: 12, scope: !101)
!141 = !DILocation(line: 115, column: 17, scope: !101)
!142 = !DILocation(line: 116, column: 5, scope: !101)
!143 = !DILocation(line: 116, column: 12, scope: !101)
!144 = !DILocation(line: 116, column: 16, scope: !101)
!145 = !DILocation(line: 119, column: 5, scope: !101)
!146 = !DILocation(line: 119, column: 12, scope: !101)
!147 = !DILocation(line: 119, column: 17, scope: !101)
!148 = !DILocation(line: 120, column: 5, scope: !101)
!149 = !DILocation(line: 120, column: 12, scope: !101)
!150 = !DILocation(line: 120, column: 18, scope: !101)
!151 = !DILocation(line: 121, column: 5, scope: !101)
!152 = !DILocation(line: 121, column: 12, scope: !101)
!153 = !DILocation(line: 121, column: 21, scope: !101)
!154 = !DILocation(line: 122, column: 5, scope: !101)
!155 = !DILocation(line: 122, column: 12, scope: !101)
!156 = !DILocation(line: 122, column: 19, scope: !101)
!157 = !DILocation(line: 123, column: 5, scope: !101)
!158 = !DILocation(line: 123, column: 13, scope: !159)
!159 = !DILexicalBlockFile(scope: !101, file: !87, discriminator: 1)
!160 = !DILocation(line: 123, column: 12, scope: !159)
!161 = !DILocation(line: 123, column: 5, scope: !159)
!162 = !DILocation(line: 124, column: 14, scope: !163)
!163 = distinct !DILexicalBlock(scope: !164, file: !87, line: 124, column: 13)
!164 = distinct !DILexicalBlock(scope: !101, file: !87, line: 123, column: 19)
!165 = !DILocation(line: 124, column: 13, scope: !163)
!166 = !DILocation(line: 124, column: 19, scope: !163)
!167 = !DILocation(line: 124, column: 26, scope: !163)
!168 = !DILocation(line: 124, column: 30, scope: !169)
!169 = !DILexicalBlockFile(scope: !163, file: !87, discriminator: 1)
!170 = !DILocation(line: 124, column: 29, scope: !169)
!171 = !DILocation(line: 124, column: 35, scope: !169)
!172 = !DILocation(line: 124, column: 13, scope: !169)
!173 = !DILocation(line: 125, column: 29, scope: !163)
!174 = !DILocation(line: 125, column: 28, scope: !163)
!175 = !DILocation(line: 125, column: 34, scope: !163)
!176 = !DILocation(line: 125, column: 13, scope: !163)
!177 = !DILocation(line: 125, column: 20, scope: !163)
!178 = !DILocation(line: 125, column: 26, scope: !163)
!179 = !DILocation(line: 127, column: 22, scope: !163)
!180 = !DILocation(line: 127, column: 21, scope: !163)
!181 = !DILocation(line: 127, column: 13, scope: !163)
!182 = !DILocation(line: 129, column: 17, scope: !183)
!183 = distinct !DILexicalBlock(scope: !163, file: !87, line: 127, column: 28)
!184 = !DILocation(line: 129, column: 24, scope: !183)
!185 = !DILocation(line: 129, column: 29, scope: !183)
!186 = !DILocation(line: 130, column: 17, scope: !183)
!187 = !DILocation(line: 133, column: 17, scope: !183)
!188 = !DILocation(line: 133, column: 24, scope: !183)
!189 = !DILocation(line: 133, column: 29, scope: !183)
!190 = !DILocation(line: 134, column: 17, scope: !183)
!191 = !DILocation(line: 136, column: 17, scope: !183)
!192 = !DILocation(line: 136, column: 24, scope: !183)
!193 = !DILocation(line: 136, column: 29, scope: !183)
!194 = !DILocation(line: 137, column: 17, scope: !183)
!195 = !DILocation(line: 140, column: 22, scope: !183)
!196 = !DILocation(line: 140, column: 17, scope: !183)
!197 = !DILocation(line: 141, column: 17, scope: !183)
!198 = !DILocation(line: 143, column: 17, scope: !183)
!199 = !DILocation(line: 146, column: 25, scope: !183)
!200 = !DILocation(line: 147, column: 17, scope: !183)
!201 = !DILocation(line: 151, column: 27, scope: !183)
!202 = !DILocation(line: 152, column: 17, scope: !183)
!203 = !DILocation(line: 155, column: 17, scope: !183)
!204 = !DILocation(line: 155, column: 24, scope: !183)
!205 = !DILocation(line: 155, column: 33, scope: !183)
!206 = !DILocation(line: 156, column: 17, scope: !183)
!207 = !DILocation(line: 158, column: 17, scope: !183)
!208 = !DILocation(line: 158, column: 24, scope: !183)
!209 = !DILocation(line: 158, column: 33, scope: !183)
!210 = !DILocation(line: 159, column: 17, scope: !183)
!211 = !DILocation(line: 161, column: 17, scope: !183)
!212 = !DILocation(line: 161, column: 24, scope: !183)
!213 = !DILocation(line: 161, column: 33, scope: !183)
!214 = !DILocation(line: 162, column: 17, scope: !183)
!215 = !DILocation(line: 164, column: 17, scope: !183)
!216 = !DILocation(line: 164, column: 24, scope: !183)
!217 = !DILocation(line: 164, column: 33, scope: !183)
!218 = !DILocation(line: 166, column: 17, scope: !183)
!219 = !DILocation(line: 166, column: 24, scope: !183)
!220 = !DILocation(line: 166, column: 31, scope: !183)
!221 = !DILocation(line: 169, column: 13, scope: !183)
!222 = !DILocation(line: 170, column: 13, scope: !164)
!223 = !DILocation(line: 123, column: 5, scope: !224)
!224 = !DILexicalBlockFile(scope: !101, file: !87, discriminator: 2)
!225 = distinct !{!225, !157}
!226 = !DILocation(line: 174, column: 9, scope: !227)
!227 = distinct !DILexicalBlock(scope: !101, file: !87, line: 174, column: 9)
!228 = !DILocation(line: 174, column: 16, scope: !227)
!229 = !DILocation(line: 174, column: 21, scope: !227)
!230 = !DILocation(line: 174, column: 9, scope: !101)
!231 = !DILocation(line: 175, column: 14, scope: !232)
!232 = distinct !DILexicalBlock(scope: !227, file: !87, line: 174, column: 27)
!233 = !DILocation(line: 175, column: 9, scope: !232)
!234 = !DILocation(line: 176, column: 9, scope: !232)
!235 = !DILocation(line: 180, column: 9, scope: !236)
!236 = distinct !DILexicalBlock(scope: !101, file: !87, line: 180, column: 9)
!237 = !DILocation(line: 180, column: 16, scope: !236)
!238 = !DILocation(line: 180, column: 21, scope: !236)
!239 = !DILocation(line: 180, column: 9, scope: !101)
!240 = !DILocation(line: 181, column: 13, scope: !241)
!241 = distinct !DILexicalBlock(scope: !242, file: !87, line: 181, column: 13)
!242 = distinct !DILexicalBlock(scope: !236, file: !87, line: 180, column: 30)
!243 = !DILocation(line: 181, column: 20, scope: !241)
!244 = !DILocation(line: 181, column: 13, scope: !242)
!245 = !DILocation(line: 182, column: 18, scope: !246)
!246 = distinct !DILexicalBlock(scope: !241, file: !87, line: 181, column: 28)
!247 = !DILocation(line: 182, column: 13, scope: !246)
!248 = !DILocation(line: 183, column: 13, scope: !246)
!249 = !DILocation(line: 185, column: 9, scope: !242)
!250 = !DILocation(line: 185, column: 16, scope: !242)
!251 = !DILocation(line: 185, column: 23, scope: !242)
!252 = !DILocation(line: 186, column: 5, scope: !242)
!253 = !DILocation(line: 197, column: 22, scope: !101)
!254 = !DILocation(line: 197, column: 15, scope: !101)
!255 = !DILocation(line: 197, column: 13, scope: !101)
!256 = !DILocation(line: 198, column: 26, scope: !101)
!257 = !DILocation(line: 198, column: 30, scope: !101)
!258 = !DILocation(line: 198, column: 19, scope: !101)
!259 = !DILocation(line: 198, column: 5, scope: !101)
!260 = !DILocation(line: 198, column: 12, scope: !101)
!261 = !DILocation(line: 198, column: 17, scope: !101)
!262 = !DILocation(line: 199, column: 9, scope: !263)
!263 = distinct !DILexicalBlock(scope: !101, file: !87, line: 199, column: 9)
!264 = !DILocation(line: 199, column: 16, scope: !263)
!265 = !DILocation(line: 199, column: 21, scope: !263)
!266 = !DILocation(line: 199, column: 9, scope: !101)
!267 = !DILocation(line: 200, column: 14, scope: !268)
!268 = distinct !DILexicalBlock(scope: !263, file: !87, line: 199, column: 29)
!269 = !DILocation(line: 200, column: 9, scope: !268)
!270 = !DILocation(line: 201, column: 9, scope: !268)
!271 = !DILocation(line: 211, column: 16, scope: !101)
!272 = !DILocation(line: 211, column: 23, scope: !101)
!273 = !DILocation(line: 211, column: 29, scope: !101)
!274 = !DILocation(line: 211, column: 9, scope: !101)
!275 = !DILocation(line: 222, column: 10, scope: !101)
!276 = !DILocation(line: 224, column: 10, scope: !101)
!277 = !DILocation(line: 224, column: 17, scope: !101)
!278 = !DILocation(line: 224, column: 22, scope: !101)
!279 = !DILocation(line: 224, column: 10, scope: !159)
!280 = !DILocation(line: 228, column: 12, scope: !101)
!281 = !DILocation(line: 226, column: 29, scope: !101)
!282 = !DILocation(line: 230, column: 12, scope: !101)
!283 = !DILocation(line: 230, column: 19, scope: !101)
!284 = !DILocation(line: 230, column: 24, scope: !101)
!285 = !DILocation(line: 228, column: 35, scope: !101)
!286 = !DILocation(line: 224, column: 10, scope: !224)
!287 = !DILocation(line: 224, column: 10, scope: !288)
!288 = !DILexicalBlockFile(scope: !101, file: !87, discriminator: 3)
!289 = !DILocation(line: 222, column: 34, scope: !159)
!290 = !DILocation(line: 214, column: 11, scope: !101)
!291 = !DILocation(line: 235, column: 17, scope: !101)
!292 = !DILocation(line: 235, column: 20, scope: !101)
!293 = !DILocation(line: 235, column: 27, scope: !159)
!294 = !DILocation(line: 235, column: 17, scope: !159)
!295 = !DILocation(line: 239, column: 14, scope: !101)
!296 = !DILocation(line: 239, column: 20, scope: !101)
!297 = !DILocation(line: 239, column: 9, scope: !101)
!298 = !DILocation(line: 235, column: 17, scope: !224)
!299 = !DILocation(line: 235, column: 17, scope: !288)
!300 = !DILocation(line: 235, column: 5, scope: !288)
!301 = !DILocation(line: 235, column: 12, scope: !288)
!302 = !DILocation(line: 235, column: 15, scope: !288)
!303 = !DILocation(line: 240, column: 9, scope: !304)
!304 = distinct !DILexicalBlock(scope: !101, file: !87, line: 240, column: 9)
!305 = !DILocation(line: 240, column: 16, scope: !304)
!306 = !DILocation(line: 240, column: 19, scope: !304)
!307 = !DILocation(line: 240, column: 9, scope: !101)
!308 = !DILocation(line: 241, column: 14, scope: !309)
!309 = distinct !DILexicalBlock(scope: !304, file: !87, line: 240, column: 26)
!310 = !DILocation(line: 241, column: 21, scope: !309)
!311 = !DILocation(line: 241, column: 9, scope: !309)
!312 = !DILocation(line: 242, column: 14, scope: !309)
!313 = !DILocation(line: 242, column: 9, scope: !309)
!314 = !DILocation(line: 243, column: 9, scope: !309)
!315 = !DILocation(line: 245, column: 9, scope: !316)
!316 = distinct !DILexicalBlock(scope: !101, file: !87, line: 245, column: 9)
!317 = !DILocation(line: 245, column: 16, scope: !316)
!318 = !DILocation(line: 245, column: 21, scope: !316)
!319 = !DILocation(line: 245, column: 9, scope: !101)
!320 = !DILocation(line: 246, column: 9, scope: !316)
!321 = !DILocation(line: 246, column: 16, scope: !316)
!322 = !DILocation(line: 246, column: 21, scope: !316)
!323 = !DILocation(line: 249, column: 9, scope: !324)
!324 = distinct !DILexicalBlock(scope: !101, file: !87, line: 249, column: 9)
!325 = !DILocation(line: 249, column: 16, scope: !324)
!326 = !DILocation(line: 249, column: 21, scope: !324)
!327 = !DILocation(line: 249, column: 9, scope: !101)
!328 = !DILocation(line: 250, column: 30, scope: !329)
!329 = distinct !DILexicalBlock(scope: !324, file: !87, line: 249, column: 30)
!330 = !DILocation(line: 250, column: 37, scope: !329)
!331 = !DILocation(line: 250, column: 24, scope: !329)
!332 = !DILocation(line: 250, column: 9, scope: !329)
!333 = !DILocation(line: 250, column: 16, scope: !329)
!334 = !DILocation(line: 250, column: 22, scope: !329)
!335 = !DILocation(line: 251, column: 13, scope: !336)
!336 = distinct !DILexicalBlock(scope: !329, file: !87, line: 251, column: 13)
!337 = !DILocation(line: 251, column: 20, scope: !336)
!338 = !DILocation(line: 251, column: 26, scope: !336)
!339 = !DILocation(line: 251, column: 13, scope: !329)
!340 = !DILocation(line: 251, column: 33, scope: !341)
!341 = !DILexicalBlockFile(scope: !336, file: !87, discriminator: 1)
!342 = !DILocation(line: 251, column: 40, scope: !341)
!343 = !DILocation(line: 251, column: 46, scope: !341)
!344 = !DILocation(line: 252, column: 5, scope: !329)
!345 = !DILocation(line: 255, column: 14, scope: !101)
!346 = !DILocation(line: 255, column: 5, scope: !101)
!347 = !DILocation(line: 258, column: 20, scope: !101)
!348 = !DILocation(line: 258, column: 12, scope: !101)
!349 = !DILocation(line: 258, column: 5, scope: !101)
!350 = !DILocation(line: 259, column: 1, scope: !101)
!351 = distinct !DISubprogram(name: "gzopen64", scope: !87, file: !87, line: 270, type: !88, isLocal: false, isDefinition: true, scopeLine: 273, isOptimized: false, unit: !0, variables: !2)
!352 = !DILocalVariable(name: "path", arg: 1, scope: !351, file: !87, line: 271, type: !90)
!353 = !DILocation(line: 271, column: 17, scope: !351)
!354 = !DILocalVariable(name: "mode", arg: 2, scope: !351, file: !87, line: 272, type: !90)
!355 = !DILocation(line: 272, column: 17, scope: !351)
!356 = !DILocation(line: 274, column: 20, scope: !351)
!357 = !DILocation(line: 274, column: 30, scope: !351)
!358 = !DILocation(line: 274, column: 12, scope: !351)
!359 = !DILocation(line: 274, column: 5, scope: !351)
!360 = distinct !DISubprogram(name: "gzdopen", scope: !87, file: !87, line: 278, type: !361, isLocal: false, isDefinition: true, scopeLine: 281, isOptimized: false, unit: !0, variables: !2)
!361 = !DISubroutineType(types: !362)
!362 = !{!81, !23, !90}
!363 = !DILocalVariable(name: "fd", arg: 1, scope: !360, file: !87, line: 279, type: !23)
!364 = !DILocation(line: 279, column: 9, scope: !360)
!365 = !DILocalVariable(name: "mode", arg: 2, scope: !360, file: !87, line: 280, type: !90)
!366 = !DILocation(line: 280, column: 17, scope: !360)
!367 = !DILocalVariable(name: "path", scope: !360, file: !87, line: 282, type: !26)
!368 = !DILocation(line: 282, column: 11, scope: !360)
!369 = !DILocalVariable(name: "gz", scope: !360, file: !87, line: 283, type: !81)
!370 = !DILocation(line: 283, column: 12, scope: !360)
!371 = !DILocation(line: 285, column: 9, scope: !372)
!372 = distinct !DILexicalBlock(scope: !360, file: !87, line: 285, column: 9)
!373 = !DILocation(line: 285, column: 12, scope: !372)
!374 = !DILocation(line: 285, column: 18, scope: !372)
!375 = !DILocation(line: 285, column: 29, scope: !376)
!376 = !DILexicalBlockFile(scope: !372, file: !87, discriminator: 1)
!377 = !DILocation(line: 285, column: 27, scope: !376)
!378 = !DILocation(line: 285, column: 58, scope: !376)
!379 = !DILocation(line: 285, column: 9, scope: !376)
!380 = !DILocation(line: 286, column: 9, scope: !372)
!381 = !DILocation(line: 287, column: 13, scope: !360)
!382 = !DILocation(line: 287, column: 30, scope: !360)
!383 = !DILocation(line: 287, column: 5, scope: !360)
!384 = !DILocation(line: 288, column: 18, scope: !360)
!385 = !DILocation(line: 288, column: 24, scope: !360)
!386 = !DILocation(line: 288, column: 28, scope: !360)
!387 = !DILocation(line: 288, column: 10, scope: !360)
!388 = !DILocation(line: 288, column: 8, scope: !360)
!389 = !DILocation(line: 289, column: 10, scope: !360)
!390 = !DILocation(line: 289, column: 5, scope: !360)
!391 = !DILocation(line: 290, column: 12, scope: !360)
!392 = !DILocation(line: 290, column: 5, scope: !360)
!393 = !DILocation(line: 291, column: 1, scope: !360)
!394 = distinct !DISubprogram(name: "gzbuffer", scope: !87, file: !87, line: 304, type: !395, isLocal: false, isDefinition: true, scopeLine: 307, isOptimized: false, unit: !0, variables: !2)
!395 = !DISubroutineType(types: !396)
!396 = !{!23, !81, !16}
!397 = !DILocalVariable(name: "file", arg: 1, scope: !394, file: !87, line: 305, type: !81)
!398 = !DILocation(line: 305, column: 12, scope: !394)
!399 = !DILocalVariable(name: "size", arg: 2, scope: !394, file: !87, line: 306, type: !16)
!400 = !DILocation(line: 306, column: 14, scope: !394)
!401 = !DILocalVariable(name: "state", scope: !394, file: !87, line: 308, type: !5)
!402 = !DILocation(line: 308, column: 15, scope: !394)
!403 = !DILocation(line: 311, column: 9, scope: !404)
!404 = distinct !DILexicalBlock(scope: !394, file: !87, line: 311, column: 9)
!405 = !DILocation(line: 311, column: 14, scope: !404)
!406 = !DILocation(line: 311, column: 9, scope: !394)
!407 = !DILocation(line: 312, column: 9, scope: !404)
!408 = !DILocation(line: 313, column: 24, scope: !394)
!409 = !DILocation(line: 313, column: 13, scope: !394)
!410 = !DILocation(line: 313, column: 11, scope: !394)
!411 = !DILocation(line: 314, column: 9, scope: !412)
!412 = distinct !DILexicalBlock(scope: !394, file: !87, line: 314, column: 9)
!413 = !DILocation(line: 314, column: 16, scope: !412)
!414 = !DILocation(line: 314, column: 21, scope: !412)
!415 = !DILocation(line: 314, column: 29, scope: !412)
!416 = !DILocation(line: 314, column: 32, scope: !417)
!417 = !DILexicalBlockFile(scope: !412, file: !87, discriminator: 1)
!418 = !DILocation(line: 314, column: 39, scope: !417)
!419 = !DILocation(line: 314, column: 44, scope: !417)
!420 = !DILocation(line: 314, column: 9, scope: !417)
!421 = !DILocation(line: 315, column: 9, scope: !412)
!422 = !DILocation(line: 318, column: 9, scope: !423)
!423 = distinct !DILexicalBlock(scope: !394, file: !87, line: 318, column: 9)
!424 = !DILocation(line: 318, column: 16, scope: !423)
!425 = !DILocation(line: 318, column: 21, scope: !423)
!426 = !DILocation(line: 318, column: 9, scope: !394)
!427 = !DILocation(line: 319, column: 9, scope: !423)
!428 = !DILocation(line: 322, column: 9, scope: !429)
!429 = distinct !DILexicalBlock(scope: !394, file: !87, line: 322, column: 9)
!430 = !DILocation(line: 322, column: 14, scope: !429)
!431 = !DILocation(line: 322, column: 9, scope: !394)
!432 = !DILocation(line: 323, column: 14, scope: !429)
!433 = !DILocation(line: 323, column: 9, scope: !429)
!434 = !DILocation(line: 324, column: 19, scope: !394)
!435 = !DILocation(line: 324, column: 5, scope: !394)
!436 = !DILocation(line: 324, column: 12, scope: !394)
!437 = !DILocation(line: 324, column: 17, scope: !394)
!438 = !DILocation(line: 325, column: 5, scope: !394)
!439 = !DILocation(line: 326, column: 1, scope: !394)
!440 = distinct !DISubprogram(name: "gzrewind", scope: !87, file: !87, line: 329, type: !441, isLocal: false, isDefinition: true, scopeLine: 331, isOptimized: false, unit: !0, variables: !2)
!441 = !DISubroutineType(types: !442)
!442 = !{!23, !81}
!443 = !DILocalVariable(name: "file", arg: 1, scope: !440, file: !87, line: 330, type: !81)
!444 = !DILocation(line: 330, column: 12, scope: !440)
!445 = !DILocalVariable(name: "state", scope: !440, file: !87, line: 332, type: !5)
!446 = !DILocation(line: 332, column: 15, scope: !440)
!447 = !DILocation(line: 335, column: 9, scope: !448)
!448 = distinct !DILexicalBlock(scope: !440, file: !87, line: 335, column: 9)
!449 = !DILocation(line: 335, column: 14, scope: !448)
!450 = !DILocation(line: 335, column: 9, scope: !440)
!451 = !DILocation(line: 336, column: 9, scope: !448)
!452 = !DILocation(line: 337, column: 24, scope: !440)
!453 = !DILocation(line: 337, column: 13, scope: !440)
!454 = !DILocation(line: 337, column: 11, scope: !440)
!455 = !DILocation(line: 340, column: 9, scope: !456)
!456 = distinct !DILexicalBlock(scope: !440, file: !87, line: 340, column: 9)
!457 = !DILocation(line: 340, column: 16, scope: !456)
!458 = !DILocation(line: 340, column: 21, scope: !456)
!459 = !DILocation(line: 340, column: 29, scope: !456)
!460 = !DILocation(line: 341, column: 14, scope: !456)
!461 = !DILocation(line: 341, column: 21, scope: !456)
!462 = !DILocation(line: 341, column: 25, scope: !456)
!463 = !DILocation(line: 341, column: 30, scope: !456)
!464 = !DILocation(line: 341, column: 33, scope: !465)
!465 = !DILexicalBlockFile(scope: !456, file: !87, discriminator: 1)
!466 = !DILocation(line: 341, column: 40, scope: !465)
!467 = !DILocation(line: 341, column: 44, scope: !465)
!468 = !DILocation(line: 340, column: 9, scope: !469)
!469 = !DILexicalBlockFile(scope: !440, file: !87, discriminator: 1)
!470 = !DILocation(line: 342, column: 9, scope: !456)
!471 = !DILocation(line: 345, column: 15, scope: !472)
!472 = distinct !DILexicalBlock(scope: !440, file: !87, line: 345, column: 9)
!473 = !DILocation(line: 345, column: 22, scope: !472)
!474 = !DILocation(line: 345, column: 26, scope: !472)
!475 = !DILocation(line: 345, column: 33, scope: !472)
!476 = !DILocation(line: 345, column: 9, scope: !472)
!477 = !DILocation(line: 345, column: 49, scope: !472)
!478 = !DILocation(line: 345, column: 9, scope: !440)
!479 = !DILocation(line: 346, column: 9, scope: !472)
!480 = !DILocation(line: 347, column: 14, scope: !440)
!481 = !DILocation(line: 347, column: 5, scope: !440)
!482 = !DILocation(line: 348, column: 5, scope: !440)
!483 = !DILocation(line: 349, column: 1, scope: !440)
!484 = distinct !DISubprogram(name: "gz_reset", scope: !87, file: !87, line: 75, type: !485, isLocal: true, isDefinition: true, scopeLine: 77, isOptimized: false, unit: !0, variables: !2)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !5}
!487 = !DILocalVariable(name: "state", arg: 1, scope: !484, file: !87, line: 76, type: !5)
!488 = !DILocation(line: 76, column: 15, scope: !484)
!489 = !DILocation(line: 78, column: 5, scope: !484)
!490 = !DILocation(line: 78, column: 12, scope: !484)
!491 = !DILocation(line: 78, column: 14, scope: !484)
!492 = !DILocation(line: 78, column: 19, scope: !484)
!493 = !DILocation(line: 79, column: 9, scope: !494)
!494 = distinct !DILexicalBlock(scope: !484, file: !87, line: 79, column: 9)
!495 = !DILocation(line: 79, column: 16, scope: !494)
!496 = !DILocation(line: 79, column: 21, scope: !494)
!497 = !DILocation(line: 79, column: 9, scope: !484)
!498 = !DILocation(line: 80, column: 9, scope: !499)
!499 = distinct !DILexicalBlock(scope: !494, file: !87, line: 79, column: 30)
!500 = !DILocation(line: 80, column: 16, scope: !499)
!501 = !DILocation(line: 80, column: 20, scope: !499)
!502 = !DILocation(line: 81, column: 9, scope: !499)
!503 = !DILocation(line: 81, column: 16, scope: !499)
!504 = !DILocation(line: 81, column: 21, scope: !499)
!505 = !DILocation(line: 82, column: 9, scope: !499)
!506 = !DILocation(line: 82, column: 16, scope: !499)
!507 = !DILocation(line: 82, column: 20, scope: !499)
!508 = !DILocation(line: 83, column: 5, scope: !499)
!509 = !DILocation(line: 84, column: 5, scope: !484)
!510 = !DILocation(line: 84, column: 12, scope: !484)
!511 = !DILocation(line: 84, column: 17, scope: !484)
!512 = !DILocation(line: 85, column: 14, scope: !484)
!513 = !DILocation(line: 85, column: 5, scope: !484)
!514 = !DILocation(line: 86, column: 5, scope: !484)
!515 = !DILocation(line: 86, column: 12, scope: !484)
!516 = !DILocation(line: 86, column: 14, scope: !484)
!517 = !DILocation(line: 86, column: 18, scope: !484)
!518 = !DILocation(line: 87, column: 5, scope: !484)
!519 = !DILocation(line: 87, column: 12, scope: !484)
!520 = !DILocation(line: 87, column: 17, scope: !484)
!521 = !DILocation(line: 87, column: 26, scope: !484)
!522 = !DILocation(line: 88, column: 1, scope: !484)
!523 = distinct !DISubprogram(name: "gzseek64", scope: !87, file: !87, line: 352, type: !524, isLocal: false, isDefinition: true, scopeLine: 356, isOptimized: false, unit: !0, variables: !2)
!524 = !DISubroutineType(types: !525)
!525 = !{!21, !81, !21, !23}
!526 = !DILocalVariable(name: "file", arg: 1, scope: !523, file: !87, line: 353, type: !81)
!527 = !DILocation(line: 353, column: 12, scope: !523)
!528 = !DILocalVariable(name: "offset", arg: 2, scope: !523, file: !87, line: 354, type: !21)
!529 = !DILocation(line: 354, column: 10, scope: !523)
!530 = !DILocalVariable(name: "whence", arg: 3, scope: !523, file: !87, line: 355, type: !23)
!531 = !DILocation(line: 355, column: 9, scope: !523)
!532 = !DILocalVariable(name: "n", scope: !523, file: !87, line: 357, type: !16)
!533 = !DILocation(line: 357, column: 14, scope: !523)
!534 = !DILocalVariable(name: "ret", scope: !523, file: !87, line: 358, type: !21)
!535 = !DILocation(line: 358, column: 10, scope: !523)
!536 = !DILocalVariable(name: "state", scope: !523, file: !87, line: 359, type: !5)
!537 = !DILocation(line: 359, column: 15, scope: !523)
!538 = !DILocation(line: 362, column: 9, scope: !539)
!539 = distinct !DILexicalBlock(scope: !523, file: !87, line: 362, column: 9)
!540 = !DILocation(line: 362, column: 14, scope: !539)
!541 = !DILocation(line: 362, column: 9, scope: !523)
!542 = !DILocation(line: 363, column: 9, scope: !539)
!543 = !DILocation(line: 364, column: 24, scope: !523)
!544 = !DILocation(line: 364, column: 13, scope: !523)
!545 = !DILocation(line: 364, column: 11, scope: !523)
!546 = !DILocation(line: 365, column: 9, scope: !547)
!547 = distinct !DILexicalBlock(scope: !523, file: !87, line: 365, column: 9)
!548 = !DILocation(line: 365, column: 16, scope: !547)
!549 = !DILocation(line: 365, column: 21, scope: !547)
!550 = !DILocation(line: 365, column: 29, scope: !547)
!551 = !DILocation(line: 365, column: 32, scope: !552)
!552 = !DILexicalBlockFile(scope: !547, file: !87, discriminator: 1)
!553 = !DILocation(line: 365, column: 39, scope: !552)
!554 = !DILocation(line: 365, column: 44, scope: !552)
!555 = !DILocation(line: 365, column: 9, scope: !552)
!556 = !DILocation(line: 366, column: 9, scope: !547)
!557 = !DILocation(line: 369, column: 9, scope: !558)
!558 = distinct !DILexicalBlock(scope: !523, file: !87, line: 369, column: 9)
!559 = !DILocation(line: 369, column: 16, scope: !558)
!560 = !DILocation(line: 369, column: 20, scope: !558)
!561 = !DILocation(line: 369, column: 25, scope: !558)
!562 = !DILocation(line: 369, column: 28, scope: !563)
!563 = !DILexicalBlockFile(scope: !558, file: !87, discriminator: 1)
!564 = !DILocation(line: 369, column: 35, scope: !563)
!565 = !DILocation(line: 369, column: 39, scope: !563)
!566 = !DILocation(line: 369, column: 9, scope: !563)
!567 = !DILocation(line: 370, column: 9, scope: !558)
!568 = !DILocation(line: 373, column: 9, scope: !569)
!569 = distinct !DILexicalBlock(scope: !523, file: !87, line: 373, column: 9)
!570 = !DILocation(line: 373, column: 16, scope: !569)
!571 = !DILocation(line: 373, column: 27, scope: !569)
!572 = !DILocation(line: 373, column: 30, scope: !573)
!573 = !DILexicalBlockFile(scope: !569, file: !87, discriminator: 1)
!574 = !DILocation(line: 373, column: 37, scope: !573)
!575 = !DILocation(line: 373, column: 9, scope: !573)
!576 = !DILocation(line: 374, column: 9, scope: !569)
!577 = !DILocation(line: 377, column: 9, scope: !578)
!578 = distinct !DILexicalBlock(scope: !523, file: !87, line: 377, column: 9)
!579 = !DILocation(line: 377, column: 16, scope: !578)
!580 = !DILocation(line: 377, column: 9, scope: !523)
!581 = !DILocation(line: 378, column: 19, scope: !578)
!582 = !DILocation(line: 378, column: 26, scope: !578)
!583 = !DILocation(line: 378, column: 28, scope: !578)
!584 = !DILocation(line: 378, column: 16, scope: !578)
!585 = !DILocation(line: 378, column: 9, scope: !578)
!586 = !DILocation(line: 379, column: 14, scope: !587)
!587 = distinct !DILexicalBlock(scope: !578, file: !87, line: 379, column: 14)
!588 = !DILocation(line: 379, column: 21, scope: !587)
!589 = !DILocation(line: 379, column: 14, scope: !578)
!590 = !DILocation(line: 380, column: 19, scope: !587)
!591 = !DILocation(line: 380, column: 26, scope: !587)
!592 = !DILocation(line: 380, column: 16, scope: !587)
!593 = !DILocation(line: 380, column: 9, scope: !587)
!594 = !DILocation(line: 381, column: 5, scope: !523)
!595 = !DILocation(line: 381, column: 12, scope: !523)
!596 = !DILocation(line: 381, column: 17, scope: !523)
!597 = !DILocation(line: 384, column: 9, scope: !598)
!598 = distinct !DILexicalBlock(scope: !523, file: !87, line: 384, column: 9)
!599 = !DILocation(line: 384, column: 16, scope: !598)
!600 = !DILocation(line: 384, column: 21, scope: !598)
!601 = !DILocation(line: 384, column: 29, scope: !598)
!602 = !DILocation(line: 384, column: 32, scope: !603)
!603 = !DILexicalBlockFile(scope: !598, file: !87, discriminator: 1)
!604 = !DILocation(line: 384, column: 39, scope: !603)
!605 = !DILocation(line: 384, column: 43, scope: !603)
!606 = !DILocation(line: 384, column: 48, scope: !603)
!607 = !DILocation(line: 385, column: 13, scope: !598)
!608 = !DILocation(line: 385, column: 20, scope: !598)
!609 = !DILocation(line: 385, column: 22, scope: !598)
!610 = !DILocation(line: 385, column: 28, scope: !598)
!611 = !DILocation(line: 385, column: 26, scope: !598)
!612 = !DILocation(line: 385, column: 35, scope: !598)
!613 = !DILocation(line: 384, column: 9, scope: !614)
!614 = !DILexicalBlockFile(scope: !523, file: !87, discriminator: 2)
!615 = !DILocation(line: 386, column: 21, scope: !616)
!616 = distinct !DILexicalBlock(scope: !598, file: !87, line: 385, column: 41)
!617 = !DILocation(line: 386, column: 28, scope: !616)
!618 = !DILocation(line: 386, column: 32, scope: !616)
!619 = !DILocation(line: 386, column: 41, scope: !616)
!620 = !DILocation(line: 386, column: 48, scope: !616)
!621 = !DILocation(line: 386, column: 50, scope: !616)
!622 = !DILocation(line: 386, column: 39, scope: !616)
!623 = !DILocation(line: 386, column: 15, scope: !616)
!624 = !DILocation(line: 386, column: 13, scope: !616)
!625 = !DILocation(line: 387, column: 13, scope: !626)
!626 = distinct !DILexicalBlock(scope: !616, file: !87, line: 387, column: 13)
!627 = !DILocation(line: 387, column: 17, scope: !626)
!628 = !DILocation(line: 387, column: 13, scope: !616)
!629 = !DILocation(line: 388, column: 13, scope: !626)
!630 = !DILocation(line: 389, column: 9, scope: !616)
!631 = !DILocation(line: 389, column: 16, scope: !616)
!632 = !DILocation(line: 389, column: 18, scope: !616)
!633 = !DILocation(line: 389, column: 23, scope: !616)
!634 = !DILocation(line: 390, column: 9, scope: !616)
!635 = !DILocation(line: 390, column: 16, scope: !616)
!636 = !DILocation(line: 390, column: 20, scope: !616)
!637 = !DILocation(line: 391, column: 9, scope: !616)
!638 = !DILocation(line: 391, column: 16, scope: !616)
!639 = !DILocation(line: 391, column: 21, scope: !616)
!640 = !DILocation(line: 392, column: 9, scope: !616)
!641 = !DILocation(line: 392, column: 16, scope: !616)
!642 = !DILocation(line: 392, column: 21, scope: !616)
!643 = !DILocation(line: 393, column: 18, scope: !616)
!644 = !DILocation(line: 393, column: 9, scope: !616)
!645 = !DILocation(line: 394, column: 9, scope: !616)
!646 = !DILocation(line: 394, column: 16, scope: !616)
!647 = !DILocation(line: 394, column: 21, scope: !616)
!648 = !DILocation(line: 394, column: 30, scope: !616)
!649 = !DILocation(line: 395, column: 25, scope: !616)
!650 = !DILocation(line: 395, column: 9, scope: !616)
!651 = !DILocation(line: 395, column: 16, scope: !616)
!652 = !DILocation(line: 395, column: 18, scope: !616)
!653 = !DILocation(line: 395, column: 22, scope: !616)
!654 = !DILocation(line: 396, column: 16, scope: !616)
!655 = !DILocation(line: 396, column: 23, scope: !616)
!656 = !DILocation(line: 396, column: 25, scope: !616)
!657 = !DILocation(line: 396, column: 9, scope: !616)
!658 = !DILocation(line: 400, column: 9, scope: !659)
!659 = distinct !DILexicalBlock(scope: !523, file: !87, line: 400, column: 9)
!660 = !DILocation(line: 400, column: 16, scope: !659)
!661 = !DILocation(line: 400, column: 9, scope: !523)
!662 = !DILocation(line: 401, column: 13, scope: !663)
!663 = distinct !DILexicalBlock(scope: !664, file: !87, line: 401, column: 13)
!664 = distinct !DILexicalBlock(scope: !659, file: !87, line: 400, column: 21)
!665 = !DILocation(line: 401, column: 20, scope: !663)
!666 = !DILocation(line: 401, column: 25, scope: !663)
!667 = !DILocation(line: 401, column: 13, scope: !664)
!668 = !DILocation(line: 402, column: 13, scope: !663)
!669 = !DILocation(line: 403, column: 19, scope: !664)
!670 = !DILocation(line: 403, column: 26, scope: !664)
!671 = !DILocation(line: 403, column: 28, scope: !664)
!672 = !DILocation(line: 403, column: 16, scope: !664)
!673 = !DILocation(line: 404, column: 13, scope: !674)
!674 = distinct !DILexicalBlock(scope: !664, file: !87, line: 404, column: 13)
!675 = !DILocation(line: 404, column: 20, scope: !674)
!676 = !DILocation(line: 404, column: 13, scope: !664)
!677 = !DILocation(line: 405, column: 13, scope: !674)
!678 = !DILocation(line: 406, column: 22, scope: !679)
!679 = distinct !DILexicalBlock(scope: !664, file: !87, line: 406, column: 13)
!680 = !DILocation(line: 406, column: 13, scope: !679)
!681 = !DILocation(line: 406, column: 28, scope: !679)
!682 = !DILocation(line: 406, column: 13, scope: !664)
!683 = !DILocation(line: 407, column: 13, scope: !679)
!684 = !DILocation(line: 408, column: 5, scope: !664)
!685 = !DILocation(line: 411, column: 9, scope: !686)
!686 = distinct !DILexicalBlock(scope: !523, file: !87, line: 411, column: 9)
!687 = !DILocation(line: 411, column: 16, scope: !686)
!688 = !DILocation(line: 411, column: 21, scope: !686)
!689 = !DILocation(line: 411, column: 9, scope: !523)
!690 = !DILocation(line: 412, column: 84, scope: !691)
!691 = distinct !DILexicalBlock(scope: !686, file: !87, line: 411, column: 30)
!692 = !DILocation(line: 412, column: 91, scope: !691)
!693 = !DILocation(line: 412, column: 93, scope: !691)
!694 = !DILocation(line: 412, column: 78, scope: !691)
!695 = !DILocation(line: 412, column: 100, scope: !691)
!696 = !DILocation(line: 412, column: 98, scope: !691)
!697 = !DILocation(line: 412, column: 13, scope: !691)
!698 = !DILocation(line: 413, column: 23, scope: !691)
!699 = !DILocation(line: 413, column: 13, scope: !691)
!700 = !DILocation(line: 412, column: 13, scope: !701)
!701 = !DILexicalBlockFile(scope: !691, file: !87, discriminator: 1)
!702 = !DILocation(line: 413, column: 32, scope: !701)
!703 = !DILocation(line: 413, column: 39, scope: !701)
!704 = !DILocation(line: 413, column: 41, scope: !701)
!705 = !DILocation(line: 412, column: 13, scope: !706)
!706 = !DILexicalBlockFile(scope: !691, file: !87, discriminator: 2)
!707 = !DILocation(line: 412, column: 13, scope: !708)
!708 = !DILexicalBlockFile(scope: !691, file: !87, discriminator: 3)
!709 = !DILocation(line: 412, column: 11, scope: !708)
!710 = !DILocation(line: 414, column: 26, scope: !691)
!711 = !DILocation(line: 414, column: 9, scope: !691)
!712 = !DILocation(line: 414, column: 16, scope: !691)
!713 = !DILocation(line: 414, column: 18, scope: !691)
!714 = !DILocation(line: 414, column: 23, scope: !691)
!715 = !DILocation(line: 415, column: 26, scope: !691)
!716 = !DILocation(line: 415, column: 9, scope: !691)
!717 = !DILocation(line: 415, column: 16, scope: !691)
!718 = !DILocation(line: 415, column: 18, scope: !691)
!719 = !DILocation(line: 415, column: 23, scope: !691)
!720 = !DILocation(line: 416, column: 25, scope: !691)
!721 = !DILocation(line: 416, column: 9, scope: !691)
!722 = !DILocation(line: 416, column: 16, scope: !691)
!723 = !DILocation(line: 416, column: 18, scope: !691)
!724 = !DILocation(line: 416, column: 22, scope: !691)
!725 = !DILocation(line: 417, column: 19, scope: !691)
!726 = !DILocation(line: 417, column: 16, scope: !691)
!727 = !DILocation(line: 418, column: 5, scope: !691)
!728 = !DILocation(line: 421, column: 9, scope: !729)
!729 = distinct !DILexicalBlock(scope: !523, file: !87, line: 421, column: 9)
!730 = !DILocation(line: 421, column: 9, scope: !523)
!731 = !DILocation(line: 422, column: 9, scope: !732)
!732 = distinct !DILexicalBlock(scope: !729, file: !87, line: 421, column: 17)
!733 = !DILocation(line: 422, column: 16, scope: !732)
!734 = !DILocation(line: 422, column: 21, scope: !732)
!735 = !DILocation(line: 423, column: 23, scope: !732)
!736 = !DILocation(line: 423, column: 9, scope: !732)
!737 = !DILocation(line: 423, column: 16, scope: !732)
!738 = !DILocation(line: 423, column: 21, scope: !732)
!739 = !DILocation(line: 424, column: 5, scope: !732)
!740 = !DILocation(line: 425, column: 12, scope: !523)
!741 = !DILocation(line: 425, column: 19, scope: !523)
!742 = !DILocation(line: 425, column: 21, scope: !523)
!743 = !DILocation(line: 425, column: 27, scope: !523)
!744 = !DILocation(line: 425, column: 25, scope: !523)
!745 = !DILocation(line: 425, column: 5, scope: !523)
!746 = !DILocation(line: 426, column: 1, scope: !523)
!747 = distinct !DISubprogram(name: "gz_error", scope: !87, file: !87, line: 564, type: !748, isLocal: false, isDefinition: true, scopeLine: 568, isOptimized: false, unit: !0, variables: !2)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !5, !23, !90}
!750 = !DILocalVariable(name: "state", arg: 1, scope: !747, file: !87, line: 565, type: !5)
!751 = !DILocation(line: 565, column: 15, scope: !747)
!752 = !DILocalVariable(name: "err", arg: 2, scope: !747, file: !87, line: 566, type: !23)
!753 = !DILocation(line: 566, column: 9, scope: !747)
!754 = !DILocalVariable(name: "msg", arg: 3, scope: !747, file: !87, line: 567, type: !90)
!755 = !DILocation(line: 567, column: 17, scope: !747)
!756 = !DILocation(line: 570, column: 9, scope: !757)
!757 = distinct !DILexicalBlock(scope: !747, file: !87, line: 570, column: 9)
!758 = !DILocation(line: 570, column: 16, scope: !757)
!759 = !DILocation(line: 570, column: 20, scope: !757)
!760 = !DILocation(line: 570, column: 9, scope: !747)
!761 = !DILocation(line: 571, column: 13, scope: !762)
!762 = distinct !DILexicalBlock(scope: !763, file: !87, line: 571, column: 13)
!763 = distinct !DILexicalBlock(scope: !757, file: !87, line: 570, column: 28)
!764 = !DILocation(line: 571, column: 20, scope: !762)
!765 = !DILocation(line: 571, column: 24, scope: !762)
!766 = !DILocation(line: 571, column: 13, scope: !763)
!767 = !DILocation(line: 572, column: 18, scope: !762)
!768 = !DILocation(line: 572, column: 25, scope: !762)
!769 = !DILocation(line: 572, column: 13, scope: !762)
!770 = !DILocation(line: 573, column: 9, scope: !763)
!771 = !DILocation(line: 573, column: 16, scope: !763)
!772 = !DILocation(line: 573, column: 20, scope: !763)
!773 = !DILocation(line: 574, column: 5, scope: !763)
!774 = !DILocation(line: 577, column: 9, scope: !775)
!775 = distinct !DILexicalBlock(scope: !747, file: !87, line: 577, column: 9)
!776 = !DILocation(line: 577, column: 13, scope: !775)
!777 = !DILocation(line: 577, column: 18, scope: !775)
!778 = !DILocation(line: 577, column: 21, scope: !779)
!779 = !DILexicalBlockFile(scope: !775, file: !87, discriminator: 1)
!780 = !DILocation(line: 577, column: 25, scope: !779)
!781 = !DILocation(line: 577, column: 9, scope: !779)
!782 = !DILocation(line: 578, column: 9, scope: !775)
!783 = !DILocation(line: 578, column: 16, scope: !775)
!784 = !DILocation(line: 578, column: 18, scope: !775)
!785 = !DILocation(line: 578, column: 23, scope: !775)
!786 = !DILocation(line: 581, column: 18, scope: !747)
!787 = !DILocation(line: 581, column: 5, scope: !747)
!788 = !DILocation(line: 581, column: 12, scope: !747)
!789 = !DILocation(line: 581, column: 16, scope: !747)
!790 = !DILocation(line: 582, column: 9, scope: !791)
!791 = distinct !DILexicalBlock(scope: !747, file: !87, line: 582, column: 9)
!792 = !DILocation(line: 582, column: 13, scope: !791)
!793 = !DILocation(line: 582, column: 9, scope: !747)
!794 = !DILocation(line: 583, column: 9, scope: !791)
!795 = !DILocation(line: 586, column: 9, scope: !796)
!796 = distinct !DILexicalBlock(scope: !747, file: !87, line: 586, column: 9)
!797 = !DILocation(line: 586, column: 13, scope: !796)
!798 = !DILocation(line: 586, column: 9, scope: !747)
!799 = !DILocation(line: 587, column: 30, scope: !800)
!800 = distinct !DILexicalBlock(scope: !796, file: !87, line: 586, column: 22)
!801 = !DILocation(line: 587, column: 9, scope: !800)
!802 = !DILocation(line: 587, column: 16, scope: !800)
!803 = !DILocation(line: 587, column: 20, scope: !800)
!804 = !DILocation(line: 588, column: 9, scope: !800)
!805 = !DILocation(line: 592, column: 37, scope: !806)
!806 = distinct !DILexicalBlock(scope: !747, file: !87, line: 592, column: 9)
!807 = !DILocation(line: 592, column: 44, scope: !806)
!808 = !DILocation(line: 592, column: 30, scope: !806)
!809 = !DILocation(line: 592, column: 59, scope: !806)
!810 = !DILocation(line: 592, column: 52, scope: !811)
!811 = !DILexicalBlockFile(scope: !806, file: !87, discriminator: 1)
!812 = !DILocation(line: 592, column: 50, scope: !806)
!813 = !DILocation(line: 592, column: 64, scope: !806)
!814 = !DILocation(line: 592, column: 23, scope: !815)
!815 = !DILexicalBlockFile(scope: !806, file: !87, discriminator: 2)
!816 = !DILocation(line: 592, column: 10, scope: !806)
!817 = !DILocation(line: 592, column: 17, scope: !806)
!818 = !DILocation(line: 592, column: 21, scope: !806)
!819 = !DILocation(line: 592, column: 70, scope: !806)
!820 = !DILocation(line: 592, column: 9, scope: !747)
!821 = !DILocation(line: 593, column: 9, scope: !822)
!822 = distinct !DILexicalBlock(scope: !806, file: !87, line: 592, column: 78)
!823 = !DILocation(line: 593, column: 16, scope: !822)
!824 = !DILocation(line: 593, column: 20, scope: !822)
!825 = !DILocation(line: 594, column: 9, scope: !822)
!826 = !DILocation(line: 594, column: 16, scope: !822)
!827 = !DILocation(line: 594, column: 20, scope: !822)
!828 = !DILocation(line: 595, column: 9, scope: !822)
!829 = !DILocation(line: 597, column: 12, scope: !747)
!830 = !DILocation(line: 597, column: 19, scope: !747)
!831 = !DILocation(line: 597, column: 24, scope: !747)
!832 = !DILocation(line: 597, column: 31, scope: !747)
!833 = !DILocation(line: 597, column: 5, scope: !747)
!834 = !DILocation(line: 598, column: 12, scope: !747)
!835 = !DILocation(line: 598, column: 19, scope: !747)
!836 = !DILocation(line: 598, column: 5, scope: !747)
!837 = !DILocation(line: 599, column: 12, scope: !747)
!838 = !DILocation(line: 599, column: 19, scope: !747)
!839 = !DILocation(line: 599, column: 24, scope: !747)
!840 = !DILocation(line: 599, column: 5, scope: !747)
!841 = !DILocation(line: 600, column: 5, scope: !747)
!842 = !DILocation(line: 601, column: 1, scope: !747)
!843 = distinct !DISubprogram(name: "gzseek", scope: !87, file: !87, line: 429, type: !524, isLocal: false, isDefinition: true, scopeLine: 433, isOptimized: false, unit: !0, variables: !2)
!844 = !DILocalVariable(name: "file", arg: 1, scope: !843, file: !87, line: 430, type: !81)
!845 = !DILocation(line: 430, column: 12, scope: !843)
!846 = !DILocalVariable(name: "offset", arg: 2, scope: !843, file: !87, line: 431, type: !21)
!847 = !DILocation(line: 431, column: 10, scope: !843)
!848 = !DILocalVariable(name: "whence", arg: 3, scope: !843, file: !87, line: 432, type: !23)
!849 = !DILocation(line: 432, column: 9, scope: !843)
!850 = !DILocalVariable(name: "ret", scope: !843, file: !87, line: 434, type: !21)
!851 = !DILocation(line: 434, column: 10, scope: !843)
!852 = !DILocation(line: 436, column: 20, scope: !843)
!853 = !DILocation(line: 436, column: 32, scope: !843)
!854 = !DILocation(line: 436, column: 40, scope: !843)
!855 = !DILocation(line: 436, column: 11, scope: !843)
!856 = !DILocation(line: 436, column: 9, scope: !843)
!857 = !DILocation(line: 437, column: 12, scope: !843)
!858 = !DILocation(line: 437, column: 25, scope: !843)
!859 = !DILocation(line: 437, column: 16, scope: !843)
!860 = !DILocation(line: 437, column: 37, scope: !861)
!861 = !DILexicalBlockFile(scope: !843, file: !87, discriminator: 1)
!862 = !DILocation(line: 437, column: 12, scope: !861)
!863 = !DILocation(line: 437, column: 12, scope: !864)
!864 = !DILexicalBlockFile(scope: !843, file: !87, discriminator: 2)
!865 = !DILocation(line: 437, column: 12, scope: !866)
!866 = !DILexicalBlockFile(scope: !843, file: !87, discriminator: 3)
!867 = !DILocation(line: 437, column: 5, scope: !866)
!868 = distinct !DISubprogram(name: "gztell64", scope: !87, file: !87, line: 441, type: !869, isLocal: false, isDefinition: true, scopeLine: 443, isOptimized: false, unit: !0, variables: !2)
!869 = !DISubroutineType(types: !870)
!870 = !{!21, !81}
!871 = !DILocalVariable(name: "file", arg: 1, scope: !868, file: !87, line: 442, type: !81)
!872 = !DILocation(line: 442, column: 12, scope: !868)
!873 = !DILocalVariable(name: "state", scope: !868, file: !87, line: 444, type: !5)
!874 = !DILocation(line: 444, column: 15, scope: !868)
!875 = !DILocation(line: 447, column: 9, scope: !876)
!876 = distinct !DILexicalBlock(scope: !868, file: !87, line: 447, column: 9)
!877 = !DILocation(line: 447, column: 14, scope: !876)
!878 = !DILocation(line: 447, column: 9, scope: !868)
!879 = !DILocation(line: 448, column: 9, scope: !876)
!880 = !DILocation(line: 449, column: 24, scope: !868)
!881 = !DILocation(line: 449, column: 13, scope: !868)
!882 = !DILocation(line: 449, column: 11, scope: !868)
!883 = !DILocation(line: 450, column: 9, scope: !884)
!884 = distinct !DILexicalBlock(scope: !868, file: !87, line: 450, column: 9)
!885 = !DILocation(line: 450, column: 16, scope: !884)
!886 = !DILocation(line: 450, column: 21, scope: !884)
!887 = !DILocation(line: 450, column: 29, scope: !884)
!888 = !DILocation(line: 450, column: 32, scope: !889)
!889 = !DILexicalBlockFile(scope: !884, file: !87, discriminator: 1)
!890 = !DILocation(line: 450, column: 39, scope: !889)
!891 = !DILocation(line: 450, column: 44, scope: !889)
!892 = !DILocation(line: 450, column: 9, scope: !889)
!893 = !DILocation(line: 451, column: 9, scope: !884)
!894 = !DILocation(line: 454, column: 12, scope: !868)
!895 = !DILocation(line: 454, column: 19, scope: !868)
!896 = !DILocation(line: 454, column: 21, scope: !868)
!897 = !DILocation(line: 454, column: 28, scope: !868)
!898 = !DILocation(line: 454, column: 35, scope: !868)
!899 = !DILocation(line: 454, column: 42, scope: !900)
!900 = !DILexicalBlockFile(scope: !868, file: !87, discriminator: 1)
!901 = !DILocation(line: 454, column: 49, scope: !900)
!902 = !DILocation(line: 454, column: 28, scope: !900)
!903 = !DILocation(line: 454, column: 28, scope: !904)
!904 = !DILexicalBlockFile(scope: !868, file: !87, discriminator: 2)
!905 = !DILocation(line: 454, column: 28, scope: !906)
!906 = !DILexicalBlockFile(scope: !868, file: !87, discriminator: 3)
!907 = !DILocation(line: 454, column: 25, scope: !906)
!908 = !DILocation(line: 454, column: 5, scope: !906)
!909 = !DILocation(line: 455, column: 1, scope: !868)
!910 = distinct !DISubprogram(name: "gztell", scope: !87, file: !87, line: 458, type: !869, isLocal: false, isDefinition: true, scopeLine: 460, isOptimized: false, unit: !0, variables: !2)
!911 = !DILocalVariable(name: "file", arg: 1, scope: !910, file: !87, line: 459, type: !81)
!912 = !DILocation(line: 459, column: 12, scope: !910)
!913 = !DILocalVariable(name: "ret", scope: !910, file: !87, line: 461, type: !21)
!914 = !DILocation(line: 461, column: 10, scope: !910)
!915 = !DILocation(line: 463, column: 20, scope: !910)
!916 = !DILocation(line: 463, column: 11, scope: !910)
!917 = !DILocation(line: 463, column: 9, scope: !910)
!918 = !DILocation(line: 464, column: 12, scope: !910)
!919 = !DILocation(line: 464, column: 25, scope: !910)
!920 = !DILocation(line: 464, column: 16, scope: !910)
!921 = !DILocation(line: 464, column: 37, scope: !922)
!922 = !DILexicalBlockFile(scope: !910, file: !87, discriminator: 1)
!923 = !DILocation(line: 464, column: 12, scope: !922)
!924 = !DILocation(line: 464, column: 12, scope: !925)
!925 = !DILexicalBlockFile(scope: !910, file: !87, discriminator: 2)
!926 = !DILocation(line: 464, column: 12, scope: !927)
!927 = !DILexicalBlockFile(scope: !910, file: !87, discriminator: 3)
!928 = !DILocation(line: 464, column: 5, scope: !927)
!929 = distinct !DISubprogram(name: "gzoffset64", scope: !87, file: !87, line: 468, type: !869, isLocal: false, isDefinition: true, scopeLine: 470, isOptimized: false, unit: !0, variables: !2)
!930 = !DILocalVariable(name: "file", arg: 1, scope: !929, file: !87, line: 469, type: !81)
!931 = !DILocation(line: 469, column: 12, scope: !929)
!932 = !DILocalVariable(name: "offset", scope: !929, file: !87, line: 471, type: !21)
!933 = !DILocation(line: 471, column: 10, scope: !929)
!934 = !DILocalVariable(name: "state", scope: !929, file: !87, line: 472, type: !5)
!935 = !DILocation(line: 472, column: 15, scope: !929)
!936 = !DILocation(line: 475, column: 9, scope: !937)
!937 = distinct !DILexicalBlock(scope: !929, file: !87, line: 475, column: 9)
!938 = !DILocation(line: 475, column: 14, scope: !937)
!939 = !DILocation(line: 475, column: 9, scope: !929)
!940 = !DILocation(line: 476, column: 9, scope: !937)
!941 = !DILocation(line: 477, column: 24, scope: !929)
!942 = !DILocation(line: 477, column: 13, scope: !929)
!943 = !DILocation(line: 477, column: 11, scope: !929)
!944 = !DILocation(line: 478, column: 9, scope: !945)
!945 = distinct !DILexicalBlock(scope: !929, file: !87, line: 478, column: 9)
!946 = !DILocation(line: 478, column: 16, scope: !945)
!947 = !DILocation(line: 478, column: 21, scope: !945)
!948 = !DILocation(line: 478, column: 29, scope: !945)
!949 = !DILocation(line: 478, column: 32, scope: !950)
!950 = !DILexicalBlockFile(scope: !945, file: !87, discriminator: 1)
!951 = !DILocation(line: 478, column: 39, scope: !950)
!952 = !DILocation(line: 478, column: 44, scope: !950)
!953 = !DILocation(line: 478, column: 9, scope: !950)
!954 = !DILocation(line: 479, column: 9, scope: !945)
!955 = !DILocation(line: 482, column: 20, scope: !929)
!956 = !DILocation(line: 482, column: 27, scope: !929)
!957 = !DILocation(line: 482, column: 14, scope: !929)
!958 = !DILocation(line: 482, column: 12, scope: !929)
!959 = !DILocation(line: 483, column: 9, scope: !960)
!960 = distinct !DILexicalBlock(scope: !929, file: !87, line: 483, column: 9)
!961 = !DILocation(line: 483, column: 16, scope: !960)
!962 = !DILocation(line: 483, column: 9, scope: !929)
!963 = !DILocation(line: 484, column: 9, scope: !960)
!964 = !DILocation(line: 485, column: 9, scope: !965)
!965 = distinct !DILexicalBlock(scope: !929, file: !87, line: 485, column: 9)
!966 = !DILocation(line: 485, column: 16, scope: !965)
!967 = !DILocation(line: 485, column: 21, scope: !965)
!968 = !DILocation(line: 485, column: 9, scope: !929)
!969 = !DILocation(line: 486, column: 19, scope: !965)
!970 = !DILocation(line: 486, column: 26, scope: !965)
!971 = !DILocation(line: 486, column: 31, scope: !965)
!972 = !DILocation(line: 486, column: 16, scope: !965)
!973 = !DILocation(line: 486, column: 9, scope: !965)
!974 = !DILocation(line: 487, column: 12, scope: !929)
!975 = !DILocation(line: 487, column: 5, scope: !929)
!976 = !DILocation(line: 488, column: 1, scope: !929)
!977 = distinct !DISubprogram(name: "gzoffset", scope: !87, file: !87, line: 491, type: !869, isLocal: false, isDefinition: true, scopeLine: 493, isOptimized: false, unit: !0, variables: !2)
!978 = !DILocalVariable(name: "file", arg: 1, scope: !977, file: !87, line: 492, type: !81)
!979 = !DILocation(line: 492, column: 12, scope: !977)
!980 = !DILocalVariable(name: "ret", scope: !977, file: !87, line: 494, type: !21)
!981 = !DILocation(line: 494, column: 10, scope: !977)
!982 = !DILocation(line: 496, column: 22, scope: !977)
!983 = !DILocation(line: 496, column: 11, scope: !977)
!984 = !DILocation(line: 496, column: 9, scope: !977)
!985 = !DILocation(line: 497, column: 12, scope: !977)
!986 = !DILocation(line: 497, column: 25, scope: !977)
!987 = !DILocation(line: 497, column: 16, scope: !977)
!988 = !DILocation(line: 497, column: 37, scope: !989)
!989 = !DILexicalBlockFile(scope: !977, file: !87, discriminator: 1)
!990 = !DILocation(line: 497, column: 12, scope: !989)
!991 = !DILocation(line: 497, column: 12, scope: !992)
!992 = !DILexicalBlockFile(scope: !977, file: !87, discriminator: 2)
!993 = !DILocation(line: 497, column: 12, scope: !994)
!994 = !DILexicalBlockFile(scope: !977, file: !87, discriminator: 3)
!995 = !DILocation(line: 497, column: 5, scope: !994)
!996 = distinct !DISubprogram(name: "gzeof", scope: !87, file: !87, line: 501, type: !441, isLocal: false, isDefinition: true, scopeLine: 503, isOptimized: false, unit: !0, variables: !2)
!997 = !DILocalVariable(name: "file", arg: 1, scope: !996, file: !87, line: 502, type: !81)
!998 = !DILocation(line: 502, column: 12, scope: !996)
!999 = !DILocalVariable(name: "state", scope: !996, file: !87, line: 504, type: !5)
!1000 = !DILocation(line: 504, column: 15, scope: !996)
!1001 = !DILocation(line: 507, column: 9, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !996, file: !87, line: 507, column: 9)
!1003 = !DILocation(line: 507, column: 14, scope: !1002)
!1004 = !DILocation(line: 507, column: 9, scope: !996)
!1005 = !DILocation(line: 508, column: 9, scope: !1002)
!1006 = !DILocation(line: 509, column: 24, scope: !996)
!1007 = !DILocation(line: 509, column: 13, scope: !996)
!1008 = !DILocation(line: 509, column: 11, scope: !996)
!1009 = !DILocation(line: 510, column: 9, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !996, file: !87, line: 510, column: 9)
!1011 = !DILocation(line: 510, column: 16, scope: !1010)
!1012 = !DILocation(line: 510, column: 21, scope: !1010)
!1013 = !DILocation(line: 510, column: 29, scope: !1010)
!1014 = !DILocation(line: 510, column: 32, scope: !1015)
!1015 = !DILexicalBlockFile(scope: !1010, file: !87, discriminator: 1)
!1016 = !DILocation(line: 510, column: 39, scope: !1015)
!1017 = !DILocation(line: 510, column: 44, scope: !1015)
!1018 = !DILocation(line: 510, column: 9, scope: !1015)
!1019 = !DILocation(line: 511, column: 9, scope: !1010)
!1020 = !DILocation(line: 514, column: 12, scope: !996)
!1021 = !DILocation(line: 514, column: 19, scope: !996)
!1022 = !DILocation(line: 514, column: 24, scope: !996)
!1023 = !DILocation(line: 514, column: 34, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !996, file: !87, discriminator: 1)
!1025 = !DILocation(line: 514, column: 41, scope: !1024)
!1026 = !DILocation(line: 514, column: 12, scope: !1024)
!1027 = !DILocation(line: 514, column: 12, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !996, file: !87, discriminator: 2)
!1029 = !DILocation(line: 514, column: 12, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !996, file: !87, discriminator: 3)
!1031 = !DILocation(line: 514, column: 5, scope: !1030)
!1032 = !DILocation(line: 515, column: 1, scope: !996)
!1033 = distinct !DISubprogram(name: "gzerror", scope: !87, file: !87, line: 518, type: !1034, isLocal: false, isDefinition: true, scopeLine: 521, isOptimized: false, unit: !0, variables: !2)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!90, !81, !1036}
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!1037 = !DILocalVariable(name: "file", arg: 1, scope: !1033, file: !87, line: 519, type: !81)
!1038 = !DILocation(line: 519, column: 12, scope: !1033)
!1039 = !DILocalVariable(name: "errnum", arg: 2, scope: !1033, file: !87, line: 520, type: !1036)
!1040 = !DILocation(line: 520, column: 10, scope: !1033)
!1041 = !DILocalVariable(name: "state", scope: !1033, file: !87, line: 522, type: !5)
!1042 = !DILocation(line: 522, column: 15, scope: !1033)
!1043 = !DILocation(line: 525, column: 9, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1033, file: !87, line: 525, column: 9)
!1045 = !DILocation(line: 525, column: 14, scope: !1044)
!1046 = !DILocation(line: 525, column: 9, scope: !1033)
!1047 = !DILocation(line: 526, column: 9, scope: !1044)
!1048 = !DILocation(line: 527, column: 24, scope: !1033)
!1049 = !DILocation(line: 527, column: 13, scope: !1033)
!1050 = !DILocation(line: 527, column: 11, scope: !1033)
!1051 = !DILocation(line: 528, column: 9, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1033, file: !87, line: 528, column: 9)
!1053 = !DILocation(line: 528, column: 16, scope: !1052)
!1054 = !DILocation(line: 528, column: 21, scope: !1052)
!1055 = !DILocation(line: 528, column: 29, scope: !1052)
!1056 = !DILocation(line: 528, column: 32, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1052, file: !87, discriminator: 1)
!1058 = !DILocation(line: 528, column: 39, scope: !1057)
!1059 = !DILocation(line: 528, column: 44, scope: !1057)
!1060 = !DILocation(line: 528, column: 9, scope: !1057)
!1061 = !DILocation(line: 529, column: 9, scope: !1052)
!1062 = !DILocation(line: 532, column: 9, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1033, file: !87, line: 532, column: 9)
!1064 = !DILocation(line: 532, column: 16, scope: !1063)
!1065 = !DILocation(line: 532, column: 9, scope: !1033)
!1066 = !DILocation(line: 533, column: 19, scope: !1063)
!1067 = !DILocation(line: 533, column: 26, scope: !1063)
!1068 = !DILocation(line: 533, column: 10, scope: !1063)
!1069 = !DILocation(line: 533, column: 17, scope: !1063)
!1070 = !DILocation(line: 533, column: 9, scope: !1063)
!1071 = !DILocation(line: 534, column: 12, scope: !1033)
!1072 = !DILocation(line: 534, column: 19, scope: !1033)
!1073 = !DILocation(line: 534, column: 23, scope: !1033)
!1074 = !DILocation(line: 534, column: 12, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !1033, file: !87, discriminator: 1)
!1076 = !DILocation(line: 534, column: 37, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1033, file: !87, discriminator: 2)
!1078 = !DILocation(line: 534, column: 44, scope: !1077)
!1079 = !DILocation(line: 534, column: 12, scope: !1077)
!1080 = !DILocation(line: 534, column: 12, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1033, file: !87, discriminator: 3)
!1082 = !DILocation(line: 534, column: 5, scope: !1081)
!1083 = !DILocation(line: 535, column: 1, scope: !1033)
!1084 = distinct !DISubprogram(name: "gzclearerr", scope: !87, file: !87, line: 538, type: !1085, isLocal: false, isDefinition: true, scopeLine: 540, isOptimized: false, unit: !0, variables: !2)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !81}
!1087 = !DILocalVariable(name: "file", arg: 1, scope: !1084, file: !87, line: 539, type: !81)
!1088 = !DILocation(line: 539, column: 12, scope: !1084)
!1089 = !DILocalVariable(name: "state", scope: !1084, file: !87, line: 541, type: !5)
!1090 = !DILocation(line: 541, column: 15, scope: !1084)
!1091 = !DILocation(line: 544, column: 9, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1084, file: !87, line: 544, column: 9)
!1093 = !DILocation(line: 544, column: 14, scope: !1092)
!1094 = !DILocation(line: 544, column: 9, scope: !1084)
!1095 = !DILocation(line: 545, column: 9, scope: !1092)
!1096 = !DILocation(line: 546, column: 24, scope: !1084)
!1097 = !DILocation(line: 546, column: 13, scope: !1084)
!1098 = !DILocation(line: 546, column: 11, scope: !1084)
!1099 = !DILocation(line: 547, column: 9, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1084, file: !87, line: 547, column: 9)
!1101 = !DILocation(line: 547, column: 16, scope: !1100)
!1102 = !DILocation(line: 547, column: 21, scope: !1100)
!1103 = !DILocation(line: 547, column: 29, scope: !1100)
!1104 = !DILocation(line: 547, column: 32, scope: !1105)
!1105 = !DILexicalBlockFile(scope: !1100, file: !87, discriminator: 1)
!1106 = !DILocation(line: 547, column: 39, scope: !1105)
!1107 = !DILocation(line: 547, column: 44, scope: !1105)
!1108 = !DILocation(line: 547, column: 9, scope: !1105)
!1109 = !DILocation(line: 548, column: 9, scope: !1100)
!1110 = !DILocation(line: 551, column: 9, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1084, file: !87, line: 551, column: 9)
!1112 = !DILocation(line: 551, column: 16, scope: !1111)
!1113 = !DILocation(line: 551, column: 21, scope: !1111)
!1114 = !DILocation(line: 551, column: 9, scope: !1084)
!1115 = !DILocation(line: 552, column: 9, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1111, file: !87, line: 551, column: 30)
!1117 = !DILocation(line: 552, column: 16, scope: !1116)
!1118 = !DILocation(line: 552, column: 20, scope: !1116)
!1119 = !DILocation(line: 553, column: 9, scope: !1116)
!1120 = !DILocation(line: 553, column: 16, scope: !1116)
!1121 = !DILocation(line: 553, column: 21, scope: !1116)
!1122 = !DILocation(line: 554, column: 5, scope: !1116)
!1123 = !DILocation(line: 555, column: 14, scope: !1084)
!1124 = !DILocation(line: 555, column: 5, scope: !1084)
!1125 = !DILocation(line: 556, column: 1, scope: !1084)
!1126 = !DILocation(line: 556, column: 1, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1084, file: !87, discriminator: 1)
