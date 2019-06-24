; ModuleID = './[inter]lib--dpkg--path-remove.o.i'
source_filename = "./[inter]lib--dpkg--path-remove.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"secure_remove '%s' rmdir OK\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"secure_remove '%s' rmdir %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"secure_remove '%s' unlink %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"path-remove.c\00", align 1
@__func__.path_remove_tree = private unnamed_addr constant [17 x i8] c"path_remove_tree\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"pathname '%s' reduces to nothing\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%s '%s'\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"unable to securely remove '%.255s'\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"-rf\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"unable to execute %s (%s)\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"rm command for cleanup\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"%s running rm -rf '%s'\00", align 1

; Function Attrs: nounwind uwtable
define i32 @secure_unlink_statted(i8*, %struct.stat*) #0 !dbg !24 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !76, metadata !77), !dbg !78
  store %struct.stat* %1, %struct.stat** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %5, metadata !79, metadata !77), !dbg !80
  %6 = load %struct.stat*, %struct.stat** %5, align 8, !dbg !81
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3, !dbg !83
  %8 = load i32, i32* %7, align 8, !dbg !83
  %9 = and i32 %8, 61440, !dbg !84
  %10 = icmp eq i32 %9, 32768, !dbg !85
  br i1 %10, label %11, label %17, !dbg !86

; <label>:11:                                     ; preds = %2
  %12 = load %struct.stat*, %struct.stat** %5, align 8, !dbg !87
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 3, !dbg !89
  %14 = load i32, i32* %13, align 8, !dbg !89
  %15 = and i32 %14, 3584, !dbg !90
  %16 = icmp ne i32 %15, 0, !dbg !90
  br i1 %16, label %44, label %50, !dbg !91

; <label>:17:                                     ; preds = %2
  %18 = load %struct.stat*, %struct.stat** %5, align 8, !dbg !92
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 3, !dbg !93
  %20 = load i32, i32* %19, align 8, !dbg !93
  %21 = and i32 %20, 61440, !dbg !94
  %22 = icmp eq i32 %21, 40960, !dbg !95
  br i1 %22, label %41, label %23, !dbg !96

; <label>:23:                                     ; preds = %17
  %24 = load %struct.stat*, %struct.stat** %5, align 8, !dbg !97
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 3, !dbg !98
  %26 = load i32, i32* %25, align 8, !dbg !98
  %27 = and i32 %26, 61440, !dbg !99
  %28 = icmp eq i32 %27, 16384, !dbg !100
  br i1 %28, label %41, label %29, !dbg !101

; <label>:29:                                     ; preds = %23
  %30 = load %struct.stat*, %struct.stat** %5, align 8, !dbg !102
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %30, i32 0, i32 3, !dbg !103
  %32 = load i32, i32* %31, align 8, !dbg !103
  %33 = and i32 %32, 61440, !dbg !104
  %34 = icmp eq i32 %33, 4096, !dbg !105
  br i1 %34, label %41, label %35, !dbg !106

; <label>:35:                                     ; preds = %29
  %36 = load %struct.stat*, %struct.stat** %5, align 8, !dbg !107
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %36, i32 0, i32 3, !dbg !108
  %38 = load i32, i32* %37, align 8, !dbg !108
  %39 = and i32 %38, 61440, !dbg !109
  %40 = icmp eq i32 %39, 49152, !dbg !110
  br label %41, !dbg !111

; <label>:41:                                     ; preds = %35, %29, %23, %17
  %42 = phi i1 [ true, %29 ], [ true, %23 ], [ true, %17 ], [ %40, %35 ]
  %43 = xor i1 %42, true, !dbg !112
  br i1 %43, label %44, label %50, !dbg !114

; <label>:44:                                     ; preds = %41, %11
  %45 = load i8*, i8** %4, align 8, !dbg !116
  %46 = call i32 @chmod(i8* %45, i32 384) #6, !dbg !119
  %47 = icmp ne i32 %46, 0, !dbg !119
  br i1 %47, label %48, label %49, !dbg !120

; <label>:48:                                     ; preds = %44
  store i32 -1, i32* %3, align 4, !dbg !121
  br label %56, !dbg !121

; <label>:49:                                     ; preds = %44
  br label %50, !dbg !122

; <label>:50:                                     ; preds = %49, %41, %11
  %51 = load i8*, i8** %4, align 8, !dbg !123
  %52 = call i32 @unlink(i8* %51) #6, !dbg !125
  %53 = icmp ne i32 %52, 0, !dbg !125
  br i1 %53, label %54, label %55, !dbg !126

; <label>:54:                                     ; preds = %50
  store i32 -1, i32* %3, align 4, !dbg !127
  br label %56, !dbg !127

; <label>:55:                                     ; preds = %50
  store i32 0, i32* %3, align 4, !dbg !128
  br label %56, !dbg !128

; <label>:56:                                     ; preds = %55, %54, %48
  %57 = load i32, i32* %3, align 4, !dbg !129
  ret i32 %57, !dbg !129
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @chmod(i8*, i32) #2

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @secure_unlink(i8*) #0 !dbg !130 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !133, metadata !77), !dbg !134
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !135, metadata !77), !dbg !136
  %5 = load i8*, i8** %3, align 8, !dbg !137
  %6 = call i32 @lstat(i8* %5, %struct.stat* %4) #6, !dbg !139
  %7 = icmp ne i32 %6, 0, !dbg !139
  br i1 %7, label %8, label %9, !dbg !140

; <label>:8:                                      ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !141
  br label %12, !dbg !141

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !142
  %11 = call i32 @secure_unlink_statted(i8* %10, %struct.stat* %4), !dbg !143
  store i32 %11, i32* %2, align 4, !dbg !144
  br label %12, !dbg !144

; <label>:12:                                     ; preds = %9, %8
  %13 = load i32, i32* %2, align 4, !dbg !145
  ret i32 %13, !dbg !145
}

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #2

; Function Attrs: nounwind uwtable
define i32 @secure_remove(i8*) #0 !dbg !146 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !147, metadata !77), !dbg !148
  call void @llvm.dbg.declare(metadata i32* %4, metadata !149, metadata !77), !dbg !150
  call void @llvm.dbg.declare(metadata i32* %5, metadata !151, metadata !77), !dbg !152
  %6 = load i8*, i8** %3, align 8, !dbg !153
  %7 = call i32 @rmdir(i8* %6) #6, !dbg !155
  %8 = icmp ne i32 %7, 0, !dbg !155
  br i1 %8, label %11, label %9, !dbg !156

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !157
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* %10), !dbg !159
  store i32 0, i32* %2, align 4, !dbg !160
  br label %40, !dbg !160

; <label>:11:                                     ; preds = %1
  %12 = call i32* @__errno_location() #1, !dbg !161
  %13 = load i32, i32* %12, align 4, !dbg !163
  %14 = icmp ne i32 %13, 20, !dbg !164
  br i1 %14, label %15, label %23, !dbg !165

; <label>:15:                                     ; preds = %11
  %16 = call i32* @__errno_location() #1, !dbg !166
  %17 = load i32, i32* %16, align 4, !dbg !168
  store i32 %17, i32* %5, align 4, !dbg !169
  %18 = load i8*, i8** %3, align 8, !dbg !170
  %19 = load i32, i32* %5, align 4, !dbg !171
  %20 = call i8* @strerror(i32 %19) #6, !dbg !172
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i8* %18, i8* %20), !dbg !173
  %21 = load i32, i32* %5, align 4, !dbg !174
  %22 = call i32* @__errno_location() #1, !dbg !175
  store i32 %21, i32* %22, align 4, !dbg !176
  store i32 -1, i32* %2, align 4, !dbg !177
  br label %40, !dbg !177

; <label>:23:                                     ; preds = %11
  %24 = load i8*, i8** %3, align 8, !dbg !178
  %25 = call i32 @secure_unlink(i8* %24), !dbg !179
  store i32 %25, i32* %4, align 4, !dbg !180
  %26 = call i32* @__errno_location() #1, !dbg !181
  %27 = load i32, i32* %26, align 4, !dbg !182
  store i32 %27, i32* %5, align 4, !dbg !183
  %28 = load i8*, i8** %3, align 8, !dbg !184
  %29 = load i32, i32* %4, align 4, !dbg !185
  %30 = icmp ne i32 %29, 0, !dbg !185
  br i1 %30, label %31, label %34, !dbg !185

; <label>:31:                                     ; preds = %23
  %32 = load i32, i32* %5, align 4, !dbg !186
  %33 = call i8* @strerror(i32 %32) #6, !dbg !188
  br label %35, !dbg !189

; <label>:34:                                     ; preds = %23
  br label %35, !dbg !190

; <label>:35:                                     ; preds = %34, %31
  %36 = phi i8* [ %33, %31 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), %34 ], !dbg !192
  call void (i32, i8*, ...) @debug(i32 64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i8* %28, i8* %36), !dbg !194
  %37 = load i32, i32* %5, align 4, !dbg !195
  %38 = call i32* @__errno_location() #1, !dbg !196
  store i32 %37, i32* %38, align 4, !dbg !197
  %39 = load i32, i32* %4, align 4, !dbg !198
  store i32 %39, i32* %2, align 4, !dbg !199
  br label %40, !dbg !199

; <label>:40:                                     ; preds = %35, %15, %9
  %41 = load i32, i32* %2, align 4, !dbg !200
  ret i32 %41, !dbg !200
}

; Function Attrs: nounwind
declare i32 @rmdir(i8*) #2

declare void @debug(i32, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind uwtable
define void @path_remove_tree(i8*) #0 !dbg !201 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !204, metadata !77), !dbg !205
  call void @llvm.dbg.declare(metadata i32* %3, metadata !206, metadata !77), !dbg !210
  call void @llvm.dbg.declare(metadata i8** %4, metadata !211, metadata !77), !dbg !212
  %5 = load i8*, i8** %2, align 8, !dbg !213
  %6 = call i8* @path_skip_slash_dotslash(i8* %5), !dbg !214
  store i8* %6, i8** %4, align 8, !dbg !215
  %7 = load i8*, i8** %4, align 8, !dbg !216
  %8 = getelementptr inbounds i8, i8* %7, i64 0, !dbg !216
  %9 = load i8, i8* %8, align 1, !dbg !216
  %10 = sext i8 %9 to i32, !dbg !216
  %11 = icmp eq i32 %10, 0, !dbg !218
  br i1 %11, label %12, label %14, !dbg !219

; <label>:12:                                     ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !220
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 125, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.path_remove_tree, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), i8* %13) #7, !dbg !221
  unreachable, !dbg !221

; <label>:14:                                     ; preds = %1
  %15 = load i8*, i8** %2, align 8, !dbg !222
  call void (i32, i8*, ...) @debug(i32 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.path_remove_tree, i32 0, i32 0), i8* %15), !dbg !223
  %16 = load i8*, i8** %2, align 8, !dbg !224
  %17 = call i32 @rmdir(i8* %16) #6, !dbg !226
  %18 = icmp ne i32 %17, 0, !dbg !226
  br i1 %18, label %20, label %19, !dbg !227

; <label>:19:                                     ; preds = %14
  br label %84, !dbg !228

; <label>:20:                                     ; preds = %14
  %21 = call i32* @__errno_location() #1, !dbg !229
  %22 = load i32, i32* %21, align 4, !dbg !231
  %23 = icmp eq i32 %22, 2, !dbg !232
  br i1 %23, label %28, label %24, !dbg !233

; <label>:24:                                     ; preds = %20
  %25 = call i32* @__errno_location() #1, !dbg !234
  %26 = load i32, i32* %25, align 4, !dbg !236
  %27 = icmp eq i32 %26, 40, !dbg !237
  br i1 %27, label %28, label %29, !dbg !238

; <label>:28:                                     ; preds = %24, %20
  br label %84, !dbg !239

; <label>:29:                                     ; preds = %24
  %30 = call i32* @__errno_location() #1, !dbg !240
  %31 = load i32, i32* %30, align 4, !dbg !242
  %32 = icmp eq i32 %31, 20, !dbg !243
  br i1 %32, label %33, label %44, !dbg !244

; <label>:33:                                     ; preds = %29
  %34 = load i8*, i8** %2, align 8, !dbg !245
  %35 = call i32 @secure_unlink(i8* %34), !dbg !248
  %36 = icmp eq i32 %35, 0, !dbg !249
  br i1 %36, label %37, label %38, !dbg !250

; <label>:37:                                     ; preds = %33
  br label %84, !dbg !251

; <label>:38:                                     ; preds = %33
  %39 = call i32* @__errno_location() #1, !dbg !252
  %40 = load i32, i32* %39, align 4, !dbg !254
  %41 = icmp eq i32 %40, 20, !dbg !255
  br i1 %41, label %42, label %43, !dbg !256

; <label>:42:                                     ; preds = %38
  br label %84, !dbg !257

; <label>:43:                                     ; preds = %38
  br label %44, !dbg !258

; <label>:44:                                     ; preds = %43, %29
  %45 = call i32* @__errno_location() #1, !dbg !259
  %46 = load i32, i32* %45, align 4, !dbg !261
  %47 = icmp eq i32 %46, 30, !dbg !262
  br i1 %47, label %48, label %59, !dbg !263

; <label>:48:                                     ; preds = %44
  %49 = load i8*, i8** %2, align 8, !dbg !264
  %50 = call i32 @access(i8* %49, i32 0) #6, !dbg !267
  %51 = icmp slt i32 %50, 0, !dbg !268
  br i1 %51, label %52, label %57, !dbg !269

; <label>:52:                                     ; preds = %48
  %53 = call i32* @__errno_location() #1, !dbg !270
  %54 = load i32, i32* %53, align 4, !dbg !272
  %55 = icmp eq i32 %54, 2, !dbg !273
  br i1 %55, label %56, label %57, !dbg !274

; <label>:56:                                     ; preds = %52
  br label %84, !dbg !275

; <label>:57:                                     ; preds = %52, %48
  %58 = call i32* @__errno_location() #1, !dbg !276
  store i32 30, i32* %58, align 4, !dbg !277
  br label %59, !dbg !278

; <label>:59:                                     ; preds = %57, %44
  %60 = call i32* @__errno_location() #1, !dbg !279
  %61 = load i32, i32* %60, align 4, !dbg !281
  %62 = icmp ne i32 %61, 39, !dbg !282
  br i1 %62, label %63, label %70, !dbg !283

; <label>:63:                                     ; preds = %59
  %64 = call i32* @__errno_location() #1, !dbg !284
  %65 = load i32, i32* %64, align 4, !dbg !286
  %66 = icmp ne i32 %65, 17, !dbg !287
  br i1 %66, label %67, label %70, !dbg !288

; <label>:67:                                     ; preds = %63
  %68 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0)) #6, !dbg !289
  %69 = load i8*, i8** %2, align 8, !dbg !290
  call void (i8*, ...) @ohshite(i8* %68, i8* %69) #7, !dbg !291
  unreachable, !dbg !292

; <label>:70:                                     ; preds = %63, %59
  %71 = call i32 @subproc_fork(), !dbg !293
  store i32 %71, i32* %3, align 4, !dbg !294
  %72 = load i32, i32* %3, align 4, !dbg !295
  %73 = icmp eq i32 %72, 0, !dbg !297
  br i1 %73, label %74, label %79, !dbg !298

; <label>:74:                                     ; preds = %70
  %75 = load i8*, i8** %2, align 8, !dbg !299
  %76 = call i32 (i8*, i8*, ...) @execlp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* %75, i8* null) #6, !dbg !301
  %77 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0)) #6, !dbg !302
  %78 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0)) #6, !dbg !303
  call void (i8*, ...) @ohshite(i8* %77, i8* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)) #7, !dbg !304
  unreachable, !dbg !306

; <label>:79:                                     ; preds = %70
  %80 = load i8*, i8** %2, align 8, !dbg !307
  call void (i32, i8*, ...) @debug(i32 8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.path_remove_tree, i32 0, i32 0), i8* %80), !dbg !308
  %81 = load i32, i32* %3, align 4, !dbg !309
  %82 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0)) #6, !dbg !310
  %83 = call i32 @subproc_reap(i32 %81, i8* %82, i32 0), !dbg !311
  br label %84, !dbg !313

; <label>:84:                                     ; preds = %79, %56, %42, %37, %28, %19
  ret void, !dbg !314
}

declare i8* @path_skip_slash_dotslash(i8*) #3

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #5

; Function Attrs: nounwind
declare i32 @access(i8*, i32) #2

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #5

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #2

declare i32 @subproc_fork() #3

; Function Attrs: nounwind
declare i32 @execlp(i8*, i8*, ...) #2

declare i32 @subproc_reap(i32, i8*, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19)
!1 = !DIFile(filename: "[inter]lib--dpkg--path-remove.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "debugflags", file: !4, line: 41, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/debug.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!6 = !DIEnumerator(name: "dbg_general", value: 1)
!7 = !DIEnumerator(name: "dbg_scripts", value: 2)
!8 = !DIEnumerator(name: "dbg_eachfile", value: 8)
!9 = !DIEnumerator(name: "dbg_eachfiledetail", value: 64)
!10 = !DIEnumerator(name: "dbg_conff", value: 16)
!11 = !DIEnumerator(name: "dbg_conffdetail", value: 128)
!12 = !DIEnumerator(name: "dbg_depcon", value: 32)
!13 = !DIEnumerator(name: "dbg_depcondetail", value: 256)
!14 = !DIEnumerator(name: "dbg_veryverbose", value: 512)
!15 = !DIEnumerator(name: "dbg_stupidlyverbose", value: 1024)
!16 = !DIEnumerator(name: "dbg_triggers", value: 4096)
!17 = !DIEnumerator(name: "dbg_triggersdetail", value: 8192)
!18 = !DIEnumerator(name: "dbg_triggersstupid", value: 16384)
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!21 = !{i32 2, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!24 = distinct !DISubprogram(name: "secure_unlink_statted", scope: !25, file: !25, line: 38, type: !26, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!25 = !DIFile(filename: "path-remove.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !29, !32}
!28 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !35, line: 46, size: 1152, align: 64, elements: !36)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!36 = !{!37, !41, !43, !45, !48, !50, !52, !53, !54, !57, !59, !61, !69, !70, !71}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !34, file: !35, line: 48, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !39, line: 124, baseType: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!40 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !34, file: !35, line: 53, baseType: !42, size: 64, align: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !39, line: 127, baseType: !40)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !34, file: !35, line: 61, baseType: !44, size: 64, align: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !39, line: 130, baseType: !40)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !34, file: !35, line: 62, baseType: !46, size: 32, align: 32, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !39, line: 129, baseType: !47)
!47 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !34, file: !35, line: 64, baseType: !49, size: 32, align: 32, offset: 224)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !39, line: 125, baseType: !47)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !34, file: !35, line: 65, baseType: !51, size: 32, align: 32, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !39, line: 126, baseType: !47)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !34, file: !35, line: 67, baseType: !28, size: 32, align: 32, offset: 288)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !34, file: !35, line: 69, baseType: !38, size: 64, align: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !34, file: !35, line: 74, baseType: !55, size: 64, align: 64, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !39, line: 131, baseType: !56)
!56 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !34, file: !35, line: 78, baseType: !58, size: 64, align: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !39, line: 153, baseType: !56)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !34, file: !35, line: 80, baseType: !60, size: 64, align: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !39, line: 158, baseType: !56)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !34, file: !35, line: 91, baseType: !62, size: 128, align: 64, offset: 576)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !63, line: 120, size: 128, align: 64, elements: !64)
!63 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!64 = !{!65, !67}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !62, file: !63, line: 122, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !39, line: 139, baseType: !56)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !62, file: !63, line: 123, baseType: !68, size: 64, align: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !39, line: 175, baseType: !56)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !34, file: !35, line: 92, baseType: !62, size: 128, align: 64, offset: 704)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !34, file: !35, line: 93, baseType: !62, size: 128, align: 64, offset: 832)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !34, file: !35, line: 106, baseType: !72, size: 192, align: 64, offset: 960)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 192, align: 64, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 3)
!75 = !{}
!76 = !DILocalVariable(name: "pathname", arg: 1, scope: !24, file: !25, line: 38, type: !29)
!77 = !DIExpression()
!78 = !DILocation(line: 38, column: 35, scope: !24)
!79 = !DILocalVariable(name: "stab", arg: 2, scope: !24, file: !25, line: 38, type: !32)
!80 = !DILocation(line: 38, column: 64, scope: !24)
!81 = !DILocation(line: 40, column: 5, scope: !82)
!82 = distinct !DILexicalBlock(scope: !24, file: !25, line: 40, column: 5)
!83 = !DILocation(line: 40, column: 11, scope: !82)
!84 = !DILocation(line: 40, column: 8, scope: !82)
!85 = !DILocation(line: 40, column: 19, scope: !82)
!86 = !DILocation(line: 40, column: 5, scope: !24)
!87 = !DILocation(line: 40, column: 31, scope: !88)
!88 = !DILexicalBlockFile(scope: !82, file: !25, discriminator: 1)
!89 = !DILocation(line: 40, column: 37, scope: !88)
!90 = !DILocation(line: 40, column: 45, scope: !88)
!91 = !DILocation(line: 40, column: 5, scope: !88)
!92 = !DILocation(line: 41, column: 7, scope: !82)
!93 = !DILocation(line: 41, column: 13, scope: !82)
!94 = !DILocation(line: 41, column: 10, scope: !82)
!95 = !DILocation(line: 41, column: 21, scope: !82)
!96 = !DILocation(line: 41, column: 30, scope: !82)
!97 = !DILocation(line: 41, column: 33, scope: !88)
!98 = !DILocation(line: 41, column: 39, scope: !88)
!99 = !DILocation(line: 41, column: 36, scope: !88)
!100 = !DILocation(line: 41, column: 47, scope: !88)
!101 = !DILocation(line: 41, column: 56, scope: !88)
!102 = !DILocation(line: 42, column: 7, scope: !82)
!103 = !DILocation(line: 42, column: 13, scope: !82)
!104 = !DILocation(line: 42, column: 10, scope: !82)
!105 = !DILocation(line: 42, column: 21, scope: !82)
!106 = !DILocation(line: 42, column: 31, scope: !82)
!107 = !DILocation(line: 42, column: 34, scope: !88)
!108 = !DILocation(line: 42, column: 40, scope: !88)
!109 = !DILocation(line: 42, column: 37, scope: !88)
!110 = !DILocation(line: 42, column: 48, scope: !88)
!111 = !DILocation(line: 42, column: 31, scope: !88)
!112 = !DILocation(line: 41, column: 6, scope: !113)
!113 = !DILexicalBlockFile(scope: !82, file: !25, discriminator: 2)
!114 = !DILocation(line: 40, column: 5, scope: !115)
!115 = !DILexicalBlockFile(scope: !24, file: !25, discriminator: 2)
!116 = !DILocation(line: 43, column: 13, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !25, line: 43, column: 7)
!118 = distinct !DILexicalBlock(scope: !82, file: !25, line: 42, column: 60)
!119 = !DILocation(line: 43, column: 7, scope: !117)
!120 = !DILocation(line: 43, column: 7, scope: !118)
!121 = !DILocation(line: 44, column: 4, scope: !117)
!122 = !DILocation(line: 45, column: 2, scope: !118)
!123 = !DILocation(line: 47, column: 13, scope: !124)
!124 = distinct !DILexicalBlock(scope: !24, file: !25, line: 47, column: 6)
!125 = !DILocation(line: 47, column: 6, scope: !124)
!126 = !DILocation(line: 47, column: 6, scope: !24)
!127 = !DILocation(line: 48, column: 3, scope: !124)
!128 = !DILocation(line: 50, column: 2, scope: !24)
!129 = !DILocation(line: 51, column: 1, scope: !24)
!130 = distinct !DISubprogram(name: "secure_unlink", scope: !25, file: !25, line: 65, type: !131, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!131 = !DISubroutineType(types: !132)
!132 = !{!28, !29}
!133 = !DILocalVariable(name: "pathname", arg: 1, scope: !130, file: !25, line: 65, type: !29)
!134 = !DILocation(line: 65, column: 27, scope: !130)
!135 = !DILocalVariable(name: "stab", scope: !130, file: !25, line: 67, type: !34)
!136 = !DILocation(line: 67, column: 14, scope: !130)
!137 = !DILocation(line: 69, column: 12, scope: !138)
!138 = distinct !DILexicalBlock(scope: !130, file: !25, line: 69, column: 6)
!139 = !DILocation(line: 69, column: 6, scope: !138)
!140 = !DILocation(line: 69, column: 6, scope: !130)
!141 = !DILocation(line: 70, column: 3, scope: !138)
!142 = !DILocation(line: 72, column: 31, scope: !130)
!143 = !DILocation(line: 72, column: 9, scope: !130)
!144 = !DILocation(line: 72, column: 2, scope: !130)
!145 = !DILocation(line: 73, column: 1, scope: !130)
!146 = distinct !DISubprogram(name: "secure_remove", scope: !25, file: !25, line: 85, type: !131, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!147 = !DILocalVariable(name: "pathname", arg: 1, scope: !146, file: !25, line: 85, type: !29)
!148 = !DILocation(line: 85, column: 27, scope: !146)
!149 = !DILocalVariable(name: "rc", scope: !146, file: !25, line: 87, type: !28)
!150 = !DILocation(line: 87, column: 6, scope: !146)
!151 = !DILocalVariable(name: "e", scope: !146, file: !25, line: 87, type: !28)
!152 = !DILocation(line: 87, column: 10, scope: !146)
!153 = !DILocation(line: 89, column: 13, scope: !154)
!154 = distinct !DILexicalBlock(scope: !146, file: !25, line: 89, column: 6)
!155 = !DILocation(line: 89, column: 7, scope: !154)
!156 = !DILocation(line: 89, column: 6, scope: !146)
!157 = !DILocation(line: 91, column: 9, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !25, line: 89, column: 24)
!159 = !DILocation(line: 90, column: 3, scope: !158)
!160 = !DILocation(line: 92, column: 3, scope: !158)
!161 = !DILocation(line: 95, column: 7, scope: !162)
!162 = distinct !DILexicalBlock(scope: !146, file: !25, line: 95, column: 5)
!163 = !DILocation(line: 95, column: 6, scope: !162)
!164 = !DILocation(line: 95, column: 11, scope: !162)
!165 = !DILocation(line: 95, column: 5, scope: !146)
!166 = !DILocation(line: 96, column: 8, scope: !167)
!167 = distinct !DILexicalBlock(scope: !162, file: !25, line: 95, column: 23)
!168 = !DILocation(line: 96, column: 7, scope: !167)
!169 = !DILocation(line: 96, column: 5, scope: !167)
!170 = !DILocation(line: 98, column: 9, scope: !167)
!171 = !DILocation(line: 98, column: 28, scope: !167)
!172 = !DILocation(line: 98, column: 19, scope: !167)
!173 = !DILocation(line: 97, column: 3, scope: !167)
!174 = !DILocation(line: 99, column: 10, scope: !167)
!175 = !DILocation(line: 99, column: 4, scope: !167)
!176 = !DILocation(line: 99, column: 8, scope: !167)
!177 = !DILocation(line: 100, column: 3, scope: !167)
!178 = !DILocation(line: 103, column: 21, scope: !146)
!179 = !DILocation(line: 103, column: 7, scope: !146)
!180 = !DILocation(line: 103, column: 5, scope: !146)
!181 = !DILocation(line: 104, column: 7, scope: !146)
!182 = !DILocation(line: 104, column: 6, scope: !146)
!183 = !DILocation(line: 104, column: 4, scope: !146)
!184 = !DILocation(line: 106, column: 8, scope: !146)
!185 = !DILocation(line: 106, column: 18, scope: !146)
!186 = !DILocation(line: 106, column: 32, scope: !187)
!187 = !DILexicalBlockFile(scope: !146, file: !25, discriminator: 1)
!188 = !DILocation(line: 106, column: 23, scope: !187)
!189 = !DILocation(line: 106, column: 18, scope: !187)
!190 = !DILocation(line: 106, column: 18, scope: !191)
!191 = !DILexicalBlockFile(scope: !146, file: !25, discriminator: 2)
!192 = !DILocation(line: 106, column: 18, scope: !193)
!193 = !DILexicalBlockFile(scope: !146, file: !25, discriminator: 3)
!194 = !DILocation(line: 105, column: 2, scope: !146)
!195 = !DILocation(line: 107, column: 9, scope: !146)
!196 = !DILocation(line: 107, column: 3, scope: !146)
!197 = !DILocation(line: 107, column: 7, scope: !146)
!198 = !DILocation(line: 109, column: 9, scope: !146)
!199 = !DILocation(line: 109, column: 2, scope: !146)
!200 = !DILocation(line: 110, column: 1, scope: !146)
!201 = distinct !DISubprogram(name: "path_remove_tree", scope: !25, file: !25, line: 118, type: !202, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !29}
!204 = !DILocalVariable(name: "pathname", arg: 1, scope: !201, file: !25, line: 118, type: !29)
!205 = !DILocation(line: 118, column: 30, scope: !201)
!206 = !DILocalVariable(name: "pid", scope: !201, file: !25, line: 120, type: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !208, line: 263, baseType: !209)
!208 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !39, line: 133, baseType: !28)
!210 = !DILocation(line: 120, column: 8, scope: !201)
!211 = !DILocalVariable(name: "u", scope: !201, file: !25, line: 121, type: !29)
!212 = !DILocation(line: 121, column: 14, scope: !201)
!213 = !DILocation(line: 123, column: 31, scope: !201)
!214 = !DILocation(line: 123, column: 6, scope: !201)
!215 = !DILocation(line: 123, column: 4, scope: !201)
!216 = !DILocation(line: 124, column: 6, scope: !217)
!217 = distinct !DILexicalBlock(scope: !201, file: !25, line: 124, column: 6)
!218 = !DILocation(line: 124, column: 11, scope: !217)
!219 = !DILocation(line: 124, column: 6, scope: !201)
!220 = !DILocation(line: 125, column: 84, scope: !217)
!221 = !DILocation(line: 125, column: 3, scope: !217)
!222 = !DILocation(line: 127, column: 43, scope: !201)
!223 = !DILocation(line: 127, column: 2, scope: !201)
!224 = !DILocation(line: 128, column: 13, scope: !225)
!225 = distinct !DILexicalBlock(scope: !201, file: !25, line: 128, column: 6)
!226 = !DILocation(line: 128, column: 7, scope: !225)
!227 = !DILocation(line: 128, column: 6, scope: !201)
!228 = !DILocation(line: 129, column: 3, scope: !225)
!229 = !DILocation(line: 130, column: 7, scope: !230)
!230 = distinct !DILexicalBlock(scope: !201, file: !25, line: 130, column: 5)
!231 = !DILocation(line: 130, column: 6, scope: !230)
!232 = !DILocation(line: 130, column: 11, scope: !230)
!233 = !DILocation(line: 130, column: 21, scope: !230)
!234 = !DILocation(line: 130, column: 26, scope: !235)
!235 = !DILexicalBlockFile(scope: !230, file: !25, discriminator: 1)
!236 = !DILocation(line: 130, column: 25, scope: !235)
!237 = !DILocation(line: 130, column: 30, scope: !235)
!238 = !DILocation(line: 130, column: 5, scope: !235)
!239 = !DILocation(line: 131, column: 3, scope: !230)
!240 = !DILocation(line: 132, column: 7, scope: !241)
!241 = distinct !DILexicalBlock(scope: !201, file: !25, line: 132, column: 5)
!242 = !DILocation(line: 132, column: 6, scope: !241)
!243 = !DILocation(line: 132, column: 11, scope: !241)
!244 = !DILocation(line: 132, column: 5, scope: !201)
!245 = !DILocation(line: 135, column: 21, scope: !246)
!246 = distinct !DILexicalBlock(scope: !247, file: !25, line: 135, column: 7)
!247 = distinct !DILexicalBlock(scope: !241, file: !25, line: 132, column: 23)
!248 = !DILocation(line: 135, column: 7, scope: !246)
!249 = !DILocation(line: 135, column: 31, scope: !246)
!250 = !DILocation(line: 135, column: 7, scope: !247)
!251 = !DILocation(line: 136, column: 4, scope: !246)
!252 = !DILocation(line: 137, column: 8, scope: !253)
!253 = distinct !DILexicalBlock(scope: !247, file: !25, line: 137, column: 6)
!254 = !DILocation(line: 137, column: 7, scope: !253)
!255 = !DILocation(line: 137, column: 12, scope: !253)
!256 = !DILocation(line: 137, column: 6, scope: !247)
!257 = !DILocation(line: 138, column: 4, scope: !253)
!258 = !DILocation(line: 139, column: 2, scope: !247)
!259 = !DILocation(line: 142, column: 7, scope: !260)
!260 = distinct !DILexicalBlock(scope: !201, file: !25, line: 142, column: 5)
!261 = !DILocation(line: 142, column: 6, scope: !260)
!262 = !DILocation(line: 142, column: 11, scope: !260)
!263 = !DILocation(line: 142, column: 5, scope: !201)
!264 = !DILocation(line: 143, column: 14, scope: !265)
!265 = distinct !DILexicalBlock(scope: !266, file: !25, line: 143, column: 7)
!266 = distinct !DILexicalBlock(scope: !260, file: !25, line: 142, column: 21)
!267 = !DILocation(line: 143, column: 7, scope: !265)
!268 = !DILocation(line: 143, column: 29, scope: !265)
!269 = !DILocation(line: 143, column: 33, scope: !265)
!270 = !DILocation(line: 143, column: 38, scope: !271)
!271 = !DILexicalBlockFile(scope: !265, file: !25, discriminator: 1)
!272 = !DILocation(line: 143, column: 37, scope: !271)
!273 = !DILocation(line: 143, column: 42, scope: !271)
!274 = !DILocation(line: 143, column: 7, scope: !271)
!275 = !DILocation(line: 144, column: 4, scope: !265)
!276 = !DILocation(line: 145, column: 4, scope: !266)
!277 = !DILocation(line: 145, column: 8, scope: !266)
!278 = !DILocation(line: 146, column: 2, scope: !266)
!279 = !DILocation(line: 147, column: 7, scope: !280)
!280 = distinct !DILexicalBlock(scope: !201, file: !25, line: 147, column: 5)
!281 = !DILocation(line: 147, column: 6, scope: !280)
!282 = !DILocation(line: 147, column: 11, scope: !280)
!283 = !DILocation(line: 147, column: 24, scope: !280)
!284 = !DILocation(line: 147, column: 29, scope: !285)
!285 = !DILexicalBlockFile(scope: !280, file: !25, discriminator: 1)
!286 = !DILocation(line: 147, column: 28, scope: !285)
!287 = !DILocation(line: 147, column: 33, scope: !285)
!288 = !DILocation(line: 147, column: 5, scope: !285)
!289 = !DILocation(line: 148, column: 10, scope: !280)
!290 = !DILocation(line: 148, column: 51, scope: !280)
!291 = !DILocation(line: 148, column: 3, scope: !285)
!292 = !DILocation(line: 148, column: 3, scope: !280)
!293 = !DILocation(line: 150, column: 8, scope: !201)
!294 = !DILocation(line: 150, column: 6, scope: !201)
!295 = !DILocation(line: 151, column: 6, scope: !296)
!296 = distinct !DILexicalBlock(scope: !201, file: !25, line: 151, column: 6)
!297 = !DILocation(line: 151, column: 10, scope: !296)
!298 = !DILocation(line: 151, column: 6, scope: !201)
!299 = !DILocation(line: 152, column: 35, scope: !300)
!300 = distinct !DILexicalBlock(scope: !296, file: !25, line: 151, column: 16)
!301 = !DILocation(line: 152, column: 3, scope: !300)
!302 = !DILocation(line: 153, column: 10, scope: !300)
!303 = !DILocation(line: 154, column: 10, scope: !300)
!304 = !DILocation(line: 153, column: 3, scope: !305)
!305 = !DILexicalBlockFile(scope: !300, file: !25, discriminator: 1)
!306 = !DILocation(line: 153, column: 3, scope: !300)
!307 = !DILocation(line: 156, column: 58, scope: !201)
!308 = !DILocation(line: 156, column: 2, scope: !201)
!309 = !DILocation(line: 157, column: 15, scope: !201)
!310 = !DILocation(line: 157, column: 19, scope: !201)
!311 = !DILocation(line: 157, column: 2, scope: !312)
!312 = !DILexicalBlockFile(scope: !201, file: !25, discriminator: 1)
!313 = !DILocation(line: 158, column: 1, scope: !201)
!314 = !DILocation(line: 158, column: 1, scope: !312)
