; ModuleID = './line15-base64.o.i'
source_filename = "./line15-base64.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@base64_dec.revalphabet = internal constant [256 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 62, i32 -1, i32 -1, i32 -1, i32 63, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@base64_enc.alphabet = internal constant [64 x i32] [i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 43, i32 47], align 16

; Function Attrs: nounwind uwtable
define i8* @base64_dec(i8*, i64, i64*) #0 !dbg !8 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !37, metadata !38), !dbg !39
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !40, metadata !38), !dbg !41
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !42, metadata !38), !dbg !43
  call void @llvm.dbg.declare(metadata i64* %8, metadata !44, metadata !38), !dbg !45
  call void @llvm.dbg.declare(metadata i64* %9, metadata !46, metadata !38), !dbg !47
  call void @llvm.dbg.declare(metadata i32* %10, metadata !48, metadata !38), !dbg !49
  call void @llvm.dbg.declare(metadata i32* %11, metadata !50, metadata !38), !dbg !51
  call void @llvm.dbg.declare(metadata i8** %12, metadata !52, metadata !38), !dbg !53
  %13 = load i64, i64* %6, align 8, !dbg !54
  %14 = urem i64 %13, 4, !dbg !56
  %15 = icmp ne i64 %14, 0, !dbg !56
  br i1 %15, label %16, label %17, !dbg !57

; <label>:16:                                     ; preds = %3
  store i8* null, i8** %4, align 8, !dbg !58
  br label %206, !dbg !58

; <label>:17:                                     ; preds = %3
  %18 = load i64, i64* %6, align 8, !dbg !59
  %19 = icmp eq i64 %18, 0, !dbg !61
  br i1 %19, label %20, label %23, !dbg !62

; <label>:20:                                     ; preds = %17
  %21 = load i64*, i64** %7, align 8, !dbg !63
  store i64 0, i64* %21, align 8, !dbg !65
  %22 = call noalias i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #3, !dbg !66
  store i8* %22, i8** %4, align 8, !dbg !67
  br label %206, !dbg !67

; <label>:23:                                     ; preds = %17
  %24 = load i64, i64* %6, align 8, !dbg !68
  %25 = sub i64 %24, 2, !dbg !70
  %26 = load i8*, i8** %5, align 8, !dbg !71
  %27 = getelementptr inbounds i8, i8* %26, i64 %25, !dbg !71
  %28 = load i8, i8* %27, align 1, !dbg !71
  %29 = sext i8 %28 to i32, !dbg !71
  %30 = icmp eq i32 %29, 61, !dbg !72
  br i1 %30, label %31, label %37, !dbg !73

; <label>:31:                                     ; preds = %23
  %32 = load i64, i64* %6, align 8, !dbg !74
  %33 = udiv i64 %32, 4, !dbg !75
  %34 = mul i64 %33, 3, !dbg !76
  %35 = sub i64 %34, 2, !dbg !77
  %36 = load i64*, i64** %7, align 8, !dbg !78
  store i64 %35, i64* %36, align 8, !dbg !79
  br label %57, !dbg !80

; <label>:37:                                     ; preds = %23
  %38 = load i64, i64* %6, align 8, !dbg !81
  %39 = sub i64 %38, 1, !dbg !83
  %40 = load i8*, i8** %5, align 8, !dbg !84
  %41 = getelementptr inbounds i8, i8* %40, i64 %39, !dbg !84
  %42 = load i8, i8* %41, align 1, !dbg !84
  %43 = sext i8 %42 to i32, !dbg !84
  %44 = icmp eq i32 %43, 61, !dbg !85
  br i1 %44, label %45, label %51, !dbg !86

; <label>:45:                                     ; preds = %37
  %46 = load i64, i64* %6, align 8, !dbg !87
  %47 = udiv i64 %46, 4, !dbg !88
  %48 = mul i64 %47, 3, !dbg !89
  %49 = sub i64 %48, 1, !dbg !90
  %50 = load i64*, i64** %7, align 8, !dbg !91
  store i64 %49, i64* %50, align 8, !dbg !92
  br label %56, !dbg !93

; <label>:51:                                     ; preds = %37
  %52 = load i64, i64* %6, align 8, !dbg !94
  %53 = udiv i64 %52, 4, !dbg !95
  %54 = mul i64 %53, 3, !dbg !96
  %55 = load i64*, i64** %7, align 8, !dbg !97
  store i64 %54, i64* %55, align 8, !dbg !98
  br label %56

; <label>:56:                                     ; preds = %51, %45
  br label %57

; <label>:57:                                     ; preds = %56, %31
  %58 = load i64*, i64** %7, align 8, !dbg !99
  %59 = load i64, i64* %58, align 8, !dbg !101
  %60 = add i64 %59, 1, !dbg !102
  %61 = call noalias i8* @malloc(i64 %60) #3, !dbg !103
  store i8* %61, i8** %12, align 8, !dbg !104
  %62 = icmp ne i8* %61, null, !dbg !104
  br i1 %62, label %65, label %63, !dbg !105

; <label>:63:                                     ; preds = %57
  %64 = load i64*, i64** %7, align 8, !dbg !106
  store i64 0, i64* %64, align 8, !dbg !108
  store i8* null, i8** %4, align 8, !dbg !109
  br label %206, !dbg !109

; <label>:65:                                     ; preds = %57
  store i64 0, i64* %8, align 8, !dbg !110
  store i64 0, i64* %9, align 8, !dbg !112
  br label %66, !dbg !113

; <label>:66:                                     ; preds = %193, %65
  %67 = load i64, i64* %8, align 8, !dbg !114
  %68 = load i64, i64* %6, align 8, !dbg !117
  %69 = icmp ult i64 %67, %68, !dbg !118
  br i1 %69, label %70, label %198, !dbg !119

; <label>:70:                                     ; preds = %66
  %71 = load i64, i64* %8, align 8, !dbg !120
  %72 = load i8*, i8** %5, align 8, !dbg !123
  %73 = getelementptr inbounds i8, i8* %72, i64 %71, !dbg !123
  %74 = load i8, i8* %73, align 1, !dbg !123
  %75 = zext i8 %74 to i64, !dbg !124
  %76 = getelementptr inbounds [256 x i32], [256 x i32]* @base64_dec.revalphabet, i64 0, i64 %75, !dbg !124
  %77 = load i32, i32* %76, align 4, !dbg !124
  store i32 %77, i32* %11, align 4, !dbg !125
  %78 = icmp eq i32 %77, -1, !dbg !126
  br i1 %78, label %79, label %80, !dbg !127

; <label>:79:                                     ; preds = %70
  br label %204, !dbg !128

; <label>:80:                                     ; preds = %70
  %81 = load i32, i32* %11, align 4, !dbg !129
  %82 = shl i32 %81, 18, !dbg !130
  store i32 %82, i32* %10, align 4, !dbg !131
  %83 = load i64, i64* %8, align 8, !dbg !132
  %84 = add i64 %83, 1, !dbg !134
  %85 = load i8*, i8** %5, align 8, !dbg !135
  %86 = getelementptr inbounds i8, i8* %85, i64 %84, !dbg !135
  %87 = load i8, i8* %86, align 1, !dbg !135
  %88 = zext i8 %87 to i64, !dbg !136
  %89 = getelementptr inbounds [256 x i32], [256 x i32]* @base64_dec.revalphabet, i64 0, i64 %88, !dbg !136
  %90 = load i32, i32* %89, align 4, !dbg !136
  store i32 %90, i32* %11, align 4, !dbg !137
  %91 = icmp eq i32 %90, -1, !dbg !138
  br i1 %91, label %92, label %93, !dbg !139

; <label>:92:                                     ; preds = %80
  br label %204, !dbg !140

; <label>:93:                                     ; preds = %80
  %94 = load i32, i32* %11, align 4, !dbg !141
  %95 = shl i32 %94, 12, !dbg !142
  %96 = load i32, i32* %10, align 4, !dbg !143
  %97 = add nsw i32 %96, %95, !dbg !143
  store i32 %97, i32* %10, align 4, !dbg !143
  %98 = load i64, i64* %8, align 8, !dbg !144
  %99 = add i64 %98, 2, !dbg !146
  %100 = load i8*, i8** %5, align 8, !dbg !147
  %101 = getelementptr inbounds i8, i8* %100, i64 %99, !dbg !147
  %102 = load i8, i8* %101, align 1, !dbg !147
  %103 = zext i8 %102 to i64, !dbg !148
  %104 = getelementptr inbounds [256 x i32], [256 x i32]* @base64_dec.revalphabet, i64 0, i64 %103, !dbg !148
  %105 = load i32, i32* %104, align 4, !dbg !148
  store i32 %105, i32* %11, align 4, !dbg !149
  %106 = icmp eq i32 %105, -1, !dbg !150
  br i1 %106, label %107, label %123, !dbg !151

; <label>:107:                                    ; preds = %93
  %108 = load i64, i64* %8, align 8, !dbg !152
  %109 = load i64, i64* %6, align 8, !dbg !155
  %110 = sub i64 %109, 4, !dbg !156
  %111 = icmp eq i64 %108, %110, !dbg !157
  br i1 %111, label %112, label %121, !dbg !158

; <label>:112:                                    ; preds = %107
  %113 = load i64, i64* %8, align 8, !dbg !159
  %114 = add i64 %113, 2, !dbg !161
  %115 = load i8*, i8** %5, align 8, !dbg !162
  %116 = getelementptr inbounds i8, i8* %115, i64 %114, !dbg !162
  %117 = load i8, i8* %116, align 1, !dbg !162
  %118 = sext i8 %117 to i32, !dbg !162
  %119 = icmp eq i32 %118, 61, !dbg !163
  br i1 %119, label %120, label %121, !dbg !164

; <label>:120:                                    ; preds = %112
  store i32 0, i32* %11, align 4, !dbg !165
  br label %122, !dbg !166

; <label>:121:                                    ; preds = %112, %107
  br label %204, !dbg !167

; <label>:122:                                    ; preds = %120
  br label %123, !dbg !168

; <label>:123:                                    ; preds = %122, %93
  %124 = load i32, i32* %11, align 4, !dbg !169
  %125 = shl i32 %124, 6, !dbg !170
  %126 = load i32, i32* %10, align 4, !dbg !171
  %127 = add nsw i32 %126, %125, !dbg !171
  store i32 %127, i32* %10, align 4, !dbg !171
  %128 = load i64, i64* %8, align 8, !dbg !172
  %129 = add i64 %128, 3, !dbg !174
  %130 = load i8*, i8** %5, align 8, !dbg !175
  %131 = getelementptr inbounds i8, i8* %130, i64 %129, !dbg !175
  %132 = load i8, i8* %131, align 1, !dbg !175
  %133 = zext i8 %132 to i64, !dbg !176
  %134 = getelementptr inbounds [256 x i32], [256 x i32]* @base64_dec.revalphabet, i64 0, i64 %133, !dbg !176
  %135 = load i32, i32* %134, align 4, !dbg !176
  store i32 %135, i32* %11, align 4, !dbg !177
  %136 = icmp eq i32 %135, -1, !dbg !178
  br i1 %136, label %137, label %153, !dbg !179

; <label>:137:                                    ; preds = %123
  %138 = load i64, i64* %8, align 8, !dbg !180
  %139 = load i64, i64* %6, align 8, !dbg !183
  %140 = sub i64 %139, 4, !dbg !184
  %141 = icmp eq i64 %138, %140, !dbg !185
  br i1 %141, label %142, label %151, !dbg !186

; <label>:142:                                    ; preds = %137
  %143 = load i64, i64* %8, align 8, !dbg !187
  %144 = add i64 %143, 3, !dbg !189
  %145 = load i8*, i8** %5, align 8, !dbg !190
  %146 = getelementptr inbounds i8, i8* %145, i64 %144, !dbg !190
  %147 = load i8, i8* %146, align 1, !dbg !190
  %148 = sext i8 %147 to i32, !dbg !190
  %149 = icmp eq i32 %148, 61, !dbg !191
  br i1 %149, label %150, label %151, !dbg !192

; <label>:150:                                    ; preds = %142
  store i32 0, i32* %11, align 4, !dbg !193
  br label %152, !dbg !194

; <label>:151:                                    ; preds = %142, %137
  br label %204, !dbg !195

; <label>:152:                                    ; preds = %150
  br label %153, !dbg !196

; <label>:153:                                    ; preds = %152, %123
  %154 = load i32, i32* %11, align 4, !dbg !197
  %155 = load i32, i32* %10, align 4, !dbg !198
  %156 = add nsw i32 %155, %154, !dbg !198
  store i32 %156, i32* %10, align 4, !dbg !198
  %157 = load i32, i32* %10, align 4, !dbg !199
  %158 = ashr i32 %157, 16, !dbg !200
  %159 = and i32 %158, 255, !dbg !201
  %160 = trunc i32 %159 to i8, !dbg !202
  %161 = load i64, i64* %9, align 8, !dbg !203
  %162 = load i8*, i8** %12, align 8, !dbg !204
  %163 = getelementptr inbounds i8, i8* %162, i64 %161, !dbg !204
  store i8 %160, i8* %163, align 1, !dbg !205
  %164 = load i64, i64* %9, align 8, !dbg !206
  %165 = add i64 %164, 1, !dbg !208
  %166 = load i64*, i64** %7, align 8, !dbg !209
  %167 = load i64, i64* %166, align 8, !dbg !210
  %168 = icmp ult i64 %165, %167, !dbg !211
  br i1 %168, label %169, label %178, !dbg !212

; <label>:169:                                    ; preds = %153
  %170 = load i32, i32* %10, align 4, !dbg !213
  %171 = ashr i32 %170, 8, !dbg !214
  %172 = and i32 %171, 255, !dbg !215
  %173 = trunc i32 %172 to i8, !dbg !216
  %174 = load i64, i64* %9, align 8, !dbg !217
  %175 = add i64 %174, 1, !dbg !218
  %176 = load i8*, i8** %12, align 8, !dbg !219
  %177 = getelementptr inbounds i8, i8* %176, i64 %175, !dbg !219
  store i8 %173, i8* %177, align 1, !dbg !220
  br label %178, !dbg !219

; <label>:178:                                    ; preds = %169, %153
  %179 = load i64, i64* %9, align 8, !dbg !221
  %180 = add i64 %179, 2, !dbg !223
  %181 = load i64*, i64** %7, align 8, !dbg !224
  %182 = load i64, i64* %181, align 8, !dbg !225
  %183 = icmp ult i64 %180, %182, !dbg !226
  br i1 %183, label %184, label %192, !dbg !227

; <label>:184:                                    ; preds = %178
  %185 = load i32, i32* %10, align 4, !dbg !228
  %186 = and i32 %185, 255, !dbg !229
  %187 = trunc i32 %186 to i8, !dbg !228
  %188 = load i64, i64* %9, align 8, !dbg !230
  %189 = add i64 %188, 2, !dbg !231
  %190 = load i8*, i8** %12, align 8, !dbg !232
  %191 = getelementptr inbounds i8, i8* %190, i64 %189, !dbg !232
  store i8 %187, i8* %191, align 1, !dbg !233
  br label %192, !dbg !232

; <label>:192:                                    ; preds = %184, %178
  br label %193, !dbg !234

; <label>:193:                                    ; preds = %192
  %194 = load i64, i64* %8, align 8, !dbg !235
  %195 = add i64 %194, 4, !dbg !235
  store i64 %195, i64* %8, align 8, !dbg !235
  %196 = load i64, i64* %9, align 8, !dbg !237
  %197 = add i64 %196, 3, !dbg !237
  store i64 %197, i64* %9, align 8, !dbg !237
  br label %66, !dbg !238, !llvm.loop !239

; <label>:198:                                    ; preds = %66
  %199 = load i64*, i64** %7, align 8, !dbg !241
  %200 = load i64, i64* %199, align 8, !dbg !242
  %201 = load i8*, i8** %12, align 8, !dbg !243
  %202 = getelementptr inbounds i8, i8* %201, i64 %200, !dbg !243
  store i8 0, i8* %202, align 1, !dbg !244
  %203 = load i8*, i8** %12, align 8, !dbg !245
  store i8* %203, i8** %4, align 8, !dbg !246
  br label %206, !dbg !246

; <label>:204:                                    ; preds = %151, %121, %92, %79
  %205 = load i8*, i8** %12, align 8, !dbg !247
  call void @free(i8* %205) #3, !dbg !248
  store i8* null, i8** %4, align 8, !dbg !249
  br label %206, !dbg !249

; <label>:206:                                    ; preds = %204, %198, %63, %20, %16
  %207 = load i8*, i8** %4, align 8, !dbg !250
  ret i8* %207, !dbg !250
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @base64_enc(i8*, i64, i64*) #0 !dbg !25 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !251, metadata !38), !dbg !252
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !253, metadata !38), !dbg !254
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !255, metadata !38), !dbg !256
  call void @llvm.dbg.declare(metadata i64* %8, metadata !257, metadata !38), !dbg !258
  call void @llvm.dbg.declare(metadata i64* %9, metadata !259, metadata !38), !dbg !260
  call void @llvm.dbg.declare(metadata i8** %10, metadata !261, metadata !38), !dbg !262
  %12 = load i64, i64* %6, align 8, !dbg !263
  %13 = icmp eq i64 %12, 0, !dbg !265
  br i1 %13, label %14, label %17, !dbg !266

; <label>:14:                                     ; preds = %3
  %15 = load i64*, i64** %7, align 8, !dbg !267
  store i64 0, i64* %15, align 8, !dbg !269
  %16 = call noalias i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #3, !dbg !270
  store i8* %16, i8** %4, align 8, !dbg !271
  br label %144, !dbg !271

; <label>:17:                                     ; preds = %3
  %18 = load i64, i64* %6, align 8, !dbg !272
  %19 = add i64 %18, 2, !dbg !273
  %20 = udiv i64 %19, 3, !dbg !274
  %21 = mul i64 %20, 4, !dbg !275
  %22 = load i64*, i64** %7, align 8, !dbg !276
  store i64 %21, i64* %22, align 8, !dbg !277
  %23 = load i64*, i64** %7, align 8, !dbg !278
  %24 = load i64, i64* %23, align 8, !dbg !280
  %25 = add i64 %24, 1, !dbg !281
  %26 = call noalias i8* @malloc(i64 %25) #3, !dbg !282
  store i8* %26, i8** %10, align 8, !dbg !283
  %27 = icmp ne i8* %26, null, !dbg !283
  br i1 %27, label %30, label %28, !dbg !284

; <label>:28:                                     ; preds = %17
  %29 = load i64*, i64** %7, align 8, !dbg !285
  store i64 0, i64* %29, align 8, !dbg !287
  store i8* null, i8** %4, align 8, !dbg !288
  br label %144, !dbg !288

; <label>:30:                                     ; preds = %17
  store i64 0, i64* %8, align 8, !dbg !289
  store i64 0, i64* %9, align 8, !dbg !291
  br label %31, !dbg !292

; <label>:31:                                     ; preds = %133, %30
  %32 = load i64, i64* %8, align 8, !dbg !293
  %33 = load i64, i64* %6, align 8, !dbg !296
  %34 = icmp ult i64 %32, %33, !dbg !297
  br i1 %34, label %35, label %138, !dbg !298

; <label>:35:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata i32* %11, metadata !299, metadata !38), !dbg !301
  %36 = load i64, i64* %8, align 8, !dbg !302
  %37 = load i8*, i8** %5, align 8, !dbg !303
  %38 = getelementptr inbounds i8, i8* %37, i64 %36, !dbg !303
  %39 = load i8, i8* %38, align 1, !dbg !303
  %40 = zext i8 %39 to i32, !dbg !303
  %41 = shl i32 %40, 16, !dbg !304
  store i32 %41, i32* %11, align 4, !dbg !305
  %42 = load i64, i64* %8, align 8, !dbg !306
  %43 = add i64 %42, 1, !dbg !308
  %44 = load i64, i64* %6, align 8, !dbg !309
  %45 = icmp ult i64 %43, %44, !dbg !310
  br i1 %45, label %46, label %56, !dbg !311

; <label>:46:                                     ; preds = %35
  %47 = load i64, i64* %8, align 8, !dbg !312
  %48 = add i64 %47, 1, !dbg !313
  %49 = load i8*, i8** %5, align 8, !dbg !314
  %50 = getelementptr inbounds i8, i8* %49, i64 %48, !dbg !314
  %51 = load i8, i8* %50, align 1, !dbg !314
  %52 = zext i8 %51 to i32, !dbg !314
  %53 = shl i32 %52, 8, !dbg !315
  %54 = load i32, i32* %11, align 4, !dbg !316
  %55 = add nsw i32 %54, %53, !dbg !316
  store i32 %55, i32* %11, align 4, !dbg !316
  br label %56, !dbg !317

; <label>:56:                                     ; preds = %46, %35
  %57 = load i64, i64* %8, align 8, !dbg !318
  %58 = add i64 %57, 2, !dbg !320
  %59 = load i64, i64* %6, align 8, !dbg !321
  %60 = icmp ult i64 %58, %59, !dbg !322
  br i1 %60, label %61, label %70, !dbg !323

; <label>:61:                                     ; preds = %56
  %62 = load i64, i64* %8, align 8, !dbg !324
  %63 = add i64 %62, 2, !dbg !325
  %64 = load i8*, i8** %5, align 8, !dbg !326
  %65 = getelementptr inbounds i8, i8* %64, i64 %63, !dbg !326
  %66 = load i8, i8* %65, align 1, !dbg !326
  %67 = zext i8 %66 to i32, !dbg !326
  %68 = load i32, i32* %11, align 4, !dbg !327
  %69 = add nsw i32 %68, %67, !dbg !327
  store i32 %69, i32* %11, align 4, !dbg !327
  br label %70, !dbg !328

; <label>:70:                                     ; preds = %61, %56
  %71 = load i32, i32* %11, align 4, !dbg !329
  %72 = ashr i32 %71, 18, !dbg !330
  %73 = and i32 %72, 63, !dbg !331
  %74 = sext i32 %73 to i64, !dbg !332
  %75 = getelementptr inbounds [64 x i32], [64 x i32]* @base64_enc.alphabet, i64 0, i64 %74, !dbg !332
  %76 = load i32, i32* %75, align 4, !dbg !332
  %77 = trunc i32 %76 to i8, !dbg !332
  %78 = load i64, i64* %9, align 8, !dbg !333
  %79 = load i8*, i8** %10, align 8, !dbg !334
  %80 = getelementptr inbounds i8, i8* %79, i64 %78, !dbg !334
  store i8 %77, i8* %80, align 1, !dbg !335
  %81 = load i32, i32* %11, align 4, !dbg !336
  %82 = ashr i32 %81, 12, !dbg !337
  %83 = and i32 %82, 63, !dbg !338
  %84 = sext i32 %83 to i64, !dbg !339
  %85 = getelementptr inbounds [64 x i32], [64 x i32]* @base64_enc.alphabet, i64 0, i64 %84, !dbg !339
  %86 = load i32, i32* %85, align 4, !dbg !339
  %87 = trunc i32 %86 to i8, !dbg !339
  %88 = load i64, i64* %9, align 8, !dbg !340
  %89 = add i64 %88, 1, !dbg !341
  %90 = load i8*, i8** %10, align 8, !dbg !342
  %91 = getelementptr inbounds i8, i8* %90, i64 %89, !dbg !342
  store i8 %87, i8* %91, align 1, !dbg !343
  %92 = load i32, i32* %11, align 4, !dbg !344
  %93 = ashr i32 %92, 6, !dbg !345
  %94 = and i32 %93, 63, !dbg !346
  %95 = sext i32 %94 to i64, !dbg !347
  %96 = getelementptr inbounds [64 x i32], [64 x i32]* @base64_enc.alphabet, i64 0, i64 %95, !dbg !347
  %97 = load i32, i32* %96, align 4, !dbg !347
  %98 = trunc i32 %97 to i8, !dbg !347
  %99 = load i64, i64* %9, align 8, !dbg !348
  %100 = add i64 %99, 2, !dbg !349
  %101 = load i8*, i8** %10, align 8, !dbg !350
  %102 = getelementptr inbounds i8, i8* %101, i64 %100, !dbg !350
  store i8 %98, i8* %102, align 1, !dbg !351
  %103 = load i32, i32* %11, align 4, !dbg !352
  %104 = and i32 %103, 63, !dbg !353
  %105 = sext i32 %104 to i64, !dbg !354
  %106 = getelementptr inbounds [64 x i32], [64 x i32]* @base64_enc.alphabet, i64 0, i64 %105, !dbg !354
  %107 = load i32, i32* %106, align 4, !dbg !354
  %108 = trunc i32 %107 to i8, !dbg !354
  %109 = load i64, i64* %9, align 8, !dbg !355
  %110 = add i64 %109, 3, !dbg !356
  %111 = load i8*, i8** %10, align 8, !dbg !357
  %112 = getelementptr inbounds i8, i8* %111, i64 %110, !dbg !357
  store i8 %108, i8* %112, align 1, !dbg !358
  %113 = load i64, i64* %8, align 8, !dbg !359
  %114 = add i64 %113, 2, !dbg !361
  %115 = load i64, i64* %6, align 8, !dbg !362
  %116 = icmp ugt i64 %114, %115, !dbg !363
  br i1 %116, label %117, label %122, !dbg !364

; <label>:117:                                    ; preds = %70
  %118 = load i64, i64* %9, align 8, !dbg !365
  %119 = add i64 %118, 2, !dbg !366
  %120 = load i8*, i8** %10, align 8, !dbg !367
  %121 = getelementptr inbounds i8, i8* %120, i64 %119, !dbg !367
  store i8 61, i8* %121, align 1, !dbg !368
  br label %122, !dbg !367

; <label>:122:                                    ; preds = %117, %70
  %123 = load i64, i64* %8, align 8, !dbg !369
  %124 = add i64 %123, 3, !dbg !371
  %125 = load i64, i64* %6, align 8, !dbg !372
  %126 = icmp ugt i64 %124, %125, !dbg !373
  br i1 %126, label %127, label %132, !dbg !374

; <label>:127:                                    ; preds = %122
  %128 = load i64, i64* %9, align 8, !dbg !375
  %129 = add i64 %128, 3, !dbg !376
  %130 = load i8*, i8** %10, align 8, !dbg !377
  %131 = getelementptr inbounds i8, i8* %130, i64 %129, !dbg !377
  store i8 61, i8* %131, align 1, !dbg !378
  br label %132, !dbg !377

; <label>:132:                                    ; preds = %127, %122
  br label %133, !dbg !379

; <label>:133:                                    ; preds = %132
  %134 = load i64, i64* %8, align 8, !dbg !380
  %135 = add i64 %134, 3, !dbg !380
  store i64 %135, i64* %8, align 8, !dbg !380
  %136 = load i64, i64* %9, align 8, !dbg !382
  %137 = add i64 %136, 4, !dbg !382
  store i64 %137, i64* %9, align 8, !dbg !382
  br label %31, !dbg !383, !llvm.loop !384

; <label>:138:                                    ; preds = %31
  %139 = load i64*, i64** %7, align 8, !dbg !386
  %140 = load i64, i64* %139, align 8, !dbg !387
  %141 = load i8*, i8** %10, align 8, !dbg !388
  %142 = getelementptr inbounds i8, i8* %141, i64 %140, !dbg !388
  store i8 0, i8* %142, align 1, !dbg !389
  %143 = load i8*, i8** %10, align 8, !dbg !390
  store i8* %143, i8** %4, align 8, !dbg !391
  br label %144, !dbg !391

; <label>:144:                                    ; preds = %138, %28, %14
  %145 = load i8*, i8** %4, align 8, !dbg !392
  ret i8* %145, !dbg !392
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!34, !35}
!llvm.ident = !{!36}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !6)
!1 = !DIFile(filename: "line15-base64.o.i", directory: "/home/lichi/Desktop/sslsplit/task1")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!6 = !{!7, !24}
!7 = distinct !DIGlobalVariable(name: "revalphabet", scope: !8, file: !9, line: 47, type: !19, isLocal: true, isDefinition: true, variable: [256 x i32]* @base64_dec.revalphabet)
!8 = distinct !DISubprogram(name: "base64_dec", scope: !9, file: !9, line: 45, type: !10, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!9 = !DIFile(filename: "base64.c", directory: "/home/lichi/Desktop/sslsplit/task1")
!10 = !DISubroutineType(types: !11)
!11 = !{!4, !12, !15, !18}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 216, baseType: !17)
!16 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!17 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 8192, align: 32, elements: !22)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!22 = !{!23}
!23 = !DISubrange(count: 256)
!24 = distinct !DIGlobalVariable(name: "alphabet", scope: !25, file: !9, line: 146, type: !31, isLocal: true, isDefinition: true, variable: [64 x i32]* @base64_enc.alphabet)
!25 = distinct !DISubprogram(name: "base64_enc", scope: !9, file: !9, line: 144, type: !26, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !29, !15, !18}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 2048, align: 32, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 64)
!34 = !{i32 2, !"Dwarf Version", i32 4}
!35 = !{i32 2, !"Debug Info Version", i32 3}
!36 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!37 = !DILocalVariable(name: "in", arg: 1, scope: !8, file: !9, line: 45, type: !12)
!38 = !DIExpression()
!39 = !DILocation(line: 45, column: 24, scope: !8)
!40 = !DILocalVariable(name: "insz", arg: 2, scope: !8, file: !9, line: 45, type: !15)
!41 = !DILocation(line: 45, column: 35, scope: !8)
!42 = !DILocalVariable(name: "outsz", arg: 3, scope: !8, file: !9, line: 45, type: !18)
!43 = !DILocation(line: 45, column: 49, scope: !8)
!44 = !DILocalVariable(name: "i", scope: !8, file: !9, line: 80, type: !15)
!45 = !DILocation(line: 80, column: 9, scope: !8)
!46 = !DILocalVariable(name: "o", scope: !8, file: !9, line: 80, type: !15)
!47 = !DILocation(line: 80, column: 12, scope: !8)
!48 = !DILocalVariable(name: "tmp", scope: !8, file: !9, line: 81, type: !21)
!49 = !DILocation(line: 81, column: 6, scope: !8)
!50 = !DILocalVariable(name: "digit", scope: !8, file: !9, line: 81, type: !21)
!51 = !DILocation(line: 81, column: 11, scope: !8)
!52 = !DILocalVariable(name: "out", scope: !8, file: !9, line: 82, type: !4)
!53 = !DILocation(line: 82, column: 17, scope: !8)
!54 = !DILocation(line: 84, column: 6, scope: !55)
!55 = distinct !DILexicalBlock(scope: !8, file: !9, line: 84, column: 6)
!56 = !DILocation(line: 84, column: 11, scope: !55)
!57 = !DILocation(line: 84, column: 6, scope: !8)
!58 = !DILocation(line: 85, column: 3, scope: !55)
!59 = !DILocation(line: 87, column: 6, scope: !60)
!60 = distinct !DILexicalBlock(scope: !8, file: !9, line: 87, column: 6)
!61 = !DILocation(line: 87, column: 11, scope: !60)
!62 = !DILocation(line: 87, column: 6, scope: !8)
!63 = !DILocation(line: 88, column: 4, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !9, line: 87, column: 17)
!65 = !DILocation(line: 88, column: 10, scope: !64)
!66 = !DILocation(line: 89, column: 27, scope: !64)
!67 = !DILocation(line: 89, column: 3, scope: !64)
!68 = !DILocation(line: 92, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !8, file: !9, line: 92, column: 6)
!70 = !DILocation(line: 92, column: 14, scope: !69)
!71 = !DILocation(line: 92, column: 6, scope: !69)
!72 = !DILocation(line: 92, column: 19, scope: !69)
!73 = !DILocation(line: 92, column: 6, scope: !8)
!74 = !DILocation(line: 93, column: 14, scope: !69)
!75 = !DILocation(line: 93, column: 19, scope: !69)
!76 = !DILocation(line: 93, column: 24, scope: !69)
!77 = !DILocation(line: 93, column: 29, scope: !69)
!78 = !DILocation(line: 93, column: 4, scope: !69)
!79 = !DILocation(line: 93, column: 10, scope: !69)
!80 = !DILocation(line: 93, column: 3, scope: !69)
!81 = !DILocation(line: 94, column: 14, scope: !82)
!82 = distinct !DILexicalBlock(scope: !69, file: !9, line: 94, column: 11)
!83 = !DILocation(line: 94, column: 19, scope: !82)
!84 = !DILocation(line: 94, column: 11, scope: !82)
!85 = !DILocation(line: 94, column: 24, scope: !82)
!86 = !DILocation(line: 94, column: 11, scope: !69)
!87 = !DILocation(line: 95, column: 14, scope: !82)
!88 = !DILocation(line: 95, column: 19, scope: !82)
!89 = !DILocation(line: 95, column: 24, scope: !82)
!90 = !DILocation(line: 95, column: 29, scope: !82)
!91 = !DILocation(line: 95, column: 4, scope: !82)
!92 = !DILocation(line: 95, column: 10, scope: !82)
!93 = !DILocation(line: 95, column: 3, scope: !82)
!94 = !DILocation(line: 97, column: 13, scope: !82)
!95 = !DILocation(line: 97, column: 18, scope: !82)
!96 = !DILocation(line: 97, column: 23, scope: !82)
!97 = !DILocation(line: 97, column: 4, scope: !82)
!98 = !DILocation(line: 97, column: 10, scope: !82)
!99 = !DILocation(line: 98, column: 23, scope: !100)
!100 = distinct !DILexicalBlock(scope: !8, file: !9, line: 98, column: 6)
!101 = !DILocation(line: 98, column: 22, scope: !100)
!102 = !DILocation(line: 98, column: 30, scope: !100)
!103 = !DILocation(line: 98, column: 14, scope: !100)
!104 = !DILocation(line: 98, column: 12, scope: !100)
!105 = !DILocation(line: 98, column: 6, scope: !8)
!106 = !DILocation(line: 99, column: 4, scope: !107)
!107 = distinct !DILexicalBlock(scope: !100, file: !9, line: 98, column: 37)
!108 = !DILocation(line: 99, column: 10, scope: !107)
!109 = !DILocation(line: 100, column: 3, scope: !107)
!110 = !DILocation(line: 103, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !8, file: !9, line: 103, column: 2)
!112 = !DILocation(line: 103, column: 16, scope: !111)
!113 = !DILocation(line: 103, column: 7, scope: !111)
!114 = !DILocation(line: 103, column: 21, scope: !115)
!115 = !DILexicalBlockFile(scope: !116, file: !9, discriminator: 1)
!116 = distinct !DILexicalBlock(scope: !111, file: !9, line: 103, column: 2)
!117 = !DILocation(line: 103, column: 25, scope: !115)
!118 = !DILocation(line: 103, column: 23, scope: !115)
!119 = !DILocation(line: 103, column: 2, scope: !115)
!120 = !DILocation(line: 104, column: 46, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !9, line: 104, column: 7)
!122 = distinct !DILexicalBlock(scope: !116, file: !9, line: 103, column: 47)
!123 = !DILocation(line: 104, column: 43, scope: !121)
!124 = !DILocation(line: 104, column: 16, scope: !121)
!125 = !DILocation(line: 104, column: 14, scope: !121)
!126 = !DILocation(line: 104, column: 52, scope: !121)
!127 = !DILocation(line: 104, column: 7, scope: !122)
!128 = !DILocation(line: 105, column: 4, scope: !121)
!129 = !DILocation(line: 106, column: 9, scope: !122)
!130 = !DILocation(line: 106, column: 15, scope: !122)
!131 = !DILocation(line: 106, column: 7, scope: !122)
!132 = !DILocation(line: 107, column: 46, scope: !133)
!133 = distinct !DILexicalBlock(scope: !122, file: !9, line: 107, column: 7)
!134 = !DILocation(line: 107, column: 48, scope: !133)
!135 = !DILocation(line: 107, column: 43, scope: !133)
!136 = !DILocation(line: 107, column: 16, scope: !133)
!137 = !DILocation(line: 107, column: 14, scope: !133)
!138 = !DILocation(line: 107, column: 55, scope: !133)
!139 = !DILocation(line: 107, column: 7, scope: !122)
!140 = !DILocation(line: 108, column: 4, scope: !133)
!141 = !DILocation(line: 109, column: 10, scope: !122)
!142 = !DILocation(line: 109, column: 16, scope: !122)
!143 = !DILocation(line: 109, column: 7, scope: !122)
!144 = !DILocation(line: 110, column: 46, scope: !145)
!145 = distinct !DILexicalBlock(scope: !122, file: !9, line: 110, column: 7)
!146 = !DILocation(line: 110, column: 48, scope: !145)
!147 = !DILocation(line: 110, column: 43, scope: !145)
!148 = !DILocation(line: 110, column: 16, scope: !145)
!149 = !DILocation(line: 110, column: 14, scope: !145)
!150 = !DILocation(line: 110, column: 55, scope: !145)
!151 = !DILocation(line: 110, column: 7, scope: !122)
!152 = !DILocation(line: 111, column: 9, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !9, line: 111, column: 8)
!154 = distinct !DILexicalBlock(scope: !145, file: !9, line: 110, column: 62)
!155 = !DILocation(line: 111, column: 14, scope: !153)
!156 = !DILocation(line: 111, column: 19, scope: !153)
!157 = !DILocation(line: 111, column: 11, scope: !153)
!158 = !DILocation(line: 111, column: 24, scope: !153)
!159 = !DILocation(line: 111, column: 31, scope: !160)
!160 = !DILexicalBlockFile(scope: !153, file: !9, discriminator: 1)
!161 = !DILocation(line: 111, column: 33, scope: !160)
!162 = !DILocation(line: 111, column: 28, scope: !160)
!163 = !DILocation(line: 111, column: 38, scope: !160)
!164 = !DILocation(line: 111, column: 8, scope: !160)
!165 = !DILocation(line: 112, column: 11, scope: !153)
!166 = !DILocation(line: 112, column: 5, scope: !153)
!167 = !DILocation(line: 114, column: 5, scope: !153)
!168 = !DILocation(line: 115, column: 3, scope: !154)
!169 = !DILocation(line: 116, column: 10, scope: !122)
!170 = !DILocation(line: 116, column: 16, scope: !122)
!171 = !DILocation(line: 116, column: 7, scope: !122)
!172 = !DILocation(line: 117, column: 46, scope: !173)
!173 = distinct !DILexicalBlock(scope: !122, file: !9, line: 117, column: 7)
!174 = !DILocation(line: 117, column: 48, scope: !173)
!175 = !DILocation(line: 117, column: 43, scope: !173)
!176 = !DILocation(line: 117, column: 16, scope: !173)
!177 = !DILocation(line: 117, column: 14, scope: !173)
!178 = !DILocation(line: 117, column: 55, scope: !173)
!179 = !DILocation(line: 117, column: 7, scope: !122)
!180 = !DILocation(line: 118, column: 9, scope: !181)
!181 = distinct !DILexicalBlock(scope: !182, file: !9, line: 118, column: 8)
!182 = distinct !DILexicalBlock(scope: !173, file: !9, line: 117, column: 62)
!183 = !DILocation(line: 118, column: 14, scope: !181)
!184 = !DILocation(line: 118, column: 19, scope: !181)
!185 = !DILocation(line: 118, column: 11, scope: !181)
!186 = !DILocation(line: 118, column: 24, scope: !181)
!187 = !DILocation(line: 118, column: 31, scope: !188)
!188 = !DILexicalBlockFile(scope: !181, file: !9, discriminator: 1)
!189 = !DILocation(line: 118, column: 33, scope: !188)
!190 = !DILocation(line: 118, column: 28, scope: !188)
!191 = !DILocation(line: 118, column: 38, scope: !188)
!192 = !DILocation(line: 118, column: 8, scope: !188)
!193 = !DILocation(line: 119, column: 11, scope: !181)
!194 = !DILocation(line: 119, column: 5, scope: !181)
!195 = !DILocation(line: 121, column: 5, scope: !181)
!196 = !DILocation(line: 122, column: 3, scope: !182)
!197 = !DILocation(line: 123, column: 10, scope: !122)
!198 = !DILocation(line: 123, column: 7, scope: !122)
!199 = !DILocation(line: 124, column: 15, scope: !122)
!200 = !DILocation(line: 124, column: 19, scope: !122)
!201 = !DILocation(line: 124, column: 26, scope: !122)
!202 = !DILocation(line: 124, column: 14, scope: !122)
!203 = !DILocation(line: 124, column: 8, scope: !122)
!204 = !DILocation(line: 124, column: 4, scope: !122)
!205 = !DILocation(line: 124, column: 12, scope: !122)
!206 = !DILocation(line: 125, column: 7, scope: !207)
!207 = distinct !DILexicalBlock(scope: !122, file: !9, line: 125, column: 7)
!208 = !DILocation(line: 125, column: 9, scope: !207)
!209 = !DILocation(line: 125, column: 16, scope: !207)
!210 = !DILocation(line: 125, column: 15, scope: !207)
!211 = !DILocation(line: 125, column: 13, scope: !207)
!212 = !DILocation(line: 125, column: 7, scope: !122)
!213 = !DILocation(line: 126, column: 18, scope: !207)
!214 = !DILocation(line: 126, column: 22, scope: !207)
!215 = !DILocation(line: 126, column: 28, scope: !207)
!216 = !DILocation(line: 126, column: 17, scope: !207)
!217 = !DILocation(line: 126, column: 8, scope: !207)
!218 = !DILocation(line: 126, column: 10, scope: !207)
!219 = !DILocation(line: 126, column: 4, scope: !207)
!220 = !DILocation(line: 126, column: 15, scope: !207)
!221 = !DILocation(line: 127, column: 7, scope: !222)
!222 = distinct !DILexicalBlock(scope: !122, file: !9, line: 127, column: 7)
!223 = !DILocation(line: 127, column: 9, scope: !222)
!224 = !DILocation(line: 127, column: 16, scope: !222)
!225 = !DILocation(line: 127, column: 15, scope: !222)
!226 = !DILocation(line: 127, column: 13, scope: !222)
!227 = !DILocation(line: 127, column: 7, scope: !122)
!228 = !DILocation(line: 128, column: 17, scope: !222)
!229 = !DILocation(line: 128, column: 21, scope: !222)
!230 = !DILocation(line: 128, column: 8, scope: !222)
!231 = !DILocation(line: 128, column: 10, scope: !222)
!232 = !DILocation(line: 128, column: 4, scope: !222)
!233 = !DILocation(line: 128, column: 15, scope: !222)
!234 = !DILocation(line: 129, column: 2, scope: !122)
!235 = !DILocation(line: 103, column: 33, scope: !236)
!236 = !DILexicalBlockFile(scope: !116, file: !9, discriminator: 2)
!237 = !DILocation(line: 103, column: 41, scope: !236)
!238 = !DILocation(line: 103, column: 2, scope: !236)
!239 = distinct !{!239, !240}
!240 = !DILocation(line: 103, column: 2, scope: !8)
!241 = !DILocation(line: 130, column: 7, scope: !8)
!242 = !DILocation(line: 130, column: 6, scope: !8)
!243 = !DILocation(line: 130, column: 2, scope: !8)
!244 = !DILocation(line: 130, column: 14, scope: !8)
!245 = !DILocation(line: 131, column: 9, scope: !8)
!246 = !DILocation(line: 131, column: 2, scope: !8)
!247 = !DILocation(line: 134, column: 7, scope: !8)
!248 = !DILocation(line: 134, column: 2, scope: !8)
!249 = !DILocation(line: 135, column: 2, scope: !8)
!250 = !DILocation(line: 136, column: 1, scope: !8)
!251 = !DILocalVariable(name: "in", arg: 1, scope: !25, file: !9, line: 144, type: !29)
!252 = !DILocation(line: 144, column: 33, scope: !25)
!253 = !DILocalVariable(name: "insz", arg: 2, scope: !25, file: !9, line: 144, type: !15)
!254 = !DILocation(line: 144, column: 44, scope: !25)
!255 = !DILocalVariable(name: "outsz", arg: 3, scope: !25, file: !9, line: 144, type: !18)
!256 = !DILocation(line: 144, column: 58, scope: !25)
!257 = !DILocalVariable(name: "i", scope: !25, file: !9, line: 155, type: !15)
!258 = !DILocation(line: 155, column: 9, scope: !25)
!259 = !DILocalVariable(name: "o", scope: !25, file: !9, line: 155, type: !15)
!260 = !DILocation(line: 155, column: 12, scope: !25)
!261 = !DILocalVariable(name: "out", scope: !25, file: !9, line: 156, type: !28)
!262 = !DILocation(line: 156, column: 8, scope: !25)
!263 = !DILocation(line: 158, column: 6, scope: !264)
!264 = distinct !DILexicalBlock(scope: !25, file: !9, line: 158, column: 6)
!265 = !DILocation(line: 158, column: 11, scope: !264)
!266 = !DILocation(line: 158, column: 6, scope: !25)
!267 = !DILocation(line: 159, column: 4, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !9, line: 158, column: 17)
!269 = !DILocation(line: 159, column: 10, scope: !268)
!270 = !DILocation(line: 160, column: 10, scope: !268)
!271 = !DILocation(line: 160, column: 3, scope: !268)
!272 = !DILocation(line: 163, column: 13, scope: !25)
!273 = !DILocation(line: 163, column: 18, scope: !25)
!274 = !DILocation(line: 163, column: 23, scope: !25)
!275 = !DILocation(line: 163, column: 28, scope: !25)
!276 = !DILocation(line: 163, column: 3, scope: !25)
!277 = !DILocation(line: 163, column: 9, scope: !25)
!278 = !DILocation(line: 164, column: 23, scope: !279)
!279 = distinct !DILexicalBlock(scope: !25, file: !9, line: 164, column: 6)
!280 = !DILocation(line: 164, column: 22, scope: !279)
!281 = !DILocation(line: 164, column: 30, scope: !279)
!282 = !DILocation(line: 164, column: 14, scope: !279)
!283 = !DILocation(line: 164, column: 12, scope: !279)
!284 = !DILocation(line: 164, column: 6, scope: !25)
!285 = !DILocation(line: 165, column: 4, scope: !286)
!286 = distinct !DILexicalBlock(scope: !279, file: !9, line: 164, column: 37)
!287 = !DILocation(line: 165, column: 10, scope: !286)
!288 = !DILocation(line: 166, column: 3, scope: !286)
!289 = !DILocation(line: 169, column: 9, scope: !290)
!290 = distinct !DILexicalBlock(scope: !25, file: !9, line: 169, column: 2)
!291 = !DILocation(line: 169, column: 16, scope: !290)
!292 = !DILocation(line: 169, column: 7, scope: !290)
!293 = !DILocation(line: 169, column: 21, scope: !294)
!294 = !DILexicalBlockFile(scope: !295, file: !9, discriminator: 1)
!295 = distinct !DILexicalBlock(scope: !290, file: !9, line: 169, column: 2)
!296 = !DILocation(line: 169, column: 25, scope: !294)
!297 = !DILocation(line: 169, column: 23, scope: !294)
!298 = !DILocation(line: 169, column: 2, scope: !294)
!299 = !DILocalVariable(name: "tmp", scope: !300, file: !9, line: 170, type: !21)
!300 = distinct !DILexicalBlock(scope: !295, file: !9, line: 169, column: 47)
!301 = !DILocation(line: 170, column: 7, scope: !300)
!302 = !DILocation(line: 171, column: 13, scope: !300)
!303 = !DILocation(line: 171, column: 10, scope: !300)
!304 = !DILocation(line: 171, column: 17, scope: !300)
!305 = !DILocation(line: 171, column: 8, scope: !300)
!306 = !DILocation(line: 172, column: 7, scope: !307)
!307 = distinct !DILexicalBlock(scope: !300, file: !9, line: 172, column: 7)
!308 = !DILocation(line: 172, column: 9, scope: !307)
!309 = !DILocation(line: 172, column: 15, scope: !307)
!310 = !DILocation(line: 172, column: 13, scope: !307)
!311 = !DILocation(line: 172, column: 7, scope: !300)
!312 = !DILocation(line: 173, column: 14, scope: !307)
!313 = !DILocation(line: 173, column: 16, scope: !307)
!314 = !DILocation(line: 173, column: 11, scope: !307)
!315 = !DILocation(line: 173, column: 21, scope: !307)
!316 = !DILocation(line: 173, column: 8, scope: !307)
!317 = !DILocation(line: 173, column: 4, scope: !307)
!318 = !DILocation(line: 174, column: 7, scope: !319)
!319 = distinct !DILexicalBlock(scope: !300, file: !9, line: 174, column: 7)
!320 = !DILocation(line: 174, column: 9, scope: !319)
!321 = !DILocation(line: 174, column: 15, scope: !319)
!322 = !DILocation(line: 174, column: 13, scope: !319)
!323 = !DILocation(line: 174, column: 7, scope: !300)
!324 = !DILocation(line: 175, column: 14, scope: !319)
!325 = !DILocation(line: 175, column: 16, scope: !319)
!326 = !DILocation(line: 175, column: 11, scope: !319)
!327 = !DILocation(line: 175, column: 8, scope: !319)
!328 = !DILocation(line: 175, column: 4, scope: !319)
!329 = !DILocation(line: 176, column: 23, scope: !300)
!330 = !DILocation(line: 176, column: 27, scope: !300)
!331 = !DILocation(line: 176, column: 34, scope: !300)
!332 = !DILocation(line: 176, column: 13, scope: !300)
!333 = !DILocation(line: 176, column: 7, scope: !300)
!334 = !DILocation(line: 176, column: 3, scope: !300)
!335 = !DILocation(line: 176, column: 11, scope: !300)
!336 = !DILocation(line: 177, column: 26, scope: !300)
!337 = !DILocation(line: 177, column: 30, scope: !300)
!338 = !DILocation(line: 177, column: 37, scope: !300)
!339 = !DILocation(line: 177, column: 16, scope: !300)
!340 = !DILocation(line: 177, column: 7, scope: !300)
!341 = !DILocation(line: 177, column: 9, scope: !300)
!342 = !DILocation(line: 177, column: 3, scope: !300)
!343 = !DILocation(line: 177, column: 14, scope: !300)
!344 = !DILocation(line: 178, column: 26, scope: !300)
!345 = !DILocation(line: 178, column: 30, scope: !300)
!346 = !DILocation(line: 178, column: 36, scope: !300)
!347 = !DILocation(line: 178, column: 16, scope: !300)
!348 = !DILocation(line: 178, column: 7, scope: !300)
!349 = !DILocation(line: 178, column: 9, scope: !300)
!350 = !DILocation(line: 178, column: 3, scope: !300)
!351 = !DILocation(line: 178, column: 14, scope: !300)
!352 = !DILocation(line: 179, column: 26, scope: !300)
!353 = !DILocation(line: 179, column: 30, scope: !300)
!354 = !DILocation(line: 179, column: 16, scope: !300)
!355 = !DILocation(line: 179, column: 7, scope: !300)
!356 = !DILocation(line: 179, column: 9, scope: !300)
!357 = !DILocation(line: 179, column: 3, scope: !300)
!358 = !DILocation(line: 179, column: 14, scope: !300)
!359 = !DILocation(line: 180, column: 7, scope: !360)
!360 = distinct !DILexicalBlock(scope: !300, file: !9, line: 180, column: 7)
!361 = !DILocation(line: 180, column: 9, scope: !360)
!362 = !DILocation(line: 180, column: 15, scope: !360)
!363 = !DILocation(line: 180, column: 13, scope: !360)
!364 = !DILocation(line: 180, column: 7, scope: !300)
!365 = !DILocation(line: 181, column: 8, scope: !360)
!366 = !DILocation(line: 181, column: 10, scope: !360)
!367 = !DILocation(line: 181, column: 4, scope: !360)
!368 = !DILocation(line: 181, column: 15, scope: !360)
!369 = !DILocation(line: 182, column: 7, scope: !370)
!370 = distinct !DILexicalBlock(scope: !300, file: !9, line: 182, column: 7)
!371 = !DILocation(line: 182, column: 9, scope: !370)
!372 = !DILocation(line: 182, column: 15, scope: !370)
!373 = !DILocation(line: 182, column: 13, scope: !370)
!374 = !DILocation(line: 182, column: 7, scope: !300)
!375 = !DILocation(line: 183, column: 8, scope: !370)
!376 = !DILocation(line: 183, column: 10, scope: !370)
!377 = !DILocation(line: 183, column: 4, scope: !370)
!378 = !DILocation(line: 183, column: 15, scope: !370)
!379 = !DILocation(line: 184, column: 2, scope: !300)
!380 = !DILocation(line: 169, column: 33, scope: !381)
!381 = !DILexicalBlockFile(scope: !295, file: !9, discriminator: 2)
!382 = !DILocation(line: 169, column: 41, scope: !381)
!383 = !DILocation(line: 169, column: 2, scope: !381)
!384 = distinct !{!384, !385}
!385 = !DILocation(line: 169, column: 2, scope: !25)
!386 = !DILocation(line: 185, column: 7, scope: !25)
!387 = !DILocation(line: 185, column: 6, scope: !25)
!388 = !DILocation(line: 185, column: 2, scope: !25)
!389 = !DILocation(line: 185, column: 14, scope: !25)
!390 = !DILocation(line: 186, column: 9, scope: !25)
!391 = !DILocation(line: 186, column: 2, scope: !25)
!392 = !DILocation(line: 187, column: 1, scope: !25)
