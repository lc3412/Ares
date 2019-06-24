; ModuleID = './[inter]third-party--zlib-1.2.7--gzread.o.i'
source_filename = "./[inter]third-party--zlib-1.2.7--gzread.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gzFile_s = type { i32, i8*, i64 }
%struct.gz_state = type { %struct.gzFile_s, i32, i32, i8*, i32, i32, i8*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, i8*, %struct.z_stream_s }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"requested length does not fit in int\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"out of room to push characters\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"stdio error (consult errno)\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"unexpected end of file\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"internal error: inflate stream corrupt\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"compressed data error\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"1.2.7\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gzread(%struct.gzFile_s*, i8*, i32) #0 !dbg !84 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gzFile_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gz_state*, align 8
  %11 = alloca %struct.z_stream_s*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %5, metadata !91, metadata !92), !dbg !93
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !94, metadata !92), !dbg !95
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !96, metadata !92), !dbg !97
  call void @llvm.dbg.declare(metadata i32* %8, metadata !98, metadata !92), !dbg !99
  call void @llvm.dbg.declare(metadata i32* %9, metadata !100, metadata !92), !dbg !101
  call void @llvm.dbg.declare(metadata %struct.gz_state** %10, metadata !102, metadata !92), !dbg !103
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %11, metadata !104, metadata !92), !dbg !107
  %12 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8, !dbg !108
  %13 = icmp eq %struct.gzFile_s* %12, null, !dbg !110
  br i1 %13, label %14, label %15, !dbg !111

; <label>:14:                                     ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !112
  br label %192, !dbg !112

; <label>:15:                                     ; preds = %3
  %16 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8, !dbg !113
  %17 = bitcast %struct.gzFile_s* %16 to %struct.gz_state*, !dbg !114
  store %struct.gz_state* %17, %struct.gz_state** %10, align 8, !dbg !115
  %18 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !116
  %19 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %18, i32 0, i32 19, !dbg !117
  store %struct.z_stream_s* %19, %struct.z_stream_s** %11, align 8, !dbg !118
  %20 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !119
  %21 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %20, i32 0, i32 1, !dbg !121
  %22 = load i32, i32* %21, align 8, !dbg !121
  %23 = icmp ne i32 %22, 7247, !dbg !122
  br i1 %23, label %34, label %24, !dbg !123

; <label>:24:                                     ; preds = %15
  %25 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !124
  %26 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %25, i32 0, i32 17, !dbg !125
  %27 = load i32, i32* %26, align 4, !dbg !125
  %28 = icmp ne i32 %27, 0, !dbg !126
  br i1 %28, label %29, label %35, !dbg !127

; <label>:29:                                     ; preds = %24
  %30 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !128
  %31 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %30, i32 0, i32 17, !dbg !130
  %32 = load i32, i32* %31, align 4, !dbg !130
  %33 = icmp ne i32 %32, -5, !dbg !131
  br i1 %33, label %34, label %35, !dbg !132

; <label>:34:                                     ; preds = %29, %15
  store i32 -1, i32* %4, align 4, !dbg !134
  br label %192, !dbg !134

; <label>:35:                                     ; preds = %29, %24
  %36 = load i32, i32* %7, align 4, !dbg !135
  %37 = icmp slt i32 %36, 0, !dbg !137
  br i1 %37, label %38, label %40, !dbg !138

; <label>:38:                                     ; preds = %35
  %39 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !139
  call void @gz_error(%struct.gz_state* %39, i32 -3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0)), !dbg !141
  store i32 -1, i32* %4, align 4, !dbg !142
  br label %192, !dbg !142

; <label>:40:                                     ; preds = %35
  %41 = load i32, i32* %7, align 4, !dbg !143
  %42 = icmp eq i32 %41, 0, !dbg !145
  br i1 %42, label %43, label %44, !dbg !146

; <label>:43:                                     ; preds = %40
  store i32 0, i32* %4, align 4, !dbg !147
  br label %192, !dbg !147

; <label>:44:                                     ; preds = %40
  %45 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !148
  %46 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %45, i32 0, i32 16, !dbg !150
  %47 = load i32, i32* %46, align 8, !dbg !150
  %48 = icmp ne i32 %47, 0, !dbg !148
  br i1 %48, label %49, label %60, !dbg !151

; <label>:49:                                     ; preds = %44
  %50 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !152
  %51 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %50, i32 0, i32 16, !dbg !154
  store i32 0, i32* %51, align 8, !dbg !155
  %52 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !156
  %53 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !158
  %54 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %53, i32 0, i32 15, !dbg !159
  %55 = load i64, i64* %54, align 8, !dbg !159
  %56 = call i32 @gz_skip(%struct.gz_state* %52, i64 %55), !dbg !160
  %57 = icmp eq i32 %56, -1, !dbg !161
  br i1 %57, label %58, label %59, !dbg !162

; <label>:58:                                     ; preds = %49
  store i32 -1, i32* %4, align 4, !dbg !163
  br label %192, !dbg !163

; <label>:59:                                     ; preds = %49
  br label %60, !dbg !164

; <label>:60:                                     ; preds = %59, %44
  store i32 0, i32* %8, align 4, !dbg !165
  br label %61, !dbg !166, !llvm.loop !167

; <label>:61:                                     ; preds = %187, %60
  %62 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !168
  %63 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %62, i32 0, i32 0, !dbg !171
  %64 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %63, i32 0, i32 0, !dbg !172
  %65 = load i32, i32* %64, align 8, !dbg !172
  %66 = icmp ne i32 %65, 0, !dbg !168
  br i1 %66, label %67, label %103, !dbg !173

; <label>:67:                                     ; preds = %61
  %68 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !174
  %69 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %68, i32 0, i32 0, !dbg !176
  %70 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %69, i32 0, i32 0, !dbg !177
  %71 = load i32, i32* %70, align 8, !dbg !177
  %72 = load i32, i32* %7, align 4, !dbg !178
  %73 = icmp ugt i32 %71, %72, !dbg !179
  br i1 %73, label %74, label %76, !dbg !174

; <label>:74:                                     ; preds = %67
  %75 = load i32, i32* %7, align 4, !dbg !180
  br label %81, !dbg !182

; <label>:76:                                     ; preds = %67
  %77 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !183
  %78 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %77, i32 0, i32 0, !dbg !185
  %79 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %78, i32 0, i32 0, !dbg !186
  %80 = load i32, i32* %79, align 8, !dbg !186
  br label %81, !dbg !187

; <label>:81:                                     ; preds = %76, %74
  %82 = phi i32 [ %75, %74 ], [ %80, %76 ], !dbg !188
  store i32 %82, i32* %9, align 4, !dbg !190
  %83 = load i8*, i8** %6, align 8, !dbg !191
  %84 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !192
  %85 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %84, i32 0, i32 0, !dbg !193
  %86 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %85, i32 0, i32 1, !dbg !194
  %87 = load i8*, i8** %86, align 8, !dbg !194
  %88 = load i32, i32* %9, align 4, !dbg !195
  %89 = zext i32 %88 to i64, !dbg !195
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %87, i64 %89, i32 1, i1 false), !dbg !196
  %90 = load i32, i32* %9, align 4, !dbg !197
  %91 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !198
  %92 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %91, i32 0, i32 0, !dbg !199
  %93 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %92, i32 0, i32 1, !dbg !200
  %94 = load i8*, i8** %93, align 8, !dbg !201
  %95 = zext i32 %90 to i64, !dbg !201
  %96 = getelementptr inbounds i8, i8* %94, i64 %95, !dbg !201
  store i8* %96, i8** %93, align 8, !dbg !201
  %97 = load i32, i32* %9, align 4, !dbg !202
  %98 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !203
  %99 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %98, i32 0, i32 0, !dbg !204
  %100 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %99, i32 0, i32 0, !dbg !205
  %101 = load i32, i32* %100, align 8, !dbg !206
  %102 = sub i32 %101, %97, !dbg !206
  store i32 %102, i32* %100, align 8, !dbg !206
  br label %169, !dbg !207

; <label>:103:                                    ; preds = %61
  %104 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !208
  %105 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %104, i32 0, i32 11, !dbg !210
  %106 = load i32, i32* %105, align 8, !dbg !210
  %107 = icmp ne i32 %106, 0, !dbg !208
  br i1 %107, label %108, label %116, !dbg !211

; <label>:108:                                    ; preds = %103
  %109 = load %struct.z_stream_s*, %struct.z_stream_s** %11, align 8, !dbg !212
  %110 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %109, i32 0, i32 1, !dbg !214
  %111 = load i32, i32* %110, align 8, !dbg !214
  %112 = icmp eq i32 %111, 0, !dbg !215
  br i1 %112, label %113, label %116, !dbg !216

; <label>:113:                                    ; preds = %108
  %114 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !217
  %115 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %114, i32 0, i32 12, !dbg !219
  store i32 1, i32* %115, align 4, !dbg !220
  br label %190, !dbg !221

; <label>:116:                                    ; preds = %108, %103
  %117 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !222
  %118 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %117, i32 0, i32 9, !dbg !224
  %119 = load i32, i32* %118, align 4, !dbg !224
  %120 = icmp eq i32 %119, 0, !dbg !225
  br i1 %120, label %128, label %121, !dbg !226

; <label>:121:                                    ; preds = %116
  %122 = load i32, i32* %7, align 4, !dbg !227
  %123 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !229
  %124 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %123, i32 0, i32 4, !dbg !230
  %125 = load i32, i32* %124, align 8, !dbg !230
  %126 = shl i32 %125, 1, !dbg !231
  %127 = icmp ult i32 %122, %126, !dbg !232
  br i1 %127, label %128, label %134, !dbg !233

; <label>:128:                                    ; preds = %121, %116
  %129 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !234
  %130 = call i32 @gz_fetch(%struct.gz_state* %129), !dbg !237
  %131 = icmp eq i32 %130, -1, !dbg !238
  br i1 %131, label %132, label %133, !dbg !239

; <label>:132:                                    ; preds = %128
  store i32 -1, i32* %4, align 4, !dbg !240
  br label %192, !dbg !240

; <label>:133:                                    ; preds = %128
  br label %187, !dbg !241

; <label>:134:                                    ; preds = %121
  %135 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !242
  %136 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %135, i32 0, i32 9, !dbg !244
  %137 = load i32, i32* %136, align 4, !dbg !244
  %138 = icmp eq i32 %137, 1, !dbg !245
  br i1 %138, label %139, label %147, !dbg !246

; <label>:139:                                    ; preds = %134
  %140 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !247
  %141 = load i8*, i8** %6, align 8, !dbg !250
  %142 = load i32, i32* %7, align 4, !dbg !251
  %143 = call i32 @gz_load(%struct.gz_state* %140, i8* %141, i32 %142, i32* %9), !dbg !252
  %144 = icmp eq i32 %143, -1, !dbg !253
  br i1 %144, label %145, label %146, !dbg !254

; <label>:145:                                    ; preds = %139
  store i32 -1, i32* %4, align 4, !dbg !255
  br label %192, !dbg !255

; <label>:146:                                    ; preds = %139
  br label %166, !dbg !256

; <label>:147:                                    ; preds = %134
  %148 = load i32, i32* %7, align 4, !dbg !257
  %149 = load %struct.z_stream_s*, %struct.z_stream_s** %11, align 8, !dbg !259
  %150 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %149, i32 0, i32 4, !dbg !260
  store i32 %148, i32* %150, align 8, !dbg !261
  %151 = load i8*, i8** %6, align 8, !dbg !262
  %152 = load %struct.z_stream_s*, %struct.z_stream_s** %11, align 8, !dbg !263
  %153 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %152, i32 0, i32 3, !dbg !264
  store i8* %151, i8** %153, align 8, !dbg !265
  %154 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !266
  %155 = call i32 @gz_decomp(%struct.gz_state* %154), !dbg !268
  %156 = icmp eq i32 %155, -1, !dbg !269
  br i1 %156, label %157, label %158, !dbg !270

; <label>:157:                                    ; preds = %147
  store i32 -1, i32* %4, align 4, !dbg !271
  br label %192, !dbg !271

; <label>:158:                                    ; preds = %147
  %159 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !272
  %160 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %159, i32 0, i32 0, !dbg !273
  %161 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %160, i32 0, i32 0, !dbg !274
  %162 = load i32, i32* %161, align 8, !dbg !274
  store i32 %162, i32* %9, align 4, !dbg !275
  %163 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !276
  %164 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %163, i32 0, i32 0, !dbg !277
  %165 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %164, i32 0, i32 0, !dbg !278
  store i32 0, i32* %165, align 8, !dbg !279
  br label %166

; <label>:166:                                    ; preds = %158, %146
  br label %167

; <label>:167:                                    ; preds = %166
  br label %168

; <label>:168:                                    ; preds = %167
  br label %169

; <label>:169:                                    ; preds = %168, %81
  %170 = load i32, i32* %9, align 4, !dbg !280
  %171 = load i32, i32* %7, align 4, !dbg !281
  %172 = sub i32 %171, %170, !dbg !281
  store i32 %172, i32* %7, align 4, !dbg !281
  %173 = load i8*, i8** %6, align 8, !dbg !282
  %174 = load i32, i32* %9, align 4, !dbg !283
  %175 = zext i32 %174 to i64, !dbg !284
  %176 = getelementptr inbounds i8, i8* %173, i64 %175, !dbg !284
  store i8* %176, i8** %6, align 8, !dbg !285
  %177 = load i32, i32* %9, align 4, !dbg !286
  %178 = load i32, i32* %8, align 4, !dbg !287
  %179 = add i32 %178, %177, !dbg !287
  store i32 %179, i32* %8, align 4, !dbg !287
  %180 = load i32, i32* %9, align 4, !dbg !288
  %181 = zext i32 %180 to i64, !dbg !288
  %182 = load %struct.gz_state*, %struct.gz_state** %10, align 8, !dbg !289
  %183 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %182, i32 0, i32 0, !dbg !290
  %184 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %183, i32 0, i32 2, !dbg !291
  %185 = load i64, i64* %184, align 8, !dbg !292
  %186 = add nsw i64 %185, %181, !dbg !292
  store i64 %186, i64* %184, align 8, !dbg !292
  br label %187, !dbg !293

; <label>:187:                                    ; preds = %169, %133
  %188 = load i32, i32* %7, align 4, !dbg !294
  %189 = icmp ne i32 %188, 0, !dbg !295
  br i1 %189, label %61, label %190, !dbg !295, !llvm.loop !167

; <label>:190:                                    ; preds = %187, %113
  %191 = load i32, i32* %8, align 4, !dbg !296
  store i32 %191, i32* %4, align 4, !dbg !297
  br label %192, !dbg !297

; <label>:192:                                    ; preds = %190, %157, %145, %132, %58, %43, %38, %34, %14
  %193 = load i32, i32* %4, align 4, !dbg !298
  ret i32 %193, !dbg !298
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gz_error(%struct.gz_state*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gz_skip(%struct.gz_state*, i64) #0 !dbg !299 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gz_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.gz_state* %0, %struct.gz_state** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gz_state** %4, metadata !302, metadata !92), !dbg !303
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !304, metadata !92), !dbg !305
  call void @llvm.dbg.declare(metadata i32* %6, metadata !306, metadata !92), !dbg !307
  br label %7, !dbg !308

; <label>:7:                                      ; preds = %77, %2
  %8 = load i64, i64* %5, align 8, !dbg !309
  %9 = icmp ne i64 %8, 0, !dbg !311
  br i1 %9, label %10, label %78, !dbg !311

; <label>:10:                                     ; preds = %7
  %11 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !312
  %12 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %11, i32 0, i32 0, !dbg !314
  %13 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %12, i32 0, i32 0, !dbg !315
  %14 = load i32, i32* %13, align 8, !dbg !315
  %15 = icmp ne i32 %14, 0, !dbg !312
  br i1 %15, label %16, label %58, !dbg !316

; <label>:16:                                     ; preds = %10
  %17 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !317
  %18 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %17, i32 0, i32 0, !dbg !319
  %19 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %18, i32 0, i32 0, !dbg !320
  %20 = load i32, i32* %19, align 8, !dbg !320
  %21 = zext i32 %20 to i64, !dbg !321
  %22 = load i64, i64* %5, align 8, !dbg !322
  %23 = icmp sgt i64 %21, %22, !dbg !323
  br i1 %23, label %24, label %27, !dbg !324

; <label>:24:                                     ; preds = %16
  %25 = load i64, i64* %5, align 8, !dbg !325
  %26 = trunc i64 %25 to i32, !dbg !326
  br label %32, !dbg !327

; <label>:27:                                     ; preds = %16
  %28 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !329
  %29 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %28, i32 0, i32 0, !dbg !330
  %30 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %29, i32 0, i32 0, !dbg !331
  %31 = load i32, i32* %30, align 8, !dbg !331
  br label %32, !dbg !332

; <label>:32:                                     ; preds = %27, %24
  %33 = phi i32 [ %26, %24 ], [ %31, %27 ], !dbg !334
  store i32 %33, i32* %6, align 4, !dbg !336
  %34 = load i32, i32* %6, align 4, !dbg !337
  %35 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !338
  %36 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %35, i32 0, i32 0, !dbg !339
  %37 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %36, i32 0, i32 0, !dbg !340
  %38 = load i32, i32* %37, align 8, !dbg !341
  %39 = sub i32 %38, %34, !dbg !341
  store i32 %39, i32* %37, align 8, !dbg !341
  %40 = load i32, i32* %6, align 4, !dbg !342
  %41 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !343
  %42 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %41, i32 0, i32 0, !dbg !344
  %43 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %42, i32 0, i32 1, !dbg !345
  %44 = load i8*, i8** %43, align 8, !dbg !346
  %45 = zext i32 %40 to i64, !dbg !346
  %46 = getelementptr inbounds i8, i8* %44, i64 %45, !dbg !346
  store i8* %46, i8** %43, align 8, !dbg !346
  %47 = load i32, i32* %6, align 4, !dbg !347
  %48 = zext i32 %47 to i64, !dbg !347
  %49 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !348
  %50 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %49, i32 0, i32 0, !dbg !349
  %51 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %50, i32 0, i32 2, !dbg !350
  %52 = load i64, i64* %51, align 8, !dbg !351
  %53 = add nsw i64 %52, %48, !dbg !351
  store i64 %53, i64* %51, align 8, !dbg !351
  %54 = load i32, i32* %6, align 4, !dbg !352
  %55 = zext i32 %54 to i64, !dbg !352
  %56 = load i64, i64* %5, align 8, !dbg !353
  %57 = sub nsw i64 %56, %55, !dbg !353
  store i64 %57, i64* %5, align 8, !dbg !353
  br label %77, !dbg !354

; <label>:58:                                     ; preds = %10
  %59 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !355
  %60 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %59, i32 0, i32 11, !dbg !357
  %61 = load i32, i32* %60, align 8, !dbg !357
  %62 = icmp ne i32 %61, 0, !dbg !355
  br i1 %62, label %63, label %70, !dbg !358

; <label>:63:                                     ; preds = %58
  %64 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !359
  %65 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %64, i32 0, i32 19, !dbg !361
  %66 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %65, i32 0, i32 1, !dbg !362
  %67 = load i32, i32* %66, align 8, !dbg !362
  %68 = icmp eq i32 %67, 0, !dbg !363
  br i1 %68, label %69, label %70, !dbg !364

; <label>:69:                                     ; preds = %63
  br label %78, !dbg !365

; <label>:70:                                     ; preds = %63, %58
  %71 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !366
  %72 = call i32 @gz_fetch(%struct.gz_state* %71), !dbg !369
  %73 = icmp eq i32 %72, -1, !dbg !370
  br i1 %73, label %74, label %75, !dbg !371

; <label>:74:                                     ; preds = %70
  store i32 -1, i32* %3, align 4, !dbg !372
  br label %79, !dbg !372

; <label>:75:                                     ; preds = %70
  br label %76

; <label>:76:                                     ; preds = %75
  br label %77

; <label>:77:                                     ; preds = %76, %32
  br label %7, !dbg !373, !llvm.loop !375

; <label>:78:                                     ; preds = %69, %7
  store i32 0, i32* %3, align 4, !dbg !376
  br label %79, !dbg !376

; <label>:79:                                     ; preds = %78, %74
  %80 = load i32, i32* %3, align 4, !dbg !377
  ret i32 %80, !dbg !377
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i32 @gz_fetch(%struct.gz_state*) #0 !dbg !378 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gz_state*, align 8
  %4 = alloca %struct.z_stream_s*, align 8
  store %struct.gz_state* %0, %struct.gz_state** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.gz_state** %3, metadata !381, metadata !92), !dbg !382
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %4, metadata !383, metadata !92), !dbg !384
  %5 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !385
  %6 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %5, i32 0, i32 19, !dbg !386
  store %struct.z_stream_s* %6, %struct.z_stream_s** %4, align 8, !dbg !384
  br label %7, !dbg !387, !llvm.loop !388

; <label>:7:                                      ; preds = %81, %1
  %8 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !389
  %9 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %8, i32 0, i32 9, !dbg !391
  %10 = load i32, i32* %9, align 4, !dbg !391
  switch i32 %10, label %62 [
    i32 0, label %11
    i32 1, label %23
    i32 2, label %45
  ], !dbg !392

; <label>:11:                                     ; preds = %7
  %12 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !393
  %13 = call i32 @gz_look(%struct.gz_state* %12), !dbg !396
  %14 = icmp eq i32 %13, -1, !dbg !397
  br i1 %14, label %15, label %16, !dbg !398

; <label>:15:                                     ; preds = %11
  store i32 -1, i32* %2, align 4, !dbg !399
  br label %84, !dbg !399

; <label>:16:                                     ; preds = %11
  %17 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !400
  %18 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %17, i32 0, i32 9, !dbg !402
  %19 = load i32, i32* %18, align 4, !dbg !402
  %20 = icmp eq i32 %19, 0, !dbg !403
  br i1 %20, label %21, label %22, !dbg !404

; <label>:21:                                     ; preds = %16
  store i32 0, i32* %2, align 4, !dbg !405
  br label %84, !dbg !405

; <label>:22:                                     ; preds = %16
  br label %62, !dbg !406

; <label>:23:                                     ; preds = %7
  %24 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !407
  %25 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !409
  %26 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %25, i32 0, i32 7, !dbg !410
  %27 = load i8*, i8** %26, align 8, !dbg !410
  %28 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !411
  %29 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %28, i32 0, i32 4, !dbg !412
  %30 = load i32, i32* %29, align 8, !dbg !412
  %31 = shl i32 %30, 1, !dbg !413
  %32 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !414
  %33 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %32, i32 0, i32 0, !dbg !415
  %34 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %33, i32 0, i32 0, !dbg !416
  %35 = call i32 @gz_load(%struct.gz_state* %24, i8* %27, i32 %31, i32* %34), !dbg !417
  %36 = icmp eq i32 %35, -1, !dbg !418
  br i1 %36, label %37, label %38, !dbg !419

; <label>:37:                                     ; preds = %23
  store i32 -1, i32* %2, align 4, !dbg !420
  br label %84, !dbg !420

; <label>:38:                                     ; preds = %23
  %39 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !421
  %40 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %39, i32 0, i32 7, !dbg !422
  %41 = load i8*, i8** %40, align 8, !dbg !422
  %42 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !423
  %43 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %42, i32 0, i32 0, !dbg !424
  %44 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %43, i32 0, i32 1, !dbg !425
  store i8* %41, i8** %44, align 8, !dbg !426
  store i32 0, i32* %2, align 4, !dbg !427
  br label %84, !dbg !427

; <label>:45:                                     ; preds = %7
  %46 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !428
  %47 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %46, i32 0, i32 4, !dbg !429
  %48 = load i32, i32* %47, align 8, !dbg !429
  %49 = shl i32 %48, 1, !dbg !430
  %50 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !431
  %51 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %50, i32 0, i32 4, !dbg !432
  store i32 %49, i32* %51, align 8, !dbg !433
  %52 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !434
  %53 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %52, i32 0, i32 7, !dbg !435
  %54 = load i8*, i8** %53, align 8, !dbg !435
  %55 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !436
  %56 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %55, i32 0, i32 3, !dbg !437
  store i8* %54, i8** %56, align 8, !dbg !438
  %57 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !439
  %58 = call i32 @gz_decomp(%struct.gz_state* %57), !dbg !441
  %59 = icmp eq i32 %58, -1, !dbg !442
  br i1 %59, label %60, label %61, !dbg !443

; <label>:60:                                     ; preds = %45
  store i32 -1, i32* %2, align 4, !dbg !444
  br label %84, !dbg !444

; <label>:61:                                     ; preds = %45
  br label %62, !dbg !445

; <label>:62:                                     ; preds = %61, %7, %22
  br label %63, !dbg !446

; <label>:63:                                     ; preds = %62
  %64 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !447
  %65 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %64, i32 0, i32 0, !dbg !449
  %66 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %65, i32 0, i32 0, !dbg !450
  %67 = load i32, i32* %66, align 8, !dbg !450
  %68 = icmp eq i32 %67, 0, !dbg !451
  br i1 %68, label %69, label %81, !dbg !452

; <label>:69:                                     ; preds = %63
  %70 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !453
  %71 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %70, i32 0, i32 11, !dbg !455
  %72 = load i32, i32* %71, align 8, !dbg !455
  %73 = icmp ne i32 %72, 0, !dbg !453
  br i1 %73, label %74, label %79, !dbg !456

; <label>:74:                                     ; preds = %69
  %75 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !457
  %76 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %75, i32 0, i32 1, !dbg !459
  %77 = load i32, i32* %76, align 8, !dbg !459
  %78 = icmp ne i32 %77, 0, !dbg !460
  br label %79, !dbg !460

; <label>:79:                                     ; preds = %74, %69
  %80 = phi i1 [ true, %69 ], [ %78, %74 ]
  br label %81

; <label>:81:                                     ; preds = %79, %63
  %82 = phi i1 [ false, %63 ], [ %80, %79 ]
  br i1 %82, label %7, label %83, !dbg !461, !llvm.loop !388

; <label>:83:                                     ; preds = %81
  store i32 0, i32* %2, align 4, !dbg !463
  br label %84, !dbg !463

; <label>:84:                                     ; preds = %83, %60, %38, %37, %21, %15
  %85 = load i32, i32* %2, align 4, !dbg !464
  ret i32 %85, !dbg !464
}

; Function Attrs: nounwind uwtable
define internal i32 @gz_load(%struct.gz_state*, i8*, i32, i32*) #0 !dbg !465 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gz_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.gz_state* %0, %struct.gz_state** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gz_state** %6, metadata !469, metadata !92), !dbg !470
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !471, metadata !92), !dbg !472
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !473, metadata !92), !dbg !474
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !475, metadata !92), !dbg !476
  call void @llvm.dbg.declare(metadata i32* %10, metadata !477, metadata !92), !dbg !478
  %11 = load i32*, i32** %9, align 8, !dbg !479
  store i32 0, i32* %11, align 4, !dbg !480
  br label %12, !dbg !481, !llvm.loop !482

; <label>:12:                                     ; preds = %34, %4
  %13 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !483
  %14 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %13, i32 0, i32 2, !dbg !485
  %15 = load i32, i32* %14, align 4, !dbg !485
  %16 = load i8*, i8** %7, align 8, !dbg !486
  %17 = load i32*, i32** %9, align 8, !dbg !487
  %18 = load i32, i32* %17, align 4, !dbg !488
  %19 = zext i32 %18 to i64, !dbg !489
  %20 = getelementptr inbounds i8, i8* %16, i64 %19, !dbg !489
  %21 = load i32, i32* %8, align 4, !dbg !490
  %22 = load i32*, i32** %9, align 8, !dbg !491
  %23 = load i32, i32* %22, align 4, !dbg !492
  %24 = sub i32 %21, %23, !dbg !493
  %25 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @read to i32 (i32, i8*, i32, ...)*)(i32 %15, i8* %20, i32 %24), !dbg !494
  store i32 %25, i32* %10, align 4, !dbg !495
  %26 = load i32, i32* %10, align 4, !dbg !496
  %27 = icmp sle i32 %26, 0, !dbg !498
  br i1 %27, label %28, label %29, !dbg !499

; <label>:28:                                     ; preds = %12
  br label %39, !dbg !500

; <label>:29:                                     ; preds = %12
  %30 = load i32, i32* %10, align 4, !dbg !501
  %31 = load i32*, i32** %9, align 8, !dbg !502
  %32 = load i32, i32* %31, align 4, !dbg !503
  %33 = add i32 %32, %30, !dbg !503
  store i32 %33, i32* %31, align 4, !dbg !503
  br label %34, !dbg !504

; <label>:34:                                     ; preds = %29
  %35 = load i32*, i32** %9, align 8, !dbg !505
  %36 = load i32, i32* %35, align 4, !dbg !507
  %37 = load i32, i32* %8, align 4, !dbg !508
  %38 = icmp ult i32 %36, %37, !dbg !509
  br i1 %38, label %12, label %39, !dbg !510, !llvm.loop !482

; <label>:39:                                     ; preds = %34, %28
  %40 = load i32, i32* %10, align 4, !dbg !511
  %41 = icmp slt i32 %40, 0, !dbg !513
  br i1 %41, label %42, label %44, !dbg !514

; <label>:42:                                     ; preds = %39
  %43 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !515
  call void @gz_error(%struct.gz_state* %43, i32 -1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0)), !dbg !517
  store i32 -1, i32* %5, align 4, !dbg !518
  br label %51, !dbg !518

; <label>:44:                                     ; preds = %39
  %45 = load i32, i32* %10, align 4, !dbg !519
  %46 = icmp eq i32 %45, 0, !dbg !521
  br i1 %46, label %47, label %50, !dbg !522

; <label>:47:                                     ; preds = %44
  %48 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !523
  %49 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %48, i32 0, i32 11, !dbg !524
  store i32 1, i32* %49, align 8, !dbg !525
  br label %50, !dbg !523

; <label>:50:                                     ; preds = %47, %44
  store i32 0, i32* %5, align 4, !dbg !526
  br label %51, !dbg !526

; <label>:51:                                     ; preds = %50, %42
  %52 = load i32, i32* %5, align 4, !dbg !527
  ret i32 %52, !dbg !527
}

; Function Attrs: nounwind uwtable
define internal i32 @gz_decomp(%struct.gz_state*) #0 !dbg !528 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gz_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_stream_s*, align 8
  store %struct.gz_state* %0, %struct.gz_state** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.gz_state** %3, metadata !529, metadata !92), !dbg !530
  call void @llvm.dbg.declare(metadata i32* %4, metadata !531, metadata !92), !dbg !532
  store i32 0, i32* %4, align 4, !dbg !532
  call void @llvm.dbg.declare(metadata i32* %5, metadata !533, metadata !92), !dbg !534
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %6, metadata !535, metadata !92), !dbg !536
  %7 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !537
  %8 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %7, i32 0, i32 19, !dbg !538
  store %struct.z_stream_s* %8, %struct.z_stream_s** %6, align 8, !dbg !536
  %9 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8, !dbg !539
  %10 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 4, !dbg !540
  %11 = load i32, i32* %10, align 8, !dbg !540
  store i32 %11, i32* %5, align 4, !dbg !541
  br label %12, !dbg !542, !llvm.loop !543

; <label>:12:                                     ; preds = %69, %1
  %13 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8, !dbg !544
  %14 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %13, i32 0, i32 1, !dbg !547
  %15 = load i32, i32* %14, align 8, !dbg !547
  %16 = icmp eq i32 %15, 0, !dbg !548
  br i1 %16, label %17, label %22, !dbg !549

; <label>:17:                                     ; preds = %12
  %18 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !550
  %19 = call i32 @gz_avail(%struct.gz_state* %18), !dbg !552
  %20 = icmp eq i32 %19, -1, !dbg !553
  br i1 %20, label %21, label %22, !dbg !554

; <label>:21:                                     ; preds = %17
  store i32 -1, i32* %2, align 4, !dbg !555
  br label %99, !dbg !555

; <label>:22:                                     ; preds = %17, %12
  %23 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8, !dbg !556
  %24 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %23, i32 0, i32 1, !dbg !558
  %25 = load i32, i32* %24, align 8, !dbg !558
  %26 = icmp eq i32 %25, 0, !dbg !559
  br i1 %26, label %27, label %29, !dbg !560

; <label>:27:                                     ; preds = %22
  %28 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !561
  call void @gz_error(%struct.gz_state* %28, i32 -5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)), !dbg !563
  br label %71, !dbg !564

; <label>:29:                                     ; preds = %22
  %30 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8, !dbg !565
  %31 = call i32 @inflate(%struct.z_stream_s* %30, i32 0), !dbg !566
  store i32 %31, i32* %4, align 4, !dbg !567
  %32 = load i32, i32* %4, align 4, !dbg !568
  %33 = icmp eq i32 %32, -2, !dbg !570
  br i1 %33, label %37, label %34, !dbg !571

; <label>:34:                                     ; preds = %29
  %35 = load i32, i32* %4, align 4, !dbg !572
  %36 = icmp eq i32 %35, 2, !dbg !574
  br i1 %36, label %37, label %39, !dbg !575

; <label>:37:                                     ; preds = %34, %29
  %38 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !576
  call void @gz_error(%struct.gz_state* %38, i32 -2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0)), !dbg !578
  store i32 -1, i32* %2, align 4, !dbg !579
  br label %99, !dbg !579

; <label>:39:                                     ; preds = %34
  %40 = load i32, i32* %4, align 4, !dbg !580
  %41 = icmp eq i32 %40, -4, !dbg !582
  br i1 %41, label %42, label %44, !dbg !583

; <label>:42:                                     ; preds = %39
  %43 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !584
  call void @gz_error(%struct.gz_state* %43, i32 -4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)), !dbg !586
  store i32 -1, i32* %2, align 4, !dbg !587
  br label %99, !dbg !587

; <label>:44:                                     ; preds = %39
  %45 = load i32, i32* %4, align 4, !dbg !588
  %46 = icmp eq i32 %45, -3, !dbg !590
  br i1 %46, label %47, label %60, !dbg !591

; <label>:47:                                     ; preds = %44
  %48 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !592
  %49 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8, !dbg !594
  %50 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %49, i32 0, i32 6, !dbg !595
  %51 = load i8*, i8** %50, align 8, !dbg !595
  %52 = icmp eq i8* %51, null, !dbg !596
  br i1 %52, label %53, label %54, !dbg !594

; <label>:53:                                     ; preds = %47
  br label %58, !dbg !597

; <label>:54:                                     ; preds = %47
  %55 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8, !dbg !599
  %56 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %55, i32 0, i32 6, !dbg !601
  %57 = load i8*, i8** %56, align 8, !dbg !601
  br label %58, !dbg !602

; <label>:58:                                     ; preds = %54, %53
  %59 = phi i8* [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %53 ], [ %57, %54 ], !dbg !603
  call void @gz_error(%struct.gz_state* %48, i32 -3, i8* %59), !dbg !605
  store i32 -1, i32* %2, align 4, !dbg !606
  br label %99, !dbg !606

; <label>:60:                                     ; preds = %44
  br label %61, !dbg !607

; <label>:61:                                     ; preds = %60
  %62 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8, !dbg !608
  %63 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %62, i32 0, i32 4, !dbg !610
  %64 = load i32, i32* %63, align 8, !dbg !610
  %65 = icmp ne i32 %64, 0, !dbg !608
  br i1 %65, label %66, label %69, !dbg !611

; <label>:66:                                     ; preds = %61
  %67 = load i32, i32* %4, align 4, !dbg !612
  %68 = icmp ne i32 %67, 1, !dbg !614
  br label %69

; <label>:69:                                     ; preds = %66, %61
  %70 = phi i1 [ false, %61 ], [ %68, %66 ]
  br i1 %70, label %12, label %71, !dbg !615, !llvm.loop !543

; <label>:71:                                     ; preds = %69, %27
  %72 = load i32, i32* %5, align 4, !dbg !617
  %73 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8, !dbg !618
  %74 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %73, i32 0, i32 4, !dbg !619
  %75 = load i32, i32* %74, align 8, !dbg !619
  %76 = sub i32 %72, %75, !dbg !620
  %77 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !621
  %78 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %77, i32 0, i32 0, !dbg !622
  %79 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %78, i32 0, i32 0, !dbg !623
  store i32 %76, i32* %79, align 8, !dbg !624
  %80 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8, !dbg !625
  %81 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %80, i32 0, i32 3, !dbg !626
  %82 = load i8*, i8** %81, align 8, !dbg !626
  %83 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !627
  %84 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %83, i32 0, i32 0, !dbg !628
  %85 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %84, i32 0, i32 0, !dbg !629
  %86 = load i32, i32* %85, align 8, !dbg !629
  %87 = zext i32 %86 to i64, !dbg !630
  %88 = sub i64 0, %87, !dbg !630
  %89 = getelementptr inbounds i8, i8* %82, i64 %88, !dbg !630
  %90 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !631
  %91 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %90, i32 0, i32 0, !dbg !632
  %92 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %91, i32 0, i32 1, !dbg !633
  store i8* %89, i8** %92, align 8, !dbg !634
  %93 = load i32, i32* %4, align 4, !dbg !635
  %94 = icmp eq i32 %93, 1, !dbg !637
  br i1 %94, label %95, label %98, !dbg !638

; <label>:95:                                     ; preds = %71
  %96 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !639
  %97 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %96, i32 0, i32 9, !dbg !640
  store i32 0, i32* %97, align 4, !dbg !641
  br label %98, !dbg !639

; <label>:98:                                     ; preds = %95, %71
  store i32 0, i32* %2, align 4, !dbg !642
  br label %99, !dbg !642

; <label>:99:                                     ; preds = %98, %58, %42, %37, %21
  %100 = load i32, i32* %2, align 4, !dbg !643
  ret i32 %100, !dbg !643
}

; Function Attrs: nounwind uwtable
define i32 @gzgetc(%struct.gzFile_s*) #0 !dbg !644 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gzFile_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1 x i8], align 1
  %6 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %3, metadata !647, metadata !92), !dbg !648
  call void @llvm.dbg.declare(metadata i32* %4, metadata !649, metadata !92), !dbg !650
  call void @llvm.dbg.declare(metadata [1 x i8]* %5, metadata !651, metadata !92), !dbg !655
  call void @llvm.dbg.declare(metadata %struct.gz_state** %6, metadata !656, metadata !92), !dbg !657
  %7 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !658
  %8 = icmp eq %struct.gzFile_s* %7, null, !dbg !660
  br i1 %8, label %9, label %10, !dbg !661

; <label>:9:                                      ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !662
  br label %65, !dbg !662

; <label>:10:                                     ; preds = %1
  %11 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !663
  %12 = bitcast %struct.gzFile_s* %11 to %struct.gz_state*, !dbg !664
  store %struct.gz_state* %12, %struct.gz_state** %6, align 8, !dbg !665
  %13 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !666
  %14 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %13, i32 0, i32 1, !dbg !668
  %15 = load i32, i32* %14, align 8, !dbg !668
  %16 = icmp ne i32 %15, 7247, !dbg !669
  br i1 %16, label %27, label %17, !dbg !670

; <label>:17:                                     ; preds = %10
  %18 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !671
  %19 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %18, i32 0, i32 17, !dbg !672
  %20 = load i32, i32* %19, align 4, !dbg !672
  %21 = icmp ne i32 %20, 0, !dbg !673
  br i1 %21, label %22, label %28, !dbg !674

; <label>:22:                                     ; preds = %17
  %23 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !675
  %24 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %23, i32 0, i32 17, !dbg !677
  %25 = load i32, i32* %24, align 4, !dbg !677
  %26 = icmp ne i32 %25, -5, !dbg !678
  br i1 %26, label %27, label %28, !dbg !679

; <label>:27:                                     ; preds = %22, %10
  store i32 -1, i32* %2, align 4, !dbg !681
  br label %65, !dbg !681

; <label>:28:                                     ; preds = %22, %17
  %29 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !682
  %30 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %29, i32 0, i32 0, !dbg !684
  %31 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %30, i32 0, i32 0, !dbg !685
  %32 = load i32, i32* %31, align 8, !dbg !685
  %33 = icmp ne i32 %32, 0, !dbg !682
  br i1 %33, label %34, label %52, !dbg !686

; <label>:34:                                     ; preds = %28
  %35 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !687
  %36 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %35, i32 0, i32 0, !dbg !689
  %37 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %36, i32 0, i32 0, !dbg !690
  %38 = load i32, i32* %37, align 8, !dbg !691
  %39 = add i32 %38, -1, !dbg !691
  store i32 %39, i32* %37, align 8, !dbg !691
  %40 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !692
  %41 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %40, i32 0, i32 0, !dbg !693
  %42 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %41, i32 0, i32 2, !dbg !694
  %43 = load i64, i64* %42, align 8, !dbg !695
  %44 = add nsw i64 %43, 1, !dbg !695
  store i64 %44, i64* %42, align 8, !dbg !695
  %45 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !696
  %46 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %45, i32 0, i32 0, !dbg !697
  %47 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %46, i32 0, i32 1, !dbg !698
  %48 = load i8*, i8** %47, align 8, !dbg !699
  %49 = getelementptr inbounds i8, i8* %48, i32 1, !dbg !699
  store i8* %49, i8** %47, align 8, !dbg !699
  %50 = load i8, i8* %48, align 1, !dbg !700
  %51 = zext i8 %50 to i32, !dbg !700
  store i32 %51, i32* %2, align 4, !dbg !701
  br label %65, !dbg !701

; <label>:52:                                     ; preds = %28
  %53 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !702
  %54 = getelementptr inbounds [1 x i8], [1 x i8]* %5, i32 0, i32 0, !dbg !703
  %55 = call i32 @gzread(%struct.gzFile_s* %53, i8* %54, i32 1), !dbg !704
  store i32 %55, i32* %4, align 4, !dbg !705
  %56 = load i32, i32* %4, align 4, !dbg !706
  %57 = icmp slt i32 %56, 1, !dbg !707
  br i1 %57, label %58, label %59, !dbg !706

; <label>:58:                                     ; preds = %52
  br label %63, !dbg !708

; <label>:59:                                     ; preds = %52
  %60 = getelementptr inbounds [1 x i8], [1 x i8]* %5, i64 0, i64 0, !dbg !709
  %61 = load i8, i8* %60, align 1, !dbg !709
  %62 = zext i8 %61 to i32, !dbg !709
  br label %63, !dbg !711

; <label>:63:                                     ; preds = %59, %58
  %64 = phi i32 [ -1, %58 ], [ %62, %59 ], !dbg !712
  store i32 %64, i32* %2, align 4, !dbg !714
  br label %65, !dbg !714

; <label>:65:                                     ; preds = %63, %34, %27, %9
  %66 = load i32, i32* %2, align 4, !dbg !715
  ret i32 %66, !dbg !715
}

; Function Attrs: nounwind uwtable
define i32 @gzgetc_(%struct.gzFile_s*) #0 !dbg !716 {
  %2 = alloca %struct.gzFile_s*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %2, metadata !717, metadata !92), !dbg !718
  %3 = load %struct.gzFile_s*, %struct.gzFile_s** %2, align 8, !dbg !719
  %4 = call i32 @gzgetc(%struct.gzFile_s* %3), !dbg !720
  ret i32 %4, !dbg !721
}

; Function Attrs: nounwind uwtable
define i32 @gzungetc(i32, %struct.gzFile_s*) #0 !dbg !722 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gzFile_s*, align 8
  %6 = alloca %struct.gz_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !725, metadata !92), !dbg !726
  store %struct.gzFile_s* %1, %struct.gzFile_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %5, metadata !727, metadata !92), !dbg !728
  call void @llvm.dbg.declare(metadata %struct.gz_state** %6, metadata !729, metadata !92), !dbg !730
  %9 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8, !dbg !731
  %10 = icmp eq %struct.gzFile_s* %9, null, !dbg !733
  br i1 %10, label %11, label %12, !dbg !734

; <label>:11:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !735
  br label %171, !dbg !735

; <label>:12:                                     ; preds = %2
  %13 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8, !dbg !736
  %14 = bitcast %struct.gzFile_s* %13 to %struct.gz_state*, !dbg !737
  store %struct.gz_state* %14, %struct.gz_state** %6, align 8, !dbg !738
  %15 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !739
  %16 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %15, i32 0, i32 1, !dbg !741
  %17 = load i32, i32* %16, align 8, !dbg !741
  %18 = icmp ne i32 %17, 7247, !dbg !742
  br i1 %18, label %29, label %19, !dbg !743

; <label>:19:                                     ; preds = %12
  %20 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !744
  %21 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %20, i32 0, i32 17, !dbg !745
  %22 = load i32, i32* %21, align 4, !dbg !745
  %23 = icmp ne i32 %22, 0, !dbg !746
  br i1 %23, label %24, label %30, !dbg !747

; <label>:24:                                     ; preds = %19
  %25 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !748
  %26 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %25, i32 0, i32 17, !dbg !750
  %27 = load i32, i32* %26, align 4, !dbg !750
  %28 = icmp ne i32 %27, -5, !dbg !751
  br i1 %28, label %29, label %30, !dbg !752

; <label>:29:                                     ; preds = %24, %12
  store i32 -1, i32* %3, align 4, !dbg !754
  br label %171, !dbg !754

; <label>:30:                                     ; preds = %24, %19
  %31 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !755
  %32 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %31, i32 0, i32 16, !dbg !757
  %33 = load i32, i32* %32, align 8, !dbg !757
  %34 = icmp ne i32 %33, 0, !dbg !755
  br i1 %34, label %35, label %46, !dbg !758

; <label>:35:                                     ; preds = %30
  %36 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !759
  %37 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %36, i32 0, i32 16, !dbg !761
  store i32 0, i32* %37, align 8, !dbg !762
  %38 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !763
  %39 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !765
  %40 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %39, i32 0, i32 15, !dbg !766
  %41 = load i64, i64* %40, align 8, !dbg !766
  %42 = call i32 @gz_skip(%struct.gz_state* %38, i64 %41), !dbg !767
  %43 = icmp eq i32 %42, -1, !dbg !768
  br i1 %43, label %44, label %45, !dbg !769

; <label>:44:                                     ; preds = %35
  store i32 -1, i32* %3, align 4, !dbg !770
  br label %171, !dbg !770

; <label>:45:                                     ; preds = %35
  br label %46, !dbg !771

; <label>:46:                                     ; preds = %45, %30
  %47 = load i32, i32* %4, align 4, !dbg !772
  %48 = icmp slt i32 %47, 0, !dbg !774
  br i1 %48, label %49, label %50, !dbg !775

; <label>:49:                                     ; preds = %46
  store i32 -1, i32* %3, align 4, !dbg !776
  br label %171, !dbg !776

; <label>:50:                                     ; preds = %46
  %51 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !777
  %52 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %51, i32 0, i32 0, !dbg !779
  %53 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %52, i32 0, i32 0, !dbg !780
  %54 = load i32, i32* %53, align 8, !dbg !780
  %55 = icmp eq i32 %54, 0, !dbg !781
  br i1 %55, label %56, label %88, !dbg !782

; <label>:56:                                     ; preds = %50
  %57 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !783
  %58 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %57, i32 0, i32 0, !dbg !785
  %59 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %58, i32 0, i32 0, !dbg !786
  store i32 1, i32* %59, align 8, !dbg !787
  %60 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !788
  %61 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %60, i32 0, i32 7, !dbg !789
  %62 = load i8*, i8** %61, align 8, !dbg !789
  %63 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !790
  %64 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %63, i32 0, i32 4, !dbg !791
  %65 = load i32, i32* %64, align 8, !dbg !791
  %66 = shl i32 %65, 1, !dbg !792
  %67 = zext i32 %66 to i64, !dbg !793
  %68 = getelementptr inbounds i8, i8* %62, i64 %67, !dbg !793
  %69 = getelementptr inbounds i8, i8* %68, i64 -1, !dbg !794
  %70 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !795
  %71 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %70, i32 0, i32 0, !dbg !796
  %72 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %71, i32 0, i32 1, !dbg !797
  store i8* %69, i8** %72, align 8, !dbg !798
  %73 = load i32, i32* %4, align 4, !dbg !799
  %74 = trunc i32 %73 to i8, !dbg !799
  %75 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !800
  %76 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %75, i32 0, i32 0, !dbg !801
  %77 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %76, i32 0, i32 1, !dbg !802
  %78 = load i8*, i8** %77, align 8, !dbg !802
  %79 = getelementptr inbounds i8, i8* %78, i64 0, !dbg !800
  store i8 %74, i8* %79, align 1, !dbg !803
  %80 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !804
  %81 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %80, i32 0, i32 0, !dbg !805
  %82 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %81, i32 0, i32 2, !dbg !806
  %83 = load i64, i64* %82, align 8, !dbg !807
  %84 = add nsw i64 %83, -1, !dbg !807
  store i64 %84, i64* %82, align 8, !dbg !807
  %85 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !808
  %86 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %85, i32 0, i32 12, !dbg !809
  store i32 0, i32* %86, align 4, !dbg !810
  %87 = load i32, i32* %4, align 4, !dbg !811
  store i32 %87, i32* %3, align 4, !dbg !812
  br label %171, !dbg !812

; <label>:88:                                     ; preds = %50
  %89 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !813
  %90 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %89, i32 0, i32 0, !dbg !815
  %91 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %90, i32 0, i32 0, !dbg !816
  %92 = load i32, i32* %91, align 8, !dbg !816
  %93 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !817
  %94 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %93, i32 0, i32 4, !dbg !818
  %95 = load i32, i32* %94, align 8, !dbg !818
  %96 = shl i32 %95, 1, !dbg !819
  %97 = icmp eq i32 %92, %96, !dbg !820
  br i1 %97, label %98, label %100, !dbg !821

; <label>:98:                                     ; preds = %88
  %99 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !822
  call void @gz_error(%struct.gz_state* %99, i32 -3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0)), !dbg !824
  store i32 -1, i32* %3, align 4, !dbg !825
  br label %171, !dbg !825

; <label>:100:                                    ; preds = %88
  %101 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !826
  %102 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %101, i32 0, i32 0, !dbg !828
  %103 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %102, i32 0, i32 1, !dbg !829
  %104 = load i8*, i8** %103, align 8, !dbg !829
  %105 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !830
  %106 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %105, i32 0, i32 7, !dbg !831
  %107 = load i8*, i8** %106, align 8, !dbg !831
  %108 = icmp eq i8* %104, %107, !dbg !832
  br i1 %108, label %109, label %145, !dbg !833

; <label>:109:                                    ; preds = %100
  call void @llvm.dbg.declare(metadata i8** %7, metadata !834, metadata !92), !dbg !836
  %110 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !837
  %111 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %110, i32 0, i32 7, !dbg !838
  %112 = load i8*, i8** %111, align 8, !dbg !838
  %113 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !839
  %114 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %113, i32 0, i32 0, !dbg !840
  %115 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %114, i32 0, i32 0, !dbg !841
  %116 = load i32, i32* %115, align 8, !dbg !841
  %117 = zext i32 %116 to i64, !dbg !842
  %118 = getelementptr inbounds i8, i8* %112, i64 %117, !dbg !842
  store i8* %118, i8** %7, align 8, !dbg !836
  call void @llvm.dbg.declare(metadata i8** %8, metadata !843, metadata !92), !dbg !844
  %119 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !845
  %120 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %119, i32 0, i32 7, !dbg !846
  %121 = load i8*, i8** %120, align 8, !dbg !846
  %122 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !847
  %123 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %122, i32 0, i32 4, !dbg !848
  %124 = load i32, i32* %123, align 8, !dbg !848
  %125 = shl i32 %124, 1, !dbg !849
  %126 = zext i32 %125 to i64, !dbg !850
  %127 = getelementptr inbounds i8, i8* %121, i64 %126, !dbg !850
  store i8* %127, i8** %8, align 8, !dbg !844
  br label %128, !dbg !851

; <label>:128:                                    ; preds = %134, %109
  %129 = load i8*, i8** %7, align 8, !dbg !852
  %130 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !854
  %131 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %130, i32 0, i32 7, !dbg !855
  %132 = load i8*, i8** %131, align 8, !dbg !855
  %133 = icmp ugt i8* %129, %132, !dbg !856
  br i1 %133, label %134, label %140, !dbg !857

; <label>:134:                                    ; preds = %128
  %135 = load i8*, i8** %7, align 8, !dbg !858
  %136 = getelementptr inbounds i8, i8* %135, i32 -1, !dbg !858
  store i8* %136, i8** %7, align 8, !dbg !858
  %137 = load i8, i8* %136, align 1, !dbg !859
  %138 = load i8*, i8** %8, align 8, !dbg !860
  %139 = getelementptr inbounds i8, i8* %138, i32 -1, !dbg !860
  store i8* %139, i8** %8, align 8, !dbg !860
  store i8 %137, i8* %139, align 1, !dbg !861
  br label %128, !dbg !862, !llvm.loop !864

; <label>:140:                                    ; preds = %128
  %141 = load i8*, i8** %8, align 8, !dbg !865
  %142 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !866
  %143 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %142, i32 0, i32 0, !dbg !867
  %144 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %143, i32 0, i32 1, !dbg !868
  store i8* %141, i8** %144, align 8, !dbg !869
  br label %145, !dbg !870

; <label>:145:                                    ; preds = %140, %100
  %146 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !871
  %147 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %146, i32 0, i32 0, !dbg !872
  %148 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %147, i32 0, i32 0, !dbg !873
  %149 = load i32, i32* %148, align 8, !dbg !874
  %150 = add i32 %149, 1, !dbg !874
  store i32 %150, i32* %148, align 8, !dbg !874
  %151 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !875
  %152 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %151, i32 0, i32 0, !dbg !876
  %153 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %152, i32 0, i32 1, !dbg !877
  %154 = load i8*, i8** %153, align 8, !dbg !878
  %155 = getelementptr inbounds i8, i8* %154, i32 -1, !dbg !878
  store i8* %155, i8** %153, align 8, !dbg !878
  %156 = load i32, i32* %4, align 4, !dbg !879
  %157 = trunc i32 %156 to i8, !dbg !879
  %158 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !880
  %159 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %158, i32 0, i32 0, !dbg !881
  %160 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %159, i32 0, i32 1, !dbg !882
  %161 = load i8*, i8** %160, align 8, !dbg !882
  %162 = getelementptr inbounds i8, i8* %161, i64 0, !dbg !880
  store i8 %157, i8* %162, align 1, !dbg !883
  %163 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !884
  %164 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %163, i32 0, i32 0, !dbg !885
  %165 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %164, i32 0, i32 2, !dbg !886
  %166 = load i64, i64* %165, align 8, !dbg !887
  %167 = add nsw i64 %166, -1, !dbg !887
  store i64 %167, i64* %165, align 8, !dbg !887
  %168 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !888
  %169 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %168, i32 0, i32 12, !dbg !889
  store i32 0, i32* %169, align 4, !dbg !890
  %170 = load i32, i32* %4, align 4, !dbg !891
  store i32 %170, i32* %3, align 4, !dbg !892
  br label %171, !dbg !892

; <label>:171:                                    ; preds = %145, %98, %56, %49, %44, %29, %11
  %172 = load i32, i32* %3, align 4, !dbg !893
  ret i32 %172, !dbg !893
}

; Function Attrs: nounwind uwtable
define i8* @gzgets(%struct.gzFile_s*, i8*, i32) #0 !dbg !894 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gzFile_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %5, metadata !897, metadata !92), !dbg !898
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !899, metadata !92), !dbg !900
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !901, metadata !92), !dbg !902
  call void @llvm.dbg.declare(metadata i32* %8, metadata !903, metadata !92), !dbg !904
  call void @llvm.dbg.declare(metadata i32* %9, metadata !905, metadata !92), !dbg !906
  call void @llvm.dbg.declare(metadata i8** %10, metadata !907, metadata !92), !dbg !908
  call void @llvm.dbg.declare(metadata i8** %11, metadata !909, metadata !92), !dbg !910
  call void @llvm.dbg.declare(metadata %struct.gz_state** %12, metadata !911, metadata !92), !dbg !912
  %13 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8, !dbg !913
  %14 = icmp eq %struct.gzFile_s* %13, null, !dbg !915
  br i1 %14, label %21, label %15, !dbg !916

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %6, align 8, !dbg !917
  %17 = icmp eq i8* %16, null, !dbg !919
  br i1 %17, label %21, label %18, !dbg !920

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %7, align 4, !dbg !921
  %20 = icmp slt i32 %19, 1, !dbg !923
  br i1 %20, label %21, label %22, !dbg !924

; <label>:21:                                     ; preds = %18, %15, %3
  store i8* null, i8** %4, align 8, !dbg !925
  br label %172, !dbg !925

; <label>:22:                                     ; preds = %18
  %23 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8, !dbg !926
  %24 = bitcast %struct.gzFile_s* %23 to %struct.gz_state*, !dbg !927
  store %struct.gz_state* %24, %struct.gz_state** %12, align 8, !dbg !928
  %25 = load %struct.gz_state*, %struct.gz_state** %12, align 8, !dbg !929
  %26 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %25, i32 0, i32 1, !dbg !931
  %27 = load i32, i32* %26, align 8, !dbg !931
  %28 = icmp ne i32 %27, 7247, !dbg !932
  br i1 %28, label %39, label %29, !dbg !933

; <label>:29:                                     ; preds = %22
  %30 = load %struct.gz_state*, %struct.gz_state** %12, align 8, !dbg !934
  %31 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %30, i32 0, i32 17, !dbg !935
  %32 = load i32, i32* %31, align 4, !dbg !935
  %33 = icmp ne i32 %32, 0, !dbg !936
  br i1 %33, label %34, label %40, !dbg !937

; <label>:34:                                     ; preds = %29
  %35 = load %struct.gz_state*, %struct.gz_state** %12, align 8, !dbg !938
  %36 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %35, i32 0, i32 17, !dbg !940
  %37 = load i32, i32* %36, align 4, !dbg !940
  %38 = icmp ne i32 %37, -5, !dbg !941
  br i1 %38, label %39, label %40, !dbg !942

; <label>:39:                                     ; preds = %34, %22
  store i8* null, i8** %4, align 8, !dbg !944
  br label %172, !dbg !944

; <label>:40:                                     ; preds = %34, %29
  %41 = load %struct.gz_state*, %struct.gz_state** %12, align 8, !dbg !945
  %42 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %41, i32 0, i32 16, !dbg !947
  %43 = load i32, i32* %42, align 8, !dbg !947
  %44 = icmp ne i32 %43, 0, !dbg !945
  br i1 %44, label %45, label %56, !dbg !948

; <label>:45:                                     ; preds = %40
  %46 = load %struct.gz_state*, %struct.gz_state** %12, align 8, !dbg !949
  %47 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %46, i32 0, i32 16, !dbg !951
  store i32 0, i32* %47, align 8, !dbg !952
  %48 = load %struct.gz_state*, %struct.gz_state** %12, align 8, !dbg !953
  %49 = load %struct.gz_state*, %struct.gz_state** %12, align 8, !dbg !955
  %50 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %49, i32 0, i32 15, !dbg !956
  %51 = load i64, i64* %50, align 8, !dbg !956
  %52 = call i32 @gz_skip(%struct.gz_state* %48, i64 %51), !dbg !957
  %53 = icmp eq i32 %52, -1, !dbg !958
  br i1 %53, label %54, label %55, !dbg !959

; <label>:54:                                     ; preds = %45
  store i8* null, i8** %4, align 8, !dbg !960
  br label %172, !dbg !960

; <label>:55:                                     ; preds = %45
  br label %56, !dbg !961

; <label>:56:                                     ; preds = %55, %40
  %57 = load i8*, i8** %6, align 8, !dbg !962
  store i8* %57, i8** %10, align 8, !dbg !963
  %58 = load i32, i32* %7, align 4, !dbg !964
  %59 = sub i32 %58, 1, !dbg !965
  store i32 %59, i32* %8, align 4, !dbg !966
  %60 = load i32, i32* %8, align 4, !dbg !967
  %61 = icmp ne i32 %60, 0, !dbg !967
  br i1 %61, label %62, label %163, !dbg !969

; <label>:62:                                     ; preds = %56
  br label %63, !dbg !970, !llvm.loop !972

; <label>:63:                                     ; preds = %160, %62
  %64 = load %struct.gz_state*, %struct.gz_state** %12, align 8, !dbg !974
  %65 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %64, i32 0, i32 0, !dbg !977
  %66 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %65, i32 0, i32 0, !dbg !978
  %67 = load i32, i32* %66, align 8, !dbg !978
  %68 = icmp eq i32 %67, 0, !dbg !979
  br i1 %68, label %69, label %74, !dbg !980

; <label>:69:                                     ; preds = %63
  %70 = load %struct.gz_state*, %struct.gz_state** %12, align 8, !dbg !981
  %71 = call i32 @gz_fetch(%struct.gz_state* %70), !dbg !983
  %72 = icmp eq i32 %71, -1, !dbg !984
  br i1 %72, label %73, label %74, !dbg !985

; <label>:73:                                     ; preds = %69
  store i8* null, i8** %4, align 8, !dbg !986
  br label %172, !dbg !986

; <label>:74:                                     ; preds = %69, %63
  %75 = load %struct.gz_state*, %struct.gz_state** %12, align 8, !dbg !987
  %76 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %75, i32 0, i32 0, !dbg !989
  %77 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %76, i32 0, i32 0, !dbg !990
  %78 = load i32, i32* %77, align 8, !dbg !990
  %79 = icmp eq i32 %78, 0, !dbg !991
  br i1 %79, label %80, label %83, !dbg !992

; <label>:80:                                     ; preds = %74
  %81 = load %struct.gz_state*, %struct.gz_state** %12, align 8, !dbg !993
  %82 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %81, i32 0, i32 12, !dbg !995
  store i32 1, i32* %82, align 4, !dbg !996
  br label %162, !dbg !997

; <label>:83:                                     ; preds = %74
  %84 = load %struct.gz_state*, %struct.gz_state** %12, align 8, !dbg !998
  %85 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %84, i32 0, i32 0, !dbg !999
  %86 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %85, i32 0, i32 0, !dbg !1000
  %87 = load i32, i32* %86, align 8, !dbg !1000
  %88 = load i32, i32* %8, align 4, !dbg !1001
  %89 = icmp ugt i32 %87, %88, !dbg !1002
  br i1 %89, label %90, label %92, !dbg !998

; <label>:90:                                     ; preds = %83
  %91 = load i32, i32* %8, align 4, !dbg !1003
  br label %97, !dbg !1005

; <label>:92:                                     ; preds = %83
  %93 = load %struct.gz_state*, %struct.gz_state** %12, align 8, !dbg !1006
  %94 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %93, i32 0, i32 0, !dbg !1008
  %95 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %94, i32 0, i32 0, !dbg !1009
  %96 = load i32, i32* %95, align 8, !dbg !1009
  br label %97, !dbg !1010

; <label>:97:                                     ; preds = %92, %90
  %98 = phi i32 [ %91, %90 ], [ %96, %92 ], !dbg !1011
  store i32 %98, i32* %9, align 4, !dbg !1013
  %99 = load %struct.gz_state*, %struct.gz_state** %12, align 8, !dbg !1014
  %100 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %99, i32 0, i32 0, !dbg !1015
  %101 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %100, i32 0, i32 1, !dbg !1016
  %102 = load i8*, i8** %101, align 8, !dbg !1016
  %103 = load i32, i32* %9, align 4, !dbg !1017
  %104 = zext i32 %103 to i64, !dbg !1017
  %105 = call i8* @memchr(i8* %102, i32 10, i64 %104) #6, !dbg !1018
  store i8* %105, i8** %11, align 8, !dbg !1019
  %106 = load i8*, i8** %11, align 8, !dbg !1020
  %107 = icmp ne i8* %106, null, !dbg !1022
  br i1 %107, label %108, label %119, !dbg !1023

; <label>:108:                                    ; preds = %97
  %109 = load i8*, i8** %11, align 8, !dbg !1024
  %110 = load %struct.gz_state*, %struct.gz_state** %12, align 8, !dbg !1025
  %111 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %110, i32 0, i32 0, !dbg !1026
  %112 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %111, i32 0, i32 1, !dbg !1027
  %113 = load i8*, i8** %112, align 8, !dbg !1027
  %114 = ptrtoint i8* %109 to i64, !dbg !1028
  %115 = ptrtoint i8* %113 to i64, !dbg !1028
  %116 = sub i64 %114, %115, !dbg !1028
  %117 = trunc i64 %116 to i32, !dbg !1029
  %118 = add i32 %117, 1, !dbg !1030
  store i32 %118, i32* %9, align 4, !dbg !1031
  br label %119, !dbg !1032

; <label>:119:                                    ; preds = %108, %97
  %120 = load i8*, i8** %6, align 8, !dbg !1033
  %121 = load %struct.gz_state*, %struct.gz_state** %12, align 8, !dbg !1034
  %122 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %121, i32 0, i32 0, !dbg !1035
  %123 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %122, i32 0, i32 1, !dbg !1036
  %124 = load i8*, i8** %123, align 8, !dbg !1036
  %125 = load i32, i32* %9, align 4, !dbg !1037
  %126 = zext i32 %125 to i64, !dbg !1037
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* %124, i64 %126, i32 1, i1 false), !dbg !1038
  %127 = load i32, i32* %9, align 4, !dbg !1039
  %128 = load %struct.gz_state*, %struct.gz_state** %12, align 8, !dbg !1040
  %129 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %128, i32 0, i32 0, !dbg !1041
  %130 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %129, i32 0, i32 0, !dbg !1042
  %131 = load i32, i32* %130, align 8, !dbg !1043
  %132 = sub i32 %131, %127, !dbg !1043
  store i32 %132, i32* %130, align 8, !dbg !1043
  %133 = load i32, i32* %9, align 4, !dbg !1044
  %134 = load %struct.gz_state*, %struct.gz_state** %12, align 8, !dbg !1045
  %135 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %134, i32 0, i32 0, !dbg !1046
  %136 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %135, i32 0, i32 1, !dbg !1047
  %137 = load i8*, i8** %136, align 8, !dbg !1048
  %138 = zext i32 %133 to i64, !dbg !1048
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !1048
  store i8* %139, i8** %136, align 8, !dbg !1048
  %140 = load i32, i32* %9, align 4, !dbg !1049
  %141 = zext i32 %140 to i64, !dbg !1049
  %142 = load %struct.gz_state*, %struct.gz_state** %12, align 8, !dbg !1050
  %143 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %142, i32 0, i32 0, !dbg !1051
  %144 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %143, i32 0, i32 2, !dbg !1052
  %145 = load i64, i64* %144, align 8, !dbg !1053
  %146 = add nsw i64 %145, %141, !dbg !1053
  store i64 %146, i64* %144, align 8, !dbg !1053
  %147 = load i32, i32* %9, align 4, !dbg !1054
  %148 = load i32, i32* %8, align 4, !dbg !1055
  %149 = sub i32 %148, %147, !dbg !1055
  store i32 %149, i32* %8, align 4, !dbg !1055
  %150 = load i32, i32* %9, align 4, !dbg !1056
  %151 = load i8*, i8** %6, align 8, !dbg !1057
  %152 = zext i32 %150 to i64, !dbg !1057
  %153 = getelementptr inbounds i8, i8* %151, i64 %152, !dbg !1057
  store i8* %153, i8** %6, align 8, !dbg !1057
  br label %154, !dbg !1058

; <label>:154:                                    ; preds = %119
  %155 = load i32, i32* %8, align 4, !dbg !1059
  %156 = icmp ne i32 %155, 0, !dbg !1059
  br i1 %156, label %157, label %160, !dbg !1060

; <label>:157:                                    ; preds = %154
  %158 = load i8*, i8** %11, align 8, !dbg !1061
  %159 = icmp eq i8* %158, null, !dbg !1063
  br label %160

; <label>:160:                                    ; preds = %157, %154
  %161 = phi i1 [ false, %154 ], [ %159, %157 ]
  br i1 %161, label %63, label %162, !dbg !1064, !llvm.loop !972

; <label>:162:                                    ; preds = %160, %80
  br label %163, !dbg !1065

; <label>:163:                                    ; preds = %162, %56
  %164 = load i8*, i8** %6, align 8, !dbg !1067
  %165 = load i8*, i8** %10, align 8, !dbg !1069
  %166 = icmp eq i8* %164, %165, !dbg !1070
  br i1 %166, label %167, label %168, !dbg !1071

; <label>:167:                                    ; preds = %163
  store i8* null, i8** %4, align 8, !dbg !1072
  br label %172, !dbg !1072

; <label>:168:                                    ; preds = %163
  %169 = load i8*, i8** %6, align 8, !dbg !1073
  %170 = getelementptr inbounds i8, i8* %169, i64 0, !dbg !1073
  store i8 0, i8* %170, align 1, !dbg !1074
  %171 = load i8*, i8** %10, align 8, !dbg !1075
  store i8* %171, i8** %4, align 8, !dbg !1076
  br label %172, !dbg !1076

; <label>:172:                                    ; preds = %168, %167, %73, %54, %39, %21
  %173 = load i8*, i8** %4, align 8, !dbg !1077
  ret i8* %173, !dbg !1077
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define i32 @gzdirect(%struct.gzFile_s*) #0 !dbg !1078 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gzFile_s*, align 8
  %4 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %3, metadata !1079, metadata !92), !dbg !1080
  call void @llvm.dbg.declare(metadata %struct.gz_state** %4, metadata !1081, metadata !92), !dbg !1082
  %5 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !1083
  %6 = icmp eq %struct.gzFile_s* %5, null, !dbg !1085
  br i1 %6, label %7, label %8, !dbg !1086

; <label>:7:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !1087
  br label %33, !dbg !1087

; <label>:8:                                      ; preds = %1
  %9 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !1088
  %10 = bitcast %struct.gzFile_s* %9 to %struct.gz_state*, !dbg !1089
  store %struct.gz_state* %10, %struct.gz_state** %4, align 8, !dbg !1090
  %11 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !1091
  %12 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %11, i32 0, i32 1, !dbg !1093
  %13 = load i32, i32* %12, align 8, !dbg !1093
  %14 = icmp eq i32 %13, 7247, !dbg !1094
  br i1 %14, label %15, label %29, !dbg !1095

; <label>:15:                                     ; preds = %8
  %16 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !1096
  %17 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %16, i32 0, i32 9, !dbg !1098
  %18 = load i32, i32* %17, align 4, !dbg !1098
  %19 = icmp eq i32 %18, 0, !dbg !1099
  br i1 %19, label %20, label %29, !dbg !1100

; <label>:20:                                     ; preds = %15
  %21 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !1101
  %22 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %21, i32 0, i32 0, !dbg !1103
  %23 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %22, i32 0, i32 0, !dbg !1104
  %24 = load i32, i32* %23, align 8, !dbg !1104
  %25 = icmp eq i32 %24, 0, !dbg !1105
  br i1 %25, label %26, label %29, !dbg !1106

; <label>:26:                                     ; preds = %20
  %27 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !1107
  %28 = call i32 @gz_look(%struct.gz_state* %27), !dbg !1108
  br label %29, !dbg !1109

; <label>:29:                                     ; preds = %26, %20, %15, %8
  %30 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !1110
  %31 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %30, i32 0, i32 8, !dbg !1111
  %32 = load i32, i32* %31, align 8, !dbg !1111
  store i32 %32, i32* %2, align 4, !dbg !1112
  br label %33, !dbg !1112

; <label>:33:                                     ; preds = %29, %7
  %34 = load i32, i32* %2, align 4, !dbg !1113
  ret i32 %34, !dbg !1113
}

; Function Attrs: nounwind uwtable
define internal i32 @gz_look(%struct.gz_state*) #0 !dbg !1114 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gz_state*, align 8
  %4 = alloca %struct.z_stream_s*, align 8
  store %struct.gz_state* %0, %struct.gz_state** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.gz_state** %3, metadata !1115, metadata !92), !dbg !1116
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %4, metadata !1117, metadata !92), !dbg !1118
  %5 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1119
  %6 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %5, i32 0, i32 19, !dbg !1120
  store %struct.z_stream_s* %6, %struct.z_stream_s** %4, align 8, !dbg !1118
  %7 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1121
  %8 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %7, i32 0, i32 4, !dbg !1123
  %9 = load i32, i32* %8, align 8, !dbg !1123
  %10 = icmp eq i32 %9, 0, !dbg !1124
  br i1 %10, label %11, label %92, !dbg !1125

; <label>:11:                                     ; preds = %1
  %12 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1126
  %13 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %12, i32 0, i32 5, !dbg !1128
  %14 = load i32, i32* %13, align 4, !dbg !1128
  %15 = zext i32 %14 to i64, !dbg !1126
  %16 = call noalias i8* @malloc(i64 %15) #7, !dbg !1129
  %17 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1130
  %18 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %17, i32 0, i32 6, !dbg !1131
  store i8* %16, i8** %18, align 8, !dbg !1132
  %19 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1133
  %20 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %19, i32 0, i32 5, !dbg !1134
  %21 = load i32, i32* %20, align 4, !dbg !1134
  %22 = shl i32 %21, 1, !dbg !1135
  %23 = zext i32 %22 to i64, !dbg !1133
  %24 = call noalias i8* @malloc(i64 %23) #7, !dbg !1136
  %25 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1137
  %26 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %25, i32 0, i32 7, !dbg !1138
  store i8* %24, i8** %26, align 8, !dbg !1139
  %27 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1140
  %28 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %27, i32 0, i32 6, !dbg !1142
  %29 = load i8*, i8** %28, align 8, !dbg !1142
  %30 = icmp eq i8* %29, null, !dbg !1143
  br i1 %30, label %36, label %31, !dbg !1144

; <label>:31:                                     ; preds = %11
  %32 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1145
  %33 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %32, i32 0, i32 7, !dbg !1147
  %34 = load i8*, i8** %33, align 8, !dbg !1147
  %35 = icmp eq i8* %34, null, !dbg !1148
  br i1 %35, label %36, label %56, !dbg !1149

; <label>:36:                                     ; preds = %31, %11
  %37 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1150
  %38 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %37, i32 0, i32 7, !dbg !1153
  %39 = load i8*, i8** %38, align 8, !dbg !1153
  %40 = icmp ne i8* %39, null, !dbg !1154
  br i1 %40, label %41, label %45, !dbg !1155

; <label>:41:                                     ; preds = %36
  %42 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1156
  %43 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %42, i32 0, i32 7, !dbg !1157
  %44 = load i8*, i8** %43, align 8, !dbg !1157
  call void @free(i8* %44) #7, !dbg !1158
  br label %45, !dbg !1158

; <label>:45:                                     ; preds = %41, %36
  %46 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1159
  %47 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %46, i32 0, i32 6, !dbg !1161
  %48 = load i8*, i8** %47, align 8, !dbg !1161
  %49 = icmp ne i8* %48, null, !dbg !1162
  br i1 %49, label %50, label %54, !dbg !1163

; <label>:50:                                     ; preds = %45
  %51 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1164
  %52 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %51, i32 0, i32 6, !dbg !1165
  %53 = load i8*, i8** %52, align 8, !dbg !1165
  call void @free(i8* %53) #7, !dbg !1166
  br label %54, !dbg !1166

; <label>:54:                                     ; preds = %50, %45
  %55 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1167
  call void @gz_error(%struct.gz_state* %55, i32 -4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)), !dbg !1168
  store i32 -1, i32* %2, align 4, !dbg !1169
  br label %186, !dbg !1169

; <label>:56:                                     ; preds = %31
  %57 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1170
  %58 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %57, i32 0, i32 5, !dbg !1171
  %59 = load i32, i32* %58, align 4, !dbg !1171
  %60 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1172
  %61 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %60, i32 0, i32 4, !dbg !1173
  store i32 %59, i32* %61, align 8, !dbg !1174
  %62 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1175
  %63 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %62, i32 0, i32 19, !dbg !1176
  %64 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %63, i32 0, i32 8, !dbg !1177
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %64, align 8, !dbg !1178
  %65 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1179
  %66 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %65, i32 0, i32 19, !dbg !1180
  %67 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %66, i32 0, i32 9, !dbg !1181
  store void (i8*, i8*)* null, void (i8*, i8*)** %67, align 8, !dbg !1182
  %68 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1183
  %69 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %68, i32 0, i32 19, !dbg !1184
  %70 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %69, i32 0, i32 10, !dbg !1185
  store i8* null, i8** %70, align 8, !dbg !1186
  %71 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1187
  %72 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %71, i32 0, i32 19, !dbg !1188
  %73 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %72, i32 0, i32 1, !dbg !1189
  store i32 0, i32* %73, align 8, !dbg !1190
  %74 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1191
  %75 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %74, i32 0, i32 19, !dbg !1192
  %76 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %75, i32 0, i32 0, !dbg !1193
  store i8* null, i8** %76, align 8, !dbg !1194
  %77 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1195
  %78 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %77, i32 0, i32 19, !dbg !1197
  %79 = call i32 @inflateInit2_(%struct.z_stream_s* %78, i32 31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 112), !dbg !1198
  %80 = icmp ne i32 %79, 0, !dbg !1199
  br i1 %80, label %81, label %91, !dbg !1200

; <label>:81:                                     ; preds = %56
  %82 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1201
  %83 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %82, i32 0, i32 7, !dbg !1203
  %84 = load i8*, i8** %83, align 8, !dbg !1203
  call void @free(i8* %84) #7, !dbg !1204
  %85 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1205
  %86 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %85, i32 0, i32 6, !dbg !1206
  %87 = load i8*, i8** %86, align 8, !dbg !1206
  call void @free(i8* %87) #7, !dbg !1207
  %88 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1208
  %89 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %88, i32 0, i32 4, !dbg !1209
  store i32 0, i32* %89, align 8, !dbg !1210
  %90 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1211
  call void @gz_error(%struct.gz_state* %90, i32 -4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)), !dbg !1212
  store i32 -1, i32* %2, align 4, !dbg !1213
  br label %186, !dbg !1213

; <label>:91:                                     ; preds = %56
  br label %92, !dbg !1214

; <label>:92:                                     ; preds = %91, %1
  %93 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1215
  %94 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %93, i32 0, i32 1, !dbg !1217
  %95 = load i32, i32* %94, align 8, !dbg !1217
  %96 = icmp ult i32 %95, 2, !dbg !1218
  br i1 %96, label %97, label %109, !dbg !1219

; <label>:97:                                     ; preds = %92
  %98 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1220
  %99 = call i32 @gz_avail(%struct.gz_state* %98), !dbg !1223
  %100 = icmp eq i32 %99, -1, !dbg !1224
  br i1 %100, label %101, label %102, !dbg !1225

; <label>:101:                                    ; preds = %97
  store i32 -1, i32* %2, align 4, !dbg !1226
  br label %186, !dbg !1226

; <label>:102:                                    ; preds = %97
  %103 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1227
  %104 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %103, i32 0, i32 1, !dbg !1229
  %105 = load i32, i32* %104, align 8, !dbg !1229
  %106 = icmp eq i32 %105, 0, !dbg !1230
  br i1 %106, label %107, label %108, !dbg !1231

; <label>:107:                                    ; preds = %102
  store i32 0, i32* %2, align 4, !dbg !1232
  br label %186, !dbg !1232

; <label>:108:                                    ; preds = %102
  br label %109, !dbg !1233

; <label>:109:                                    ; preds = %108, %92
  %110 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1234
  %111 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %110, i32 0, i32 1, !dbg !1236
  %112 = load i32, i32* %111, align 8, !dbg !1236
  %113 = icmp ugt i32 %112, 1, !dbg !1237
  br i1 %113, label %114, label %137, !dbg !1238

; <label>:114:                                    ; preds = %109
  %115 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1239
  %116 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %115, i32 0, i32 0, !dbg !1240
  %117 = load i8*, i8** %116, align 8, !dbg !1240
  %118 = getelementptr inbounds i8, i8* %117, i64 0, !dbg !1239
  %119 = load i8, i8* %118, align 1, !dbg !1239
  %120 = zext i8 %119 to i32, !dbg !1239
  %121 = icmp eq i32 %120, 31, !dbg !1241
  br i1 %121, label %122, label %137, !dbg !1242

; <label>:122:                                    ; preds = %114
  %123 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1243
  %124 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %123, i32 0, i32 0, !dbg !1245
  %125 = load i8*, i8** %124, align 8, !dbg !1245
  %126 = getelementptr inbounds i8, i8* %125, i64 1, !dbg !1243
  %127 = load i8, i8* %126, align 1, !dbg !1243
  %128 = zext i8 %127 to i32, !dbg !1243
  %129 = icmp eq i32 %128, 139, !dbg !1246
  br i1 %129, label %130, label %137, !dbg !1247

; <label>:130:                                    ; preds = %122
  %131 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1249
  %132 = call i32 @inflateReset(%struct.z_stream_s* %131), !dbg !1251
  %133 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1252
  %134 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %133, i32 0, i32 9, !dbg !1253
  store i32 2, i32* %134, align 4, !dbg !1254
  %135 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1255
  %136 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %135, i32 0, i32 8, !dbg !1256
  store i32 0, i32* %136, align 8, !dbg !1257
  store i32 0, i32* %2, align 4, !dbg !1258
  br label %186, !dbg !1258

; <label>:137:                                    ; preds = %122, %114, %109
  %138 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1259
  %139 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %138, i32 0, i32 8, !dbg !1261
  %140 = load i32, i32* %139, align 8, !dbg !1261
  %141 = icmp eq i32 %140, 0, !dbg !1262
  br i1 %141, label %142, label %150, !dbg !1263

; <label>:142:                                    ; preds = %137
  %143 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1264
  %144 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %143, i32 0, i32 1, !dbg !1266
  store i32 0, i32* %144, align 8, !dbg !1267
  %145 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1268
  %146 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %145, i32 0, i32 11, !dbg !1269
  store i32 1, i32* %146, align 8, !dbg !1270
  %147 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1271
  %148 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %147, i32 0, i32 0, !dbg !1272
  %149 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %148, i32 0, i32 0, !dbg !1273
  store i32 0, i32* %149, align 8, !dbg !1274
  store i32 0, i32* %2, align 4, !dbg !1275
  br label %186, !dbg !1275

; <label>:150:                                    ; preds = %137
  %151 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1276
  %152 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %151, i32 0, i32 7, !dbg !1277
  %153 = load i8*, i8** %152, align 8, !dbg !1277
  %154 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1278
  %155 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %154, i32 0, i32 0, !dbg !1279
  %156 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %155, i32 0, i32 1, !dbg !1280
  store i8* %153, i8** %156, align 8, !dbg !1281
  %157 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1282
  %158 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %157, i32 0, i32 1, !dbg !1284
  %159 = load i32, i32* %158, align 8, !dbg !1284
  %160 = icmp ne i32 %159, 0, !dbg !1282
  br i1 %160, label %161, label %181, !dbg !1285

; <label>:161:                                    ; preds = %150
  %162 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1286
  %163 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %162, i32 0, i32 0, !dbg !1288
  %164 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %163, i32 0, i32 1, !dbg !1289
  %165 = load i8*, i8** %164, align 8, !dbg !1289
  %166 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1290
  %167 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %166, i32 0, i32 0, !dbg !1291
  %168 = load i8*, i8** %167, align 8, !dbg !1291
  %169 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1292
  %170 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %169, i32 0, i32 1, !dbg !1293
  %171 = load i32, i32* %170, align 8, !dbg !1293
  %172 = zext i32 %171 to i64, !dbg !1292
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %165, i8* %168, i64 %172, i32 1, i1 false), !dbg !1294
  %173 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1295
  %174 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %173, i32 0, i32 1, !dbg !1296
  %175 = load i32, i32* %174, align 8, !dbg !1296
  %176 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1297
  %177 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %176, i32 0, i32 0, !dbg !1298
  %178 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %177, i32 0, i32 0, !dbg !1299
  store i32 %175, i32* %178, align 8, !dbg !1300
  %179 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1301
  %180 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %179, i32 0, i32 1, !dbg !1302
  store i32 0, i32* %180, align 8, !dbg !1303
  br label %181, !dbg !1304

; <label>:181:                                    ; preds = %161, %150
  %182 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1305
  %183 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %182, i32 0, i32 9, !dbg !1306
  store i32 1, i32* %183, align 4, !dbg !1307
  %184 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1308
  %185 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %184, i32 0, i32 8, !dbg !1309
  store i32 1, i32* %185, align 8, !dbg !1310
  store i32 0, i32* %2, align 4, !dbg !1311
  br label %186, !dbg !1311

; <label>:186:                                    ; preds = %181, %142, %130, %107, %101, %81, %54
  %187 = load i32, i32* %2, align 4, !dbg !1312
  ret i32 %187, !dbg !1312
}

; Function Attrs: nounwind uwtable
define i32 @gzclose_r(%struct.gzFile_s*) #0 !dbg !1313 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gzFile_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %3, metadata !1314, metadata !92), !dbg !1315
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1316, metadata !92), !dbg !1317
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1318, metadata !92), !dbg !1319
  call void @llvm.dbg.declare(metadata %struct.gz_state** %6, metadata !1320, metadata !92), !dbg !1321
  %7 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !1322
  %8 = icmp eq %struct.gzFile_s* %7, null, !dbg !1324
  br i1 %8, label %9, label %10, !dbg !1325

; <label>:9:                                      ; preds = %1
  store i32 -2, i32* %2, align 4, !dbg !1326
  br label %56, !dbg !1326

; <label>:10:                                     ; preds = %1
  %11 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !1327
  %12 = bitcast %struct.gzFile_s* %11 to %struct.gz_state*, !dbg !1328
  store %struct.gz_state* %12, %struct.gz_state** %6, align 8, !dbg !1329
  %13 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !1330
  %14 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %13, i32 0, i32 1, !dbg !1332
  %15 = load i32, i32* %14, align 8, !dbg !1332
  %16 = icmp ne i32 %15, 7247, !dbg !1333
  br i1 %16, label %17, label %18, !dbg !1334

; <label>:17:                                     ; preds = %10
  store i32 -2, i32* %2, align 4, !dbg !1335
  br label %56, !dbg !1335

; <label>:18:                                     ; preds = %10
  %19 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !1336
  %20 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %19, i32 0, i32 4, !dbg !1338
  %21 = load i32, i32* %20, align 8, !dbg !1338
  %22 = icmp ne i32 %21, 0, !dbg !1336
  br i1 %22, label %23, label %33, !dbg !1339

; <label>:23:                                     ; preds = %18
  %24 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !1340
  %25 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %24, i32 0, i32 19, !dbg !1342
  %26 = call i32 @inflateEnd(%struct.z_stream_s* %25), !dbg !1343
  %27 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !1344
  %28 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %27, i32 0, i32 7, !dbg !1345
  %29 = load i8*, i8** %28, align 8, !dbg !1345
  call void @free(i8* %29) #7, !dbg !1346
  %30 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !1347
  %31 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %30, i32 0, i32 6, !dbg !1348
  %32 = load i8*, i8** %31, align 8, !dbg !1348
  call void @free(i8* %32) #7, !dbg !1349
  br label %33, !dbg !1350

; <label>:33:                                     ; preds = %23, %18
  %34 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !1351
  %35 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %34, i32 0, i32 17, !dbg !1352
  %36 = load i32, i32* %35, align 4, !dbg !1352
  %37 = icmp eq i32 %36, -5, !dbg !1353
  %38 = select i1 %37, i32 -5, i32 0, !dbg !1351
  store i32 %38, i32* %5, align 4, !dbg !1354
  %39 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !1355
  call void @gz_error(%struct.gz_state* %39, i32 0, i8* null), !dbg !1356
  %40 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !1357
  %41 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %40, i32 0, i32 3, !dbg !1358
  %42 = load i8*, i8** %41, align 8, !dbg !1358
  call void @free(i8* %42) #7, !dbg !1359
  %43 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !1360
  %44 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %43, i32 0, i32 2, !dbg !1361
  %45 = load i32, i32* %44, align 4, !dbg !1361
  %46 = call i32 (i32, ...) bitcast (i32 (...)* @close to i32 (i32, ...)*)(i32 %45), !dbg !1362
  store i32 %46, i32* %4, align 4, !dbg !1363
  %47 = load %struct.gz_state*, %struct.gz_state** %6, align 8, !dbg !1364
  %48 = bitcast %struct.gz_state* %47 to i8*, !dbg !1364
  call void @free(i8* %48) #7, !dbg !1365
  %49 = load i32, i32* %4, align 4, !dbg !1366
  %50 = icmp ne i32 %49, 0, !dbg !1366
  br i1 %50, label %51, label %52, !dbg !1366

; <label>:51:                                     ; preds = %33
  br label %54, !dbg !1367

; <label>:52:                                     ; preds = %33
  %53 = load i32, i32* %5, align 4, !dbg !1369
  br label %54, !dbg !1371

; <label>:54:                                     ; preds = %52, %51
  %55 = phi i32 [ -1, %51 ], [ %53, %52 ], !dbg !1372
  store i32 %55, i32* %2, align 4, !dbg !1374
  br label %56, !dbg !1374

; <label>:56:                                     ; preds = %54, %17, %9
  %57 = load i32, i32* %2, align 4, !dbg !1375
  ret i32 %57, !dbg !1375
}

declare i32 @inflateEnd(%struct.z_stream_s*) #2

; Function Attrs: nounwind
declare void @free(i8*) #5

declare i32 @close(...) #2

declare i32 @read(...) #2

; Function Attrs: nounwind uwtable
define internal i32 @gz_avail(%struct.gz_state*) #0 !dbg !1376 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gz_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_stream_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.gz_state* %0, %struct.gz_state** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.gz_state** %3, metadata !1377, metadata !92), !dbg !1378
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1379, metadata !92), !dbg !1380
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %5, metadata !1381, metadata !92), !dbg !1382
  %9 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1383
  %10 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %9, i32 0, i32 19, !dbg !1384
  store %struct.z_stream_s* %10, %struct.z_stream_s** %5, align 8, !dbg !1382
  %11 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1385
  %12 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %11, i32 0, i32 17, !dbg !1387
  %13 = load i32, i32* %12, align 4, !dbg !1387
  %14 = icmp ne i32 %13, 0, !dbg !1388
  br i1 %14, label %15, label %21, !dbg !1389

; <label>:15:                                     ; preds = %1
  %16 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1390
  %17 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %16, i32 0, i32 17, !dbg !1392
  %18 = load i32, i32* %17, align 4, !dbg !1392
  %19 = icmp ne i32 %18, -5, !dbg !1393
  br i1 %19, label %20, label %21, !dbg !1394

; <label>:20:                                     ; preds = %15
  store i32 -1, i32* %2, align 4, !dbg !1395
  br label %84, !dbg !1395

; <label>:21:                                     ; preds = %15, %1
  %22 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1396
  %23 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %22, i32 0, i32 11, !dbg !1398
  %24 = load i32, i32* %23, align 8, !dbg !1398
  %25 = icmp eq i32 %24, 0, !dbg !1399
  br i1 %25, label %26, label %83, !dbg !1400

; <label>:26:                                     ; preds = %21
  %27 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !1401
  %28 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %27, i32 0, i32 1, !dbg !1404
  %29 = load i32, i32* %28, align 8, !dbg !1404
  %30 = icmp ne i32 %29, 0, !dbg !1401
  br i1 %30, label %31, label %52, !dbg !1405

; <label>:31:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1406, metadata !92), !dbg !1408
  %32 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1409
  %33 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %32, i32 0, i32 6, !dbg !1410
  %34 = load i8*, i8** %33, align 8, !dbg !1410
  store i8* %34, i8** %6, align 8, !dbg !1408
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1411, metadata !92), !dbg !1412
  %35 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !1413
  %36 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %35, i32 0, i32 0, !dbg !1414
  %37 = load i8*, i8** %36, align 8, !dbg !1414
  store i8* %37, i8** %7, align 8, !dbg !1412
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1415, metadata !92), !dbg !1416
  %38 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !1417
  %39 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %38, i32 0, i32 1, !dbg !1418
  %40 = load i32, i32* %39, align 8, !dbg !1418
  store i32 %40, i32* %8, align 4, !dbg !1416
  br label %41, !dbg !1419, !llvm.loop !1420

; <label>:41:                                     ; preds = %47, %31
  %42 = load i8*, i8** %7, align 8, !dbg !1421
  %43 = getelementptr inbounds i8, i8* %42, i32 1, !dbg !1421
  store i8* %43, i8** %7, align 8, !dbg !1421
  %44 = load i8, i8* %42, align 1, !dbg !1423
  %45 = load i8*, i8** %6, align 8, !dbg !1424
  %46 = getelementptr inbounds i8, i8* %45, i32 1, !dbg !1424
  store i8* %46, i8** %6, align 8, !dbg !1424
  store i8 %44, i8* %45, align 1, !dbg !1425
  br label %47, !dbg !1426

; <label>:47:                                     ; preds = %41
  %48 = load i32, i32* %8, align 4, !dbg !1427
  %49 = add i32 %48, -1, !dbg !1427
  store i32 %49, i32* %8, align 4, !dbg !1427
  %50 = icmp ne i32 %49, 0, !dbg !1429
  br i1 %50, label %41, label %51, !dbg !1429, !llvm.loop !1420

; <label>:51:                                     ; preds = %47
  br label %52, !dbg !1430

; <label>:52:                                     ; preds = %51, %26
  %53 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1431
  %54 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1433
  %55 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %54, i32 0, i32 6, !dbg !1434
  %56 = load i8*, i8** %55, align 8, !dbg !1434
  %57 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !1435
  %58 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %57, i32 0, i32 1, !dbg !1436
  %59 = load i32, i32* %58, align 8, !dbg !1436
  %60 = zext i32 %59 to i64, !dbg !1437
  %61 = getelementptr inbounds i8, i8* %56, i64 %60, !dbg !1437
  %62 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1438
  %63 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %62, i32 0, i32 4, !dbg !1439
  %64 = load i32, i32* %63, align 8, !dbg !1439
  %65 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !1440
  %66 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %65, i32 0, i32 1, !dbg !1441
  %67 = load i32, i32* %66, align 8, !dbg !1441
  %68 = sub i32 %64, %67, !dbg !1442
  %69 = call i32 @gz_load(%struct.gz_state* %53, i8* %61, i32 %68, i32* %4), !dbg !1443
  %70 = icmp eq i32 %69, -1, !dbg !1444
  br i1 %70, label %71, label %72, !dbg !1445

; <label>:71:                                     ; preds = %52
  store i32 -1, i32* %2, align 4, !dbg !1446
  br label %84, !dbg !1446

; <label>:72:                                     ; preds = %52
  %73 = load i32, i32* %4, align 4, !dbg !1447
  %74 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !1448
  %75 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %74, i32 0, i32 1, !dbg !1449
  %76 = load i32, i32* %75, align 8, !dbg !1450
  %77 = add i32 %76, %73, !dbg !1450
  store i32 %77, i32* %75, align 8, !dbg !1450
  %78 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !1451
  %79 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %78, i32 0, i32 6, !dbg !1452
  %80 = load i8*, i8** %79, align 8, !dbg !1452
  %81 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !1453
  %82 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %81, i32 0, i32 0, !dbg !1454
  store i8* %80, i8** %82, align 8, !dbg !1455
  br label %83, !dbg !1456

; <label>:83:                                     ; preds = %72, %21
  store i32 0, i32* %2, align 4, !dbg !1457
  br label %84, !dbg !1457

; <label>:84:                                     ; preds = %83, %71, %20
  %85 = load i32, i32* %2, align 4, !dbg !1458
  ret i32 %85, !dbg !1458
}

declare i32 @inflate(%struct.z_stream_s*, i32) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

declare i32 @inflateInit2_(%struct.z_stream_s*, i32, i8*, i32) #2

declare i32 @inflateReset(%struct.z_stream_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!81, !82}
!llvm.ident = !{!83}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "[inter]third-party--zlib-1.2.7--gzread.o.i", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!2 = !{}
!3 = !{!4, !5, !23, !26, !16, !21}
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
!81 = !{i32 2, !"Dwarf Version", i32 4}
!82 = !{i32 2, !"Debug Info Version", i32 3}
!83 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!84 = distinct !DISubprogram(name: "gzread", scope: !85, file: !85, line: 287, type: !86, isLocal: false, isDefinition: true, scopeLine: 291, isOptimized: false, unit: !0, variables: !2)
!85 = !DIFile(filename: "gzread.c", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!86 = !DISubroutineType(types: !87)
!87 = !{!23, !88, !90, !16}
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "gzFile", file: !13, line: 1207, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidp", file: !50, line: 384, baseType: !4)
!91 = !DILocalVariable(name: "file", arg: 1, scope: !84, file: !85, line: 288, type: !88)
!92 = !DIExpression()
!93 = !DILocation(line: 288, column: 12, scope: !84)
!94 = !DILocalVariable(name: "buf", arg: 2, scope: !84, file: !85, line: 289, type: !90)
!95 = !DILocation(line: 289, column: 11, scope: !84)
!96 = !DILocalVariable(name: "len", arg: 3, scope: !84, file: !85, line: 290, type: !16)
!97 = !DILocation(line: 290, column: 14, scope: !84)
!98 = !DILocalVariable(name: "got", scope: !84, file: !85, line: 292, type: !16)
!99 = !DILocation(line: 292, column: 14, scope: !84)
!100 = !DILocalVariable(name: "n", scope: !84, file: !85, line: 292, type: !16)
!101 = !DILocation(line: 292, column: 19, scope: !84)
!102 = !DILocalVariable(name: "state", scope: !84, file: !85, line: 293, type: !5)
!103 = !DILocation(line: 293, column: 15, scope: !84)
!104 = !DILocalVariable(name: "strm", scope: !84, file: !85, line: 294, type: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_streamp", file: !13, line: 106, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!107 = !DILocation(line: 294, column: 15, scope: !84)
!108 = !DILocation(line: 297, column: 9, scope: !109)
!109 = distinct !DILexicalBlock(scope: !84, file: !85, line: 297, column: 9)
!110 = !DILocation(line: 297, column: 14, scope: !109)
!111 = !DILocation(line: 297, column: 9, scope: !84)
!112 = !DILocation(line: 298, column: 9, scope: !109)
!113 = !DILocation(line: 299, column: 24, scope: !84)
!114 = !DILocation(line: 299, column: 13, scope: !84)
!115 = !DILocation(line: 299, column: 11, scope: !84)
!116 = !DILocation(line: 300, column: 14, scope: !84)
!117 = !DILocation(line: 300, column: 21, scope: !84)
!118 = !DILocation(line: 300, column: 10, scope: !84)
!119 = !DILocation(line: 303, column: 9, scope: !120)
!120 = distinct !DILexicalBlock(scope: !84, file: !85, line: 303, column: 9)
!121 = !DILocation(line: 303, column: 16, scope: !120)
!122 = !DILocation(line: 303, column: 21, scope: !120)
!123 = !DILocation(line: 303, column: 29, scope: !120)
!124 = !DILocation(line: 304, column: 14, scope: !120)
!125 = !DILocation(line: 304, column: 21, scope: !120)
!126 = !DILocation(line: 304, column: 25, scope: !120)
!127 = !DILocation(line: 304, column: 30, scope: !120)
!128 = !DILocation(line: 304, column: 33, scope: !129)
!129 = !DILexicalBlockFile(scope: !120, file: !85, discriminator: 1)
!130 = !DILocation(line: 304, column: 40, scope: !129)
!131 = !DILocation(line: 304, column: 44, scope: !129)
!132 = !DILocation(line: 303, column: 9, scope: !133)
!133 = !DILexicalBlockFile(scope: !84, file: !85, discriminator: 1)
!134 = !DILocation(line: 305, column: 9, scope: !120)
!135 = !DILocation(line: 309, column: 14, scope: !136)
!136 = distinct !DILexicalBlock(scope: !84, file: !85, line: 309, column: 9)
!137 = !DILocation(line: 309, column: 18, scope: !136)
!138 = !DILocation(line: 309, column: 9, scope: !84)
!139 = !DILocation(line: 310, column: 18, scope: !140)
!140 = distinct !DILexicalBlock(scope: !136, file: !85, line: 309, column: 23)
!141 = !DILocation(line: 310, column: 9, scope: !140)
!142 = !DILocation(line: 311, column: 9, scope: !140)
!143 = !DILocation(line: 315, column: 9, scope: !144)
!144 = distinct !DILexicalBlock(scope: !84, file: !85, line: 315, column: 9)
!145 = !DILocation(line: 315, column: 13, scope: !144)
!146 = !DILocation(line: 315, column: 9, scope: !84)
!147 = !DILocation(line: 316, column: 9, scope: !144)
!148 = !DILocation(line: 319, column: 9, scope: !149)
!149 = distinct !DILexicalBlock(scope: !84, file: !85, line: 319, column: 9)
!150 = !DILocation(line: 319, column: 16, scope: !149)
!151 = !DILocation(line: 319, column: 9, scope: !84)
!152 = !DILocation(line: 320, column: 9, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !85, line: 319, column: 22)
!154 = !DILocation(line: 320, column: 16, scope: !153)
!155 = !DILocation(line: 320, column: 21, scope: !153)
!156 = !DILocation(line: 321, column: 21, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !85, line: 321, column: 13)
!158 = !DILocation(line: 321, column: 28, scope: !157)
!159 = !DILocation(line: 321, column: 35, scope: !157)
!160 = !DILocation(line: 321, column: 13, scope: !157)
!161 = !DILocation(line: 321, column: 41, scope: !157)
!162 = !DILocation(line: 321, column: 13, scope: !153)
!163 = !DILocation(line: 322, column: 13, scope: !157)
!164 = !DILocation(line: 323, column: 5, scope: !153)
!165 = !DILocation(line: 326, column: 9, scope: !84)
!166 = !DILocation(line: 327, column: 5, scope: !84)
!167 = distinct !{!167, !166}
!168 = !DILocation(line: 329, column: 13, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !85, line: 329, column: 13)
!170 = distinct !DILexicalBlock(scope: !84, file: !85, line: 327, column: 8)
!171 = !DILocation(line: 329, column: 20, scope: !169)
!172 = !DILocation(line: 329, column: 22, scope: !169)
!173 = !DILocation(line: 329, column: 13, scope: !170)
!174 = !DILocation(line: 330, column: 17, scope: !175)
!175 = distinct !DILexicalBlock(scope: !169, file: !85, line: 329, column: 28)
!176 = !DILocation(line: 330, column: 24, scope: !175)
!177 = !DILocation(line: 330, column: 26, scope: !175)
!178 = !DILocation(line: 330, column: 33, scope: !175)
!179 = !DILocation(line: 330, column: 31, scope: !175)
!180 = !DILocation(line: 330, column: 39, scope: !181)
!181 = !DILexicalBlockFile(scope: !175, file: !85, discriminator: 1)
!182 = !DILocation(line: 330, column: 17, scope: !181)
!183 = !DILocation(line: 330, column: 45, scope: !184)
!184 = !DILexicalBlockFile(scope: !175, file: !85, discriminator: 2)
!185 = !DILocation(line: 330, column: 52, scope: !184)
!186 = !DILocation(line: 330, column: 54, scope: !184)
!187 = !DILocation(line: 330, column: 17, scope: !184)
!188 = !DILocation(line: 330, column: 17, scope: !189)
!189 = !DILexicalBlockFile(scope: !175, file: !85, discriminator: 3)
!190 = !DILocation(line: 330, column: 15, scope: !189)
!191 = !DILocation(line: 331, column: 20, scope: !175)
!192 = !DILocation(line: 331, column: 25, scope: !175)
!193 = !DILocation(line: 331, column: 32, scope: !175)
!194 = !DILocation(line: 331, column: 34, scope: !175)
!195 = !DILocation(line: 331, column: 40, scope: !175)
!196 = !DILocation(line: 331, column: 13, scope: !175)
!197 = !DILocation(line: 332, column: 30, scope: !175)
!198 = !DILocation(line: 332, column: 13, scope: !175)
!199 = !DILocation(line: 332, column: 20, scope: !175)
!200 = !DILocation(line: 332, column: 22, scope: !175)
!201 = !DILocation(line: 332, column: 27, scope: !175)
!202 = !DILocation(line: 333, column: 30, scope: !175)
!203 = !DILocation(line: 333, column: 13, scope: !175)
!204 = !DILocation(line: 333, column: 20, scope: !175)
!205 = !DILocation(line: 333, column: 22, scope: !175)
!206 = !DILocation(line: 333, column: 27, scope: !175)
!207 = !DILocation(line: 334, column: 9, scope: !175)
!208 = !DILocation(line: 337, column: 18, scope: !209)
!209 = distinct !DILexicalBlock(scope: !169, file: !85, line: 337, column: 18)
!210 = !DILocation(line: 337, column: 25, scope: !209)
!211 = !DILocation(line: 337, column: 29, scope: !209)
!212 = !DILocation(line: 337, column: 32, scope: !213)
!213 = !DILexicalBlockFile(scope: !209, file: !85, discriminator: 1)
!214 = !DILocation(line: 337, column: 38, scope: !213)
!215 = !DILocation(line: 337, column: 47, scope: !213)
!216 = !DILocation(line: 337, column: 18, scope: !213)
!217 = !DILocation(line: 338, column: 13, scope: !218)
!218 = distinct !DILexicalBlock(scope: !209, file: !85, line: 337, column: 53)
!219 = !DILocation(line: 338, column: 20, scope: !218)
!220 = !DILocation(line: 338, column: 25, scope: !218)
!221 = !DILocation(line: 339, column: 13, scope: !218)
!222 = !DILocation(line: 344, column: 18, scope: !223)
!223 = distinct !DILexicalBlock(scope: !209, file: !85, line: 344, column: 18)
!224 = !DILocation(line: 344, column: 25, scope: !223)
!225 = !DILocation(line: 344, column: 29, scope: !223)
!226 = !DILocation(line: 344, column: 34, scope: !223)
!227 = !DILocation(line: 344, column: 37, scope: !228)
!228 = !DILexicalBlockFile(scope: !223, file: !85, discriminator: 1)
!229 = !DILocation(line: 344, column: 44, scope: !228)
!230 = !DILocation(line: 344, column: 51, scope: !228)
!231 = !DILocation(line: 344, column: 56, scope: !228)
!232 = !DILocation(line: 344, column: 41, scope: !228)
!233 = !DILocation(line: 344, column: 18, scope: !228)
!234 = !DILocation(line: 346, column: 26, scope: !235)
!235 = distinct !DILexicalBlock(scope: !236, file: !85, line: 346, column: 17)
!236 = distinct !DILexicalBlock(scope: !223, file: !85, line: 344, column: 63)
!237 = !DILocation(line: 346, column: 17, scope: !235)
!238 = !DILocation(line: 346, column: 33, scope: !235)
!239 = !DILocation(line: 346, column: 17, scope: !236)
!240 = !DILocation(line: 347, column: 17, scope: !235)
!241 = !DILocation(line: 348, column: 13, scope: !236)
!242 = !DILocation(line: 354, column: 18, scope: !243)
!243 = distinct !DILexicalBlock(scope: !223, file: !85, line: 354, column: 18)
!244 = !DILocation(line: 354, column: 25, scope: !243)
!245 = !DILocation(line: 354, column: 29, scope: !243)
!246 = !DILocation(line: 354, column: 18, scope: !223)
!247 = !DILocation(line: 355, column: 25, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !85, line: 355, column: 17)
!249 = distinct !DILexicalBlock(scope: !243, file: !85, line: 354, column: 35)
!250 = !DILocation(line: 355, column: 32, scope: !248)
!251 = !DILocation(line: 355, column: 37, scope: !248)
!252 = !DILocation(line: 355, column: 17, scope: !248)
!253 = !DILocation(line: 355, column: 46, scope: !248)
!254 = !DILocation(line: 355, column: 17, scope: !249)
!255 = !DILocation(line: 356, column: 17, scope: !248)
!256 = !DILocation(line: 357, column: 9, scope: !249)
!257 = !DILocation(line: 361, column: 31, scope: !258)
!258 = distinct !DILexicalBlock(scope: !243, file: !85, line: 360, column: 14)
!259 = !DILocation(line: 361, column: 13, scope: !258)
!260 = !DILocation(line: 361, column: 19, scope: !258)
!261 = !DILocation(line: 361, column: 29, scope: !258)
!262 = !DILocation(line: 362, column: 30, scope: !258)
!263 = !DILocation(line: 362, column: 13, scope: !258)
!264 = !DILocation(line: 362, column: 19, scope: !258)
!265 = !DILocation(line: 362, column: 28, scope: !258)
!266 = !DILocation(line: 363, column: 27, scope: !267)
!267 = distinct !DILexicalBlock(scope: !258, file: !85, line: 363, column: 17)
!268 = !DILocation(line: 363, column: 17, scope: !267)
!269 = !DILocation(line: 363, column: 34, scope: !267)
!270 = !DILocation(line: 363, column: 17, scope: !258)
!271 = !DILocation(line: 364, column: 17, scope: !267)
!272 = !DILocation(line: 365, column: 17, scope: !258)
!273 = !DILocation(line: 365, column: 24, scope: !258)
!274 = !DILocation(line: 365, column: 26, scope: !258)
!275 = !DILocation(line: 365, column: 15, scope: !258)
!276 = !DILocation(line: 366, column: 13, scope: !258)
!277 = !DILocation(line: 366, column: 20, scope: !258)
!278 = !DILocation(line: 366, column: 22, scope: !258)
!279 = !DILocation(line: 366, column: 27, scope: !258)
!280 = !DILocation(line: 370, column: 16, scope: !170)
!281 = !DILocation(line: 370, column: 13, scope: !170)
!282 = !DILocation(line: 371, column: 23, scope: !170)
!283 = !DILocation(line: 371, column: 29, scope: !170)
!284 = !DILocation(line: 371, column: 27, scope: !170)
!285 = !DILocation(line: 371, column: 13, scope: !170)
!286 = !DILocation(line: 372, column: 16, scope: !170)
!287 = !DILocation(line: 372, column: 13, scope: !170)
!288 = !DILocation(line: 373, column: 25, scope: !170)
!289 = !DILocation(line: 373, column: 9, scope: !170)
!290 = !DILocation(line: 373, column: 16, scope: !170)
!291 = !DILocation(line: 373, column: 18, scope: !170)
!292 = !DILocation(line: 373, column: 22, scope: !170)
!293 = !DILocation(line: 374, column: 5, scope: !170)
!294 = !DILocation(line: 374, column: 14, scope: !133)
!295 = !DILocation(line: 374, column: 5, scope: !133)
!296 = !DILocation(line: 377, column: 17, scope: !84)
!297 = !DILocation(line: 377, column: 5, scope: !84)
!298 = !DILocation(line: 378, column: 1, scope: !84)
!299 = distinct !DISubprogram(name: "gz_skip", scope: !85, file: !85, line: 255, type: !300, isLocal: true, isDefinition: true, scopeLine: 258, isOptimized: false, unit: !0, variables: !2)
!300 = !DISubroutineType(types: !301)
!301 = !{!23, !5, !21}
!302 = !DILocalVariable(name: "state", arg: 1, scope: !299, file: !85, line: 256, type: !5)
!303 = !DILocation(line: 256, column: 15, scope: !299)
!304 = !DILocalVariable(name: "len", arg: 2, scope: !299, file: !85, line: 257, type: !21)
!305 = !DILocation(line: 257, column: 10, scope: !299)
!306 = !DILocalVariable(name: "n", scope: !299, file: !85, line: 259, type: !16)
!307 = !DILocation(line: 259, column: 14, scope: !299)
!308 = !DILocation(line: 262, column: 5, scope: !299)
!309 = !DILocation(line: 262, column: 12, scope: !310)
!310 = !DILexicalBlockFile(scope: !299, file: !85, discriminator: 1)
!311 = !DILocation(line: 262, column: 5, scope: !310)
!312 = !DILocation(line: 264, column: 13, scope: !313)
!313 = distinct !DILexicalBlock(scope: !299, file: !85, line: 264, column: 13)
!314 = !DILocation(line: 264, column: 20, scope: !313)
!315 = !DILocation(line: 264, column: 22, scope: !313)
!316 = !DILocation(line: 264, column: 13, scope: !299)
!317 = !DILocation(line: 265, column: 88, scope: !318)
!318 = distinct !DILexicalBlock(scope: !313, file: !85, line: 264, column: 28)
!319 = !DILocation(line: 265, column: 95, scope: !318)
!320 = !DILocation(line: 265, column: 97, scope: !318)
!321 = !DILocation(line: 265, column: 82, scope: !318)
!322 = !DILocation(line: 265, column: 104, scope: !318)
!323 = !DILocation(line: 265, column: 102, scope: !318)
!324 = !DILocation(line: 265, column: 17, scope: !318)
!325 = !DILocation(line: 266, column: 27, scope: !318)
!326 = !DILocation(line: 266, column: 17, scope: !318)
!327 = !DILocation(line: 265, column: 17, scope: !328)
!328 = !DILexicalBlockFile(scope: !318, file: !85, discriminator: 1)
!329 = !DILocation(line: 266, column: 33, scope: !328)
!330 = !DILocation(line: 266, column: 40, scope: !328)
!331 = !DILocation(line: 266, column: 42, scope: !328)
!332 = !DILocation(line: 265, column: 17, scope: !333)
!333 = !DILexicalBlockFile(scope: !318, file: !85, discriminator: 2)
!334 = !DILocation(line: 265, column: 17, scope: !335)
!335 = !DILexicalBlockFile(scope: !318, file: !85, discriminator: 3)
!336 = !DILocation(line: 265, column: 15, scope: !335)
!337 = !DILocation(line: 267, column: 30, scope: !318)
!338 = !DILocation(line: 267, column: 13, scope: !318)
!339 = !DILocation(line: 267, column: 20, scope: !318)
!340 = !DILocation(line: 267, column: 22, scope: !318)
!341 = !DILocation(line: 267, column: 27, scope: !318)
!342 = !DILocation(line: 268, column: 30, scope: !318)
!343 = !DILocation(line: 268, column: 13, scope: !318)
!344 = !DILocation(line: 268, column: 20, scope: !318)
!345 = !DILocation(line: 268, column: 22, scope: !318)
!346 = !DILocation(line: 268, column: 27, scope: !318)
!347 = !DILocation(line: 269, column: 29, scope: !318)
!348 = !DILocation(line: 269, column: 13, scope: !318)
!349 = !DILocation(line: 269, column: 20, scope: !318)
!350 = !DILocation(line: 269, column: 22, scope: !318)
!351 = !DILocation(line: 269, column: 26, scope: !318)
!352 = !DILocation(line: 270, column: 20, scope: !318)
!353 = !DILocation(line: 270, column: 17, scope: !318)
!354 = !DILocation(line: 271, column: 9, scope: !318)
!355 = !DILocation(line: 274, column: 18, scope: !356)
!356 = distinct !DILexicalBlock(scope: !313, file: !85, line: 274, column: 18)
!357 = !DILocation(line: 274, column: 25, scope: !356)
!358 = !DILocation(line: 274, column: 29, scope: !356)
!359 = !DILocation(line: 274, column: 32, scope: !360)
!360 = !DILexicalBlockFile(scope: !356, file: !85, discriminator: 1)
!361 = !DILocation(line: 274, column: 39, scope: !360)
!362 = !DILocation(line: 274, column: 44, scope: !360)
!363 = !DILocation(line: 274, column: 53, scope: !360)
!364 = !DILocation(line: 274, column: 18, scope: !360)
!365 = !DILocation(line: 275, column: 13, scope: !356)
!366 = !DILocation(line: 280, column: 26, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !85, line: 280, column: 17)
!368 = distinct !DILexicalBlock(scope: !356, file: !85, line: 278, column: 14)
!369 = !DILocation(line: 280, column: 17, scope: !367)
!370 = !DILocation(line: 280, column: 33, scope: !367)
!371 = !DILocation(line: 280, column: 17, scope: !368)
!372 = !DILocation(line: 281, column: 17, scope: !367)
!373 = !DILocation(line: 262, column: 5, scope: !374)
!374 = !DILexicalBlockFile(scope: !299, file: !85, discriminator: 2)
!375 = distinct !{!375, !308}
!376 = !DILocation(line: 283, column: 5, scope: !299)
!377 = !DILocation(line: 284, column: 1, scope: !299)
!378 = distinct !DISubprogram(name: "gz_fetch", scope: !85, file: !85, line: 225, type: !379, isLocal: true, isDefinition: true, scopeLine: 227, isOptimized: false, unit: !0, variables: !2)
!379 = !DISubroutineType(types: !380)
!380 = !{!23, !5}
!381 = !DILocalVariable(name: "state", arg: 1, scope: !378, file: !85, line: 226, type: !5)
!382 = !DILocation(line: 226, column: 15, scope: !378)
!383 = !DILocalVariable(name: "strm", scope: !378, file: !85, line: 228, type: !105)
!384 = !DILocation(line: 228, column: 15, scope: !378)
!385 = !DILocation(line: 228, column: 24, scope: !378)
!386 = !DILocation(line: 228, column: 31, scope: !378)
!387 = !DILocation(line: 230, column: 5, scope: !378)
!388 = distinct !{!388, !387}
!389 = !DILocation(line: 231, column: 16, scope: !390)
!390 = distinct !DILexicalBlock(scope: !378, file: !85, line: 230, column: 8)
!391 = !DILocation(line: 231, column: 23, scope: !390)
!392 = !DILocation(line: 231, column: 9, scope: !390)
!393 = !DILocation(line: 233, column: 25, scope: !394)
!394 = distinct !DILexicalBlock(scope: !395, file: !85, line: 233, column: 17)
!395 = distinct !DILexicalBlock(scope: !390, file: !85, line: 231, column: 28)
!396 = !DILocation(line: 233, column: 17, scope: !394)
!397 = !DILocation(line: 233, column: 32, scope: !394)
!398 = !DILocation(line: 233, column: 17, scope: !395)
!399 = !DILocation(line: 234, column: 17, scope: !394)
!400 = !DILocation(line: 235, column: 17, scope: !401)
!401 = distinct !DILexicalBlock(scope: !395, file: !85, line: 235, column: 17)
!402 = !DILocation(line: 235, column: 24, scope: !401)
!403 = !DILocation(line: 235, column: 28, scope: !401)
!404 = !DILocation(line: 235, column: 17, scope: !395)
!405 = !DILocation(line: 236, column: 17, scope: !401)
!406 = !DILocation(line: 237, column: 13, scope: !395)
!407 = !DILocation(line: 239, column: 25, scope: !408)
!408 = distinct !DILexicalBlock(scope: !395, file: !85, line: 239, column: 17)
!409 = !DILocation(line: 239, column: 32, scope: !408)
!410 = !DILocation(line: 239, column: 39, scope: !408)
!411 = !DILocation(line: 239, column: 44, scope: !408)
!412 = !DILocation(line: 239, column: 51, scope: !408)
!413 = !DILocation(line: 239, column: 56, scope: !408)
!414 = !DILocation(line: 239, column: 64, scope: !408)
!415 = !DILocation(line: 239, column: 71, scope: !408)
!416 = !DILocation(line: 239, column: 73, scope: !408)
!417 = !DILocation(line: 239, column: 17, scope: !408)
!418 = !DILocation(line: 240, column: 21, scope: !408)
!419 = !DILocation(line: 239, column: 17, scope: !395)
!420 = !DILocation(line: 241, column: 17, scope: !408)
!421 = !DILocation(line: 242, column: 29, scope: !395)
!422 = !DILocation(line: 242, column: 36, scope: !395)
!423 = !DILocation(line: 242, column: 13, scope: !395)
!424 = !DILocation(line: 242, column: 20, scope: !395)
!425 = !DILocation(line: 242, column: 22, scope: !395)
!426 = !DILocation(line: 242, column: 27, scope: !395)
!427 = !DILocation(line: 243, column: 13, scope: !395)
!428 = !DILocation(line: 245, column: 31, scope: !395)
!429 = !DILocation(line: 245, column: 38, scope: !395)
!430 = !DILocation(line: 245, column: 43, scope: !395)
!431 = !DILocation(line: 245, column: 13, scope: !395)
!432 = !DILocation(line: 245, column: 19, scope: !395)
!433 = !DILocation(line: 245, column: 29, scope: !395)
!434 = !DILocation(line: 246, column: 30, scope: !395)
!435 = !DILocation(line: 246, column: 37, scope: !395)
!436 = !DILocation(line: 246, column: 13, scope: !395)
!437 = !DILocation(line: 246, column: 19, scope: !395)
!438 = !DILocation(line: 246, column: 28, scope: !395)
!439 = !DILocation(line: 247, column: 27, scope: !440)
!440 = distinct !DILexicalBlock(scope: !395, file: !85, line: 247, column: 17)
!441 = !DILocation(line: 247, column: 17, scope: !440)
!442 = !DILocation(line: 247, column: 34, scope: !440)
!443 = !DILocation(line: 247, column: 17, scope: !395)
!444 = !DILocation(line: 248, column: 17, scope: !440)
!445 = !DILocation(line: 249, column: 9, scope: !395)
!446 = !DILocation(line: 250, column: 5, scope: !390)
!447 = !DILocation(line: 250, column: 14, scope: !448)
!448 = !DILexicalBlockFile(scope: !378, file: !85, discriminator: 1)
!449 = !DILocation(line: 250, column: 21, scope: !448)
!450 = !DILocation(line: 250, column: 23, scope: !448)
!451 = !DILocation(line: 250, column: 28, scope: !448)
!452 = !DILocation(line: 250, column: 33, scope: !448)
!453 = !DILocation(line: 250, column: 38, scope: !454)
!454 = !DILexicalBlockFile(scope: !378, file: !85, discriminator: 2)
!455 = !DILocation(line: 250, column: 45, scope: !454)
!456 = !DILocation(line: 250, column: 49, scope: !454)
!457 = !DILocation(line: 250, column: 52, scope: !458)
!458 = !DILexicalBlockFile(scope: !378, file: !85, discriminator: 3)
!459 = !DILocation(line: 250, column: 58, scope: !458)
!460 = !DILocation(line: 250, column: 49, scope: !458)
!461 = !DILocation(line: 250, column: 5, scope: !462)
!462 = !DILexicalBlockFile(scope: !390, file: !85, discriminator: 4)
!463 = !DILocation(line: 251, column: 5, scope: !378)
!464 = !DILocation(line: 252, column: 1, scope: !378)
!465 = distinct !DISubprogram(name: "gz_load", scope: !85, file: !85, line: 20, type: !466, isLocal: true, isDefinition: true, scopeLine: 25, isOptimized: false, unit: !0, variables: !2)
!466 = !DISubroutineType(types: !467)
!467 = !{!23, !5, !18, !16, !468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!469 = !DILocalVariable(name: "state", arg: 1, scope: !465, file: !85, line: 21, type: !5)
!470 = !DILocation(line: 21, column: 15, scope: !465)
!471 = !DILocalVariable(name: "buf", arg: 2, scope: !465, file: !85, line: 22, type: !18)
!472 = !DILocation(line: 22, column: 20, scope: !465)
!473 = !DILocalVariable(name: "len", arg: 3, scope: !465, file: !85, line: 23, type: !16)
!474 = !DILocation(line: 23, column: 14, scope: !465)
!475 = !DILocalVariable(name: "have", arg: 4, scope: !465, file: !85, line: 24, type: !468)
!476 = !DILocation(line: 24, column: 15, scope: !465)
!477 = !DILocalVariable(name: "ret", scope: !465, file: !85, line: 26, type: !23)
!478 = !DILocation(line: 26, column: 9, scope: !465)
!479 = !DILocation(line: 28, column: 6, scope: !465)
!480 = !DILocation(line: 28, column: 11, scope: !465)
!481 = !DILocation(line: 29, column: 5, scope: !465)
!482 = distinct !{!482, !481}
!483 = !DILocation(line: 30, column: 20, scope: !484)
!484 = distinct !DILexicalBlock(scope: !465, file: !85, line: 29, column: 8)
!485 = !DILocation(line: 30, column: 27, scope: !484)
!486 = !DILocation(line: 30, column: 31, scope: !484)
!487 = !DILocation(line: 30, column: 38, scope: !484)
!488 = !DILocation(line: 30, column: 37, scope: !484)
!489 = !DILocation(line: 30, column: 35, scope: !484)
!490 = !DILocation(line: 30, column: 44, scope: !484)
!491 = !DILocation(line: 30, column: 51, scope: !484)
!492 = !DILocation(line: 30, column: 50, scope: !484)
!493 = !DILocation(line: 30, column: 48, scope: !484)
!494 = !DILocation(line: 30, column: 15, scope: !484)
!495 = !DILocation(line: 30, column: 13, scope: !484)
!496 = !DILocation(line: 31, column: 13, scope: !497)
!497 = distinct !DILexicalBlock(scope: !484, file: !85, line: 31, column: 13)
!498 = !DILocation(line: 31, column: 17, scope: !497)
!499 = !DILocation(line: 31, column: 13, scope: !484)
!500 = !DILocation(line: 32, column: 13, scope: !497)
!501 = !DILocation(line: 33, column: 18, scope: !484)
!502 = !DILocation(line: 33, column: 10, scope: !484)
!503 = !DILocation(line: 33, column: 15, scope: !484)
!504 = !DILocation(line: 34, column: 5, scope: !484)
!505 = !DILocation(line: 34, column: 15, scope: !506)
!506 = !DILexicalBlockFile(scope: !465, file: !85, discriminator: 1)
!507 = !DILocation(line: 34, column: 14, scope: !506)
!508 = !DILocation(line: 34, column: 22, scope: !506)
!509 = !DILocation(line: 34, column: 20, scope: !506)
!510 = !DILocation(line: 34, column: 5, scope: !506)
!511 = !DILocation(line: 35, column: 9, scope: !512)
!512 = distinct !DILexicalBlock(scope: !465, file: !85, line: 35, column: 9)
!513 = !DILocation(line: 35, column: 13, scope: !512)
!514 = !DILocation(line: 35, column: 9, scope: !465)
!515 = !DILocation(line: 36, column: 18, scope: !516)
!516 = distinct !DILexicalBlock(scope: !512, file: !85, line: 35, column: 18)
!517 = !DILocation(line: 36, column: 9, scope: !516)
!518 = !DILocation(line: 37, column: 9, scope: !516)
!519 = !DILocation(line: 39, column: 9, scope: !520)
!520 = distinct !DILexicalBlock(scope: !465, file: !85, line: 39, column: 9)
!521 = !DILocation(line: 39, column: 13, scope: !520)
!522 = !DILocation(line: 39, column: 9, scope: !465)
!523 = !DILocation(line: 40, column: 9, scope: !520)
!524 = !DILocation(line: 40, column: 16, scope: !520)
!525 = !DILocation(line: 40, column: 20, scope: !520)
!526 = !DILocation(line: 41, column: 5, scope: !465)
!527 = !DILocation(line: 42, column: 1, scope: !465)
!528 = distinct !DISubprogram(name: "gz_decomp", scope: !85, file: !85, line: 171, type: !379, isLocal: true, isDefinition: true, scopeLine: 173, isOptimized: false, unit: !0, variables: !2)
!529 = !DILocalVariable(name: "state", arg: 1, scope: !528, file: !85, line: 172, type: !5)
!530 = !DILocation(line: 172, column: 15, scope: !528)
!531 = !DILocalVariable(name: "ret", scope: !528, file: !85, line: 174, type: !23)
!532 = !DILocation(line: 174, column: 9, scope: !528)
!533 = !DILocalVariable(name: "had", scope: !528, file: !85, line: 175, type: !16)
!534 = !DILocation(line: 175, column: 14, scope: !528)
!535 = !DILocalVariable(name: "strm", scope: !528, file: !85, line: 176, type: !105)
!536 = !DILocation(line: 176, column: 15, scope: !528)
!537 = !DILocation(line: 176, column: 24, scope: !528)
!538 = !DILocation(line: 176, column: 31, scope: !528)
!539 = !DILocation(line: 179, column: 11, scope: !528)
!540 = !DILocation(line: 179, column: 17, scope: !528)
!541 = !DILocation(line: 179, column: 9, scope: !528)
!542 = !DILocation(line: 180, column: 5, scope: !528)
!543 = distinct !{!543, !542}
!544 = !DILocation(line: 182, column: 13, scope: !545)
!545 = distinct !DILexicalBlock(scope: !546, file: !85, line: 182, column: 13)
!546 = distinct !DILexicalBlock(scope: !528, file: !85, line: 180, column: 8)
!547 = !DILocation(line: 182, column: 19, scope: !545)
!548 = !DILocation(line: 182, column: 28, scope: !545)
!549 = !DILocation(line: 182, column: 33, scope: !545)
!550 = !DILocation(line: 182, column: 45, scope: !551)
!551 = !DILexicalBlockFile(scope: !545, file: !85, discriminator: 1)
!552 = !DILocation(line: 182, column: 36, scope: !551)
!553 = !DILocation(line: 182, column: 52, scope: !551)
!554 = !DILocation(line: 182, column: 13, scope: !551)
!555 = !DILocation(line: 183, column: 13, scope: !545)
!556 = !DILocation(line: 184, column: 13, scope: !557)
!557 = distinct !DILexicalBlock(scope: !546, file: !85, line: 184, column: 13)
!558 = !DILocation(line: 184, column: 19, scope: !557)
!559 = !DILocation(line: 184, column: 28, scope: !557)
!560 = !DILocation(line: 184, column: 13, scope: !546)
!561 = !DILocation(line: 185, column: 22, scope: !562)
!562 = distinct !DILexicalBlock(scope: !557, file: !85, line: 184, column: 34)
!563 = !DILocation(line: 185, column: 13, scope: !562)
!564 = !DILocation(line: 186, column: 13, scope: !562)
!565 = !DILocation(line: 190, column: 23, scope: !546)
!566 = !DILocation(line: 190, column: 15, scope: !546)
!567 = !DILocation(line: 190, column: 13, scope: !546)
!568 = !DILocation(line: 191, column: 13, scope: !569)
!569 = distinct !DILexicalBlock(scope: !546, file: !85, line: 191, column: 13)
!570 = !DILocation(line: 191, column: 17, scope: !569)
!571 = !DILocation(line: 191, column: 25, scope: !569)
!572 = !DILocation(line: 191, column: 28, scope: !573)
!573 = !DILexicalBlockFile(scope: !569, file: !85, discriminator: 1)
!574 = !DILocation(line: 191, column: 32, scope: !573)
!575 = !DILocation(line: 191, column: 13, scope: !573)
!576 = !DILocation(line: 192, column: 22, scope: !577)
!577 = distinct !DILexicalBlock(scope: !569, file: !85, line: 191, column: 38)
!578 = !DILocation(line: 192, column: 13, scope: !577)
!579 = !DILocation(line: 194, column: 13, scope: !577)
!580 = !DILocation(line: 196, column: 13, scope: !581)
!581 = distinct !DILexicalBlock(scope: !546, file: !85, line: 196, column: 13)
!582 = !DILocation(line: 196, column: 17, scope: !581)
!583 = !DILocation(line: 196, column: 13, scope: !546)
!584 = !DILocation(line: 197, column: 22, scope: !585)
!585 = distinct !DILexicalBlock(scope: !581, file: !85, line: 196, column: 26)
!586 = !DILocation(line: 197, column: 13, scope: !585)
!587 = !DILocation(line: 198, column: 13, scope: !585)
!588 = !DILocation(line: 200, column: 13, scope: !589)
!589 = distinct !DILexicalBlock(scope: !546, file: !85, line: 200, column: 13)
!590 = !DILocation(line: 200, column: 17, scope: !589)
!591 = !DILocation(line: 200, column: 13, scope: !546)
!592 = !DILocation(line: 201, column: 22, scope: !593)
!593 = distinct !DILexicalBlock(scope: !589, file: !85, line: 200, column: 26)
!594 = !DILocation(line: 202, column: 22, scope: !593)
!595 = !DILocation(line: 202, column: 28, scope: !593)
!596 = !DILocation(line: 202, column: 32, scope: !593)
!597 = !DILocation(line: 202, column: 22, scope: !598)
!598 = !DILexicalBlockFile(scope: !593, file: !85, discriminator: 1)
!599 = !DILocation(line: 202, column: 67, scope: !600)
!600 = !DILexicalBlockFile(scope: !593, file: !85, discriminator: 2)
!601 = !DILocation(line: 202, column: 73, scope: !600)
!602 = !DILocation(line: 202, column: 22, scope: !600)
!603 = !DILocation(line: 202, column: 22, scope: !604)
!604 = !DILexicalBlockFile(scope: !593, file: !85, discriminator: 3)
!605 = !DILocation(line: 201, column: 13, scope: !598)
!606 = !DILocation(line: 203, column: 13, scope: !593)
!607 = !DILocation(line: 205, column: 5, scope: !546)
!608 = !DILocation(line: 205, column: 14, scope: !609)
!609 = !DILexicalBlockFile(scope: !528, file: !85, discriminator: 1)
!610 = !DILocation(line: 205, column: 20, scope: !609)
!611 = !DILocation(line: 205, column: 30, scope: !609)
!612 = !DILocation(line: 205, column: 33, scope: !613)
!613 = !DILexicalBlockFile(scope: !528, file: !85, discriminator: 2)
!614 = !DILocation(line: 205, column: 37, scope: !613)
!615 = !DILocation(line: 205, column: 5, scope: !616)
!616 = !DILexicalBlockFile(scope: !546, file: !85, discriminator: 3)
!617 = !DILocation(line: 208, column: 21, scope: !528)
!618 = !DILocation(line: 208, column: 27, scope: !528)
!619 = !DILocation(line: 208, column: 33, scope: !528)
!620 = !DILocation(line: 208, column: 25, scope: !528)
!621 = !DILocation(line: 208, column: 5, scope: !528)
!622 = !DILocation(line: 208, column: 12, scope: !528)
!623 = !DILocation(line: 208, column: 14, scope: !528)
!624 = !DILocation(line: 208, column: 19, scope: !528)
!625 = !DILocation(line: 209, column: 21, scope: !528)
!626 = !DILocation(line: 209, column: 27, scope: !528)
!627 = !DILocation(line: 209, column: 38, scope: !528)
!628 = !DILocation(line: 209, column: 45, scope: !528)
!629 = !DILocation(line: 209, column: 47, scope: !528)
!630 = !DILocation(line: 209, column: 36, scope: !528)
!631 = !DILocation(line: 209, column: 5, scope: !528)
!632 = !DILocation(line: 209, column: 12, scope: !528)
!633 = !DILocation(line: 209, column: 14, scope: !528)
!634 = !DILocation(line: 209, column: 19, scope: !528)
!635 = !DILocation(line: 212, column: 9, scope: !636)
!636 = distinct !DILexicalBlock(scope: !528, file: !85, line: 212, column: 9)
!637 = !DILocation(line: 212, column: 13, scope: !636)
!638 = !DILocation(line: 212, column: 9, scope: !528)
!639 = !DILocation(line: 213, column: 9, scope: !636)
!640 = !DILocation(line: 213, column: 16, scope: !636)
!641 = !DILocation(line: 213, column: 20, scope: !636)
!642 = !DILocation(line: 216, column: 5, scope: !528)
!643 = !DILocation(line: 217, column: 1, scope: !528)
!644 = distinct !DISubprogram(name: "gzgetc", scope: !85, file: !85, line: 382, type: !645, isLocal: false, isDefinition: true, scopeLine: 384, isOptimized: false, unit: !0, variables: !2)
!645 = !DISubroutineType(types: !646)
!646 = !{!23, !88}
!647 = !DILocalVariable(name: "file", arg: 1, scope: !644, file: !85, line: 383, type: !88)
!648 = !DILocation(line: 383, column: 12, scope: !644)
!649 = !DILocalVariable(name: "ret", scope: !644, file: !85, line: 385, type: !23)
!650 = !DILocation(line: 385, column: 9, scope: !644)
!651 = !DILocalVariable(name: "buf", scope: !644, file: !85, line: 386, type: !652)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, align: 8, elements: !653)
!653 = !{!654}
!654 = !DISubrange(count: 1)
!655 = !DILocation(line: 386, column: 19, scope: !644)
!656 = !DILocalVariable(name: "state", scope: !644, file: !85, line: 387, type: !5)
!657 = !DILocation(line: 387, column: 15, scope: !644)
!658 = !DILocation(line: 390, column: 9, scope: !659)
!659 = distinct !DILexicalBlock(scope: !644, file: !85, line: 390, column: 9)
!660 = !DILocation(line: 390, column: 14, scope: !659)
!661 = !DILocation(line: 390, column: 9, scope: !644)
!662 = !DILocation(line: 391, column: 9, scope: !659)
!663 = !DILocation(line: 392, column: 24, scope: !644)
!664 = !DILocation(line: 392, column: 13, scope: !644)
!665 = !DILocation(line: 392, column: 11, scope: !644)
!666 = !DILocation(line: 395, column: 9, scope: !667)
!667 = distinct !DILexicalBlock(scope: !644, file: !85, line: 395, column: 9)
!668 = !DILocation(line: 395, column: 16, scope: !667)
!669 = !DILocation(line: 395, column: 21, scope: !667)
!670 = !DILocation(line: 395, column: 29, scope: !667)
!671 = !DILocation(line: 396, column: 10, scope: !667)
!672 = !DILocation(line: 396, column: 17, scope: !667)
!673 = !DILocation(line: 396, column: 21, scope: !667)
!674 = !DILocation(line: 396, column: 26, scope: !667)
!675 = !DILocation(line: 396, column: 29, scope: !676)
!676 = !DILexicalBlockFile(scope: !667, file: !85, discriminator: 1)
!677 = !DILocation(line: 396, column: 36, scope: !676)
!678 = !DILocation(line: 396, column: 40, scope: !676)
!679 = !DILocation(line: 395, column: 9, scope: !680)
!680 = !DILexicalBlockFile(scope: !644, file: !85, discriminator: 1)
!681 = !DILocation(line: 397, column: 9, scope: !667)
!682 = !DILocation(line: 400, column: 9, scope: !683)
!683 = distinct !DILexicalBlock(scope: !644, file: !85, line: 400, column: 9)
!684 = !DILocation(line: 400, column: 16, scope: !683)
!685 = !DILocation(line: 400, column: 18, scope: !683)
!686 = !DILocation(line: 400, column: 9, scope: !644)
!687 = !DILocation(line: 401, column: 9, scope: !688)
!688 = distinct !DILexicalBlock(scope: !683, file: !85, line: 400, column: 24)
!689 = !DILocation(line: 401, column: 16, scope: !688)
!690 = !DILocation(line: 401, column: 18, scope: !688)
!691 = !DILocation(line: 401, column: 22, scope: !688)
!692 = !DILocation(line: 402, column: 9, scope: !688)
!693 = !DILocation(line: 402, column: 16, scope: !688)
!694 = !DILocation(line: 402, column: 18, scope: !688)
!695 = !DILocation(line: 402, column: 21, scope: !688)
!696 = !DILocation(line: 403, column: 18, scope: !688)
!697 = !DILocation(line: 403, column: 25, scope: !688)
!698 = !DILocation(line: 403, column: 27, scope: !688)
!699 = !DILocation(line: 403, column: 32, scope: !688)
!700 = !DILocation(line: 403, column: 16, scope: !688)
!701 = !DILocation(line: 403, column: 9, scope: !688)
!702 = !DILocation(line: 407, column: 18, scope: !644)
!703 = !DILocation(line: 407, column: 24, scope: !644)
!704 = !DILocation(line: 407, column: 11, scope: !644)
!705 = !DILocation(line: 407, column: 9, scope: !644)
!706 = !DILocation(line: 408, column: 12, scope: !644)
!707 = !DILocation(line: 408, column: 16, scope: !644)
!708 = !DILocation(line: 408, column: 12, scope: !680)
!709 = !DILocation(line: 408, column: 27, scope: !710)
!710 = !DILexicalBlockFile(scope: !644, file: !85, discriminator: 2)
!711 = !DILocation(line: 408, column: 12, scope: !710)
!712 = !DILocation(line: 408, column: 12, scope: !713)
!713 = !DILexicalBlockFile(scope: !644, file: !85, discriminator: 3)
!714 = !DILocation(line: 408, column: 5, scope: !713)
!715 = !DILocation(line: 409, column: 1, scope: !644)
!716 = distinct !DISubprogram(name: "gzgetc_", scope: !85, file: !85, line: 411, type: !645, isLocal: false, isDefinition: true, scopeLine: 413, isOptimized: false, unit: !0, variables: !2)
!717 = !DILocalVariable(name: "file", arg: 1, scope: !716, file: !85, line: 412, type: !88)
!718 = !DILocation(line: 412, column: 8, scope: !716)
!719 = !DILocation(line: 414, column: 19, scope: !716)
!720 = !DILocation(line: 414, column: 12, scope: !716)
!721 = !DILocation(line: 414, column: 5, scope: !716)
!722 = distinct !DISubprogram(name: "gzungetc", scope: !85, file: !85, line: 418, type: !723, isLocal: false, isDefinition: true, scopeLine: 421, isOptimized: false, unit: !0, variables: !2)
!723 = !DISubroutineType(types: !724)
!724 = !{!23, !23, !88}
!725 = !DILocalVariable(name: "c", arg: 1, scope: !722, file: !85, line: 419, type: !23)
!726 = !DILocation(line: 419, column: 9, scope: !722)
!727 = !DILocalVariable(name: "file", arg: 2, scope: !722, file: !85, line: 420, type: !88)
!728 = !DILocation(line: 420, column: 12, scope: !722)
!729 = !DILocalVariable(name: "state", scope: !722, file: !85, line: 422, type: !5)
!730 = !DILocation(line: 422, column: 15, scope: !722)
!731 = !DILocation(line: 425, column: 9, scope: !732)
!732 = distinct !DILexicalBlock(scope: !722, file: !85, line: 425, column: 9)
!733 = !DILocation(line: 425, column: 14, scope: !732)
!734 = !DILocation(line: 425, column: 9, scope: !722)
!735 = !DILocation(line: 426, column: 9, scope: !732)
!736 = !DILocation(line: 427, column: 24, scope: !722)
!737 = !DILocation(line: 427, column: 13, scope: !722)
!738 = !DILocation(line: 427, column: 11, scope: !722)
!739 = !DILocation(line: 430, column: 9, scope: !740)
!740 = distinct !DILexicalBlock(scope: !722, file: !85, line: 430, column: 9)
!741 = !DILocation(line: 430, column: 16, scope: !740)
!742 = !DILocation(line: 430, column: 21, scope: !740)
!743 = !DILocation(line: 430, column: 29, scope: !740)
!744 = !DILocation(line: 431, column: 10, scope: !740)
!745 = !DILocation(line: 431, column: 17, scope: !740)
!746 = !DILocation(line: 431, column: 21, scope: !740)
!747 = !DILocation(line: 431, column: 26, scope: !740)
!748 = !DILocation(line: 431, column: 29, scope: !749)
!749 = !DILexicalBlockFile(scope: !740, file: !85, discriminator: 1)
!750 = !DILocation(line: 431, column: 36, scope: !749)
!751 = !DILocation(line: 431, column: 40, scope: !749)
!752 = !DILocation(line: 430, column: 9, scope: !753)
!753 = !DILexicalBlockFile(scope: !722, file: !85, discriminator: 1)
!754 = !DILocation(line: 432, column: 9, scope: !740)
!755 = !DILocation(line: 435, column: 9, scope: !756)
!756 = distinct !DILexicalBlock(scope: !722, file: !85, line: 435, column: 9)
!757 = !DILocation(line: 435, column: 16, scope: !756)
!758 = !DILocation(line: 435, column: 9, scope: !722)
!759 = !DILocation(line: 436, column: 9, scope: !760)
!760 = distinct !DILexicalBlock(scope: !756, file: !85, line: 435, column: 22)
!761 = !DILocation(line: 436, column: 16, scope: !760)
!762 = !DILocation(line: 436, column: 21, scope: !760)
!763 = !DILocation(line: 437, column: 21, scope: !764)
!764 = distinct !DILexicalBlock(scope: !760, file: !85, line: 437, column: 13)
!765 = !DILocation(line: 437, column: 28, scope: !764)
!766 = !DILocation(line: 437, column: 35, scope: !764)
!767 = !DILocation(line: 437, column: 13, scope: !764)
!768 = !DILocation(line: 437, column: 41, scope: !764)
!769 = !DILocation(line: 437, column: 13, scope: !760)
!770 = !DILocation(line: 438, column: 13, scope: !764)
!771 = !DILocation(line: 439, column: 5, scope: !760)
!772 = !DILocation(line: 442, column: 9, scope: !773)
!773 = distinct !DILexicalBlock(scope: !722, file: !85, line: 442, column: 9)
!774 = !DILocation(line: 442, column: 11, scope: !773)
!775 = !DILocation(line: 442, column: 9, scope: !722)
!776 = !DILocation(line: 443, column: 9, scope: !773)
!777 = !DILocation(line: 446, column: 9, scope: !778)
!778 = distinct !DILexicalBlock(scope: !722, file: !85, line: 446, column: 9)
!779 = !DILocation(line: 446, column: 16, scope: !778)
!780 = !DILocation(line: 446, column: 18, scope: !778)
!781 = !DILocation(line: 446, column: 23, scope: !778)
!782 = !DILocation(line: 446, column: 9, scope: !722)
!783 = !DILocation(line: 447, column: 9, scope: !784)
!784 = distinct !DILexicalBlock(scope: !778, file: !85, line: 446, column: 29)
!785 = !DILocation(line: 447, column: 16, scope: !784)
!786 = !DILocation(line: 447, column: 18, scope: !784)
!787 = !DILocation(line: 447, column: 23, scope: !784)
!788 = !DILocation(line: 448, column: 25, scope: !784)
!789 = !DILocation(line: 448, column: 32, scope: !784)
!790 = !DILocation(line: 448, column: 39, scope: !784)
!791 = !DILocation(line: 448, column: 46, scope: !784)
!792 = !DILocation(line: 448, column: 51, scope: !784)
!793 = !DILocation(line: 448, column: 36, scope: !784)
!794 = !DILocation(line: 448, column: 57, scope: !784)
!795 = !DILocation(line: 448, column: 9, scope: !784)
!796 = !DILocation(line: 448, column: 16, scope: !784)
!797 = !DILocation(line: 448, column: 18, scope: !784)
!798 = !DILocation(line: 448, column: 23, scope: !784)
!799 = !DILocation(line: 449, column: 28, scope: !784)
!800 = !DILocation(line: 449, column: 9, scope: !784)
!801 = !DILocation(line: 449, column: 16, scope: !784)
!802 = !DILocation(line: 449, column: 18, scope: !784)
!803 = !DILocation(line: 449, column: 26, scope: !784)
!804 = !DILocation(line: 450, column: 9, scope: !784)
!805 = !DILocation(line: 450, column: 16, scope: !784)
!806 = !DILocation(line: 450, column: 18, scope: !784)
!807 = !DILocation(line: 450, column: 21, scope: !784)
!808 = !DILocation(line: 451, column: 9, scope: !784)
!809 = !DILocation(line: 451, column: 16, scope: !784)
!810 = !DILocation(line: 451, column: 21, scope: !784)
!811 = !DILocation(line: 452, column: 16, scope: !784)
!812 = !DILocation(line: 452, column: 9, scope: !784)
!813 = !DILocation(line: 456, column: 9, scope: !814)
!814 = distinct !DILexicalBlock(scope: !722, file: !85, line: 456, column: 9)
!815 = !DILocation(line: 456, column: 16, scope: !814)
!816 = !DILocation(line: 456, column: 18, scope: !814)
!817 = !DILocation(line: 456, column: 27, scope: !814)
!818 = !DILocation(line: 456, column: 34, scope: !814)
!819 = !DILocation(line: 456, column: 39, scope: !814)
!820 = !DILocation(line: 456, column: 23, scope: !814)
!821 = !DILocation(line: 456, column: 9, scope: !722)
!822 = !DILocation(line: 457, column: 18, scope: !823)
!823 = distinct !DILexicalBlock(scope: !814, file: !85, line: 456, column: 46)
!824 = !DILocation(line: 457, column: 9, scope: !823)
!825 = !DILocation(line: 458, column: 9, scope: !823)
!826 = !DILocation(line: 462, column: 9, scope: !827)
!827 = distinct !DILexicalBlock(scope: !722, file: !85, line: 462, column: 9)
!828 = !DILocation(line: 462, column: 16, scope: !827)
!829 = !DILocation(line: 462, column: 18, scope: !827)
!830 = !DILocation(line: 462, column: 26, scope: !827)
!831 = !DILocation(line: 462, column: 33, scope: !827)
!832 = !DILocation(line: 462, column: 23, scope: !827)
!833 = !DILocation(line: 462, column: 9, scope: !722)
!834 = !DILocalVariable(name: "src", scope: !835, file: !85, line: 463, type: !18)
!835 = distinct !DILexicalBlock(scope: !827, file: !85, line: 462, column: 38)
!836 = !DILocation(line: 463, column: 24, scope: !835)
!837 = !DILocation(line: 463, column: 30, scope: !835)
!838 = !DILocation(line: 463, column: 37, scope: !835)
!839 = !DILocation(line: 463, column: 43, scope: !835)
!840 = !DILocation(line: 463, column: 50, scope: !835)
!841 = !DILocation(line: 463, column: 52, scope: !835)
!842 = !DILocation(line: 463, column: 41, scope: !835)
!843 = !DILocalVariable(name: "dest", scope: !835, file: !85, line: 464, type: !18)
!844 = !DILocation(line: 464, column: 24, scope: !835)
!845 = !DILocation(line: 464, column: 31, scope: !835)
!846 = !DILocation(line: 464, column: 38, scope: !835)
!847 = !DILocation(line: 464, column: 45, scope: !835)
!848 = !DILocation(line: 464, column: 52, scope: !835)
!849 = !DILocation(line: 464, column: 57, scope: !835)
!850 = !DILocation(line: 464, column: 42, scope: !835)
!851 = !DILocation(line: 465, column: 9, scope: !835)
!852 = !DILocation(line: 465, column: 16, scope: !853)
!853 = !DILexicalBlockFile(scope: !835, file: !85, discriminator: 1)
!854 = !DILocation(line: 465, column: 22, scope: !853)
!855 = !DILocation(line: 465, column: 29, scope: !853)
!856 = !DILocation(line: 465, column: 20, scope: !853)
!857 = !DILocation(line: 465, column: 9, scope: !853)
!858 = !DILocation(line: 466, column: 24, scope: !835)
!859 = !DILocation(line: 466, column: 23, scope: !835)
!860 = !DILocation(line: 466, column: 14, scope: !835)
!861 = !DILocation(line: 466, column: 21, scope: !835)
!862 = !DILocation(line: 465, column: 9, scope: !863)
!863 = !DILexicalBlockFile(scope: !835, file: !85, discriminator: 2)
!864 = distinct !{!864, !851}
!865 = !DILocation(line: 467, column: 25, scope: !835)
!866 = !DILocation(line: 467, column: 9, scope: !835)
!867 = !DILocation(line: 467, column: 16, scope: !835)
!868 = !DILocation(line: 467, column: 18, scope: !835)
!869 = !DILocation(line: 467, column: 23, scope: !835)
!870 = !DILocation(line: 468, column: 5, scope: !835)
!871 = !DILocation(line: 469, column: 5, scope: !722)
!872 = !DILocation(line: 469, column: 12, scope: !722)
!873 = !DILocation(line: 469, column: 14, scope: !722)
!874 = !DILocation(line: 469, column: 18, scope: !722)
!875 = !DILocation(line: 470, column: 5, scope: !722)
!876 = !DILocation(line: 470, column: 12, scope: !722)
!877 = !DILocation(line: 470, column: 14, scope: !722)
!878 = !DILocation(line: 470, column: 18, scope: !722)
!879 = !DILocation(line: 471, column: 24, scope: !722)
!880 = !DILocation(line: 471, column: 5, scope: !722)
!881 = !DILocation(line: 471, column: 12, scope: !722)
!882 = !DILocation(line: 471, column: 14, scope: !722)
!883 = !DILocation(line: 471, column: 22, scope: !722)
!884 = !DILocation(line: 472, column: 5, scope: !722)
!885 = !DILocation(line: 472, column: 12, scope: !722)
!886 = !DILocation(line: 472, column: 14, scope: !722)
!887 = !DILocation(line: 472, column: 17, scope: !722)
!888 = !DILocation(line: 473, column: 5, scope: !722)
!889 = !DILocation(line: 473, column: 12, scope: !722)
!890 = !DILocation(line: 473, column: 17, scope: !722)
!891 = !DILocation(line: 474, column: 12, scope: !722)
!892 = !DILocation(line: 474, column: 5, scope: !722)
!893 = !DILocation(line: 475, column: 1, scope: !722)
!894 = distinct !DISubprogram(name: "gzgets", scope: !85, file: !85, line: 478, type: !895, isLocal: false, isDefinition: true, scopeLine: 482, isOptimized: false, unit: !0, variables: !2)
!895 = !DISubroutineType(types: !896)
!896 = !{!26, !88, !26, !23}
!897 = !DILocalVariable(name: "file", arg: 1, scope: !894, file: !85, line: 479, type: !88)
!898 = !DILocation(line: 479, column: 12, scope: !894)
!899 = !DILocalVariable(name: "buf", arg: 2, scope: !894, file: !85, line: 480, type: !26)
!900 = !DILocation(line: 480, column: 11, scope: !894)
!901 = !DILocalVariable(name: "len", arg: 3, scope: !894, file: !85, line: 481, type: !23)
!902 = !DILocation(line: 481, column: 9, scope: !894)
!903 = !DILocalVariable(name: "left", scope: !894, file: !85, line: 483, type: !16)
!904 = !DILocation(line: 483, column: 14, scope: !894)
!905 = !DILocalVariable(name: "n", scope: !894, file: !85, line: 483, type: !16)
!906 = !DILocation(line: 483, column: 20, scope: !894)
!907 = !DILocalVariable(name: "str", scope: !894, file: !85, line: 484, type: !26)
!908 = !DILocation(line: 484, column: 11, scope: !894)
!909 = !DILocalVariable(name: "eol", scope: !894, file: !85, line: 485, type: !18)
!910 = !DILocation(line: 485, column: 20, scope: !894)
!911 = !DILocalVariable(name: "state", scope: !894, file: !85, line: 486, type: !5)
!912 = !DILocation(line: 486, column: 15, scope: !894)
!913 = !DILocation(line: 489, column: 9, scope: !914)
!914 = distinct !DILexicalBlock(scope: !894, file: !85, line: 489, column: 9)
!915 = !DILocation(line: 489, column: 14, scope: !914)
!916 = !DILocation(line: 489, column: 21, scope: !914)
!917 = !DILocation(line: 489, column: 24, scope: !918)
!918 = !DILexicalBlockFile(scope: !914, file: !85, discriminator: 1)
!919 = !DILocation(line: 489, column: 28, scope: !918)
!920 = !DILocation(line: 489, column: 36, scope: !918)
!921 = !DILocation(line: 489, column: 39, scope: !922)
!922 = !DILexicalBlockFile(scope: !914, file: !85, discriminator: 2)
!923 = !DILocation(line: 489, column: 43, scope: !922)
!924 = !DILocation(line: 489, column: 9, scope: !922)
!925 = !DILocation(line: 490, column: 9, scope: !914)
!926 = !DILocation(line: 491, column: 24, scope: !894)
!927 = !DILocation(line: 491, column: 13, scope: !894)
!928 = !DILocation(line: 491, column: 11, scope: !894)
!929 = !DILocation(line: 494, column: 9, scope: !930)
!930 = distinct !DILexicalBlock(scope: !894, file: !85, line: 494, column: 9)
!931 = !DILocation(line: 494, column: 16, scope: !930)
!932 = !DILocation(line: 494, column: 21, scope: !930)
!933 = !DILocation(line: 494, column: 29, scope: !930)
!934 = !DILocation(line: 495, column: 10, scope: !930)
!935 = !DILocation(line: 495, column: 17, scope: !930)
!936 = !DILocation(line: 495, column: 21, scope: !930)
!937 = !DILocation(line: 495, column: 26, scope: !930)
!938 = !DILocation(line: 495, column: 29, scope: !939)
!939 = !DILexicalBlockFile(scope: !930, file: !85, discriminator: 1)
!940 = !DILocation(line: 495, column: 36, scope: !939)
!941 = !DILocation(line: 495, column: 40, scope: !939)
!942 = !DILocation(line: 494, column: 9, scope: !943)
!943 = !DILexicalBlockFile(scope: !894, file: !85, discriminator: 1)
!944 = !DILocation(line: 496, column: 9, scope: !930)
!945 = !DILocation(line: 499, column: 9, scope: !946)
!946 = distinct !DILexicalBlock(scope: !894, file: !85, line: 499, column: 9)
!947 = !DILocation(line: 499, column: 16, scope: !946)
!948 = !DILocation(line: 499, column: 9, scope: !894)
!949 = !DILocation(line: 500, column: 9, scope: !950)
!950 = distinct !DILexicalBlock(scope: !946, file: !85, line: 499, column: 22)
!951 = !DILocation(line: 500, column: 16, scope: !950)
!952 = !DILocation(line: 500, column: 21, scope: !950)
!953 = !DILocation(line: 501, column: 21, scope: !954)
!954 = distinct !DILexicalBlock(scope: !950, file: !85, line: 501, column: 13)
!955 = !DILocation(line: 501, column: 28, scope: !954)
!956 = !DILocation(line: 501, column: 35, scope: !954)
!957 = !DILocation(line: 501, column: 13, scope: !954)
!958 = !DILocation(line: 501, column: 41, scope: !954)
!959 = !DILocation(line: 501, column: 13, scope: !950)
!960 = !DILocation(line: 502, column: 13, scope: !954)
!961 = !DILocation(line: 503, column: 5, scope: !950)
!962 = !DILocation(line: 508, column: 11, scope: !894)
!963 = !DILocation(line: 508, column: 9, scope: !894)
!964 = !DILocation(line: 509, column: 22, scope: !894)
!965 = !DILocation(line: 509, column: 26, scope: !894)
!966 = !DILocation(line: 509, column: 10, scope: !894)
!967 = !DILocation(line: 510, column: 9, scope: !968)
!968 = distinct !DILexicalBlock(scope: !894, file: !85, line: 510, column: 9)
!969 = !DILocation(line: 510, column: 9, scope: !894)
!970 = !DILocation(line: 510, column: 15, scope: !971)
!971 = !DILexicalBlockFile(scope: !968, file: !85, discriminator: 1)
!972 = distinct !{!972, !973}
!973 = !DILocation(line: 510, column: 15, scope: !968)
!974 = !DILocation(line: 512, column: 13, scope: !975)
!975 = distinct !DILexicalBlock(scope: !976, file: !85, line: 512, column: 13)
!976 = distinct !DILexicalBlock(scope: !968, file: !85, line: 510, column: 18)
!977 = !DILocation(line: 512, column: 20, scope: !975)
!978 = !DILocation(line: 512, column: 22, scope: !975)
!979 = !DILocation(line: 512, column: 27, scope: !975)
!980 = !DILocation(line: 512, column: 32, scope: !975)
!981 = !DILocation(line: 512, column: 44, scope: !982)
!982 = !DILexicalBlockFile(scope: !975, file: !85, discriminator: 1)
!983 = !DILocation(line: 512, column: 35, scope: !982)
!984 = !DILocation(line: 512, column: 51, scope: !982)
!985 = !DILocation(line: 512, column: 13, scope: !982)
!986 = !DILocation(line: 513, column: 13, scope: !975)
!987 = !DILocation(line: 514, column: 13, scope: !988)
!988 = distinct !DILexicalBlock(scope: !976, file: !85, line: 514, column: 13)
!989 = !DILocation(line: 514, column: 20, scope: !988)
!990 = !DILocation(line: 514, column: 22, scope: !988)
!991 = !DILocation(line: 514, column: 27, scope: !988)
!992 = !DILocation(line: 514, column: 13, scope: !976)
!993 = !DILocation(line: 515, column: 13, scope: !994)
!994 = distinct !DILexicalBlock(scope: !988, file: !85, line: 514, column: 33)
!995 = !DILocation(line: 515, column: 20, scope: !994)
!996 = !DILocation(line: 515, column: 25, scope: !994)
!997 = !DILocation(line: 516, column: 13, scope: !994)
!998 = !DILocation(line: 520, column: 13, scope: !976)
!999 = !DILocation(line: 520, column: 20, scope: !976)
!1000 = !DILocation(line: 520, column: 22, scope: !976)
!1001 = !DILocation(line: 520, column: 29, scope: !976)
!1002 = !DILocation(line: 520, column: 27, scope: !976)
!1003 = !DILocation(line: 520, column: 36, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !976, file: !85, discriminator: 1)
!1005 = !DILocation(line: 520, column: 13, scope: !1004)
!1006 = !DILocation(line: 520, column: 43, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !976, file: !85, discriminator: 2)
!1008 = !DILocation(line: 520, column: 50, scope: !1007)
!1009 = !DILocation(line: 520, column: 52, scope: !1007)
!1010 = !DILocation(line: 520, column: 13, scope: !1007)
!1011 = !DILocation(line: 520, column: 13, scope: !1012)
!1012 = !DILexicalBlockFile(scope: !976, file: !85, discriminator: 3)
!1013 = !DILocation(line: 520, column: 11, scope: !1012)
!1014 = !DILocation(line: 521, column: 22, scope: !976)
!1015 = !DILocation(line: 521, column: 29, scope: !976)
!1016 = !DILocation(line: 521, column: 31, scope: !976)
!1017 = !DILocation(line: 521, column: 43, scope: !976)
!1018 = !DILocation(line: 521, column: 15, scope: !976)
!1019 = !DILocation(line: 521, column: 13, scope: !976)
!1020 = !DILocation(line: 522, column: 13, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !976, file: !85, line: 522, column: 13)
!1022 = !DILocation(line: 522, column: 17, scope: !1021)
!1023 = !DILocation(line: 522, column: 13, scope: !976)
!1024 = !DILocation(line: 523, column: 28, scope: !1021)
!1025 = !DILocation(line: 523, column: 34, scope: !1021)
!1026 = !DILocation(line: 523, column: 41, scope: !1021)
!1027 = !DILocation(line: 523, column: 43, scope: !1021)
!1028 = !DILocation(line: 523, column: 32, scope: !1021)
!1029 = !DILocation(line: 523, column: 17, scope: !1021)
!1030 = !DILocation(line: 523, column: 49, scope: !1021)
!1031 = !DILocation(line: 523, column: 15, scope: !1021)
!1032 = !DILocation(line: 523, column: 13, scope: !1021)
!1033 = !DILocation(line: 526, column: 16, scope: !976)
!1034 = !DILocation(line: 526, column: 21, scope: !976)
!1035 = !DILocation(line: 526, column: 28, scope: !976)
!1036 = !DILocation(line: 526, column: 30, scope: !976)
!1037 = !DILocation(line: 526, column: 36, scope: !976)
!1038 = !DILocation(line: 526, column: 9, scope: !976)
!1039 = !DILocation(line: 527, column: 26, scope: !976)
!1040 = !DILocation(line: 527, column: 9, scope: !976)
!1041 = !DILocation(line: 527, column: 16, scope: !976)
!1042 = !DILocation(line: 527, column: 18, scope: !976)
!1043 = !DILocation(line: 527, column: 23, scope: !976)
!1044 = !DILocation(line: 528, column: 26, scope: !976)
!1045 = !DILocation(line: 528, column: 9, scope: !976)
!1046 = !DILocation(line: 528, column: 16, scope: !976)
!1047 = !DILocation(line: 528, column: 18, scope: !976)
!1048 = !DILocation(line: 528, column: 23, scope: !976)
!1049 = !DILocation(line: 529, column: 25, scope: !976)
!1050 = !DILocation(line: 529, column: 9, scope: !976)
!1051 = !DILocation(line: 529, column: 16, scope: !976)
!1052 = !DILocation(line: 529, column: 18, scope: !976)
!1053 = !DILocation(line: 529, column: 22, scope: !976)
!1054 = !DILocation(line: 530, column: 17, scope: !976)
!1055 = !DILocation(line: 530, column: 14, scope: !976)
!1056 = !DILocation(line: 531, column: 16, scope: !976)
!1057 = !DILocation(line: 531, column: 13, scope: !976)
!1058 = !DILocation(line: 532, column: 5, scope: !976)
!1059 = !DILocation(line: 532, column: 14, scope: !971)
!1060 = !DILocation(line: 532, column: 19, scope: !971)
!1061 = !DILocation(line: 532, column: 22, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !968, file: !85, discriminator: 2)
!1063 = !DILocation(line: 532, column: 26, scope: !1062)
!1064 = !DILocation(line: 532, column: 5, scope: !1012)
!1065 = !DILocation(line: 532, column: 5, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !976, file: !85, discriminator: 4)
!1067 = !DILocation(line: 535, column: 9, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !894, file: !85, line: 535, column: 9)
!1069 = !DILocation(line: 535, column: 16, scope: !1068)
!1070 = !DILocation(line: 535, column: 13, scope: !1068)
!1071 = !DILocation(line: 535, column: 9, scope: !894)
!1072 = !DILocation(line: 536, column: 9, scope: !1068)
!1073 = !DILocation(line: 537, column: 5, scope: !894)
!1074 = !DILocation(line: 537, column: 12, scope: !894)
!1075 = !DILocation(line: 538, column: 12, scope: !894)
!1076 = !DILocation(line: 538, column: 5, scope: !894)
!1077 = !DILocation(line: 539, column: 1, scope: !894)
!1078 = distinct !DISubprogram(name: "gzdirect", scope: !85, file: !85, line: 542, type: !645, isLocal: false, isDefinition: true, scopeLine: 544, isOptimized: false, unit: !0, variables: !2)
!1079 = !DILocalVariable(name: "file", arg: 1, scope: !1078, file: !85, line: 543, type: !88)
!1080 = !DILocation(line: 543, column: 12, scope: !1078)
!1081 = !DILocalVariable(name: "state", scope: !1078, file: !85, line: 545, type: !5)
!1082 = !DILocation(line: 545, column: 15, scope: !1078)
!1083 = !DILocation(line: 548, column: 9, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1078, file: !85, line: 548, column: 9)
!1085 = !DILocation(line: 548, column: 14, scope: !1084)
!1086 = !DILocation(line: 548, column: 9, scope: !1078)
!1087 = !DILocation(line: 549, column: 9, scope: !1084)
!1088 = !DILocation(line: 550, column: 24, scope: !1078)
!1089 = !DILocation(line: 550, column: 13, scope: !1078)
!1090 = !DILocation(line: 550, column: 11, scope: !1078)
!1091 = !DILocation(line: 554, column: 9, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1078, file: !85, line: 554, column: 9)
!1093 = !DILocation(line: 554, column: 16, scope: !1092)
!1094 = !DILocation(line: 554, column: 21, scope: !1092)
!1095 = !DILocation(line: 554, column: 29, scope: !1092)
!1096 = !DILocation(line: 554, column: 32, scope: !1097)
!1097 = !DILexicalBlockFile(scope: !1092, file: !85, discriminator: 1)
!1098 = !DILocation(line: 554, column: 39, scope: !1097)
!1099 = !DILocation(line: 554, column: 43, scope: !1097)
!1100 = !DILocation(line: 554, column: 48, scope: !1097)
!1101 = !DILocation(line: 554, column: 51, scope: !1102)
!1102 = !DILexicalBlockFile(scope: !1092, file: !85, discriminator: 2)
!1103 = !DILocation(line: 554, column: 58, scope: !1102)
!1104 = !DILocation(line: 554, column: 60, scope: !1102)
!1105 = !DILocation(line: 554, column: 65, scope: !1102)
!1106 = !DILocation(line: 554, column: 9, scope: !1102)
!1107 = !DILocation(line: 555, column: 23, scope: !1092)
!1108 = !DILocation(line: 555, column: 15, scope: !1092)
!1109 = !DILocation(line: 555, column: 9, scope: !1092)
!1110 = !DILocation(line: 558, column: 12, scope: !1078)
!1111 = !DILocation(line: 558, column: 19, scope: !1078)
!1112 = !DILocation(line: 558, column: 5, scope: !1078)
!1113 = !DILocation(line: 559, column: 1, scope: !1078)
!1114 = distinct !DISubprogram(name: "gz_look", scope: !85, file: !85, line: 85, type: !379, isLocal: true, isDefinition: true, scopeLine: 87, isOptimized: false, unit: !0, variables: !2)
!1115 = !DILocalVariable(name: "state", arg: 1, scope: !1114, file: !85, line: 86, type: !5)
!1116 = !DILocation(line: 86, column: 15, scope: !1114)
!1117 = !DILocalVariable(name: "strm", scope: !1114, file: !85, line: 88, type: !105)
!1118 = !DILocation(line: 88, column: 15, scope: !1114)
!1119 = !DILocation(line: 88, column: 24, scope: !1114)
!1120 = !DILocation(line: 88, column: 31, scope: !1114)
!1121 = !DILocation(line: 91, column: 9, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1114, file: !85, line: 91, column: 9)
!1123 = !DILocation(line: 91, column: 16, scope: !1122)
!1124 = !DILocation(line: 91, column: 21, scope: !1122)
!1125 = !DILocation(line: 91, column: 9, scope: !1114)
!1126 = !DILocation(line: 93, column: 28, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1122, file: !85, line: 91, column: 27)
!1128 = !DILocation(line: 93, column: 35, scope: !1127)
!1129 = !DILocation(line: 93, column: 21, scope: !1127)
!1130 = !DILocation(line: 93, column: 9, scope: !1127)
!1131 = !DILocation(line: 93, column: 16, scope: !1127)
!1132 = !DILocation(line: 93, column: 19, scope: !1127)
!1133 = !DILocation(line: 94, column: 29, scope: !1127)
!1134 = !DILocation(line: 94, column: 36, scope: !1127)
!1135 = !DILocation(line: 94, column: 41, scope: !1127)
!1136 = !DILocation(line: 94, column: 22, scope: !1127)
!1137 = !DILocation(line: 94, column: 9, scope: !1127)
!1138 = !DILocation(line: 94, column: 16, scope: !1127)
!1139 = !DILocation(line: 94, column: 20, scope: !1127)
!1140 = !DILocation(line: 95, column: 13, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1127, file: !85, line: 95, column: 13)
!1142 = !DILocation(line: 95, column: 20, scope: !1141)
!1143 = !DILocation(line: 95, column: 23, scope: !1141)
!1144 = !DILocation(line: 95, column: 30, scope: !1141)
!1145 = !DILocation(line: 95, column: 33, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1141, file: !85, discriminator: 1)
!1147 = !DILocation(line: 95, column: 40, scope: !1146)
!1148 = !DILocation(line: 95, column: 44, scope: !1146)
!1149 = !DILocation(line: 95, column: 13, scope: !1146)
!1150 = !DILocation(line: 96, column: 17, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !85, line: 96, column: 17)
!1152 = distinct !DILexicalBlock(scope: !1141, file: !85, line: 95, column: 53)
!1153 = !DILocation(line: 96, column: 24, scope: !1151)
!1154 = !DILocation(line: 96, column: 28, scope: !1151)
!1155 = !DILocation(line: 96, column: 17, scope: !1152)
!1156 = !DILocation(line: 97, column: 22, scope: !1151)
!1157 = !DILocation(line: 97, column: 29, scope: !1151)
!1158 = !DILocation(line: 97, column: 17, scope: !1151)
!1159 = !DILocation(line: 98, column: 17, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1152, file: !85, line: 98, column: 17)
!1161 = !DILocation(line: 98, column: 24, scope: !1160)
!1162 = !DILocation(line: 98, column: 27, scope: !1160)
!1163 = !DILocation(line: 98, column: 17, scope: !1152)
!1164 = !DILocation(line: 99, column: 22, scope: !1160)
!1165 = !DILocation(line: 99, column: 29, scope: !1160)
!1166 = !DILocation(line: 99, column: 17, scope: !1160)
!1167 = !DILocation(line: 100, column: 22, scope: !1152)
!1168 = !DILocation(line: 100, column: 13, scope: !1152)
!1169 = !DILocation(line: 101, column: 13, scope: !1152)
!1170 = !DILocation(line: 103, column: 23, scope: !1127)
!1171 = !DILocation(line: 103, column: 30, scope: !1127)
!1172 = !DILocation(line: 103, column: 9, scope: !1127)
!1173 = !DILocation(line: 103, column: 16, scope: !1127)
!1174 = !DILocation(line: 103, column: 21, scope: !1127)
!1175 = !DILocation(line: 106, column: 9, scope: !1127)
!1176 = !DILocation(line: 106, column: 16, scope: !1127)
!1177 = !DILocation(line: 106, column: 21, scope: !1127)
!1178 = !DILocation(line: 106, column: 28, scope: !1127)
!1179 = !DILocation(line: 107, column: 9, scope: !1127)
!1180 = !DILocation(line: 107, column: 16, scope: !1127)
!1181 = !DILocation(line: 107, column: 21, scope: !1127)
!1182 = !DILocation(line: 107, column: 27, scope: !1127)
!1183 = !DILocation(line: 108, column: 9, scope: !1127)
!1184 = !DILocation(line: 108, column: 16, scope: !1127)
!1185 = !DILocation(line: 108, column: 21, scope: !1127)
!1186 = !DILocation(line: 108, column: 28, scope: !1127)
!1187 = !DILocation(line: 109, column: 9, scope: !1127)
!1188 = !DILocation(line: 109, column: 16, scope: !1127)
!1189 = !DILocation(line: 109, column: 21, scope: !1127)
!1190 = !DILocation(line: 109, column: 30, scope: !1127)
!1191 = !DILocation(line: 110, column: 9, scope: !1127)
!1192 = !DILocation(line: 110, column: 16, scope: !1127)
!1193 = !DILocation(line: 110, column: 21, scope: !1127)
!1194 = !DILocation(line: 110, column: 29, scope: !1127)
!1195 = !DILocation(line: 111, column: 30, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1127, file: !85, line: 111, column: 13)
!1197 = !DILocation(line: 111, column: 37, scope: !1196)
!1198 = !DILocation(line: 111, column: 13, scope: !1196)
!1199 = !DILocation(line: 111, column: 88, scope: !1196)
!1200 = !DILocation(line: 111, column: 13, scope: !1127)
!1201 = !DILocation(line: 112, column: 18, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1196, file: !85, line: 111, column: 94)
!1203 = !DILocation(line: 112, column: 25, scope: !1202)
!1204 = !DILocation(line: 112, column: 13, scope: !1202)
!1205 = !DILocation(line: 113, column: 18, scope: !1202)
!1206 = !DILocation(line: 113, column: 25, scope: !1202)
!1207 = !DILocation(line: 113, column: 13, scope: !1202)
!1208 = !DILocation(line: 114, column: 13, scope: !1202)
!1209 = !DILocation(line: 114, column: 20, scope: !1202)
!1210 = !DILocation(line: 114, column: 25, scope: !1202)
!1211 = !DILocation(line: 115, column: 22, scope: !1202)
!1212 = !DILocation(line: 115, column: 13, scope: !1202)
!1213 = !DILocation(line: 116, column: 13, scope: !1202)
!1214 = !DILocation(line: 118, column: 5, scope: !1127)
!1215 = !DILocation(line: 121, column: 9, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1114, file: !85, line: 121, column: 9)
!1217 = !DILocation(line: 121, column: 15, scope: !1216)
!1218 = !DILocation(line: 121, column: 24, scope: !1216)
!1219 = !DILocation(line: 121, column: 9, scope: !1114)
!1220 = !DILocation(line: 122, column: 22, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !85, line: 122, column: 13)
!1222 = distinct !DILexicalBlock(scope: !1216, file: !85, line: 121, column: 29)
!1223 = !DILocation(line: 122, column: 13, scope: !1221)
!1224 = !DILocation(line: 122, column: 29, scope: !1221)
!1225 = !DILocation(line: 122, column: 13, scope: !1222)
!1226 = !DILocation(line: 123, column: 13, scope: !1221)
!1227 = !DILocation(line: 124, column: 13, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1222, file: !85, line: 124, column: 13)
!1229 = !DILocation(line: 124, column: 19, scope: !1228)
!1230 = !DILocation(line: 124, column: 28, scope: !1228)
!1231 = !DILocation(line: 124, column: 13, scope: !1222)
!1232 = !DILocation(line: 125, column: 13, scope: !1228)
!1233 = !DILocation(line: 126, column: 5, scope: !1222)
!1234 = !DILocation(line: 135, column: 9, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1114, file: !85, line: 135, column: 9)
!1236 = !DILocation(line: 135, column: 15, scope: !1235)
!1237 = !DILocation(line: 135, column: 24, scope: !1235)
!1238 = !DILocation(line: 135, column: 28, scope: !1235)
!1239 = !DILocation(line: 136, column: 13, scope: !1235)
!1240 = !DILocation(line: 136, column: 19, scope: !1235)
!1241 = !DILocation(line: 136, column: 30, scope: !1235)
!1242 = !DILocation(line: 136, column: 36, scope: !1235)
!1243 = !DILocation(line: 136, column: 39, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !1235, file: !85, discriminator: 1)
!1245 = !DILocation(line: 136, column: 45, scope: !1244)
!1246 = !DILocation(line: 136, column: 56, scope: !1244)
!1247 = !DILocation(line: 135, column: 9, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1114, file: !85, discriminator: 1)
!1249 = !DILocation(line: 137, column: 22, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1235, file: !85, line: 136, column: 64)
!1251 = !DILocation(line: 137, column: 9, scope: !1250)
!1252 = !DILocation(line: 138, column: 9, scope: !1250)
!1253 = !DILocation(line: 138, column: 16, scope: !1250)
!1254 = !DILocation(line: 138, column: 20, scope: !1250)
!1255 = !DILocation(line: 139, column: 9, scope: !1250)
!1256 = !DILocation(line: 139, column: 16, scope: !1250)
!1257 = !DILocation(line: 139, column: 23, scope: !1250)
!1258 = !DILocation(line: 140, column: 9, scope: !1250)
!1259 = !DILocation(line: 145, column: 9, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1114, file: !85, line: 145, column: 9)
!1261 = !DILocation(line: 145, column: 16, scope: !1260)
!1262 = !DILocation(line: 145, column: 23, scope: !1260)
!1263 = !DILocation(line: 145, column: 9, scope: !1114)
!1264 = !DILocation(line: 146, column: 9, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1260, file: !85, line: 145, column: 29)
!1266 = !DILocation(line: 146, column: 15, scope: !1265)
!1267 = !DILocation(line: 146, column: 24, scope: !1265)
!1268 = !DILocation(line: 147, column: 9, scope: !1265)
!1269 = !DILocation(line: 147, column: 16, scope: !1265)
!1270 = !DILocation(line: 147, column: 20, scope: !1265)
!1271 = !DILocation(line: 148, column: 9, scope: !1265)
!1272 = !DILocation(line: 148, column: 16, scope: !1265)
!1273 = !DILocation(line: 148, column: 18, scope: !1265)
!1274 = !DILocation(line: 148, column: 23, scope: !1265)
!1275 = !DILocation(line: 149, column: 9, scope: !1265)
!1276 = !DILocation(line: 155, column: 21, scope: !1114)
!1277 = !DILocation(line: 155, column: 28, scope: !1114)
!1278 = !DILocation(line: 155, column: 5, scope: !1114)
!1279 = !DILocation(line: 155, column: 12, scope: !1114)
!1280 = !DILocation(line: 155, column: 14, scope: !1114)
!1281 = !DILocation(line: 155, column: 19, scope: !1114)
!1282 = !DILocation(line: 156, column: 9, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1114, file: !85, line: 156, column: 9)
!1284 = !DILocation(line: 156, column: 15, scope: !1283)
!1285 = !DILocation(line: 156, column: 9, scope: !1114)
!1286 = !DILocation(line: 157, column: 16, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1283, file: !85, line: 156, column: 25)
!1288 = !DILocation(line: 157, column: 23, scope: !1287)
!1289 = !DILocation(line: 157, column: 25, scope: !1287)
!1290 = !DILocation(line: 157, column: 31, scope: !1287)
!1291 = !DILocation(line: 157, column: 37, scope: !1287)
!1292 = !DILocation(line: 157, column: 46, scope: !1287)
!1293 = !DILocation(line: 157, column: 52, scope: !1287)
!1294 = !DILocation(line: 157, column: 9, scope: !1287)
!1295 = !DILocation(line: 158, column: 25, scope: !1287)
!1296 = !DILocation(line: 158, column: 31, scope: !1287)
!1297 = !DILocation(line: 158, column: 9, scope: !1287)
!1298 = !DILocation(line: 158, column: 16, scope: !1287)
!1299 = !DILocation(line: 158, column: 18, scope: !1287)
!1300 = !DILocation(line: 158, column: 23, scope: !1287)
!1301 = !DILocation(line: 159, column: 9, scope: !1287)
!1302 = !DILocation(line: 159, column: 15, scope: !1287)
!1303 = !DILocation(line: 159, column: 24, scope: !1287)
!1304 = !DILocation(line: 160, column: 5, scope: !1287)
!1305 = !DILocation(line: 161, column: 5, scope: !1114)
!1306 = !DILocation(line: 161, column: 12, scope: !1114)
!1307 = !DILocation(line: 161, column: 16, scope: !1114)
!1308 = !DILocation(line: 162, column: 5, scope: !1114)
!1309 = !DILocation(line: 162, column: 12, scope: !1114)
!1310 = !DILocation(line: 162, column: 19, scope: !1114)
!1311 = !DILocation(line: 163, column: 5, scope: !1114)
!1312 = !DILocation(line: 164, column: 1, scope: !1114)
!1313 = distinct !DISubprogram(name: "gzclose_r", scope: !85, file: !85, line: 562, type: !645, isLocal: false, isDefinition: true, scopeLine: 564, isOptimized: false, unit: !0, variables: !2)
!1314 = !DILocalVariable(name: "file", arg: 1, scope: !1313, file: !85, line: 563, type: !88)
!1315 = !DILocation(line: 563, column: 12, scope: !1313)
!1316 = !DILocalVariable(name: "ret", scope: !1313, file: !85, line: 565, type: !23)
!1317 = !DILocation(line: 565, column: 9, scope: !1313)
!1318 = !DILocalVariable(name: "err", scope: !1313, file: !85, line: 565, type: !23)
!1319 = !DILocation(line: 565, column: 14, scope: !1313)
!1320 = !DILocalVariable(name: "state", scope: !1313, file: !85, line: 566, type: !5)
!1321 = !DILocation(line: 566, column: 15, scope: !1313)
!1322 = !DILocation(line: 569, column: 9, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1313, file: !85, line: 569, column: 9)
!1324 = !DILocation(line: 569, column: 14, scope: !1323)
!1325 = !DILocation(line: 569, column: 9, scope: !1313)
!1326 = !DILocation(line: 570, column: 9, scope: !1323)
!1327 = !DILocation(line: 571, column: 24, scope: !1313)
!1328 = !DILocation(line: 571, column: 13, scope: !1313)
!1329 = !DILocation(line: 571, column: 11, scope: !1313)
!1330 = !DILocation(line: 574, column: 9, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1313, file: !85, line: 574, column: 9)
!1332 = !DILocation(line: 574, column: 16, scope: !1331)
!1333 = !DILocation(line: 574, column: 21, scope: !1331)
!1334 = !DILocation(line: 574, column: 9, scope: !1313)
!1335 = !DILocation(line: 575, column: 9, scope: !1331)
!1336 = !DILocation(line: 578, column: 9, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1313, file: !85, line: 578, column: 9)
!1338 = !DILocation(line: 578, column: 16, scope: !1337)
!1339 = !DILocation(line: 578, column: 9, scope: !1313)
!1340 = !DILocation(line: 579, column: 22, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1337, file: !85, line: 578, column: 22)
!1342 = !DILocation(line: 579, column: 29, scope: !1341)
!1343 = !DILocation(line: 579, column: 9, scope: !1341)
!1344 = !DILocation(line: 580, column: 14, scope: !1341)
!1345 = !DILocation(line: 580, column: 21, scope: !1341)
!1346 = !DILocation(line: 580, column: 9, scope: !1341)
!1347 = !DILocation(line: 581, column: 14, scope: !1341)
!1348 = !DILocation(line: 581, column: 21, scope: !1341)
!1349 = !DILocation(line: 581, column: 9, scope: !1341)
!1350 = !DILocation(line: 582, column: 5, scope: !1341)
!1351 = !DILocation(line: 583, column: 11, scope: !1313)
!1352 = !DILocation(line: 583, column: 18, scope: !1313)
!1353 = !DILocation(line: 583, column: 22, scope: !1313)
!1354 = !DILocation(line: 583, column: 9, scope: !1313)
!1355 = !DILocation(line: 584, column: 14, scope: !1313)
!1356 = !DILocation(line: 584, column: 5, scope: !1313)
!1357 = !DILocation(line: 585, column: 10, scope: !1313)
!1358 = !DILocation(line: 585, column: 17, scope: !1313)
!1359 = !DILocation(line: 585, column: 5, scope: !1313)
!1360 = !DILocation(line: 586, column: 17, scope: !1313)
!1361 = !DILocation(line: 586, column: 24, scope: !1313)
!1362 = !DILocation(line: 586, column: 11, scope: !1313)
!1363 = !DILocation(line: 586, column: 9, scope: !1313)
!1364 = !DILocation(line: 587, column: 10, scope: !1313)
!1365 = !DILocation(line: 587, column: 5, scope: !1313)
!1366 = !DILocation(line: 588, column: 12, scope: !1313)
!1367 = !DILocation(line: 588, column: 12, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1313, file: !85, discriminator: 1)
!1369 = !DILocation(line: 588, column: 25, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1313, file: !85, discriminator: 2)
!1371 = !DILocation(line: 588, column: 12, scope: !1370)
!1372 = !DILocation(line: 588, column: 12, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !1313, file: !85, discriminator: 3)
!1374 = !DILocation(line: 588, column: 5, scope: !1373)
!1375 = !DILocation(line: 589, column: 1, scope: !1313)
!1376 = distinct !DISubprogram(name: "gz_avail", scope: !85, file: !85, line: 51, type: !379, isLocal: true, isDefinition: true, scopeLine: 53, isOptimized: false, unit: !0, variables: !2)
!1377 = !DILocalVariable(name: "state", arg: 1, scope: !1376, file: !85, line: 52, type: !5)
!1378 = !DILocation(line: 52, column: 15, scope: !1376)
!1379 = !DILocalVariable(name: "got", scope: !1376, file: !85, line: 54, type: !16)
!1380 = !DILocation(line: 54, column: 14, scope: !1376)
!1381 = !DILocalVariable(name: "strm", scope: !1376, file: !85, line: 55, type: !105)
!1382 = !DILocation(line: 55, column: 15, scope: !1376)
!1383 = !DILocation(line: 55, column: 24, scope: !1376)
!1384 = !DILocation(line: 55, column: 31, scope: !1376)
!1385 = !DILocation(line: 57, column: 9, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1376, file: !85, line: 57, column: 9)
!1387 = !DILocation(line: 57, column: 16, scope: !1386)
!1388 = !DILocation(line: 57, column: 20, scope: !1386)
!1389 = !DILocation(line: 57, column: 25, scope: !1386)
!1390 = !DILocation(line: 57, column: 28, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1386, file: !85, discriminator: 1)
!1392 = !DILocation(line: 57, column: 35, scope: !1391)
!1393 = !DILocation(line: 57, column: 39, scope: !1391)
!1394 = !DILocation(line: 57, column: 9, scope: !1391)
!1395 = !DILocation(line: 58, column: 9, scope: !1386)
!1396 = !DILocation(line: 59, column: 9, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1376, file: !85, line: 59, column: 9)
!1398 = !DILocation(line: 59, column: 16, scope: !1397)
!1399 = !DILocation(line: 59, column: 20, scope: !1397)
!1400 = !DILocation(line: 59, column: 9, scope: !1376)
!1401 = !DILocation(line: 60, column: 13, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !85, line: 60, column: 13)
!1403 = distinct !DILexicalBlock(scope: !1397, file: !85, line: 59, column: 26)
!1404 = !DILocation(line: 60, column: 19, scope: !1402)
!1405 = !DILocation(line: 60, column: 13, scope: !1403)
!1406 = !DILocalVariable(name: "p", scope: !1407, file: !85, line: 61, type: !18)
!1407 = distinct !DILexicalBlock(scope: !1402, file: !85, line: 60, column: 29)
!1408 = !DILocation(line: 61, column: 28, scope: !1407)
!1409 = !DILocation(line: 61, column: 32, scope: !1407)
!1410 = !DILocation(line: 61, column: 39, scope: !1407)
!1411 = !DILocalVariable(name: "q", scope: !1407, file: !85, line: 61, type: !18)
!1412 = !DILocation(line: 61, column: 44, scope: !1407)
!1413 = !DILocation(line: 61, column: 48, scope: !1407)
!1414 = !DILocation(line: 61, column: 54, scope: !1407)
!1415 = !DILocalVariable(name: "n", scope: !1407, file: !85, line: 62, type: !16)
!1416 = !DILocation(line: 62, column: 22, scope: !1407)
!1417 = !DILocation(line: 62, column: 26, scope: !1407)
!1418 = !DILocation(line: 62, column: 32, scope: !1407)
!1419 = !DILocation(line: 63, column: 13, scope: !1407)
!1420 = distinct !{!1420, !1419}
!1421 = !DILocation(line: 64, column: 26, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1407, file: !85, line: 63, column: 16)
!1423 = !DILocation(line: 64, column: 24, scope: !1422)
!1424 = !DILocation(line: 64, column: 19, scope: !1422)
!1425 = !DILocation(line: 64, column: 22, scope: !1422)
!1426 = !DILocation(line: 65, column: 13, scope: !1422)
!1427 = !DILocation(line: 65, column: 22, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1407, file: !85, discriminator: 1)
!1429 = !DILocation(line: 65, column: 13, scope: !1428)
!1430 = !DILocation(line: 66, column: 9, scope: !1407)
!1431 = !DILocation(line: 67, column: 21, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1403, file: !85, line: 67, column: 13)
!1433 = !DILocation(line: 67, column: 28, scope: !1432)
!1434 = !DILocation(line: 67, column: 35, scope: !1432)
!1435 = !DILocation(line: 67, column: 40, scope: !1432)
!1436 = !DILocation(line: 67, column: 46, scope: !1432)
!1437 = !DILocation(line: 67, column: 38, scope: !1432)
!1438 = !DILocation(line: 68, column: 21, scope: !1432)
!1439 = !DILocation(line: 68, column: 28, scope: !1432)
!1440 = !DILocation(line: 68, column: 35, scope: !1432)
!1441 = !DILocation(line: 68, column: 41, scope: !1432)
!1442 = !DILocation(line: 68, column: 33, scope: !1432)
!1443 = !DILocation(line: 67, column: 13, scope: !1432)
!1444 = !DILocation(line: 68, column: 57, scope: !1432)
!1445 = !DILocation(line: 67, column: 13, scope: !1403)
!1446 = !DILocation(line: 69, column: 13, scope: !1432)
!1447 = !DILocation(line: 70, column: 27, scope: !1403)
!1448 = !DILocation(line: 70, column: 9, scope: !1403)
!1449 = !DILocation(line: 70, column: 15, scope: !1403)
!1450 = !DILocation(line: 70, column: 24, scope: !1403)
!1451 = !DILocation(line: 71, column: 25, scope: !1403)
!1452 = !DILocation(line: 71, column: 32, scope: !1403)
!1453 = !DILocation(line: 71, column: 9, scope: !1403)
!1454 = !DILocation(line: 71, column: 15, scope: !1403)
!1455 = !DILocation(line: 71, column: 23, scope: !1403)
!1456 = !DILocation(line: 72, column: 5, scope: !1403)
!1457 = !DILocation(line: 73, column: 5, scope: !1376)
!1458 = !DILocation(line: 74, column: 1, scope: !1376)
