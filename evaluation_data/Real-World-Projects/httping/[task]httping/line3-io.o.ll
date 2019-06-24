; ModuleID = './line3-io.o.i'
source_filename = "./line3-io.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
%struct.fd_set = type { [16 x i64] }

@.str = private unnamed_addr constant [27 x i8] c"read_to::select failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"myread::select failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"myread::read failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"mywrite::select failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"mywrite::write failed: %s\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"set_fd_nonblocking failed! (%s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"set_fd_blocking failed! (%s)\0A\00", align 1

; Function Attrs: nounwind uwtable
define i64 @read_to(i32, i8*, i64, double) #0 !dbg !11 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca %struct.fd_set, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !25, metadata !26), !dbg !27
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !28, metadata !26), !dbg !29
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !30, metadata !26), !dbg !31
  store double %3, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !32, metadata !26), !dbg !33
  br label %15, !dbg !34

; <label>:15:                                     ; preds = %60, %4
  call void @llvm.dbg.declare(metadata i64* %10, metadata !35, metadata !26), !dbg !39
  call void @llvm.dbg.declare(metadata %struct.timeval* %11, metadata !40, metadata !26), !dbg !48
  call void @llvm.dbg.declare(metadata %struct.fd_set* %12, metadata !49, metadata !26), !dbg !57
  br label %16, !dbg !58, !llvm.loop !59

; <label>:16:                                     ; preds = %15
  call void @llvm.dbg.declare(metadata i32* %13, metadata !60, metadata !26), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %14, metadata !63, metadata !26), !dbg !64
  %17 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %12, i32 0, i32 0, !dbg !65
  %18 = getelementptr inbounds [16 x i64], [16 x i64]* %17, i64 0, i64 0, !dbg !67
  %19 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %18) #5, !dbg !68, !srcloc !69
  %20 = extractvalue { i64, i64* } %19, 0, !dbg !68
  %21 = extractvalue { i64, i64* } %19, 1, !dbg !68
  %22 = trunc i64 %20 to i32, !dbg !68
  store i32 %22, i32* %13, align 4, !dbg !68
  %23 = ptrtoint i64* %21 to i64, !dbg !68
  %24 = trunc i64 %23 to i32, !dbg !68
  store i32 %24, i32* %14, align 4, !dbg !68
  br label %25, !dbg !70

; <label>:25:                                     ; preds = %16
  %26 = load i32, i32* %6, align 4, !dbg !71
  %27 = srem i32 %26, 64, !dbg !72
  %28 = zext i32 %27 to i64, !dbg !73
  %29 = shl i64 1, %28, !dbg !73
  %30 = load i32, i32* %6, align 4, !dbg !71
  %31 = sdiv i32 %30, 64, !dbg !72
  %32 = sext i32 %31 to i64, !dbg !74
  %33 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %12, i32 0, i32 0, !dbg !75
  %34 = getelementptr inbounds [16 x i64], [16 x i64]* %33, i64 0, i64 %32, !dbg !74
  %35 = load i64, i64* %34, align 8, !dbg !76
  %36 = or i64 %35, %29, !dbg !76
  store i64 %36, i64* %34, align 8, !dbg !76
  %37 = load double, double* %9, align 8, !dbg !77
  %38 = fdiv double %37, 1.000000e+03, !dbg !78
  %39 = fptosi double %38 to i64, !dbg !79
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0, !dbg !80
  store i64 %39, i64* %40, align 8, !dbg !81
  %41 = load double, double* %9, align 8, !dbg !82
  %42 = fmul double %41, 1.000000e+03, !dbg !83
  %43 = fptosi double %42 to i64, !dbg !84
  %44 = srem i64 %43, 1000000, !dbg !85
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1, !dbg !86
  store i64 %44, i64* %45, align 8, !dbg !87
  %46 = load i32, i32* %6, align 4, !dbg !88
  %47 = add nsw i32 %46, 1, !dbg !89
  %48 = call i32 @select(i32 %47, %struct.fd_set* %12, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %11), !dbg !90
  %49 = sext i32 %48 to i64, !dbg !90
  store i64 %49, i64* %10, align 8, !dbg !91
  %50 = load i64, i64* %10, align 8, !dbg !92
  %51 = icmp eq i64 %50, 0, !dbg !94
  br i1 %51, label %52, label %53, !dbg !95

; <label>:52:                                     ; preds = %25
  store i64 -2, i64* %5, align 8, !dbg !96
  br label %77, !dbg !96

; <label>:53:                                     ; preds = %25
  %54 = load i64, i64* %10, align 8, !dbg !97
  %55 = icmp eq i64 %54, -1, !dbg !99
  br i1 %55, label %56, label %71, !dbg !100

; <label>:56:                                     ; preds = %53
  %57 = call i32* @__errno_location() #1, !dbg !101
  %58 = load i32, i32* %57, align 4, !dbg !104
  %59 = icmp eq i32 %58, 11, !dbg !105
  br i1 %59, label %60, label %61, !dbg !106

; <label>:60:                                     ; preds = %56
  br label %15, !dbg !107, !llvm.loop !108

; <label>:61:                                     ; preds = %56
  %62 = call i32* @__errno_location() #1, !dbg !109
  %63 = load i32, i32* %62, align 4, !dbg !111
  %64 = icmp eq i32 %63, 4, !dbg !112
  br i1 %64, label %65, label %66, !dbg !113

; <label>:65:                                     ; preds = %61
  store i64 -3, i64* %5, align 8, !dbg !114
  br label %77, !dbg !114

; <label>:66:                                     ; preds = %61
  %67 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0)) #5, !dbg !115
  %68 = call i32* @__errno_location() #1, !dbg !116
  %69 = load i32, i32* %68, align 4, !dbg !118
  %70 = call i8* @strerror(i32 %69) #5, !dbg !119
  call void (i8*, ...) @set_error(i8* %67, i8* %70), !dbg !121
  store i64 -1, i64* %5, align 8, !dbg !123
  br label %77, !dbg !123

; <label>:71:                                     ; preds = %53
  br label %72

; <label>:72:                                     ; preds = %71
  %73 = load i32, i32* %6, align 4, !dbg !124
  %74 = load i8*, i8** %7, align 8, !dbg !125
  %75 = load i64, i64* %8, align 8, !dbg !126
  %76 = call i64 @read(i32 %73, i8* %74, i64 %75), !dbg !127
  store i64 %76, i64* %5, align 8, !dbg !128
  br label %77, !dbg !128

; <label>:77:                                     ; preds = %72, %66, %65, %52
  %78 = load i64, i64* %5, align 8, !dbg !129
  ret i64 %78, !dbg !129
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare void @set_error(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

declare i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i64 @myread(i32, i8*, i64, double) #0 !dbg !130 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca %struct.fd_set, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !131, metadata !26), !dbg !132
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !133, metadata !26), !dbg !134
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !135, metadata !26), !dbg !136
  store double %3, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !137, metadata !26), !dbg !138
  call void @llvm.dbg.declare(metadata i64* %10, metadata !139, metadata !26), !dbg !140
  store i64 0, i64* %10, align 8, !dbg !140
  br label %16, !dbg !141

; <label>:16:                                     ; preds = %127, %100, %64, %4
  %17 = load i64, i64* %8, align 8, !dbg !142
  %18 = icmp ugt i64 %17, 0, !dbg !144
  br i1 %18, label %19, label %128, !dbg !145

; <label>:19:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata i64* %11, metadata !146, metadata !26), !dbg !148
  call void @llvm.dbg.declare(metadata %struct.timeval* %12, metadata !149, metadata !26), !dbg !150
  call void @llvm.dbg.declare(metadata %struct.fd_set* %13, metadata !151, metadata !26), !dbg !152
  br label %20, !dbg !153, !llvm.loop !154

; <label>:20:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata i32* %14, metadata !155, metadata !26), !dbg !157
  call void @llvm.dbg.declare(metadata i32* %15, metadata !158, metadata !26), !dbg !159
  %21 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %13, i32 0, i32 0, !dbg !160
  %22 = getelementptr inbounds [16 x i64], [16 x i64]* %21, i64 0, i64 0, !dbg !162
  %23 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %22) #5, !dbg !163, !srcloc !164
  %24 = extractvalue { i64, i64* } %23, 0, !dbg !163
  %25 = extractvalue { i64, i64* } %23, 1, !dbg !163
  %26 = trunc i64 %24 to i32, !dbg !163
  store i32 %26, i32* %14, align 4, !dbg !163
  %27 = ptrtoint i64* %25 to i64, !dbg !163
  %28 = trunc i64 %27 to i32, !dbg !163
  store i32 %28, i32* %15, align 4, !dbg !163
  br label %29, !dbg !165

; <label>:29:                                     ; preds = %20
  %30 = load i32, i32* %6, align 4, !dbg !166
  %31 = srem i32 %30, 64, !dbg !167
  %32 = zext i32 %31 to i64, !dbg !168
  %33 = shl i64 1, %32, !dbg !168
  %34 = load i32, i32* %6, align 4, !dbg !166
  %35 = sdiv i32 %34, 64, !dbg !167
  %36 = sext i32 %35 to i64, !dbg !169
  %37 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %13, i32 0, i32 0, !dbg !170
  %38 = getelementptr inbounds [16 x i64], [16 x i64]* %37, i64 0, i64 %36, !dbg !169
  %39 = load i64, i64* %38, align 8, !dbg !171
  %40 = or i64 %39, %33, !dbg !171
  store i64 %40, i64* %38, align 8, !dbg !171
  %41 = load double, double* %9, align 8, !dbg !172
  %42 = fdiv double %41, 1.000000e+03, !dbg !173
  %43 = fptosi double %42 to i64, !dbg !174
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0, !dbg !175
  store i64 %43, i64* %44, align 8, !dbg !176
  %45 = load double, double* %9, align 8, !dbg !177
  %46 = fmul double %45, 1.000000e+03, !dbg !178
  %47 = fptosi double %46 to i64, !dbg !179
  %48 = srem i64 %47, 1000000, !dbg !180
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1, !dbg !181
  store i64 %48, i64* %49, align 8, !dbg !182
  %50 = load i32, i32* %6, align 4, !dbg !183
  %51 = add nsw i32 %50, 1, !dbg !184
  %52 = call i32 @select(i32 %51, %struct.fd_set* %13, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %12), !dbg !185
  %53 = sext i32 %52 to i64, !dbg !185
  store i64 %53, i64* %11, align 8, !dbg !186
  %54 = load i64, i64* %11, align 8, !dbg !187
  %55 = icmp eq i64 %54, 0, !dbg !189
  br i1 %55, label %56, label %57, !dbg !190

; <label>:56:                                     ; preds = %29
  store i64 -2, i64* %5, align 8, !dbg !191
  br label %130, !dbg !191

; <label>:57:                                     ; preds = %29
  %58 = load i64, i64* %11, align 8, !dbg !192
  %59 = icmp eq i64 %58, -1, !dbg !194
  br i1 %59, label %60, label %75, !dbg !195

; <label>:60:                                     ; preds = %57
  %61 = call i32* @__errno_location() #1, !dbg !196
  %62 = load i32, i32* %61, align 4, !dbg !199
  %63 = icmp eq i32 %62, 11, !dbg !200
  br i1 %63, label %64, label %65, !dbg !201

; <label>:64:                                     ; preds = %60
  br label %16, !dbg !202, !llvm.loop !203

; <label>:65:                                     ; preds = %60
  %66 = call i32* @__errno_location() #1, !dbg !204
  %67 = load i32, i32* %66, align 4, !dbg !206
  %68 = icmp eq i32 %67, 4, !dbg !207
  br i1 %68, label %69, label %70, !dbg !208

; <label>:69:                                     ; preds = %65
  store i64 -3, i64* %5, align 8, !dbg !209
  br label %130, !dbg !209

; <label>:70:                                     ; preds = %65
  %71 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #5, !dbg !210
  %72 = call i32* @__errno_location() #1, !dbg !211
  %73 = load i32, i32* %72, align 4, !dbg !213
  %74 = call i8* @strerror(i32 %73) #5, !dbg !214
  call void (i8*, ...) @set_error(i8* %71, i8* %74), !dbg !216
  store i64 -1, i64* %5, align 8, !dbg !218
  br label %130, !dbg !218

; <label>:75:                                     ; preds = %57
  br label %76

; <label>:76:                                     ; preds = %75
  %77 = load i32, i32* %6, align 4, !dbg !219
  %78 = sdiv i32 %77, 64, !dbg !221
  %79 = sext i32 %78 to i64, !dbg !221
  %80 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %13, i32 0, i32 0, !dbg !222
  %81 = getelementptr inbounds [16 x i64], [16 x i64]* %80, i64 0, i64 %79, !dbg !221
  %82 = load i64, i64* %81, align 8, !dbg !221
  %83 = load i32, i32* %6, align 4, !dbg !219
  %84 = srem i32 %83, 64, !dbg !221
  %85 = zext i32 %84 to i64, !dbg !223
  %86 = shl i64 1, %85, !dbg !223
  %87 = and i64 %82, %86, !dbg !224
  %88 = icmp ne i64 %87, 0, !dbg !225
  br i1 %88, label %89, label %127, !dbg !226

; <label>:89:                                     ; preds = %76
  %90 = load i32, i32* %6, align 4, !dbg !227
  %91 = load i8*, i8** %7, align 8, !dbg !229
  %92 = load i64, i64* %8, align 8, !dbg !230
  %93 = call i64 @read(i32 %90, i8* %91, i64 %92), !dbg !231
  store i64 %93, i64* %11, align 8, !dbg !232
  %94 = load i64, i64* %11, align 8, !dbg !233
  %95 = icmp eq i64 %94, -1, !dbg !235
  br i1 %95, label %96, label %111, !dbg !236

; <label>:96:                                     ; preds = %89
  %97 = call i32* @__errno_location() #1, !dbg !237
  %98 = load i32, i32* %97, align 4, !dbg !240
  %99 = icmp eq i32 %98, 11, !dbg !241
  br i1 %99, label %100, label %101, !dbg !242

; <label>:100:                                    ; preds = %96
  br label %16, !dbg !243, !llvm.loop !203

; <label>:101:                                    ; preds = %96
  %102 = call i32* @__errno_location() #1, !dbg !244
  %103 = load i32, i32* %102, align 4, !dbg !246
  %104 = icmp eq i32 %103, 4, !dbg !247
  br i1 %104, label %105, label %106, !dbg !248

; <label>:105:                                    ; preds = %101
  store i64 -3, i64* %5, align 8, !dbg !249
  br label %130, !dbg !249

; <label>:106:                                    ; preds = %101
  %107 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #5, !dbg !250
  %108 = call i32* @__errno_location() #1, !dbg !251
  %109 = load i32, i32* %108, align 4, !dbg !253
  %110 = call i8* @strerror(i32 %109) #5, !dbg !254
  call void (i8*, ...) @set_error(i8* %107, i8* %110), !dbg !256
  store i64 -1, i64* %5, align 8, !dbg !258
  br label %130, !dbg !258

; <label>:111:                                    ; preds = %89
  %112 = load i64, i64* %11, align 8, !dbg !259
  %113 = icmp eq i64 %112, 0, !dbg !261
  br i1 %113, label %114, label %115, !dbg !262

; <label>:114:                                    ; preds = %111
  br label %128, !dbg !263

; <label>:115:                                    ; preds = %111
  %116 = load i64, i64* %11, align 8, !dbg !264
  %117 = load i8*, i8** %7, align 8, !dbg !266
  %118 = getelementptr inbounds i8, i8* %117, i64 %116, !dbg !266
  store i8* %118, i8** %7, align 8, !dbg !266
  %119 = load i64, i64* %11, align 8, !dbg !267
  %120 = load i64, i64* %8, align 8, !dbg !268
  %121 = sub i64 %120, %119, !dbg !268
  store i64 %121, i64* %8, align 8, !dbg !268
  %122 = load i64, i64* %11, align 8, !dbg !269
  %123 = load i64, i64* %10, align 8, !dbg !270
  %124 = add nsw i64 %123, %122, !dbg !270
  store i64 %124, i64* %10, align 8, !dbg !270
  br label %125

; <label>:125:                                    ; preds = %115
  br label %126

; <label>:126:                                    ; preds = %125
  br label %127, !dbg !271

; <label>:127:                                    ; preds = %126, %76
  br label %16, !dbg !272, !llvm.loop !203

; <label>:128:                                    ; preds = %114, %16
  %129 = load i64, i64* %10, align 8, !dbg !274
  store i64 %129, i64* %5, align 8, !dbg !275
  br label %130, !dbg !275

; <label>:130:                                    ; preds = %128, %106, %105, %70, %69, %56
  %131 = load i64, i64* %5, align 8, !dbg !276
  ret i64 %131, !dbg !276
}

; Function Attrs: nounwind uwtable
define i64 @mywrite(i32, i8*, i64, double) #0 !dbg !277 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca %struct.fd_set, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !278, metadata !26), !dbg !279
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !280, metadata !26), !dbg !281
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !282, metadata !26), !dbg !283
  store double %3, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !284, metadata !26), !dbg !285
  call void @llvm.dbg.declare(metadata i64* %10, metadata !286, metadata !26), !dbg !287
  store i64 0, i64* %10, align 8, !dbg !287
  br label %16, !dbg !288

; <label>:16:                                     ; preds = %113, %87, %64, %4
  %17 = load i64, i64* %8, align 8, !dbg !289
  %18 = icmp ugt i64 %17, 0, !dbg !291
  br i1 %18, label %19, label %114, !dbg !292

; <label>:19:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata i64* %11, metadata !293, metadata !26), !dbg !295
  call void @llvm.dbg.declare(metadata %struct.timeval* %12, metadata !296, metadata !26), !dbg !297
  call void @llvm.dbg.declare(metadata %struct.fd_set* %13, metadata !298, metadata !26), !dbg !299
  br label %20, !dbg !300, !llvm.loop !301

; <label>:20:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata i32* %14, metadata !302, metadata !26), !dbg !304
  call void @llvm.dbg.declare(metadata i32* %15, metadata !305, metadata !26), !dbg !306
  %21 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %13, i32 0, i32 0, !dbg !307
  %22 = getelementptr inbounds [16 x i64], [16 x i64]* %21, i64 0, i64 0, !dbg !309
  %23 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %22) #5, !dbg !310, !srcloc !311
  %24 = extractvalue { i64, i64* } %23, 0, !dbg !310
  %25 = extractvalue { i64, i64* } %23, 1, !dbg !310
  %26 = trunc i64 %24 to i32, !dbg !310
  store i32 %26, i32* %14, align 4, !dbg !310
  %27 = ptrtoint i64* %25 to i64, !dbg !310
  %28 = trunc i64 %27 to i32, !dbg !310
  store i32 %28, i32* %15, align 4, !dbg !310
  br label %29, !dbg !312

; <label>:29:                                     ; preds = %20
  %30 = load i32, i32* %6, align 4, !dbg !313
  %31 = srem i32 %30, 64, !dbg !314
  %32 = zext i32 %31 to i64, !dbg !315
  %33 = shl i64 1, %32, !dbg !315
  %34 = load i32, i32* %6, align 4, !dbg !313
  %35 = sdiv i32 %34, 64, !dbg !314
  %36 = sext i32 %35 to i64, !dbg !316
  %37 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %13, i32 0, i32 0, !dbg !317
  %38 = getelementptr inbounds [16 x i64], [16 x i64]* %37, i64 0, i64 %36, !dbg !316
  %39 = load i64, i64* %38, align 8, !dbg !318
  %40 = or i64 %39, %33, !dbg !318
  store i64 %40, i64* %38, align 8, !dbg !318
  %41 = load double, double* %9, align 8, !dbg !319
  %42 = fdiv double %41, 1.000000e+03, !dbg !320
  %43 = fptosi double %42 to i64, !dbg !321
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0, !dbg !322
  store i64 %43, i64* %44, align 8, !dbg !323
  %45 = load double, double* %9, align 8, !dbg !324
  %46 = fmul double %45, 1.000000e+03, !dbg !325
  %47 = fptosi double %46 to i64, !dbg !326
  %48 = srem i64 %47, 1000000, !dbg !327
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1, !dbg !328
  store i64 %48, i64* %49, align 8, !dbg !329
  %50 = load i32, i32* %6, align 4, !dbg !330
  %51 = add nsw i32 %50, 1, !dbg !331
  %52 = call i32 @select(i32 %51, %struct.fd_set* null, %struct.fd_set* %13, %struct.fd_set* null, %struct.timeval* %12), !dbg !332
  %53 = sext i32 %52 to i64, !dbg !332
  store i64 %53, i64* %11, align 8, !dbg !333
  %54 = load i64, i64* %11, align 8, !dbg !334
  %55 = icmp eq i64 %54, 0, !dbg !336
  br i1 %55, label %56, label %57, !dbg !337

; <label>:56:                                     ; preds = %29
  store i64 -2, i64* %5, align 8, !dbg !338
  br label %116, !dbg !338

; <label>:57:                                     ; preds = %29
  %58 = load i64, i64* %11, align 8, !dbg !339
  %59 = icmp eq i64 %58, -1, !dbg !341
  br i1 %59, label %60, label %75, !dbg !342

; <label>:60:                                     ; preds = %57
  %61 = call i32* @__errno_location() #1, !dbg !343
  %62 = load i32, i32* %61, align 4, !dbg !346
  %63 = icmp eq i32 %62, 11, !dbg !347
  br i1 %63, label %64, label %65, !dbg !348

; <label>:64:                                     ; preds = %60
  br label %16, !dbg !349, !llvm.loop !350

; <label>:65:                                     ; preds = %60
  %66 = call i32* @__errno_location() #1, !dbg !351
  %67 = load i32, i32* %66, align 4, !dbg !353
  %68 = icmp eq i32 %67, 4, !dbg !354
  br i1 %68, label %69, label %70, !dbg !355

; <label>:69:                                     ; preds = %65
  store i64 -3, i64* %5, align 8, !dbg !356
  br label %116, !dbg !356

; <label>:70:                                     ; preds = %65
  %71 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)) #5, !dbg !357
  %72 = call i32* @__errno_location() #1, !dbg !358
  %73 = load i32, i32* %72, align 4, !dbg !360
  %74 = call i8* @strerror(i32 %73) #5, !dbg !361
  call void (i8*, ...) @set_error(i8* %71, i8* %74), !dbg !363
  store i64 -1, i64* %5, align 8, !dbg !365
  br label %116, !dbg !365

; <label>:75:                                     ; preds = %57
  br label %76

; <label>:76:                                     ; preds = %75
  %77 = load i32, i32* %6, align 4, !dbg !366
  %78 = load i8*, i8** %7, align 8, !dbg !367
  %79 = load i64, i64* %8, align 8, !dbg !368
  %80 = call i64 @write(i32 %77, i8* %78, i64 %79), !dbg !369
  store i64 %80, i64* %11, align 8, !dbg !370
  %81 = load i64, i64* %11, align 8, !dbg !371
  %82 = icmp eq i64 %81, -1, !dbg !373
  br i1 %82, label %83, label %98, !dbg !374

; <label>:83:                                     ; preds = %76
  %84 = call i32* @__errno_location() #1, !dbg !375
  %85 = load i32, i32* %84, align 4, !dbg !378
  %86 = icmp eq i32 %85, 11, !dbg !379
  br i1 %86, label %87, label %88, !dbg !380

; <label>:87:                                     ; preds = %83
  br label %16, !dbg !381, !llvm.loop !350

; <label>:88:                                     ; preds = %83
  %89 = call i32* @__errno_location() #1, !dbg !382
  %90 = load i32, i32* %89, align 4, !dbg !384
  %91 = icmp eq i32 %90, 4, !dbg !385
  br i1 %91, label %92, label %93, !dbg !386

; <label>:92:                                     ; preds = %88
  store i64 -3, i64* %5, align 8, !dbg !387
  br label %116, !dbg !387

; <label>:93:                                     ; preds = %88
  %94 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0)) #5, !dbg !388
  %95 = call i32* @__errno_location() #1, !dbg !389
  %96 = load i32, i32* %95, align 4, !dbg !391
  %97 = call i8* @strerror(i32 %96) #5, !dbg !392
  call void (i8*, ...) @set_error(i8* %94, i8* %97), !dbg !394
  store i64 -1, i64* %5, align 8, !dbg !396
  br label %116, !dbg !396

; <label>:98:                                     ; preds = %76
  %99 = load i64, i64* %11, align 8, !dbg !397
  %100 = icmp eq i64 %99, 0, !dbg !399
  br i1 %100, label %101, label %102, !dbg !400

; <label>:101:                                    ; preds = %98
  br label %114, !dbg !401

; <label>:102:                                    ; preds = %98
  %103 = load i64, i64* %11, align 8, !dbg !402
  %104 = load i8*, i8** %7, align 8, !dbg !404
  %105 = getelementptr inbounds i8, i8* %104, i64 %103, !dbg !404
  store i8* %105, i8** %7, align 8, !dbg !404
  %106 = load i64, i64* %11, align 8, !dbg !405
  %107 = load i64, i64* %8, align 8, !dbg !406
  %108 = sub i64 %107, %106, !dbg !406
  store i64 %108, i64* %8, align 8, !dbg !406
  %109 = load i64, i64* %11, align 8, !dbg !407
  %110 = load i64, i64* %10, align 8, !dbg !408
  %111 = add nsw i64 %110, %109, !dbg !408
  store i64 %111, i64* %10, align 8, !dbg !408
  br label %112

; <label>:112:                                    ; preds = %102
  br label %113

; <label>:113:                                    ; preds = %112
  br label %16, !dbg !409, !llvm.loop !350

; <label>:114:                                    ; preds = %101, %16
  %115 = load i64, i64* %10, align 8, !dbg !411
  store i64 %115, i64* %5, align 8, !dbg !412
  br label %116, !dbg !412

; <label>:116:                                    ; preds = %114, %93, %92, %70, %69, %56
  %117 = load i64, i64* %5, align 8, !dbg !413
  ret i64 %117, !dbg !413
}

declare i64 @write(i32, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @set_fd_nonblocking(i32) #0 !dbg !414 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !417, metadata !26), !dbg !418
  %4 = load i32, i32* %3, align 4, !dbg !419
  %5 = call i32 (i32, i32, ...) @fcntl(i32 %4, i32 4, i32 2048), !dbg !421
  %6 = icmp eq i32 %5, -1, !dbg !422
  br i1 %6, label %7, label %14, !dbg !423

; <label>:7:                                      ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !424
  %9 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0)) #5, !dbg !426
  %10 = call i32* @__errno_location() #1, !dbg !427
  %11 = load i32, i32* %10, align 4, !dbg !429
  %12 = call i8* @strerror(i32 %11) #5, !dbg !430
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* %9, i8* %12), !dbg !432
  store i32 -1, i32* %2, align 4, !dbg !434
  br label %15, !dbg !434

; <label>:14:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !435
  br label %15, !dbg !435

; <label>:15:                                     ; preds = %14, %7
  %16 = load i32, i32* %2, align 4, !dbg !436
  ret i32 %16, !dbg !436
}

declare i32 @fcntl(i32, i32, ...) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @set_fd_blocking(i32) #0 !dbg !437 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !438, metadata !26), !dbg !439
  %4 = load i32, i32* %3, align 4, !dbg !440
  %5 = call i32 (i32, i32, ...) @fcntl(i32 %4, i32 4, i32 0), !dbg !442
  %6 = icmp eq i32 %5, -1, !dbg !443
  br i1 %6, label %7, label %14, !dbg !444

; <label>:7:                                      ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !445
  %9 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0)) #5, !dbg !447
  %10 = call i32* @__errno_location() #1, !dbg !448
  %11 = load i32, i32* %10, align 4, !dbg !450
  %12 = call i8* @strerror(i32 %11) #5, !dbg !451
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* %9, i8* %12), !dbg !453
  store i32 -1, i32* %2, align 4, !dbg !455
  br label %15, !dbg !455

; <label>:14:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !456
  br label %15, !dbg !456

; <label>:15:                                     ; preds = %14, %7
  %16 = load i32, i32* %2, align 4, !dbg !457
  ret i32 %16, !dbg !457
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "line3-io.o.i", directory: "/home/lichi/Desktop/httping/task1")
!2 = !{}
!3 = !{!4, !7, !6}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fd_mask", file: !5, line: 54, baseType: !6)
!5 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/select.h", directory: "/home/lichi/Desktop/httping/task1")
!6 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!11 = distinct !DISubprogram(name: "read_to", scope: !12, file: !12, line: 18, type: !13, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!12 = !DIFile(filename: "io.c", directory: "/home/lichi/Desktop/httping/task1")
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !7, !19, !21, !24}
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !16, line: 109, baseType: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/httping/task1")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !18, line: 172, baseType: !6)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/httping/task1")
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !22, line: 216, baseType: !23)
!22 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/httping/task1")
!23 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!24 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!25 = !DILocalVariable(name: "fd", arg: 1, scope: !11, file: !12, line: 18, type: !7)
!26 = !DIExpression()
!27 = !DILocation(line: 18, column: 21, scope: !11)
!28 = !DILocalVariable(name: "whereto", arg: 2, scope: !11, file: !12, line: 18, type: !19)
!29 = !DILocation(line: 18, column: 31, scope: !11)
!30 = !DILocalVariable(name: "len", arg: 3, scope: !11, file: !12, line: 18, type: !21)
!31 = !DILocation(line: 18, column: 47, scope: !11)
!32 = !DILocalVariable(name: "timeout", arg: 4, scope: !11, file: !12, line: 18, type: !24)
!33 = !DILocation(line: 18, column: 59, scope: !11)
!34 = !DILocation(line: 20, column: 2, scope: !11)
!35 = !DILocalVariable(name: "rc", scope: !36, file: !12, line: 22, type: !15)
!36 = distinct !DILexicalBlock(scope: !37, file: !12, line: 21, column: 2)
!37 = distinct !DILexicalBlock(scope: !38, file: !12, line: 20, column: 2)
!38 = distinct !DILexicalBlock(scope: !11, file: !12, line: 20, column: 2)
!39 = !DILocation(line: 22, column: 11, scope: !36)
!40 = !DILocalVariable(name: "to", scope: !36, file: !12, line: 23, type: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !42, line: 30, size: 128, align: 64, elements: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/httping/task1")
!43 = !{!44, !46}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !41, file: !42, line: 32, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !18, line: 139, baseType: !6)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !41, file: !42, line: 33, baseType: !47, size: 64, align: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !18, line: 141, baseType: !6)
!48 = !DILocation(line: 23, column: 18, scope: !36)
!49 = !DILocalVariable(name: "rfds", scope: !36, file: !12, line: 24, type: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !5, line: 75, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5, line: 64, size: 1024, align: 64, elements: !52)
!52 = !{!53}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__fds_bits", scope: !51, file: !5, line: 72, baseType: !54, size: 1024, align: 64)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, align: 64, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 16)
!57 = !DILocation(line: 24, column: 10, scope: !36)
!58 = !DILocation(line: 26, column: 2, scope: !36)
!59 = distinct !{!59, !58}
!60 = !DILocalVariable(name: "__d0", scope: !61, file: !12, line: 26, type: !7)
!61 = distinct !DILexicalBlock(scope: !36, file: !12, line: 26, column: 5)
!62 = !DILocation(line: 26, column: 11, scope: !61)
!63 = !DILocalVariable(name: "__d1", scope: !61, file: !12, line: 26, type: !7)
!64 = !DILocation(line: 26, column: 17, scope: !61)
!65 = !DILocation(line: 26, column: 5, scope: !66)
!66 = !DILexicalBlockFile(scope: !61, file: !12, discriminator: 1)
!67 = !DILocation(line: 26, column: 154, scope: !66)
!68 = !DILocation(line: 26, column: 23, scope: !66)
!69 = !{i32 85017}
!70 = !DILocation(line: 26, column: 34, scope: !66)
!71 = !DILocation(line: 27, column: 2, scope: !36)
!72 = !DILocation(line: 27, column: 4, scope: !36)
!73 = !DILocation(line: 27, column: 60, scope: !36)
!74 = !DILocation(line: 27, column: 11, scope: !36)
!75 = !DILocation(line: 27, column: 5, scope: !36)
!76 = !DILocation(line: 27, column: 39, scope: !36)
!77 = !DILocation(line: 29, column: 22, scope: !36)
!78 = !DILocation(line: 29, column: 30, scope: !36)
!79 = !DILocation(line: 29, column: 15, scope: !36)
!80 = !DILocation(line: 29, column: 6, scope: !36)
!81 = !DILocation(line: 29, column: 13, scope: !36)
!82 = !DILocation(line: 30, column: 23, scope: !36)
!83 = !DILocation(line: 30, column: 31, scope: !36)
!84 = !DILocation(line: 30, column: 16, scope: !36)
!85 = !DILocation(line: 30, column: 41, scope: !36)
!86 = !DILocation(line: 30, column: 6, scope: !36)
!87 = !DILocation(line: 30, column: 14, scope: !36)
!88 = !DILocation(line: 32, column: 15, scope: !36)
!89 = !DILocation(line: 32, column: 18, scope: !36)
!90 = !DILocation(line: 32, column: 8, scope: !36)
!91 = !DILocation(line: 32, column: 6, scope: !36)
!92 = !DILocation(line: 33, column: 7, scope: !93)
!93 = distinct !DILexicalBlock(scope: !36, file: !12, line: 33, column: 7)
!94 = !DILocation(line: 33, column: 10, scope: !93)
!95 = !DILocation(line: 33, column: 7, scope: !36)
!96 = !DILocation(line: 34, column: 4, scope: !93)
!97 = !DILocation(line: 35, column: 12, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !12, line: 35, column: 12)
!99 = !DILocation(line: 35, column: 15, scope: !98)
!100 = !DILocation(line: 35, column: 12, scope: !93)
!101 = !DILocation(line: 37, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !12, line: 37, column: 7)
!103 = distinct !DILexicalBlock(scope: !98, file: !12, line: 36, column: 3)
!104 = !DILocation(line: 37, column: 8, scope: !102)
!105 = !DILocation(line: 37, column: 13, scope: !102)
!106 = !DILocation(line: 37, column: 7, scope: !103)
!107 = !DILocation(line: 38, column: 5, scope: !102)
!108 = distinct !{!108, !34}
!109 = !DILocation(line: 39, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !103, file: !12, line: 39, column: 7)
!111 = !DILocation(line: 39, column: 8, scope: !110)
!112 = !DILocation(line: 39, column: 13, scope: !110)
!113 = !DILocation(line: 39, column: 7, scope: !103)
!114 = !DILocation(line: 40, column: 5, scope: !110)
!115 = !DILocation(line: 42, column: 14, scope: !103)
!116 = !DILocation(line: 42, column: 63, scope: !117)
!117 = !DILexicalBlockFile(scope: !103, file: !12, discriminator: 1)
!118 = !DILocation(line: 42, column: 62, scope: !103)
!119 = !DILocation(line: 42, column: 53, scope: !120)
!120 = !DILexicalBlockFile(scope: !103, file: !12, discriminator: 2)
!121 = !DILocation(line: 42, column: 4, scope: !122)
!122 = !DILexicalBlockFile(scope: !103, file: !12, discriminator: 3)
!123 = !DILocation(line: 44, column: 4, scope: !103)
!124 = !DILocation(line: 47, column: 15, scope: !36)
!125 = !DILocation(line: 47, column: 19, scope: !36)
!126 = !DILocation(line: 47, column: 28, scope: !36)
!127 = !DILocation(line: 47, column: 10, scope: !36)
!128 = !DILocation(line: 47, column: 3, scope: !36)
!129 = !DILocation(line: 49, column: 1, scope: !11)
!130 = distinct !DISubprogram(name: "myread", scope: !12, file: !12, line: 51, type: !13, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!131 = !DILocalVariable(name: "fd", arg: 1, scope: !130, file: !12, line: 51, type: !7)
!132 = !DILocation(line: 51, column: 20, scope: !130)
!133 = !DILocalVariable(name: "whereto", arg: 2, scope: !130, file: !12, line: 51, type: !19)
!134 = !DILocation(line: 51, column: 30, scope: !130)
!135 = !DILocalVariable(name: "len", arg: 3, scope: !130, file: !12, line: 51, type: !21)
!136 = !DILocation(line: 51, column: 46, scope: !130)
!137 = !DILocalVariable(name: "timeout", arg: 4, scope: !130, file: !12, line: 51, type: !24)
!138 = !DILocation(line: 51, column: 58, scope: !130)
!139 = !DILocalVariable(name: "cnt", scope: !130, file: !12, line: 53, type: !15)
!140 = !DILocation(line: 53, column: 10, scope: !130)
!141 = !DILocation(line: 55, column: 2, scope: !130)
!142 = !DILocation(line: 55, column: 8, scope: !143)
!143 = !DILexicalBlockFile(scope: !130, file: !12, discriminator: 1)
!144 = !DILocation(line: 55, column: 11, scope: !143)
!145 = !DILocation(line: 55, column: 2, scope: !143)
!146 = !DILocalVariable(name: "rc", scope: !147, file: !12, line: 57, type: !15)
!147 = distinct !DILexicalBlock(scope: !130, file: !12, line: 56, column: 2)
!148 = !DILocation(line: 57, column: 11, scope: !147)
!149 = !DILocalVariable(name: "to", scope: !147, file: !12, line: 58, type: !41)
!150 = !DILocation(line: 58, column: 18, scope: !147)
!151 = !DILocalVariable(name: "rfds", scope: !147, file: !12, line: 59, type: !50)
!152 = !DILocation(line: 59, column: 10, scope: !147)
!153 = !DILocation(line: 61, column: 2, scope: !147)
!154 = distinct !{!154, !153}
!155 = !DILocalVariable(name: "__d0", scope: !156, file: !12, line: 61, type: !7)
!156 = distinct !DILexicalBlock(scope: !147, file: !12, line: 61, column: 5)
!157 = !DILocation(line: 61, column: 11, scope: !156)
!158 = !DILocalVariable(name: "__d1", scope: !156, file: !12, line: 61, type: !7)
!159 = !DILocation(line: 61, column: 17, scope: !156)
!160 = !DILocation(line: 61, column: 5, scope: !161)
!161 = !DILexicalBlockFile(scope: !156, file: !12, discriminator: 1)
!162 = !DILocation(line: 61, column: 154, scope: !161)
!163 = !DILocation(line: 61, column: 23, scope: !161)
!164 = !{i32 86773}
!165 = !DILocation(line: 61, column: 34, scope: !161)
!166 = !DILocation(line: 62, column: 2, scope: !147)
!167 = !DILocation(line: 62, column: 4, scope: !147)
!168 = !DILocation(line: 62, column: 60, scope: !147)
!169 = !DILocation(line: 62, column: 11, scope: !147)
!170 = !DILocation(line: 62, column: 5, scope: !147)
!171 = !DILocation(line: 62, column: 39, scope: !147)
!172 = !DILocation(line: 64, column: 22, scope: !147)
!173 = !DILocation(line: 64, column: 30, scope: !147)
!174 = !DILocation(line: 64, column: 15, scope: !147)
!175 = !DILocation(line: 64, column: 6, scope: !147)
!176 = !DILocation(line: 64, column: 13, scope: !147)
!177 = !DILocation(line: 65, column: 23, scope: !147)
!178 = !DILocation(line: 65, column: 31, scope: !147)
!179 = !DILocation(line: 65, column: 16, scope: !147)
!180 = !DILocation(line: 65, column: 41, scope: !147)
!181 = !DILocation(line: 65, column: 6, scope: !147)
!182 = !DILocation(line: 65, column: 14, scope: !147)
!183 = !DILocation(line: 67, column: 15, scope: !147)
!184 = !DILocation(line: 67, column: 18, scope: !147)
!185 = !DILocation(line: 67, column: 8, scope: !147)
!186 = !DILocation(line: 67, column: 6, scope: !147)
!187 = !DILocation(line: 68, column: 7, scope: !188)
!188 = distinct !DILexicalBlock(scope: !147, file: !12, line: 68, column: 7)
!189 = !DILocation(line: 68, column: 10, scope: !188)
!190 = !DILocation(line: 68, column: 7, scope: !147)
!191 = !DILocation(line: 69, column: 4, scope: !188)
!192 = !DILocation(line: 70, column: 12, scope: !193)
!193 = distinct !DILexicalBlock(scope: !188, file: !12, line: 70, column: 12)
!194 = !DILocation(line: 70, column: 15, scope: !193)
!195 = !DILocation(line: 70, column: 12, scope: !188)
!196 = !DILocation(line: 72, column: 9, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !12, line: 72, column: 7)
!198 = distinct !DILexicalBlock(scope: !193, file: !12, line: 71, column: 3)
!199 = !DILocation(line: 72, column: 8, scope: !197)
!200 = !DILocation(line: 72, column: 13, scope: !197)
!201 = !DILocation(line: 72, column: 7, scope: !198)
!202 = !DILocation(line: 73, column: 5, scope: !197)
!203 = distinct !{!203, !141}
!204 = !DILocation(line: 74, column: 9, scope: !205)
!205 = distinct !DILexicalBlock(scope: !198, file: !12, line: 74, column: 7)
!206 = !DILocation(line: 74, column: 8, scope: !205)
!207 = !DILocation(line: 74, column: 13, scope: !205)
!208 = !DILocation(line: 74, column: 7, scope: !198)
!209 = !DILocation(line: 75, column: 5, scope: !205)
!210 = !DILocation(line: 77, column: 14, scope: !198)
!211 = !DILocation(line: 77, column: 62, scope: !212)
!212 = !DILexicalBlockFile(scope: !198, file: !12, discriminator: 1)
!213 = !DILocation(line: 77, column: 61, scope: !198)
!214 = !DILocation(line: 77, column: 52, scope: !215)
!215 = !DILexicalBlockFile(scope: !198, file: !12, discriminator: 2)
!216 = !DILocation(line: 77, column: 4, scope: !217)
!217 = !DILexicalBlockFile(scope: !198, file: !12, discriminator: 3)
!218 = !DILocation(line: 79, column: 4, scope: !198)
!219 = !DILocation(line: 82, column: 6, scope: !220)
!220 = distinct !DILexicalBlock(scope: !147, file: !12, line: 82, column: 6)
!221 = !DILocation(line: 82, column: 8, scope: !220)
!222 = !DILocation(line: 82, column: 9, scope: !220)
!223 = !DILocation(line: 82, column: 63, scope: !220)
!224 = !DILocation(line: 82, column: 43, scope: !220)
!225 = !DILocation(line: 82, column: 45, scope: !220)
!226 = !DILocation(line: 82, column: 6, scope: !147)
!227 = !DILocation(line: 84, column: 14, scope: !228)
!228 = distinct !DILexicalBlock(scope: !220, file: !12, line: 83, column: 3)
!229 = !DILocation(line: 84, column: 18, scope: !228)
!230 = !DILocation(line: 84, column: 27, scope: !228)
!231 = !DILocation(line: 84, column: 9, scope: !228)
!232 = !DILocation(line: 84, column: 7, scope: !228)
!233 = !DILocation(line: 86, column: 8, scope: !234)
!234 = distinct !DILexicalBlock(scope: !228, file: !12, line: 86, column: 8)
!235 = !DILocation(line: 86, column: 11, scope: !234)
!236 = !DILocation(line: 86, column: 8, scope: !228)
!237 = !DILocation(line: 88, column: 10, scope: !238)
!238 = distinct !DILexicalBlock(scope: !239, file: !12, line: 88, column: 8)
!239 = distinct !DILexicalBlock(scope: !234, file: !12, line: 87, column: 4)
!240 = !DILocation(line: 88, column: 9, scope: !238)
!241 = !DILocation(line: 88, column: 14, scope: !238)
!242 = !DILocation(line: 88, column: 8, scope: !239)
!243 = !DILocation(line: 89, column: 6, scope: !238)
!244 = !DILocation(line: 90, column: 10, scope: !245)
!245 = distinct !DILexicalBlock(scope: !239, file: !12, line: 90, column: 8)
!246 = !DILocation(line: 90, column: 9, scope: !245)
!247 = !DILocation(line: 90, column: 14, scope: !245)
!248 = !DILocation(line: 90, column: 8, scope: !239)
!249 = !DILocation(line: 91, column: 6, scope: !245)
!250 = !DILocation(line: 93, column: 15, scope: !239)
!251 = !DILocation(line: 93, column: 61, scope: !252)
!252 = !DILexicalBlockFile(scope: !239, file: !12, discriminator: 1)
!253 = !DILocation(line: 93, column: 60, scope: !239)
!254 = !DILocation(line: 93, column: 51, scope: !255)
!255 = !DILexicalBlockFile(scope: !239, file: !12, discriminator: 2)
!256 = !DILocation(line: 93, column: 5, scope: !257)
!257 = !DILexicalBlockFile(scope: !239, file: !12, discriminator: 3)
!258 = !DILocation(line: 95, column: 5, scope: !239)
!259 = !DILocation(line: 97, column: 13, scope: !260)
!260 = distinct !DILexicalBlock(scope: !234, file: !12, line: 97, column: 13)
!261 = !DILocation(line: 97, column: 16, scope: !260)
!262 = !DILocation(line: 97, column: 13, scope: !234)
!263 = !DILocation(line: 98, column: 5, scope: !260)
!264 = !DILocation(line: 101, column: 16, scope: !265)
!265 = distinct !DILexicalBlock(scope: !260, file: !12, line: 100, column: 4)
!266 = !DILocation(line: 101, column: 13, scope: !265)
!267 = !DILocation(line: 102, column: 12, scope: !265)
!268 = !DILocation(line: 102, column: 9, scope: !265)
!269 = !DILocation(line: 103, column: 12, scope: !265)
!270 = !DILocation(line: 103, column: 9, scope: !265)
!271 = !DILocation(line: 105, column: 3, scope: !228)
!272 = !DILocation(line: 55, column: 2, scope: !273)
!273 = !DILexicalBlockFile(scope: !130, file: !12, discriminator: 2)
!274 = !DILocation(line: 108, column: 9, scope: !130)
!275 = !DILocation(line: 108, column: 2, scope: !130)
!276 = !DILocation(line: 109, column: 1, scope: !130)
!277 = distinct !DISubprogram(name: "mywrite", scope: !12, file: !12, line: 111, type: !13, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!278 = !DILocalVariable(name: "fd", arg: 1, scope: !277, file: !12, line: 111, type: !7)
!279 = !DILocation(line: 111, column: 21, scope: !277)
!280 = !DILocalVariable(name: "wherefrom", arg: 2, scope: !277, file: !12, line: 111, type: !19)
!281 = !DILocation(line: 111, column: 31, scope: !277)
!282 = !DILocalVariable(name: "len", arg: 3, scope: !277, file: !12, line: 111, type: !21)
!283 = !DILocation(line: 111, column: 49, scope: !277)
!284 = !DILocalVariable(name: "timeout", arg: 4, scope: !277, file: !12, line: 111, type: !24)
!285 = !DILocation(line: 111, column: 61, scope: !277)
!286 = !DILocalVariable(name: "cnt", scope: !277, file: !12, line: 113, type: !15)
!287 = !DILocation(line: 113, column: 10, scope: !277)
!288 = !DILocation(line: 115, column: 2, scope: !277)
!289 = !DILocation(line: 115, column: 8, scope: !290)
!290 = !DILexicalBlockFile(scope: !277, file: !12, discriminator: 1)
!291 = !DILocation(line: 115, column: 11, scope: !290)
!292 = !DILocation(line: 115, column: 2, scope: !290)
!293 = !DILocalVariable(name: "rc", scope: !294, file: !12, line: 117, type: !15)
!294 = distinct !DILexicalBlock(scope: !277, file: !12, line: 116, column: 2)
!295 = !DILocation(line: 117, column: 11, scope: !294)
!296 = !DILocalVariable(name: "to", scope: !294, file: !12, line: 118, type: !41)
!297 = !DILocation(line: 118, column: 18, scope: !294)
!298 = !DILocalVariable(name: "wfds", scope: !294, file: !12, line: 119, type: !50)
!299 = !DILocation(line: 119, column: 10, scope: !294)
!300 = !DILocation(line: 121, column: 2, scope: !294)
!301 = distinct !{!301, !300}
!302 = !DILocalVariable(name: "__d0", scope: !303, file: !12, line: 121, type: !7)
!303 = distinct !DILexicalBlock(scope: !294, file: !12, line: 121, column: 5)
!304 = !DILocation(line: 121, column: 11, scope: !303)
!305 = !DILocalVariable(name: "__d1", scope: !303, file: !12, line: 121, type: !7)
!306 = !DILocation(line: 121, column: 17, scope: !303)
!307 = !DILocation(line: 121, column: 5, scope: !308)
!308 = !DILexicalBlockFile(scope: !303, file: !12, discriminator: 1)
!309 = !DILocation(line: 121, column: 154, scope: !308)
!310 = !DILocation(line: 121, column: 23, scope: !308)
!311 = !{i32 89595}
!312 = !DILocation(line: 121, column: 34, scope: !308)
!313 = !DILocation(line: 122, column: 2, scope: !294)
!314 = !DILocation(line: 122, column: 4, scope: !294)
!315 = !DILocation(line: 122, column: 60, scope: !294)
!316 = !DILocation(line: 122, column: 11, scope: !294)
!317 = !DILocation(line: 122, column: 5, scope: !294)
!318 = !DILocation(line: 122, column: 39, scope: !294)
!319 = !DILocation(line: 124, column: 22, scope: !294)
!320 = !DILocation(line: 124, column: 30, scope: !294)
!321 = !DILocation(line: 124, column: 15, scope: !294)
!322 = !DILocation(line: 124, column: 6, scope: !294)
!323 = !DILocation(line: 124, column: 13, scope: !294)
!324 = !DILocation(line: 125, column: 23, scope: !294)
!325 = !DILocation(line: 125, column: 31, scope: !294)
!326 = !DILocation(line: 125, column: 16, scope: !294)
!327 = !DILocation(line: 125, column: 41, scope: !294)
!328 = !DILocation(line: 125, column: 6, scope: !294)
!329 = !DILocation(line: 125, column: 14, scope: !294)
!330 = !DILocation(line: 127, column: 15, scope: !294)
!331 = !DILocation(line: 127, column: 18, scope: !294)
!332 = !DILocation(line: 127, column: 8, scope: !294)
!333 = !DILocation(line: 127, column: 6, scope: !294)
!334 = !DILocation(line: 128, column: 7, scope: !335)
!335 = distinct !DILexicalBlock(scope: !294, file: !12, line: 128, column: 7)
!336 = !DILocation(line: 128, column: 10, scope: !335)
!337 = !DILocation(line: 128, column: 7, scope: !294)
!338 = !DILocation(line: 129, column: 4, scope: !335)
!339 = !DILocation(line: 130, column: 12, scope: !340)
!340 = distinct !DILexicalBlock(scope: !335, file: !12, line: 130, column: 12)
!341 = !DILocation(line: 130, column: 15, scope: !340)
!342 = !DILocation(line: 130, column: 12, scope: !335)
!343 = !DILocation(line: 132, column: 9, scope: !344)
!344 = distinct !DILexicalBlock(scope: !345, file: !12, line: 132, column: 7)
!345 = distinct !DILexicalBlock(scope: !340, file: !12, line: 131, column: 3)
!346 = !DILocation(line: 132, column: 8, scope: !344)
!347 = !DILocation(line: 132, column: 13, scope: !344)
!348 = !DILocation(line: 132, column: 7, scope: !345)
!349 = !DILocation(line: 133, column: 5, scope: !344)
!350 = distinct !{!350, !288}
!351 = !DILocation(line: 134, column: 9, scope: !352)
!352 = distinct !DILexicalBlock(scope: !345, file: !12, line: 134, column: 7)
!353 = !DILocation(line: 134, column: 8, scope: !352)
!354 = !DILocation(line: 134, column: 13, scope: !352)
!355 = !DILocation(line: 134, column: 7, scope: !345)
!356 = !DILocation(line: 135, column: 5, scope: !352)
!357 = !DILocation(line: 137, column: 14, scope: !345)
!358 = !DILocation(line: 137, column: 63, scope: !359)
!359 = !DILexicalBlockFile(scope: !345, file: !12, discriminator: 1)
!360 = !DILocation(line: 137, column: 62, scope: !345)
!361 = !DILocation(line: 137, column: 53, scope: !362)
!362 = !DILexicalBlockFile(scope: !345, file: !12, discriminator: 2)
!363 = !DILocation(line: 137, column: 4, scope: !364)
!364 = !DILexicalBlockFile(scope: !345, file: !12, discriminator: 3)
!365 = !DILocation(line: 139, column: 4, scope: !345)
!366 = !DILocation(line: 142, column: 14, scope: !294)
!367 = !DILocation(line: 142, column: 18, scope: !294)
!368 = !DILocation(line: 142, column: 29, scope: !294)
!369 = !DILocation(line: 142, column: 8, scope: !294)
!370 = !DILocation(line: 142, column: 6, scope: !294)
!371 = !DILocation(line: 144, column: 7, scope: !372)
!372 = distinct !DILexicalBlock(scope: !294, file: !12, line: 144, column: 7)
!373 = !DILocation(line: 144, column: 10, scope: !372)
!374 = !DILocation(line: 144, column: 7, scope: !294)
!375 = !DILocation(line: 146, column: 9, scope: !376)
!376 = distinct !DILexicalBlock(scope: !377, file: !12, line: 146, column: 7)
!377 = distinct !DILexicalBlock(scope: !372, file: !12, line: 145, column: 3)
!378 = !DILocation(line: 146, column: 8, scope: !376)
!379 = !DILocation(line: 146, column: 13, scope: !376)
!380 = !DILocation(line: 146, column: 7, scope: !377)
!381 = !DILocation(line: 147, column: 5, scope: !376)
!382 = !DILocation(line: 148, column: 9, scope: !383)
!383 = distinct !DILexicalBlock(scope: !377, file: !12, line: 148, column: 7)
!384 = !DILocation(line: 148, column: 8, scope: !383)
!385 = !DILocation(line: 148, column: 13, scope: !383)
!386 = !DILocation(line: 148, column: 7, scope: !377)
!387 = !DILocation(line: 149, column: 5, scope: !383)
!388 = !DILocation(line: 151, column: 14, scope: !377)
!389 = !DILocation(line: 151, column: 62, scope: !390)
!390 = !DILexicalBlockFile(scope: !377, file: !12, discriminator: 1)
!391 = !DILocation(line: 151, column: 61, scope: !377)
!392 = !DILocation(line: 151, column: 52, scope: !393)
!393 = !DILexicalBlockFile(scope: !377, file: !12, discriminator: 2)
!394 = !DILocation(line: 151, column: 4, scope: !395)
!395 = !DILexicalBlockFile(scope: !377, file: !12, discriminator: 3)
!396 = !DILocation(line: 153, column: 4, scope: !377)
!397 = !DILocation(line: 155, column: 12, scope: !398)
!398 = distinct !DILexicalBlock(scope: !372, file: !12, line: 155, column: 12)
!399 = !DILocation(line: 155, column: 15, scope: !398)
!400 = !DILocation(line: 155, column: 12, scope: !372)
!401 = !DILocation(line: 156, column: 4, scope: !398)
!402 = !DILocation(line: 159, column: 17, scope: !403)
!403 = distinct !DILexicalBlock(scope: !398, file: !12, line: 158, column: 3)
!404 = !DILocation(line: 159, column: 14, scope: !403)
!405 = !DILocation(line: 160, column: 11, scope: !403)
!406 = !DILocation(line: 160, column: 8, scope: !403)
!407 = !DILocation(line: 161, column: 11, scope: !403)
!408 = !DILocation(line: 161, column: 8, scope: !403)
!409 = !DILocation(line: 115, column: 2, scope: !410)
!410 = !DILexicalBlockFile(scope: !277, file: !12, discriminator: 2)
!411 = !DILocation(line: 165, column: 9, scope: !277)
!412 = !DILocation(line: 165, column: 2, scope: !277)
!413 = !DILocation(line: 166, column: 1, scope: !277)
!414 = distinct !DISubprogram(name: "set_fd_nonblocking", scope: !12, file: !12, line: 168, type: !415, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!415 = !DISubroutineType(types: !416)
!416 = !{!7, !7}
!417 = !DILocalVariable(name: "fd", arg: 1, scope: !414, file: !12, line: 168, type: !7)
!418 = !DILocation(line: 168, column: 28, scope: !414)
!419 = !DILocation(line: 171, column: 19, scope: !420)
!420 = distinct !DILexicalBlock(scope: !414, file: !12, line: 171, column: 13)
!421 = !DILocation(line: 171, column: 13, scope: !420)
!422 = !DILocation(line: 171, column: 43, scope: !420)
!423 = !DILocation(line: 171, column: 13, scope: !414)
!424 = !DILocation(line: 173, column: 10, scope: !425)
!425 = distinct !DILexicalBlock(scope: !420, file: !12, line: 172, column: 2)
!426 = !DILocation(line: 173, column: 18, scope: !425)
!427 = !DILocation(line: 173, column: 75, scope: !428)
!428 = !DILexicalBlockFile(scope: !425, file: !12, discriminator: 1)
!429 = !DILocation(line: 173, column: 74, scope: !425)
!430 = !DILocation(line: 173, column: 64, scope: !431)
!431 = !DILexicalBlockFile(scope: !425, file: !12, discriminator: 2)
!432 = !DILocation(line: 173, column: 3, scope: !433)
!433 = !DILexicalBlockFile(scope: !425, file: !12, discriminator: 3)
!434 = !DILocation(line: 175, column: 17, scope: !425)
!435 = !DILocation(line: 178, column: 9, scope: !414)
!436 = !DILocation(line: 179, column: 1, scope: !414)
!437 = distinct !DISubprogram(name: "set_fd_blocking", scope: !12, file: !12, line: 181, type: !415, isLocal: false, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!438 = !DILocalVariable(name: "fd", arg: 1, scope: !437, file: !12, line: 181, type: !7)
!439 = !DILocation(line: 181, column: 25, scope: !437)
!440 = !DILocation(line: 184, column: 19, scope: !441)
!441 = distinct !DILexicalBlock(scope: !437, file: !12, line: 184, column: 13)
!442 = !DILocation(line: 184, column: 13, scope: !441)
!443 = !DILocation(line: 184, column: 34, scope: !441)
!444 = !DILocation(line: 184, column: 13, scope: !437)
!445 = !DILocation(line: 186, column: 10, scope: !446)
!446 = distinct !DILexicalBlock(scope: !441, file: !12, line: 185, column: 2)
!447 = !DILocation(line: 186, column: 18, scope: !446)
!448 = !DILocation(line: 186, column: 72, scope: !449)
!449 = !DILexicalBlockFile(scope: !446, file: !12, discriminator: 1)
!450 = !DILocation(line: 186, column: 71, scope: !446)
!451 = !DILocation(line: 186, column: 61, scope: !452)
!452 = !DILexicalBlockFile(scope: !446, file: !12, discriminator: 2)
!453 = !DILocation(line: 186, column: 3, scope: !454)
!454 = !DILexicalBlockFile(scope: !446, file: !12, discriminator: 3)
!455 = !DILocation(line: 188, column: 17, scope: !446)
!456 = !DILocation(line: 191, column: 9, scope: !437)
!457 = !DILocation(line: 192, column: 1, scope: !437)
