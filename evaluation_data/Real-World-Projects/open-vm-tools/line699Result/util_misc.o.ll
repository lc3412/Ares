; ModuleID = './util_misc.o.i'
source_filename = "./util_misc.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.in_addr = type { i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }

@gHomeDirOverride = global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"%s: Filename \22%s\22 has too many chunks.\0A\00", align 1
@__FUNCTION__.Util_ExpandString = private unnamed_addr constant [18 x i8] c"Util_ExpandString\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"PID\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Environment variable '%s' not defined in '%s'.\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"%s: Cannot allocate memory to expand \22%s\22 in \22%s\22.\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"%s: Cannot allocate memory for the expansion of \22%s\22.\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"%46[^%]\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Could not expand environment variable HOME.\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Could not get passwd for user '%s'.\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"Could not get home directory for user.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i8* @Util_GetCanonicalPath(i8*) #0 !dbg !13 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !18, metadata !19), !dbg !20
  call void @llvm.dbg.declare(metadata i8** %3, metadata !21, metadata !19), !dbg !22
  store i8* null, i8** %3, align 8, !dbg !22
  %4 = load i8*, i8** %2, align 8, !dbg !23
  %5 = call i8* @Posix_RealPath(i8* %4), !dbg !24
  store i8* %5, i8** %3, align 8, !dbg !25
  %6 = load i8*, i8** %3, align 8, !dbg !26
  ret i8* %6, !dbg !27
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @Posix_RealPath(i8*) #2

; Function Attrs: nounwind uwtable
define signext i8 @Util_CanonicalPathsIdentical(i8*, i8*) #0 !dbg !28 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !33, metadata !19), !dbg !34
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !35, metadata !19), !dbg !36
  %5 = load i8*, i8** %3, align 8, !dbg !37
  %6 = load i8*, i8** %4, align 8, !dbg !38
  %7 = call i32 @strcmp(i8* %5, i8* %6) #6, !dbg !39
  %8 = icmp eq i32 %7, 0, !dbg !40
  %9 = zext i1 %8 to i32, !dbg !40
  %10 = trunc i32 %9 to i8, !dbg !41
  ret i8 %10, !dbg !42
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define signext i8 @Util_IsAbsolutePath(i8*) #0 !dbg !43 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !46, metadata !19), !dbg !47
  %3 = load i8*, i8** %2, align 8, !dbg !48
  %4 = icmp ne i8* %3, null, !dbg !48
  br i1 %4, label %5, label %11, !dbg !49

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !50
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !50
  %8 = load i8, i8* %7, align 1, !dbg !50
  %9 = sext i8 %8 to i32, !dbg !50
  %10 = icmp eq i32 %9, 47, !dbg !52
  br label %11

; <label>:11:                                     ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  %13 = zext i1 %12 to i32, !dbg !53
  %14 = trunc i32 %13 to i8, !dbg !55
  ret i8 %14, !dbg !56
}

; Function Attrs: nounwind uwtable
define i8* @Util_ExpandString(i8*) #0 !dbg !57 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [100 x i8*], align 16
  %8 = alloca [100 x i32], align 16
  %9 = alloca [100 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  %17 = alloca [100 x i8], align 16
  %18 = alloca %struct.passwd*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !58, metadata !19), !dbg !59
  call void @llvm.dbg.declare(metadata i8** %4, metadata !60, metadata !19), !dbg !61
  store i8* null, i8** %4, align 8, !dbg !61
  call void @llvm.dbg.declare(metadata i8** %5, metadata !62, metadata !19), !dbg !63
  store i8* null, i8** %5, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %6, metadata !64, metadata !19), !dbg !66
  store i32 0, i32* %6, align 4, !dbg !66
  call void @llvm.dbg.declare(metadata [100 x i8*]* %7, metadata !67, metadata !19), !dbg !71
  call void @llvm.dbg.declare(metadata [100 x i32]* %8, metadata !72, metadata !19), !dbg !74
  call void @llvm.dbg.declare(metadata [100 x i8]* %9, metadata !75, metadata !19), !dbg !77
  call void @llvm.dbg.declare(metadata i8** %10, metadata !78, metadata !19), !dbg !79
  call void @llvm.dbg.declare(metadata i32* %11, metadata !80, metadata !19), !dbg !81
  %20 = load i8*, i8** %3, align 8, !dbg !82
  %21 = call i8* @Unicode_Duplicate(i8* %20), !dbg !83
  store i8* %21, i8** %4, align 8, !dbg !84
  %22 = load i8*, i8** %3, align 8, !dbg !85
  %23 = load i8, i8* %22, align 1, !dbg !87
  %24 = sext i8 %23 to i32, !dbg !87
  %25 = icmp ne i32 %24, 126, !dbg !88
  br i1 %25, label %26, label %32, !dbg !89

; <label>:26:                                     ; preds = %1
  %27 = load i8*, i8** %3, align 8, !dbg !90
  %28 = call i8* @strchr(i8* %27, i32 36) #6, !dbg !92
  %29 = icmp eq i8* %28, null, !dbg !93
  br i1 %29, label %30, label %32, !dbg !94

; <label>:30:                                     ; preds = %26
  %31 = load i8*, i8** %4, align 8, !dbg !95
  store i8* %31, i8** %2, align 8, !dbg !97
  br label %339, !dbg !97

; <label>:32:                                     ; preds = %26, %1
  store i32 0, i32* %6, align 4, !dbg !98
  %33 = load i8*, i8** %4, align 8, !dbg !99
  store i8* %33, i8** %10, align 8, !dbg !101
  br label %34, !dbg !102

; <label>:34:                                     ; preds = %90, %32
  %35 = load i8*, i8** %10, align 8, !dbg !103
  %36 = load i8, i8* %35, align 1, !dbg !106
  %37 = icmp ne i8 %36, 0, !dbg !107
  br i1 %37, label %38, label %108, !dbg !107

; <label>:38:                                     ; preds = %34
  call void @llvm.dbg.declare(metadata i64* %12, metadata !108, metadata !19), !dbg !113
  %39 = load i8*, i8** %10, align 8, !dbg !114
  %40 = load i8, i8* %39, align 1, !dbg !116
  %41 = sext i8 %40 to i32, !dbg !116
  %42 = icmp eq i32 %41, 36, !dbg !117
  br i1 %42, label %43, label %69, !dbg !118

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata i8** %13, metadata !119, metadata !19), !dbg !121
  %44 = load i8*, i8** %10, align 8, !dbg !122
  %45 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !124
  store i8* %45, i8** %13, align 8, !dbg !125
  br label %46, !dbg !126

; <label>:46:                                     ; preds = %60, %43
  %47 = load i8*, i8** %13, align 8, !dbg !127
  %48 = load i8, i8* %47, align 1, !dbg !130
  %49 = call signext i8 @UtilIsAlphaOrNum(i8 signext %48), !dbg !131
  %50 = sext i8 %49 to i32, !dbg !131
  %51 = icmp ne i32 %50, 0, !dbg !131
  br i1 %51, label %57, label %52, !dbg !132

; <label>:52:                                     ; preds = %46
  %53 = load i8*, i8** %13, align 8, !dbg !133
  %54 = load i8, i8* %53, align 1, !dbg !135
  %55 = sext i8 %54 to i32, !dbg !135
  %56 = icmp eq i32 %55, 95, !dbg !136
  br label %57, !dbg !137

; <label>:57:                                     ; preds = %52, %46
  %58 = phi i1 [ true, %46 ], [ %56, %52 ]
  br i1 %58, label %59, label %63, !dbg !138

; <label>:59:                                     ; preds = %57
  br label %60, !dbg !140

; <label>:60:                                     ; preds = %59
  %61 = load i8*, i8** %13, align 8, !dbg !142
  %62 = getelementptr inbounds i8, i8* %61, i32 1, !dbg !142
  store i8* %62, i8** %13, align 8, !dbg !142
  br label %46, !dbg !144, !llvm.loop !145

; <label>:63:                                     ; preds = %57
  %64 = load i8*, i8** %13, align 8, !dbg !147
  %65 = load i8*, i8** %10, align 8, !dbg !148
  %66 = ptrtoint i8* %64 to i64, !dbg !149
  %67 = ptrtoint i8* %65 to i64, !dbg !149
  %68 = sub i64 %66, %67, !dbg !149
  store i64 %68, i64* %12, align 8, !dbg !150
  br label %85, !dbg !151

; <label>:69:                                     ; preds = %38
  %70 = load i8*, i8** %10, align 8, !dbg !152
  %71 = load i8*, i8** %4, align 8, !dbg !155
  %72 = icmp eq i8* %70, %71, !dbg !156
  br i1 %72, label %73, label %81, !dbg !157

; <label>:73:                                     ; preds = %69
  %74 = load i8*, i8** %10, align 8, !dbg !158
  %75 = load i8, i8* %74, align 1, !dbg !160
  %76 = sext i8 %75 to i32, !dbg !160
  %77 = icmp eq i32 %76, 126, !dbg !161
  br i1 %77, label %78, label %81, !dbg !162

; <label>:78:                                     ; preds = %73
  %79 = load i8*, i8** %10, align 8, !dbg !163
  %80 = call i64 @strcspn(i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #6, !dbg !165
  store i64 %80, i64* %12, align 8, !dbg !166
  br label %84, !dbg !167

; <label>:81:                                     ; preds = %73, %69
  %82 = load i8*, i8** %10, align 8, !dbg !168
  %83 = call i64 @strcspn(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #6, !dbg !170
  store i64 %83, i64* %12, align 8, !dbg !171
  br label %84

; <label>:84:                                     ; preds = %81, %78
  br label %85

; <label>:85:                                     ; preds = %84, %63
  %86 = load i32, i32* %6, align 4, !dbg !172
  %87 = icmp sge i32 %86, 100, !dbg !174
  br i1 %87, label %88, label %90, !dbg !175

; <label>:88:                                     ; preds = %85
  %89 = load i8*, i8** %3, align 8, !dbg !176
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.Util_ExpandString, i32 0, i32 0), i8* %89), !dbg !178
  br label %316, !dbg !179

; <label>:90:                                     ; preds = %85
  %91 = load i8*, i8** %10, align 8, !dbg !180
  %92 = load i32, i32* %6, align 4, !dbg !181
  %93 = sext i32 %92 to i64, !dbg !182
  %94 = getelementptr inbounds [100 x i8*], [100 x i8*]* %7, i64 0, i64 %93, !dbg !182
  store i8* %91, i8** %94, align 8, !dbg !183
  %95 = load i64, i64* %12, align 8, !dbg !184
  %96 = trunc i64 %95 to i32, !dbg !184
  %97 = load i32, i32* %6, align 4, !dbg !185
  %98 = sext i32 %97 to i64, !dbg !186
  %99 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %98, !dbg !186
  store i32 %96, i32* %99, align 4, !dbg !187
  %100 = load i32, i32* %6, align 4, !dbg !188
  %101 = sext i32 %100 to i64, !dbg !189
  %102 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 %101, !dbg !189
  store i8 0, i8* %102, align 1, !dbg !190
  %103 = load i32, i32* %6, align 4, !dbg !191
  %104 = add nsw i32 %103, 1, !dbg !191
  store i32 %104, i32* %6, align 4, !dbg !191
  %105 = load i64, i64* %12, align 8, !dbg !192
  %106 = load i8*, i8** %10, align 8, !dbg !193
  %107 = getelementptr inbounds i8, i8* %106, i64 %105, !dbg !193
  store i8* %107, i8** %10, align 8, !dbg !193
  br label %34, !dbg !194, !llvm.loop !196

; <label>:108:                                    ; preds = %34
  %109 = getelementptr inbounds [100 x i8*], [100 x i8*]* %7, i64 0, i64 0, !dbg !198
  %110 = load i8*, i8** %109, align 16, !dbg !198
  %111 = getelementptr inbounds i8, i8* %110, i64 0, !dbg !198
  %112 = load i8, i8* %111, align 1, !dbg !198
  %113 = sext i8 %112 to i32, !dbg !198
  %114 = icmp eq i32 %113, 126, !dbg !200
  br i1 %114, label %115, label %153, !dbg !201

; <label>:115:                                    ; preds = %108
  call void @llvm.dbg.declare(metadata i8* %14, metadata !202, metadata !19), !dbg !204
  %116 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 0, !dbg !205
  %117 = load i32, i32* %116, align 16, !dbg !205
  %118 = sext i32 %117 to i64, !dbg !206
  %119 = getelementptr inbounds [100 x i8*], [100 x i8*]* %7, i64 0, i64 0, !dbg !207
  %120 = load i8*, i8** %119, align 16, !dbg !207
  store i8* %120, i8** %10, align 8, !dbg !208
  %121 = getelementptr inbounds i8, i8* %120, i64 %118, !dbg !206
  %122 = load i8, i8* %121, align 1, !dbg !206
  store i8 %122, i8* %14, align 1, !dbg !204
  %123 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 0, !dbg !209
  %124 = load i32, i32* %123, align 16, !dbg !209
  %125 = sext i32 %124 to i64, !dbg !210
  %126 = load i8*, i8** %10, align 8, !dbg !210
  %127 = getelementptr inbounds i8, i8* %126, i64 %125, !dbg !210
  store i8 0, i8* %127, align 1, !dbg !211
  %128 = getelementptr inbounds [100 x i8*], [100 x i8*]* %7, i64 0, i64 0, !dbg !212
  %129 = load i8*, i8** %128, align 16, !dbg !212
  %130 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !213
  %131 = call i8* @UtilDoTildeSubst(i8* %130), !dbg !214
  %132 = getelementptr inbounds [100 x i8*], [100 x i8*]* %7, i64 0, i64 0, !dbg !215
  store i8* %131, i8** %132, align 16, !dbg !216
  %133 = load i8, i8* %14, align 1, !dbg !217
  %134 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 0, !dbg !218
  %135 = load i32, i32* %134, align 16, !dbg !218
  %136 = sext i32 %135 to i64, !dbg !219
  %137 = load i8*, i8** %10, align 8, !dbg !219
  %138 = getelementptr inbounds i8, i8* %137, i64 %136, !dbg !219
  store i8 %133, i8* %138, align 1, !dbg !220
  %139 = getelementptr inbounds [100 x i8*], [100 x i8*]* %7, i64 0, i64 0, !dbg !221
  %140 = load i8*, i8** %139, align 16, !dbg !221
  %141 = icmp eq i8* %140, null, !dbg !223
  br i1 %141, label %142, label %145, !dbg !224

; <label>:142:                                    ; preds = %115
  %143 = load i8*, i8** %10, align 8, !dbg !225
  %144 = getelementptr inbounds [100 x i8*], [100 x i8*]* %7, i64 0, i64 0, !dbg !227
  store i8* %143, i8** %144, align 16, !dbg !228
  br label %152, !dbg !229

; <label>:145:                                    ; preds = %115
  %146 = getelementptr inbounds [100 x i8*], [100 x i8*]* %7, i64 0, i64 0, !dbg !230
  %147 = load i8*, i8** %146, align 16, !dbg !230
  %148 = call i64 @strlen(i8* %147) #6, !dbg !232
  %149 = trunc i64 %148 to i32, !dbg !232
  %150 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 0, !dbg !233
  store i32 %149, i32* %150, align 16, !dbg !234
  %151 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !235
  store i8 1, i8* %151, align 16, !dbg !236
  br label %152

; <label>:152:                                    ; preds = %145, %142
  br label %153, !dbg !237

; <label>:153:                                    ; preds = %152, %108
  store i32 0, i32* %11, align 4, !dbg !238
  br label %154, !dbg !240

; <label>:154:                                    ; preds = %261, %153
  %155 = load i32, i32* %11, align 4, !dbg !241
  %156 = load i32, i32* %6, align 4, !dbg !244
  %157 = icmp slt i32 %155, %156, !dbg !245
  br i1 %157, label %158, label %264, !dbg !246

; <label>:158:                                    ; preds = %154
  call void @llvm.dbg.declare(metadata i8* %15, metadata !247, metadata !19), !dbg !249
  call void @llvm.dbg.declare(metadata i8** %16, metadata !250, metadata !19), !dbg !251
  store i8* null, i8** %16, align 8, !dbg !251
  call void @llvm.dbg.declare(metadata [100 x i8]* %17, metadata !252, metadata !19), !dbg !254
  %159 = load i32, i32* %11, align 4, !dbg !255
  %160 = sext i32 %159 to i64, !dbg !256
  %161 = getelementptr inbounds [100 x i8*], [100 x i8*]* %7, i64 0, i64 %160, !dbg !256
  %162 = load i8*, i8** %161, align 8, !dbg !256
  store i8* %162, i8** %10, align 8, !dbg !257
  %163 = load i8*, i8** %10, align 8, !dbg !258
  %164 = load i8, i8* %163, align 1, !dbg !260
  %165 = sext i8 %164 to i32, !dbg !260
  %166 = icmp ne i32 %165, 36, !dbg !261
  br i1 %166, label %173, label %167, !dbg !262

; <label>:167:                                    ; preds = %158
  %168 = load i32, i32* %11, align 4, !dbg !263
  %169 = sext i32 %168 to i64, !dbg !265
  %170 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %169, !dbg !265
  %171 = load i32, i32* %170, align 4, !dbg !265
  %172 = icmp eq i32 %171, 1, !dbg !266
  br i1 %172, label %173, label %174, !dbg !267

; <label>:173:                                    ; preds = %167, %158
  br label %261, !dbg !268

; <label>:174:                                    ; preds = %167
  %175 = load i32, i32* %11, align 4, !dbg !270
  %176 = sext i32 %175 to i64, !dbg !271
  %177 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %176, !dbg !271
  %178 = load i32, i32* %177, align 4, !dbg !271
  %179 = sext i32 %178 to i64, !dbg !272
  %180 = load i8*, i8** %10, align 8, !dbg !272
  %181 = getelementptr inbounds i8, i8* %180, i64 %179, !dbg !272
  %182 = load i8, i8* %181, align 1, !dbg !272
  store i8 %182, i8* %15, align 1, !dbg !273
  %183 = load i32, i32* %11, align 4, !dbg !274
  %184 = sext i32 %183 to i64, !dbg !275
  %185 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %184, !dbg !275
  %186 = load i32, i32* %185, align 4, !dbg !275
  %187 = sext i32 %186 to i64, !dbg !276
  %188 = load i8*, i8** %10, align 8, !dbg !276
  %189 = getelementptr inbounds i8, i8* %188, i64 %187, !dbg !276
  store i8 0, i8* %189, align 1, !dbg !277
  %190 = load i8*, i8** %10, align 8, !dbg !278
  %191 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !279
  %192 = call i8* @Posix_Getenv(i8* %191), !dbg !280
  %193 = call i8* @Unicode_Duplicate(i8* %192), !dbg !281
  store i8* %193, i8** %16, align 8, !dbg !283
  %194 = load i8*, i8** %16, align 8, !dbg !284
  %195 = icmp ne i8* %194, null, !dbg !286
  br i1 %195, label %196, label %197, !dbg !287

; <label>:196:                                    ; preds = %174
  br label %230, !dbg !288

; <label>:197:                                    ; preds = %174
  %198 = load i8*, i8** %10, align 8, !dbg !290
  %199 = getelementptr inbounds i8, i8* %198, i64 1, !dbg !293
  %200 = call i32 @strcasecmp(i8* %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #6, !dbg !294
  %201 = icmp eq i32 %200, 0, !dbg !295
  br i1 %201, label %202, label %208, !dbg !294

; <label>:202:                                    ; preds = %197
  %203 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i32 0, i32 0, !dbg !296
  %204 = call i32 @getpid() #7, !dbg !298
  %205 = call i32 (i8*, i64, i8*, ...) @Str_Snprintf(i8* %203, i64 100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 %204), !dbg !299
  %206 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i32 0, i32 0, !dbg !301
  %207 = call i8* @UtilSafeStrdup0(i8* %206), !dbg !302
  store i8* %207, i8** %16, align 8, !dbg !303
  br label %229, !dbg !304

; <label>:208:                                    ; preds = %197
  %209 = load i8*, i8** %10, align 8, !dbg !305
  %210 = getelementptr inbounds i8, i8* %209, i64 1, !dbg !308
  %211 = call i32 @strcasecmp(i8* %210, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)) #6, !dbg !309
  %212 = icmp eq i32 %211, 0, !dbg !310
  br i1 %212, label %213, label %223, !dbg !309

; <label>:213:                                    ; preds = %208
  call void @llvm.dbg.declare(metadata %struct.passwd** %18, metadata !311, metadata !19), !dbg !328
  %214 = call i32 @getuid() #7, !dbg !329
  %215 = call %struct.passwd* @Posix_Getpwuid(i32 %214), !dbg !330
  store %struct.passwd* %215, %struct.passwd** %18, align 8, !dbg !328
  %216 = load %struct.passwd*, %struct.passwd** %18, align 8, !dbg !332
  %217 = call i8* @UtilGetLoginName(%struct.passwd* %216), !dbg !333
  store i8* %217, i8** %16, align 8, !dbg !334
  call void @Posix_Endpwent(), !dbg !335
  %218 = load i8*, i8** %16, align 8, !dbg !336
  %219 = icmp eq i8* %218, null, !dbg !338
  br i1 %219, label %220, label %222, !dbg !339

; <label>:220:                                    ; preds = %213
  %221 = call i8* @Unicode_Duplicate(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)), !dbg !340
  store i8* %221, i8** %16, align 8, !dbg !342
  br label %222, !dbg !343

; <label>:222:                                    ; preds = %220, %213
  br label %228, !dbg !344

; <label>:223:                                    ; preds = %208
  %224 = load i8*, i8** %10, align 8, !dbg !345
  %225 = getelementptr inbounds i8, i8* %224, i64 1, !dbg !347
  %226 = load i8*, i8** %3, align 8, !dbg !348
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i32 0, i32 0), i8* %225, i8* %226), !dbg !349
  %227 = call i8* @Unicode_Duplicate(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0)), !dbg !350
  store i8* %227, i8** %16, align 8, !dbg !351
  br label %228

; <label>:228:                                    ; preds = %223, %222
  br label %229

; <label>:229:                                    ; preds = %228, %202
  br label %230

; <label>:230:                                    ; preds = %229, %196
  %231 = load i8, i8* %15, align 1, !dbg !352
  %232 = load i32, i32* %11, align 4, !dbg !353
  %233 = sext i32 %232 to i64, !dbg !354
  %234 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %233, !dbg !354
  %235 = load i32, i32* %234, align 4, !dbg !354
  %236 = sext i32 %235 to i64, !dbg !355
  %237 = load i8*, i8** %10, align 8, !dbg !355
  %238 = getelementptr inbounds i8, i8* %237, i64 %236, !dbg !355
  store i8 %231, i8* %238, align 1, !dbg !356
  %239 = load i8*, i8** %16, align 8, !dbg !357
  %240 = load i32, i32* %11, align 4, !dbg !358
  %241 = sext i32 %240 to i64, !dbg !359
  %242 = getelementptr inbounds [100 x i8*], [100 x i8*]* %7, i64 0, i64 %241, !dbg !359
  store i8* %239, i8** %242, align 8, !dbg !360
  %243 = load i32, i32* %11, align 4, !dbg !361
  %244 = sext i32 %243 to i64, !dbg !363
  %245 = getelementptr inbounds [100 x i8*], [100 x i8*]* %7, i64 0, i64 %244, !dbg !363
  %246 = load i8*, i8** %245, align 8, !dbg !363
  %247 = icmp eq i8* %246, null, !dbg !364
  br i1 %247, label %248, label %251, !dbg !365

; <label>:248:                                    ; preds = %230
  %249 = load i8*, i8** %16, align 8, !dbg !366
  %250 = load i8*, i8** %3, align 8, !dbg !368
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.Util_ExpandString, i32 0, i32 0), i8* %249, i8* %250), !dbg !369
  br label %316, !dbg !370

; <label>:251:                                    ; preds = %230
  %252 = load i8*, i8** %16, align 8, !dbg !371
  %253 = call i64 @strlen(i8* %252) #6, !dbg !372
  %254 = trunc i64 %253 to i32, !dbg !372
  %255 = load i32, i32* %11, align 4, !dbg !373
  %256 = sext i32 %255 to i64, !dbg !374
  %257 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %256, !dbg !374
  store i32 %254, i32* %257, align 4, !dbg !375
  %258 = load i32, i32* %11, align 4, !dbg !376
  %259 = sext i32 %258 to i64, !dbg !377
  %260 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 %259, !dbg !377
  store i8 1, i8* %260, align 1, !dbg !378
  br label %261, !dbg !379

; <label>:261:                                    ; preds = %251, %173
  %262 = load i32, i32* %11, align 4, !dbg !380
  %263 = add nsw i32 %262, 1, !dbg !380
  store i32 %263, i32* %11, align 4, !dbg !380
  br label %154, !dbg !382, !llvm.loop !383

; <label>:264:                                    ; preds = %154
  call void @llvm.dbg.declare(metadata i32* %19, metadata !385, metadata !19), !dbg !387
  store i32 1, i32* %19, align 4, !dbg !387
  store i32 0, i32* %11, align 4, !dbg !388
  br label %265, !dbg !390

; <label>:265:                                    ; preds = %276, %264
  %266 = load i32, i32* %11, align 4, !dbg !391
  %267 = load i32, i32* %6, align 4, !dbg !394
  %268 = icmp slt i32 %266, %267, !dbg !395
  br i1 %268, label %269, label %279, !dbg !396

; <label>:269:                                    ; preds = %265
  %270 = load i32, i32* %11, align 4, !dbg !397
  %271 = sext i32 %270 to i64, !dbg !399
  %272 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %271, !dbg !399
  %273 = load i32, i32* %272, align 4, !dbg !399
  %274 = load i32, i32* %19, align 4, !dbg !400
  %275 = add nsw i32 %274, %273, !dbg !400
  store i32 %275, i32* %19, align 4, !dbg !400
  br label %276, !dbg !401

; <label>:276:                                    ; preds = %269
  %277 = load i32, i32* %11, align 4, !dbg !402
  %278 = add nsw i32 %277, 1, !dbg !402
  store i32 %278, i32* %11, align 4, !dbg !402
  br label %265, !dbg !404, !llvm.loop !405

; <label>:279:                                    ; preds = %265
  %280 = load i32, i32* %19, align 4, !dbg !407
  %281 = sext i32 %280 to i64, !dbg !407
  %282 = call noalias i8* @malloc(i64 %281) #7, !dbg !408
  store i8* %282, i8** %5, align 8, !dbg !409
  %283 = load i8*, i8** %5, align 8, !dbg !410
  %284 = icmp eq i8* %283, null, !dbg !412
  br i1 %284, label %285, label %287, !dbg !413

; <label>:285:                                    ; preds = %279
  %286 = load i8*, i8** %3, align 8, !dbg !414
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.Util_ExpandString, i32 0, i32 0), i8* %286), !dbg !416
  br label %316, !dbg !417

; <label>:287:                                    ; preds = %279
  %288 = load i8*, i8** %5, align 8, !dbg !418
  store i8* %288, i8** %10, align 8, !dbg !419
  store i32 0, i32* %11, align 4, !dbg !420
  br label %289, !dbg !422

; <label>:289:                                    ; preds = %311, %287
  %290 = load i32, i32* %11, align 4, !dbg !423
  %291 = load i32, i32* %6, align 4, !dbg !426
  %292 = icmp slt i32 %290, %291, !dbg !427
  br i1 %292, label %293, label %314, !dbg !428

; <label>:293:                                    ; preds = %289
  %294 = load i8*, i8** %10, align 8, !dbg !429
  %295 = load i32, i32* %11, align 4, !dbg !431
  %296 = sext i32 %295 to i64, !dbg !432
  %297 = getelementptr inbounds [100 x i8*], [100 x i8*]* %7, i64 0, i64 %296, !dbg !432
  %298 = load i8*, i8** %297, align 8, !dbg !432
  %299 = load i32, i32* %11, align 4, !dbg !433
  %300 = sext i32 %299 to i64, !dbg !434
  %301 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %300, !dbg !434
  %302 = load i32, i32* %301, align 4, !dbg !434
  %303 = sext i32 %302 to i64, !dbg !434
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %294, i8* %298, i64 %303, i32 1, i1 false), !dbg !435
  %304 = load i32, i32* %11, align 4, !dbg !436
  %305 = sext i32 %304 to i64, !dbg !437
  %306 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %305, !dbg !437
  %307 = load i32, i32* %306, align 4, !dbg !437
  %308 = load i8*, i8** %10, align 8, !dbg !438
  %309 = sext i32 %307 to i64, !dbg !438
  %310 = getelementptr inbounds i8, i8* %308, i64 %309, !dbg !438
  store i8* %310, i8** %10, align 8, !dbg !438
  br label %311, !dbg !439

; <label>:311:                                    ; preds = %293
  %312 = load i32, i32* %11, align 4, !dbg !440
  %313 = add nsw i32 %312, 1, !dbg !440
  store i32 %313, i32* %11, align 4, !dbg !440
  br label %289, !dbg !442, !llvm.loop !443

; <label>:314:                                    ; preds = %289
  %315 = load i8*, i8** %10, align 8, !dbg !445
  store i8 0, i8* %315, align 1, !dbg !446
  br label %316, !dbg !447

; <label>:316:                                    ; preds = %314, %285, %248, %88
  store i32 0, i32* %11, align 4, !dbg !448
  br label %317, !dbg !450

; <label>:317:                                    ; preds = %333, %316
  %318 = load i32, i32* %11, align 4, !dbg !451
  %319 = load i32, i32* %6, align 4, !dbg !454
  %320 = icmp slt i32 %318, %319, !dbg !455
  br i1 %320, label %321, label %336, !dbg !456

; <label>:321:                                    ; preds = %317
  %322 = load i32, i32* %11, align 4, !dbg !457
  %323 = sext i32 %322 to i64, !dbg !460
  %324 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 %323, !dbg !460
  %325 = load i8, i8* %324, align 1, !dbg !460
  %326 = icmp ne i8 %325, 0, !dbg !460
  br i1 %326, label %327, label %332, !dbg !461

; <label>:327:                                    ; preds = %321
  %328 = load i32, i32* %11, align 4, !dbg !462
  %329 = sext i32 %328 to i64, !dbg !464
  %330 = getelementptr inbounds [100 x i8*], [100 x i8*]* %7, i64 0, i64 %329, !dbg !464
  %331 = load i8*, i8** %330, align 8, !dbg !464
  call void @free(i8* %331) #7, !dbg !465
  br label %332, !dbg !466

; <label>:332:                                    ; preds = %327, %321
  br label %333, !dbg !467

; <label>:333:                                    ; preds = %332
  %334 = load i32, i32* %11, align 4, !dbg !468
  %335 = add nsw i32 %334, 1, !dbg !468
  store i32 %335, i32* %11, align 4, !dbg !468
  br label %317, !dbg !470, !llvm.loop !471

; <label>:336:                                    ; preds = %317
  %337 = load i8*, i8** %4, align 8, !dbg !473
  call void @free(i8* %337) #7, !dbg !474
  %338 = load i8*, i8** %5, align 8, !dbg !475
  store i8* %338, i8** %2, align 8, !dbg !476
  br label %339, !dbg !476

; <label>:339:                                    ; preds = %336, %30
  %340 = load i8*, i8** %2, align 8, !dbg !477
  ret i8* %340, !dbg !477
}

declare i8* @Unicode_Duplicate(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @UtilIsAlphaOrNum(i8 signext) #0 !dbg !478 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !481, metadata !19), !dbg !482
  %4 = load i8, i8* %3, align 1, !dbg !483
  %5 = sext i8 %4 to i32, !dbg !483
  %6 = icmp sge i32 %5, 48, !dbg !485
  br i1 %6, label %7, label %11, !dbg !486

; <label>:7:                                      ; preds = %1
  %8 = load i8, i8* %3, align 1, !dbg !487
  %9 = sext i8 %8 to i32, !dbg !487
  %10 = icmp sle i32 %9, 57, !dbg !489
  br i1 %10, label %27, label %11, !dbg !490

; <label>:11:                                     ; preds = %7, %1
  %12 = load i8, i8* %3, align 1, !dbg !491
  %13 = sext i8 %12 to i32, !dbg !491
  %14 = icmp sge i32 %13, 97, !dbg !492
  br i1 %14, label %15, label %19, !dbg !493

; <label>:15:                                     ; preds = %11
  %16 = load i8, i8* %3, align 1, !dbg !494
  %17 = sext i8 %16 to i32, !dbg !494
  %18 = icmp sle i32 %17, 122, !dbg !495
  br i1 %18, label %27, label %19, !dbg !496

; <label>:19:                                     ; preds = %15, %11
  %20 = load i8, i8* %3, align 1, !dbg !497
  %21 = sext i8 %20 to i32, !dbg !497
  %22 = icmp sge i32 %21, 65, !dbg !498
  br i1 %22, label %23, label %28, !dbg !499

; <label>:23:                                     ; preds = %19
  %24 = load i8, i8* %3, align 1, !dbg !500
  %25 = sext i8 %24 to i32, !dbg !500
  %26 = icmp sle i32 %25, 90, !dbg !501
  br i1 %26, label %27, label %28, !dbg !502

; <label>:27:                                     ; preds = %23, %15, %7
  store i8 1, i8* %2, align 1, !dbg !504
  br label %29, !dbg !504

; <label>:28:                                     ; preds = %23, %19
  store i8 0, i8* %2, align 1, !dbg !506
  br label %29, !dbg !506

; <label>:29:                                     ; preds = %28, %27
  %30 = load i8, i8* %2, align 1, !dbg !508
  ret i8 %30, !dbg !508
}

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8*, i8*) #3

declare void @Log(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i8* @UtilDoTildeSubst(i8*) #0 !dbg !509 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.passwd*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !510, metadata !19), !dbg !511
  call void @llvm.dbg.declare(metadata i8** %4, metadata !512, metadata !19), !dbg !513
  store i8* null, i8** %4, align 8, !dbg !513
  call void @llvm.dbg.declare(metadata %struct.passwd** %5, metadata !514, metadata !19), !dbg !515
  store %struct.passwd* null, %struct.passwd** %5, align 8, !dbg !515
  %6 = load i8*, i8** @gHomeDirOverride, align 8, !dbg !516
  %7 = icmp ne i8* %6, null, !dbg !516
  br i1 %7, label %8, label %11, !dbg !518

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** @gHomeDirOverride, align 8, !dbg !519
  %10 = call i8* @UtilSafeStrdup0(i8* %9), !dbg !521
  store i8* %10, i8** %2, align 8, !dbg !522
  br label %53, !dbg !522

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %3, align 8, !dbg !523
  %13 = load i8, i8* %12, align 1, !dbg !525
  %14 = sext i8 %13 to i32, !dbg !525
  %15 = icmp eq i32 %14, 0, !dbg !526
  br i1 %15, label %16, label %30, !dbg !527

; <label>:16:                                     ; preds = %11
  %17 = load i8*, i8** %4, align 8, !dbg !528
  %18 = icmp eq i8* %17, null, !dbg !531
  br i1 %18, label %19, label %29, !dbg !532

; <label>:19:                                     ; preds = %16
  %20 = load %struct.passwd*, %struct.passwd** %5, align 8, !dbg !533
  %21 = icmp eq %struct.passwd* %20, null, !dbg !535
  br i1 %21, label %22, label %29, !dbg !536

; <label>:22:                                     ; preds = %19
  %23 = call i8* @Posix_Getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0)), !dbg !537
  %24 = call i8* @Unicode_Duplicate(i8* %23), !dbg !539
  store i8* %24, i8** %4, align 8, !dbg !541
  %25 = load i8*, i8** %4, align 8, !dbg !542
  %26 = icmp eq i8* %25, null, !dbg !544
  br i1 %26, label %27, label %28, !dbg !545

; <label>:27:                                     ; preds = %22
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i32 0, i32 0)), !dbg !546
  br label %28, !dbg !548

; <label>:28:                                     ; preds = %27, %22
  br label %29, !dbg !549

; <label>:29:                                     ; preds = %28, %19, %16
  br label %38, !dbg !550

; <label>:30:                                     ; preds = %11
  %31 = load i8*, i8** %3, align 8, !dbg !551
  %32 = call %struct.passwd* @Posix_Getpwnam(i8* %31), !dbg !553
  store %struct.passwd* %32, %struct.passwd** %5, align 8, !dbg !554
  %33 = load %struct.passwd*, %struct.passwd** %5, align 8, !dbg !555
  %34 = icmp eq %struct.passwd* %33, null, !dbg !557
  br i1 %34, label %35, label %37, !dbg !558

; <label>:35:                                     ; preds = %30
  %36 = load i8*, i8** %3, align 8, !dbg !559
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i32 0, i32 0), i8* %36), !dbg !561
  br label %37, !dbg !562

; <label>:37:                                     ; preds = %35, %30
  br label %38

; <label>:38:                                     ; preds = %37, %29
  %39 = load i8*, i8** %4, align 8, !dbg !563
  %40 = icmp eq i8* %39, null, !dbg !565
  br i1 %40, label %41, label %51, !dbg !566

; <label>:41:                                     ; preds = %38
  %42 = load %struct.passwd*, %struct.passwd** %5, align 8, !dbg !567
  %43 = icmp ne %struct.passwd* %42, null, !dbg !569
  br i1 %43, label %44, label %51, !dbg !570

; <label>:44:                                     ; preds = %41
  %45 = load %struct.passwd*, %struct.passwd** %5, align 8, !dbg !571
  %46 = call i8* @UtilGetHomeDirectory(%struct.passwd* %45), !dbg !573
  store i8* %46, i8** %4, align 8, !dbg !574
  call void @Posix_Endpwent(), !dbg !575
  %47 = load i8*, i8** %4, align 8, !dbg !576
  %48 = icmp eq i8* %47, null, !dbg !578
  br i1 %48, label %49, label %50, !dbg !579

; <label>:49:                                     ; preds = %44
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i32 0, i32 0)), !dbg !580
  br label %50, !dbg !582

; <label>:50:                                     ; preds = %49, %44
  br label %51, !dbg !583

; <label>:51:                                     ; preds = %50, %41, %38
  %52 = load i8*, i8** %4, align 8, !dbg !584
  store i8* %52, i8** %2, align 8, !dbg !585
  br label %53, !dbg !585

; <label>:53:                                     ; preds = %51, %8
  %54 = load i8*, i8** %2, align 8, !dbg !586
  ret i8* %54, !dbg !586
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i8* @Posix_Getenv(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #3

declare i32 @Str_Snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind
declare i32 @getpid() #4

declare i8* @UtilSafeStrdup0(i8*) #2

declare %struct.passwd* @Posix_Getpwuid(i32) #2

; Function Attrs: nounwind
declare i32 @getuid() #4

; Function Attrs: nounwind uwtable
define internal i8* @UtilGetLoginName(%struct.passwd*) #0 !dbg !587 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.passwd*, align 8
  store %struct.passwd* %0, %struct.passwd** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.passwd** %3, metadata !590, metadata !19), !dbg !591
  %4 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !592
  %5 = icmp ne %struct.passwd* %4, null, !dbg !592
  br i1 %5, label %6, label %16, !dbg !594

; <label>:6:                                      ; preds = %1
  %7 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !595
  %8 = getelementptr inbounds %struct.passwd, %struct.passwd* %7, i32 0, i32 0, !dbg !597
  %9 = load i8*, i8** %8, align 8, !dbg !597
  %10 = icmp ne i8* %9, null, !dbg !595
  br i1 %10, label %11, label %16, !dbg !598

; <label>:11:                                     ; preds = %6
  %12 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !599
  %13 = getelementptr inbounds %struct.passwd, %struct.passwd* %12, i32 0, i32 0, !dbg !601
  %14 = load i8*, i8** %13, align 8, !dbg !601
  %15 = call i8* @UtilSafeStrdup0(i8* %14), !dbg !602
  store i8* %15, i8** %2, align 8, !dbg !603
  br label %17, !dbg !603

; <label>:16:                                     ; preds = %6, %1
  store i8* null, i8** %2, align 8, !dbg !604
  br label %17, !dbg !604

; <label>:17:                                     ; preds = %16, %11
  %18 = load i8*, i8** %2, align 8, !dbg !606
  ret i8* %18, !dbg !606
}

declare void @Posix_Endpwent() #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define void @Util_OverrideHomeDir(i8*) #0 !dbg !607 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !610, metadata !19), !dbg !611
  %3 = load i8*, i8** %2, align 8, !dbg !612
  %4 = call i8* @UtilSafeStrdup0(i8* %3), !dbg !613
  store i8* %4, i8** @gHomeDirOverride, align 8, !dbg !614
  ret void, !dbg !615
}

; Function Attrs: nounwind uwtable
define signext i8 @Util_IPv4AddrValid(i8*) #0 !dbg !616 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.in_addr, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !617, metadata !19), !dbg !618
  call void @llvm.dbg.declare(metadata %struct.in_addr* %3, metadata !619, metadata !19), !dbg !627
  %4 = load i8*, i8** %2, align 8, !dbg !628
  %5 = bitcast %struct.in_addr* %3 to i8*, !dbg !629
  %6 = call i32 @inet_pton(i32 2, i8* %4, i8* %5) #7, !dbg !630
  %7 = icmp eq i32 %6, 1, !dbg !631
  %8 = zext i1 %7 to i32, !dbg !631
  %9 = trunc i32 %8 to i8, !dbg !630
  ret i8 %9, !dbg !632
}

; Function Attrs: nounwind
declare i32 @inet_pton(i32, i8*, i8*) #4

; Function Attrs: nounwind uwtable
define signext i8 @Util_IPv6AddrValid(i8*) #0 !dbg !633 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca %struct.in6_addr, align 4
  %5 = alloca [47 x i8], align 16
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !634, metadata !19), !dbg !635
  call void @llvm.dbg.declare(metadata %struct.in6_addr* %4, metadata !636, metadata !19), !dbg !658
  call void @llvm.dbg.declare(metadata [47 x i8]* %5, metadata !659, metadata !19), !dbg !663
  %6 = load i8*, i8** %3, align 8, !dbg !664
  %7 = getelementptr inbounds [47 x i8], [47 x i8]* %5, i32 0, i32 0, !dbg !666
  %8 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* %7) #7, !dbg !667
  %9 = icmp ne i32 %8, 1, !dbg !668
  br i1 %9, label %10, label %11, !dbg !669

; <label>:10:                                     ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !670
  br label %18, !dbg !670

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds [47 x i8], [47 x i8]* %5, i32 0, i32 0, !dbg !672
  %13 = bitcast %struct.in6_addr* %4 to i8*, !dbg !673
  %14 = call i32 @inet_pton(i32 10, i8* %12, i8* %13) #7, !dbg !674
  %15 = icmp eq i32 %14, 1, !dbg !675
  %16 = zext i1 %15 to i32, !dbg !675
  %17 = trunc i32 %16 to i8, !dbg !674
  store i8 %17, i8* %2, align 1, !dbg !676
  br label %18, !dbg !676

; <label>:18:                                     ; preds = %11, %10
  %19 = load i8, i8* %2, align 1, !dbg !677
  ret i8 %19, !dbg !677
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define signext i8 @Util_IPAddrValid(i8*) #0 !dbg !678 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !679, metadata !19), !dbg !680
  %3 = load i8*, i8** %2, align 8, !dbg !681
  %4 = call signext i8 @Util_IPv4AddrValid(i8* %3), !dbg !682
  %5 = sext i8 %4 to i32, !dbg !682
  %6 = icmp ne i32 %5, 0, !dbg !682
  br i1 %6, label %12, label %7, !dbg !683

; <label>:7:                                      ; preds = %1
  %8 = load i8*, i8** %2, align 8, !dbg !684
  %9 = call signext i8 @Util_IPv6AddrValid(i8* %8), !dbg !686
  %10 = sext i8 %9 to i32, !dbg !686
  %11 = icmp ne i32 %10, 0, !dbg !687
  br label %12, !dbg !687

; <label>:12:                                     ; preds = %7, %1
  %13 = phi i1 [ true, %1 ], [ %11, %7 ]
  %14 = zext i1 %13 to i32, !dbg !688
  %15 = trunc i32 %14 to i8, !dbg !690
  ret i8 %15, !dbg !691
}

declare %struct.passwd* @Posix_Getpwnam(i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @UtilGetHomeDirectory(%struct.passwd*) #0 !dbg !692 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.passwd*, align 8
  store %struct.passwd* %0, %struct.passwd** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.passwd** %3, metadata !693, metadata !19), !dbg !694
  %4 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !695
  %5 = icmp ne %struct.passwd* %4, null, !dbg !695
  br i1 %5, label %6, label %16, !dbg !697

; <label>:6:                                      ; preds = %1
  %7 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !698
  %8 = getelementptr inbounds %struct.passwd, %struct.passwd* %7, i32 0, i32 5, !dbg !700
  %9 = load i8*, i8** %8, align 8, !dbg !700
  %10 = icmp ne i8* %9, null, !dbg !698
  br i1 %10, label %11, label %16, !dbg !701

; <label>:11:                                     ; preds = %6
  %12 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !702
  %13 = getelementptr inbounds %struct.passwd, %struct.passwd* %12, i32 0, i32 5, !dbg !704
  %14 = load i8*, i8** %13, align 8, !dbg !704
  %15 = call i8* @UtilSafeStrdup0(i8* %14), !dbg !705
  store i8* %15, i8** %2, align 8, !dbg !706
  br label %17, !dbg !706

; <label>:16:                                     ; preds = %6, %1
  store i8* null, i8** %2, align 8, !dbg !707
  br label %17, !dbg !707

; <label>:17:                                     ; preds = %16, %11
  %18 = load i8*, i8** %2, align 8, !dbg !709
  ret i8* %18, !dbg !709
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "util_misc.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line699")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = distinct !DIGlobalVariable(name: "gHomeDirOverride", scope: !0, file: !7, line: 81, type: !8, isLocal: false, isDefinition: true, variable: i8** @gHomeDirOverride)
!7 = !DIFile(filename: "util_misc.c", directory: "/home/lichi/Desktop/open-vm-tools/line699")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!13 = distinct !DISubprogram(name: "Util_GetCanonicalPath", scope: !7, file: !7, line: 101, type: !14, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!14 = !DISubroutineType(types: !15)
!15 = !{!8, !16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!18 = !DILocalVariable(name: "path", arg: 1, scope: !13, file: !7, line: 101, type: !16)
!19 = !DIExpression()
!20 = !DILocation(line: 101, column: 35, scope: !13)
!21 = !DILocalVariable(name: "canonicalPath", scope: !13, file: !7, line: 103, type: !8)
!22 = !DILocation(line: 103, column: 10, scope: !13)
!23 = !DILocation(line: 106, column: 35, scope: !13)
!24 = !DILocation(line: 106, column: 20, scope: !13)
!25 = !DILocation(line: 106, column: 18, scope: !13)
!26 = !DILocation(line: 148, column: 11, scope: !13)
!27 = !DILocation(line: 148, column: 4, scope: !13)
!28 = distinct !DISubprogram(name: "Util_CanonicalPathsIdentical", scope: !7, file: !7, line: 296, type: !29, isLocal: false, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!29 = !DISubroutineType(types: !30)
!30 = !{!31, !16, !16}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !32, line: 230, baseType: !9)
!32 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line699")
!33 = !DILocalVariable(name: "path1", arg: 1, scope: !28, file: !7, line: 296, type: !16)
!34 = !DILocation(line: 296, column: 42, scope: !28)
!35 = !DILocalVariable(name: "path2", arg: 2, scope: !28, file: !7, line: 297, type: !16)
!36 = !DILocation(line: 297, column: 42, scope: !28)
!37 = !DILocation(line: 303, column: 19, scope: !28)
!38 = !DILocation(line: 303, column: 26, scope: !28)
!39 = !DILocation(line: 303, column: 12, scope: !28)
!40 = !DILocation(line: 303, column: 33, scope: !28)
!41 = !DILocation(line: 303, column: 11, scope: !28)
!42 = !DILocation(line: 303, column: 4, scope: !28)
!43 = distinct !DISubprogram(name: "Util_IsAbsolutePath", scope: !7, file: !7, line: 331, type: !44, isLocal: false, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!44 = !DISubroutineType(types: !45)
!45 = !{!31, !16}
!46 = !DILocalVariable(name: "path", arg: 1, scope: !43, file: !7, line: 331, type: !16)
!47 = !DILocation(line: 331, column: 33, scope: !43)
!48 = !DILocation(line: 335, column: 11, scope: !43)
!49 = !DILocation(line: 335, column: 16, scope: !43)
!50 = !DILocation(line: 335, column: 19, scope: !51)
!51 = !DILexicalBlockFile(scope: !43, file: !7, discriminator: 1)
!52 = !DILocation(line: 335, column: 27, scope: !51)
!53 = !DILocation(line: 335, column: 16, scope: !54)
!54 = !DILexicalBlockFile(scope: !43, file: !7, discriminator: 2)
!55 = !DILocation(line: 335, column: 11, scope: !54)
!56 = !DILocation(line: 335, column: 4, scope: !54)
!57 = distinct !DISubprogram(name: "Util_ExpandString", scope: !7, file: !7, line: 551, type: !14, isLocal: false, isDefinition: true, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!58 = !DILocalVariable(name: "fileName", arg: 1, scope: !57, file: !7, line: 551, type: !16)
!59 = !DILocation(line: 551, column: 31, scope: !57)
!60 = !DILocalVariable(name: "copy", scope: !57, file: !7, line: 553, type: !8)
!61 = !DILocation(line: 553, column: 10, scope: !57)
!62 = !DILocalVariable(name: "result", scope: !57, file: !7, line: 554, type: !8)
!63 = !DILocation(line: 554, column: 10, scope: !57)
!64 = !DILocalVariable(name: "nchunk", scope: !57, file: !7, line: 555, type: !65)
!65 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!66 = !DILocation(line: 555, column: 8, scope: !57)
!67 = !DILocalVariable(name: "chunks", scope: !57, file: !7, line: 556, type: !68)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 6400, align: 64, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 100)
!71 = !DILocation(line: 556, column: 10, scope: !57)
!72 = !DILocalVariable(name: "chunkSize", scope: !57, file: !7, line: 557, type: !73)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 3200, align: 32, elements: !69)
!74 = !DILocation(line: 557, column: 8, scope: !57)
!75 = !DILocalVariable(name: "freeChunk", scope: !57, file: !7, line: 558, type: !76)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 800, align: 8, elements: !69)
!77 = !DILocation(line: 558, column: 9, scope: !57)
!78 = !DILocalVariable(name: "cp", scope: !57, file: !7, line: 559, type: !8)
!79 = !DILocation(line: 559, column: 10, scope: !57)
!80 = !DILocalVariable(name: "i", scope: !57, file: !7, line: 560, type: !65)
!81 = !DILocation(line: 560, column: 8, scope: !57)
!82 = !DILocation(line: 564, column: 29, scope: !57)
!83 = !DILocation(line: 564, column: 11, scope: !57)
!84 = !DILocation(line: 564, column: 9, scope: !57)
!85 = !DILocation(line: 569, column: 10, scope: !86)
!86 = distinct !DILexicalBlock(scope: !57, file: !7, line: 569, column: 8)
!87 = !DILocation(line: 569, column: 9, scope: !86)
!88 = !DILocation(line: 569, column: 19, scope: !86)
!89 = !DILocation(line: 569, column: 27, scope: !86)
!90 = !DILocation(line: 569, column: 38, scope: !91)
!91 = !DILexicalBlockFile(scope: !86, file: !7, discriminator: 1)
!92 = !DILocation(line: 569, column: 31, scope: !91)
!93 = !DILocation(line: 569, column: 53, scope: !91)
!94 = !DILocation(line: 569, column: 8, scope: !91)
!95 = !DILocation(line: 570, column: 14, scope: !96)
!96 = distinct !DILexicalBlock(scope: !86, file: !7, line: 569, column: 62)
!97 = !DILocation(line: 570, column: 7, scope: !96)
!98 = !DILocation(line: 587, column: 11, scope: !57)
!99 = !DILocation(line: 588, column: 14, scope: !100)
!100 = distinct !DILexicalBlock(scope: !57, file: !7, line: 588, column: 4)
!101 = !DILocation(line: 588, column: 12, scope: !100)
!102 = !DILocation(line: 588, column: 9, scope: !100)
!103 = !DILocation(line: 588, column: 21, scope: !104)
!104 = !DILexicalBlockFile(scope: !105, file: !7, discriminator: 1)
!105 = distinct !DILexicalBlock(scope: !100, file: !7, line: 588, column: 4)
!106 = !DILocation(line: 588, column: 20, scope: !104)
!107 = !DILocation(line: 588, column: 4, scope: !104)
!108 = !DILocalVariable(name: "len", scope: !109, file: !7, line: 589, type: !110)
!109 = distinct !DILexicalBlock(scope: !105, file: !7, line: 588, column: 26)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !111, line: 216, baseType: !112)
!111 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line699")
!112 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!113 = !DILocation(line: 589, column: 14, scope: !109)
!114 = !DILocation(line: 590, column: 12, scope: !115)
!115 = distinct !DILexicalBlock(scope: !109, file: !7, line: 590, column: 11)
!116 = !DILocation(line: 590, column: 11, scope: !115)
!117 = !DILocation(line: 590, column: 15, scope: !115)
!118 = !DILocation(line: 590, column: 11, scope: !109)
!119 = !DILocalVariable(name: "p", scope: !120, file: !7, line: 591, type: !8)
!120 = distinct !DILexicalBlock(scope: !115, file: !7, line: 590, column: 23)
!121 = !DILocation(line: 591, column: 9, scope: !120)
!122 = !DILocation(line: 592, column: 12, scope: !123)
!123 = distinct !DILexicalBlock(scope: !120, file: !7, line: 592, column: 3)
!124 = !DILocation(line: 592, column: 15, scope: !123)
!125 = !DILocation(line: 592, column: 10, scope: !123)
!126 = !DILocation(line: 592, column: 8, scope: !123)
!127 = !DILocation(line: 592, column: 38, scope: !128)
!128 = !DILexicalBlockFile(scope: !129, file: !7, discriminator: 1)
!129 = distinct !DILexicalBlock(scope: !123, file: !7, line: 592, column: 3)
!130 = !DILocation(line: 592, column: 37, scope: !128)
!131 = !DILocation(line: 592, column: 20, scope: !128)
!132 = !DILocation(line: 592, column: 41, scope: !128)
!133 = !DILocation(line: 592, column: 45, scope: !134)
!134 = !DILexicalBlockFile(scope: !129, file: !7, discriminator: 2)
!135 = !DILocation(line: 592, column: 44, scope: !134)
!136 = !DILocation(line: 592, column: 47, scope: !134)
!137 = !DILocation(line: 592, column: 41, scope: !134)
!138 = !DILocation(line: 592, column: 3, scope: !139)
!139 = !DILexicalBlockFile(scope: !123, file: !7, discriminator: 3)
!140 = !DILocation(line: 593, column: 3, scope: !141)
!141 = distinct !DILexicalBlock(scope: !129, file: !7, line: 592, column: 60)
!142 = !DILocation(line: 592, column: 56, scope: !143)
!143 = !DILexicalBlockFile(scope: !129, file: !7, discriminator: 4)
!144 = !DILocation(line: 592, column: 3, scope: !143)
!145 = distinct !{!145, !146}
!146 = !DILocation(line: 592, column: 3, scope: !120)
!147 = !DILocation(line: 594, column: 9, scope: !120)
!148 = !DILocation(line: 594, column: 13, scope: !120)
!149 = !DILocation(line: 594, column: 11, scope: !120)
!150 = !DILocation(line: 594, column: 7, scope: !120)
!151 = !DILocation(line: 596, column: 7, scope: !120)
!152 = !DILocation(line: 596, column: 18, scope: !153)
!153 = !DILexicalBlockFile(scope: !154, file: !7, discriminator: 1)
!154 = distinct !DILexicalBlock(scope: !115, file: !7, line: 596, column: 18)
!155 = !DILocation(line: 596, column: 24, scope: !153)
!156 = !DILocation(line: 596, column: 21, scope: !153)
!157 = !DILocation(line: 596, column: 29, scope: !153)
!158 = !DILocation(line: 596, column: 33, scope: !159)
!159 = !DILexicalBlockFile(scope: !154, file: !7, discriminator: 2)
!160 = !DILocation(line: 596, column: 32, scope: !159)
!161 = !DILocation(line: 596, column: 36, scope: !159)
!162 = !DILocation(line: 596, column: 18, scope: !159)
!163 = !DILocation(line: 597, column: 17, scope: !164)
!164 = distinct !DILexicalBlock(scope: !154, file: !7, line: 596, column: 44)
!165 = !DILocation(line: 597, column: 9, scope: !164)
!166 = !DILocation(line: 597, column: 7, scope: !164)
!167 = !DILocation(line: 599, column: 7, scope: !164)
!168 = !DILocation(line: 600, column: 17, scope: !169)
!169 = distinct !DILexicalBlock(scope: !154, file: !7, line: 599, column: 14)
!170 = !DILocation(line: 600, column: 9, scope: !169)
!171 = !DILocation(line: 600, column: 7, scope: !169)
!172 = !DILocation(line: 602, column: 11, scope: !173)
!173 = distinct !DILexicalBlock(scope: !109, file: !7, line: 602, column: 11)
!174 = !DILocation(line: 602, column: 18, scope: !173)
!175 = !DILocation(line: 602, column: 11, scope: !109)
!176 = !DILocation(line: 604, column: 14, scope: !177)
!177 = distinct !DILexicalBlock(scope: !173, file: !7, line: 602, column: 26)
!178 = !DILocation(line: 603, column: 10, scope: !177)
!179 = !DILocation(line: 605, column: 3, scope: !177)
!180 = !DILocation(line: 607, column: 24, scope: !109)
!181 = !DILocation(line: 607, column: 14, scope: !109)
!182 = !DILocation(line: 607, column: 7, scope: !109)
!183 = !DILocation(line: 607, column: 22, scope: !109)
!184 = !DILocation(line: 608, column: 27, scope: !109)
!185 = !DILocation(line: 608, column: 17, scope: !109)
!186 = !DILocation(line: 608, column: 7, scope: !109)
!187 = !DILocation(line: 608, column: 25, scope: !109)
!188 = !DILocation(line: 609, column: 17, scope: !109)
!189 = !DILocation(line: 609, column: 7, scope: !109)
!190 = !DILocation(line: 609, column: 25, scope: !109)
!191 = !DILocation(line: 610, column: 13, scope: !109)
!192 = !DILocation(line: 611, column: 13, scope: !109)
!193 = !DILocation(line: 611, column: 10, scope: !109)
!194 = !DILocation(line: 588, column: 4, scope: !195)
!195 = !DILexicalBlockFile(scope: !105, file: !7, discriminator: 2)
!196 = distinct !{!196, !197}
!197 = !DILocation(line: 588, column: 4, scope: !57)
!198 = !DILocation(line: 619, column: 8, scope: !199)
!199 = distinct !DILexicalBlock(scope: !57, file: !7, line: 619, column: 8)
!200 = !DILocation(line: 619, column: 21, scope: !199)
!201 = !DILocation(line: 619, column: 8, scope: !57)
!202 = !DILocalVariable(name: "save", scope: !203, file: !7, line: 620, type: !9)
!203 = distinct !DILexicalBlock(scope: !199, file: !7, line: 619, column: 29)
!204 = !DILocation(line: 620, column: 12, scope: !203)
!205 = !DILocation(line: 620, column: 36, scope: !203)
!206 = !DILocation(line: 620, column: 19, scope: !203)
!207 = !DILocation(line: 620, column: 25, scope: !203)
!208 = !DILocation(line: 620, column: 23, scope: !203)
!209 = !DILocation(line: 621, column: 10, scope: !203)
!210 = !DILocation(line: 621, column: 7, scope: !203)
!211 = !DILocation(line: 621, column: 24, scope: !203)
!212 = !DILocation(line: 623, column: 36, scope: !203)
!213 = !DILocation(line: 623, column: 46, scope: !203)
!214 = !DILocation(line: 623, column: 19, scope: !203)
!215 = !DILocation(line: 623, column: 7, scope: !203)
!216 = !DILocation(line: 623, column: 17, scope: !203)
!217 = !DILocation(line: 624, column: 26, scope: !203)
!218 = !DILocation(line: 624, column: 10, scope: !203)
!219 = !DILocation(line: 624, column: 7, scope: !203)
!220 = !DILocation(line: 624, column: 24, scope: !203)
!221 = !DILocation(line: 625, column: 11, scope: !222)
!222 = distinct !DILexicalBlock(scope: !203, file: !7, line: 625, column: 11)
!223 = !DILocation(line: 625, column: 21, scope: !222)
!224 = !DILocation(line: 625, column: 11, scope: !203)
!225 = !DILocation(line: 627, column: 22, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !7, line: 625, column: 29)
!227 = !DILocation(line: 627, column: 10, scope: !226)
!228 = !DILocation(line: 627, column: 20, scope: !226)
!229 = !DILocation(line: 628, column: 7, scope: !226)
!230 = !DILocation(line: 630, column: 32, scope: !231)
!231 = distinct !DILexicalBlock(scope: !222, file: !7, line: 628, column: 14)
!232 = !DILocation(line: 630, column: 25, scope: !231)
!233 = !DILocation(line: 630, column: 10, scope: !231)
!234 = !DILocation(line: 630, column: 23, scope: !231)
!235 = !DILocation(line: 631, column: 10, scope: !231)
!236 = !DILocation(line: 631, column: 23, scope: !231)
!237 = !DILocation(line: 633, column: 4, scope: !203)
!238 = !DILocation(line: 640, column: 11, scope: !239)
!239 = distinct !DILexicalBlock(scope: !57, file: !7, line: 640, column: 4)
!240 = !DILocation(line: 640, column: 9, scope: !239)
!241 = !DILocation(line: 640, column: 16, scope: !242)
!242 = !DILexicalBlockFile(scope: !243, file: !7, discriminator: 1)
!243 = distinct !DILexicalBlock(scope: !239, file: !7, line: 640, column: 4)
!244 = !DILocation(line: 640, column: 20, scope: !242)
!245 = !DILocation(line: 640, column: 18, scope: !242)
!246 = !DILocation(line: 640, column: 4, scope: !242)
!247 = !DILocalVariable(name: "save", scope: !248, file: !7, line: 641, type: !9)
!248 = distinct !DILexicalBlock(scope: !243, file: !7, line: 640, column: 33)
!249 = !DILocation(line: 641, column: 12, scope: !248)
!250 = !DILocalVariable(name: "expand", scope: !248, file: !7, line: 642, type: !8)
!251 = !DILocation(line: 642, column: 13, scope: !248)
!252 = !DILocalVariable(name: "buf", scope: !248, file: !7, line: 643, type: !253)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 800, align: 8, elements: !69)
!254 = !DILocation(line: 643, column: 12, scope: !248)
!255 = !DILocation(line: 647, column: 19, scope: !248)
!256 = !DILocation(line: 647, column: 12, scope: !248)
!257 = !DILocation(line: 647, column: 10, scope: !248)
!258 = !DILocation(line: 649, column: 12, scope: !259)
!259 = distinct !DILexicalBlock(scope: !248, file: !7, line: 649, column: 11)
!260 = !DILocation(line: 649, column: 11, scope: !259)
!261 = !DILocation(line: 649, column: 15, scope: !259)
!262 = !DILocation(line: 649, column: 22, scope: !259)
!263 = !DILocation(line: 649, column: 35, scope: !264)
!264 = !DILexicalBlockFile(scope: !259, file: !7, discriminator: 1)
!265 = !DILocation(line: 649, column: 25, scope: !264)
!266 = !DILocation(line: 649, column: 38, scope: !264)
!267 = !DILocation(line: 649, column: 11, scope: !264)
!268 = !DILocation(line: 656, column: 3, scope: !269)
!269 = distinct !DILexicalBlock(scope: !259, file: !7, line: 649, column: 44)
!270 = !DILocation(line: 659, column: 27, scope: !248)
!271 = !DILocation(line: 659, column: 17, scope: !248)
!272 = !DILocation(line: 659, column: 14, scope: !248)
!273 = !DILocation(line: 659, column: 12, scope: !248)
!274 = !DILocation(line: 660, column: 20, scope: !248)
!275 = !DILocation(line: 660, column: 10, scope: !248)
!276 = !DILocation(line: 660, column: 7, scope: !248)
!277 = !DILocation(line: 660, column: 24, scope: !248)
!278 = !DILocation(line: 667, column: 47, scope: !248)
!279 = !DILocation(line: 667, column: 50, scope: !248)
!280 = !DILocation(line: 667, column: 34, scope: !248)
!281 = !DILocation(line: 667, column: 16, scope: !282)
!282 = !DILexicalBlockFile(scope: !248, file: !7, discriminator: 1)
!283 = !DILocation(line: 667, column: 14, scope: !248)
!284 = !DILocation(line: 668, column: 11, scope: !285)
!285 = distinct !DILexicalBlock(scope: !248, file: !7, line: 668, column: 11)
!286 = !DILocation(line: 668, column: 18, scope: !285)
!287 = !DILocation(line: 668, column: 11, scope: !248)
!288 = !DILocation(line: 669, column: 7, scope: !289)
!289 = distinct !DILexicalBlock(scope: !285, file: !7, line: 668, column: 26)
!290 = !DILocation(line: 669, column: 29, scope: !291)
!291 = !DILexicalBlockFile(scope: !292, file: !7, discriminator: 1)
!292 = distinct !DILexicalBlock(scope: !285, file: !7, line: 669, column: 18)
!293 = !DILocation(line: 669, column: 32, scope: !291)
!294 = !DILocation(line: 669, column: 18, scope: !291)
!295 = !DILocation(line: 669, column: 44, scope: !291)
!296 = !DILocation(line: 670, column: 16, scope: !297)
!297 = distinct !DILexicalBlock(scope: !292, file: !7, line: 669, column: 50)
!298 = !DILocation(line: 670, column: 41, scope: !297)
!299 = !DILocation(line: 670, column: 3, scope: !300)
!300 = !DILexicalBlockFile(scope: !297, file: !7, discriminator: 1)
!301 = !DILocation(line: 671, column: 28, scope: !297)
!302 = !DILocation(line: 671, column: 12, scope: !297)
!303 = !DILocation(line: 671, column: 10, scope: !297)
!304 = !DILocation(line: 672, column: 7, scope: !297)
!305 = !DILocation(line: 672, column: 29, scope: !306)
!306 = !DILexicalBlockFile(scope: !307, file: !7, discriminator: 1)
!307 = distinct !DILexicalBlock(scope: !292, file: !7, line: 672, column: 18)
!308 = !DILocation(line: 672, column: 32, scope: !306)
!309 = !DILocation(line: 672, column: 18, scope: !306)
!310 = !DILocation(line: 672, column: 45, scope: !306)
!311 = !DILocalVariable(name: "pwd", scope: !312, file: !7, line: 674, type: !313)
!312 = distinct !DILexicalBlock(scope: !307, file: !7, line: 672, column: 51)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !315, line: 49, size: 384, align: 64, elements: !316)
!315 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/lichi/Desktop/open-vm-tools/line699")
!316 = !{!317, !318, !319, !323, !325, !326, !327}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !314, file: !315, line: 51, baseType: !8, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !314, file: !315, line: 52, baseType: !8, size: 64, align: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !314, file: !315, line: 53, baseType: !320, size: 32, align: 32, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !321, line: 125, baseType: !322)
!321 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line699")
!322 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !314, file: !315, line: 54, baseType: !324, size: 32, align: 32, offset: 160)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !321, line: 126, baseType: !322)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !314, file: !315, line: 55, baseType: !8, size: 64, align: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !314, file: !315, line: 56, baseType: !8, size: 64, align: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !314, file: !315, line: 57, baseType: !8, size: 64, align: 64, offset: 320)
!328 = !DILocation(line: 674, column: 25, scope: !312)
!329 = !DILocation(line: 674, column: 46, scope: !312)
!330 = !DILocation(line: 674, column: 31, scope: !331)
!331 = !DILexicalBlockFile(scope: !312, file: !7, discriminator: 1)
!332 = !DILocation(line: 675, column: 36, scope: !312)
!333 = !DILocation(line: 675, column: 19, scope: !312)
!334 = !DILocation(line: 675, column: 17, scope: !312)
!335 = !DILocation(line: 676, column: 10, scope: !312)
!336 = !DILocation(line: 683, column: 7, scope: !337)
!337 = distinct !DILexicalBlock(scope: !312, file: !7, line: 683, column: 7)
!338 = !DILocation(line: 683, column: 14, scope: !337)
!339 = !DILocation(line: 683, column: 7, scope: !312)
!340 = !DILocation(line: 684, column: 15, scope: !341)
!341 = distinct !DILexicalBlock(scope: !337, file: !7, line: 683, column: 22)
!342 = !DILocation(line: 684, column: 13, scope: !341)
!343 = !DILocation(line: 685, column: 3, scope: !341)
!344 = !DILocation(line: 686, column: 7, scope: !312)
!345 = !DILocation(line: 688, column: 14, scope: !346)
!346 = distinct !DILexicalBlock(scope: !307, file: !7, line: 686, column: 14)
!347 = !DILocation(line: 688, column: 17, scope: !346)
!348 = !DILocation(line: 688, column: 22, scope: !346)
!349 = !DILocation(line: 687, column: 10, scope: !346)
!350 = !DILocation(line: 694, column: 12, scope: !346)
!351 = !DILocation(line: 694, column: 10, scope: !346)
!352 = !DILocation(line: 716, column: 26, scope: !248)
!353 = !DILocation(line: 716, column: 20, scope: !248)
!354 = !DILocation(line: 716, column: 10, scope: !248)
!355 = !DILocation(line: 716, column: 7, scope: !248)
!356 = !DILocation(line: 716, column: 24, scope: !248)
!357 = !DILocation(line: 720, column: 19, scope: !248)
!358 = !DILocation(line: 720, column: 14, scope: !248)
!359 = !DILocation(line: 720, column: 7, scope: !248)
!360 = !DILocation(line: 720, column: 17, scope: !248)
!361 = !DILocation(line: 721, column: 18, scope: !362)
!362 = distinct !DILexicalBlock(scope: !248, file: !7, line: 721, column: 11)
!363 = !DILocation(line: 721, column: 11, scope: !362)
!364 = !DILocation(line: 721, column: 21, scope: !362)
!365 = !DILocation(line: 721, column: 11, scope: !248)
!366 = !DILocation(line: 723, column: 28, scope: !367)
!367 = distinct !DILexicalBlock(scope: !362, file: !7, line: 721, column: 29)
!368 = !DILocation(line: 723, column: 36, scope: !367)
!369 = !DILocation(line: 722, column: 3, scope: !367)
!370 = !DILocation(line: 724, column: 3, scope: !367)
!371 = !DILocation(line: 726, column: 29, scope: !248)
!372 = !DILocation(line: 726, column: 22, scope: !248)
!373 = !DILocation(line: 726, column: 17, scope: !248)
!374 = !DILocation(line: 726, column: 7, scope: !248)
!375 = !DILocation(line: 726, column: 20, scope: !248)
!376 = !DILocation(line: 727, column: 17, scope: !248)
!377 = !DILocation(line: 727, column: 7, scope: !248)
!378 = !DILocation(line: 727, column: 20, scope: !248)
!379 = !DILocation(line: 728, column: 4, scope: !248)
!380 = !DILocation(line: 640, column: 29, scope: !381)
!381 = !DILexicalBlockFile(scope: !243, file: !7, discriminator: 2)
!382 = !DILocation(line: 640, column: 4, scope: !381)
!383 = distinct !{!383, !384}
!384 = !DILocation(line: 640, column: 4, scope: !57)
!385 = !DILocalVariable(name: "size", scope: !386, file: !7, line: 735, type: !65)
!386 = distinct !DILexicalBlock(scope: !57, file: !7, line: 734, column: 4)
!387 = !DILocation(line: 735, column: 11, scope: !386)
!388 = !DILocation(line: 736, column: 14, scope: !389)
!389 = distinct !DILexicalBlock(scope: !386, file: !7, line: 736, column: 7)
!390 = !DILocation(line: 736, column: 12, scope: !389)
!391 = !DILocation(line: 736, column: 19, scope: !392)
!392 = !DILexicalBlockFile(scope: !393, file: !7, discriminator: 1)
!393 = distinct !DILexicalBlock(scope: !389, file: !7, line: 736, column: 7)
!394 = !DILocation(line: 736, column: 23, scope: !392)
!395 = !DILocation(line: 736, column: 21, scope: !392)
!396 = !DILocation(line: 736, column: 7, scope: !392)
!397 = !DILocation(line: 737, column: 21, scope: !398)
!398 = distinct !DILexicalBlock(scope: !393, file: !7, line: 736, column: 36)
!399 = !DILocation(line: 737, column: 11, scope: !398)
!400 = !DILocation(line: 737, column: 8, scope: !398)
!401 = !DILocation(line: 738, column: 7, scope: !398)
!402 = !DILocation(line: 736, column: 32, scope: !403)
!403 = !DILexicalBlockFile(scope: !393, file: !7, discriminator: 2)
!404 = !DILocation(line: 736, column: 7, scope: !403)
!405 = distinct !{!405, !406}
!406 = !DILocation(line: 736, column: 7, scope: !386)
!407 = !DILocation(line: 739, column: 23, scope: !386)
!408 = !DILocation(line: 739, column: 16, scope: !386)
!409 = !DILocation(line: 739, column: 14, scope: !386)
!410 = !DILocation(line: 741, column: 8, scope: !411)
!411 = distinct !DILexicalBlock(scope: !57, file: !7, line: 741, column: 8)
!412 = !DILocation(line: 741, column: 15, scope: !411)
!413 = !DILocation(line: 741, column: 8, scope: !57)
!414 = !DILocation(line: 743, column: 25, scope: !415)
!415 = distinct !DILexicalBlock(scope: !411, file: !7, line: 741, column: 23)
!416 = !DILocation(line: 742, column: 7, scope: !415)
!417 = !DILocation(line: 744, column: 7, scope: !415)
!418 = !DILocation(line: 746, column: 9, scope: !57)
!419 = !DILocation(line: 746, column: 7, scope: !57)
!420 = !DILocation(line: 747, column: 11, scope: !421)
!421 = distinct !DILexicalBlock(scope: !57, file: !7, line: 747, column: 4)
!422 = !DILocation(line: 747, column: 9, scope: !421)
!423 = !DILocation(line: 747, column: 16, scope: !424)
!424 = !DILexicalBlockFile(scope: !425, file: !7, discriminator: 1)
!425 = distinct !DILexicalBlock(scope: !421, file: !7, line: 747, column: 4)
!426 = !DILocation(line: 747, column: 20, scope: !424)
!427 = !DILocation(line: 747, column: 18, scope: !424)
!428 = !DILocation(line: 747, column: 4, scope: !424)
!429 = !DILocation(line: 748, column: 14, scope: !430)
!430 = distinct !DILexicalBlock(scope: !425, file: !7, line: 747, column: 33)
!431 = !DILocation(line: 748, column: 25, scope: !430)
!432 = !DILocation(line: 748, column: 18, scope: !430)
!433 = !DILocation(line: 748, column: 39, scope: !430)
!434 = !DILocation(line: 748, column: 29, scope: !430)
!435 = !DILocation(line: 748, column: 7, scope: !430)
!436 = !DILocation(line: 749, column: 23, scope: !430)
!437 = !DILocation(line: 749, column: 13, scope: !430)
!438 = !DILocation(line: 749, column: 10, scope: !430)
!439 = !DILocation(line: 750, column: 4, scope: !430)
!440 = !DILocation(line: 747, column: 29, scope: !441)
!441 = !DILexicalBlockFile(scope: !425, file: !7, discriminator: 2)
!442 = !DILocation(line: 747, column: 4, scope: !441)
!443 = distinct !{!443, !444}
!444 = !DILocation(line: 747, column: 4, scope: !57)
!445 = !DILocation(line: 751, column: 5, scope: !57)
!446 = !DILocation(line: 751, column: 8, scope: !57)
!447 = !DILocation(line: 751, column: 4, scope: !57)
!448 = !DILocation(line: 758, column: 11, scope: !449)
!449 = distinct !DILexicalBlock(scope: !57, file: !7, line: 758, column: 4)
!450 = !DILocation(line: 758, column: 9, scope: !449)
!451 = !DILocation(line: 758, column: 16, scope: !452)
!452 = !DILexicalBlockFile(scope: !453, file: !7, discriminator: 1)
!453 = distinct !DILexicalBlock(scope: !449, file: !7, line: 758, column: 4)
!454 = !DILocation(line: 758, column: 20, scope: !452)
!455 = !DILocation(line: 758, column: 18, scope: !452)
!456 = !DILocation(line: 758, column: 4, scope: !452)
!457 = !DILocation(line: 759, column: 21, scope: !458)
!458 = distinct !DILexicalBlock(scope: !459, file: !7, line: 759, column: 11)
!459 = distinct !DILexicalBlock(scope: !453, file: !7, line: 758, column: 33)
!460 = !DILocation(line: 759, column: 11, scope: !458)
!461 = !DILocation(line: 759, column: 11, scope: !459)
!462 = !DILocation(line: 760, column: 15, scope: !463)
!463 = distinct !DILexicalBlock(scope: !458, file: !7, line: 759, column: 25)
!464 = !DILocation(line: 760, column: 8, scope: !463)
!465 = !DILocation(line: 760, column: 3, scope: !463)
!466 = !DILocation(line: 761, column: 7, scope: !463)
!467 = !DILocation(line: 762, column: 4, scope: !459)
!468 = !DILocation(line: 758, column: 29, scope: !469)
!469 = !DILexicalBlockFile(scope: !453, file: !7, discriminator: 2)
!470 = !DILocation(line: 758, column: 4, scope: !469)
!471 = distinct !{!471, !472}
!472 = !DILocation(line: 758, column: 4, scope: !57)
!473 = !DILocation(line: 763, column: 9, scope: !57)
!474 = !DILocation(line: 763, column: 4, scope: !57)
!475 = !DILocation(line: 765, column: 11, scope: !57)
!476 = !DILocation(line: 765, column: 4, scope: !57)
!477 = !DILocation(line: 766, column: 1, scope: !57)
!478 = distinct !DISubprogram(name: "UtilIsAlphaOrNum", scope: !7, file: !7, line: 378, type: !479, isLocal: true, isDefinition: true, scopeLine: 379, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!479 = !DISubroutineType(types: !480)
!480 = !{!31, !9}
!481 = !DILocalVariable(name: "ch", arg: 1, scope: !478, file: !7, line: 378, type: !9)
!482 = !DILocation(line: 378, column: 23, scope: !478)
!483 = !DILocation(line: 380, column: 9, scope: !484)
!484 = distinct !DILexicalBlock(scope: !478, file: !7, line: 380, column: 8)
!485 = !DILocation(line: 380, column: 12, scope: !484)
!486 = !DILocation(line: 380, column: 19, scope: !484)
!487 = !DILocation(line: 380, column: 22, scope: !488)
!488 = !DILexicalBlockFile(scope: !484, file: !7, discriminator: 1)
!489 = !DILocation(line: 380, column: 25, scope: !488)
!490 = !DILocation(line: 380, column: 33, scope: !488)
!491 = !DILocation(line: 381, column: 9, scope: !484)
!492 = !DILocation(line: 381, column: 12, scope: !484)
!493 = !DILocation(line: 381, column: 19, scope: !484)
!494 = !DILocation(line: 381, column: 22, scope: !488)
!495 = !DILocation(line: 381, column: 25, scope: !488)
!496 = !DILocation(line: 381, column: 33, scope: !488)
!497 = !DILocation(line: 382, column: 9, scope: !484)
!498 = !DILocation(line: 382, column: 12, scope: !484)
!499 = !DILocation(line: 382, column: 19, scope: !484)
!500 = !DILocation(line: 382, column: 22, scope: !488)
!501 = !DILocation(line: 382, column: 25, scope: !488)
!502 = !DILocation(line: 380, column: 8, scope: !503)
!503 = !DILexicalBlockFile(scope: !478, file: !7, discriminator: 2)
!504 = !DILocation(line: 383, column: 7, scope: !505)
!505 = distinct !DILexicalBlock(scope: !484, file: !7, line: 382, column: 34)
!506 = !DILocation(line: 385, column: 7, scope: !507)
!507 = distinct !DILexicalBlock(scope: !484, file: !7, line: 384, column: 11)
!508 = !DILocation(line: 387, column: 1, scope: !478)
!509 = distinct !DISubprogram(name: "UtilDoTildeSubst", scope: !7, file: !7, line: 467, type: !14, isLocal: true, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!510 = !DILocalVariable(name: "user", arg: 1, scope: !509, file: !7, line: 467, type: !16)
!511 = !DILocation(line: 467, column: 30, scope: !509)
!512 = !DILocalVariable(name: "str", scope: !509, file: !7, line: 469, type: !8)
!513 = !DILocation(line: 469, column: 10, scope: !509)
!514 = !DILocalVariable(name: "pwd", scope: !509, file: !7, line: 470, type: !313)
!515 = !DILocation(line: 470, column: 19, scope: !509)
!516 = !DILocation(line: 472, column: 8, scope: !517)
!517 = distinct !DILexicalBlock(scope: !509, file: !7, line: 472, column: 8)
!518 = !DILocation(line: 472, column: 8, scope: !509)
!519 = !DILocation(line: 477, column: 31, scope: !520)
!520 = distinct !DILexicalBlock(scope: !517, file: !7, line: 472, column: 26)
!521 = !DILocation(line: 477, column: 14, scope: !520)
!522 = !DILocation(line: 477, column: 7, scope: !520)
!523 = !DILocation(line: 480, column: 9, scope: !524)
!524 = distinct !DILexicalBlock(scope: !509, file: !7, line: 480, column: 8)
!525 = !DILocation(line: 480, column: 8, scope: !524)
!526 = !DILocation(line: 480, column: 14, scope: !524)
!527 = !DILocation(line: 480, column: 8, scope: !509)
!528 = !DILocation(line: 497, column: 11, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !7, line: 497, column: 11)
!530 = distinct !DILexicalBlock(scope: !524, file: !7, line: 480, column: 23)
!531 = !DILocation(line: 497, column: 15, scope: !529)
!532 = !DILocation(line: 497, column: 22, scope: !529)
!533 = !DILocation(line: 497, column: 25, scope: !534)
!534 = !DILexicalBlockFile(scope: !529, file: !7, discriminator: 1)
!535 = !DILocation(line: 497, column: 29, scope: !534)
!536 = !DILocation(line: 497, column: 11, scope: !534)
!537 = !DILocation(line: 498, column: 34, scope: !538)
!538 = distinct !DILexicalBlock(scope: !529, file: !7, line: 497, column: 38)
!539 = !DILocation(line: 498, column: 16, scope: !540)
!540 = !DILexicalBlockFile(scope: !538, file: !7, discriminator: 1)
!541 = !DILocation(line: 498, column: 14, scope: !538)
!542 = !DILocation(line: 499, column: 14, scope: !543)
!543 = distinct !DILexicalBlock(scope: !538, file: !7, line: 499, column: 14)
!544 = !DILocation(line: 499, column: 18, scope: !543)
!545 = !DILocation(line: 499, column: 14, scope: !538)
!546 = !DILocation(line: 500, column: 13, scope: !547)
!547 = distinct !DILexicalBlock(scope: !543, file: !7, line: 499, column: 26)
!548 = !DILocation(line: 501, column: 10, scope: !547)
!549 = !DILocation(line: 502, column: 7, scope: !538)
!550 = !DILocation(line: 503, column: 4, scope: !530)
!551 = !DILocation(line: 504, column: 28, scope: !552)
!552 = distinct !DILexicalBlock(scope: !524, file: !7, line: 503, column: 11)
!553 = !DILocation(line: 504, column: 13, scope: !552)
!554 = !DILocation(line: 504, column: 11, scope: !552)
!555 = !DILocation(line: 505, column: 11, scope: !556)
!556 = distinct !DILexicalBlock(scope: !552, file: !7, line: 505, column: 11)
!557 = !DILocation(line: 505, column: 15, scope: !556)
!558 = !DILocation(line: 505, column: 11, scope: !552)
!559 = !DILocation(line: 506, column: 55, scope: !560)
!560 = distinct !DILexicalBlock(scope: !556, file: !7, line: 505, column: 23)
!561 = !DILocation(line: 506, column: 10, scope: !560)
!562 = !DILocation(line: 507, column: 7, scope: !560)
!563 = !DILocation(line: 509, column: 8, scope: !564)
!564 = distinct !DILexicalBlock(scope: !509, file: !7, line: 509, column: 8)
!565 = !DILocation(line: 509, column: 12, scope: !564)
!566 = !DILocation(line: 509, column: 19, scope: !564)
!567 = !DILocation(line: 509, column: 22, scope: !568)
!568 = !DILexicalBlockFile(scope: !564, file: !7, discriminator: 1)
!569 = !DILocation(line: 509, column: 26, scope: !568)
!570 = !DILocation(line: 509, column: 8, scope: !568)
!571 = !DILocation(line: 510, column: 34, scope: !572)
!572 = distinct !DILexicalBlock(scope: !564, file: !7, line: 509, column: 35)
!573 = !DILocation(line: 510, column: 13, scope: !572)
!574 = !DILocation(line: 510, column: 11, scope: !572)
!575 = !DILocation(line: 511, column: 7, scope: !572)
!576 = !DILocation(line: 512, column: 11, scope: !577)
!577 = distinct !DILexicalBlock(scope: !572, file: !7, line: 512, column: 11)
!578 = !DILocation(line: 512, column: 15, scope: !577)
!579 = !DILocation(line: 512, column: 11, scope: !572)
!580 = !DILocation(line: 513, column: 10, scope: !581)
!581 = distinct !DILexicalBlock(scope: !577, file: !7, line: 512, column: 23)
!582 = !DILocation(line: 514, column: 7, scope: !581)
!583 = !DILocation(line: 515, column: 4, scope: !572)
!584 = !DILocation(line: 516, column: 11, scope: !509)
!585 = !DILocation(line: 516, column: 4, scope: !509)
!586 = !DILocation(line: 517, column: 1, scope: !509)
!587 = distinct !DISubprogram(name: "UtilGetLoginName", scope: !7, file: !7, line: 436, type: !588, isLocal: true, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!588 = !DISubroutineType(types: !589)
!589 = !{!8, !313}
!590 = !DILocalVariable(name: "pwd", arg: 1, scope: !587, file: !7, line: 436, type: !313)
!591 = !DILocation(line: 436, column: 33, scope: !587)
!592 = !DILocation(line: 438, column: 8, scope: !593)
!593 = distinct !DILexicalBlock(scope: !587, file: !7, line: 438, column: 8)
!594 = !DILocation(line: 438, column: 12, scope: !593)
!595 = !DILocation(line: 438, column: 15, scope: !596)
!596 = !DILexicalBlockFile(scope: !593, file: !7, discriminator: 1)
!597 = !DILocation(line: 438, column: 20, scope: !596)
!598 = !DILocation(line: 438, column: 8, scope: !596)
!599 = !DILocation(line: 439, column: 31, scope: !600)
!600 = distinct !DILexicalBlock(scope: !593, file: !7, line: 438, column: 29)
!601 = !DILocation(line: 439, column: 36, scope: !600)
!602 = !DILocation(line: 439, column: 14, scope: !600)
!603 = !DILocation(line: 439, column: 7, scope: !600)
!604 = !DILocation(line: 441, column: 7, scope: !605)
!605 = distinct !DILexicalBlock(scope: !593, file: !7, line: 440, column: 11)
!606 = !DILocation(line: 443, column: 1, scope: !587)
!607 = distinct !DISubprogram(name: "Util_OverrideHomeDir", scope: !7, file: !7, line: 793, type: !608, isLocal: false, isDefinition: true, scopeLine: 794, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !16}
!610 = !DILocalVariable(name: "path", arg: 1, scope: !607, file: !7, line: 793, type: !16)
!611 = !DILocation(line: 793, column: 34, scope: !607)
!612 = !DILocation(line: 796, column: 40, scope: !607)
!613 = !DILocation(line: 796, column: 23, scope: !607)
!614 = !DILocation(line: 796, column: 21, scope: !607)
!615 = !DILocation(line: 797, column: 1, scope: !607)
!616 = distinct !DISubprogram(name: "Util_IPv4AddrValid", scope: !7, file: !7, line: 1038, type: !44, isLocal: false, isDefinition: true, scopeLine: 1039, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!617 = !DILocalVariable(name: "addr", arg: 1, scope: !616, file: !7, line: 1038, type: !16)
!618 = !DILocation(line: 1038, column: 32, scope: !616)
!619 = !DILocalVariable(name: "dummyInAddr", scope: !616, file: !7, line: 1040, type: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !621, line: 31, size: 32, align: 32, elements: !622)
!621 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/open-vm-tools/line699")
!622 = !{!623}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !620, file: !621, line: 33, baseType: !624, size: 32, align: 32)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !621, line: 30, baseType: !625)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !626, line: 51, baseType: !322)
!626 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line699")
!627 = !DILocation(line: 1040, column: 19, scope: !616)
!628 = !DILocation(line: 1042, column: 29, scope: !616)
!629 = !DILocation(line: 1042, column: 35, scope: !616)
!630 = !DILocation(line: 1042, column: 11, scope: !616)
!631 = !DILocation(line: 1042, column: 49, scope: !616)
!632 = !DILocation(line: 1042, column: 4, scope: !616)
!633 = distinct !DISubprogram(name: "Util_IPv6AddrValid", scope: !7, file: !7, line: 1062, type: !44, isLocal: false, isDefinition: true, scopeLine: 1063, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!634 = !DILocalVariable(name: "addr", arg: 1, scope: !633, file: !7, line: 1062, type: !16)
!635 = !DILocation(line: 1062, column: 32, scope: !633)
!636 = !DILocalVariable(name: "dummyInAddr", scope: !633, file: !7, line: 1064, type: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !621, line: 211, size: 128, align: 32, elements: !638)
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !637, file: !621, line: 220, baseType: !640, size: 128, align: 32)
!640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !637, file: !621, line: 213, size: 128, align: 32, elements: !641)
!641 = !{!642, !648, !654}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !640, file: !621, line: 215, baseType: !643, size: 128, align: 8)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 128, align: 8, elements: !646)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !626, line: 48, baseType: !645)
!645 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!646 = !{!647}
!647 = !DISubrange(count: 16)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !640, file: !621, line: 217, baseType: !649, size: 128, align: 16)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 128, align: 16, elements: !652)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !626, line: 49, baseType: !651)
!651 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!652 = !{!653}
!653 = !DISubrange(count: 8)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !640, file: !621, line: 218, baseType: !655, size: 128, align: 32)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !625, size: 128, align: 32, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: 4)
!658 = !DILocation(line: 1064, column: 20, scope: !633)
!659 = !DILocalVariable(name: "ipv6AddrStr", scope: !633, file: !7, line: 1065, type: !660)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 376, align: 8, elements: !661)
!661 = !{!662}
!662 = !DISubrange(count: 47)
!663 = !DILocation(line: 1065, column: 9, scope: !633)
!664 = !DILocation(line: 1073, column: 15, scope: !665)
!665 = distinct !DILexicalBlock(scope: !633, file: !7, line: 1073, column: 8)
!666 = !DILocation(line: 1074, column: 15, scope: !665)
!667 = !DILocation(line: 1073, column: 8, scope: !665)
!668 = !DILocation(line: 1074, column: 28, scope: !665)
!669 = !DILocation(line: 1073, column: 8, scope: !633)
!670 = !DILocation(line: 1075, column: 7, scope: !671)
!671 = distinct !DILexicalBlock(scope: !665, file: !7, line: 1074, column: 34)
!672 = !DILocation(line: 1077, column: 30, scope: !633)
!673 = !DILocation(line: 1077, column: 43, scope: !633)
!674 = !DILocation(line: 1077, column: 11, scope: !633)
!675 = !DILocation(line: 1077, column: 57, scope: !633)
!676 = !DILocation(line: 1077, column: 4, scope: !633)
!677 = !DILocation(line: 1078, column: 1, scope: !633)
!678 = distinct !DISubprogram(name: "Util_IPAddrValid", scope: !7, file: !7, line: 1097, type: !44, isLocal: false, isDefinition: true, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!679 = !DILocalVariable(name: "addr", arg: 1, scope: !678, file: !7, line: 1097, type: !16)
!680 = !DILocation(line: 1097, column: 30, scope: !678)
!681 = !DILocation(line: 1099, column: 30, scope: !678)
!682 = !DILocation(line: 1099, column: 11, scope: !678)
!683 = !DILocation(line: 1099, column: 36, scope: !678)
!684 = !DILocation(line: 1099, column: 58, scope: !685)
!685 = !DILexicalBlockFile(scope: !678, file: !7, discriminator: 1)
!686 = !DILocation(line: 1099, column: 39, scope: !685)
!687 = !DILocation(line: 1099, column: 36, scope: !685)
!688 = !DILocation(line: 1099, column: 36, scope: !689)
!689 = !DILexicalBlockFile(scope: !678, file: !7, discriminator: 2)
!690 = !DILocation(line: 1099, column: 11, scope: !689)
!691 = !DILocation(line: 1099, column: 4, scope: !689)
!692 = distinct !DISubprogram(name: "UtilGetHomeDirectory", scope: !7, file: !7, line: 409, type: !588, isLocal: true, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!693 = !DILocalVariable(name: "pwd", arg: 1, scope: !692, file: !7, line: 409, type: !313)
!694 = !DILocation(line: 409, column: 37, scope: !692)
!695 = !DILocation(line: 411, column: 8, scope: !696)
!696 = distinct !DILexicalBlock(scope: !692, file: !7, line: 411, column: 8)
!697 = !DILocation(line: 411, column: 12, scope: !696)
!698 = !DILocation(line: 411, column: 15, scope: !699)
!699 = !DILexicalBlockFile(scope: !696, file: !7, discriminator: 1)
!700 = !DILocation(line: 411, column: 20, scope: !699)
!701 = !DILocation(line: 411, column: 8, scope: !699)
!702 = !DILocation(line: 412, column: 31, scope: !703)
!703 = distinct !DILexicalBlock(scope: !696, file: !7, line: 411, column: 28)
!704 = !DILocation(line: 412, column: 36, scope: !703)
!705 = !DILocation(line: 412, column: 14, scope: !703)
!706 = !DILocation(line: 412, column: 7, scope: !703)
!707 = !DILocation(line: 414, column: 7, scope: !708)
!708 = distinct !DILexicalBlock(scope: !696, file: !7, line: 413, column: 11)
!709 = !DILocation(line: 416, column: 1, scope: !692)
