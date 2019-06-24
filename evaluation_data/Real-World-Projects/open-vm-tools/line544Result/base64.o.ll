; ModuleID = './base64.o.i'
source_filename = "./base64.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@Base64 = internal constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@base64Reverse = internal constant [256 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF\FF\FD\FD\FD\FD\FD\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FD\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FE\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16

; Function Attrs: nounwind uwtable
define signext i8 @Base64_Encode(i8*, i64, i8*, i64, i64*) #0 !dbg !40 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !56, metadata !57), !dbg !58
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !59, metadata !57), !dbg !60
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !61, metadata !57), !dbg !62
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !63, metadata !57), !dbg !64
  store i64* %4, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !65, metadata !57), !dbg !66
  call void @llvm.dbg.declare(metadata i8** %11, metadata !67, metadata !57), !dbg !68
  %14 = load i8*, i8** %8, align 8, !dbg !69
  store i8* %14, i8** %11, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata i8* %12, metadata !70, metadata !57), !dbg !71
  store i8 1, i8* %12, align 1, !dbg !71
  %15 = load i64, i64* %7, align 8, !dbg !72
  %16 = add i64 %15, 2, !dbg !74
  %17 = load i64, i64* %7, align 8, !dbg !75
  %18 = icmp ult i64 %16, %17, !dbg !76
  br i1 %18, label %30, label %19, !dbg !77

; <label>:19:                                     ; preds = %5
  %20 = load i64, i64* %9, align 8, !dbg !78
  %21 = icmp ult i64 %20, 1, !dbg !80
  br i1 %21, label %30, label %22, !dbg !81

; <label>:22:                                     ; preds = %19
  %23 = load i64, i64* %7, align 8, !dbg !82
  %24 = add i64 %23, 2, !dbg !83
  %25 = udiv i64 %24, 3, !dbg !84
  %26 = load i64, i64* %9, align 8, !dbg !85
  %27 = sub i64 %26, 1, !dbg !86
  %28 = udiv i64 %27, 4, !dbg !87
  %29 = icmp ugt i64 %25, %28, !dbg !88
  br i1 %29, label %30, label %31, !dbg !89

; <label>:30:                                     ; preds = %22, %19, %5
  store i8 0, i8* %12, align 1, !dbg !91
  br label %171, !dbg !93

; <label>:31:                                     ; preds = %22
  br label %32, !dbg !94

; <label>:32:                                     ; preds = %40, %31
  %33 = load i64, i64* %7, align 8, !dbg !95
  %34 = icmp ugt i64 %33, 2, !dbg !96
  %35 = xor i1 %34, true, !dbg !97
  %36 = xor i1 %35, true, !dbg !98
  %37 = zext i1 %36 to i32, !dbg !98
  %38 = sext i32 %37 to i64, !dbg !98
  %39 = icmp ne i64 %38, 0, !dbg !99
  br i1 %39, label %40, label %101, !dbg !99

; <label>:40:                                     ; preds = %32
  %41 = load i8*, i8** %6, align 8, !dbg !100
  %42 = getelementptr inbounds i8, i8* %41, i64 0, !dbg !100
  %43 = load i8, i8* %42, align 1, !dbg !100
  %44 = zext i8 %43 to i32, !dbg !100
  %45 = ashr i32 %44, 2, !dbg !102
  %46 = sext i32 %45 to i64, !dbg !103
  %47 = getelementptr inbounds [65 x i8], [65 x i8]* @Base64, i64 0, i64 %46, !dbg !103
  %48 = load i8, i8* %47, align 1, !dbg !103
  %49 = load i8*, i8** %8, align 8, !dbg !104
  %50 = getelementptr inbounds i8, i8* %49, i64 0, !dbg !104
  store i8 %48, i8* %50, align 1, !dbg !105
  %51 = load i8*, i8** %6, align 8, !dbg !106
  %52 = getelementptr inbounds i8, i8* %51, i64 0, !dbg !106
  %53 = load i8, i8* %52, align 1, !dbg !106
  %54 = zext i8 %53 to i32, !dbg !106
  %55 = and i32 %54, 3, !dbg !107
  %56 = shl i32 %55, 4, !dbg !108
  %57 = load i8*, i8** %6, align 8, !dbg !109
  %58 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !109
  %59 = load i8, i8* %58, align 1, !dbg !109
  %60 = zext i8 %59 to i32, !dbg !109
  %61 = ashr i32 %60, 4, !dbg !110
  %62 = or i32 %56, %61, !dbg !111
  %63 = sext i32 %62 to i64, !dbg !112
  %64 = getelementptr inbounds [65 x i8], [65 x i8]* @Base64, i64 0, i64 %63, !dbg !112
  %65 = load i8, i8* %64, align 1, !dbg !112
  %66 = load i8*, i8** %8, align 8, !dbg !113
  %67 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !113
  store i8 %65, i8* %67, align 1, !dbg !114
  %68 = load i8*, i8** %6, align 8, !dbg !115
  %69 = getelementptr inbounds i8, i8* %68, i64 1, !dbg !115
  %70 = load i8, i8* %69, align 1, !dbg !115
  %71 = zext i8 %70 to i32, !dbg !115
  %72 = and i32 %71, 15, !dbg !116
  %73 = shl i32 %72, 2, !dbg !117
  %74 = load i8*, i8** %6, align 8, !dbg !118
  %75 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !118
  %76 = load i8, i8* %75, align 1, !dbg !118
  %77 = zext i8 %76 to i32, !dbg !118
  %78 = ashr i32 %77, 6, !dbg !119
  %79 = or i32 %73, %78, !dbg !120
  %80 = sext i32 %79 to i64, !dbg !121
  %81 = getelementptr inbounds [65 x i8], [65 x i8]* @Base64, i64 0, i64 %80, !dbg !121
  %82 = load i8, i8* %81, align 1, !dbg !121
  %83 = load i8*, i8** %8, align 8, !dbg !122
  %84 = getelementptr inbounds i8, i8* %83, i64 2, !dbg !122
  store i8 %82, i8* %84, align 1, !dbg !123
  %85 = load i8*, i8** %6, align 8, !dbg !124
  %86 = getelementptr inbounds i8, i8* %85, i64 2, !dbg !124
  %87 = load i8, i8* %86, align 1, !dbg !124
  %88 = zext i8 %87 to i32, !dbg !124
  %89 = and i32 %88, 63, !dbg !125
  %90 = sext i32 %89 to i64, !dbg !126
  %91 = getelementptr inbounds [65 x i8], [65 x i8]* @Base64, i64 0, i64 %90, !dbg !126
  %92 = load i8, i8* %91, align 1, !dbg !126
  %93 = load i8*, i8** %8, align 8, !dbg !127
  %94 = getelementptr inbounds i8, i8* %93, i64 3, !dbg !127
  store i8 %92, i8* %94, align 1, !dbg !128
  %95 = load i64, i64* %7, align 8, !dbg !129
  %96 = sub i64 %95, 3, !dbg !129
  store i64 %96, i64* %7, align 8, !dbg !129
  %97 = load i8*, i8** %6, align 8, !dbg !130
  %98 = getelementptr inbounds i8, i8* %97, i64 3, !dbg !130
  store i8* %98, i8** %6, align 8, !dbg !130
  %99 = load i8*, i8** %8, align 8, !dbg !131
  %100 = getelementptr inbounds i8, i8* %99, i64 4, !dbg !131
  store i8* %100, i8** %8, align 8, !dbg !131
  br label %32, !dbg !132, !llvm.loop !134

; <label>:101:                                    ; preds = %32
  %102 = load i64, i64* %7, align 8, !dbg !135
  %103 = add i64 %102, -1, !dbg !135
  store i64 %103, i64* %7, align 8, !dbg !135
  %104 = icmp ne i64 %102, 0, !dbg !137
  %105 = xor i1 %104, true, !dbg !137
  %106 = xor i1 %105, true, !dbg !138
  %107 = zext i1 %106 to i32, !dbg !138
  %108 = sext i32 %107 to i64, !dbg !138
  %109 = icmp ne i64 %108, 0, !dbg !139
  br i1 %109, label %110, label %168, !dbg !140

; <label>:110:                                    ; preds = %101
  call void @llvm.dbg.declare(metadata i8* %13, metadata !141, metadata !57), !dbg !143
  %111 = load i64, i64* %7, align 8, !dbg !144
  %112 = icmp ne i64 %111, 0, !dbg !144
  br i1 %112, label %113, label %118, !dbg !144

; <label>:113:                                    ; preds = %110
  %114 = load i8*, i8** %6, align 8, !dbg !145
  %115 = getelementptr inbounds i8, i8* %114, i64 1, !dbg !145
  %116 = load i8, i8* %115, align 1, !dbg !145
  %117 = zext i8 %116 to i32, !dbg !145
  br label %119, !dbg !147

; <label>:118:                                    ; preds = %110
  br label %119, !dbg !148

; <label>:119:                                    ; preds = %118, %113
  %120 = phi i32 [ %117, %113 ], [ 0, %118 ], !dbg !150
  %121 = trunc i32 %120 to i8, !dbg !150
  store i8 %121, i8* %13, align 1, !dbg !152
  %122 = load i8*, i8** %6, align 8, !dbg !153
  %123 = getelementptr inbounds i8, i8* %122, i64 0, !dbg !153
  %124 = load i8, i8* %123, align 1, !dbg !153
  %125 = zext i8 %124 to i32, !dbg !153
  %126 = ashr i32 %125, 2, !dbg !154
  %127 = sext i32 %126 to i64, !dbg !155
  %128 = getelementptr inbounds [65 x i8], [65 x i8]* @Base64, i64 0, i64 %127, !dbg !155
  %129 = load i8, i8* %128, align 1, !dbg !155
  %130 = load i8*, i8** %8, align 8, !dbg !156
  %131 = getelementptr inbounds i8, i8* %130, i64 0, !dbg !156
  store i8 %129, i8* %131, align 1, !dbg !157
  %132 = load i8*, i8** %6, align 8, !dbg !158
  %133 = getelementptr inbounds i8, i8* %132, i64 0, !dbg !158
  %134 = load i8, i8* %133, align 1, !dbg !158
  %135 = zext i8 %134 to i32, !dbg !158
  %136 = and i32 %135, 3, !dbg !159
  %137 = shl i32 %136, 4, !dbg !160
  %138 = load i8, i8* %13, align 1, !dbg !161
  %139 = zext i8 %138 to i32, !dbg !161
  %140 = ashr i32 %139, 4, !dbg !162
  %141 = or i32 %137, %140, !dbg !163
  %142 = sext i32 %141 to i64, !dbg !164
  %143 = getelementptr inbounds [65 x i8], [65 x i8]* @Base64, i64 0, i64 %142, !dbg !164
  %144 = load i8, i8* %143, align 1, !dbg !164
  %145 = load i8*, i8** %8, align 8, !dbg !165
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !165
  store i8 %144, i8* %146, align 1, !dbg !166
  %147 = load i64, i64* %7, align 8, !dbg !167
  %148 = icmp ne i64 %147, 0, !dbg !167
  br i1 %148, label %149, label %158, !dbg !167

; <label>:149:                                    ; preds = %119
  %150 = load i8, i8* %13, align 1, !dbg !168
  %151 = zext i8 %150 to i32, !dbg !168
  %152 = and i32 %151, 15, !dbg !169
  %153 = shl i32 %152, 2, !dbg !170
  %154 = sext i32 %153 to i64, !dbg !171
  %155 = getelementptr inbounds [65 x i8], [65 x i8]* @Base64, i64 0, i64 %154, !dbg !171
  %156 = load i8, i8* %155, align 1, !dbg !171
  %157 = sext i8 %156 to i32, !dbg !171
  br label %159, !dbg !172

; <label>:158:                                    ; preds = %119
  br label %159, !dbg !173

; <label>:159:                                    ; preds = %158, %149
  %160 = phi i32 [ %157, %149 ], [ 61, %158 ], !dbg !174
  %161 = trunc i32 %160 to i8, !dbg !174
  %162 = load i8*, i8** %8, align 8, !dbg !175
  %163 = getelementptr inbounds i8, i8* %162, i64 2, !dbg !175
  store i8 %161, i8* %163, align 1, !dbg !176
  %164 = load i8*, i8** %8, align 8, !dbg !177
  %165 = getelementptr inbounds i8, i8* %164, i64 3, !dbg !177
  store i8 61, i8* %165, align 1, !dbg !178
  %166 = load i8*, i8** %8, align 8, !dbg !179
  %167 = getelementptr inbounds i8, i8* %166, i64 4, !dbg !179
  store i8* %167, i8** %8, align 8, !dbg !179
  br label %168, !dbg !180

; <label>:168:                                    ; preds = %159, %101
  %169 = load i8*, i8** %8, align 8, !dbg !181
  %170 = getelementptr inbounds i8, i8* %169, i64 0, !dbg !181
  store i8 0, i8* %170, align 1, !dbg !182
  br label %171, !dbg !181

; <label>:171:                                    ; preds = %168, %30
  %172 = load i64*, i64** %10, align 8, !dbg !183
  %173 = icmp ne i64* %172, null, !dbg !183
  br i1 %173, label %174, label %181, !dbg !185

; <label>:174:                                    ; preds = %171
  %175 = load i8*, i8** %8, align 8, !dbg !186
  %176 = load i8*, i8** %11, align 8, !dbg !188
  %177 = ptrtoint i8* %175 to i64, !dbg !189
  %178 = ptrtoint i8* %176 to i64, !dbg !189
  %179 = sub i64 %177, %178, !dbg !189
  %180 = load i64*, i64** %10, align 8, !dbg !190
  store i64 %179, i64* %180, align 8, !dbg !191
  br label %181, !dbg !192

; <label>:181:                                    ; preds = %174, %171
  %182 = load i8, i8* %12, align 1, !dbg !193
  ret i8 %182, !dbg !194
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define signext i8 @Base64_Decode(i8*, i8*, i64, i64*) #0 !dbg !195 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !200, metadata !57), !dbg !201
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !202, metadata !57), !dbg !203
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !204, metadata !57), !dbg !205
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !206, metadata !57), !dbg !207
  %9 = load i8*, i8** %5, align 8, !dbg !208
  %10 = load i8*, i8** %6, align 8, !dbg !209
  %11 = load i64, i64* %7, align 8, !dbg !210
  %12 = load i64*, i64** %8, align 8, !dbg !211
  %13 = call signext i8 @Base64_ChunkDecode(i8* %9, i64 -1, i8* %10, i64 %11, i64* %12), !dbg !212
  ret i8 %13, !dbg !213
}

; Function Attrs: nounwind uwtable
define signext i8 @Base64_ChunkDecode(i8*, i64, i8*, i64, i64*) #0 !dbg !214 {
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !217, metadata !57), !dbg !218
  store i64 %1, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !219, metadata !57), !dbg !220
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !221, metadata !57), !dbg !222
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !223, metadata !57), !dbg !224
  store i64* %4, i64** %11, align 8
  call void @llvm.dbg.declare(metadata i64** %11, metadata !225, metadata !57), !dbg !226
  call void @llvm.dbg.declare(metadata i32* %12, metadata !227, metadata !57), !dbg !231
  store i32 0, i32* %12, align 4, !dbg !231
  call void @llvm.dbg.declare(metadata i32* %13, metadata !232, metadata !57), !dbg !233
  store i32 0, i32* %13, align 4, !dbg !233
  call void @llvm.dbg.declare(metadata i64* %14, metadata !234, metadata !57), !dbg !236
  store i64 0, i64* %14, align 8, !dbg !236
  call void @llvm.dbg.declare(metadata i64* %15, metadata !237, metadata !57), !dbg !238
  store i64 0, i64* %15, align 8, !dbg !238
  %17 = load i64*, i64** %11, align 8, !dbg !239
  store i64 0, i64* %17, align 8, !dbg !240
  store i64 0, i64* %14, align 8, !dbg !241
  br label %18, !dbg !242

; <label>:18:                                     ; preds = %83, %5
  %19 = load i64, i64* %15, align 8, !dbg !243
  %20 = load i64, i64* %8, align 8, !dbg !247
  %21 = icmp ult i64 %19, %20, !dbg !248
  br i1 %21, label %22, label %84, !dbg !249

; <label>:22:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata i32* %16, metadata !250, metadata !57), !dbg !252
  %23 = load i64, i64* %15, align 8, !dbg !253
  %24 = load i8*, i8** %7, align 8, !dbg !254
  %25 = getelementptr inbounds i8, i8* %24, i64 %23, !dbg !254
  %26 = load i8, i8* %25, align 1, !dbg !254
  %27 = zext i8 %26 to i64, !dbg !255
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* @base64Reverse, i64 0, i64 %27, !dbg !255
  %29 = load i8, i8* %28, align 1, !dbg !255
  %30 = sext i8 %29 to i32, !dbg !255
  store i32 %30, i32* %16, align 4, !dbg !252
  %31 = load i32, i32* %16, align 4, !dbg !256
  %32 = icmp slt i32 %31, 0, !dbg !258
  %33 = zext i1 %32 to i32, !dbg !258
  %34 = sext i32 %33 to i64, !dbg !259
  %35 = icmp ne i64 %34, 0, !dbg !260
  br i1 %35, label %36, label %47, !dbg !261

; <label>:36:                                     ; preds = %22
  %37 = load i32, i32* %16, align 4, !dbg !262
  switch i32 %37, label %45 [
    i32 -3, label %38
    i32 -2, label %41
    i32 -1, label %44
  ], !dbg !264

; <label>:38:                                     ; preds = %36
  %39 = load i64, i64* %15, align 8, !dbg !265
  %40 = add i64 %39, 1, !dbg !265
  store i64 %40, i64* %15, align 8, !dbg !265
  br label %46, !dbg !267

; <label>:41:                                     ; preds = %36
  %42 = load i64, i64* %14, align 8, !dbg !268
  %43 = load i64*, i64** %11, align 8, !dbg !269
  store i64 %42, i64* %43, align 8, !dbg !270
  store i8 1, i8* %6, align 1, !dbg !271
  br label %87, !dbg !271

; <label>:44:                                     ; preds = %36
  br label %45, !dbg !272

; <label>:45:                                     ; preds = %36, %44
  store i8 0, i8* %6, align 1, !dbg !274
  br label %87, !dbg !274

; <label>:46:                                     ; preds = %38
  br label %83, !dbg !275

; <label>:47:                                     ; preds = %22
  %48 = load i64, i64* %15, align 8, !dbg !276
  %49 = add i64 %48, 1, !dbg !276
  store i64 %49, i64* %15, align 8, !dbg !276
  %50 = load i64, i64* %14, align 8, !dbg !278
  %51 = load i64, i64* %10, align 8, !dbg !280
  %52 = icmp uge i64 %50, %51, !dbg !281
  %53 = zext i1 %52 to i32, !dbg !281
  %54 = sext i32 %53 to i64, !dbg !282
  %55 = icmp ne i64 %54, 0, !dbg !283
  br i1 %55, label %56, label %57, !dbg !284

; <label>:56:                                     ; preds = %47
  store i8 0, i8* %6, align 1, !dbg !285
  br label %87, !dbg !285

; <label>:57:                                     ; preds = %47
  %58 = load i32, i32* %12, align 4, !dbg !287
  %59 = shl i32 %58, 6, !dbg !288
  %60 = load i32, i32* %16, align 4, !dbg !289
  %61 = or i32 %59, %60, !dbg !290
  store i32 %61, i32* %12, align 4, !dbg !291
  %62 = load i32, i32* %13, align 4, !dbg !292
  %63 = add nsw i32 %62, 6, !dbg !292
  store i32 %63, i32* %13, align 4, !dbg !292
  %64 = load i32, i32* %13, align 4, !dbg !293
  %65 = icmp sge i32 %64, 8, !dbg !295
  %66 = xor i1 %65, true, !dbg !296
  %67 = xor i1 %66, true, !dbg !297
  %68 = zext i1 %67 to i32, !dbg !297
  %69 = sext i32 %68 to i64, !dbg !297
  %70 = icmp ne i64 %69, 0, !dbg !298
  br i1 %70, label %71, label %82, !dbg !299

; <label>:71:                                     ; preds = %57
  %72 = load i32, i32* %13, align 4, !dbg !300
  %73 = sub nsw i32 %72, 8, !dbg !300
  store i32 %73, i32* %13, align 4, !dbg !300
  %74 = load i32, i32* %12, align 4, !dbg !302
  %75 = load i32, i32* %13, align 4, !dbg !303
  %76 = lshr i32 %74, %75, !dbg !304
  %77 = trunc i32 %76 to i8, !dbg !302
  %78 = load i64, i64* %14, align 8, !dbg !305
  %79 = add i64 %78, 1, !dbg !305
  store i64 %79, i64* %14, align 8, !dbg !305
  %80 = load i8*, i8** %9, align 8, !dbg !306
  %81 = getelementptr inbounds i8, i8* %80, i64 %78, !dbg !306
  store i8 %77, i8* %81, align 1, !dbg !307
  br label %82, !dbg !308

; <label>:82:                                     ; preds = %71, %57
  br label %83

; <label>:83:                                     ; preds = %82, %46
  br label %18, !dbg !309, !llvm.loop !311

; <label>:84:                                     ; preds = %18
  %85 = load i64, i64* %14, align 8, !dbg !312
  %86 = load i64*, i64** %11, align 8, !dbg !313
  store i64 %85, i64* %86, align 8, !dbg !314
  store i8 1, i8* %6, align 1, !dbg !315
  br label %87, !dbg !315

; <label>:87:                                     ; preds = %84, %56, %45, %41
  %88 = load i8, i8* %6, align 1, !dbg !316
  ret i8 %88, !dbg !316
}

; Function Attrs: nounwind uwtable
define signext i8 @Base64_ValidEncoding(i8*, i64) #0 !dbg !317 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !320, metadata !57), !dbg !321
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !322, metadata !57), !dbg !323
  call void @llvm.dbg.declare(metadata i64* %6, metadata !324, metadata !57), !dbg !325
  store i64 0, i64* %6, align 8, !dbg !326
  br label %8, !dbg !328

; <label>:8:                                      ; preds = %52, %2
  %9 = load i64, i64* %6, align 8, !dbg !329
  %10 = load i64, i64* %5, align 8, !dbg !332
  %11 = icmp ult i64 %9, %10, !dbg !333
  br i1 %11, label %12, label %55, !dbg !334

; <label>:12:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata i8* %7, metadata !335, metadata !57), !dbg !337
  %13 = load i64, i64* %6, align 8, !dbg !338
  %14 = load i8*, i8** %4, align 8, !dbg !339
  %15 = getelementptr inbounds i8, i8* %14, i64 %13, !dbg !339
  %16 = load i8, i8* %15, align 1, !dbg !339
  store i8 %16, i8* %7, align 1, !dbg !337
  %17 = load i8, i8* %7, align 1, !dbg !340
  %18 = zext i8 %17 to i32, !dbg !342
  %19 = sext i32 %18 to i64, !dbg !343
  %20 = call i16** @__ctype_b_loc() #1, !dbg !344
  %21 = load i16*, i16** %20, align 8, !dbg !345
  %22 = getelementptr inbounds i16, i16* %21, i64 %19, !dbg !343
  %23 = load i16, i16* %22, align 2, !dbg !343
  %24 = zext i16 %23 to i32, !dbg !343
  %25 = and i32 %24, 1024, !dbg !346
  %26 = icmp ne i32 %25, 0, !dbg !346
  br i1 %26, label %51, label %27, !dbg !347

; <label>:27:                                     ; preds = %12
  %28 = load i8, i8* %7, align 1, !dbg !348
  %29 = zext i8 %28 to i32, !dbg !350
  %30 = sext i32 %29 to i64, !dbg !351
  %31 = call i16** @__ctype_b_loc() #1, !dbg !352
  %32 = load i16*, i16** %31, align 8, !dbg !353
  %33 = getelementptr inbounds i16, i16* %32, i64 %30, !dbg !351
  %34 = load i16, i16* %33, align 2, !dbg !351
  %35 = zext i16 %34 to i32, !dbg !351
  %36 = and i32 %35, 2048, !dbg !354
  %37 = icmp ne i32 %36, 0, !dbg !354
  br i1 %37, label %51, label %38, !dbg !355

; <label>:38:                                     ; preds = %27
  %39 = load i8, i8* %7, align 1, !dbg !356
  %40 = zext i8 %39 to i32, !dbg !356
  %41 = icmp ne i32 %40, 43, !dbg !357
  br i1 %41, label %42, label %51, !dbg !358

; <label>:42:                                     ; preds = %38
  %43 = load i8, i8* %7, align 1, !dbg !359
  %44 = zext i8 %43 to i32, !dbg !359
  %45 = icmp ne i32 %44, 61, !dbg !360
  br i1 %45, label %46, label %51, !dbg !361

; <label>:46:                                     ; preds = %42
  %47 = load i8, i8* %7, align 1, !dbg !362
  %48 = zext i8 %47 to i32, !dbg !362
  %49 = icmp ne i32 %48, 47, !dbg !364
  br i1 %49, label %50, label %51, !dbg !365

; <label>:50:                                     ; preds = %46
  store i8 0, i8* %3, align 1, !dbg !367
  br label %56, !dbg !367

; <label>:51:                                     ; preds = %46, %42, %38, %27, %12
  br label %52, !dbg !369

; <label>:52:                                     ; preds = %51
  %53 = load i64, i64* %6, align 8, !dbg !370
  %54 = add i64 %53, 1, !dbg !370
  store i64 %54, i64* %6, align 8, !dbg !370
  br label %8, !dbg !372, !llvm.loop !373

; <label>:55:                                     ; preds = %8
  store i8 1, i8* %3, align 1, !dbg !375
  br label %56, !dbg !375

; <label>:56:                                     ; preds = %55, %50
  %57 = load i8, i8* %3, align 1, !dbg !376
  ret i8 %57, !dbg !376
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: nounwind uwtable
define i64 @Base64_EncodedLength(i8*, i64) #0 !dbg !377 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !380, metadata !57), !dbg !381
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !382, metadata !57), !dbg !383
  %5 = load i64, i64* %4, align 8, !dbg !384
  %6 = add i64 %5, 2, !dbg !385
  %7 = udiv i64 %6, 3, !dbg !386
  %8 = mul i64 %7, 4, !dbg !387
  %9 = add i64 %8, 1, !dbg !388
  ret i64 %9, !dbg !389
}

; Function Attrs: nounwind uwtable
define i64 @Base64_DecodedLength(i8*, i64) #0 !dbg !390 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !393, metadata !57), !dbg !394
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !395, metadata !57), !dbg !396
  call void @llvm.dbg.declare(metadata i64* %5, metadata !397, metadata !57), !dbg !398
  %6 = load i64, i64* %4, align 8, !dbg !399
  %7 = udiv i64 %6, 4, !dbg !400
  %8 = mul i64 %7, 3, !dbg !401
  store i64 %8, i64* %5, align 8, !dbg !402
  %9 = load i64, i64* %5, align 8, !dbg !403
  %10 = icmp ugt i64 %9, 2, !dbg !405
  br i1 %10, label %11, label %34, !dbg !406

; <label>:11:                                     ; preds = %2
  %12 = load i64, i64* %4, align 8, !dbg !407
  %13 = sub i64 %12, 1, !dbg !410
  %14 = load i8*, i8** %3, align 8, !dbg !411
  %15 = getelementptr inbounds i8, i8* %14, i64 %13, !dbg !411
  %16 = load i8, i8* %15, align 1, !dbg !411
  %17 = sext i8 %16 to i32, !dbg !411
  %18 = icmp eq i32 %17, 61, !dbg !412
  br i1 %18, label %19, label %22, !dbg !413

; <label>:19:                                     ; preds = %11
  %20 = load i64, i64* %5, align 8, !dbg !414
  %21 = add i64 %20, -1, !dbg !414
  store i64 %21, i64* %5, align 8, !dbg !414
  br label %22, !dbg !416

; <label>:22:                                     ; preds = %19, %11
  %23 = load i64, i64* %4, align 8, !dbg !417
  %24 = sub i64 %23, 2, !dbg !419
  %25 = load i8*, i8** %3, align 8, !dbg !420
  %26 = getelementptr inbounds i8, i8* %25, i64 %24, !dbg !420
  %27 = load i8, i8* %26, align 1, !dbg !420
  %28 = sext i8 %27 to i32, !dbg !420
  %29 = icmp eq i32 %28, 61, !dbg !421
  br i1 %29, label %30, label %33, !dbg !422

; <label>:30:                                     ; preds = %22
  %31 = load i64, i64* %5, align 8, !dbg !423
  %32 = add i64 %31, -1, !dbg !423
  store i64 %32, i64* %5, align 8, !dbg !423
  br label %33, !dbg !425

; <label>:33:                                     ; preds = %30, %22
  br label %34, !dbg !426

; <label>:34:                                     ; preds = %33, %2
  %35 = load i64, i64* %5, align 8, !dbg !427
  ret i64 %35, !dbg !428
}

; Function Attrs: nounwind uwtable
define signext i8 @Base64_EasyEncode(i8*, i64, i8**) #0 !dbg !429 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !433, metadata !57), !dbg !434
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !435, metadata !57), !dbg !436
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !437, metadata !57), !dbg !438
  call void @llvm.dbg.declare(metadata i8* %7, metadata !439, metadata !57), !dbg !440
  store i8 0, i8* %7, align 1, !dbg !440
  call void @llvm.dbg.declare(metadata i64* %8, metadata !441, metadata !57), !dbg !442
  %9 = load i8*, i8** %4, align 8, !dbg !443
  %10 = load i64, i64* %5, align 8, !dbg !444
  %11 = call i64 @Base64_EncodedLength(i8* %9, i64 %10), !dbg !445
  store i64 %11, i64* %8, align 8, !dbg !446
  %12 = load i64, i64* %8, align 8, !dbg !447
  %13 = call noalias i8* @malloc(i64 %12) #6, !dbg !448
  %14 = load i8**, i8*** %6, align 8, !dbg !449
  store i8* %13, i8** %14, align 8, !dbg !450
  %15 = load i8**, i8*** %6, align 8, !dbg !451
  %16 = load i8*, i8** %15, align 8, !dbg !453
  %17 = icmp ne i8* %16, null, !dbg !453
  br i1 %17, label %19, label %18, !dbg !454

; <label>:18:                                     ; preds = %3
  br label %29, !dbg !455

; <label>:19:                                     ; preds = %3
  %20 = load i8*, i8** %4, align 8, !dbg !457
  %21 = load i64, i64* %5, align 8, !dbg !459
  %22 = load i8**, i8*** %6, align 8, !dbg !460
  %23 = load i8*, i8** %22, align 8, !dbg !461
  %24 = load i64, i64* %8, align 8, !dbg !462
  %25 = call signext i8 @Base64_Encode(i8* %20, i64 %21, i8* %23, i64 %24, i64* null), !dbg !463
  %26 = icmp ne i8 %25, 0, !dbg !463
  br i1 %26, label %28, label %27, !dbg !464

; <label>:27:                                     ; preds = %19
  br label %29, !dbg !465

; <label>:28:                                     ; preds = %19
  store i8 1, i8* %7, align 1, !dbg !467
  br label %29, !dbg !468

; <label>:29:                                     ; preds = %28, %27, %18
  %30 = load i8, i8* %7, align 1, !dbg !469
  %31 = icmp ne i8 %30, 0, !dbg !469
  br i1 %31, label %36, label %32, !dbg !471

; <label>:32:                                     ; preds = %29
  %33 = load i8**, i8*** %6, align 8, !dbg !472
  %34 = load i8*, i8** %33, align 8, !dbg !474
  call void @free(i8* %34) #6, !dbg !475
  %35 = load i8**, i8*** %6, align 8, !dbg !476
  store i8* null, i8** %35, align 8, !dbg !477
  br label %36, !dbg !478

; <label>:36:                                     ; preds = %32, %29
  %37 = load i8, i8* %7, align 1, !dbg !479
  ret i8 %37, !dbg !480
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define signext i8 @Base64_EasyDecode(i8*, i8**, i64*) #0 !dbg !481 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !485, metadata !57), !dbg !486
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !487, metadata !57), !dbg !488
  store i64* %2, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !489, metadata !57), !dbg !490
  call void @llvm.dbg.declare(metadata i8* %7, metadata !491, metadata !57), !dbg !492
  store i8 0, i8* %7, align 1, !dbg !492
  call void @llvm.dbg.declare(metadata i64* %8, metadata !493, metadata !57), !dbg !494
  call void @llvm.dbg.declare(metadata i8** %9, metadata !495, metadata !57), !dbg !496
  %10 = load i8*, i8** %4, align 8, !dbg !497
  %11 = load i8*, i8** %4, align 8, !dbg !498
  %12 = call i64 @strlen(i8* %11) #7, !dbg !499
  %13 = call i64 @Base64_DecodedLength(i8* %10, i64 %12), !dbg !500
  store i64 %13, i64* %8, align 8, !dbg !502
  %14 = load i64, i64* %8, align 8, !dbg !503
  %15 = call noalias i8* @malloc(i64 %14) #6, !dbg !504
  store i8* %15, i8** %9, align 8, !dbg !505
  %16 = load i8*, i8** %9, align 8, !dbg !506
  %17 = icmp ne i8* %16, null, !dbg !506
  br i1 %17, label %19, label %18, !dbg !508

; <label>:18:                                     ; preds = %3
  br label %32, !dbg !509

; <label>:19:                                     ; preds = %3
  %20 = load i8*, i8** %4, align 8, !dbg !511
  %21 = load i8*, i8** %9, align 8, !dbg !513
  %22 = load i64, i64* %8, align 8, !dbg !514
  %23 = call signext i8 @Base64_Decode(i8* %20, i8* %21, i64 %22, i64* %8), !dbg !515
  %24 = icmp ne i8 %23, 0, !dbg !515
  br i1 %24, label %27, label %25, !dbg !516

; <label>:25:                                     ; preds = %19
  %26 = load i8*, i8** %9, align 8, !dbg !517
  call void @free(i8* %26) #6, !dbg !519
  br label %32, !dbg !520

; <label>:27:                                     ; preds = %19
  %28 = load i8*, i8** %9, align 8, !dbg !521
  %29 = load i8**, i8*** %5, align 8, !dbg !522
  store i8* %28, i8** %29, align 8, !dbg !523
  %30 = load i64, i64* %8, align 8, !dbg !524
  %31 = load i64*, i64** %6, align 8, !dbg !525
  store i64 %30, i64* %31, align 8, !dbg !526
  store i8 1, i8* %7, align 1, !dbg !527
  br label %32, !dbg !528

; <label>:32:                                     ; preds = %27, %25, %18
  %33 = load i8, i8* %7, align 1, !dbg !529
  %34 = icmp ne i8 %33, 0, !dbg !529
  br i1 %34, label %38, label %35, !dbg !531

; <label>:35:                                     ; preds = %32
  %36 = load i8**, i8*** %5, align 8, !dbg !532
  store i8* null, i8** %36, align 8, !dbg !534
  %37 = load i64*, i64** %6, align 8, !dbg !535
  store i64 0, i64* %37, align 8, !dbg !536
  br label %38, !dbg !537

; <label>:38:                                     ; preds = %35, %32
  %39 = load i8, i8* %7, align 1, !dbg !538
  ret i8 %39, !dbg !539
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define signext i8 @Base64_DecodeFixed(i8*, i8*, i64) #0 !dbg !540 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !543, metadata !57), !dbg !544
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !545, metadata !57), !dbg !546
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !547, metadata !57), !dbg !548
  call void @llvm.dbg.declare(metadata i8* %7, metadata !549, metadata !57), !dbg !550
  call void @llvm.dbg.declare(metadata i8** %8, metadata !551, metadata !57), !dbg !552
  call void @llvm.dbg.declare(metadata i64* %9, metadata !553, metadata !57), !dbg !554
  %10 = load i8*, i8** %4, align 8, !dbg !555
  %11 = call signext i8 @Base64_EasyDecode(i8* %10, i8** %8, i64* %9), !dbg !556
  store i8 %11, i8* %7, align 1, !dbg !557
  %12 = load i8, i8* %7, align 1, !dbg !558
  %13 = icmp ne i8 %12, 0, !dbg !558
  br i1 %13, label %14, label %28, !dbg !560

; <label>:14:                                     ; preds = %3
  %15 = load i64, i64* %9, align 8, !dbg !561
  %16 = load i64, i64* %6, align 8, !dbg !563
  %17 = icmp ule i64 %15, %16, !dbg !564
  %18 = zext i1 %17 to i32, !dbg !564
  %19 = trunc i32 %18 to i8, !dbg !565
  store i8 %19, i8* %7, align 1, !dbg !566
  %20 = load i8, i8* %7, align 1, !dbg !567
  %21 = icmp ne i8 %20, 0, !dbg !567
  br i1 %21, label %22, label %26, !dbg !569

; <label>:22:                                     ; preds = %14
  %23 = load i8*, i8** %5, align 8, !dbg !570
  %24 = load i8*, i8** %8, align 8, !dbg !572
  %25 = load i64, i64* %9, align 8, !dbg !573
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 %25, i32 1, i1 false), !dbg !574
  br label %26, !dbg !575

; <label>:26:                                     ; preds = %22, %14
  %27 = load i8*, i8** %8, align 8, !dbg !576
  call void @free(i8* %27) #6, !dbg !577
  br label %28, !dbg !578

; <label>:28:                                     ; preds = %26, %3
  %29 = load i8, i8* %7, align 1, !dbg !579
  ret i8 %29, !dbg !580
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!37, !38}
!llvm.ident = !{!39}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !18, globals: !22)
!1 = !DIFile(filename: "base64.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line544")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 46, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/open-vm-tools/line544")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17}
!6 = !DIEnumerator(name: "_ISupper", value: 256)
!7 = !DIEnumerator(name: "_ISlower", value: 512)
!8 = !DIEnumerator(name: "_ISalpha", value: 1024)
!9 = !DIEnumerator(name: "_ISdigit", value: 2048)
!10 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!11 = !DIEnumerator(name: "_ISspace", value: 8192)
!12 = !DIEnumerator(name: "_ISprint", value: 16384)
!13 = !DIEnumerator(name: "_ISgraph", value: 32768)
!14 = !DIEnumerator(name: "_ISblank", value: 1)
!15 = !DIEnumerator(name: "_IScntrl", value: 2)
!16 = !DIEnumerator(name: "_ISpunct", value: 4)
!17 = !DIEnumerator(name: "_ISalnum", value: 8)
!18 = !{!19, !20, !21}
!19 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!21 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!22 = !{!23, !27, !31}
!23 = distinct !DIGlobalVariable(name: "Pad64", scope: !0, file: !24, line: 55, type: !25, isLocal: true, isDefinition: true, variable: i8 61)
!24 = !DIFile(filename: "base64.c", directory: "/home/lichi/Desktop/open-vm-tools/line544")
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!27 = distinct !DIGlobalVariable(name: "Base64", scope: !0, file: !24, line: 53, type: !28, isLocal: true, isDefinition: true, variable: [65 x i8]* @Base64)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 520, align: 8, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 65)
!31 = distinct !DIGlobalVariable(name: "base64Reverse", scope: !0, file: !24, line: 80, type: !32, isLocal: true, isDefinition: true, variable: [256 x i8]* @base64Reverse)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2048, align: 8, elements: !35)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!35 = !{!36}
!36 = !DISubrange(count: 256)
!37 = !{i32 2, !"Dwarf Version", i32 4}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!40 = distinct !DISubprogram(name: "Base64_Encode", scope: !24, file: !24, line: 196, type: !41, isLocal: false, isDefinition: true, scopeLine: 201, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!41 = !DISubroutineType(types: !42)
!42 = !{!43, !45, !50, !53, !50, !54}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !44, line: 230, baseType: !26)
!44 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line544")
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !44, line: 177, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !49, line: 48, baseType: !19)
!49 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line544")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !51, line: 216, baseType: !52)
!51 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line544")
!52 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!55 = !{}
!56 = !DILocalVariable(name: "src", arg: 1, scope: !40, file: !24, line: 196, type: !45)
!57 = !DIExpression()
!58 = !DILocation(line: 196, column: 28, scope: !40)
!59 = !DILocalVariable(name: "srcSize", arg: 2, scope: !40, file: !24, line: 197, type: !50)
!60 = !DILocation(line: 197, column: 22, scope: !40)
!61 = !DILocalVariable(name: "dst", arg: 3, scope: !40, file: !24, line: 198, type: !53)
!62 = !DILocation(line: 198, column: 21, scope: !40)
!63 = !DILocalVariable(name: "dstMax", arg: 4, scope: !40, file: !24, line: 199, type: !50)
!64 = !DILocation(line: 199, column: 22, scope: !40)
!65 = !DILocalVariable(name: "dstSize", arg: 5, scope: !40, file: !24, line: 200, type: !54)
!66 = !DILocation(line: 200, column: 23, scope: !40)
!67 = !DILocalVariable(name: "dst0", scope: !40, file: !24, line: 202, type: !53)
!68 = !DILocation(line: 202, column: 10, scope: !40)
!69 = !DILocation(line: 202, column: 17, scope: !40)
!70 = !DILocalVariable(name: "retval", scope: !40, file: !24, line: 203, type: !43)
!71 = !DILocation(line: 203, column: 9, scope: !40)
!72 = !DILocation(line: 209, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !40, file: !24, line: 209, column: 9)
!74 = !DILocation(line: 209, column: 17, scope: !73)
!75 = !DILocation(line: 209, column: 23, scope: !73)
!76 = !DILocation(line: 209, column: 21, scope: !73)
!77 = !DILocation(line: 210, column: 8, scope: !73)
!78 = !DILocation(line: 210, column: 11, scope: !79)
!79 = !DILexicalBlockFile(scope: !73, file: !24, discriminator: 1)
!80 = !DILocation(line: 210, column: 18, scope: !79)
!81 = !DILocation(line: 211, column: 8, scope: !73)
!82 = !DILocation(line: 211, column: 12, scope: !79)
!83 = !DILocation(line: 211, column: 20, scope: !79)
!84 = !DILocation(line: 211, column: 25, scope: !79)
!85 = !DILocation(line: 211, column: 32, scope: !79)
!86 = !DILocation(line: 211, column: 39, scope: !79)
!87 = !DILocation(line: 211, column: 44, scope: !79)
!88 = !DILocation(line: 211, column: 29, scope: !79)
!89 = !DILocation(line: 209, column: 9, scope: !90)
!90 = !DILexicalBlockFile(scope: !40, file: !24, discriminator: 1)
!91 = !DILocation(line: 212, column: 14, scope: !92)
!92 = distinct !DILexicalBlock(scope: !73, file: !24, line: 211, column: 49)
!93 = !DILocation(line: 213, column: 7, scope: !92)
!94 = !DILocation(line: 216, column: 4, scope: !40)
!95 = !DILocation(line: 216, column: 31, scope: !90)
!96 = !DILocation(line: 216, column: 39, scope: !90)
!97 = !DILocation(line: 216, column: 29, scope: !90)
!98 = !DILocation(line: 216, column: 28, scope: !90)
!99 = !DILocation(line: 216, column: 4, scope: !90)
!100 = !DILocation(line: 217, column: 23, scope: !101)
!101 = distinct !DILexicalBlock(scope: !40, file: !24, line: 216, column: 49)
!102 = !DILocation(line: 217, column: 30, scope: !101)
!103 = !DILocation(line: 217, column: 16, scope: !101)
!104 = !DILocation(line: 217, column: 7, scope: !101)
!105 = !DILocation(line: 217, column: 14, scope: !101)
!106 = !DILocation(line: 218, column: 24, scope: !101)
!107 = !DILocation(line: 218, column: 31, scope: !101)
!108 = !DILocation(line: 218, column: 39, scope: !101)
!109 = !DILocation(line: 218, column: 46, scope: !101)
!110 = !DILocation(line: 218, column: 53, scope: !101)
!111 = !DILocation(line: 218, column: 44, scope: !101)
!112 = !DILocation(line: 218, column: 16, scope: !101)
!113 = !DILocation(line: 218, column: 7, scope: !101)
!114 = !DILocation(line: 218, column: 14, scope: !101)
!115 = !DILocation(line: 219, column: 24, scope: !101)
!116 = !DILocation(line: 219, column: 31, scope: !101)
!117 = !DILocation(line: 219, column: 39, scope: !101)
!118 = !DILocation(line: 219, column: 46, scope: !101)
!119 = !DILocation(line: 219, column: 53, scope: !101)
!120 = !DILocation(line: 219, column: 44, scope: !101)
!121 = !DILocation(line: 219, column: 16, scope: !101)
!122 = !DILocation(line: 219, column: 7, scope: !101)
!123 = !DILocation(line: 219, column: 14, scope: !101)
!124 = !DILocation(line: 220, column: 23, scope: !101)
!125 = !DILocation(line: 220, column: 30, scope: !101)
!126 = !DILocation(line: 220, column: 16, scope: !101)
!127 = !DILocation(line: 220, column: 7, scope: !101)
!128 = !DILocation(line: 220, column: 14, scope: !101)
!129 = !DILocation(line: 222, column: 15, scope: !101)
!130 = !DILocation(line: 223, column: 11, scope: !101)
!131 = !DILocation(line: 224, column: 11, scope: !101)
!132 = !DILocation(line: 216, column: 4, scope: !133)
!133 = !DILexicalBlockFile(scope: !40, file: !24, discriminator: 2)
!134 = distinct !{!134, !94}
!135 = !DILocation(line: 228, column: 35, scope: !136)
!136 = distinct !DILexicalBlock(scope: !40, file: !24, line: 228, column: 8)
!137 = !DILocation(line: 228, column: 26, scope: !136)
!138 = !DILocation(line: 228, column: 25, scope: !136)
!139 = !DILocation(line: 228, column: 8, scope: !136)
!140 = !DILocation(line: 228, column: 8, scope: !40)
!141 = !DILocalVariable(name: "src1", scope: !142, file: !24, line: 229, type: !47)
!142 = distinct !DILexicalBlock(scope: !136, file: !24, line: 228, column: 44)
!143 = !DILocation(line: 229, column: 13, scope: !142)
!144 = !DILocation(line: 229, column: 20, scope: !142)
!145 = !DILocation(line: 229, column: 30, scope: !146)
!146 = !DILexicalBlockFile(scope: !142, file: !24, discriminator: 1)
!147 = !DILocation(line: 229, column: 20, scope: !146)
!148 = !DILocation(line: 229, column: 20, scope: !149)
!149 = !DILexicalBlockFile(scope: !142, file: !24, discriminator: 2)
!150 = !DILocation(line: 229, column: 20, scope: !151)
!151 = !DILexicalBlockFile(scope: !142, file: !24, discriminator: 3)
!152 = !DILocation(line: 229, column: 13, scope: !151)
!153 = !DILocation(line: 231, column: 23, scope: !142)
!154 = !DILocation(line: 231, column: 30, scope: !142)
!155 = !DILocation(line: 231, column: 16, scope: !142)
!156 = !DILocation(line: 231, column: 7, scope: !142)
!157 = !DILocation(line: 231, column: 14, scope: !142)
!158 = !DILocation(line: 232, column: 24, scope: !142)
!159 = !DILocation(line: 232, column: 31, scope: !142)
!160 = !DILocation(line: 232, column: 39, scope: !142)
!161 = !DILocation(line: 232, column: 46, scope: !142)
!162 = !DILocation(line: 232, column: 51, scope: !142)
!163 = !DILocation(line: 232, column: 44, scope: !142)
!164 = !DILocation(line: 232, column: 16, scope: !142)
!165 = !DILocation(line: 232, column: 7, scope: !142)
!166 = !DILocation(line: 232, column: 14, scope: !142)
!167 = !DILocation(line: 233, column: 16, scope: !142)
!168 = !DILocation(line: 233, column: 34, scope: !146)
!169 = !DILocation(line: 233, column: 39, scope: !146)
!170 = !DILocation(line: 233, column: 47, scope: !146)
!171 = !DILocation(line: 233, column: 26, scope: !146)
!172 = !DILocation(line: 233, column: 16, scope: !146)
!173 = !DILocation(line: 233, column: 16, scope: !149)
!174 = !DILocation(line: 233, column: 16, scope: !151)
!175 = !DILocation(line: 233, column: 7, scope: !151)
!176 = !DILocation(line: 233, column: 14, scope: !151)
!177 = !DILocation(line: 234, column: 7, scope: !142)
!178 = !DILocation(line: 234, column: 14, scope: !142)
!179 = !DILocation(line: 235, column: 11, scope: !142)
!180 = !DILocation(line: 236, column: 4, scope: !142)
!181 = !DILocation(line: 238, column: 4, scope: !40)
!182 = !DILocation(line: 238, column: 11, scope: !40)
!183 = !DILocation(line: 241, column: 8, scope: !184)
!184 = distinct !DILexicalBlock(scope: !40, file: !24, line: 241, column: 8)
!185 = !DILocation(line: 241, column: 8, scope: !40)
!186 = !DILocation(line: 242, column: 18, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !24, line: 241, column: 17)
!188 = !DILocation(line: 242, column: 24, scope: !187)
!189 = !DILocation(line: 242, column: 22, scope: !187)
!190 = !DILocation(line: 242, column: 8, scope: !187)
!191 = !DILocation(line: 242, column: 16, scope: !187)
!192 = !DILocation(line: 243, column: 4, scope: !187)
!193 = !DILocation(line: 245, column: 11, scope: !40)
!194 = !DILocation(line: 245, column: 4, scope: !40)
!195 = distinct !DISubprogram(name: "Base64_Decode", scope: !24, file: !24, line: 348, type: !196, isLocal: false, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!196 = !DISubroutineType(types: !197)
!197 = !{!43, !198, !199, !50, !54}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!200 = !DILocalVariable(name: "in", arg: 1, scope: !195, file: !24, line: 348, type: !198)
!201 = !DILocation(line: 348, column: 27, scope: !195)
!202 = !DILocalVariable(name: "out", arg: 2, scope: !195, file: !24, line: 349, type: !199)
!203 = !DILocation(line: 349, column: 22, scope: !195)
!204 = !DILocalVariable(name: "outSize", arg: 3, scope: !195, file: !24, line: 350, type: !50)
!205 = !DILocation(line: 350, column: 22, scope: !195)
!206 = !DILocalVariable(name: "dataLength", arg: 4, scope: !195, file: !24, line: 351, type: !54)
!207 = !DILocation(line: 351, column: 23, scope: !195)
!208 = !DILocation(line: 353, column: 30, scope: !195)
!209 = !DILocation(line: 353, column: 38, scope: !195)
!210 = !DILocation(line: 353, column: 43, scope: !195)
!211 = !DILocation(line: 353, column: 52, scope: !195)
!212 = !DILocation(line: 353, column: 11, scope: !195)
!213 = !DILocation(line: 353, column: 4, scope: !195)
!214 = distinct !DISubprogram(name: "Base64_ChunkDecode", scope: !24, file: !24, line: 378, type: !215, isLocal: false, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!215 = !DISubroutineType(types: !216)
!216 = !{!43, !198, !50, !199, !50, !54}
!217 = !DILocalVariable(name: "in", arg: 1, scope: !214, file: !24, line: 378, type: !198)
!218 = !DILocation(line: 378, column: 32, scope: !214)
!219 = !DILocalVariable(name: "inSize", arg: 2, scope: !214, file: !24, line: 379, type: !50)
!220 = !DILocation(line: 379, column: 27, scope: !214)
!221 = !DILocalVariable(name: "out", arg: 3, scope: !214, file: !24, line: 380, type: !199)
!222 = !DILocation(line: 380, column: 27, scope: !214)
!223 = !DILocalVariable(name: "outSize", arg: 4, scope: !214, file: !24, line: 381, type: !50)
!224 = !DILocation(line: 381, column: 27, scope: !214)
!225 = !DILocalVariable(name: "dataLength", arg: 5, scope: !214, file: !24, line: 382, type: !54)
!226 = !DILocation(line: 382, column: 28, scope: !214)
!227 = !DILocalVariable(name: "b", scope: !214, file: !24, line: 384, type: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !44, line: 173, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !49, line: 51, baseType: !230)
!230 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!231 = !DILocation(line: 384, column: 11, scope: !214)
!232 = !DILocalVariable(name: "n", scope: !214, file: !24, line: 385, type: !20)
!233 = !DILocation(line: 385, column: 8, scope: !214)
!234 = !DILocalVariable(name: "i", scope: !214, file: !24, line: 386, type: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !49, line: 122, baseType: !52)
!236 = !DILocation(line: 386, column: 14, scope: !214)
!237 = !DILocalVariable(name: "inputIndex", scope: !214, file: !24, line: 387, type: !50)
!238 = !DILocation(line: 387, column: 11, scope: !214)
!239 = !DILocation(line: 393, column: 5, scope: !214)
!240 = !DILocation(line: 393, column: 16, scope: !214)
!241 = !DILocation(line: 395, column: 6, scope: !214)
!242 = !DILocation(line: 396, column: 4, scope: !214)
!243 = !DILocation(line: 396, column: 10, scope: !244)
!244 = !DILexicalBlockFile(scope: !245, file: !24, discriminator: 1)
!245 = distinct !DILexicalBlock(scope: !246, file: !24, line: 396, column: 4)
!246 = distinct !DILexicalBlock(scope: !214, file: !24, line: 396, column: 4)
!247 = !DILocation(line: 396, column: 23, scope: !244)
!248 = !DILocation(line: 396, column: 21, scope: !244)
!249 = !DILocation(line: 396, column: 4, scope: !244)
!250 = !DILocalVariable(name: "p", scope: !251, file: !24, line: 397, type: !20)
!251 = distinct !DILexicalBlock(scope: !245, file: !24, line: 396, column: 32)
!252 = !DILocation(line: 397, column: 11, scope: !251)
!253 = !DILocation(line: 397, column: 47, scope: !251)
!254 = !DILocation(line: 397, column: 44, scope: !251)
!255 = !DILocation(line: 397, column: 15, scope: !251)
!256 = !DILocation(line: 399, column: 29, scope: !257)
!257 = distinct !DILexicalBlock(scope: !251, file: !24, line: 399, column: 11)
!258 = !DILocation(line: 399, column: 31, scope: !257)
!259 = !DILocation(line: 399, column: 28, scope: !257)
!260 = !DILocation(line: 399, column: 11, scope: !257)
!261 = !DILocation(line: 399, column: 11, scope: !251)
!262 = !DILocation(line: 400, column: 18, scope: !263)
!263 = distinct !DILexicalBlock(scope: !257, file: !24, line: 399, column: 41)
!264 = !DILocation(line: 400, column: 10, scope: !263)
!265 = !DILocation(line: 402, column: 23, scope: !266)
!266 = distinct !DILexicalBlock(scope: !263, file: !24, line: 400, column: 21)
!267 = !DILocation(line: 403, column: 13, scope: !266)
!268 = !DILocation(line: 405, column: 27, scope: !266)
!269 = !DILocation(line: 405, column: 14, scope: !266)
!270 = !DILocation(line: 405, column: 25, scope: !266)
!271 = !DILocation(line: 406, column: 13, scope: !266)
!272 = !DILocation(line: 406, column: 13, scope: !273)
!273 = !DILexicalBlockFile(scope: !266, file: !24, discriminator: 1)
!274 = !DILocation(line: 409, column: 13, scope: !266)
!275 = !DILocation(line: 411, column: 7, scope: !263)
!276 = !DILocation(line: 412, column: 20, scope: !277)
!277 = distinct !DILexicalBlock(scope: !257, file: !24, line: 411, column: 14)
!278 = !DILocation(line: 413, column: 32, scope: !279)
!279 = distinct !DILexicalBlock(scope: !277, file: !24, line: 413, column: 14)
!280 = !DILocation(line: 413, column: 37, scope: !279)
!281 = !DILocation(line: 413, column: 34, scope: !279)
!282 = !DILocation(line: 413, column: 31, scope: !279)
!283 = !DILocation(line: 413, column: 14, scope: !279)
!284 = !DILocation(line: 413, column: 14, scope: !277)
!285 = !DILocation(line: 414, column: 13, scope: !286)
!286 = distinct !DILexicalBlock(scope: !279, file: !24, line: 413, column: 51)
!287 = !DILocation(line: 416, column: 15, scope: !277)
!288 = !DILocation(line: 416, column: 17, scope: !277)
!289 = !DILocation(line: 416, column: 25, scope: !277)
!290 = !DILocation(line: 416, column: 23, scope: !277)
!291 = !DILocation(line: 416, column: 12, scope: !277)
!292 = !DILocation(line: 417, column: 12, scope: !277)
!293 = !DILocation(line: 418, column: 34, scope: !294)
!294 = distinct !DILexicalBlock(scope: !277, file: !24, line: 418, column: 14)
!295 = !DILocation(line: 418, column: 36, scope: !294)
!296 = !DILocation(line: 418, column: 32, scope: !294)
!297 = !DILocation(line: 418, column: 31, scope: !294)
!298 = !DILocation(line: 418, column: 14, scope: !294)
!299 = !DILocation(line: 418, column: 14, scope: !277)
!300 = !DILocation(line: 419, column: 15, scope: !301)
!301 = distinct !DILexicalBlock(scope: !294, file: !24, line: 418, column: 47)
!302 = !DILocation(line: 420, column: 24, scope: !301)
!303 = !DILocation(line: 420, column: 29, scope: !301)
!304 = !DILocation(line: 420, column: 26, scope: !301)
!305 = !DILocation(line: 420, column: 18, scope: !301)
!306 = !DILocation(line: 420, column: 13, scope: !301)
!307 = !DILocation(line: 420, column: 22, scope: !301)
!308 = !DILocation(line: 421, column: 10, scope: !301)
!309 = !DILocation(line: 396, column: 4, scope: !310)
!310 = !DILexicalBlockFile(scope: !245, file: !24, discriminator: 2)
!311 = distinct !{!311, !242}
!312 = !DILocation(line: 424, column: 18, scope: !214)
!313 = !DILocation(line: 424, column: 5, scope: !214)
!314 = !DILocation(line: 424, column: 16, scope: !214)
!315 = !DILocation(line: 425, column: 4, scope: !214)
!316 = !DILocation(line: 426, column: 1, scope: !214)
!317 = distinct !DISubprogram(name: "Base64_ValidEncoding", scope: !24, file: !24, line: 446, type: !318, isLocal: false, isDefinition: true, scopeLine: 448, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!318 = !DISubroutineType(types: !319)
!319 = !{!43, !198, !50}
!320 = !DILocalVariable(name: "src", arg: 1, scope: !317, file: !24, line: 446, type: !198)
!321 = !DILocation(line: 446, column: 34, scope: !317)
!322 = !DILocalVariable(name: "srcLength", arg: 2, scope: !317, file: !24, line: 447, type: !50)
!323 = !DILocation(line: 447, column: 29, scope: !317)
!324 = !DILocalVariable(name: "i", scope: !317, file: !24, line: 449, type: !50)
!325 = !DILocation(line: 449, column: 11, scope: !317)
!326 = !DILocation(line: 452, column: 11, scope: !327)
!327 = distinct !DILexicalBlock(scope: !317, file: !24, line: 452, column: 4)
!328 = !DILocation(line: 452, column: 9, scope: !327)
!329 = !DILocation(line: 452, column: 16, scope: !330)
!330 = !DILexicalBlockFile(scope: !331, file: !24, discriminator: 1)
!331 = distinct !DILexicalBlock(scope: !327, file: !24, line: 452, column: 4)
!332 = !DILocation(line: 452, column: 20, scope: !330)
!333 = !DILocation(line: 452, column: 18, scope: !330)
!334 = !DILocation(line: 452, column: 4, scope: !330)
!335 = !DILocalVariable(name: "c", scope: !336, file: !24, line: 453, type: !47)
!336 = distinct !DILexicalBlock(scope: !331, file: !24, line: 452, column: 36)
!337 = !DILocation(line: 453, column: 13, scope: !336)
!338 = !DILocation(line: 453, column: 21, scope: !336)
!339 = !DILocation(line: 453, column: 17, scope: !336)
!340 = !DILocation(line: 455, column: 11, scope: !341)
!341 = distinct !DILexicalBlock(scope: !336, file: !24, line: 455, column: 11)
!342 = !DILocation(line: 455, column: 32, scope: !341)
!343 = !DILocation(line: 455, column: 12, scope: !341)
!344 = !DILocation(line: 455, column: 14, scope: !341)
!345 = !DILocation(line: 455, column: 13, scope: !341)
!346 = !DILocation(line: 455, column: 15, scope: !341)
!347 = !DILocation(line: 455, column: 22, scope: !341)
!348 = !DILocation(line: 455, column: 26, scope: !349)
!349 = !DILexicalBlockFile(scope: !341, file: !24, discriminator: 1)
!350 = !DILocation(line: 455, column: 47, scope: !349)
!351 = !DILocation(line: 455, column: 27, scope: !349)
!352 = !DILocation(line: 455, column: 29, scope: !349)
!353 = !DILocation(line: 455, column: 28, scope: !349)
!354 = !DILocation(line: 455, column: 30, scope: !349)
!355 = !DILocation(line: 455, column: 37, scope: !349)
!356 = !DILocation(line: 456, column: 11, scope: !341)
!357 = !DILocation(line: 456, column: 13, scope: !341)
!358 = !DILocation(line: 456, column: 20, scope: !341)
!359 = !DILocation(line: 456, column: 23, scope: !349)
!360 = !DILocation(line: 456, column: 25, scope: !349)
!361 = !DILocation(line: 456, column: 32, scope: !349)
!362 = !DILocation(line: 456, column: 35, scope: !363)
!363 = !DILexicalBlockFile(scope: !341, file: !24, discriminator: 2)
!364 = !DILocation(line: 456, column: 37, scope: !363)
!365 = !DILocation(line: 455, column: 11, scope: !366)
!366 = !DILexicalBlockFile(scope: !336, file: !24, discriminator: 2)
!367 = !DILocation(line: 457, column: 10, scope: !368)
!368 = distinct !DILexicalBlock(scope: !341, file: !24, line: 456, column: 45)
!369 = !DILocation(line: 459, column: 4, scope: !336)
!370 = !DILocation(line: 452, column: 32, scope: !371)
!371 = !DILexicalBlockFile(scope: !331, file: !24, discriminator: 2)
!372 = !DILocation(line: 452, column: 4, scope: !371)
!373 = distinct !{!373, !374}
!374 = !DILocation(line: 452, column: 4, scope: !317)
!375 = !DILocation(line: 461, column: 4, scope: !317)
!376 = !DILocation(line: 462, column: 1, scope: !317)
!377 = distinct !DISubprogram(name: "Base64_EncodedLength", scope: !24, file: !24, line: 482, type: !378, isLocal: false, isDefinition: true, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!378 = !DISubroutineType(types: !379)
!379 = !{!50, !45, !50}
!380 = !DILocalVariable(name: "src", arg: 1, scope: !377, file: !24, line: 482, type: !45)
!381 = !DILocation(line: 482, column: 35, scope: !377)
!382 = !DILocalVariable(name: "srcLength", arg: 2, scope: !377, file: !24, line: 483, type: !50)
!383 = !DILocation(line: 483, column: 29, scope: !377)
!384 = !DILocation(line: 485, column: 13, scope: !377)
!385 = !DILocation(line: 485, column: 23, scope: !377)
!386 = !DILocation(line: 485, column: 28, scope: !377)
!387 = !DILocation(line: 485, column: 32, scope: !377)
!388 = !DILocation(line: 485, column: 37, scope: !377)
!389 = !DILocation(line: 485, column: 4, scope: !377)
!390 = distinct !DISubprogram(name: "Base64_DecodedLength", scope: !24, file: !24, line: 509, type: !391, isLocal: false, isDefinition: true, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!391 = !DISubroutineType(types: !392)
!392 = !{!50, !198, !50}
!393 = !DILocalVariable(name: "src", arg: 1, scope: !390, file: !24, line: 509, type: !198)
!394 = !DILocation(line: 509, column: 34, scope: !390)
!395 = !DILocalVariable(name: "srcLength", arg: 2, scope: !390, file: !24, line: 510, type: !50)
!396 = !DILocation(line: 510, column: 29, scope: !390)
!397 = !DILocalVariable(name: "length", scope: !390, file: !24, line: 512, type: !50)
!398 = !DILocation(line: 512, column: 11, scope: !390)
!399 = !DILocation(line: 516, column: 13, scope: !390)
!400 = !DILocation(line: 516, column: 23, scope: !390)
!401 = !DILocation(line: 516, column: 27, scope: !390)
!402 = !DILocation(line: 516, column: 11, scope: !390)
!403 = !DILocation(line: 519, column: 8, scope: !404)
!404 = distinct !DILexicalBlock(scope: !390, file: !24, line: 519, column: 8)
!405 = !DILocation(line: 519, column: 15, scope: !404)
!406 = !DILocation(line: 519, column: 8, scope: !390)
!407 = !DILocation(line: 520, column: 15, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !24, line: 520, column: 11)
!409 = distinct !DILexicalBlock(scope: !404, file: !24, line: 519, column: 20)
!410 = !DILocation(line: 520, column: 25, scope: !408)
!411 = !DILocation(line: 520, column: 11, scope: !408)
!412 = !DILocation(line: 520, column: 30, scope: !408)
!413 = !DILocation(line: 520, column: 11, scope: !409)
!414 = !DILocation(line: 521, column: 16, scope: !415)
!415 = distinct !DILexicalBlock(scope: !408, file: !24, line: 520, column: 38)
!416 = !DILocation(line: 522, column: 7, scope: !415)
!417 = !DILocation(line: 523, column: 15, scope: !418)
!418 = distinct !DILexicalBlock(scope: !409, file: !24, line: 523, column: 11)
!419 = !DILocation(line: 523, column: 25, scope: !418)
!420 = !DILocation(line: 523, column: 11, scope: !418)
!421 = !DILocation(line: 523, column: 30, scope: !418)
!422 = !DILocation(line: 523, column: 11, scope: !409)
!423 = !DILocation(line: 524, column: 16, scope: !424)
!424 = distinct !DILexicalBlock(scope: !418, file: !24, line: 523, column: 38)
!425 = !DILocation(line: 525, column: 7, scope: !424)
!426 = !DILocation(line: 526, column: 4, scope: !409)
!427 = !DILocation(line: 527, column: 11, scope: !390)
!428 = !DILocation(line: 527, column: 4, scope: !390)
!429 = distinct !DISubprogram(name: "Base64_EasyEncode", scope: !24, file: !24, line: 550, type: !430, isLocal: false, isDefinition: true, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!430 = !DISubroutineType(types: !431)
!431 = !{!43, !45, !50, !432}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!433 = !DILocalVariable(name: "src", arg: 1, scope: !429, file: !24, line: 550, type: !45)
!434 = !DILocation(line: 550, column: 32, scope: !429)
!435 = !DILocalVariable(name: "srcLength", arg: 2, scope: !429, file: !24, line: 551, type: !50)
!436 = !DILocation(line: 551, column: 26, scope: !429)
!437 = !DILocalVariable(name: "target", arg: 3, scope: !429, file: !24, line: 552, type: !432)
!438 = !DILocation(line: 552, column: 26, scope: !429)
!439 = !DILocalVariable(name: "succeeded", scope: !429, file: !24, line: 554, type: !43)
!440 = !DILocation(line: 554, column: 9, scope: !429)
!441 = !DILocalVariable(name: "size", scope: !429, file: !24, line: 555, type: !50)
!442 = !DILocation(line: 555, column: 11, scope: !429)
!443 = !DILocation(line: 560, column: 32, scope: !429)
!444 = !DILocation(line: 560, column: 37, scope: !429)
!445 = !DILocation(line: 560, column: 11, scope: !429)
!446 = !DILocation(line: 560, column: 9, scope: !429)
!447 = !DILocation(line: 562, column: 21, scope: !429)
!448 = !DILocation(line: 562, column: 14, scope: !429)
!449 = !DILocation(line: 562, column: 5, scope: !429)
!450 = !DILocation(line: 562, column: 12, scope: !429)
!451 = !DILocation(line: 564, column: 10, scope: !452)
!452 = distinct !DILexicalBlock(scope: !429, file: !24, line: 564, column: 8)
!453 = !DILocation(line: 564, column: 9, scope: !452)
!454 = !DILocation(line: 564, column: 8, scope: !429)
!455 = !DILocation(line: 565, column: 7, scope: !456)
!456 = distinct !DILexicalBlock(scope: !452, file: !24, line: 564, column: 18)
!457 = !DILocation(line: 568, column: 23, scope: !458)
!458 = distinct !DILexicalBlock(scope: !429, file: !24, line: 568, column: 8)
!459 = !DILocation(line: 568, column: 28, scope: !458)
!460 = !DILocation(line: 568, column: 40, scope: !458)
!461 = !DILocation(line: 568, column: 39, scope: !458)
!462 = !DILocation(line: 568, column: 48, scope: !458)
!463 = !DILocation(line: 568, column: 9, scope: !458)
!464 = !DILocation(line: 568, column: 8, scope: !429)
!465 = !DILocation(line: 569, column: 7, scope: !466)
!466 = distinct !DILexicalBlock(scope: !458, file: !24, line: 568, column: 60)
!467 = !DILocation(line: 572, column: 14, scope: !429)
!468 = !DILocation(line: 572, column: 4, scope: !429)
!469 = !DILocation(line: 575, column: 9, scope: !470)
!470 = distinct !DILexicalBlock(scope: !429, file: !24, line: 575, column: 8)
!471 = !DILocation(line: 575, column: 8, scope: !429)
!472 = !DILocation(line: 576, column: 13, scope: !473)
!473 = distinct !DILexicalBlock(scope: !470, file: !24, line: 575, column: 20)
!474 = !DILocation(line: 576, column: 12, scope: !473)
!475 = !DILocation(line: 576, column: 7, scope: !473)
!476 = !DILocation(line: 577, column: 8, scope: !473)
!477 = !DILocation(line: 577, column: 15, scope: !473)
!478 = !DILocation(line: 578, column: 4, scope: !473)
!479 = !DILocation(line: 580, column: 11, scope: !429)
!480 = !DILocation(line: 580, column: 4, scope: !429)
!481 = distinct !DISubprogram(name: "Base64_EasyDecode", scope: !24, file: !24, line: 602, type: !482, isLocal: false, isDefinition: true, scopeLine: 605, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!482 = !DISubroutineType(types: !483)
!483 = !{!43, !198, !484, !54}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!485 = !DILocalVariable(name: "src", arg: 1, scope: !481, file: !24, line: 602, type: !198)
!486 = !DILocation(line: 602, column: 31, scope: !481)
!487 = !DILocalVariable(name: "target", arg: 2, scope: !481, file: !24, line: 603, type: !484)
!488 = !DILocation(line: 603, column: 27, scope: !481)
!489 = !DILocalVariable(name: "targSize", arg: 3, scope: !481, file: !24, line: 604, type: !54)
!490 = !DILocation(line: 604, column: 27, scope: !481)
!491 = !DILocalVariable(name: "succeeded", scope: !481, file: !24, line: 606, type: !43)
!492 = !DILocation(line: 606, column: 9, scope: !481)
!493 = !DILocalVariable(name: "theDataSize", scope: !481, file: !24, line: 607, type: !50)
!494 = !DILocation(line: 607, column: 11, scope: !481)
!495 = !DILocalVariable(name: "theData", scope: !481, file: !24, line: 608, type: !199)
!496 = !DILocation(line: 608, column: 11, scope: !481)
!497 = !DILocation(line: 614, column: 39, scope: !481)
!498 = !DILocation(line: 614, column: 51, scope: !481)
!499 = !DILocation(line: 614, column: 44, scope: !481)
!500 = !DILocation(line: 614, column: 18, scope: !501)
!501 = !DILexicalBlockFile(scope: !481, file: !24, discriminator: 1)
!502 = !DILocation(line: 614, column: 16, scope: !481)
!503 = !DILocation(line: 616, column: 21, scope: !481)
!504 = !DILocation(line: 616, column: 14, scope: !481)
!505 = !DILocation(line: 616, column: 12, scope: !481)
!506 = !DILocation(line: 618, column: 9, scope: !507)
!507 = distinct !DILexicalBlock(scope: !481, file: !24, line: 618, column: 8)
!508 = !DILocation(line: 618, column: 8, scope: !481)
!509 = !DILocation(line: 619, column: 7, scope: !510)
!510 = distinct !DILexicalBlock(scope: !507, file: !24, line: 618, column: 18)
!511 = !DILocation(line: 622, column: 23, scope: !512)
!512 = distinct !DILexicalBlock(scope: !481, file: !24, line: 622, column: 8)
!513 = !DILocation(line: 622, column: 28, scope: !512)
!514 = !DILocation(line: 622, column: 37, scope: !512)
!515 = !DILocation(line: 622, column: 9, scope: !512)
!516 = !DILocation(line: 622, column: 8, scope: !481)
!517 = !DILocation(line: 623, column: 12, scope: !518)
!518 = distinct !DILexicalBlock(scope: !512, file: !24, line: 622, column: 65)
!519 = !DILocation(line: 623, column: 7, scope: !518)
!520 = !DILocation(line: 624, column: 7, scope: !518)
!521 = !DILocation(line: 627, column: 14, scope: !481)
!522 = !DILocation(line: 627, column: 5, scope: !481)
!523 = !DILocation(line: 627, column: 12, scope: !481)
!524 = !DILocation(line: 628, column: 16, scope: !481)
!525 = !DILocation(line: 628, column: 5, scope: !481)
!526 = !DILocation(line: 628, column: 14, scope: !481)
!527 = !DILocation(line: 630, column: 14, scope: !481)
!528 = !DILocation(line: 630, column: 4, scope: !481)
!529 = !DILocation(line: 633, column: 9, scope: !530)
!530 = distinct !DILexicalBlock(scope: !481, file: !24, line: 633, column: 8)
!531 = !DILocation(line: 633, column: 8, scope: !481)
!532 = !DILocation(line: 634, column: 8, scope: !533)
!533 = distinct !DILexicalBlock(scope: !530, file: !24, line: 633, column: 20)
!534 = !DILocation(line: 634, column: 15, scope: !533)
!535 = !DILocation(line: 635, column: 8, scope: !533)
!536 = !DILocation(line: 635, column: 17, scope: !533)
!537 = !DILocation(line: 636, column: 4, scope: !533)
!538 = !DILocation(line: 638, column: 11, scope: !481)
!539 = !DILocation(line: 638, column: 4, scope: !481)
!540 = distinct !DISubprogram(name: "Base64_DecodeFixed", scope: !24, file: !24, line: 660, type: !541, isLocal: false, isDefinition: true, scopeLine: 663, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!541 = !DISubroutineType(types: !542)
!542 = !{!43, !198, !53, !50}
!543 = !DILocalVariable(name: "src", arg: 1, scope: !540, file: !24, line: 660, type: !198)
!544 = !DILocation(line: 660, column: 32, scope: !540)
!545 = !DILocalVariable(name: "outBuf", arg: 2, scope: !540, file: !24, line: 661, type: !53)
!546 = !DILocation(line: 661, column: 26, scope: !540)
!547 = !DILocalVariable(name: "outBufSize", arg: 3, scope: !540, file: !24, line: 662, type: !50)
!548 = !DILocation(line: 662, column: 27, scope: !540)
!549 = !DILocalVariable(name: "success", scope: !540, file: !24, line: 664, type: !43)
!550 = !DILocation(line: 664, column: 9, scope: !540)
!551 = !DILocalVariable(name: "theData", scope: !540, file: !24, line: 665, type: !199)
!552 = !DILocation(line: 665, column: 11, scope: !540)
!553 = !DILocalVariable(name: "theDataSize", scope: !540, file: !24, line: 666, type: !50)
!554 = !DILocation(line: 666, column: 11, scope: !540)
!555 = !DILocation(line: 671, column: 32, scope: !540)
!556 = !DILocation(line: 671, column: 14, scope: !540)
!557 = !DILocation(line: 671, column: 12, scope: !540)
!558 = !DILocation(line: 673, column: 8, scope: !559)
!559 = distinct !DILexicalBlock(scope: !540, file: !24, line: 673, column: 8)
!560 = !DILocation(line: 673, column: 8, scope: !540)
!561 = !DILocation(line: 674, column: 18, scope: !562)
!562 = distinct !DILexicalBlock(scope: !559, file: !24, line: 673, column: 17)
!563 = !DILocation(line: 674, column: 33, scope: !562)
!564 = !DILocation(line: 674, column: 30, scope: !562)
!565 = !DILocation(line: 674, column: 17, scope: !562)
!566 = !DILocation(line: 674, column: 15, scope: !562)
!567 = !DILocation(line: 676, column: 11, scope: !568)
!568 = distinct !DILexicalBlock(scope: !562, file: !24, line: 676, column: 11)
!569 = !DILocation(line: 676, column: 11, scope: !562)
!570 = !DILocation(line: 677, column: 17, scope: !571)
!571 = distinct !DILexicalBlock(scope: !568, file: !24, line: 676, column: 20)
!572 = !DILocation(line: 677, column: 25, scope: !571)
!573 = !DILocation(line: 677, column: 34, scope: !571)
!574 = !DILocation(line: 677, column: 10, scope: !571)
!575 = !DILocation(line: 678, column: 7, scope: !571)
!576 = !DILocation(line: 680, column: 12, scope: !562)
!577 = !DILocation(line: 680, column: 7, scope: !562)
!578 = !DILocation(line: 681, column: 4, scope: !562)
!579 = !DILocation(line: 683, column: 11, scope: !540)
!580 = !DILocation(line: 683, column: 4, scope: !540)
