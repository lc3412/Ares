; ModuleID = './random.o.i'
source_filename = "./random.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rqContext = type { [25 x i32], i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@Random_QuickSeed.xx = internal constant [25 x i32] [i32 -1779282517, i32 191386133, i32 -412300569, i32 -1354841543, i32 1902095651, i32 614830253, i32 1776596463, i32 -1085972159, i32 -1766057093, i32 -1480722395, i32 -1042385481, i32 -2007455287, i32 766015123, i32 -1235748387, i32 -2323809, i32 -2128487823, i32 -1954398517, i32 -2007169547, i32 1310772551, i32 1520096729, i32 1361841155, i32 -360350515, i32 1287770895, i32 -2003720031, i32 -1497912613], align 16
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: failed to open %s: %s\0A\00", align 1
@__FUNCTION__.RandomBytesPosix = private unnamed_addr constant [17 x i8] c"RandomBytesPosix\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"%s: zero length read while reading from %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"%s: %zu byte read failed while reading from %s: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"%s: failed to close %s: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define signext i8 @Random_Crypto(i64, i8*) #0 !dbg !36 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !45, metadata !46), !dbg !47
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !48, metadata !46), !dbg !49
  %5 = load i64, i64* %3, align 8, !dbg !50
  %6 = load i8*, i8** %4, align 8, !dbg !51
  %7 = call signext i8 @RandomBytesPosix(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i64 %5, i8* %6), !dbg !52
  ret i8 %7, !dbg !53
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal signext i8 @RandomBytesPosix(i8*, i64, i8*) #0 !dbg !54 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !59, metadata !46), !dbg !60
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !61, metadata !46), !dbg !62
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !63, metadata !46), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %8, metadata !65, metadata !46), !dbg !66
  %10 = load i8*, i8** %5, align 8, !dbg !67
  %11 = call i32 (i8*, i32, ...) @open64(i8* %10, i32 0), !dbg !68
  store i32 %11, i32* %8, align 4, !dbg !66
  %12 = load i32, i32* %8, align 4, !dbg !69
  %13 = icmp eq i32 %12, -1, !dbg !71
  br i1 %13, label %14, label %19, !dbg !72

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %5, align 8, !dbg !73
  %16 = call i32* @__errno_location() #1, !dbg !75
  %17 = load i32, i32* %16, align 4, !dbg !76
  %18 = call i8* @strerror(i32 %17) #5, !dbg !77
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.RandomBytesPosix, i32 0, i32 0), i8* %15, i8* %18), !dbg !79
  store i8 0, i8* %4, align 1, !dbg !81
  br label %72, !dbg !81

; <label>:19:                                     ; preds = %3
  br label %20, !dbg !82

; <label>:20:                                     ; preds = %61, %19
  %21 = load i64, i64* %6, align 8, !dbg !83
  %22 = icmp ugt i64 %21, 0, !dbg !85
  br i1 %22, label %23, label %62, !dbg !86

; <label>:23:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata i64* %9, metadata !87, metadata !46), !dbg !94
  %24 = load i32, i32* %8, align 4, !dbg !95
  %25 = load i8*, i8** %7, align 8, !dbg !96
  %26 = load i64, i64* %6, align 8, !dbg !97
  %27 = call i64 @read(i32 %24, i8* %25, i64 %26), !dbg !98
  store i64 %27, i64* %9, align 8, !dbg !94
  %28 = load i64, i64* %9, align 8, !dbg !99
  %29 = icmp eq i64 %28, 0, !dbg !101
  br i1 %29, label %37, label %30, !dbg !102

; <label>:30:                                     ; preds = %23
  %31 = load i64, i64* %9, align 8, !dbg !103
  %32 = icmp eq i64 %31, -1, !dbg !105
  br i1 %32, label %33, label %51, !dbg !106

; <label>:33:                                     ; preds = %30
  %34 = call i32* @__errno_location() #1, !dbg !107
  %35 = load i32, i32* %34, align 4, !dbg !109
  %36 = icmp ne i32 %35, 4, !dbg !110
  br i1 %36, label %37, label %51, !dbg !111

; <label>:37:                                     ; preds = %33, %23
  %38 = load i32, i32* %8, align 4, !dbg !112
  %39 = call i32 @close(i32 %38), !dbg !114
  %40 = load i64, i64* %9, align 8, !dbg !115
  %41 = icmp eq i64 %40, 0, !dbg !117
  br i1 %41, label %42, label %44, !dbg !118

; <label>:42:                                     ; preds = %37
  %43 = load i8*, i8** %5, align 8, !dbg !119
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.RandomBytesPosix, i32 0, i32 0), i8* %43), !dbg !121
  br label %50, !dbg !122

; <label>:44:                                     ; preds = %37
  %45 = load i64, i64* %6, align 8, !dbg !123
  %46 = load i8*, i8** %5, align 8, !dbg !125
  %47 = call i32* @__errno_location() #1, !dbg !126
  %48 = load i32, i32* %47, align 4, !dbg !127
  %49 = call i8* @strerror(i32 %48) #5, !dbg !128
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.RandomBytesPosix, i32 0, i32 0), i64 %45, i8* %46, i8* %49), !dbg !130
  br label %50

; <label>:50:                                     ; preds = %44, %42
  store i8 0, i8* %4, align 1, !dbg !131
  br label %72, !dbg !131

; <label>:51:                                     ; preds = %33, %30
  %52 = load i64, i64* %9, align 8, !dbg !132
  %53 = icmp sgt i64 %52, 0, !dbg !134
  br i1 %53, label %54, label %61, !dbg !135

; <label>:54:                                     ; preds = %51
  %55 = load i64, i64* %9, align 8, !dbg !136
  %56 = load i64, i64* %6, align 8, !dbg !138
  %57 = sub i64 %56, %55, !dbg !138
  store i64 %57, i64* %6, align 8, !dbg !138
  %58 = load i8*, i8** %7, align 8, !dbg !139
  %59 = load i64, i64* %9, align 8, !dbg !140
  %60 = getelementptr inbounds i8, i8* %58, i64 %59, !dbg !141
  store i8* %60, i8** %7, align 8, !dbg !142
  br label %61, !dbg !143

; <label>:61:                                     ; preds = %54, %51
  br label %20, !dbg !144, !llvm.loop !146

; <label>:62:                                     ; preds = %20
  %63 = load i32, i32* %8, align 4, !dbg !147
  %64 = call i32 @close(i32 %63), !dbg !149
  %65 = icmp eq i32 %64, -1, !dbg !150
  br i1 %65, label %66, label %71, !dbg !151

; <label>:66:                                     ; preds = %62
  %67 = load i8*, i8** %5, align 8, !dbg !152
  %68 = call i32* @__errno_location() #1, !dbg !154
  %69 = load i32, i32* %68, align 4, !dbg !155
  %70 = call i8* @strerror(i32 %69) #5, !dbg !156
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.RandomBytesPosix, i32 0, i32 0), i8* %67, i8* %70), !dbg !158
  br label %71, !dbg !160

; <label>:71:                                     ; preds = %66, %62
  store i8 1, i8* %4, align 1, !dbg !161
  br label %72, !dbg !161

; <label>:72:                                     ; preds = %71, %50, %14
  %73 = load i8, i8* %4, align 1, !dbg !162
  ret i8 %73, !dbg !162
}

; Function Attrs: nounwind uwtable
define %struct.rqContext* @Random_QuickSeed(i32) #0 !dbg !12 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rqContext*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !163, metadata !46), !dbg !164
  call void @llvm.dbg.declare(metadata i32* %3, metadata !165, metadata !46), !dbg !166
  call void @llvm.dbg.declare(metadata %struct.rqContext** %4, metadata !167, metadata !46), !dbg !169
  %5 = call i8* @UtilSafeMalloc0(i64 108), !dbg !170
  %6 = bitcast i8* %5 to %struct.rqContext*, !dbg !170
  store %struct.rqContext* %6, %struct.rqContext** %4, align 8, !dbg !169
  store i32 0, i32* %3, align 4, !dbg !171
  br label %7, !dbg !173

; <label>:7:                                      ; preds = %22, %1
  %8 = load i32, i32* %3, align 4, !dbg !174
  %9 = icmp ult i32 %8, 25, !dbg !177
  br i1 %9, label %10, label %25, !dbg !178

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %3, align 4, !dbg !179
  %12 = zext i32 %11 to i64, !dbg !181
  %13 = getelementptr inbounds [25 x i32], [25 x i32]* @Random_QuickSeed.xx, i64 0, i64 %12, !dbg !181
  %14 = load i32, i32* %13, align 4, !dbg !181
  %15 = load i32, i32* %2, align 4, !dbg !182
  %16 = xor i32 %14, %15, !dbg !183
  %17 = load i32, i32* %3, align 4, !dbg !184
  %18 = zext i32 %17 to i64, !dbg !185
  %19 = load %struct.rqContext*, %struct.rqContext** %4, align 8, !dbg !185
  %20 = getelementptr inbounds %struct.rqContext, %struct.rqContext* %19, i32 0, i32 0, !dbg !186
  %21 = getelementptr inbounds [25 x i32], [25 x i32]* %20, i64 0, i64 %18, !dbg !185
  store i32 %16, i32* %21, align 4, !dbg !187
  br label %22, !dbg !188

; <label>:22:                                     ; preds = %10
  %23 = load i32, i32* %3, align 4, !dbg !189
  %24 = add i32 %23, 1, !dbg !189
  store i32 %24, i32* %3, align 4, !dbg !189
  br label %7, !dbg !191, !llvm.loop !192

; <label>:25:                                     ; preds = %7
  %26 = load %struct.rqContext*, %struct.rqContext** %4, align 8, !dbg !194
  %27 = getelementptr inbounds %struct.rqContext, %struct.rqContext* %26, i32 0, i32 1, !dbg !195
  store i32 24, i32* %27, align 4, !dbg !196
  %28 = load %struct.rqContext*, %struct.rqContext** %4, align 8, !dbg !197
  %29 = getelementptr inbounds %struct.rqContext, %struct.rqContext* %28, i32 0, i32 2, !dbg !198
  store i32 6, i32* %29, align 4, !dbg !199
  %30 = load %struct.rqContext*, %struct.rqContext** %4, align 8, !dbg !200
  ret %struct.rqContext* %30, !dbg !201
}

declare i8* @UtilSafeMalloc0(i64) #2

; Function Attrs: nounwind uwtable
define i32 @Random_Quick(%struct.rqContext*) #0 !dbg !202 {
  %2 = alloca %struct.rqContext*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rqContext* %0, %struct.rqContext** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.rqContext** %2, metadata !205, metadata !46), !dbg !206
  call void @llvm.dbg.declare(metadata i32* %3, metadata !207, metadata !46), !dbg !208
  call void @llvm.dbg.declare(metadata i32* %4, metadata !209, metadata !46), !dbg !210
  %5 = load %struct.rqContext*, %struct.rqContext** %2, align 8, !dbg !211
  %6 = getelementptr inbounds %struct.rqContext, %struct.rqContext* %5, i32 0, i32 1, !dbg !213
  %7 = load i32, i32* %6, align 4, !dbg !213
  %8 = icmp eq i32 %7, 24, !dbg !214
  br i1 %8, label %9, label %12, !dbg !215

; <label>:9:                                      ; preds = %1
  %10 = load %struct.rqContext*, %struct.rqContext** %2, align 8, !dbg !216
  %11 = getelementptr inbounds %struct.rqContext, %struct.rqContext* %10, i32 0, i32 1, !dbg !218
  store i32 0, i32* %11, align 4, !dbg !219
  br label %17, !dbg !220

; <label>:12:                                     ; preds = %1
  %13 = load %struct.rqContext*, %struct.rqContext** %2, align 8, !dbg !221
  %14 = getelementptr inbounds %struct.rqContext, %struct.rqContext* %13, i32 0, i32 1, !dbg !223
  %15 = load i32, i32* %14, align 4, !dbg !224
  %16 = add nsw i32 %15, 1, !dbg !224
  store i32 %16, i32* %14, align 4, !dbg !224
  br label %17

; <label>:17:                                     ; preds = %12, %9
  %18 = load %struct.rqContext*, %struct.rqContext** %2, align 8, !dbg !225
  %19 = getelementptr inbounds %struct.rqContext, %struct.rqContext* %18, i32 0, i32 2, !dbg !227
  %20 = load i32, i32* %19, align 4, !dbg !227
  %21 = icmp eq i32 %20, 24, !dbg !228
  br i1 %21, label %22, label %25, !dbg !229

; <label>:22:                                     ; preds = %17
  %23 = load %struct.rqContext*, %struct.rqContext** %2, align 8, !dbg !230
  %24 = getelementptr inbounds %struct.rqContext, %struct.rqContext* %23, i32 0, i32 2, !dbg !232
  store i32 0, i32* %24, align 4, !dbg !233
  br label %30, !dbg !234

; <label>:25:                                     ; preds = %17
  %26 = load %struct.rqContext*, %struct.rqContext** %2, align 8, !dbg !235
  %27 = getelementptr inbounds %struct.rqContext, %struct.rqContext* %26, i32 0, i32 2, !dbg !237
  %28 = load i32, i32* %27, align 4, !dbg !238
  %29 = add nsw i32 %28, 1, !dbg !238
  store i32 %29, i32* %27, align 4, !dbg !238
  br label %30

; <label>:30:                                     ; preds = %25, %22
  %31 = load %struct.rqContext*, %struct.rqContext** %2, align 8, !dbg !239
  %32 = getelementptr inbounds %struct.rqContext, %struct.rqContext* %31, i32 0, i32 1, !dbg !240
  %33 = load i32, i32* %32, align 4, !dbg !240
  %34 = sext i32 %33 to i64, !dbg !241
  %35 = load %struct.rqContext*, %struct.rqContext** %2, align 8, !dbg !241
  %36 = getelementptr inbounds %struct.rqContext, %struct.rqContext* %35, i32 0, i32 0, !dbg !242
  %37 = getelementptr inbounds [25 x i32], [25 x i32]* %36, i64 0, i64 %34, !dbg !241
  %38 = load i32, i32* %37, align 4, !dbg !241
  store i32 %38, i32* %4, align 4, !dbg !243
  %39 = load %struct.rqContext*, %struct.rqContext** %2, align 8, !dbg !244
  %40 = getelementptr inbounds %struct.rqContext, %struct.rqContext* %39, i32 0, i32 2, !dbg !245
  %41 = load i32, i32* %40, align 4, !dbg !245
  %42 = sext i32 %41 to i64, !dbg !246
  %43 = load %struct.rqContext*, %struct.rqContext** %2, align 8, !dbg !246
  %44 = getelementptr inbounds %struct.rqContext, %struct.rqContext* %43, i32 0, i32 0, !dbg !247
  %45 = getelementptr inbounds [25 x i32], [25 x i32]* %44, i64 0, i64 %42, !dbg !246
  %46 = load i32, i32* %45, align 4, !dbg !246
  %47 = load i32, i32* %4, align 4, !dbg !248
  %48 = lshr i32 %47, 1, !dbg !249
  %49 = xor i32 %46, %48, !dbg !250
  store i32 %49, i32* %3, align 4, !dbg !251
  %50 = load i32, i32* %4, align 4, !dbg !252
  %51 = urem i32 %50, 2, !dbg !254
  %52 = icmp ne i32 %51, 0, !dbg !254
  br i1 %52, label %53, label %56, !dbg !255

; <label>:53:                                     ; preds = %30
  %54 = load i32, i32* %3, align 4, !dbg !256
  %55 = xor i32 %54, -1900031960, !dbg !256
  store i32 %55, i32* %3, align 4, !dbg !256
  br label %56, !dbg !258

; <label>:56:                                     ; preds = %53, %30
  %57 = load %struct.rqContext*, %struct.rqContext** %2, align 8, !dbg !259
  %58 = getelementptr inbounds %struct.rqContext, %struct.rqContext* %57, i32 0, i32 1, !dbg !261
  %59 = load i32, i32* %58, align 4, !dbg !261
  %60 = icmp eq i32 %59, 24, !dbg !262
  br i1 %60, label %61, label %66, !dbg !263

; <label>:61:                                     ; preds = %56
  %62 = load i32, i32* %3, align 4, !dbg !264
  %63 = load %struct.rqContext*, %struct.rqContext** %2, align 8, !dbg !266
  %64 = getelementptr inbounds %struct.rqContext, %struct.rqContext* %63, i32 0, i32 0, !dbg !267
  %65 = getelementptr inbounds [25 x i32], [25 x i32]* %64, i64 0, i64 0, !dbg !266
  store i32 %62, i32* %65, align 4, !dbg !268
  br label %76, !dbg !269

; <label>:66:                                     ; preds = %56
  %67 = load i32, i32* %3, align 4, !dbg !270
  %68 = load %struct.rqContext*, %struct.rqContext** %2, align 8, !dbg !272
  %69 = getelementptr inbounds %struct.rqContext, %struct.rqContext* %68, i32 0, i32 1, !dbg !273
  %70 = load i32, i32* %69, align 4, !dbg !273
  %71 = add nsw i32 %70, 1, !dbg !274
  %72 = sext i32 %71 to i64, !dbg !275
  %73 = load %struct.rqContext*, %struct.rqContext** %2, align 8, !dbg !275
  %74 = getelementptr inbounds %struct.rqContext, %struct.rqContext* %73, i32 0, i32 0, !dbg !276
  %75 = getelementptr inbounds [25 x i32], [25 x i32]* %74, i64 0, i64 %72, !dbg !275
  store i32 %67, i32* %75, align 4, !dbg !277
  br label %76

; <label>:76:                                     ; preds = %66, %61
  %77 = load i32, i32* %3, align 4, !dbg !278
  %78 = shl i32 %77, 7, !dbg !279
  %79 = and i32 %78, 727393536, !dbg !280
  %80 = load i32, i32* %3, align 4, !dbg !281
  %81 = xor i32 %80, %79, !dbg !281
  store i32 %81, i32* %3, align 4, !dbg !281
  %82 = load i32, i32* %3, align 4, !dbg !282
  %83 = shl i32 %82, 15, !dbg !283
  %84 = and i32 %83, -611647488, !dbg !284
  %85 = load i32, i32* %3, align 4, !dbg !285
  %86 = xor i32 %85, %84, !dbg !285
  store i32 %86, i32* %3, align 4, !dbg !285
  %87 = load i32, i32* %3, align 4, !dbg !286
  %88 = lshr i32 %87, 16, !dbg !287
  %89 = load i32, i32* %3, align 4, !dbg !288
  %90 = xor i32 %89, %88, !dbg !288
  store i32 %90, i32* %3, align 4, !dbg !288
  %91 = load i32, i32* %3, align 4, !dbg !289
  ret i32 %91, !dbg !290
}

declare i32 @open64(i8*, i32, ...) #2

declare void @Log(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i64 @read(i32, i8*, i64) #2

declare i32 @close(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!33, !34}
!llvm.ident = !{!35}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !10)
!1 = !DIFile(filename: "random.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line681")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !6, line: 177, baseType: !7)
!6 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line681")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !8, line: 48, baseType: !9)
!8 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line681")
!9 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!10 = !{!11}
!11 = distinct !DIGlobalVariable(name: "xx", scope: !12, file: !13, line: 244, type: !31, isLocal: true, isDefinition: true, variable: [25 x i32]* @Random_QuickSeed.xx)
!12 = distinct !DISubprogram(name: "Random_QuickSeed", scope: !13, file: !13, line: 239, type: !14, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!13 = !DIFile(filename: "random.c", directory: "/home/lichi/Desktop/open-vm-tools/line681")
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !23}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "rqContext", file: !18, line: 55, baseType: !19)
!18 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/random.h", directory: "/home/lichi/Desktop/open-vm-tools/line681")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rqContext", file: !13, line: 233, size: 864, align: 32, elements: !20)
!20 = !{!21, !28, !30}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !19, file: !13, line: 234, baseType: !22, size: 800, align: 32)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 800, align: 32, elements: !26)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !6, line: 173, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 51, baseType: !25)
!25 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!26 = !{!27}
!27 = !DISubrange(count: 25)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !19, file: !13, line: 235, baseType: !29, size: 32, align: 32, offset: 800)
!29 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !19, file: !13, line: 235, baseType: !29, size: 32, align: 32, offset: 832)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 800, align: 32, elements: !26)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!33 = !{i32 2, !"Dwarf Version", i32 4}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!36 = distinct !DISubprogram(name: "Random_Crypto", scope: !13, file: !13, line: 186, type: !37, isLocal: false, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !41, !44}
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !6, line: 230, baseType: !40)
!40 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 216, baseType: !43)
!42 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line681")
!43 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!45 = !DILocalVariable(name: "size", arg: 1, scope: !36, file: !13, line: 186, type: !41)
!46 = !DIExpression()
!47 = !DILocation(line: 186, column: 22, scope: !36)
!48 = !DILocalVariable(name: "buffer", arg: 2, scope: !36, file: !13, line: 187, type: !44)
!49 = !DILocation(line: 187, column: 21, scope: !36)
!50 = !DILocation(line: 197, column: 44, scope: !36)
!51 = !DILocation(line: 197, column: 50, scope: !36)
!52 = !DILocation(line: 197, column: 11, scope: !36)
!53 = !DILocation(line: 197, column: 4, scope: !36)
!54 = distinct !DISubprogram(name: "RandomBytesPosix", scope: !13, file: !13, line: 113, type: !55, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!55 = !DISubroutineType(types: !56)
!56 = !{!39, !57, !41, !44}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!59 = !DILocalVariable(name: "name", arg: 1, scope: !54, file: !13, line: 113, type: !57)
!60 = !DILocation(line: 113, column: 30, scope: !54)
!61 = !DILocalVariable(name: "size", arg: 2, scope: !54, file: !13, line: 114, type: !41)
!62 = !DILocation(line: 114, column: 25, scope: !54)
!63 = !DILocalVariable(name: "buffer", arg: 3, scope: !54, file: !13, line: 115, type: !44)
!64 = !DILocation(line: 115, column: 24, scope: !54)
!65 = !DILocalVariable(name: "fd", scope: !54, file: !13, line: 117, type: !29)
!66 = !DILocation(line: 117, column: 8, scope: !54)
!67 = !DILocation(line: 117, column: 18, scope: !54)
!68 = !DILocation(line: 117, column: 13, scope: !54)
!69 = !DILocation(line: 119, column: 8, scope: !70)
!70 = distinct !DILexicalBlock(scope: !54, file: !13, line: 119, column: 8)
!71 = !DILocation(line: 119, column: 11, scope: !70)
!72 = !DILocation(line: 119, column: 8, scope: !54)
!73 = !DILocation(line: 120, column: 56, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !13, line: 119, column: 18)
!75 = !DILocation(line: 120, column: 72, scope: !74)
!76 = !DILocation(line: 120, column: 71, scope: !74)
!77 = !DILocation(line: 120, column: 62, scope: !78)
!78 = !DILexicalBlockFile(scope: !74, file: !13, discriminator: 1)
!79 = !DILocation(line: 120, column: 7, scope: !80)
!80 = !DILexicalBlockFile(scope: !74, file: !13, discriminator: 2)
!81 = !DILocation(line: 121, column: 7, scope: !74)
!82 = !DILocation(line: 130, column: 4, scope: !54)
!83 = !DILocation(line: 130, column: 11, scope: !84)
!84 = !DILexicalBlockFile(scope: !54, file: !13, discriminator: 1)
!85 = !DILocation(line: 130, column: 16, scope: !84)
!86 = !DILocation(line: 130, column: 4, scope: !84)
!87 = !DILocalVariable(name: "bytesRead", scope: !88, file: !13, line: 131, type: !89)
!88 = distinct !DILexicalBlock(scope: !54, file: !13, line: 130, column: 21)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !90, line: 102, baseType: !91)
!90 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line681")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !92, line: 172, baseType: !93)
!92 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line681")
!93 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!94 = !DILocation(line: 131, column: 15, scope: !88)
!95 = !DILocation(line: 131, column: 32, scope: !88)
!96 = !DILocation(line: 131, column: 36, scope: !88)
!97 = !DILocation(line: 131, column: 44, scope: !88)
!98 = !DILocation(line: 131, column: 27, scope: !88)
!99 = !DILocation(line: 133, column: 12, scope: !100)
!100 = distinct !DILexicalBlock(scope: !88, file: !13, line: 133, column: 11)
!101 = !DILocation(line: 133, column: 22, scope: !100)
!102 = !DILocation(line: 133, column: 28, scope: !100)
!103 = !DILocation(line: 133, column: 33, scope: !104)
!104 = !DILexicalBlockFile(scope: !100, file: !13, discriminator: 1)
!105 = !DILocation(line: 133, column: 43, scope: !104)
!106 = !DILocation(line: 133, column: 50, scope: !104)
!107 = !DILocation(line: 133, column: 55, scope: !108)
!108 = !DILexicalBlockFile(scope: !100, file: !13, discriminator: 2)
!109 = !DILocation(line: 133, column: 54, scope: !108)
!110 = !DILocation(line: 133, column: 59, scope: !108)
!111 = !DILocation(line: 133, column: 11, scope: !108)
!112 = !DILocation(line: 134, column: 16, scope: !113)
!113 = distinct !DILexicalBlock(scope: !100, file: !13, line: 133, column: 71)
!114 = !DILocation(line: 134, column: 10, scope: !113)
!115 = !DILocation(line: 136, column: 14, scope: !116)
!116 = distinct !DILexicalBlock(scope: !113, file: !13, line: 136, column: 14)
!117 = !DILocation(line: 136, column: 24, scope: !116)
!118 = !DILocation(line: 136, column: 14, scope: !113)
!119 = !DILocation(line: 138, column: 31, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !13, line: 136, column: 30)
!121 = !DILocation(line: 137, column: 13, scope: !120)
!122 = !DILocation(line: 139, column: 10, scope: !120)
!123 = !DILocation(line: 141, column: 31, scope: !124)
!124 = distinct !DILexicalBlock(scope: !116, file: !13, line: 139, column: 17)
!125 = !DILocation(line: 141, column: 37, scope: !124)
!126 = !DILocation(line: 141, column: 53, scope: !124)
!127 = !DILocation(line: 141, column: 52, scope: !124)
!128 = !DILocation(line: 141, column: 43, scope: !129)
!129 = !DILexicalBlockFile(scope: !124, file: !13, discriminator: 1)
!130 = !DILocation(line: 140, column: 13, scope: !124)
!131 = !DILocation(line: 144, column: 10, scope: !113)
!132 = !DILocation(line: 147, column: 11, scope: !133)
!133 = distinct !DILexicalBlock(scope: !88, file: !13, line: 147, column: 11)
!134 = !DILocation(line: 147, column: 21, scope: !133)
!135 = !DILocation(line: 147, column: 11, scope: !88)
!136 = !DILocation(line: 148, column: 18, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !13, line: 147, column: 26)
!138 = !DILocation(line: 148, column: 15, scope: !137)
!139 = !DILocation(line: 149, column: 30, scope: !137)
!140 = !DILocation(line: 149, column: 40, scope: !137)
!141 = !DILocation(line: 149, column: 38, scope: !137)
!142 = !DILocation(line: 149, column: 17, scope: !137)
!143 = !DILocation(line: 150, column: 7, scope: !137)
!144 = !DILocation(line: 130, column: 4, scope: !145)
!145 = !DILexicalBlockFile(scope: !54, file: !13, discriminator: 2)
!146 = distinct !{!146, !82}
!147 = !DILocation(line: 153, column: 14, scope: !148)
!148 = distinct !DILexicalBlock(scope: !54, file: !13, line: 153, column: 8)
!149 = !DILocation(line: 153, column: 8, scope: !148)
!150 = !DILocation(line: 153, column: 18, scope: !148)
!151 = !DILocation(line: 153, column: 8, scope: !54)
!152 = !DILocation(line: 154, column: 57, scope: !153)
!153 = distinct !DILexicalBlock(scope: !148, file: !13, line: 153, column: 25)
!154 = !DILocation(line: 154, column: 73, scope: !153)
!155 = !DILocation(line: 154, column: 72, scope: !153)
!156 = !DILocation(line: 154, column: 63, scope: !157)
!157 = !DILexicalBlockFile(scope: !153, file: !13, discriminator: 1)
!158 = !DILocation(line: 154, column: 7, scope: !159)
!159 = !DILexicalBlockFile(scope: !153, file: !13, discriminator: 2)
!160 = !DILocation(line: 155, column: 4, scope: !153)
!161 = !DILocation(line: 157, column: 4, scope: !54)
!162 = !DILocation(line: 158, column: 1, scope: !54)
!163 = !DILocalVariable(name: "seed", arg: 1, scope: !12, file: !13, line: 239, type: !23)
!164 = !DILocation(line: 239, column: 25, scope: !12)
!165 = !DILocalVariable(name: "i", scope: !12, file: !13, line: 241, type: !23)
!166 = !DILocation(line: 241, column: 11, scope: !12)
!167 = !DILocalVariable(name: "rs", scope: !12, file: !13, line: 242, type: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!169 = !DILocation(line: 242, column: 22, scope: !12)
!170 = !DILocation(line: 242, column: 27, scope: !12)
!171 = !DILocation(line: 253, column: 11, scope: !172)
!172 = distinct !DILexicalBlock(scope: !12, file: !13, line: 253, column: 4)
!173 = !DILocation(line: 253, column: 9, scope: !172)
!174 = !DILocation(line: 253, column: 16, scope: !175)
!175 = !DILexicalBlockFile(scope: !176, file: !13, discriminator: 1)
!176 = distinct !DILexicalBlock(scope: !172, file: !13, line: 253, column: 4)
!177 = !DILocation(line: 253, column: 18, scope: !175)
!178 = !DILocation(line: 253, column: 4, scope: !175)
!179 = !DILocation(line: 254, column: 21, scope: !180)
!180 = distinct !DILexicalBlock(scope: !176, file: !13, line: 253, column: 29)
!181 = !DILocation(line: 254, column: 18, scope: !180)
!182 = !DILocation(line: 254, column: 26, scope: !180)
!183 = !DILocation(line: 254, column: 24, scope: !180)
!184 = !DILocation(line: 254, column: 13, scope: !180)
!185 = !DILocation(line: 254, column: 7, scope: !180)
!186 = !DILocation(line: 254, column: 11, scope: !180)
!187 = !DILocation(line: 254, column: 16, scope: !180)
!188 = !DILocation(line: 255, column: 4, scope: !180)
!189 = !DILocation(line: 253, column: 25, scope: !190)
!190 = !DILexicalBlockFile(scope: !176, file: !13, discriminator: 2)
!191 = !DILocation(line: 253, column: 4, scope: !190)
!192 = distinct !{!192, !193}
!193 = !DILocation(line: 253, column: 4, scope: !12)
!194 = !DILocation(line: 257, column: 4, scope: !12)
!195 = !DILocation(line: 257, column: 8, scope: !12)
!196 = !DILocation(line: 257, column: 10, scope: !12)
!197 = !DILocation(line: 258, column: 4, scope: !12)
!198 = !DILocation(line: 258, column: 8, scope: !12)
!199 = !DILocation(line: 258, column: 10, scope: !12)
!200 = !DILocation(line: 260, column: 11, scope: !12)
!201 = !DILocation(line: 260, column: 4, scope: !12)
!202 = distinct !DISubprogram(name: "Random_Quick", scope: !13, file: !13, line: 287, type: !203, isLocal: false, isDefinition: true, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!203 = !DISubroutineType(types: !204)
!204 = !{!23, !16}
!205 = !DILocalVariable(name: "rs", arg: 1, scope: !202, file: !13, line: 287, type: !16)
!206 = !DILocation(line: 287, column: 25, scope: !202)
!207 = !DILocalVariable(name: "y", scope: !202, file: !13, line: 289, type: !23)
!208 = !DILocation(line: 289, column: 11, scope: !202)
!209 = !DILocalVariable(name: "z", scope: !202, file: !13, line: 289, type: !23)
!210 = !DILocation(line: 289, column: 14, scope: !202)
!211 = !DILocation(line: 293, column: 8, scope: !212)
!212 = distinct !DILexicalBlock(scope: !202, file: !13, line: 293, column: 8)
!213 = !DILocation(line: 293, column: 12, scope: !212)
!214 = !DILocation(line: 293, column: 14, scope: !212)
!215 = !DILocation(line: 293, column: 8, scope: !202)
!216 = !DILocation(line: 294, column: 7, scope: !217)
!217 = distinct !DILexicalBlock(scope: !212, file: !13, line: 293, column: 25)
!218 = !DILocation(line: 294, column: 11, scope: !217)
!219 = !DILocation(line: 294, column: 13, scope: !217)
!220 = !DILocation(line: 295, column: 4, scope: !217)
!221 = !DILocation(line: 296, column: 8, scope: !222)
!222 = distinct !DILexicalBlock(scope: !212, file: !13, line: 295, column: 11)
!223 = !DILocation(line: 296, column: 12, scope: !222)
!224 = !DILocation(line: 296, column: 14, scope: !222)
!225 = !DILocation(line: 299, column: 8, scope: !226)
!226 = distinct !DILexicalBlock(scope: !202, file: !13, line: 299, column: 8)
!227 = !DILocation(line: 299, column: 12, scope: !226)
!228 = !DILocation(line: 299, column: 14, scope: !226)
!229 = !DILocation(line: 299, column: 8, scope: !202)
!230 = !DILocation(line: 300, column: 7, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !13, line: 299, column: 25)
!232 = !DILocation(line: 300, column: 11, scope: !231)
!233 = !DILocation(line: 300, column: 13, scope: !231)
!234 = !DILocation(line: 301, column: 4, scope: !231)
!235 = !DILocation(line: 302, column: 8, scope: !236)
!236 = distinct !DILexicalBlock(scope: !226, file: !13, line: 301, column: 11)
!237 = !DILocation(line: 302, column: 12, scope: !236)
!238 = !DILocation(line: 302, column: 14, scope: !236)
!239 = !DILocation(line: 305, column: 15, scope: !202)
!240 = !DILocation(line: 305, column: 19, scope: !202)
!241 = !DILocation(line: 305, column: 8, scope: !202)
!242 = !DILocation(line: 305, column: 12, scope: !202)
!243 = !DILocation(line: 305, column: 6, scope: !202)
!244 = !DILocation(line: 306, column: 15, scope: !202)
!245 = !DILocation(line: 306, column: 19, scope: !202)
!246 = !DILocation(line: 306, column: 8, scope: !202)
!247 = !DILocation(line: 306, column: 12, scope: !202)
!248 = !DILocation(line: 306, column: 27, scope: !202)
!249 = !DILocation(line: 306, column: 29, scope: !202)
!250 = !DILocation(line: 306, column: 23, scope: !202)
!251 = !DILocation(line: 306, column: 6, scope: !202)
!252 = !DILocation(line: 308, column: 8, scope: !253)
!253 = distinct !DILexicalBlock(scope: !202, file: !13, line: 308, column: 8)
!254 = !DILocation(line: 308, column: 10, scope: !253)
!255 = !DILocation(line: 308, column: 8, scope: !202)
!256 = !DILocation(line: 309, column: 9, scope: !257)
!257 = distinct !DILexicalBlock(scope: !253, file: !13, line: 308, column: 15)
!258 = !DILocation(line: 310, column: 4, scope: !257)
!259 = !DILocation(line: 312, column: 8, scope: !260)
!260 = distinct !DILexicalBlock(scope: !202, file: !13, line: 312, column: 8)
!261 = !DILocation(line: 312, column: 12, scope: !260)
!262 = !DILocation(line: 312, column: 14, scope: !260)
!263 = !DILocation(line: 312, column: 8, scope: !202)
!264 = !DILocation(line: 313, column: 18, scope: !265)
!265 = distinct !DILexicalBlock(scope: !260, file: !13, line: 312, column: 25)
!266 = !DILocation(line: 313, column: 7, scope: !265)
!267 = !DILocation(line: 313, column: 11, scope: !265)
!268 = !DILocation(line: 313, column: 16, scope: !265)
!269 = !DILocation(line: 314, column: 4, scope: !265)
!270 = !DILocation(line: 315, column: 28, scope: !271)
!271 = distinct !DILexicalBlock(scope: !260, file: !13, line: 314, column: 11)
!272 = !DILocation(line: 315, column: 14, scope: !271)
!273 = !DILocation(line: 315, column: 18, scope: !271)
!274 = !DILocation(line: 315, column: 21, scope: !271)
!275 = !DILocation(line: 315, column: 7, scope: !271)
!276 = !DILocation(line: 315, column: 11, scope: !271)
!277 = !DILocation(line: 315, column: 26, scope: !271)
!278 = !DILocation(line: 318, column: 13, scope: !202)
!279 = !DILocation(line: 318, column: 15, scope: !202)
!280 = !DILocation(line: 318, column: 22, scope: !202)
!281 = !DILocation(line: 318, column: 6, scope: !202)
!282 = !DILocation(line: 319, column: 13, scope: !202)
!283 = !DILocation(line: 319, column: 15, scope: !202)
!284 = !DILocation(line: 319, column: 23, scope: !202)
!285 = !DILocation(line: 319, column: 6, scope: !202)
!286 = !DILocation(line: 321, column: 11, scope: !202)
!287 = !DILocation(line: 321, column: 13, scope: !202)
!288 = !DILocation(line: 321, column: 6, scope: !202)
!289 = !DILocation(line: 323, column: 11, scope: !202)
!290 = !DILocation(line: 323, column: 4, scope: !202)
