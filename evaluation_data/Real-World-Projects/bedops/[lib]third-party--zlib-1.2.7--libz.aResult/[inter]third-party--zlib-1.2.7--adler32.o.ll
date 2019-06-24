; ModuleID = './[inter]third-party--zlib-1.2.7--adler32.o.i'
source_filename = "./[inter]third-party--zlib-1.2.7--adler32.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i64 @adler32(i64, i8*, i32) #0 !dbg !8 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !21, metadata !22), !dbg !23
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !24, metadata !22), !dbg !25
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !26, metadata !22), !dbg !27
  call void @llvm.dbg.declare(metadata i64* %8, metadata !28, metadata !22), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %9, metadata !30, metadata !22), !dbg !31
  %10 = load i64, i64* %5, align 8, !dbg !32
  %11 = lshr i64 %10, 16, !dbg !33
  %12 = and i64 %11, 65535, !dbg !34
  store i64 %12, i64* %8, align 8, !dbg !35
  %13 = load i64, i64* %5, align 8, !dbg !36
  %14 = and i64 %13, 65535, !dbg !36
  store i64 %14, i64* %5, align 8, !dbg !36
  %15 = load i32, i32* %7, align 4, !dbg !37
  %16 = icmp eq i32 %15, 1, !dbg !39
  br i1 %16, label %17, label %43, !dbg !40

; <label>:17:                                     ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !41
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !41
  %20 = load i8, i8* %19, align 1, !dbg !41
  %21 = zext i8 %20 to i64, !dbg !41
  %22 = load i64, i64* %5, align 8, !dbg !43
  %23 = add i64 %22, %21, !dbg !43
  store i64 %23, i64* %5, align 8, !dbg !43
  %24 = load i64, i64* %5, align 8, !dbg !44
  %25 = icmp uge i64 %24, 65521, !dbg !46
  br i1 %25, label %26, label %29, !dbg !47

; <label>:26:                                     ; preds = %17
  %27 = load i64, i64* %5, align 8, !dbg !48
  %28 = sub i64 %27, 65521, !dbg !48
  store i64 %28, i64* %5, align 8, !dbg !48
  br label %29, !dbg !49

; <label>:29:                                     ; preds = %26, %17
  %30 = load i64, i64* %5, align 8, !dbg !50
  %31 = load i64, i64* %8, align 8, !dbg !51
  %32 = add i64 %31, %30, !dbg !51
  store i64 %32, i64* %8, align 8, !dbg !51
  %33 = load i64, i64* %8, align 8, !dbg !52
  %34 = icmp uge i64 %33, 65521, !dbg !54
  br i1 %34, label %35, label %38, !dbg !55

; <label>:35:                                     ; preds = %29
  %36 = load i64, i64* %8, align 8, !dbg !56
  %37 = sub i64 %36, 65521, !dbg !56
  store i64 %37, i64* %8, align 8, !dbg !56
  br label %38, !dbg !57

; <label>:38:                                     ; preds = %35, %29
  %39 = load i64, i64* %5, align 8, !dbg !58
  %40 = load i64, i64* %8, align 8, !dbg !59
  %41 = shl i64 %40, 16, !dbg !60
  %42 = or i64 %39, %41, !dbg !61
  store i64 %42, i64* %4, align 8, !dbg !62
  br label %422, !dbg !62

; <label>:43:                                     ; preds = %3
  %44 = load i8*, i8** %6, align 8, !dbg !63
  %45 = icmp eq i8* %44, null, !dbg !65
  br i1 %45, label %46, label %47, !dbg !66

; <label>:46:                                     ; preds = %43
  store i64 1, i64* %4, align 8, !dbg !67
  br label %422, !dbg !67

; <label>:47:                                     ; preds = %43
  %48 = load i32, i32* %7, align 4, !dbg !68
  %49 = icmp ult i32 %48, 16, !dbg !70
  br i1 %49, label %50, label %78, !dbg !71

; <label>:50:                                     ; preds = %47
  br label %51, !dbg !72

; <label>:51:                                     ; preds = %55, %50
  %52 = load i32, i32* %7, align 4, !dbg !74
  %53 = add i32 %52, -1, !dbg !74
  store i32 %53, i32* %7, align 4, !dbg !74
  %54 = icmp ne i32 %52, 0, !dbg !76
  br i1 %54, label %55, label %65, !dbg !76

; <label>:55:                                     ; preds = %51
  %56 = load i8*, i8** %6, align 8, !dbg !77
  %57 = getelementptr inbounds i8, i8* %56, i32 1, !dbg !77
  store i8* %57, i8** %6, align 8, !dbg !77
  %58 = load i8, i8* %56, align 1, !dbg !79
  %59 = zext i8 %58 to i64, !dbg !79
  %60 = load i64, i64* %5, align 8, !dbg !80
  %61 = add i64 %60, %59, !dbg !80
  store i64 %61, i64* %5, align 8, !dbg !80
  %62 = load i64, i64* %5, align 8, !dbg !81
  %63 = load i64, i64* %8, align 8, !dbg !82
  %64 = add i64 %63, %62, !dbg !82
  store i64 %64, i64* %8, align 8, !dbg !82
  br label %51, !dbg !83, !llvm.loop !85

; <label>:65:                                     ; preds = %51
  %66 = load i64, i64* %5, align 8, !dbg !86
  %67 = icmp uge i64 %66, 65521, !dbg !88
  br i1 %67, label %68, label %71, !dbg !89

; <label>:68:                                     ; preds = %65
  %69 = load i64, i64* %5, align 8, !dbg !90
  %70 = sub i64 %69, 65521, !dbg !90
  store i64 %70, i64* %5, align 8, !dbg !90
  br label %71, !dbg !91

; <label>:71:                                     ; preds = %68, %65
  %72 = load i64, i64* %8, align 8, !dbg !92
  %73 = urem i64 %72, 65521, !dbg !92
  store i64 %73, i64* %8, align 8, !dbg !92
  %74 = load i64, i64* %5, align 8, !dbg !93
  %75 = load i64, i64* %8, align 8, !dbg !94
  %76 = shl i64 %75, 16, !dbg !95
  %77 = or i64 %74, %76, !dbg !96
  store i64 %77, i64* %4, align 8, !dbg !97
  br label %422, !dbg !97

; <label>:78:                                     ; preds = %47
  br label %79, !dbg !98

; <label>:79:                                     ; preds = %236, %78
  %80 = load i32, i32* %7, align 4, !dbg !99
  %81 = icmp uge i32 %80, 5552, !dbg !101
  br i1 %81, label %82, label %241, !dbg !102

; <label>:82:                                     ; preds = %79
  %83 = load i32, i32* %7, align 4, !dbg !103
  %84 = sub i32 %83, 5552, !dbg !103
  store i32 %84, i32* %7, align 4, !dbg !103
  store i32 347, i32* %9, align 4, !dbg !105
  br label %85, !dbg !106, !llvm.loop !107

; <label>:85:                                     ; preds = %232, %82
  %86 = load i8*, i8** %6, align 8, !dbg !108
  %87 = getelementptr inbounds i8, i8* %86, i64 0, !dbg !111
  %88 = load i8, i8* %87, align 1, !dbg !111
  %89 = zext i8 %88 to i64, !dbg !111
  %90 = load i64, i64* %5, align 8, !dbg !112
  %91 = add i64 %90, %89, !dbg !112
  store i64 %91, i64* %5, align 8, !dbg !112
  %92 = load i64, i64* %5, align 8, !dbg !113
  %93 = load i64, i64* %8, align 8, !dbg !114
  %94 = add i64 %93, %92, !dbg !114
  store i64 %94, i64* %8, align 8, !dbg !114
  %95 = load i8*, i8** %6, align 8, !dbg !115
  %96 = getelementptr inbounds i8, i8* %95, i64 1, !dbg !117
  %97 = load i8, i8* %96, align 1, !dbg !117
  %98 = zext i8 %97 to i64, !dbg !117
  %99 = load i64, i64* %5, align 8, !dbg !118
  %100 = add i64 %99, %98, !dbg !118
  store i64 %100, i64* %5, align 8, !dbg !118
  %101 = load i64, i64* %5, align 8, !dbg !119
  %102 = load i64, i64* %8, align 8, !dbg !120
  %103 = add i64 %102, %101, !dbg !120
  store i64 %103, i64* %8, align 8, !dbg !120
  %104 = load i8*, i8** %6, align 8, !dbg !121
  %105 = getelementptr inbounds i8, i8* %104, i64 2, !dbg !123
  %106 = load i8, i8* %105, align 1, !dbg !123
  %107 = zext i8 %106 to i64, !dbg !123
  %108 = load i64, i64* %5, align 8, !dbg !124
  %109 = add i64 %108, %107, !dbg !124
  store i64 %109, i64* %5, align 8, !dbg !124
  %110 = load i64, i64* %5, align 8, !dbg !125
  %111 = load i64, i64* %8, align 8, !dbg !126
  %112 = add i64 %111, %110, !dbg !126
  store i64 %112, i64* %8, align 8, !dbg !126
  %113 = load i8*, i8** %6, align 8, !dbg !127
  %114 = getelementptr inbounds i8, i8* %113, i64 3, !dbg !129
  %115 = load i8, i8* %114, align 1, !dbg !129
  %116 = zext i8 %115 to i64, !dbg !129
  %117 = load i64, i64* %5, align 8, !dbg !130
  %118 = add i64 %117, %116, !dbg !130
  store i64 %118, i64* %5, align 8, !dbg !130
  %119 = load i64, i64* %5, align 8, !dbg !131
  %120 = load i64, i64* %8, align 8, !dbg !132
  %121 = add i64 %120, %119, !dbg !132
  store i64 %121, i64* %8, align 8, !dbg !132
  %122 = load i8*, i8** %6, align 8, !dbg !133
  %123 = getelementptr inbounds i8, i8* %122, i64 4, !dbg !135
  %124 = load i8, i8* %123, align 1, !dbg !135
  %125 = zext i8 %124 to i64, !dbg !135
  %126 = load i64, i64* %5, align 8, !dbg !136
  %127 = add i64 %126, %125, !dbg !136
  store i64 %127, i64* %5, align 8, !dbg !136
  %128 = load i64, i64* %5, align 8, !dbg !137
  %129 = load i64, i64* %8, align 8, !dbg !138
  %130 = add i64 %129, %128, !dbg !138
  store i64 %130, i64* %8, align 8, !dbg !138
  %131 = load i8*, i8** %6, align 8, !dbg !139
  %132 = getelementptr inbounds i8, i8* %131, i64 5, !dbg !141
  %133 = load i8, i8* %132, align 1, !dbg !141
  %134 = zext i8 %133 to i64, !dbg !141
  %135 = load i64, i64* %5, align 8, !dbg !142
  %136 = add i64 %135, %134, !dbg !142
  store i64 %136, i64* %5, align 8, !dbg !142
  %137 = load i64, i64* %5, align 8, !dbg !143
  %138 = load i64, i64* %8, align 8, !dbg !144
  %139 = add i64 %138, %137, !dbg !144
  store i64 %139, i64* %8, align 8, !dbg !144
  %140 = load i8*, i8** %6, align 8, !dbg !145
  %141 = getelementptr inbounds i8, i8* %140, i64 6, !dbg !147
  %142 = load i8, i8* %141, align 1, !dbg !147
  %143 = zext i8 %142 to i64, !dbg !147
  %144 = load i64, i64* %5, align 8, !dbg !148
  %145 = add i64 %144, %143, !dbg !148
  store i64 %145, i64* %5, align 8, !dbg !148
  %146 = load i64, i64* %5, align 8, !dbg !149
  %147 = load i64, i64* %8, align 8, !dbg !150
  %148 = add i64 %147, %146, !dbg !150
  store i64 %148, i64* %8, align 8, !dbg !150
  %149 = load i8*, i8** %6, align 8, !dbg !151
  %150 = getelementptr inbounds i8, i8* %149, i64 7, !dbg !153
  %151 = load i8, i8* %150, align 1, !dbg !153
  %152 = zext i8 %151 to i64, !dbg !153
  %153 = load i64, i64* %5, align 8, !dbg !154
  %154 = add i64 %153, %152, !dbg !154
  store i64 %154, i64* %5, align 8, !dbg !154
  %155 = load i64, i64* %5, align 8, !dbg !155
  %156 = load i64, i64* %8, align 8, !dbg !156
  %157 = add i64 %156, %155, !dbg !156
  store i64 %157, i64* %8, align 8, !dbg !156
  %158 = load i8*, i8** %6, align 8, !dbg !157
  %159 = getelementptr inbounds i8, i8* %158, i64 8, !dbg !159
  %160 = load i8, i8* %159, align 1, !dbg !159
  %161 = zext i8 %160 to i64, !dbg !159
  %162 = load i64, i64* %5, align 8, !dbg !160
  %163 = add i64 %162, %161, !dbg !160
  store i64 %163, i64* %5, align 8, !dbg !160
  %164 = load i64, i64* %5, align 8, !dbg !161
  %165 = load i64, i64* %8, align 8, !dbg !162
  %166 = add i64 %165, %164, !dbg !162
  store i64 %166, i64* %8, align 8, !dbg !162
  %167 = load i8*, i8** %6, align 8, !dbg !163
  %168 = getelementptr inbounds i8, i8* %167, i64 9, !dbg !165
  %169 = load i8, i8* %168, align 1, !dbg !165
  %170 = zext i8 %169 to i64, !dbg !165
  %171 = load i64, i64* %5, align 8, !dbg !166
  %172 = add i64 %171, %170, !dbg !166
  store i64 %172, i64* %5, align 8, !dbg !166
  %173 = load i64, i64* %5, align 8, !dbg !167
  %174 = load i64, i64* %8, align 8, !dbg !168
  %175 = add i64 %174, %173, !dbg !168
  store i64 %175, i64* %8, align 8, !dbg !168
  %176 = load i8*, i8** %6, align 8, !dbg !169
  %177 = getelementptr inbounds i8, i8* %176, i64 10, !dbg !171
  %178 = load i8, i8* %177, align 1, !dbg !171
  %179 = zext i8 %178 to i64, !dbg !171
  %180 = load i64, i64* %5, align 8, !dbg !172
  %181 = add i64 %180, %179, !dbg !172
  store i64 %181, i64* %5, align 8, !dbg !172
  %182 = load i64, i64* %5, align 8, !dbg !173
  %183 = load i64, i64* %8, align 8, !dbg !174
  %184 = add i64 %183, %182, !dbg !174
  store i64 %184, i64* %8, align 8, !dbg !174
  %185 = load i8*, i8** %6, align 8, !dbg !175
  %186 = getelementptr inbounds i8, i8* %185, i64 11, !dbg !177
  %187 = load i8, i8* %186, align 1, !dbg !177
  %188 = zext i8 %187 to i64, !dbg !177
  %189 = load i64, i64* %5, align 8, !dbg !178
  %190 = add i64 %189, %188, !dbg !178
  store i64 %190, i64* %5, align 8, !dbg !178
  %191 = load i64, i64* %5, align 8, !dbg !179
  %192 = load i64, i64* %8, align 8, !dbg !180
  %193 = add i64 %192, %191, !dbg !180
  store i64 %193, i64* %8, align 8, !dbg !180
  %194 = load i8*, i8** %6, align 8, !dbg !181
  %195 = getelementptr inbounds i8, i8* %194, i64 12, !dbg !183
  %196 = load i8, i8* %195, align 1, !dbg !183
  %197 = zext i8 %196 to i64, !dbg !183
  %198 = load i64, i64* %5, align 8, !dbg !184
  %199 = add i64 %198, %197, !dbg !184
  store i64 %199, i64* %5, align 8, !dbg !184
  %200 = load i64, i64* %5, align 8, !dbg !185
  %201 = load i64, i64* %8, align 8, !dbg !186
  %202 = add i64 %201, %200, !dbg !186
  store i64 %202, i64* %8, align 8, !dbg !186
  %203 = load i8*, i8** %6, align 8, !dbg !187
  %204 = getelementptr inbounds i8, i8* %203, i64 13, !dbg !189
  %205 = load i8, i8* %204, align 1, !dbg !189
  %206 = zext i8 %205 to i64, !dbg !189
  %207 = load i64, i64* %5, align 8, !dbg !190
  %208 = add i64 %207, %206, !dbg !190
  store i64 %208, i64* %5, align 8, !dbg !190
  %209 = load i64, i64* %5, align 8, !dbg !191
  %210 = load i64, i64* %8, align 8, !dbg !192
  %211 = add i64 %210, %209, !dbg !192
  store i64 %211, i64* %8, align 8, !dbg !192
  %212 = load i8*, i8** %6, align 8, !dbg !193
  %213 = getelementptr inbounds i8, i8* %212, i64 14, !dbg !195
  %214 = load i8, i8* %213, align 1, !dbg !195
  %215 = zext i8 %214 to i64, !dbg !195
  %216 = load i64, i64* %5, align 8, !dbg !196
  %217 = add i64 %216, %215, !dbg !196
  store i64 %217, i64* %5, align 8, !dbg !196
  %218 = load i64, i64* %5, align 8, !dbg !197
  %219 = load i64, i64* %8, align 8, !dbg !198
  %220 = add i64 %219, %218, !dbg !198
  store i64 %220, i64* %8, align 8, !dbg !198
  %221 = load i8*, i8** %6, align 8, !dbg !199
  %222 = getelementptr inbounds i8, i8* %221, i64 15, !dbg !201
  %223 = load i8, i8* %222, align 1, !dbg !201
  %224 = zext i8 %223 to i64, !dbg !201
  %225 = load i64, i64* %5, align 8, !dbg !202
  %226 = add i64 %225, %224, !dbg !202
  store i64 %226, i64* %5, align 8, !dbg !202
  %227 = load i64, i64* %5, align 8, !dbg !203
  %228 = load i64, i64* %8, align 8, !dbg !204
  %229 = add i64 %228, %227, !dbg !204
  store i64 %229, i64* %8, align 8, !dbg !204
  %230 = load i8*, i8** %6, align 8, !dbg !205
  %231 = getelementptr inbounds i8, i8* %230, i64 16, !dbg !205
  store i8* %231, i8** %6, align 8, !dbg !205
  br label %232, !dbg !206

; <label>:232:                                    ; preds = %85
  %233 = load i32, i32* %9, align 4, !dbg !207
  %234 = add i32 %233, -1, !dbg !207
  store i32 %234, i32* %9, align 4, !dbg !207
  %235 = icmp ne i32 %234, 0, !dbg !209
  br i1 %235, label %85, label %236, !dbg !209, !llvm.loop !107

; <label>:236:                                    ; preds = %232
  %237 = load i64, i64* %5, align 8, !dbg !210
  %238 = urem i64 %237, 65521, !dbg !210
  store i64 %238, i64* %5, align 8, !dbg !210
  %239 = load i64, i64* %8, align 8, !dbg !211
  %240 = urem i64 %239, 65521, !dbg !211
  store i64 %240, i64* %8, align 8, !dbg !211
  br label %79, !dbg !212, !llvm.loop !214

; <label>:241:                                    ; preds = %79
  %242 = load i32, i32* %7, align 4, !dbg !215
  %243 = icmp ne i32 %242, 0, !dbg !215
  br i1 %243, label %244, label %417, !dbg !217

; <label>:244:                                    ; preds = %241
  br label %245, !dbg !218

; <label>:245:                                    ; preds = %248, %244
  %246 = load i32, i32* %7, align 4, !dbg !220
  %247 = icmp uge i32 %246, 16, !dbg !222
  br i1 %247, label %248, label %397, !dbg !223

; <label>:248:                                    ; preds = %245
  %249 = load i32, i32* %7, align 4, !dbg !224
  %250 = sub i32 %249, 16, !dbg !224
  store i32 %250, i32* %7, align 4, !dbg !224
  %251 = load i8*, i8** %6, align 8, !dbg !226
  %252 = getelementptr inbounds i8, i8* %251, i64 0, !dbg !228
  %253 = load i8, i8* %252, align 1, !dbg !228
  %254 = zext i8 %253 to i64, !dbg !228
  %255 = load i64, i64* %5, align 8, !dbg !229
  %256 = add i64 %255, %254, !dbg !229
  store i64 %256, i64* %5, align 8, !dbg !229
  %257 = load i64, i64* %5, align 8, !dbg !230
  %258 = load i64, i64* %8, align 8, !dbg !231
  %259 = add i64 %258, %257, !dbg !231
  store i64 %259, i64* %8, align 8, !dbg !231
  %260 = load i8*, i8** %6, align 8, !dbg !232
  %261 = getelementptr inbounds i8, i8* %260, i64 1, !dbg !234
  %262 = load i8, i8* %261, align 1, !dbg !234
  %263 = zext i8 %262 to i64, !dbg !234
  %264 = load i64, i64* %5, align 8, !dbg !235
  %265 = add i64 %264, %263, !dbg !235
  store i64 %265, i64* %5, align 8, !dbg !235
  %266 = load i64, i64* %5, align 8, !dbg !236
  %267 = load i64, i64* %8, align 8, !dbg !237
  %268 = add i64 %267, %266, !dbg !237
  store i64 %268, i64* %8, align 8, !dbg !237
  %269 = load i8*, i8** %6, align 8, !dbg !238
  %270 = getelementptr inbounds i8, i8* %269, i64 2, !dbg !240
  %271 = load i8, i8* %270, align 1, !dbg !240
  %272 = zext i8 %271 to i64, !dbg !240
  %273 = load i64, i64* %5, align 8, !dbg !241
  %274 = add i64 %273, %272, !dbg !241
  store i64 %274, i64* %5, align 8, !dbg !241
  %275 = load i64, i64* %5, align 8, !dbg !242
  %276 = load i64, i64* %8, align 8, !dbg !243
  %277 = add i64 %276, %275, !dbg !243
  store i64 %277, i64* %8, align 8, !dbg !243
  %278 = load i8*, i8** %6, align 8, !dbg !244
  %279 = getelementptr inbounds i8, i8* %278, i64 3, !dbg !246
  %280 = load i8, i8* %279, align 1, !dbg !246
  %281 = zext i8 %280 to i64, !dbg !246
  %282 = load i64, i64* %5, align 8, !dbg !247
  %283 = add i64 %282, %281, !dbg !247
  store i64 %283, i64* %5, align 8, !dbg !247
  %284 = load i64, i64* %5, align 8, !dbg !248
  %285 = load i64, i64* %8, align 8, !dbg !249
  %286 = add i64 %285, %284, !dbg !249
  store i64 %286, i64* %8, align 8, !dbg !249
  %287 = load i8*, i8** %6, align 8, !dbg !250
  %288 = getelementptr inbounds i8, i8* %287, i64 4, !dbg !252
  %289 = load i8, i8* %288, align 1, !dbg !252
  %290 = zext i8 %289 to i64, !dbg !252
  %291 = load i64, i64* %5, align 8, !dbg !253
  %292 = add i64 %291, %290, !dbg !253
  store i64 %292, i64* %5, align 8, !dbg !253
  %293 = load i64, i64* %5, align 8, !dbg !254
  %294 = load i64, i64* %8, align 8, !dbg !255
  %295 = add i64 %294, %293, !dbg !255
  store i64 %295, i64* %8, align 8, !dbg !255
  %296 = load i8*, i8** %6, align 8, !dbg !256
  %297 = getelementptr inbounds i8, i8* %296, i64 5, !dbg !258
  %298 = load i8, i8* %297, align 1, !dbg !258
  %299 = zext i8 %298 to i64, !dbg !258
  %300 = load i64, i64* %5, align 8, !dbg !259
  %301 = add i64 %300, %299, !dbg !259
  store i64 %301, i64* %5, align 8, !dbg !259
  %302 = load i64, i64* %5, align 8, !dbg !260
  %303 = load i64, i64* %8, align 8, !dbg !261
  %304 = add i64 %303, %302, !dbg !261
  store i64 %304, i64* %8, align 8, !dbg !261
  %305 = load i8*, i8** %6, align 8, !dbg !262
  %306 = getelementptr inbounds i8, i8* %305, i64 6, !dbg !264
  %307 = load i8, i8* %306, align 1, !dbg !264
  %308 = zext i8 %307 to i64, !dbg !264
  %309 = load i64, i64* %5, align 8, !dbg !265
  %310 = add i64 %309, %308, !dbg !265
  store i64 %310, i64* %5, align 8, !dbg !265
  %311 = load i64, i64* %5, align 8, !dbg !266
  %312 = load i64, i64* %8, align 8, !dbg !267
  %313 = add i64 %312, %311, !dbg !267
  store i64 %313, i64* %8, align 8, !dbg !267
  %314 = load i8*, i8** %6, align 8, !dbg !268
  %315 = getelementptr inbounds i8, i8* %314, i64 7, !dbg !270
  %316 = load i8, i8* %315, align 1, !dbg !270
  %317 = zext i8 %316 to i64, !dbg !270
  %318 = load i64, i64* %5, align 8, !dbg !271
  %319 = add i64 %318, %317, !dbg !271
  store i64 %319, i64* %5, align 8, !dbg !271
  %320 = load i64, i64* %5, align 8, !dbg !272
  %321 = load i64, i64* %8, align 8, !dbg !273
  %322 = add i64 %321, %320, !dbg !273
  store i64 %322, i64* %8, align 8, !dbg !273
  %323 = load i8*, i8** %6, align 8, !dbg !274
  %324 = getelementptr inbounds i8, i8* %323, i64 8, !dbg !276
  %325 = load i8, i8* %324, align 1, !dbg !276
  %326 = zext i8 %325 to i64, !dbg !276
  %327 = load i64, i64* %5, align 8, !dbg !277
  %328 = add i64 %327, %326, !dbg !277
  store i64 %328, i64* %5, align 8, !dbg !277
  %329 = load i64, i64* %5, align 8, !dbg !278
  %330 = load i64, i64* %8, align 8, !dbg !279
  %331 = add i64 %330, %329, !dbg !279
  store i64 %331, i64* %8, align 8, !dbg !279
  %332 = load i8*, i8** %6, align 8, !dbg !280
  %333 = getelementptr inbounds i8, i8* %332, i64 9, !dbg !282
  %334 = load i8, i8* %333, align 1, !dbg !282
  %335 = zext i8 %334 to i64, !dbg !282
  %336 = load i64, i64* %5, align 8, !dbg !283
  %337 = add i64 %336, %335, !dbg !283
  store i64 %337, i64* %5, align 8, !dbg !283
  %338 = load i64, i64* %5, align 8, !dbg !284
  %339 = load i64, i64* %8, align 8, !dbg !285
  %340 = add i64 %339, %338, !dbg !285
  store i64 %340, i64* %8, align 8, !dbg !285
  %341 = load i8*, i8** %6, align 8, !dbg !286
  %342 = getelementptr inbounds i8, i8* %341, i64 10, !dbg !288
  %343 = load i8, i8* %342, align 1, !dbg !288
  %344 = zext i8 %343 to i64, !dbg !288
  %345 = load i64, i64* %5, align 8, !dbg !289
  %346 = add i64 %345, %344, !dbg !289
  store i64 %346, i64* %5, align 8, !dbg !289
  %347 = load i64, i64* %5, align 8, !dbg !290
  %348 = load i64, i64* %8, align 8, !dbg !291
  %349 = add i64 %348, %347, !dbg !291
  store i64 %349, i64* %8, align 8, !dbg !291
  %350 = load i8*, i8** %6, align 8, !dbg !292
  %351 = getelementptr inbounds i8, i8* %350, i64 11, !dbg !294
  %352 = load i8, i8* %351, align 1, !dbg !294
  %353 = zext i8 %352 to i64, !dbg !294
  %354 = load i64, i64* %5, align 8, !dbg !295
  %355 = add i64 %354, %353, !dbg !295
  store i64 %355, i64* %5, align 8, !dbg !295
  %356 = load i64, i64* %5, align 8, !dbg !296
  %357 = load i64, i64* %8, align 8, !dbg !297
  %358 = add i64 %357, %356, !dbg !297
  store i64 %358, i64* %8, align 8, !dbg !297
  %359 = load i8*, i8** %6, align 8, !dbg !298
  %360 = getelementptr inbounds i8, i8* %359, i64 12, !dbg !300
  %361 = load i8, i8* %360, align 1, !dbg !300
  %362 = zext i8 %361 to i64, !dbg !300
  %363 = load i64, i64* %5, align 8, !dbg !301
  %364 = add i64 %363, %362, !dbg !301
  store i64 %364, i64* %5, align 8, !dbg !301
  %365 = load i64, i64* %5, align 8, !dbg !302
  %366 = load i64, i64* %8, align 8, !dbg !303
  %367 = add i64 %366, %365, !dbg !303
  store i64 %367, i64* %8, align 8, !dbg !303
  %368 = load i8*, i8** %6, align 8, !dbg !304
  %369 = getelementptr inbounds i8, i8* %368, i64 13, !dbg !306
  %370 = load i8, i8* %369, align 1, !dbg !306
  %371 = zext i8 %370 to i64, !dbg !306
  %372 = load i64, i64* %5, align 8, !dbg !307
  %373 = add i64 %372, %371, !dbg !307
  store i64 %373, i64* %5, align 8, !dbg !307
  %374 = load i64, i64* %5, align 8, !dbg !308
  %375 = load i64, i64* %8, align 8, !dbg !309
  %376 = add i64 %375, %374, !dbg !309
  store i64 %376, i64* %8, align 8, !dbg !309
  %377 = load i8*, i8** %6, align 8, !dbg !310
  %378 = getelementptr inbounds i8, i8* %377, i64 14, !dbg !312
  %379 = load i8, i8* %378, align 1, !dbg !312
  %380 = zext i8 %379 to i64, !dbg !312
  %381 = load i64, i64* %5, align 8, !dbg !313
  %382 = add i64 %381, %380, !dbg !313
  store i64 %382, i64* %5, align 8, !dbg !313
  %383 = load i64, i64* %5, align 8, !dbg !314
  %384 = load i64, i64* %8, align 8, !dbg !315
  %385 = add i64 %384, %383, !dbg !315
  store i64 %385, i64* %8, align 8, !dbg !315
  %386 = load i8*, i8** %6, align 8, !dbg !316
  %387 = getelementptr inbounds i8, i8* %386, i64 15, !dbg !318
  %388 = load i8, i8* %387, align 1, !dbg !318
  %389 = zext i8 %388 to i64, !dbg !318
  %390 = load i64, i64* %5, align 8, !dbg !319
  %391 = add i64 %390, %389, !dbg !319
  store i64 %391, i64* %5, align 8, !dbg !319
  %392 = load i64, i64* %5, align 8, !dbg !320
  %393 = load i64, i64* %8, align 8, !dbg !321
  %394 = add i64 %393, %392, !dbg !321
  store i64 %394, i64* %8, align 8, !dbg !321
  %395 = load i8*, i8** %6, align 8, !dbg !322
  %396 = getelementptr inbounds i8, i8* %395, i64 16, !dbg !322
  store i8* %396, i8** %6, align 8, !dbg !322
  br label %245, !dbg !323, !llvm.loop !325

; <label>:397:                                    ; preds = %245
  br label %398, !dbg !326

; <label>:398:                                    ; preds = %402, %397
  %399 = load i32, i32* %7, align 4, !dbg !327
  %400 = add i32 %399, -1, !dbg !327
  store i32 %400, i32* %7, align 4, !dbg !327
  %401 = icmp ne i32 %399, 0, !dbg !328
  br i1 %401, label %402, label %412, !dbg !328

; <label>:402:                                    ; preds = %398
  %403 = load i8*, i8** %6, align 8, !dbg !329
  %404 = getelementptr inbounds i8, i8* %403, i32 1, !dbg !329
  store i8* %404, i8** %6, align 8, !dbg !329
  %405 = load i8, i8* %403, align 1, !dbg !331
  %406 = zext i8 %405 to i64, !dbg !331
  %407 = load i64, i64* %5, align 8, !dbg !332
  %408 = add i64 %407, %406, !dbg !332
  store i64 %408, i64* %5, align 8, !dbg !332
  %409 = load i64, i64* %5, align 8, !dbg !333
  %410 = load i64, i64* %8, align 8, !dbg !334
  %411 = add i64 %410, %409, !dbg !334
  store i64 %411, i64* %8, align 8, !dbg !334
  br label %398, !dbg !335, !llvm.loop !336

; <label>:412:                                    ; preds = %398
  %413 = load i64, i64* %5, align 8, !dbg !337
  %414 = urem i64 %413, 65521, !dbg !337
  store i64 %414, i64* %5, align 8, !dbg !337
  %415 = load i64, i64* %8, align 8, !dbg !338
  %416 = urem i64 %415, 65521, !dbg !338
  store i64 %416, i64* %8, align 8, !dbg !338
  br label %417, !dbg !339

; <label>:417:                                    ; preds = %412, %241
  %418 = load i64, i64* %5, align 8, !dbg !340
  %419 = load i64, i64* %8, align 8, !dbg !341
  %420 = shl i64 %419, 16, !dbg !342
  %421 = or i64 %418, %420, !dbg !343
  store i64 %421, i64* %4, align 8, !dbg !344
  br label %422, !dbg !344

; <label>:422:                                    ; preds = %417, %71, %46, %38
  %423 = load i64, i64* %4, align 8, !dbg !345
  ret i64 %423, !dbg !345
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i64 @adler32_combine(i64, i64, i64) #0 !dbg !346 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !350, metadata !22), !dbg !351
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !352, metadata !22), !dbg !353
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !354, metadata !22), !dbg !355
  %7 = load i64, i64* %4, align 8, !dbg !356
  %8 = load i64, i64* %5, align 8, !dbg !357
  %9 = load i64, i64* %6, align 8, !dbg !358
  %10 = call i64 @adler32_combine_(i64 %7, i64 %8, i64 %9), !dbg !359
  ret i64 %10, !dbg !360
}

; Function Attrs: nounwind uwtable
define internal i64 @adler32_combine_(i64, i64, i64) #0 !dbg !361 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !362, metadata !22), !dbg !363
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !364, metadata !22), !dbg !365
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !366, metadata !22), !dbg !367
  call void @llvm.dbg.declare(metadata i64* %8, metadata !368, metadata !22), !dbg !369
  call void @llvm.dbg.declare(metadata i64* %9, metadata !370, metadata !22), !dbg !371
  call void @llvm.dbg.declare(metadata i32* %10, metadata !372, metadata !22), !dbg !373
  %11 = load i64, i64* %7, align 8, !dbg !374
  %12 = icmp slt i64 %11, 0, !dbg !376
  br i1 %12, label %13, label %14, !dbg !377

; <label>:13:                                     ; preds = %3
  store i64 4294967295, i64* %4, align 8, !dbg !378
  br label %74, !dbg !378

; <label>:14:                                     ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !379
  %16 = srem i64 %15, 65521, !dbg !379
  store i64 %16, i64* %7, align 8, !dbg !379
  %17 = load i64, i64* %7, align 8, !dbg !380
  %18 = trunc i64 %17 to i32, !dbg !381
  store i32 %18, i32* %10, align 4, !dbg !382
  %19 = load i64, i64* %5, align 8, !dbg !383
  %20 = and i64 %19, 65535, !dbg !384
  store i64 %20, i64* %8, align 8, !dbg !385
  %21 = load i32, i32* %10, align 4, !dbg !386
  %22 = zext i32 %21 to i64, !dbg !386
  %23 = load i64, i64* %8, align 8, !dbg !387
  %24 = mul i64 %22, %23, !dbg !388
  store i64 %24, i64* %9, align 8, !dbg !389
  %25 = load i64, i64* %9, align 8, !dbg !390
  %26 = urem i64 %25, 65521, !dbg !390
  store i64 %26, i64* %9, align 8, !dbg !390
  %27 = load i64, i64* %6, align 8, !dbg !391
  %28 = and i64 %27, 65535, !dbg !392
  %29 = add i64 %28, 65521, !dbg !393
  %30 = sub i64 %29, 1, !dbg !394
  %31 = load i64, i64* %8, align 8, !dbg !395
  %32 = add i64 %31, %30, !dbg !395
  store i64 %32, i64* %8, align 8, !dbg !395
  %33 = load i64, i64* %5, align 8, !dbg !396
  %34 = lshr i64 %33, 16, !dbg !397
  %35 = and i64 %34, 65535, !dbg !398
  %36 = load i64, i64* %6, align 8, !dbg !399
  %37 = lshr i64 %36, 16, !dbg !400
  %38 = and i64 %37, 65535, !dbg !401
  %39 = add i64 %35, %38, !dbg !402
  %40 = add i64 %39, 65521, !dbg !403
  %41 = load i32, i32* %10, align 4, !dbg !404
  %42 = zext i32 %41 to i64, !dbg !404
  %43 = sub i64 %40, %42, !dbg !405
  %44 = load i64, i64* %9, align 8, !dbg !406
  %45 = add i64 %44, %43, !dbg !406
  store i64 %45, i64* %9, align 8, !dbg !406
  %46 = load i64, i64* %8, align 8, !dbg !407
  %47 = icmp uge i64 %46, 65521, !dbg !409
  br i1 %47, label %48, label %51, !dbg !410

; <label>:48:                                     ; preds = %14
  %49 = load i64, i64* %8, align 8, !dbg !411
  %50 = sub i64 %49, 65521, !dbg !411
  store i64 %50, i64* %8, align 8, !dbg !411
  br label %51, !dbg !413

; <label>:51:                                     ; preds = %48, %14
  %52 = load i64, i64* %8, align 8, !dbg !414
  %53 = icmp uge i64 %52, 65521, !dbg !416
  br i1 %53, label %54, label %57, !dbg !417

; <label>:54:                                     ; preds = %51
  %55 = load i64, i64* %8, align 8, !dbg !418
  %56 = sub i64 %55, 65521, !dbg !418
  store i64 %56, i64* %8, align 8, !dbg !418
  br label %57, !dbg !420

; <label>:57:                                     ; preds = %54, %51
  %58 = load i64, i64* %9, align 8, !dbg !421
  %59 = icmp uge i64 %58, 131042, !dbg !423
  br i1 %59, label %60, label %63, !dbg !424

; <label>:60:                                     ; preds = %57
  %61 = load i64, i64* %9, align 8, !dbg !425
  %62 = sub i64 %61, 131042, !dbg !425
  store i64 %62, i64* %9, align 8, !dbg !425
  br label %63, !dbg !427

; <label>:63:                                     ; preds = %60, %57
  %64 = load i64, i64* %9, align 8, !dbg !428
  %65 = icmp uge i64 %64, 65521, !dbg !430
  br i1 %65, label %66, label %69, !dbg !431

; <label>:66:                                     ; preds = %63
  %67 = load i64, i64* %9, align 8, !dbg !432
  %68 = sub i64 %67, 65521, !dbg !432
  store i64 %68, i64* %9, align 8, !dbg !432
  br label %69, !dbg !434

; <label>:69:                                     ; preds = %66, %63
  %70 = load i64, i64* %8, align 8, !dbg !435
  %71 = load i64, i64* %9, align 8, !dbg !436
  %72 = shl i64 %71, 16, !dbg !437
  %73 = or i64 %70, %72, !dbg !438
  store i64 %73, i64* %4, align 8, !dbg !439
  br label %74, !dbg !439

; <label>:74:                                     ; preds = %69, %13
  %75 = load i64, i64* %4, align 8, !dbg !440
  ret i64 %75, !dbg !440
}

; Function Attrs: nounwind uwtable
define i64 @adler32_combine64(i64, i64, i64) #0 !dbg !441 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !442, metadata !22), !dbg !443
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !444, metadata !22), !dbg !445
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !446, metadata !22), !dbg !447
  %7 = load i64, i64* %4, align 8, !dbg !448
  %8 = load i64, i64* %5, align 8, !dbg !449
  %9 = load i64, i64* %6, align 8, !dbg !450
  %10 = call i64 @adler32_combine_(i64 %7, i64 %8, i64 %9), !dbg !451
  ret i64 %10, !dbg !452
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "[inter]third-party--zlib-1.2.7--adler32.o.i", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!8 = distinct !DISubprogram(name: "adler32", scope: !9, file: !9, line: 65, type: !10, isLocal: false, isDefinition: true, scopeLine: 69, isOptimized: false, unit: !0, variables: !2)
!9 = !DIFile(filename: "adler32.c", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !15, !20}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !13, line: 368, baseType: !14)
!13 = !DIFile(filename: "zconf.h", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!14 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bytef", file: !13, line: 374, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !13, line: 365, baseType: !19)
!19 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "uInt", file: !13, line: 367, baseType: !4)
!21 = !DILocalVariable(name: "adler", arg: 1, scope: !8, file: !9, line: 66, type: !12)
!22 = !DIExpression()
!23 = !DILocation(line: 66, column: 11, scope: !8)
!24 = !DILocalVariable(name: "buf", arg: 2, scope: !8, file: !9, line: 67, type: !15)
!25 = !DILocation(line: 67, column: 18, scope: !8)
!26 = !DILocalVariable(name: "len", arg: 3, scope: !8, file: !9, line: 68, type: !20)
!27 = !DILocation(line: 68, column: 10, scope: !8)
!28 = !DILocalVariable(name: "sum2", scope: !8, file: !9, line: 70, type: !14)
!29 = !DILocation(line: 70, column: 19, scope: !8)
!30 = !DILocalVariable(name: "n", scope: !8, file: !9, line: 71, type: !4)
!31 = !DILocation(line: 71, column: 14, scope: !8)
!32 = !DILocation(line: 74, column: 13, scope: !8)
!33 = !DILocation(line: 74, column: 19, scope: !8)
!34 = !DILocation(line: 74, column: 26, scope: !8)
!35 = !DILocation(line: 74, column: 10, scope: !8)
!36 = !DILocation(line: 75, column: 11, scope: !8)
!37 = !DILocation(line: 78, column: 9, scope: !38)
!38 = distinct !DILexicalBlock(scope: !8, file: !9, line: 78, column: 9)
!39 = !DILocation(line: 78, column: 13, scope: !38)
!40 = !DILocation(line: 78, column: 9, scope: !8)
!41 = !DILocation(line: 79, column: 18, scope: !42)
!42 = distinct !DILexicalBlock(scope: !38, file: !9, line: 78, column: 19)
!43 = !DILocation(line: 79, column: 15, scope: !42)
!44 = !DILocation(line: 80, column: 13, scope: !45)
!45 = distinct !DILexicalBlock(scope: !42, file: !9, line: 80, column: 13)
!46 = !DILocation(line: 80, column: 19, scope: !45)
!47 = !DILocation(line: 80, column: 13, scope: !42)
!48 = !DILocation(line: 81, column: 19, scope: !45)
!49 = !DILocation(line: 81, column: 13, scope: !45)
!50 = !DILocation(line: 82, column: 17, scope: !42)
!51 = !DILocation(line: 82, column: 14, scope: !42)
!52 = !DILocation(line: 83, column: 13, scope: !53)
!53 = distinct !DILexicalBlock(scope: !42, file: !9, line: 83, column: 13)
!54 = !DILocation(line: 83, column: 18, scope: !53)
!55 = !DILocation(line: 83, column: 13, scope: !42)
!56 = !DILocation(line: 84, column: 18, scope: !53)
!57 = !DILocation(line: 84, column: 13, scope: !53)
!58 = !DILocation(line: 85, column: 16, scope: !42)
!59 = !DILocation(line: 85, column: 25, scope: !42)
!60 = !DILocation(line: 85, column: 30, scope: !42)
!61 = !DILocation(line: 85, column: 22, scope: !42)
!62 = !DILocation(line: 85, column: 9, scope: !42)
!63 = !DILocation(line: 89, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !8, file: !9, line: 89, column: 9)
!65 = !DILocation(line: 89, column: 13, scope: !64)
!66 = !DILocation(line: 89, column: 9, scope: !8)
!67 = !DILocation(line: 90, column: 9, scope: !64)
!68 = !DILocation(line: 93, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !8, file: !9, line: 93, column: 9)
!70 = !DILocation(line: 93, column: 13, scope: !69)
!71 = !DILocation(line: 93, column: 9, scope: !8)
!72 = !DILocation(line: 94, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !9, line: 93, column: 19)
!74 = !DILocation(line: 94, column: 19, scope: !75)
!75 = !DILexicalBlockFile(scope: !73, file: !9, discriminator: 1)
!76 = !DILocation(line: 94, column: 9, scope: !75)
!77 = !DILocation(line: 95, column: 26, scope: !78)
!78 = distinct !DILexicalBlock(scope: !73, file: !9, line: 94, column: 23)
!79 = !DILocation(line: 95, column: 22, scope: !78)
!80 = !DILocation(line: 95, column: 19, scope: !78)
!81 = !DILocation(line: 96, column: 21, scope: !78)
!82 = !DILocation(line: 96, column: 18, scope: !78)
!83 = !DILocation(line: 94, column: 9, scope: !84)
!84 = !DILexicalBlockFile(scope: !73, file: !9, discriminator: 2)
!85 = distinct !{!85, !72}
!86 = !DILocation(line: 98, column: 13, scope: !87)
!87 = distinct !DILexicalBlock(scope: !73, file: !9, line: 98, column: 13)
!88 = !DILocation(line: 98, column: 19, scope: !87)
!89 = !DILocation(line: 98, column: 13, scope: !73)
!90 = !DILocation(line: 99, column: 19, scope: !87)
!91 = !DILocation(line: 99, column: 13, scope: !87)
!92 = !DILocation(line: 100, column: 14, scope: !73)
!93 = !DILocation(line: 101, column: 16, scope: !73)
!94 = !DILocation(line: 101, column: 25, scope: !73)
!95 = !DILocation(line: 101, column: 30, scope: !73)
!96 = !DILocation(line: 101, column: 22, scope: !73)
!97 = !DILocation(line: 101, column: 9, scope: !73)
!98 = !DILocation(line: 105, column: 5, scope: !8)
!99 = !DILocation(line: 105, column: 12, scope: !100)
!100 = !DILexicalBlockFile(scope: !8, file: !9, discriminator: 1)
!101 = !DILocation(line: 105, column: 16, scope: !100)
!102 = !DILocation(line: 105, column: 5, scope: !100)
!103 = !DILocation(line: 106, column: 13, scope: !104)
!104 = distinct !DILexicalBlock(scope: !8, file: !9, line: 105, column: 25)
!105 = !DILocation(line: 107, column: 11, scope: !104)
!106 = !DILocation(line: 108, column: 9, scope: !104)
!107 = distinct !{!107, !106}
!108 = !DILocation(line: 109, column: 24, scope: !109)
!109 = distinct !DILexicalBlock(scope: !110, file: !9, line: 109, column: 13)
!110 = distinct !DILexicalBlock(scope: !104, file: !9, line: 108, column: 12)
!111 = !DILocation(line: 109, column: 23, scope: !109)
!112 = !DILocation(line: 109, column: 20, scope: !109)
!113 = !DILocation(line: 109, column: 41, scope: !109)
!114 = !DILocation(line: 109, column: 38, scope: !109)
!115 = !DILocation(line: 109, column: 61, scope: !116)
!116 = distinct !DILexicalBlock(scope: !110, file: !9, line: 109, column: 50)
!117 = !DILocation(line: 109, column: 60, scope: !116)
!118 = !DILocation(line: 109, column: 57, scope: !116)
!119 = !DILocation(line: 109, column: 81, scope: !116)
!120 = !DILocation(line: 109, column: 78, scope: !116)
!121 = !DILocation(line: 109, column: 102, scope: !122)
!122 = distinct !DILexicalBlock(scope: !110, file: !9, line: 109, column: 91)
!123 = !DILocation(line: 109, column: 101, scope: !122)
!124 = !DILocation(line: 109, column: 98, scope: !122)
!125 = !DILocation(line: 109, column: 122, scope: !122)
!126 = !DILocation(line: 109, column: 119, scope: !122)
!127 = !DILocation(line: 109, column: 142, scope: !128)
!128 = distinct !DILexicalBlock(scope: !110, file: !9, line: 109, column: 131)
!129 = !DILocation(line: 109, column: 141, scope: !128)
!130 = !DILocation(line: 109, column: 138, scope: !128)
!131 = !DILocation(line: 109, column: 165, scope: !128)
!132 = !DILocation(line: 109, column: 162, scope: !128)
!133 = !DILocation(line: 109, column: 187, scope: !134)
!134 = distinct !DILexicalBlock(scope: !110, file: !9, line: 109, column: 176)
!135 = !DILocation(line: 109, column: 186, scope: !134)
!136 = !DILocation(line: 109, column: 183, scope: !134)
!137 = !DILocation(line: 109, column: 207, scope: !134)
!138 = !DILocation(line: 109, column: 204, scope: !134)
!139 = !DILocation(line: 109, column: 227, scope: !140)
!140 = distinct !DILexicalBlock(scope: !110, file: !9, line: 109, column: 216)
!141 = !DILocation(line: 109, column: 226, scope: !140)
!142 = !DILocation(line: 109, column: 223, scope: !140)
!143 = !DILocation(line: 109, column: 250, scope: !140)
!144 = !DILocation(line: 109, column: 247, scope: !140)
!145 = !DILocation(line: 109, column: 271, scope: !146)
!146 = distinct !DILexicalBlock(scope: !110, file: !9, line: 109, column: 260)
!147 = !DILocation(line: 109, column: 270, scope: !146)
!148 = !DILocation(line: 109, column: 267, scope: !146)
!149 = !DILocation(line: 109, column: 294, scope: !146)
!150 = !DILocation(line: 109, column: 291, scope: !146)
!151 = !DILocation(line: 109, column: 314, scope: !152)
!152 = distinct !DILexicalBlock(scope: !110, file: !9, line: 109, column: 303)
!153 = !DILocation(line: 109, column: 313, scope: !152)
!154 = !DILocation(line: 109, column: 310, scope: !152)
!155 = !DILocation(line: 109, column: 340, scope: !152)
!156 = !DILocation(line: 109, column: 337, scope: !152)
!157 = !DILocation(line: 109, column: 363, scope: !158)
!158 = distinct !DILexicalBlock(scope: !110, file: !9, line: 109, column: 352)
!159 = !DILocation(line: 109, column: 362, scope: !158)
!160 = !DILocation(line: 109, column: 359, scope: !158)
!161 = !DILocation(line: 109, column: 380, scope: !158)
!162 = !DILocation(line: 109, column: 377, scope: !158)
!163 = !DILocation(line: 109, column: 400, scope: !164)
!164 = distinct !DILexicalBlock(scope: !110, file: !9, line: 109, column: 389)
!165 = !DILocation(line: 109, column: 399, scope: !164)
!166 = !DILocation(line: 109, column: 396, scope: !164)
!167 = !DILocation(line: 109, column: 420, scope: !164)
!168 = !DILocation(line: 109, column: 417, scope: !164)
!169 = !DILocation(line: 109, column: 441, scope: !170)
!170 = distinct !DILexicalBlock(scope: !110, file: !9, line: 109, column: 430)
!171 = !DILocation(line: 109, column: 440, scope: !170)
!172 = !DILocation(line: 109, column: 437, scope: !170)
!173 = !DILocation(line: 109, column: 461, scope: !170)
!174 = !DILocation(line: 109, column: 458, scope: !170)
!175 = !DILocation(line: 109, column: 481, scope: !176)
!176 = distinct !DILexicalBlock(scope: !110, file: !9, line: 109, column: 470)
!177 = !DILocation(line: 109, column: 480, scope: !176)
!178 = !DILocation(line: 109, column: 477, scope: !176)
!179 = !DILocation(line: 109, column: 504, scope: !176)
!180 = !DILocation(line: 109, column: 501, scope: !176)
!181 = !DILocation(line: 109, column: 526, scope: !182)
!182 = distinct !DILexicalBlock(scope: !110, file: !9, line: 109, column: 515)
!183 = !DILocation(line: 109, column: 525, scope: !182)
!184 = !DILocation(line: 109, column: 522, scope: !182)
!185 = !DILocation(line: 109, column: 546, scope: !182)
!186 = !DILocation(line: 109, column: 543, scope: !182)
!187 = !DILocation(line: 109, column: 566, scope: !188)
!188 = distinct !DILexicalBlock(scope: !110, file: !9, line: 109, column: 555)
!189 = !DILocation(line: 109, column: 565, scope: !188)
!190 = !DILocation(line: 109, column: 562, scope: !188)
!191 = !DILocation(line: 109, column: 589, scope: !188)
!192 = !DILocation(line: 109, column: 586, scope: !188)
!193 = !DILocation(line: 109, column: 610, scope: !194)
!194 = distinct !DILexicalBlock(scope: !110, file: !9, line: 109, column: 599)
!195 = !DILocation(line: 109, column: 609, scope: !194)
!196 = !DILocation(line: 109, column: 606, scope: !194)
!197 = !DILocation(line: 109, column: 633, scope: !194)
!198 = !DILocation(line: 109, column: 630, scope: !194)
!199 = !DILocation(line: 109, column: 653, scope: !200)
!200 = distinct !DILexicalBlock(scope: !110, file: !9, line: 109, column: 642)
!201 = !DILocation(line: 109, column: 652, scope: !200)
!202 = !DILocation(line: 109, column: 649, scope: !200)
!203 = !DILocation(line: 109, column: 679, scope: !200)
!204 = !DILocation(line: 109, column: 676, scope: !200)
!205 = !DILocation(line: 110, column: 17, scope: !110)
!206 = !DILocation(line: 111, column: 9, scope: !110)
!207 = !DILocation(line: 111, column: 18, scope: !208)
!208 = !DILexicalBlockFile(scope: !104, file: !9, discriminator: 1)
!209 = !DILocation(line: 111, column: 9, scope: !208)
!210 = !DILocation(line: 112, column: 15, scope: !104)
!211 = !DILocation(line: 113, column: 14, scope: !104)
!212 = !DILocation(line: 105, column: 5, scope: !213)
!213 = !DILexicalBlockFile(scope: !8, file: !9, discriminator: 2)
!214 = distinct !{!214, !98}
!215 = !DILocation(line: 117, column: 9, scope: !216)
!216 = distinct !DILexicalBlock(scope: !8, file: !9, line: 117, column: 9)
!217 = !DILocation(line: 117, column: 9, scope: !8)
!218 = !DILocation(line: 118, column: 9, scope: !219)
!219 = distinct !DILexicalBlock(scope: !216, file: !9, line: 117, column: 14)
!220 = !DILocation(line: 118, column: 16, scope: !221)
!221 = !DILexicalBlockFile(scope: !219, file: !9, discriminator: 1)
!222 = !DILocation(line: 118, column: 20, scope: !221)
!223 = !DILocation(line: 118, column: 9, scope: !221)
!224 = !DILocation(line: 119, column: 17, scope: !225)
!225 = distinct !DILexicalBlock(scope: !219, file: !9, line: 118, column: 27)
!226 = !DILocation(line: 120, column: 24, scope: !227)
!227 = distinct !DILexicalBlock(scope: !225, file: !9, line: 120, column: 13)
!228 = !DILocation(line: 120, column: 23, scope: !227)
!229 = !DILocation(line: 120, column: 20, scope: !227)
!230 = !DILocation(line: 120, column: 41, scope: !227)
!231 = !DILocation(line: 120, column: 38, scope: !227)
!232 = !DILocation(line: 120, column: 61, scope: !233)
!233 = distinct !DILexicalBlock(scope: !225, file: !9, line: 120, column: 50)
!234 = !DILocation(line: 120, column: 60, scope: !233)
!235 = !DILocation(line: 120, column: 57, scope: !233)
!236 = !DILocation(line: 120, column: 81, scope: !233)
!237 = !DILocation(line: 120, column: 78, scope: !233)
!238 = !DILocation(line: 120, column: 102, scope: !239)
!239 = distinct !DILexicalBlock(scope: !225, file: !9, line: 120, column: 91)
!240 = !DILocation(line: 120, column: 101, scope: !239)
!241 = !DILocation(line: 120, column: 98, scope: !239)
!242 = !DILocation(line: 120, column: 122, scope: !239)
!243 = !DILocation(line: 120, column: 119, scope: !239)
!244 = !DILocation(line: 120, column: 142, scope: !245)
!245 = distinct !DILexicalBlock(scope: !225, file: !9, line: 120, column: 131)
!246 = !DILocation(line: 120, column: 141, scope: !245)
!247 = !DILocation(line: 120, column: 138, scope: !245)
!248 = !DILocation(line: 120, column: 165, scope: !245)
!249 = !DILocation(line: 120, column: 162, scope: !245)
!250 = !DILocation(line: 120, column: 187, scope: !251)
!251 = distinct !DILexicalBlock(scope: !225, file: !9, line: 120, column: 176)
!252 = !DILocation(line: 120, column: 186, scope: !251)
!253 = !DILocation(line: 120, column: 183, scope: !251)
!254 = !DILocation(line: 120, column: 207, scope: !251)
!255 = !DILocation(line: 120, column: 204, scope: !251)
!256 = !DILocation(line: 120, column: 227, scope: !257)
!257 = distinct !DILexicalBlock(scope: !225, file: !9, line: 120, column: 216)
!258 = !DILocation(line: 120, column: 226, scope: !257)
!259 = !DILocation(line: 120, column: 223, scope: !257)
!260 = !DILocation(line: 120, column: 250, scope: !257)
!261 = !DILocation(line: 120, column: 247, scope: !257)
!262 = !DILocation(line: 120, column: 271, scope: !263)
!263 = distinct !DILexicalBlock(scope: !225, file: !9, line: 120, column: 260)
!264 = !DILocation(line: 120, column: 270, scope: !263)
!265 = !DILocation(line: 120, column: 267, scope: !263)
!266 = !DILocation(line: 120, column: 294, scope: !263)
!267 = !DILocation(line: 120, column: 291, scope: !263)
!268 = !DILocation(line: 120, column: 314, scope: !269)
!269 = distinct !DILexicalBlock(scope: !225, file: !9, line: 120, column: 303)
!270 = !DILocation(line: 120, column: 313, scope: !269)
!271 = !DILocation(line: 120, column: 310, scope: !269)
!272 = !DILocation(line: 120, column: 340, scope: !269)
!273 = !DILocation(line: 120, column: 337, scope: !269)
!274 = !DILocation(line: 120, column: 363, scope: !275)
!275 = distinct !DILexicalBlock(scope: !225, file: !9, line: 120, column: 352)
!276 = !DILocation(line: 120, column: 362, scope: !275)
!277 = !DILocation(line: 120, column: 359, scope: !275)
!278 = !DILocation(line: 120, column: 380, scope: !275)
!279 = !DILocation(line: 120, column: 377, scope: !275)
!280 = !DILocation(line: 120, column: 400, scope: !281)
!281 = distinct !DILexicalBlock(scope: !225, file: !9, line: 120, column: 389)
!282 = !DILocation(line: 120, column: 399, scope: !281)
!283 = !DILocation(line: 120, column: 396, scope: !281)
!284 = !DILocation(line: 120, column: 420, scope: !281)
!285 = !DILocation(line: 120, column: 417, scope: !281)
!286 = !DILocation(line: 120, column: 441, scope: !287)
!287 = distinct !DILexicalBlock(scope: !225, file: !9, line: 120, column: 430)
!288 = !DILocation(line: 120, column: 440, scope: !287)
!289 = !DILocation(line: 120, column: 437, scope: !287)
!290 = !DILocation(line: 120, column: 461, scope: !287)
!291 = !DILocation(line: 120, column: 458, scope: !287)
!292 = !DILocation(line: 120, column: 481, scope: !293)
!293 = distinct !DILexicalBlock(scope: !225, file: !9, line: 120, column: 470)
!294 = !DILocation(line: 120, column: 480, scope: !293)
!295 = !DILocation(line: 120, column: 477, scope: !293)
!296 = !DILocation(line: 120, column: 504, scope: !293)
!297 = !DILocation(line: 120, column: 501, scope: !293)
!298 = !DILocation(line: 120, column: 526, scope: !299)
!299 = distinct !DILexicalBlock(scope: !225, file: !9, line: 120, column: 515)
!300 = !DILocation(line: 120, column: 525, scope: !299)
!301 = !DILocation(line: 120, column: 522, scope: !299)
!302 = !DILocation(line: 120, column: 546, scope: !299)
!303 = !DILocation(line: 120, column: 543, scope: !299)
!304 = !DILocation(line: 120, column: 566, scope: !305)
!305 = distinct !DILexicalBlock(scope: !225, file: !9, line: 120, column: 555)
!306 = !DILocation(line: 120, column: 565, scope: !305)
!307 = !DILocation(line: 120, column: 562, scope: !305)
!308 = !DILocation(line: 120, column: 589, scope: !305)
!309 = !DILocation(line: 120, column: 586, scope: !305)
!310 = !DILocation(line: 120, column: 610, scope: !311)
!311 = distinct !DILexicalBlock(scope: !225, file: !9, line: 120, column: 599)
!312 = !DILocation(line: 120, column: 609, scope: !311)
!313 = !DILocation(line: 120, column: 606, scope: !311)
!314 = !DILocation(line: 120, column: 633, scope: !311)
!315 = !DILocation(line: 120, column: 630, scope: !311)
!316 = !DILocation(line: 120, column: 653, scope: !317)
!317 = distinct !DILexicalBlock(scope: !225, file: !9, line: 120, column: 642)
!318 = !DILocation(line: 120, column: 652, scope: !317)
!319 = !DILocation(line: 120, column: 649, scope: !317)
!320 = !DILocation(line: 120, column: 679, scope: !317)
!321 = !DILocation(line: 120, column: 676, scope: !317)
!322 = !DILocation(line: 121, column: 17, scope: !225)
!323 = !DILocation(line: 118, column: 9, scope: !324)
!324 = !DILexicalBlockFile(scope: !219, file: !9, discriminator: 2)
!325 = distinct !{!325, !218}
!326 = !DILocation(line: 123, column: 9, scope: !219)
!327 = !DILocation(line: 123, column: 19, scope: !221)
!328 = !DILocation(line: 123, column: 9, scope: !221)
!329 = !DILocation(line: 124, column: 26, scope: !330)
!330 = distinct !DILexicalBlock(scope: !219, file: !9, line: 123, column: 23)
!331 = !DILocation(line: 124, column: 22, scope: !330)
!332 = !DILocation(line: 124, column: 19, scope: !330)
!333 = !DILocation(line: 125, column: 21, scope: !330)
!334 = !DILocation(line: 125, column: 18, scope: !330)
!335 = !DILocation(line: 123, column: 9, scope: !324)
!336 = distinct !{!336, !326}
!337 = !DILocation(line: 127, column: 15, scope: !219)
!338 = !DILocation(line: 128, column: 14, scope: !219)
!339 = !DILocation(line: 129, column: 5, scope: !219)
!340 = !DILocation(line: 132, column: 12, scope: !8)
!341 = !DILocation(line: 132, column: 21, scope: !8)
!342 = !DILocation(line: 132, column: 26, scope: !8)
!343 = !DILocation(line: 132, column: 18, scope: !8)
!344 = !DILocation(line: 132, column: 5, scope: !8)
!345 = !DILocation(line: 133, column: 1, scope: !8)
!346 = distinct !DISubprogram(name: "adler32_combine", scope: !9, file: !9, line: 165, type: !347, isLocal: false, isDefinition: true, scopeLine: 169, isOptimized: false, unit: !0, variables: !2)
!347 = !DISubroutineType(types: !348)
!348 = !{!12, !12, !12, !349}
!349 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!350 = !DILocalVariable(name: "adler1", arg: 1, scope: !346, file: !9, line: 166, type: !12)
!351 = !DILocation(line: 166, column: 11, scope: !346)
!352 = !DILocalVariable(name: "adler2", arg: 2, scope: !346, file: !9, line: 167, type: !12)
!353 = !DILocation(line: 167, column: 11, scope: !346)
!354 = !DILocalVariable(name: "len2", arg: 3, scope: !346, file: !9, line: 168, type: !349)
!355 = !DILocation(line: 168, column: 10, scope: !346)
!356 = !DILocation(line: 170, column: 29, scope: !346)
!357 = !DILocation(line: 170, column: 37, scope: !346)
!358 = !DILocation(line: 170, column: 45, scope: !346)
!359 = !DILocation(line: 170, column: 12, scope: !346)
!360 = !DILocation(line: 170, column: 5, scope: !346)
!361 = distinct !DISubprogram(name: "adler32_combine_", scope: !9, file: !9, line: 136, type: !347, isLocal: true, isDefinition: true, scopeLine: 140, isOptimized: false, unit: !0, variables: !2)
!362 = !DILocalVariable(name: "adler1", arg: 1, scope: !361, file: !9, line: 137, type: !12)
!363 = !DILocation(line: 137, column: 11, scope: !361)
!364 = !DILocalVariable(name: "adler2", arg: 2, scope: !361, file: !9, line: 138, type: !12)
!365 = !DILocation(line: 138, column: 11, scope: !361)
!366 = !DILocalVariable(name: "len2", arg: 3, scope: !361, file: !9, line: 139, type: !349)
!367 = !DILocation(line: 139, column: 10, scope: !361)
!368 = !DILocalVariable(name: "sum1", scope: !361, file: !9, line: 141, type: !14)
!369 = !DILocation(line: 141, column: 19, scope: !361)
!370 = !DILocalVariable(name: "sum2", scope: !361, file: !9, line: 142, type: !14)
!371 = !DILocation(line: 142, column: 19, scope: !361)
!372 = !DILocalVariable(name: "rem", scope: !361, file: !9, line: 143, type: !4)
!373 = !DILocation(line: 143, column: 14, scope: !361)
!374 = !DILocation(line: 146, column: 9, scope: !375)
!375 = distinct !DILexicalBlock(scope: !361, file: !9, line: 146, column: 9)
!376 = !DILocation(line: 146, column: 14, scope: !375)
!377 = !DILocation(line: 146, column: 9, scope: !361)
!378 = !DILocation(line: 147, column: 9, scope: !375)
!379 = !DILocation(line: 150, column: 10, scope: !361)
!380 = !DILocation(line: 151, column: 21, scope: !361)
!381 = !DILocation(line: 151, column: 11, scope: !361)
!382 = !DILocation(line: 151, column: 9, scope: !361)
!383 = !DILocation(line: 152, column: 12, scope: !361)
!384 = !DILocation(line: 152, column: 19, scope: !361)
!385 = !DILocation(line: 152, column: 10, scope: !361)
!386 = !DILocation(line: 153, column: 12, scope: !361)
!387 = !DILocation(line: 153, column: 18, scope: !361)
!388 = !DILocation(line: 153, column: 16, scope: !361)
!389 = !DILocation(line: 153, column: 10, scope: !361)
!390 = !DILocation(line: 154, column: 10, scope: !361)
!391 = !DILocation(line: 155, column: 14, scope: !361)
!392 = !DILocation(line: 155, column: 21, scope: !361)
!393 = !DILocation(line: 155, column: 31, scope: !361)
!394 = !DILocation(line: 155, column: 39, scope: !361)
!395 = !DILocation(line: 155, column: 10, scope: !361)
!396 = !DILocation(line: 156, column: 15, scope: !361)
!397 = !DILocation(line: 156, column: 22, scope: !361)
!398 = !DILocation(line: 156, column: 29, scope: !361)
!399 = !DILocation(line: 156, column: 43, scope: !361)
!400 = !DILocation(line: 156, column: 50, scope: !361)
!401 = !DILocation(line: 156, column: 57, scope: !361)
!402 = !DILocation(line: 156, column: 39, scope: !361)
!403 = !DILocation(line: 156, column: 67, scope: !361)
!404 = !DILocation(line: 156, column: 77, scope: !361)
!405 = !DILocation(line: 156, column: 75, scope: !361)
!406 = !DILocation(line: 156, column: 10, scope: !361)
!407 = !DILocation(line: 157, column: 9, scope: !408)
!408 = distinct !DILexicalBlock(scope: !361, file: !9, line: 157, column: 9)
!409 = !DILocation(line: 157, column: 14, scope: !408)
!410 = !DILocation(line: 157, column: 9, scope: !361)
!411 = !DILocation(line: 157, column: 29, scope: !412)
!412 = !DILexicalBlockFile(scope: !408, file: !9, discriminator: 1)
!413 = !DILocation(line: 157, column: 24, scope: !412)
!414 = !DILocation(line: 158, column: 9, scope: !415)
!415 = distinct !DILexicalBlock(scope: !361, file: !9, line: 158, column: 9)
!416 = !DILocation(line: 158, column: 14, scope: !415)
!417 = !DILocation(line: 158, column: 9, scope: !361)
!418 = !DILocation(line: 158, column: 29, scope: !419)
!419 = !DILexicalBlockFile(scope: !415, file: !9, discriminator: 1)
!420 = !DILocation(line: 158, column: 24, scope: !419)
!421 = !DILocation(line: 159, column: 9, scope: !422)
!422 = distinct !DILexicalBlock(scope: !361, file: !9, line: 159, column: 9)
!423 = !DILocation(line: 159, column: 14, scope: !422)
!424 = !DILocation(line: 159, column: 9, scope: !361)
!425 = !DILocation(line: 159, column: 36, scope: !426)
!426 = !DILexicalBlockFile(scope: !422, file: !9, discriminator: 1)
!427 = !DILocation(line: 159, column: 31, scope: !426)
!428 = !DILocation(line: 160, column: 9, scope: !429)
!429 = distinct !DILexicalBlock(scope: !361, file: !9, line: 160, column: 9)
!430 = !DILocation(line: 160, column: 14, scope: !429)
!431 = !DILocation(line: 160, column: 9, scope: !361)
!432 = !DILocation(line: 160, column: 29, scope: !433)
!433 = !DILexicalBlockFile(scope: !429, file: !9, discriminator: 1)
!434 = !DILocation(line: 160, column: 24, scope: !433)
!435 = !DILocation(line: 161, column: 12, scope: !361)
!436 = !DILocation(line: 161, column: 20, scope: !361)
!437 = !DILocation(line: 161, column: 25, scope: !361)
!438 = !DILocation(line: 161, column: 17, scope: !361)
!439 = !DILocation(line: 161, column: 5, scope: !361)
!440 = !DILocation(line: 162, column: 1, scope: !361)
!441 = distinct !DISubprogram(name: "adler32_combine64", scope: !9, file: !9, line: 173, type: !347, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!442 = !DILocalVariable(name: "adler1", arg: 1, scope: !441, file: !9, line: 174, type: !12)
!443 = !DILocation(line: 174, column: 11, scope: !441)
!444 = !DILocalVariable(name: "adler2", arg: 2, scope: !441, file: !9, line: 175, type: !12)
!445 = !DILocation(line: 175, column: 11, scope: !441)
!446 = !DILocalVariable(name: "len2", arg: 3, scope: !441, file: !9, line: 176, type: !349)
!447 = !DILocation(line: 176, column: 10, scope: !441)
!448 = !DILocation(line: 178, column: 29, scope: !441)
!449 = !DILocation(line: 178, column: 37, scope: !441)
!450 = !DILocation(line: 178, column: 45, scope: !441)
!451 = !DILocation(line: 178, column: 12, scope: !441)
!452 = !DILocation(line: 178, column: 5, scope: !441)
