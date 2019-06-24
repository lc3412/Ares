; ModuleID = './[inter]third-party--bzip2-1.0.6--huffman.o.i'
source_filename = "./[inter]third-party--bzip2-1.0.6--huffman.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @BZ2_hbMakeCodeLengths(i8*, i32*, i32, i32) #0 !dbg !10 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca [260 x i32], align 16
  %18 = alloca [516 x i32], align 16
  %19 = alloca [516 x i32], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !19, metadata !20), !dbg !21
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !22, metadata !20), !dbg !23
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !24, metadata !20), !dbg !25
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !26, metadata !20), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %9, metadata !28, metadata !20), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %10, metadata !30, metadata !20), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %11, metadata !32, metadata !20), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %12, metadata !34, metadata !20), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %13, metadata !36, metadata !20), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %14, metadata !38, metadata !20), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %15, metadata !40, metadata !20), !dbg !41
  call void @llvm.dbg.declare(metadata i8* %16, metadata !42, metadata !20), !dbg !43
  call void @llvm.dbg.declare(metadata [260 x i32]* %17, metadata !44, metadata !20), !dbg !48
  call void @llvm.dbg.declare(metadata [516 x i32]* %18, metadata !49, metadata !20), !dbg !53
  call void @llvm.dbg.declare(metadata [516 x i32]* %19, metadata !54, metadata !20), !dbg !55
  store i32 0, i32* %13, align 4, !dbg !56
  br label %30, !dbg !58

; <label>:30:                                     ; preds = %55, %4
  %31 = load i32, i32* %13, align 4, !dbg !59
  %32 = load i32, i32* %7, align 4, !dbg !62
  %33 = icmp slt i32 %31, %32, !dbg !63
  br i1 %33, label %34, label %58, !dbg !64

; <label>:34:                                     ; preds = %30
  %35 = load i32, i32* %13, align 4, !dbg !65
  %36 = sext i32 %35 to i64, !dbg !66
  %37 = load i32*, i32** %6, align 8, !dbg !66
  %38 = getelementptr inbounds i32, i32* %37, i64 %36, !dbg !66
  %39 = load i32, i32* %38, align 4, !dbg !66
  %40 = icmp eq i32 %39, 0, !dbg !67
  br i1 %40, label %41, label %42, !dbg !66

; <label>:41:                                     ; preds = %34
  br label %48, !dbg !68

; <label>:42:                                     ; preds = %34
  %43 = load i32, i32* %13, align 4, !dbg !69
  %44 = sext i32 %43 to i64, !dbg !71
  %45 = load i32*, i32** %6, align 8, !dbg !71
  %46 = getelementptr inbounds i32, i32* %45, i64 %44, !dbg !71
  %47 = load i32, i32* %46, align 4, !dbg !71
  br label %48, !dbg !72

; <label>:48:                                     ; preds = %42, %41
  %49 = phi i32 [ 1, %41 ], [ %47, %42 ], !dbg !73
  %50 = shl i32 %49, 8, !dbg !75
  %51 = load i32, i32* %13, align 4, !dbg !76
  %52 = add nsw i32 %51, 1, !dbg !77
  %53 = sext i32 %52 to i64, !dbg !78
  %54 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %53, !dbg !78
  store i32 %50, i32* %54, align 4, !dbg !79
  br label %55, !dbg !78

; <label>:55:                                     ; preds = %48
  %56 = load i32, i32* %13, align 4, !dbg !80
  %57 = add nsw i32 %56, 1, !dbg !80
  store i32 %57, i32* %13, align 4, !dbg !80
  br label %30, !dbg !81, !llvm.loop !82

; <label>:58:                                     ; preds = %30
  br label %59, !dbg !84

; <label>:59:                                     ; preds = %58, %429
  %60 = load i32, i32* %7, align 4, !dbg !85
  store i32 %60, i32* %9, align 4, !dbg !87
  store i32 0, i32* %10, align 4, !dbg !88
  %61 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 0, !dbg !89
  store i32 0, i32* %61, align 16, !dbg !90
  %62 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 0, !dbg !91
  store i32 0, i32* %62, align 16, !dbg !92
  %63 = getelementptr inbounds [516 x i32], [516 x i32]* %19, i64 0, i64 0, !dbg !93
  store i32 -2, i32* %63, align 16, !dbg !94
  store i32 1, i32* %13, align 4, !dbg !95
  br label %64, !dbg !97

; <label>:64:                                     ; preds = %113, %59
  %65 = load i32, i32* %13, align 4, !dbg !98
  %66 = load i32, i32* %7, align 4, !dbg !101
  %67 = icmp sle i32 %65, %66, !dbg !102
  br i1 %67, label %68, label %116, !dbg !103

; <label>:68:                                     ; preds = %64
  %69 = load i32, i32* %13, align 4, !dbg !104
  %70 = sext i32 %69 to i64, !dbg !106
  %71 = getelementptr inbounds [516 x i32], [516 x i32]* %19, i64 0, i64 %70, !dbg !106
  store i32 -1, i32* %71, align 4, !dbg !107
  %72 = load i32, i32* %10, align 4, !dbg !108
  %73 = add nsw i32 %72, 1, !dbg !108
  store i32 %73, i32* %10, align 4, !dbg !108
  %74 = load i32, i32* %13, align 4, !dbg !109
  %75 = load i32, i32* %10, align 4, !dbg !110
  %76 = sext i32 %75 to i64, !dbg !111
  %77 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %76, !dbg !111
  store i32 %74, i32* %77, align 4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %20, metadata !113, metadata !20), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %21, metadata !116, metadata !20), !dbg !117
  %78 = load i32, i32* %10, align 4, !dbg !118
  store i32 %78, i32* %20, align 4, !dbg !119
  %79 = load i32, i32* %20, align 4, !dbg !120
  %80 = sext i32 %79 to i64, !dbg !121
  %81 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %80, !dbg !121
  %82 = load i32, i32* %81, align 4, !dbg !121
  store i32 %82, i32* %21, align 4, !dbg !122
  br label %83, !dbg !123

; <label>:83:                                     ; preds = %97, %68
  %84 = load i32, i32* %21, align 4, !dbg !124
  %85 = sext i32 %84 to i64, !dbg !126
  %86 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %85, !dbg !126
  %87 = load i32, i32* %86, align 4, !dbg !126
  %88 = load i32, i32* %20, align 4, !dbg !127
  %89 = ashr i32 %88, 1, !dbg !128
  %90 = sext i32 %89 to i64, !dbg !129
  %91 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %90, !dbg !129
  %92 = load i32, i32* %91, align 4, !dbg !129
  %93 = sext i32 %92 to i64, !dbg !130
  %94 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %93, !dbg !130
  %95 = load i32, i32* %94, align 4, !dbg !130
  %96 = icmp slt i32 %87, %95, !dbg !131
  br i1 %96, label %97, label %108, !dbg !132

; <label>:97:                                     ; preds = %83
  %98 = load i32, i32* %20, align 4, !dbg !133
  %99 = ashr i32 %98, 1, !dbg !136
  %100 = sext i32 %99 to i64, !dbg !137
  %101 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %100, !dbg !137
  %102 = load i32, i32* %101, align 4, !dbg !137
  %103 = load i32, i32* %20, align 4, !dbg !138
  %104 = sext i32 %103 to i64, !dbg !139
  %105 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %104, !dbg !139
  store i32 %102, i32* %105, align 4, !dbg !140
  %106 = load i32, i32* %20, align 4, !dbg !141
  %107 = ashr i32 %106, 1, !dbg !141
  store i32 %107, i32* %20, align 4, !dbg !141
  br label %83, !dbg !142, !llvm.loop !143

; <label>:108:                                    ; preds = %83
  %109 = load i32, i32* %21, align 4, !dbg !144
  %110 = load i32, i32* %20, align 4, !dbg !146
  %111 = sext i32 %110 to i64, !dbg !147
  %112 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %111, !dbg !147
  store i32 %109, i32* %112, align 4, !dbg !148
  br label %113, !dbg !149

; <label>:113:                                    ; preds = %108
  %114 = load i32, i32* %13, align 4, !dbg !150
  %115 = add nsw i32 %114, 1, !dbg !150
  store i32 %115, i32* %13, align 4, !dbg !150
  br label %64, !dbg !152, !llvm.loop !153

; <label>:116:                                    ; preds = %64
  %117 = load i32, i32* %10, align 4, !dbg !155
  %118 = icmp slt i32 %117, 260, !dbg !158
  br i1 %118, label %120, label %119, !dbg !159

; <label>:119:                                    ; preds = %116
  call void @BZ2_bz__AssertH__fail(i32 2001), !dbg !160
  br label %120, !dbg !160

; <label>:120:                                    ; preds = %119, %116
  br label %121, !dbg !162

; <label>:121:                                    ; preds = %358, %120
  %122 = load i32, i32* %10, align 4, !dbg !163
  %123 = icmp sgt i32 %122, 1, !dbg !165
  br i1 %123, label %124, label %363, !dbg !166

; <label>:124:                                    ; preds = %121
  %125 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 1, !dbg !167
  %126 = load i32, i32* %125, align 4, !dbg !167
  store i32 %126, i32* %11, align 4, !dbg !169
  %127 = load i32, i32* %10, align 4, !dbg !170
  %128 = sext i32 %127 to i64, !dbg !171
  %129 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %128, !dbg !171
  %130 = load i32, i32* %129, align 4, !dbg !171
  %131 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 1, !dbg !172
  store i32 %130, i32* %131, align 4, !dbg !173
  %132 = load i32, i32* %10, align 4, !dbg !174
  %133 = add nsw i32 %132, -1, !dbg !174
  store i32 %133, i32* %10, align 4, !dbg !174
  call void @llvm.dbg.declare(metadata i32* %22, metadata !175, metadata !20), !dbg !177
  call void @llvm.dbg.declare(metadata i32* %23, metadata !178, metadata !20), !dbg !179
  call void @llvm.dbg.declare(metadata i32* %24, metadata !180, metadata !20), !dbg !181
  store i32 1, i32* %22, align 4, !dbg !182
  %134 = load i32, i32* %22, align 4, !dbg !183
  %135 = sext i32 %134 to i64, !dbg !184
  %136 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %135, !dbg !184
  %137 = load i32, i32* %136, align 4, !dbg !184
  store i32 %137, i32* %24, align 4, !dbg !185
  br label %138, !dbg !186

; <label>:138:                                    ; preds = %124, %183
  %139 = load i32, i32* %22, align 4, !dbg !187
  %140 = shl i32 %139, 1, !dbg !190
  store i32 %140, i32* %23, align 4, !dbg !191
  %141 = load i32, i32* %23, align 4, !dbg !192
  %142 = load i32, i32* %10, align 4, !dbg !193
  %143 = icmp sgt i32 %141, %142, !dbg !194
  br i1 %143, label %144, label %145, !dbg !192

; <label>:144:                                    ; preds = %138
  br label %192, !dbg !195

; <label>:145:                                    ; preds = %138
  %146 = load i32, i32* %23, align 4, !dbg !198
  %147 = load i32, i32* %10, align 4, !dbg !201
  %148 = icmp slt i32 %146, %147, !dbg !202
  br i1 %148, label %149, label %169, !dbg !203

; <label>:149:                                    ; preds = %145
  %150 = load i32, i32* %23, align 4, !dbg !204
  %151 = add nsw i32 %150, 1, !dbg !206
  %152 = sext i32 %151 to i64, !dbg !207
  %153 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %152, !dbg !207
  %154 = load i32, i32* %153, align 4, !dbg !207
  %155 = sext i32 %154 to i64, !dbg !208
  %156 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %155, !dbg !208
  %157 = load i32, i32* %156, align 4, !dbg !208
  %158 = load i32, i32* %23, align 4, !dbg !209
  %159 = sext i32 %158 to i64, !dbg !210
  %160 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %159, !dbg !210
  %161 = load i32, i32* %160, align 4, !dbg !210
  %162 = sext i32 %161 to i64, !dbg !211
  %163 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %162, !dbg !211
  %164 = load i32, i32* %163, align 4, !dbg !211
  %165 = icmp slt i32 %157, %164, !dbg !212
  br i1 %165, label %166, label %169, !dbg !213

; <label>:166:                                    ; preds = %149
  %167 = load i32, i32* %23, align 4, !dbg !214
  %168 = add nsw i32 %167, 1, !dbg !214
  store i32 %168, i32* %23, align 4, !dbg !214
  br label %169, !dbg !216

; <label>:169:                                    ; preds = %166, %149, %145
  %170 = load i32, i32* %24, align 4, !dbg !217
  %171 = sext i32 %170 to i64, !dbg !220
  %172 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %171, !dbg !220
  %173 = load i32, i32* %172, align 4, !dbg !220
  %174 = load i32, i32* %23, align 4, !dbg !221
  %175 = sext i32 %174 to i64, !dbg !222
  %176 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %175, !dbg !222
  %177 = load i32, i32* %176, align 4, !dbg !222
  %178 = sext i32 %177 to i64, !dbg !223
  %179 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %178, !dbg !223
  %180 = load i32, i32* %179, align 4, !dbg !223
  %181 = icmp slt i32 %173, %180, !dbg !224
  br i1 %181, label %182, label %183, !dbg !220

; <label>:182:                                    ; preds = %169
  br label %192, !dbg !225

; <label>:183:                                    ; preds = %169
  %184 = load i32, i32* %23, align 4, !dbg !227
  %185 = sext i32 %184 to i64, !dbg !229
  %186 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %185, !dbg !229
  %187 = load i32, i32* %186, align 4, !dbg !229
  %188 = load i32, i32* %22, align 4, !dbg !230
  %189 = sext i32 %188 to i64, !dbg !231
  %190 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %189, !dbg !231
  store i32 %187, i32* %190, align 4, !dbg !232
  %191 = load i32, i32* %23, align 4, !dbg !233
  store i32 %191, i32* %22, align 4, !dbg !234
  br label %138, !dbg !235, !llvm.loop !236

; <label>:192:                                    ; preds = %182, %144
  %193 = load i32, i32* %24, align 4, !dbg !237
  %194 = load i32, i32* %22, align 4, !dbg !239
  %195 = sext i32 %194 to i64, !dbg !240
  %196 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %195, !dbg !240
  store i32 %193, i32* %196, align 4, !dbg !241
  %197 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 1, !dbg !242
  %198 = load i32, i32* %197, align 4, !dbg !242
  store i32 %198, i32* %12, align 4, !dbg !243
  %199 = load i32, i32* %10, align 4, !dbg !244
  %200 = sext i32 %199 to i64, !dbg !245
  %201 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %200, !dbg !245
  %202 = load i32, i32* %201, align 4, !dbg !245
  %203 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 1, !dbg !246
  store i32 %202, i32* %203, align 4, !dbg !247
  %204 = load i32, i32* %10, align 4, !dbg !248
  %205 = add nsw i32 %204, -1, !dbg !248
  store i32 %205, i32* %10, align 4, !dbg !248
  call void @llvm.dbg.declare(metadata i32* %25, metadata !249, metadata !20), !dbg !251
  call void @llvm.dbg.declare(metadata i32* %26, metadata !252, metadata !20), !dbg !253
  call void @llvm.dbg.declare(metadata i32* %27, metadata !254, metadata !20), !dbg !255
  store i32 1, i32* %25, align 4, !dbg !256
  %206 = load i32, i32* %25, align 4, !dbg !257
  %207 = sext i32 %206 to i64, !dbg !258
  %208 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %207, !dbg !258
  %209 = load i32, i32* %208, align 4, !dbg !258
  store i32 %209, i32* %27, align 4, !dbg !259
  br label %210, !dbg !260

; <label>:210:                                    ; preds = %192, %255
  %211 = load i32, i32* %25, align 4, !dbg !261
  %212 = shl i32 %211, 1, !dbg !264
  store i32 %212, i32* %26, align 4, !dbg !265
  %213 = load i32, i32* %26, align 4, !dbg !266
  %214 = load i32, i32* %10, align 4, !dbg !267
  %215 = icmp sgt i32 %213, %214, !dbg !268
  br i1 %215, label %216, label %217, !dbg !266

; <label>:216:                                    ; preds = %210
  br label %264, !dbg !269

; <label>:217:                                    ; preds = %210
  %218 = load i32, i32* %26, align 4, !dbg !272
  %219 = load i32, i32* %10, align 4, !dbg !275
  %220 = icmp slt i32 %218, %219, !dbg !276
  br i1 %220, label %221, label %241, !dbg !277

; <label>:221:                                    ; preds = %217
  %222 = load i32, i32* %26, align 4, !dbg !278
  %223 = add nsw i32 %222, 1, !dbg !280
  %224 = sext i32 %223 to i64, !dbg !281
  %225 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %224, !dbg !281
  %226 = load i32, i32* %225, align 4, !dbg !281
  %227 = sext i32 %226 to i64, !dbg !282
  %228 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %227, !dbg !282
  %229 = load i32, i32* %228, align 4, !dbg !282
  %230 = load i32, i32* %26, align 4, !dbg !283
  %231 = sext i32 %230 to i64, !dbg !284
  %232 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %231, !dbg !284
  %233 = load i32, i32* %232, align 4, !dbg !284
  %234 = sext i32 %233 to i64, !dbg !285
  %235 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %234, !dbg !285
  %236 = load i32, i32* %235, align 4, !dbg !285
  %237 = icmp slt i32 %229, %236, !dbg !286
  br i1 %237, label %238, label %241, !dbg !287

; <label>:238:                                    ; preds = %221
  %239 = load i32, i32* %26, align 4, !dbg !288
  %240 = add nsw i32 %239, 1, !dbg !288
  store i32 %240, i32* %26, align 4, !dbg !288
  br label %241, !dbg !290

; <label>:241:                                    ; preds = %238, %221, %217
  %242 = load i32, i32* %27, align 4, !dbg !291
  %243 = sext i32 %242 to i64, !dbg !294
  %244 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %243, !dbg !294
  %245 = load i32, i32* %244, align 4, !dbg !294
  %246 = load i32, i32* %26, align 4, !dbg !295
  %247 = sext i32 %246 to i64, !dbg !296
  %248 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %247, !dbg !296
  %249 = load i32, i32* %248, align 4, !dbg !296
  %250 = sext i32 %249 to i64, !dbg !297
  %251 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %250, !dbg !297
  %252 = load i32, i32* %251, align 4, !dbg !297
  %253 = icmp slt i32 %245, %252, !dbg !298
  br i1 %253, label %254, label %255, !dbg !294

; <label>:254:                                    ; preds = %241
  br label %264, !dbg !299

; <label>:255:                                    ; preds = %241
  %256 = load i32, i32* %26, align 4, !dbg !301
  %257 = sext i32 %256 to i64, !dbg !303
  %258 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %257, !dbg !303
  %259 = load i32, i32* %258, align 4, !dbg !303
  %260 = load i32, i32* %25, align 4, !dbg !304
  %261 = sext i32 %260 to i64, !dbg !305
  %262 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %261, !dbg !305
  store i32 %259, i32* %262, align 4, !dbg !306
  %263 = load i32, i32* %26, align 4, !dbg !307
  store i32 %263, i32* %25, align 4, !dbg !308
  br label %210, !dbg !309, !llvm.loop !310

; <label>:264:                                    ; preds = %254, %216
  %265 = load i32, i32* %27, align 4, !dbg !311
  %266 = load i32, i32* %25, align 4, !dbg !313
  %267 = sext i32 %266 to i64, !dbg !314
  %268 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %267, !dbg !314
  store i32 %265, i32* %268, align 4, !dbg !315
  %269 = load i32, i32* %9, align 4, !dbg !316
  %270 = add nsw i32 %269, 1, !dbg !316
  store i32 %270, i32* %9, align 4, !dbg !316
  %271 = load i32, i32* %9, align 4, !dbg !317
  %272 = load i32, i32* %12, align 4, !dbg !318
  %273 = sext i32 %272 to i64, !dbg !319
  %274 = getelementptr inbounds [516 x i32], [516 x i32]* %19, i64 0, i64 %273, !dbg !319
  store i32 %271, i32* %274, align 4, !dbg !320
  %275 = load i32, i32* %11, align 4, !dbg !321
  %276 = sext i32 %275 to i64, !dbg !322
  %277 = getelementptr inbounds [516 x i32], [516 x i32]* %19, i64 0, i64 %276, !dbg !322
  store i32 %271, i32* %277, align 4, !dbg !323
  %278 = load i32, i32* %11, align 4, !dbg !324
  %279 = sext i32 %278 to i64, !dbg !325
  %280 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %279, !dbg !325
  %281 = load i32, i32* %280, align 4, !dbg !325
  %282 = and i32 %281, -256, !dbg !326
  %283 = load i32, i32* %12, align 4, !dbg !327
  %284 = sext i32 %283 to i64, !dbg !328
  %285 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %284, !dbg !328
  %286 = load i32, i32* %285, align 4, !dbg !328
  %287 = and i32 %286, -256, !dbg !329
  %288 = add i32 %282, %287, !dbg !330
  %289 = load i32, i32* %11, align 4, !dbg !331
  %290 = sext i32 %289 to i64, !dbg !332
  %291 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %290, !dbg !332
  %292 = load i32, i32* %291, align 4, !dbg !332
  %293 = and i32 %292, 255, !dbg !333
  %294 = load i32, i32* %12, align 4, !dbg !334
  %295 = sext i32 %294 to i64, !dbg !335
  %296 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %295, !dbg !335
  %297 = load i32, i32* %296, align 4, !dbg !335
  %298 = and i32 %297, 255, !dbg !336
  %299 = icmp sgt i32 %293, %298, !dbg !337
  br i1 %299, label %300, label %306, !dbg !338

; <label>:300:                                    ; preds = %264
  %301 = load i32, i32* %11, align 4, !dbg !339
  %302 = sext i32 %301 to i64, !dbg !341
  %303 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %302, !dbg !341
  %304 = load i32, i32* %303, align 4, !dbg !341
  %305 = and i32 %304, 255, !dbg !342
  br label %312, !dbg !343

; <label>:306:                                    ; preds = %264
  %307 = load i32, i32* %12, align 4, !dbg !344
  %308 = sext i32 %307 to i64, !dbg !346
  %309 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %308, !dbg !346
  %310 = load i32, i32* %309, align 4, !dbg !346
  %311 = and i32 %310, 255, !dbg !347
  br label %312, !dbg !348

; <label>:312:                                    ; preds = %306, %300
  %313 = phi i32 [ %305, %300 ], [ %311, %306 ], !dbg !349
  %314 = add nsw i32 1, %313, !dbg !351
  %315 = or i32 %288, %314, !dbg !352
  %316 = load i32, i32* %9, align 4, !dbg !353
  %317 = sext i32 %316 to i64, !dbg !354
  %318 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %317, !dbg !354
  store i32 %315, i32* %318, align 4, !dbg !355
  %319 = load i32, i32* %9, align 4, !dbg !356
  %320 = sext i32 %319 to i64, !dbg !357
  %321 = getelementptr inbounds [516 x i32], [516 x i32]* %19, i64 0, i64 %320, !dbg !357
  store i32 -1, i32* %321, align 4, !dbg !358
  %322 = load i32, i32* %10, align 4, !dbg !359
  %323 = add nsw i32 %322, 1, !dbg !359
  store i32 %323, i32* %10, align 4, !dbg !359
  %324 = load i32, i32* %9, align 4, !dbg !360
  %325 = load i32, i32* %10, align 4, !dbg !361
  %326 = sext i32 %325 to i64, !dbg !362
  %327 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %326, !dbg !362
  store i32 %324, i32* %327, align 4, !dbg !363
  call void @llvm.dbg.declare(metadata i32* %28, metadata !364, metadata !20), !dbg !366
  call void @llvm.dbg.declare(metadata i32* %29, metadata !367, metadata !20), !dbg !368
  %328 = load i32, i32* %10, align 4, !dbg !369
  store i32 %328, i32* %28, align 4, !dbg !370
  %329 = load i32, i32* %28, align 4, !dbg !371
  %330 = sext i32 %329 to i64, !dbg !372
  %331 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %330, !dbg !372
  %332 = load i32, i32* %331, align 4, !dbg !372
  store i32 %332, i32* %29, align 4, !dbg !373
  br label %333, !dbg !374

; <label>:333:                                    ; preds = %347, %312
  %334 = load i32, i32* %29, align 4, !dbg !375
  %335 = sext i32 %334 to i64, !dbg !377
  %336 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %335, !dbg !377
  %337 = load i32, i32* %336, align 4, !dbg !377
  %338 = load i32, i32* %28, align 4, !dbg !378
  %339 = ashr i32 %338, 1, !dbg !379
  %340 = sext i32 %339 to i64, !dbg !380
  %341 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %340, !dbg !380
  %342 = load i32, i32* %341, align 4, !dbg !380
  %343 = sext i32 %342 to i64, !dbg !381
  %344 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %343, !dbg !381
  %345 = load i32, i32* %344, align 4, !dbg !381
  %346 = icmp slt i32 %337, %345, !dbg !382
  br i1 %346, label %347, label %358, !dbg !383

; <label>:347:                                    ; preds = %333
  %348 = load i32, i32* %28, align 4, !dbg !384
  %349 = ashr i32 %348, 1, !dbg !387
  %350 = sext i32 %349 to i64, !dbg !388
  %351 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %350, !dbg !388
  %352 = load i32, i32* %351, align 4, !dbg !388
  %353 = load i32, i32* %28, align 4, !dbg !389
  %354 = sext i32 %353 to i64, !dbg !390
  %355 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %354, !dbg !390
  store i32 %352, i32* %355, align 4, !dbg !391
  %356 = load i32, i32* %28, align 4, !dbg !392
  %357 = ashr i32 %356, 1, !dbg !392
  store i32 %357, i32* %28, align 4, !dbg !392
  br label %333, !dbg !393, !llvm.loop !394

; <label>:358:                                    ; preds = %333
  %359 = load i32, i32* %29, align 4, !dbg !395
  %360 = load i32, i32* %28, align 4, !dbg !397
  %361 = sext i32 %360 to i64, !dbg !398
  %362 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %361, !dbg !398
  store i32 %359, i32* %362, align 4, !dbg !399
  br label %121, !dbg !400, !llvm.loop !402

; <label>:363:                                    ; preds = %121
  %364 = load i32, i32* %9, align 4, !dbg !403
  %365 = icmp slt i32 %364, 516, !dbg !406
  br i1 %365, label %367, label %366, !dbg !407

; <label>:366:                                    ; preds = %363
  call void @BZ2_bz__AssertH__fail(i32 2002), !dbg !408
  br label %367, !dbg !408

; <label>:367:                                    ; preds = %366, %363
  store i8 0, i8* %16, align 1, !dbg !410
  store i32 1, i32* %13, align 4, !dbg !411
  br label %368, !dbg !413

; <label>:368:                                    ; preds = %400, %367
  %369 = load i32, i32* %13, align 4, !dbg !414
  %370 = load i32, i32* %7, align 4, !dbg !417
  %371 = icmp sle i32 %369, %370, !dbg !418
  br i1 %371, label %372, label %403, !dbg !419

; <label>:372:                                    ; preds = %368
  store i32 0, i32* %14, align 4, !dbg !420
  %373 = load i32, i32* %13, align 4, !dbg !422
  store i32 %373, i32* %15, align 4, !dbg !423
  br label %374, !dbg !424

; <label>:374:                                    ; preds = %380, %372
  %375 = load i32, i32* %15, align 4, !dbg !425
  %376 = sext i32 %375 to i64, !dbg !427
  %377 = getelementptr inbounds [516 x i32], [516 x i32]* %19, i64 0, i64 %376, !dbg !427
  %378 = load i32, i32* %377, align 4, !dbg !427
  %379 = icmp sge i32 %378, 0, !dbg !428
  br i1 %379, label %380, label %387, !dbg !429

; <label>:380:                                    ; preds = %374
  %381 = load i32, i32* %15, align 4, !dbg !430
  %382 = sext i32 %381 to i64, !dbg !433
  %383 = getelementptr inbounds [516 x i32], [516 x i32]* %19, i64 0, i64 %382, !dbg !433
  %384 = load i32, i32* %383, align 4, !dbg !433
  store i32 %384, i32* %15, align 4, !dbg !434
  %385 = load i32, i32* %14, align 4, !dbg !435
  %386 = add nsw i32 %385, 1, !dbg !435
  store i32 %386, i32* %14, align 4, !dbg !435
  br label %374, !dbg !436, !llvm.loop !437

; <label>:387:                                    ; preds = %374
  %388 = load i32, i32* %14, align 4, !dbg !438
  %389 = trunc i32 %388 to i8, !dbg !438
  %390 = load i32, i32* %13, align 4, !dbg !439
  %391 = sub nsw i32 %390, 1, !dbg !440
  %392 = sext i32 %391 to i64, !dbg !441
  %393 = load i8*, i8** %5, align 8, !dbg !441
  %394 = getelementptr inbounds i8, i8* %393, i64 %392, !dbg !441
  store i8 %389, i8* %394, align 1, !dbg !442
  %395 = load i32, i32* %14, align 4, !dbg !443
  %396 = load i32, i32* %8, align 4, !dbg !445
  %397 = icmp sgt i32 %395, %396, !dbg !446
  br i1 %397, label %398, label %399, !dbg !447

; <label>:398:                                    ; preds = %387
  store i8 1, i8* %16, align 1, !dbg !448
  br label %399, !dbg !450

; <label>:399:                                    ; preds = %398, %387
  br label %400, !dbg !451

; <label>:400:                                    ; preds = %399
  %401 = load i32, i32* %13, align 4, !dbg !452
  %402 = add nsw i32 %401, 1, !dbg !452
  store i32 %402, i32* %13, align 4, !dbg !452
  br label %368, !dbg !454, !llvm.loop !455

; <label>:403:                                    ; preds = %368
  %404 = load i8, i8* %16, align 1, !dbg !457
  %405 = icmp ne i8 %404, 0, !dbg !457
  br i1 %405, label %407, label %406, !dbg !459

; <label>:406:                                    ; preds = %403
  br label %430, !dbg !460

; <label>:407:                                    ; preds = %403
  store i32 1, i32* %13, align 4, !dbg !462
  br label %408, !dbg !464

; <label>:408:                                    ; preds = %426, %407
  %409 = load i32, i32* %13, align 4, !dbg !465
  %410 = load i32, i32* %7, align 4, !dbg !468
  %411 = icmp sle i32 %409, %410, !dbg !469
  br i1 %411, label %412, label %429, !dbg !470

; <label>:412:                                    ; preds = %408
  %413 = load i32, i32* %13, align 4, !dbg !471
  %414 = sext i32 %413 to i64, !dbg !473
  %415 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %414, !dbg !473
  %416 = load i32, i32* %415, align 4, !dbg !473
  %417 = ashr i32 %416, 8, !dbg !474
  store i32 %417, i32* %14, align 4, !dbg !475
  %418 = load i32, i32* %14, align 4, !dbg !476
  %419 = sdiv i32 %418, 2, !dbg !477
  %420 = add nsw i32 1, %419, !dbg !478
  store i32 %420, i32* %14, align 4, !dbg !479
  %421 = load i32, i32* %14, align 4, !dbg !480
  %422 = shl i32 %421, 8, !dbg !481
  %423 = load i32, i32* %13, align 4, !dbg !482
  %424 = sext i32 %423 to i64, !dbg !483
  %425 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %424, !dbg !483
  store i32 %422, i32* %425, align 4, !dbg !484
  br label %426, !dbg !485

; <label>:426:                                    ; preds = %412
  %427 = load i32, i32* %13, align 4, !dbg !486
  %428 = add nsw i32 %427, 1, !dbg !486
  store i32 %428, i32* %13, align 4, !dbg !486
  br label %408, !dbg !488, !llvm.loop !489

; <label>:429:                                    ; preds = %408
  br label %59, !dbg !491, !llvm.loop !493

; <label>:430:                                    ; preds = %406
  ret void, !dbg !494
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @BZ2_bz__AssertH__fail(i32) #2

; Function Attrs: nounwind uwtable
define void @BZ2_hbAssignCodes(i32*, i8*, i32, i32, i32) #0 !dbg !495 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !498, metadata !20), !dbg !499
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !500, metadata !20), !dbg !501
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !502, metadata !20), !dbg !503
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !504, metadata !20), !dbg !505
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !506, metadata !20), !dbg !507
  call void @llvm.dbg.declare(metadata i32* %11, metadata !508, metadata !20), !dbg !509
  call void @llvm.dbg.declare(metadata i32* %12, metadata !510, metadata !20), !dbg !511
  call void @llvm.dbg.declare(metadata i32* %13, metadata !512, metadata !20), !dbg !513
  store i32 0, i32* %12, align 4, !dbg !514
  %14 = load i32, i32* %8, align 4, !dbg !515
  store i32 %14, i32* %11, align 4, !dbg !517
  br label %15, !dbg !518

; <label>:15:                                     ; preds = %48, %5
  %16 = load i32, i32* %11, align 4, !dbg !519
  %17 = load i32, i32* %9, align 4, !dbg !522
  %18 = icmp sle i32 %16, %17, !dbg !523
  br i1 %18, label %19, label %51, !dbg !524

; <label>:19:                                     ; preds = %15
  store i32 0, i32* %13, align 4, !dbg !525
  br label %20, !dbg !528

; <label>:20:                                     ; preds = %42, %19
  %21 = load i32, i32* %13, align 4, !dbg !529
  %22 = load i32, i32* %10, align 4, !dbg !532
  %23 = icmp slt i32 %21, %22, !dbg !533
  br i1 %23, label %24, label %45, !dbg !534

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %13, align 4, !dbg !535
  %26 = sext i32 %25 to i64, !dbg !537
  %27 = load i8*, i8** %7, align 8, !dbg !537
  %28 = getelementptr inbounds i8, i8* %27, i64 %26, !dbg !537
  %29 = load i8, i8* %28, align 1, !dbg !537
  %30 = zext i8 %29 to i32, !dbg !537
  %31 = load i32, i32* %11, align 4, !dbg !538
  %32 = icmp eq i32 %30, %31, !dbg !539
  br i1 %32, label %33, label %41, !dbg !540

; <label>:33:                                     ; preds = %24
  %34 = load i32, i32* %12, align 4, !dbg !541
  %35 = load i32, i32* %13, align 4, !dbg !544
  %36 = sext i32 %35 to i64, !dbg !545
  %37 = load i32*, i32** %6, align 8, !dbg !545
  %38 = getelementptr inbounds i32, i32* %37, i64 %36, !dbg !545
  store i32 %34, i32* %38, align 4, !dbg !546
  %39 = load i32, i32* %12, align 4, !dbg !547
  %40 = add nsw i32 %39, 1, !dbg !547
  store i32 %40, i32* %12, align 4, !dbg !547
  br label %41, !dbg !548

; <label>:41:                                     ; preds = %33, %24
  br label %42, !dbg !549

; <label>:42:                                     ; preds = %41
  %43 = load i32, i32* %13, align 4, !dbg !551
  %44 = add nsw i32 %43, 1, !dbg !551
  store i32 %44, i32* %13, align 4, !dbg !551
  br label %20, !dbg !553, !llvm.loop !554

; <label>:45:                                     ; preds = %20
  %46 = load i32, i32* %12, align 4, !dbg !556
  %47 = shl i32 %46, 1, !dbg !556
  store i32 %47, i32* %12, align 4, !dbg !556
  br label %48, !dbg !557

; <label>:48:                                     ; preds = %45
  %49 = load i32, i32* %11, align 4, !dbg !558
  %50 = add nsw i32 %49, 1, !dbg !558
  store i32 %50, i32* %11, align 4, !dbg !558
  br label %15, !dbg !560, !llvm.loop !561

; <label>:51:                                     ; preds = %15
  ret void, !dbg !563
}

; Function Attrs: nounwind uwtable
define void @BZ2_hbCreateDecodeTables(i32*, i32*, i32*, i8*, i32, i32, i32) #0 !dbg !564 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !567, metadata !20), !dbg !568
  store i32* %1, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !569, metadata !20), !dbg !570
  store i32* %2, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !571, metadata !20), !dbg !572
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !573, metadata !20), !dbg !574
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !575, metadata !20), !dbg !576
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !577, metadata !20), !dbg !578
  store i32 %6, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !579, metadata !20), !dbg !580
  call void @llvm.dbg.declare(metadata i32* %15, metadata !581, metadata !20), !dbg !582
  call void @llvm.dbg.declare(metadata i32* %16, metadata !583, metadata !20), !dbg !584
  call void @llvm.dbg.declare(metadata i32* %17, metadata !585, metadata !20), !dbg !586
  call void @llvm.dbg.declare(metadata i32* %18, metadata !587, metadata !20), !dbg !588
  store i32 0, i32* %15, align 4, !dbg !589
  %19 = load i32, i32* %12, align 4, !dbg !590
  store i32 %19, i32* %16, align 4, !dbg !592
  br label %20, !dbg !593

; <label>:20:                                     ; preds = %51, %7
  %21 = load i32, i32* %16, align 4, !dbg !594
  %22 = load i32, i32* %13, align 4, !dbg !597
  %23 = icmp sle i32 %21, %22, !dbg !598
  br i1 %23, label %24, label %54, !dbg !599

; <label>:24:                                     ; preds = %20
  store i32 0, i32* %17, align 4, !dbg !600
  br label %25, !dbg !602

; <label>:25:                                     ; preds = %47, %24
  %26 = load i32, i32* %17, align 4, !dbg !603
  %27 = load i32, i32* %14, align 4, !dbg !606
  %28 = icmp slt i32 %26, %27, !dbg !607
  br i1 %28, label %29, label %50, !dbg !608

; <label>:29:                                     ; preds = %25
  %30 = load i32, i32* %17, align 4, !dbg !609
  %31 = sext i32 %30 to i64, !dbg !611
  %32 = load i8*, i8** %11, align 8, !dbg !611
  %33 = getelementptr inbounds i8, i8* %32, i64 %31, !dbg !611
  %34 = load i8, i8* %33, align 1, !dbg !611
  %35 = zext i8 %34 to i32, !dbg !611
  %36 = load i32, i32* %16, align 4, !dbg !612
  %37 = icmp eq i32 %35, %36, !dbg !613
  br i1 %37, label %38, label %46, !dbg !614

; <label>:38:                                     ; preds = %29
  %39 = load i32, i32* %17, align 4, !dbg !615
  %40 = load i32, i32* %15, align 4, !dbg !618
  %41 = sext i32 %40 to i64, !dbg !619
  %42 = load i32*, i32** %10, align 8, !dbg !619
  %43 = getelementptr inbounds i32, i32* %42, i64 %41, !dbg !619
  store i32 %39, i32* %43, align 4, !dbg !620
  %44 = load i32, i32* %15, align 4, !dbg !621
  %45 = add nsw i32 %44, 1, !dbg !621
  store i32 %45, i32* %15, align 4, !dbg !621
  br label %46, !dbg !622

; <label>:46:                                     ; preds = %38, %29
  br label %47, !dbg !623

; <label>:47:                                     ; preds = %46
  %48 = load i32, i32* %17, align 4, !dbg !625
  %49 = add nsw i32 %48, 1, !dbg !625
  store i32 %49, i32* %17, align 4, !dbg !625
  br label %25, !dbg !627, !llvm.loop !628

; <label>:50:                                     ; preds = %25
  br label %51, !dbg !630

; <label>:51:                                     ; preds = %50
  %52 = load i32, i32* %16, align 4, !dbg !632
  %53 = add nsw i32 %52, 1, !dbg !632
  store i32 %53, i32* %16, align 4, !dbg !632
  br label %20, !dbg !634, !llvm.loop !635

; <label>:54:                                     ; preds = %20
  store i32 0, i32* %16, align 4, !dbg !637
  br label %55, !dbg !639

; <label>:55:                                     ; preds = %63, %54
  %56 = load i32, i32* %16, align 4, !dbg !640
  %57 = icmp slt i32 %56, 23, !dbg !643
  br i1 %57, label %58, label %66, !dbg !644

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* %16, align 4, !dbg !645
  %60 = sext i32 %59 to i64, !dbg !647
  %61 = load i32*, i32** %9, align 8, !dbg !647
  %62 = getelementptr inbounds i32, i32* %61, i64 %60, !dbg !647
  store i32 0, i32* %62, align 4, !dbg !648
  br label %63, !dbg !647

; <label>:63:                                     ; preds = %58
  %64 = load i32, i32* %16, align 4, !dbg !649
  %65 = add nsw i32 %64, 1, !dbg !649
  store i32 %65, i32* %16, align 4, !dbg !649
  br label %55, !dbg !651, !llvm.loop !652

; <label>:66:                                     ; preds = %55
  store i32 0, i32* %16, align 4, !dbg !654
  br label %67, !dbg !656

; <label>:67:                                     ; preds = %84, %66
  %68 = load i32, i32* %16, align 4, !dbg !657
  %69 = load i32, i32* %14, align 4, !dbg !660
  %70 = icmp slt i32 %68, %69, !dbg !661
  br i1 %70, label %71, label %87, !dbg !662

; <label>:71:                                     ; preds = %67
  %72 = load i32, i32* %16, align 4, !dbg !663
  %73 = sext i32 %72 to i64, !dbg !665
  %74 = load i8*, i8** %11, align 8, !dbg !665
  %75 = getelementptr inbounds i8, i8* %74, i64 %73, !dbg !665
  %76 = load i8, i8* %75, align 1, !dbg !665
  %77 = zext i8 %76 to i32, !dbg !665
  %78 = add nsw i32 %77, 1, !dbg !666
  %79 = sext i32 %78 to i64, !dbg !667
  %80 = load i32*, i32** %9, align 8, !dbg !667
  %81 = getelementptr inbounds i32, i32* %80, i64 %79, !dbg !667
  %82 = load i32, i32* %81, align 4, !dbg !668
  %83 = add nsw i32 %82, 1, !dbg !668
  store i32 %83, i32* %81, align 4, !dbg !668
  br label %84, !dbg !667

; <label>:84:                                     ; preds = %71
  %85 = load i32, i32* %16, align 4, !dbg !669
  %86 = add nsw i32 %85, 1, !dbg !669
  store i32 %86, i32* %16, align 4, !dbg !669
  br label %67, !dbg !671, !llvm.loop !672

; <label>:87:                                     ; preds = %67
  store i32 1, i32* %16, align 4, !dbg !674
  br label %88, !dbg !676

; <label>:88:                                     ; preds = %104, %87
  %89 = load i32, i32* %16, align 4, !dbg !677
  %90 = icmp slt i32 %89, 23, !dbg !680
  br i1 %90, label %91, label %107, !dbg !681

; <label>:91:                                     ; preds = %88
  %92 = load i32, i32* %16, align 4, !dbg !682
  %93 = sub nsw i32 %92, 1, !dbg !684
  %94 = sext i32 %93 to i64, !dbg !685
  %95 = load i32*, i32** %9, align 8, !dbg !685
  %96 = getelementptr inbounds i32, i32* %95, i64 %94, !dbg !685
  %97 = load i32, i32* %96, align 4, !dbg !685
  %98 = load i32, i32* %16, align 4, !dbg !686
  %99 = sext i32 %98 to i64, !dbg !687
  %100 = load i32*, i32** %9, align 8, !dbg !687
  %101 = getelementptr inbounds i32, i32* %100, i64 %99, !dbg !687
  %102 = load i32, i32* %101, align 4, !dbg !688
  %103 = add nsw i32 %102, %97, !dbg !688
  store i32 %103, i32* %101, align 4, !dbg !688
  br label %104, !dbg !687

; <label>:104:                                    ; preds = %91
  %105 = load i32, i32* %16, align 4, !dbg !689
  %106 = add nsw i32 %105, 1, !dbg !689
  store i32 %106, i32* %16, align 4, !dbg !689
  br label %88, !dbg !691, !llvm.loop !692

; <label>:107:                                    ; preds = %88
  store i32 0, i32* %16, align 4, !dbg !694
  br label %108, !dbg !696

; <label>:108:                                    ; preds = %116, %107
  %109 = load i32, i32* %16, align 4, !dbg !697
  %110 = icmp slt i32 %109, 23, !dbg !700
  br i1 %110, label %111, label %119, !dbg !701

; <label>:111:                                    ; preds = %108
  %112 = load i32, i32* %16, align 4, !dbg !702
  %113 = sext i32 %112 to i64, !dbg !704
  %114 = load i32*, i32** %8, align 8, !dbg !704
  %115 = getelementptr inbounds i32, i32* %114, i64 %113, !dbg !704
  store i32 0, i32* %115, align 4, !dbg !705
  br label %116, !dbg !704

; <label>:116:                                    ; preds = %111
  %117 = load i32, i32* %16, align 4, !dbg !706
  %118 = add nsw i32 %117, 1, !dbg !706
  store i32 %118, i32* %16, align 4, !dbg !706
  br label %108, !dbg !708, !llvm.loop !709

; <label>:119:                                    ; preds = %108
  store i32 0, i32* %18, align 4, !dbg !711
  %120 = load i32, i32* %12, align 4, !dbg !712
  store i32 %120, i32* %16, align 4, !dbg !714
  br label %121, !dbg !715

; <label>:121:                                    ; preds = %148, %119
  %122 = load i32, i32* %16, align 4, !dbg !716
  %123 = load i32, i32* %13, align 4, !dbg !719
  %124 = icmp sle i32 %122, %123, !dbg !720
  br i1 %124, label %125, label %151, !dbg !721

; <label>:125:                                    ; preds = %121
  %126 = load i32, i32* %16, align 4, !dbg !722
  %127 = add nsw i32 %126, 1, !dbg !724
  %128 = sext i32 %127 to i64, !dbg !725
  %129 = load i32*, i32** %9, align 8, !dbg !725
  %130 = getelementptr inbounds i32, i32* %129, i64 %128, !dbg !725
  %131 = load i32, i32* %130, align 4, !dbg !725
  %132 = load i32, i32* %16, align 4, !dbg !726
  %133 = sext i32 %132 to i64, !dbg !727
  %134 = load i32*, i32** %9, align 8, !dbg !727
  %135 = getelementptr inbounds i32, i32* %134, i64 %133, !dbg !727
  %136 = load i32, i32* %135, align 4, !dbg !727
  %137 = sub nsw i32 %131, %136, !dbg !728
  %138 = load i32, i32* %18, align 4, !dbg !729
  %139 = add nsw i32 %138, %137, !dbg !729
  store i32 %139, i32* %18, align 4, !dbg !729
  %140 = load i32, i32* %18, align 4, !dbg !730
  %141 = sub nsw i32 %140, 1, !dbg !731
  %142 = load i32, i32* %16, align 4, !dbg !732
  %143 = sext i32 %142 to i64, !dbg !733
  %144 = load i32*, i32** %8, align 8, !dbg !733
  %145 = getelementptr inbounds i32, i32* %144, i64 %143, !dbg !733
  store i32 %141, i32* %145, align 4, !dbg !734
  %146 = load i32, i32* %18, align 4, !dbg !735
  %147 = shl i32 %146, 1, !dbg !735
  store i32 %147, i32* %18, align 4, !dbg !735
  br label %148, !dbg !736

; <label>:148:                                    ; preds = %125
  %149 = load i32, i32* %16, align 4, !dbg !737
  %150 = add nsw i32 %149, 1, !dbg !737
  store i32 %150, i32* %16, align 4, !dbg !737
  br label %121, !dbg !739, !llvm.loop !740

; <label>:151:                                    ; preds = %121
  %152 = load i32, i32* %12, align 4, !dbg !742
  %153 = add nsw i32 %152, 1, !dbg !744
  store i32 %153, i32* %16, align 4, !dbg !745
  br label %154, !dbg !746

; <label>:154:                                    ; preds = %177, %151
  %155 = load i32, i32* %16, align 4, !dbg !747
  %156 = load i32, i32* %13, align 4, !dbg !750
  %157 = icmp sle i32 %155, %156, !dbg !751
  br i1 %157, label %158, label %180, !dbg !752

; <label>:158:                                    ; preds = %154
  %159 = load i32, i32* %16, align 4, !dbg !753
  %160 = sub nsw i32 %159, 1, !dbg !754
  %161 = sext i32 %160 to i64, !dbg !755
  %162 = load i32*, i32** %8, align 8, !dbg !755
  %163 = getelementptr inbounds i32, i32* %162, i64 %161, !dbg !755
  %164 = load i32, i32* %163, align 4, !dbg !755
  %165 = add nsw i32 %164, 1, !dbg !756
  %166 = shl i32 %165, 1, !dbg !757
  %167 = load i32, i32* %16, align 4, !dbg !758
  %168 = sext i32 %167 to i64, !dbg !759
  %169 = load i32*, i32** %9, align 8, !dbg !759
  %170 = getelementptr inbounds i32, i32* %169, i64 %168, !dbg !759
  %171 = load i32, i32* %170, align 4, !dbg !759
  %172 = sub nsw i32 %166, %171, !dbg !760
  %173 = load i32, i32* %16, align 4, !dbg !761
  %174 = sext i32 %173 to i64, !dbg !762
  %175 = load i32*, i32** %9, align 8, !dbg !762
  %176 = getelementptr inbounds i32, i32* %175, i64 %174, !dbg !762
  store i32 %172, i32* %176, align 4, !dbg !763
  br label %177, !dbg !762

; <label>:177:                                    ; preds = %158
  %178 = load i32, i32* %16, align 4, !dbg !764
  %179 = add nsw i32 %178, 1, !dbg !764
  store i32 %179, i32* %16, align 4, !dbg !764
  br label %154, !dbg !766, !llvm.loop !767

; <label>:180:                                    ; preds = %154
  ret void, !dbg !769
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "[inter]third-party--bzip2-1.0.6--huffman.o.i", directory: "/home/lichi/Desktop/bedops/[lib]third-party--bzip2-1.0.6--libbz2.a")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !5, line: 42, baseType: !6)
!5 = !DIFile(filename: "bzlib_private.h", directory: "/home/lichi/Desktop/bedops/[lib]third-party--bzip2-1.0.6--libbz2.a")
!6 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!10 = distinct !DISubprogram(name: "BZ2_hbMakeCodeLengths", scope: !11, file: !11, line: 63, type: !12, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!11 = !DIFile(filename: "huffman.c", directory: "/home/lichi/Desktop/bedops/[lib]third-party--bzip2-1.0.6--libbz2.a")
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14, !16, !17, !17}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !5, line: 43, baseType: !6)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "Int32", file: !5, line: 44, baseType: !18)
!18 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!19 = !DILocalVariable(name: "len", arg: 1, scope: !10, file: !11, line: 63, type: !14)
!20 = !DIExpression()
!21 = !DILocation(line: 63, column: 37, scope: !10)
!22 = !DILocalVariable(name: "freq", arg: 2, scope: !10, file: !11, line: 64, type: !16)
!23 = !DILocation(line: 64, column: 37, scope: !10)
!24 = !DILocalVariable(name: "alphaSize", arg: 3, scope: !10, file: !11, line: 65, type: !17)
!25 = !DILocation(line: 65, column: 36, scope: !10)
!26 = !DILocalVariable(name: "maxLen", arg: 4, scope: !10, file: !11, line: 66, type: !17)
!27 = !DILocation(line: 66, column: 36, scope: !10)
!28 = !DILocalVariable(name: "nNodes", scope: !10, file: !11, line: 72, type: !17)
!29 = !DILocation(line: 72, column: 10, scope: !10)
!30 = !DILocalVariable(name: "nHeap", scope: !10, file: !11, line: 72, type: !17)
!31 = !DILocation(line: 72, column: 18, scope: !10)
!32 = !DILocalVariable(name: "n1", scope: !10, file: !11, line: 72, type: !17)
!33 = !DILocation(line: 72, column: 25, scope: !10)
!34 = !DILocalVariable(name: "n2", scope: !10, file: !11, line: 72, type: !17)
!35 = !DILocation(line: 72, column: 29, scope: !10)
!36 = !DILocalVariable(name: "i", scope: !10, file: !11, line: 72, type: !17)
!37 = !DILocation(line: 72, column: 33, scope: !10)
!38 = !DILocalVariable(name: "j", scope: !10, file: !11, line: 72, type: !17)
!39 = !DILocation(line: 72, column: 36, scope: !10)
!40 = !DILocalVariable(name: "k", scope: !10, file: !11, line: 72, type: !17)
!41 = !DILocation(line: 72, column: 39, scope: !10)
!42 = !DILocalVariable(name: "tooLong", scope: !10, file: !11, line: 73, type: !4)
!43 = !DILocation(line: 73, column: 9, scope: !10)
!44 = !DILocalVariable(name: "heap", scope: !10, file: !11, line: 75, type: !45)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8320, align: 32, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 260)
!48 = !DILocation(line: 75, column: 10, scope: !10)
!49 = !DILocalVariable(name: "weight", scope: !10, file: !11, line: 76, type: !50)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 16512, align: 32, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 516)
!53 = !DILocation(line: 76, column: 10, scope: !10)
!54 = !DILocalVariable(name: "parent", scope: !10, file: !11, line: 77, type: !50)
!55 = !DILocation(line: 77, column: 10, scope: !10)
!56 = !DILocation(line: 79, column: 11, scope: !57)
!57 = distinct !DILexicalBlock(scope: !10, file: !11, line: 79, column: 4)
!58 = !DILocation(line: 79, column: 9, scope: !57)
!59 = !DILocation(line: 79, column: 16, scope: !60)
!60 = !DILexicalBlockFile(scope: !61, file: !11, discriminator: 1)
!61 = distinct !DILexicalBlock(scope: !57, file: !11, line: 79, column: 4)
!62 = !DILocation(line: 79, column: 20, scope: !60)
!63 = !DILocation(line: 79, column: 18, scope: !60)
!64 = !DILocation(line: 79, column: 4, scope: !60)
!65 = !DILocation(line: 80, column: 27, scope: !61)
!66 = !DILocation(line: 80, column: 22, scope: !61)
!67 = !DILocation(line: 80, column: 30, scope: !61)
!68 = !DILocation(line: 80, column: 22, scope: !60)
!69 = !DILocation(line: 80, column: 46, scope: !70)
!70 = !DILexicalBlockFile(scope: !61, file: !11, discriminator: 2)
!71 = !DILocation(line: 80, column: 41, scope: !70)
!72 = !DILocation(line: 80, column: 22, scope: !70)
!73 = !DILocation(line: 80, column: 22, scope: !74)
!74 = !DILexicalBlockFile(scope: !61, file: !11, discriminator: 3)
!75 = !DILocation(line: 80, column: 50, scope: !74)
!76 = !DILocation(line: 80, column: 14, scope: !74)
!77 = !DILocation(line: 80, column: 15, scope: !74)
!78 = !DILocation(line: 80, column: 7, scope: !74)
!79 = !DILocation(line: 80, column: 19, scope: !74)
!80 = !DILocation(line: 79, column: 32, scope: !70)
!81 = !DILocation(line: 79, column: 4, scope: !70)
!82 = distinct !{!82, !83}
!83 = !DILocation(line: 79, column: 4, scope: !10)
!84 = !DILocation(line: 82, column: 4, scope: !10)
!85 = !DILocation(line: 84, column: 16, scope: !86)
!86 = distinct !DILexicalBlock(scope: !10, file: !11, line: 82, column: 22)
!87 = !DILocation(line: 84, column: 14, scope: !86)
!88 = !DILocation(line: 85, column: 13, scope: !86)
!89 = !DILocation(line: 87, column: 7, scope: !86)
!90 = !DILocation(line: 87, column: 15, scope: !86)
!91 = !DILocation(line: 88, column: 7, scope: !86)
!92 = !DILocation(line: 88, column: 17, scope: !86)
!93 = !DILocation(line: 89, column: 7, scope: !86)
!94 = !DILocation(line: 89, column: 17, scope: !86)
!95 = !DILocation(line: 91, column: 14, scope: !96)
!96 = distinct !DILexicalBlock(scope: !86, file: !11, line: 91, column: 7)
!97 = !DILocation(line: 91, column: 12, scope: !96)
!98 = !DILocation(line: 91, column: 19, scope: !99)
!99 = !DILexicalBlockFile(scope: !100, file: !11, discriminator: 1)
!100 = distinct !DILexicalBlock(scope: !96, file: !11, line: 91, column: 7)
!101 = !DILocation(line: 91, column: 24, scope: !99)
!102 = !DILocation(line: 91, column: 21, scope: !99)
!103 = !DILocation(line: 91, column: 7, scope: !99)
!104 = !DILocation(line: 92, column: 17, scope: !105)
!105 = distinct !DILexicalBlock(scope: !100, file: !11, line: 91, column: 40)
!106 = !DILocation(line: 92, column: 10, scope: !105)
!107 = !DILocation(line: 92, column: 20, scope: !105)
!108 = !DILocation(line: 93, column: 15, scope: !105)
!109 = !DILocation(line: 94, column: 24, scope: !105)
!110 = !DILocation(line: 94, column: 15, scope: !105)
!111 = !DILocation(line: 94, column: 10, scope: !105)
!112 = !DILocation(line: 94, column: 22, scope: !105)
!113 = !DILocalVariable(name: "zz", scope: !114, file: !11, line: 95, type: !17)
!114 = distinct !DILexicalBlock(scope: !105, file: !11, line: 95, column: 10)
!115 = !DILocation(line: 95, column: 18, scope: !114)
!116 = !DILocalVariable(name: "tmp", scope: !114, file: !11, line: 95, type: !17)
!117 = !DILocation(line: 95, column: 22, scope: !114)
!118 = !DILocation(line: 95, column: 32, scope: !114)
!119 = !DILocation(line: 95, column: 30, scope: !114)
!120 = !DILocation(line: 95, column: 50, scope: !114)
!121 = !DILocation(line: 95, column: 45, scope: !114)
!122 = !DILocation(line: 95, column: 43, scope: !114)
!123 = !DILocation(line: 95, column: 55, scope: !114)
!124 = !DILocation(line: 95, column: 69, scope: !125)
!125 = !DILexicalBlockFile(scope: !114, file: !11, discriminator: 1)
!126 = !DILocation(line: 95, column: 62, scope: !125)
!127 = !DILocation(line: 95, column: 88, scope: !125)
!128 = !DILocation(line: 95, column: 91, scope: !125)
!129 = !DILocation(line: 95, column: 83, scope: !125)
!130 = !DILocation(line: 95, column: 76, scope: !125)
!131 = !DILocation(line: 95, column: 74, scope: !125)
!132 = !DILocation(line: 95, column: 55, scope: !125)
!133 = !DILocation(line: 95, column: 117, scope: !134)
!134 = !DILexicalBlockFile(scope: !135, file: !11, discriminator: 2)
!135 = distinct !DILexicalBlock(scope: !114, file: !11, line: 95, column: 99)
!136 = !DILocation(line: 95, column: 120, scope: !134)
!137 = !DILocation(line: 95, column: 112, scope: !134)
!138 = !DILocation(line: 95, column: 106, scope: !134)
!139 = !DILocation(line: 95, column: 101, scope: !134)
!140 = !DILocation(line: 95, column: 110, scope: !134)
!141 = !DILocation(line: 95, column: 130, scope: !134)
!142 = !DILocation(line: 95, column: 55, scope: !134)
!143 = distinct !{!143, !123}
!144 = !DILocation(line: 95, column: 150, scope: !145)
!145 = !DILexicalBlockFile(scope: !114, file: !11, discriminator: 3)
!146 = !DILocation(line: 95, column: 144, scope: !145)
!147 = !DILocation(line: 95, column: 139, scope: !145)
!148 = !DILocation(line: 95, column: 148, scope: !145)
!149 = !DILocation(line: 96, column: 7, scope: !105)
!150 = !DILocation(line: 91, column: 36, scope: !151)
!151 = !DILexicalBlockFile(scope: !100, file: !11, discriminator: 2)
!152 = !DILocation(line: 91, column: 7, scope: !151)
!153 = distinct !{!153, !154}
!154 = !DILocation(line: 91, column: 7, scope: !86)
!155 = !DILocation(line: 98, column: 15, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !11, line: 98, column: 13)
!157 = distinct !DILexicalBlock(scope: !86, file: !11, line: 98, column: 7)
!158 = !DILocation(line: 98, column: 21, scope: !156)
!159 = !DILocation(line: 98, column: 13, scope: !157)
!160 = !DILocation(line: 98, column: 34, scope: !161)
!161 = !DILexicalBlockFile(scope: !156, file: !11, discriminator: 1)
!162 = !DILocation(line: 100, column: 7, scope: !86)
!163 = !DILocation(line: 100, column: 14, scope: !164)
!164 = !DILexicalBlockFile(scope: !86, file: !11, discriminator: 1)
!165 = !DILocation(line: 100, column: 20, scope: !164)
!166 = !DILocation(line: 100, column: 7, scope: !164)
!167 = !DILocation(line: 101, column: 15, scope: !168)
!168 = distinct !DILexicalBlock(scope: !86, file: !11, line: 100, column: 25)
!169 = !DILocation(line: 101, column: 13, scope: !168)
!170 = !DILocation(line: 101, column: 39, scope: !168)
!171 = !DILocation(line: 101, column: 34, scope: !168)
!172 = !DILocation(line: 101, column: 24, scope: !168)
!173 = !DILocation(line: 101, column: 32, scope: !168)
!174 = !DILocation(line: 101, column: 52, scope: !168)
!175 = !DILocalVariable(name: "zz", scope: !176, file: !11, line: 101, type: !17)
!176 = distinct !DILexicalBlock(scope: !168, file: !11, line: 101, column: 56)
!177 = !DILocation(line: 101, column: 64, scope: !176)
!178 = !DILocalVariable(name: "yy", scope: !176, file: !11, line: 101, type: !17)
!179 = !DILocation(line: 101, column: 68, scope: !176)
!180 = !DILocalVariable(name: "tmp", scope: !176, file: !11, line: 101, type: !17)
!181 = !DILocation(line: 101, column: 72, scope: !176)
!182 = !DILocation(line: 101, column: 80, scope: !176)
!183 = !DILocation(line: 101, column: 96, scope: !176)
!184 = !DILocation(line: 101, column: 91, scope: !176)
!185 = !DILocation(line: 101, column: 89, scope: !176)
!186 = !DILocation(line: 101, column: 101, scope: !176)
!187 = !DILocation(line: 101, column: 126, scope: !188)
!188 = !DILexicalBlockFile(scope: !189, file: !11, discriminator: 1)
!189 = distinct !DILexicalBlock(scope: !176, file: !11, line: 101, column: 119)
!190 = !DILocation(line: 101, column: 129, scope: !188)
!191 = !DILocation(line: 101, column: 124, scope: !188)
!192 = !DILocation(line: 101, column: 139, scope: !188)
!193 = !DILocation(line: 101, column: 144, scope: !188)
!194 = !DILocation(line: 101, column: 142, scope: !188)
!195 = !DILocation(line: 101, column: 151, scope: !196)
!196 = !DILexicalBlockFile(scope: !197, file: !11, discriminator: 2)
!197 = distinct !DILexicalBlock(scope: !189, file: !11, line: 101, column: 139)
!198 = !DILocation(line: 101, column: 162, scope: !199)
!199 = !DILexicalBlockFile(scope: !200, file: !11, discriminator: 3)
!200 = distinct !DILexicalBlock(scope: !189, file: !11, line: 101, column: 162)
!201 = !DILocation(line: 101, column: 167, scope: !199)
!202 = !DILocation(line: 101, column: 165, scope: !199)
!203 = !DILocation(line: 101, column: 173, scope: !199)
!204 = !DILocation(line: 101, column: 188, scope: !205)
!205 = !DILexicalBlockFile(scope: !200, file: !11, discriminator: 4)
!206 = !DILocation(line: 101, column: 190, scope: !205)
!207 = !DILocation(line: 101, column: 183, scope: !205)
!208 = !DILocation(line: 101, column: 176, scope: !205)
!209 = !DILocation(line: 101, column: 209, scope: !205)
!210 = !DILocation(line: 101, column: 204, scope: !205)
!211 = !DILocation(line: 101, column: 197, scope: !205)
!212 = !DILocation(line: 101, column: 195, scope: !205)
!213 = !DILocation(line: 101, column: 162, scope: !205)
!214 = !DILocation(line: 101, column: 217, scope: !215)
!215 = !DILexicalBlockFile(scope: !200, file: !11, discriminator: 5)
!216 = !DILocation(line: 101, column: 215, scope: !215)
!217 = !DILocation(line: 101, column: 232, scope: !218)
!218 = !DILexicalBlockFile(scope: !219, file: !11, discriminator: 6)
!219 = distinct !DILexicalBlock(scope: !189, file: !11, line: 101, column: 225)
!220 = !DILocation(line: 101, column: 225, scope: !218)
!221 = !DILocation(line: 101, column: 251, scope: !218)
!222 = !DILocation(line: 101, column: 246, scope: !218)
!223 = !DILocation(line: 101, column: 239, scope: !218)
!224 = !DILocation(line: 101, column: 237, scope: !218)
!225 = !DILocation(line: 101, column: 257, scope: !226)
!226 = !DILexicalBlockFile(scope: !219, file: !11, discriminator: 7)
!227 = !DILocation(line: 101, column: 280, scope: !228)
!228 = !DILexicalBlockFile(scope: !189, file: !11, discriminator: 8)
!229 = !DILocation(line: 101, column: 275, scope: !228)
!230 = !DILocation(line: 101, column: 269, scope: !228)
!231 = !DILocation(line: 101, column: 264, scope: !228)
!232 = !DILocation(line: 101, column: 273, scope: !228)
!233 = !DILocation(line: 101, column: 290, scope: !228)
!234 = !DILocation(line: 101, column: 288, scope: !228)
!235 = !DILocation(line: 101, column: 101, scope: !228)
!236 = distinct !{!236, !186}
!237 = !DILocation(line: 101, column: 307, scope: !238)
!238 = !DILexicalBlockFile(scope: !176, file: !11, discriminator: 9)
!239 = !DILocation(line: 101, column: 301, scope: !238)
!240 = !DILocation(line: 101, column: 296, scope: !238)
!241 = !DILocation(line: 101, column: 305, scope: !238)
!242 = !DILocation(line: 102, column: 15, scope: !168)
!243 = !DILocation(line: 102, column: 13, scope: !168)
!244 = !DILocation(line: 102, column: 39, scope: !168)
!245 = !DILocation(line: 102, column: 34, scope: !168)
!246 = !DILocation(line: 102, column: 24, scope: !168)
!247 = !DILocation(line: 102, column: 32, scope: !168)
!248 = !DILocation(line: 102, column: 52, scope: !168)
!249 = !DILocalVariable(name: "zz", scope: !250, file: !11, line: 102, type: !17)
!250 = distinct !DILexicalBlock(scope: !168, file: !11, line: 102, column: 56)
!251 = !DILocation(line: 102, column: 64, scope: !250)
!252 = !DILocalVariable(name: "yy", scope: !250, file: !11, line: 102, type: !17)
!253 = !DILocation(line: 102, column: 68, scope: !250)
!254 = !DILocalVariable(name: "tmp", scope: !250, file: !11, line: 102, type: !17)
!255 = !DILocation(line: 102, column: 72, scope: !250)
!256 = !DILocation(line: 102, column: 80, scope: !250)
!257 = !DILocation(line: 102, column: 96, scope: !250)
!258 = !DILocation(line: 102, column: 91, scope: !250)
!259 = !DILocation(line: 102, column: 89, scope: !250)
!260 = !DILocation(line: 102, column: 101, scope: !250)
!261 = !DILocation(line: 102, column: 126, scope: !262)
!262 = !DILexicalBlockFile(scope: !263, file: !11, discriminator: 1)
!263 = distinct !DILexicalBlock(scope: !250, file: !11, line: 102, column: 119)
!264 = !DILocation(line: 102, column: 129, scope: !262)
!265 = !DILocation(line: 102, column: 124, scope: !262)
!266 = !DILocation(line: 102, column: 139, scope: !262)
!267 = !DILocation(line: 102, column: 144, scope: !262)
!268 = !DILocation(line: 102, column: 142, scope: !262)
!269 = !DILocation(line: 102, column: 151, scope: !270)
!270 = !DILexicalBlockFile(scope: !271, file: !11, discriminator: 2)
!271 = distinct !DILexicalBlock(scope: !263, file: !11, line: 102, column: 139)
!272 = !DILocation(line: 102, column: 162, scope: !273)
!273 = !DILexicalBlockFile(scope: !274, file: !11, discriminator: 3)
!274 = distinct !DILexicalBlock(scope: !263, file: !11, line: 102, column: 162)
!275 = !DILocation(line: 102, column: 167, scope: !273)
!276 = !DILocation(line: 102, column: 165, scope: !273)
!277 = !DILocation(line: 102, column: 173, scope: !273)
!278 = !DILocation(line: 102, column: 188, scope: !279)
!279 = !DILexicalBlockFile(scope: !274, file: !11, discriminator: 4)
!280 = !DILocation(line: 102, column: 190, scope: !279)
!281 = !DILocation(line: 102, column: 183, scope: !279)
!282 = !DILocation(line: 102, column: 176, scope: !279)
!283 = !DILocation(line: 102, column: 209, scope: !279)
!284 = !DILocation(line: 102, column: 204, scope: !279)
!285 = !DILocation(line: 102, column: 197, scope: !279)
!286 = !DILocation(line: 102, column: 195, scope: !279)
!287 = !DILocation(line: 102, column: 162, scope: !279)
!288 = !DILocation(line: 102, column: 217, scope: !289)
!289 = !DILexicalBlockFile(scope: !274, file: !11, discriminator: 5)
!290 = !DILocation(line: 102, column: 215, scope: !289)
!291 = !DILocation(line: 102, column: 232, scope: !292)
!292 = !DILexicalBlockFile(scope: !293, file: !11, discriminator: 6)
!293 = distinct !DILexicalBlock(scope: !263, file: !11, line: 102, column: 225)
!294 = !DILocation(line: 102, column: 225, scope: !292)
!295 = !DILocation(line: 102, column: 251, scope: !292)
!296 = !DILocation(line: 102, column: 246, scope: !292)
!297 = !DILocation(line: 102, column: 239, scope: !292)
!298 = !DILocation(line: 102, column: 237, scope: !292)
!299 = !DILocation(line: 102, column: 257, scope: !300)
!300 = !DILexicalBlockFile(scope: !293, file: !11, discriminator: 7)
!301 = !DILocation(line: 102, column: 280, scope: !302)
!302 = !DILexicalBlockFile(scope: !263, file: !11, discriminator: 8)
!303 = !DILocation(line: 102, column: 275, scope: !302)
!304 = !DILocation(line: 102, column: 269, scope: !302)
!305 = !DILocation(line: 102, column: 264, scope: !302)
!306 = !DILocation(line: 102, column: 273, scope: !302)
!307 = !DILocation(line: 102, column: 290, scope: !302)
!308 = !DILocation(line: 102, column: 288, scope: !302)
!309 = !DILocation(line: 102, column: 101, scope: !302)
!310 = distinct !{!310, !260}
!311 = !DILocation(line: 102, column: 307, scope: !312)
!312 = !DILexicalBlockFile(scope: !250, file: !11, discriminator: 9)
!313 = !DILocation(line: 102, column: 301, scope: !312)
!314 = !DILocation(line: 102, column: 296, scope: !312)
!315 = !DILocation(line: 102, column: 305, scope: !312)
!316 = !DILocation(line: 103, column: 16, scope: !168)
!317 = !DILocation(line: 104, column: 36, scope: !168)
!318 = !DILocation(line: 104, column: 30, scope: !168)
!319 = !DILocation(line: 104, column: 23, scope: !168)
!320 = !DILocation(line: 104, column: 34, scope: !168)
!321 = !DILocation(line: 104, column: 17, scope: !168)
!322 = !DILocation(line: 104, column: 10, scope: !168)
!323 = !DILocation(line: 104, column: 21, scope: !168)
!324 = !DILocation(line: 105, column: 37, scope: !168)
!325 = !DILocation(line: 105, column: 30, scope: !168)
!326 = !DILocation(line: 105, column: 42, scope: !168)
!327 = !DILocation(line: 105, column: 65, scope: !168)
!328 = !DILocation(line: 105, column: 58, scope: !168)
!329 = !DILocation(line: 105, column: 70, scope: !168)
!330 = !DILocation(line: 105, column: 55, scope: !168)
!331 = !DILocation(line: 105, column: 103, scope: !168)
!332 = !DILocation(line: 105, column: 96, scope: !168)
!333 = !DILocation(line: 105, column: 108, scope: !168)
!334 = !DILocation(line: 105, column: 135, scope: !168)
!335 = !DILocation(line: 105, column: 128, scope: !168)
!336 = !DILocation(line: 105, column: 140, scope: !168)
!337 = !DILocation(line: 105, column: 123, scope: !168)
!338 = !DILocation(line: 105, column: 93, scope: !168)
!339 = !DILocation(line: 105, column: 167, scope: !340)
!340 = !DILexicalBlockFile(scope: !168, file: !11, discriminator: 1)
!341 = !DILocation(line: 105, column: 160, scope: !340)
!342 = !DILocation(line: 105, column: 172, scope: !340)
!343 = !DILocation(line: 105, column: 93, scope: !340)
!344 = !DILocation(line: 105, column: 199, scope: !345)
!345 = !DILexicalBlockFile(scope: !168, file: !11, discriminator: 2)
!346 = !DILocation(line: 105, column: 192, scope: !345)
!347 = !DILocation(line: 105, column: 204, scope: !345)
!348 = !DILocation(line: 105, column: 93, scope: !345)
!349 = !DILocation(line: 105, column: 93, scope: !350)
!350 = !DILexicalBlockFile(scope: !168, file: !11, discriminator: 3)
!351 = !DILocation(line: 105, column: 90, scope: !350)
!352 = !DILocation(line: 105, column: 85, scope: !350)
!353 = !DILocation(line: 105, column: 17, scope: !350)
!354 = !DILocation(line: 105, column: 10, scope: !350)
!355 = !DILocation(line: 105, column: 25, scope: !350)
!356 = !DILocation(line: 106, column: 17, scope: !168)
!357 = !DILocation(line: 106, column: 10, scope: !168)
!358 = !DILocation(line: 106, column: 25, scope: !168)
!359 = !DILocation(line: 107, column: 15, scope: !168)
!360 = !DILocation(line: 108, column: 24, scope: !168)
!361 = !DILocation(line: 108, column: 15, scope: !168)
!362 = !DILocation(line: 108, column: 10, scope: !168)
!363 = !DILocation(line: 108, column: 22, scope: !168)
!364 = !DILocalVariable(name: "zz", scope: !365, file: !11, line: 109, type: !17)
!365 = distinct !DILexicalBlock(scope: !168, file: !11, line: 109, column: 10)
!366 = !DILocation(line: 109, column: 18, scope: !365)
!367 = !DILocalVariable(name: "tmp", scope: !365, file: !11, line: 109, type: !17)
!368 = !DILocation(line: 109, column: 22, scope: !365)
!369 = !DILocation(line: 109, column: 32, scope: !365)
!370 = !DILocation(line: 109, column: 30, scope: !365)
!371 = !DILocation(line: 109, column: 50, scope: !365)
!372 = !DILocation(line: 109, column: 45, scope: !365)
!373 = !DILocation(line: 109, column: 43, scope: !365)
!374 = !DILocation(line: 109, column: 55, scope: !365)
!375 = !DILocation(line: 109, column: 69, scope: !376)
!376 = !DILexicalBlockFile(scope: !365, file: !11, discriminator: 1)
!377 = !DILocation(line: 109, column: 62, scope: !376)
!378 = !DILocation(line: 109, column: 88, scope: !376)
!379 = !DILocation(line: 109, column: 91, scope: !376)
!380 = !DILocation(line: 109, column: 83, scope: !376)
!381 = !DILocation(line: 109, column: 76, scope: !376)
!382 = !DILocation(line: 109, column: 74, scope: !376)
!383 = !DILocation(line: 109, column: 55, scope: !376)
!384 = !DILocation(line: 109, column: 117, scope: !385)
!385 = !DILexicalBlockFile(scope: !386, file: !11, discriminator: 2)
!386 = distinct !DILexicalBlock(scope: !365, file: !11, line: 109, column: 99)
!387 = !DILocation(line: 109, column: 120, scope: !385)
!388 = !DILocation(line: 109, column: 112, scope: !385)
!389 = !DILocation(line: 109, column: 106, scope: !385)
!390 = !DILocation(line: 109, column: 101, scope: !385)
!391 = !DILocation(line: 109, column: 110, scope: !385)
!392 = !DILocation(line: 109, column: 130, scope: !385)
!393 = !DILocation(line: 109, column: 55, scope: !385)
!394 = distinct !{!394, !374}
!395 = !DILocation(line: 109, column: 150, scope: !396)
!396 = !DILexicalBlockFile(scope: !365, file: !11, discriminator: 3)
!397 = !DILocation(line: 109, column: 144, scope: !396)
!398 = !DILocation(line: 109, column: 139, scope: !396)
!399 = !DILocation(line: 109, column: 148, scope: !396)
!400 = !DILocation(line: 100, column: 7, scope: !401)
!401 = !DILexicalBlockFile(scope: !86, file: !11, discriminator: 2)
!402 = distinct !{!402, !162}
!403 = !DILocation(line: 112, column: 15, scope: !404)
!404 = distinct !DILexicalBlock(scope: !405, file: !11, line: 112, column: 13)
!405 = distinct !DILexicalBlock(scope: !86, file: !11, line: 112, column: 7)
!406 = !DILocation(line: 112, column: 22, scope: !404)
!407 = !DILocation(line: 112, column: 13, scope: !405)
!408 = !DILocation(line: 112, column: 36, scope: !409)
!409 = !DILexicalBlockFile(scope: !404, file: !11, discriminator: 1)
!410 = !DILocation(line: 114, column: 15, scope: !86)
!411 = !DILocation(line: 115, column: 14, scope: !412)
!412 = distinct !DILexicalBlock(scope: !86, file: !11, line: 115, column: 7)
!413 = !DILocation(line: 115, column: 12, scope: !412)
!414 = !DILocation(line: 115, column: 19, scope: !415)
!415 = !DILexicalBlockFile(scope: !416, file: !11, discriminator: 1)
!416 = distinct !DILexicalBlock(scope: !412, file: !11, line: 115, column: 7)
!417 = !DILocation(line: 115, column: 24, scope: !415)
!418 = !DILocation(line: 115, column: 21, scope: !415)
!419 = !DILocation(line: 115, column: 7, scope: !415)
!420 = !DILocation(line: 116, column: 12, scope: !421)
!421 = distinct !DILexicalBlock(scope: !416, file: !11, line: 115, column: 40)
!422 = !DILocation(line: 117, column: 14, scope: !421)
!423 = !DILocation(line: 117, column: 12, scope: !421)
!424 = !DILocation(line: 118, column: 10, scope: !421)
!425 = !DILocation(line: 118, column: 24, scope: !426)
!426 = !DILexicalBlockFile(scope: !421, file: !11, discriminator: 1)
!427 = !DILocation(line: 118, column: 17, scope: !426)
!428 = !DILocation(line: 118, column: 27, scope: !426)
!429 = !DILocation(line: 118, column: 10, scope: !426)
!430 = !DILocation(line: 118, column: 46, scope: !431)
!431 = !DILexicalBlockFile(scope: !432, file: !11, discriminator: 2)
!432 = distinct !DILexicalBlock(scope: !421, file: !11, line: 118, column: 33)
!433 = !DILocation(line: 118, column: 39, scope: !431)
!434 = !DILocation(line: 118, column: 37, scope: !431)
!435 = !DILocation(line: 118, column: 51, scope: !431)
!436 = !DILocation(line: 118, column: 10, scope: !431)
!437 = distinct !{!437, !424}
!438 = !DILocation(line: 119, column: 21, scope: !421)
!439 = !DILocation(line: 119, column: 14, scope: !421)
!440 = !DILocation(line: 119, column: 15, scope: !421)
!441 = !DILocation(line: 119, column: 10, scope: !421)
!442 = !DILocation(line: 119, column: 19, scope: !421)
!443 = !DILocation(line: 120, column: 14, scope: !444)
!444 = distinct !DILexicalBlock(scope: !421, file: !11, line: 120, column: 14)
!445 = !DILocation(line: 120, column: 18, scope: !444)
!446 = !DILocation(line: 120, column: 16, scope: !444)
!447 = !DILocation(line: 120, column: 14, scope: !421)
!448 = !DILocation(line: 120, column: 34, scope: !449)
!449 = !DILexicalBlockFile(scope: !444, file: !11, discriminator: 1)
!450 = !DILocation(line: 120, column: 26, scope: !449)
!451 = !DILocation(line: 121, column: 7, scope: !421)
!452 = !DILocation(line: 115, column: 36, scope: !453)
!453 = !DILexicalBlockFile(scope: !416, file: !11, discriminator: 2)
!454 = !DILocation(line: 115, column: 7, scope: !453)
!455 = distinct !{!455, !456}
!456 = !DILocation(line: 115, column: 7, scope: !86)
!457 = !DILocation(line: 123, column: 13, scope: !458)
!458 = distinct !DILexicalBlock(scope: !86, file: !11, line: 123, column: 11)
!459 = !DILocation(line: 123, column: 11, scope: !86)
!460 = !DILocation(line: 123, column: 22, scope: !461)
!461 = !DILexicalBlockFile(scope: !458, file: !11, discriminator: 1)
!462 = !DILocation(line: 142, column: 14, scope: !463)
!463 = distinct !DILexicalBlock(scope: !86, file: !11, line: 142, column: 7)
!464 = !DILocation(line: 142, column: 12, scope: !463)
!465 = !DILocation(line: 142, column: 19, scope: !466)
!466 = !DILexicalBlockFile(scope: !467, file: !11, discriminator: 1)
!467 = distinct !DILexicalBlock(scope: !463, file: !11, line: 142, column: 7)
!468 = !DILocation(line: 142, column: 24, scope: !466)
!469 = !DILocation(line: 142, column: 21, scope: !466)
!470 = !DILocation(line: 142, column: 7, scope: !466)
!471 = !DILocation(line: 143, column: 21, scope: !472)
!472 = distinct !DILexicalBlock(scope: !467, file: !11, line: 142, column: 40)
!473 = !DILocation(line: 143, column: 14, scope: !472)
!474 = !DILocation(line: 143, column: 24, scope: !472)
!475 = !DILocation(line: 143, column: 12, scope: !472)
!476 = !DILocation(line: 144, column: 19, scope: !472)
!477 = !DILocation(line: 144, column: 21, scope: !472)
!478 = !DILocation(line: 144, column: 16, scope: !472)
!479 = !DILocation(line: 144, column: 12, scope: !472)
!480 = !DILocation(line: 145, column: 22, scope: !472)
!481 = !DILocation(line: 145, column: 24, scope: !472)
!482 = !DILocation(line: 145, column: 17, scope: !472)
!483 = !DILocation(line: 145, column: 10, scope: !472)
!484 = !DILocation(line: 145, column: 20, scope: !472)
!485 = !DILocation(line: 146, column: 7, scope: !472)
!486 = !DILocation(line: 142, column: 36, scope: !487)
!487 = !DILexicalBlockFile(scope: !467, file: !11, discriminator: 2)
!488 = !DILocation(line: 142, column: 7, scope: !487)
!489 = distinct !{!489, !490}
!490 = !DILocation(line: 142, column: 7, scope: !86)
!491 = !DILocation(line: 82, column: 4, scope: !492)
!492 = !DILexicalBlockFile(scope: !10, file: !11, discriminator: 1)
!493 = distinct !{!493, !84}
!494 = !DILocation(line: 148, column: 1, scope: !10)
!495 = distinct !DISubprogram(name: "BZ2_hbAssignCodes", scope: !11, file: !11, line: 152, type: !496, isLocal: false, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !16, !14, !17, !17, !17}
!498 = !DILocalVariable(name: "code", arg: 1, scope: !495, file: !11, line: 152, type: !16)
!499 = !DILocation(line: 152, column: 33, scope: !495)
!500 = !DILocalVariable(name: "length", arg: 2, scope: !495, file: !11, line: 153, type: !14)
!501 = !DILocation(line: 153, column: 33, scope: !495)
!502 = !DILocalVariable(name: "minLen", arg: 3, scope: !495, file: !11, line: 154, type: !17)
!503 = !DILocation(line: 154, column: 32, scope: !495)
!504 = !DILocalVariable(name: "maxLen", arg: 4, scope: !495, file: !11, line: 155, type: !17)
!505 = !DILocation(line: 155, column: 32, scope: !495)
!506 = !DILocalVariable(name: "alphaSize", arg: 5, scope: !495, file: !11, line: 156, type: !17)
!507 = !DILocation(line: 156, column: 32, scope: !495)
!508 = !DILocalVariable(name: "n", scope: !495, file: !11, line: 158, type: !17)
!509 = !DILocation(line: 158, column: 10, scope: !495)
!510 = !DILocalVariable(name: "vec", scope: !495, file: !11, line: 158, type: !17)
!511 = !DILocation(line: 158, column: 13, scope: !495)
!512 = !DILocalVariable(name: "i", scope: !495, file: !11, line: 158, type: !17)
!513 = !DILocation(line: 158, column: 18, scope: !495)
!514 = !DILocation(line: 160, column: 8, scope: !495)
!515 = !DILocation(line: 161, column: 13, scope: !516)
!516 = distinct !DILexicalBlock(scope: !495, file: !11, line: 161, column: 4)
!517 = !DILocation(line: 161, column: 11, scope: !516)
!518 = !DILocation(line: 161, column: 9, scope: !516)
!519 = !DILocation(line: 161, column: 21, scope: !520)
!520 = !DILexicalBlockFile(scope: !521, file: !11, discriminator: 1)
!521 = distinct !DILexicalBlock(scope: !516, file: !11, line: 161, column: 4)
!522 = !DILocation(line: 161, column: 26, scope: !520)
!523 = !DILocation(line: 161, column: 23, scope: !520)
!524 = !DILocation(line: 161, column: 4, scope: !520)
!525 = !DILocation(line: 162, column: 14, scope: !526)
!526 = distinct !DILexicalBlock(scope: !527, file: !11, line: 162, column: 7)
!527 = distinct !DILexicalBlock(scope: !521, file: !11, line: 161, column: 39)
!528 = !DILocation(line: 162, column: 12, scope: !526)
!529 = !DILocation(line: 162, column: 19, scope: !530)
!530 = !DILexicalBlockFile(scope: !531, file: !11, discriminator: 1)
!531 = distinct !DILexicalBlock(scope: !526, file: !11, line: 162, column: 7)
!532 = !DILocation(line: 162, column: 23, scope: !530)
!533 = !DILocation(line: 162, column: 21, scope: !530)
!534 = !DILocation(line: 162, column: 7, scope: !530)
!535 = !DILocation(line: 163, column: 21, scope: !536)
!536 = distinct !DILexicalBlock(scope: !531, file: !11, line: 163, column: 14)
!537 = !DILocation(line: 163, column: 14, scope: !536)
!538 = !DILocation(line: 163, column: 27, scope: !536)
!539 = !DILocation(line: 163, column: 24, scope: !536)
!540 = !DILocation(line: 163, column: 14, scope: !531)
!541 = !DILocation(line: 163, column: 42, scope: !542)
!542 = !DILexicalBlockFile(scope: !543, file: !11, discriminator: 1)
!543 = distinct !DILexicalBlock(scope: !536, file: !11, line: 163, column: 30)
!544 = !DILocation(line: 163, column: 37, scope: !542)
!545 = !DILocation(line: 163, column: 32, scope: !542)
!546 = !DILocation(line: 163, column: 40, scope: !542)
!547 = !DILocation(line: 163, column: 50, scope: !542)
!548 = !DILocation(line: 163, column: 54, scope: !542)
!549 = !DILocation(line: 163, column: 27, scope: !550)
!550 = !DILexicalBlockFile(scope: !536, file: !11, discriminator: 2)
!551 = !DILocation(line: 162, column: 35, scope: !552)
!552 = !DILexicalBlockFile(scope: !531, file: !11, discriminator: 2)
!553 = !DILocation(line: 162, column: 7, scope: !552)
!554 = distinct !{!554, !555}
!555 = !DILocation(line: 162, column: 7, scope: !527)
!556 = !DILocation(line: 164, column: 11, scope: !527)
!557 = !DILocation(line: 165, column: 4, scope: !527)
!558 = !DILocation(line: 161, column: 35, scope: !559)
!559 = !DILexicalBlockFile(scope: !521, file: !11, discriminator: 2)
!560 = !DILocation(line: 161, column: 4, scope: !559)
!561 = distinct !{!561, !562}
!562 = !DILocation(line: 161, column: 4, scope: !495)
!563 = !DILocation(line: 166, column: 1, scope: !495)
!564 = distinct !DISubprogram(name: "BZ2_hbCreateDecodeTables", scope: !11, file: !11, line: 170, type: !565, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !16, !16, !16, !14, !17, !17, !17}
!567 = !DILocalVariable(name: "limit", arg: 1, scope: !564, file: !11, line: 170, type: !16)
!568 = !DILocation(line: 170, column: 40, scope: !564)
!569 = !DILocalVariable(name: "base", arg: 2, scope: !564, file: !11, line: 171, type: !16)
!570 = !DILocation(line: 171, column: 40, scope: !564)
!571 = !DILocalVariable(name: "perm", arg: 3, scope: !564, file: !11, line: 172, type: !16)
!572 = !DILocation(line: 172, column: 40, scope: !564)
!573 = !DILocalVariable(name: "length", arg: 4, scope: !564, file: !11, line: 173, type: !14)
!574 = !DILocation(line: 173, column: 40, scope: !564)
!575 = !DILocalVariable(name: "minLen", arg: 5, scope: !564, file: !11, line: 174, type: !17)
!576 = !DILocation(line: 174, column: 39, scope: !564)
!577 = !DILocalVariable(name: "maxLen", arg: 6, scope: !564, file: !11, line: 175, type: !17)
!578 = !DILocation(line: 175, column: 39, scope: !564)
!579 = !DILocalVariable(name: "alphaSize", arg: 7, scope: !564, file: !11, line: 176, type: !17)
!580 = !DILocation(line: 176, column: 39, scope: !564)
!581 = !DILocalVariable(name: "pp", scope: !564, file: !11, line: 178, type: !17)
!582 = !DILocation(line: 178, column: 10, scope: !564)
!583 = !DILocalVariable(name: "i", scope: !564, file: !11, line: 178, type: !17)
!584 = !DILocation(line: 178, column: 14, scope: !564)
!585 = !DILocalVariable(name: "j", scope: !564, file: !11, line: 178, type: !17)
!586 = !DILocation(line: 178, column: 17, scope: !564)
!587 = !DILocalVariable(name: "vec", scope: !564, file: !11, line: 178, type: !17)
!588 = !DILocation(line: 178, column: 20, scope: !564)
!589 = !DILocation(line: 180, column: 7, scope: !564)
!590 = !DILocation(line: 181, column: 13, scope: !591)
!591 = distinct !DILexicalBlock(scope: !564, file: !11, line: 181, column: 4)
!592 = !DILocation(line: 181, column: 11, scope: !591)
!593 = !DILocation(line: 181, column: 9, scope: !591)
!594 = !DILocation(line: 181, column: 21, scope: !595)
!595 = !DILexicalBlockFile(scope: !596, file: !11, discriminator: 1)
!596 = distinct !DILexicalBlock(scope: !591, file: !11, line: 181, column: 4)
!597 = !DILocation(line: 181, column: 26, scope: !595)
!598 = !DILocation(line: 181, column: 23, scope: !595)
!599 = !DILocation(line: 181, column: 4, scope: !595)
!600 = !DILocation(line: 182, column: 14, scope: !601)
!601 = distinct !DILexicalBlock(scope: !596, file: !11, line: 182, column: 7)
!602 = !DILocation(line: 182, column: 12, scope: !601)
!603 = !DILocation(line: 182, column: 19, scope: !604)
!604 = !DILexicalBlockFile(scope: !605, file: !11, discriminator: 1)
!605 = distinct !DILexicalBlock(scope: !601, file: !11, line: 182, column: 7)
!606 = !DILocation(line: 182, column: 23, scope: !604)
!607 = !DILocation(line: 182, column: 21, scope: !604)
!608 = !DILocation(line: 182, column: 7, scope: !604)
!609 = !DILocation(line: 183, column: 21, scope: !610)
!610 = distinct !DILexicalBlock(scope: !605, file: !11, line: 183, column: 14)
!611 = !DILocation(line: 183, column: 14, scope: !610)
!612 = !DILocation(line: 183, column: 27, scope: !610)
!613 = !DILocation(line: 183, column: 24, scope: !610)
!614 = !DILocation(line: 183, column: 14, scope: !605)
!615 = !DILocation(line: 183, column: 43, scope: !616)
!616 = !DILexicalBlockFile(scope: !617, file: !11, discriminator: 1)
!617 = distinct !DILexicalBlock(scope: !610, file: !11, line: 183, column: 30)
!618 = !DILocation(line: 183, column: 37, scope: !616)
!619 = !DILocation(line: 183, column: 32, scope: !616)
!620 = !DILocation(line: 183, column: 41, scope: !616)
!621 = !DILocation(line: 183, column: 48, scope: !616)
!622 = !DILocation(line: 183, column: 52, scope: !616)
!623 = !DILocation(line: 183, column: 27, scope: !624)
!624 = !DILexicalBlockFile(scope: !610, file: !11, discriminator: 2)
!625 = !DILocation(line: 182, column: 35, scope: !626)
!626 = !DILexicalBlockFile(scope: !605, file: !11, discriminator: 2)
!627 = !DILocation(line: 182, column: 7, scope: !626)
!628 = distinct !{!628, !629}
!629 = !DILocation(line: 182, column: 7, scope: !596)
!630 = !DILocation(line: 183, column: 52, scope: !631)
!631 = !DILexicalBlockFile(scope: !601, file: !11, discriminator: 3)
!632 = !DILocation(line: 181, column: 35, scope: !633)
!633 = !DILexicalBlockFile(scope: !596, file: !11, discriminator: 2)
!634 = !DILocation(line: 181, column: 4, scope: !633)
!635 = distinct !{!635, !636}
!636 = !DILocation(line: 181, column: 4, scope: !564)
!637 = !DILocation(line: 185, column: 11, scope: !638)
!638 = distinct !DILexicalBlock(scope: !564, file: !11, line: 185, column: 4)
!639 = !DILocation(line: 185, column: 9, scope: !638)
!640 = !DILocation(line: 185, column: 16, scope: !641)
!641 = !DILexicalBlockFile(scope: !642, file: !11, discriminator: 1)
!642 = distinct !DILexicalBlock(scope: !638, file: !11, line: 185, column: 4)
!643 = !DILocation(line: 185, column: 18, scope: !641)
!644 = !DILocation(line: 185, column: 4, scope: !641)
!645 = !DILocation(line: 185, column: 34, scope: !646)
!646 = !DILexicalBlockFile(scope: !642, file: !11, discriminator: 2)
!647 = !DILocation(line: 185, column: 29, scope: !646)
!648 = !DILocation(line: 185, column: 37, scope: !646)
!649 = !DILocation(line: 185, column: 25, scope: !650)
!650 = !DILexicalBlockFile(scope: !642, file: !11, discriminator: 3)
!651 = !DILocation(line: 185, column: 4, scope: !650)
!652 = distinct !{!652, !653}
!653 = !DILocation(line: 185, column: 4, scope: !564)
!654 = !DILocation(line: 186, column: 11, scope: !655)
!655 = distinct !DILexicalBlock(scope: !564, file: !11, line: 186, column: 4)
!656 = !DILocation(line: 186, column: 9, scope: !655)
!657 = !DILocation(line: 186, column: 16, scope: !658)
!658 = !DILexicalBlockFile(scope: !659, file: !11, discriminator: 1)
!659 = distinct !DILexicalBlock(scope: !655, file: !11, line: 186, column: 4)
!660 = !DILocation(line: 186, column: 20, scope: !658)
!661 = !DILocation(line: 186, column: 18, scope: !658)
!662 = !DILocation(line: 186, column: 4, scope: !658)
!663 = !DILocation(line: 186, column: 48, scope: !664)
!664 = !DILexicalBlockFile(scope: !659, file: !11, discriminator: 2)
!665 = !DILocation(line: 186, column: 41, scope: !664)
!666 = !DILocation(line: 186, column: 50, scope: !664)
!667 = !DILocation(line: 186, column: 36, scope: !664)
!668 = !DILocation(line: 186, column: 53, scope: !664)
!669 = !DILocation(line: 186, column: 32, scope: !670)
!670 = !DILexicalBlockFile(scope: !659, file: !11, discriminator: 3)
!671 = !DILocation(line: 186, column: 4, scope: !670)
!672 = distinct !{!672, !673}
!673 = !DILocation(line: 186, column: 4, scope: !564)
!674 = !DILocation(line: 188, column: 11, scope: !675)
!675 = distinct !DILexicalBlock(scope: !564, file: !11, line: 188, column: 4)
!676 = !DILocation(line: 188, column: 9, scope: !675)
!677 = !DILocation(line: 188, column: 16, scope: !678)
!678 = !DILexicalBlockFile(scope: !679, file: !11, discriminator: 1)
!679 = distinct !DILexicalBlock(scope: !675, file: !11, line: 188, column: 4)
!680 = !DILocation(line: 188, column: 18, scope: !678)
!681 = !DILocation(line: 188, column: 4, scope: !678)
!682 = !DILocation(line: 188, column: 45, scope: !683)
!683 = !DILexicalBlockFile(scope: !679, file: !11, discriminator: 2)
!684 = !DILocation(line: 188, column: 46, scope: !683)
!685 = !DILocation(line: 188, column: 40, scope: !683)
!686 = !DILocation(line: 188, column: 34, scope: !683)
!687 = !DILocation(line: 188, column: 29, scope: !683)
!688 = !DILocation(line: 188, column: 37, scope: !683)
!689 = !DILocation(line: 188, column: 25, scope: !690)
!690 = !DILexicalBlockFile(scope: !679, file: !11, discriminator: 3)
!691 = !DILocation(line: 188, column: 4, scope: !690)
!692 = distinct !{!692, !693}
!693 = !DILocation(line: 188, column: 4, scope: !564)
!694 = !DILocation(line: 190, column: 11, scope: !695)
!695 = distinct !DILexicalBlock(scope: !564, file: !11, line: 190, column: 4)
!696 = !DILocation(line: 190, column: 9, scope: !695)
!697 = !DILocation(line: 190, column: 16, scope: !698)
!698 = !DILexicalBlockFile(scope: !699, file: !11, discriminator: 1)
!699 = distinct !DILexicalBlock(scope: !695, file: !11, line: 190, column: 4)
!700 = !DILocation(line: 190, column: 18, scope: !698)
!701 = !DILocation(line: 190, column: 4, scope: !698)
!702 = !DILocation(line: 190, column: 35, scope: !703)
!703 = !DILexicalBlockFile(scope: !699, file: !11, discriminator: 2)
!704 = !DILocation(line: 190, column: 29, scope: !703)
!705 = !DILocation(line: 190, column: 38, scope: !703)
!706 = !DILocation(line: 190, column: 25, scope: !707)
!707 = !DILexicalBlockFile(scope: !699, file: !11, discriminator: 3)
!708 = !DILocation(line: 190, column: 4, scope: !707)
!709 = distinct !{!709, !710}
!710 = !DILocation(line: 190, column: 4, scope: !564)
!711 = !DILocation(line: 191, column: 8, scope: !564)
!712 = !DILocation(line: 193, column: 13, scope: !713)
!713 = distinct !DILexicalBlock(scope: !564, file: !11, line: 193, column: 4)
!714 = !DILocation(line: 193, column: 11, scope: !713)
!715 = !DILocation(line: 193, column: 9, scope: !713)
!716 = !DILocation(line: 193, column: 21, scope: !717)
!717 = !DILexicalBlockFile(scope: !718, file: !11, discriminator: 1)
!718 = distinct !DILexicalBlock(scope: !713, file: !11, line: 193, column: 4)
!719 = !DILocation(line: 193, column: 26, scope: !717)
!720 = !DILocation(line: 193, column: 23, scope: !717)
!721 = !DILocation(line: 193, column: 4, scope: !717)
!722 = !DILocation(line: 194, column: 20, scope: !723)
!723 = distinct !DILexicalBlock(scope: !718, file: !11, line: 193, column: 39)
!724 = !DILocation(line: 194, column: 21, scope: !723)
!725 = !DILocation(line: 194, column: 15, scope: !723)
!726 = !DILocation(line: 194, column: 32, scope: !723)
!727 = !DILocation(line: 194, column: 27, scope: !723)
!728 = !DILocation(line: 194, column: 25, scope: !723)
!729 = !DILocation(line: 194, column: 11, scope: !723)
!730 = !DILocation(line: 195, column: 18, scope: !723)
!731 = !DILocation(line: 195, column: 21, scope: !723)
!732 = !DILocation(line: 195, column: 13, scope: !723)
!733 = !DILocation(line: 195, column: 7, scope: !723)
!734 = !DILocation(line: 195, column: 16, scope: !723)
!735 = !DILocation(line: 196, column: 11, scope: !723)
!736 = !DILocation(line: 197, column: 4, scope: !723)
!737 = !DILocation(line: 193, column: 35, scope: !738)
!738 = !DILexicalBlockFile(scope: !718, file: !11, discriminator: 2)
!739 = !DILocation(line: 193, column: 4, scope: !738)
!740 = distinct !{!740, !741}
!741 = !DILocation(line: 193, column: 4, scope: !564)
!742 = !DILocation(line: 198, column: 13, scope: !743)
!743 = distinct !DILexicalBlock(scope: !564, file: !11, line: 198, column: 4)
!744 = !DILocation(line: 198, column: 20, scope: !743)
!745 = !DILocation(line: 198, column: 11, scope: !743)
!746 = !DILocation(line: 198, column: 9, scope: !743)
!747 = !DILocation(line: 198, column: 25, scope: !748)
!748 = !DILexicalBlockFile(scope: !749, file: !11, discriminator: 1)
!749 = distinct !DILexicalBlock(scope: !743, file: !11, line: 198, column: 4)
!750 = !DILocation(line: 198, column: 30, scope: !748)
!751 = !DILocation(line: 198, column: 27, scope: !748)
!752 = !DILocation(line: 198, column: 4, scope: !748)
!753 = !DILocation(line: 199, column: 25, scope: !749)
!754 = !DILocation(line: 199, column: 26, scope: !749)
!755 = !DILocation(line: 199, column: 19, scope: !749)
!756 = !DILocation(line: 199, column: 30, scope: !749)
!757 = !DILocation(line: 199, column: 35, scope: !749)
!758 = !DILocation(line: 199, column: 48, scope: !749)
!759 = !DILocation(line: 199, column: 43, scope: !749)
!760 = !DILocation(line: 199, column: 41, scope: !749)
!761 = !DILocation(line: 199, column: 12, scope: !749)
!762 = !DILocation(line: 199, column: 7, scope: !749)
!763 = !DILocation(line: 199, column: 15, scope: !749)
!764 = !DILocation(line: 198, column: 39, scope: !765)
!765 = !DILexicalBlockFile(scope: !749, file: !11, discriminator: 2)
!766 = !DILocation(line: 198, column: 4, scope: !765)
!767 = distinct !{!767, !768}
!768 = !DILocation(line: 198, column: 4, scope: !564)
!769 = !DILocation(line: 200, column: 1, scope: !564)
