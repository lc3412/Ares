; ModuleID = './[inter]dpkg-split--join.o.i'
source_filename = "./[inter]dpkg-split--join.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
%struct.partinfo = type { %struct.deb_version, i8*, i8*, i8*, i8*, i8*, i64, i32, i32, i64, i64, i64, i64, i64 }
%struct.deb_version = type { i32, i32 }
%struct.dpkg_error = type { i32, i32, i8* }
%struct.partqueue = type { %struct.partqueue*, %struct.partinfo }

@.str = private unnamed_addr constant [43 x i8] c"Putting package %s together from %d part: \00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Putting package %s together from %d parts: \00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"unable to open output file '%.250s'\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"unable to (re)open input part file '%.250s'\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"cannot skip split package header for '%s': %s\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"cannot append split package part '%s' to '%s': %s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"unable to sync file '%s'\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"unable to close file '%s'\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"files '%.250s' and '%.250s' are not parts of the same file\00", align 1
@.str.11 = private unnamed_addr constant [71 x i8] c"there are several versions of part %d - at least '%.250s' and '%.250s'\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"--%s requires one or more part file arguments\00", align 1
@cipaction = external global %struct.cmdinfo*, align 8
@.str.13 = private unnamed_addr constant [7 x i8] c"join.c\00", align 1
@__func__.do_join = private unnamed_addr constant [8 x i8] c"do_join\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"empty deb part queue\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"part %d is missing\00", align 1
@opt_outputfile = external global i8*, align 8
@.str.16 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c".deb\00", align 1

; Function Attrs: nounwind uwtable
define void @reassemble(%struct.partinfo**, i8*) #0 !dbg !14 {
  %3 = alloca %struct.partinfo**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dpkg_error, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.partinfo*, align 8
  store %struct.partinfo** %0, %struct.partinfo*** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.partinfo*** %3, metadata !53, metadata !54), !dbg !55
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !56, metadata !54), !dbg !57
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %5, metadata !58, metadata !54), !dbg !65
  call void @llvm.dbg.declare(metadata i32* %6, metadata !66, metadata !54), !dbg !67
  call void @llvm.dbg.declare(metadata i32* %7, metadata !68, metadata !54), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %8, metadata !70, metadata !54), !dbg !71
  %10 = load %struct.partinfo**, %struct.partinfo*** %3, align 8, !dbg !72
  %11 = getelementptr inbounds %struct.partinfo*, %struct.partinfo** %10, i64 0, !dbg !72
  %12 = load %struct.partinfo*, %struct.partinfo** %11, align 8, !dbg !72
  %13 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %12, i32 0, i32 8, !dbg !73
  %14 = load i32, i32* %13, align 4, !dbg !73
  %15 = zext i32 %14 to i64, !dbg !72
  %16 = call i8* @ngettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0), i64 %15) #6, !dbg !74
  %17 = load %struct.partinfo**, %struct.partinfo*** %3, align 8, !dbg !75
  %18 = getelementptr inbounds %struct.partinfo*, %struct.partinfo** %17, i64 0, !dbg !75
  %19 = load %struct.partinfo*, %struct.partinfo** %18, align 8, !dbg !75
  %20 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %19, i32 0, i32 2, !dbg !76
  %21 = load i8*, i8** %20, align 8, !dbg !76
  %22 = load %struct.partinfo**, %struct.partinfo*** %3, align 8, !dbg !77
  %23 = getelementptr inbounds %struct.partinfo*, %struct.partinfo** %22, i64 0, !dbg !77
  %24 = load %struct.partinfo*, %struct.partinfo** %23, align 8, !dbg !77
  %25 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %24, i32 0, i32 8, !dbg !78
  %26 = load i32, i32* %25, align 4, !dbg !78
  %27 = call i32 (i8*, ...) @printf(i8* %16, i8* %21, i32 %26), !dbg !79
  %28 = load i8*, i8** %4, align 8, !dbg !81
  %29 = call i32 @creat(i8* %28, i32 420), !dbg !82
  store i32 %29, i32* %6, align 4, !dbg !83
  %30 = load i32, i32* %6, align 4, !dbg !84
  %31 = icmp slt i32 %30, 0, !dbg !86
  br i1 %31, label %32, label %35, !dbg !87

; <label>:32:                                     ; preds = %2
  %33 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0)) #6, !dbg !88
  %34 = load i8*, i8** %4, align 8, !dbg !89
  call void (i8*, ...) @ohshite(i8* %33, i8* %34) #7, !dbg !90
  unreachable, !dbg !92

; <label>:35:                                     ; preds = %2
  store i32 0, i32* %8, align 4, !dbg !93
  br label %36, !dbg !95

; <label>:36:                                     ; preds = %97, %35
  %37 = load i32, i32* %8, align 4, !dbg !96
  %38 = load %struct.partinfo**, %struct.partinfo*** %3, align 8, !dbg !99
  %39 = getelementptr inbounds %struct.partinfo*, %struct.partinfo** %38, i64 0, !dbg !99
  %40 = load %struct.partinfo*, %struct.partinfo** %39, align 8, !dbg !99
  %41 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %40, i32 0, i32 8, !dbg !100
  %42 = load i32, i32* %41, align 4, !dbg !100
  %43 = icmp ult i32 %37, %42, !dbg !101
  br i1 %43, label %44, label %100, !dbg !102

; <label>:44:                                     ; preds = %36
  call void @llvm.dbg.declare(metadata %struct.partinfo** %9, metadata !103, metadata !54), !dbg !105
  %45 = load i32, i32* %8, align 4, !dbg !106
  %46 = zext i32 %45 to i64, !dbg !107
  %47 = load %struct.partinfo**, %struct.partinfo*** %3, align 8, !dbg !107
  %48 = getelementptr inbounds %struct.partinfo*, %struct.partinfo** %47, i64 %46, !dbg !107
  %49 = load %struct.partinfo*, %struct.partinfo** %48, align 8, !dbg !107
  store %struct.partinfo* %49, %struct.partinfo** %9, align 8, !dbg !105
  %50 = load %struct.partinfo*, %struct.partinfo** %9, align 8, !dbg !108
  %51 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %50, i32 0, i32 1, !dbg !109
  %52 = load i8*, i8** %51, align 8, !dbg !109
  %53 = call i32 (i8*, i32, ...) @open(i8* %52, i32 0), !dbg !110
  store i32 %53, i32* %7, align 4, !dbg !111
  %54 = load i32, i32* %7, align 4, !dbg !112
  %55 = icmp slt i32 %54, 0, !dbg !114
  br i1 %55, label %56, label %61, !dbg !115

; <label>:56:                                     ; preds = %44
  %57 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0)) #6, !dbg !116
  %58 = load %struct.partinfo*, %struct.partinfo** %9, align 8, !dbg !117
  %59 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %58, i32 0, i32 1, !dbg !118
  %60 = load i8*, i8** %59, align 8, !dbg !118
  call void (i8*, ...) @ohshite(i8* %57, i8* %60) #7, !dbg !119
  unreachable, !dbg !121

; <label>:61:                                     ; preds = %44
  %62 = load i32, i32* %7, align 4, !dbg !122
  %63 = load %struct.partinfo*, %struct.partinfo** %9, align 8, !dbg !124
  %64 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %63, i32 0, i32 12, !dbg !125
  %65 = load i64, i64* %64, align 8, !dbg !125
  %66 = call i64 @buffer_skip_Int(i32 %62, i32 0, i64 %65, %struct.dpkg_error* %5), !dbg !126
  %67 = icmp slt i64 %66, 0, !dbg !127
  br i1 %67, label %68, label %75, !dbg !128

; <label>:68:                                     ; preds = %61
  %69 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i32 0, i32 0)) #6, !dbg !129
  %70 = load %struct.partinfo*, %struct.partinfo** %9, align 8, !dbg !130
  %71 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %70, i32 0, i32 1, !dbg !131
  %72 = load i8*, i8** %71, align 8, !dbg !131
  %73 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %5, i32 0, i32 2, !dbg !132
  %74 = load i8*, i8** %73, align 8, !dbg !132
  call void (i8*, ...) @ohshit(i8* %69, i8* %72, i8* %74) #7, !dbg !133
  unreachable, !dbg !135

; <label>:75:                                     ; preds = %61
  %76 = load i32, i32* %7, align 4, !dbg !136
  %77 = load i32, i32* %6, align 4, !dbg !138
  %78 = load %struct.partinfo*, %struct.partinfo** %9, align 8, !dbg !139
  %79 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %78, i32 0, i32 11, !dbg !136
  %80 = load i64, i64* %79, align 8, !dbg !136
  %81 = call i64 @buffer_copy_IntInt(i32 %76, i32 0, i8* null, i32 4, i32 %77, i32 2, i64 %80, %struct.dpkg_error* %5), !dbg !140
  %82 = icmp slt i64 %81, 0, !dbg !141
  br i1 %82, label %83, label %91, !dbg !142

; <label>:83:                                     ; preds = %75
  %84 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0)) #6, !dbg !143
  %85 = load %struct.partinfo*, %struct.partinfo** %9, align 8, !dbg !144
  %86 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %85, i32 0, i32 1, !dbg !145
  %87 = load i8*, i8** %86, align 8, !dbg !145
  %88 = load i8*, i8** %4, align 8, !dbg !146
  %89 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %5, i32 0, i32 2, !dbg !147
  %90 = load i8*, i8** %89, align 8, !dbg !147
  call void (i8*, ...) @ohshit(i8* %84, i8* %87, i8* %88, i8* %90) #7, !dbg !148
  unreachable, !dbg !150

; <label>:91:                                     ; preds = %75
  %92 = load i32, i32* %7, align 4, !dbg !151
  %93 = call i32 @close(i32 %92), !dbg !152
  %94 = load i32, i32* %8, align 4, !dbg !153
  %95 = add i32 %94, 1, !dbg !154
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 %95), !dbg !155
  br label %97, !dbg !156

; <label>:97:                                     ; preds = %91
  %98 = load i32, i32* %8, align 4, !dbg !157
  %99 = add i32 %98, 1, !dbg !157
  store i32 %99, i32* %8, align 4, !dbg !157
  br label %36, !dbg !159, !llvm.loop !160

; <label>:100:                                    ; preds = %36
  %101 = load i32, i32* %6, align 4, !dbg !162
  %102 = call i32 @fsync(i32 %101), !dbg !164
  %103 = icmp ne i32 %102, 0, !dbg !164
  br i1 %103, label %104, label %107, !dbg !165

; <label>:104:                                    ; preds = %100
  %105 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0)) #6, !dbg !166
  %106 = load i8*, i8** %4, align 8, !dbg !167
  call void (i8*, ...) @ohshite(i8* %105, i8* %106) #7, !dbg !168
  unreachable, !dbg !170

; <label>:107:                                    ; preds = %100
  %108 = load i32, i32* %6, align 4, !dbg !171
  %109 = call i32 @close(i32 %108), !dbg !173
  %110 = icmp ne i32 %109, 0, !dbg !173
  br i1 %110, label %111, label %114, !dbg !174

; <label>:111:                                    ; preds = %107
  %112 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0)) #6, !dbg !175
  %113 = load i8*, i8** %4, align 8, !dbg !176
  call void (i8*, ...) @ohshite(i8* %112, i8* %113) #7, !dbg !177
  unreachable, !dbg !179

; <label>:114:                                    ; preds = %107
  %115 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)) #6, !dbg !180
  %116 = call i32 (i8*, ...) @printf(i8* %115), !dbg !181
  ret void, !dbg !182
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @ngettext(i8*, i8*, i64) #3

declare i32 @creat(i8*, i32) #2

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #4

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i32 @open(i8*, i32, ...) #2

declare i64 @buffer_skip_Int(i32, i32, i64, %struct.dpkg_error*) #2

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #4

declare i64 @buffer_copy_IntInt(i32, i32, i8*, i32, i32, i32, i64, %struct.dpkg_error*) #2

declare i32 @close(i32) #2

declare i32 @fsync(i32) #2

; Function Attrs: nounwind uwtable
define void @addtopartlist(%struct.partinfo**, %struct.partinfo*, %struct.partinfo*) #0 !dbg !183 {
  %4 = alloca %struct.partinfo**, align 8
  %5 = alloca %struct.partinfo*, align 8
  %6 = alloca %struct.partinfo*, align 8
  %7 = alloca i32, align 4
  store %struct.partinfo** %0, %struct.partinfo*** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.partinfo*** %4, metadata !186, metadata !54), !dbg !187
  store %struct.partinfo* %1, %struct.partinfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.partinfo** %5, metadata !188, metadata !54), !dbg !189
  store %struct.partinfo* %2, %struct.partinfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.partinfo** %6, metadata !190, metadata !54), !dbg !191
  call void @llvm.dbg.declare(metadata i32* %7, metadata !192, metadata !54), !dbg !193
  %8 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !194
  %9 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %8, i32 0, i32 2, !dbg !196
  %10 = load i8*, i8** %9, align 8, !dbg !196
  %11 = load %struct.partinfo*, %struct.partinfo** %6, align 8, !dbg !197
  %12 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %11, i32 0, i32 2, !dbg !198
  %13 = load i8*, i8** %12, align 8, !dbg !198
  %14 = call i32 @strcmp(i8* %10, i8* %13) #8, !dbg !199
  %15 = icmp ne i32 %14, 0, !dbg !199
  br i1 %15, label %58, label %16, !dbg !200

; <label>:16:                                     ; preds = %3
  %17 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !201
  %18 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %17, i32 0, i32 3, !dbg !202
  %19 = load i8*, i8** %18, align 8, !dbg !202
  %20 = load %struct.partinfo*, %struct.partinfo** %6, align 8, !dbg !203
  %21 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %20, i32 0, i32 3, !dbg !204
  %22 = load i8*, i8** %21, align 8, !dbg !204
  %23 = call i32 @strcmp(i8* %19, i8* %22) #8, !dbg !205
  %24 = icmp ne i32 %23, 0, !dbg !205
  br i1 %24, label %58, label %25, !dbg !206

; <label>:25:                                     ; preds = %16
  %26 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !207
  %27 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %26, i32 0, i32 5, !dbg !208
  %28 = load i8*, i8** %27, align 8, !dbg !208
  %29 = load %struct.partinfo*, %struct.partinfo** %6, align 8, !dbg !209
  %30 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %29, i32 0, i32 5, !dbg !210
  %31 = load i8*, i8** %30, align 8, !dbg !210
  %32 = call i32 @strcmp(i8* %28, i8* %31) #8, !dbg !211
  %33 = icmp ne i32 %32, 0, !dbg !211
  br i1 %33, label %58, label %34, !dbg !212

; <label>:34:                                     ; preds = %25
  %35 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !213
  %36 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %35, i32 0, i32 6, !dbg !214
  %37 = load i64, i64* %36, align 8, !dbg !214
  %38 = load %struct.partinfo*, %struct.partinfo** %6, align 8, !dbg !215
  %39 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %38, i32 0, i32 6, !dbg !216
  %40 = load i64, i64* %39, align 8, !dbg !216
  %41 = icmp ne i64 %37, %40, !dbg !217
  br i1 %41, label %58, label %42, !dbg !218

; <label>:42:                                     ; preds = %34
  %43 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !219
  %44 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %43, i32 0, i32 8, !dbg !220
  %45 = load i32, i32* %44, align 4, !dbg !220
  %46 = load %struct.partinfo*, %struct.partinfo** %6, align 8, !dbg !221
  %47 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %46, i32 0, i32 8, !dbg !222
  %48 = load i32, i32* %47, align 4, !dbg !222
  %49 = icmp ne i32 %45, %48, !dbg !223
  br i1 %49, label %58, label %50, !dbg !224

; <label>:50:                                     ; preds = %42
  %51 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !225
  %52 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %51, i32 0, i32 9, !dbg !226
  %53 = load i64, i64* %52, align 8, !dbg !226
  %54 = load %struct.partinfo*, %struct.partinfo** %6, align 8, !dbg !227
  %55 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %54, i32 0, i32 9, !dbg !228
  %56 = load i64, i64* %55, align 8, !dbg !228
  %57 = icmp ne i64 %53, %56, !dbg !229
  br i1 %57, label %58, label %68, !dbg !230

; <label>:58:                                     ; preds = %50, %42, %34, %25, %16, %3
  %59 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !232
  call void @print_info(%struct.partinfo* %59), !dbg !234
  %60 = load %struct.partinfo*, %struct.partinfo** %6, align 8, !dbg !235
  call void @print_info(%struct.partinfo* %60), !dbg !236
  %61 = call i8* @gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i32 0, i32 0)) #6, !dbg !237
  %62 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !238
  %63 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %62, i32 0, i32 1, !dbg !239
  %64 = load i8*, i8** %63, align 8, !dbg !239
  %65 = load %struct.partinfo*, %struct.partinfo** %6, align 8, !dbg !240
  %66 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %65, i32 0, i32 1, !dbg !241
  %67 = load i8*, i8** %66, align 8, !dbg !241
  call void (i8*, ...) @ohshit(i8* %61, i8* %64, i8* %67) #7, !dbg !242
  unreachable, !dbg !244

; <label>:68:                                     ; preds = %50
  %69 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !245
  %70 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %69, i32 0, i32 7, !dbg !246
  %71 = load i32, i32* %70, align 8, !dbg !246
  %72 = sub i32 %71, 1, !dbg !247
  store i32 %72, i32* %7, align 4, !dbg !248
  %73 = load i32, i32* %7, align 4, !dbg !249
  %74 = sext i32 %73 to i64, !dbg !251
  %75 = load %struct.partinfo**, %struct.partinfo*** %4, align 8, !dbg !251
  %76 = getelementptr inbounds %struct.partinfo*, %struct.partinfo** %75, i64 %74, !dbg !251
  %77 = load %struct.partinfo*, %struct.partinfo** %76, align 8, !dbg !251
  %78 = icmp ne %struct.partinfo* %77, null, !dbg !251
  br i1 %78, label %79, label %94, !dbg !252

; <label>:79:                                     ; preds = %68
  %80 = call i8* @gettext(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.11, i32 0, i32 0)) #6, !dbg !253
  %81 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !254
  %82 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %81, i32 0, i32 7, !dbg !255
  %83 = load i32, i32* %82, align 8, !dbg !255
  %84 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !256
  %85 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %84, i32 0, i32 1, !dbg !257
  %86 = load i8*, i8** %85, align 8, !dbg !257
  %87 = load i32, i32* %7, align 4, !dbg !258
  %88 = sext i32 %87 to i64, !dbg !259
  %89 = load %struct.partinfo**, %struct.partinfo*** %4, align 8, !dbg !259
  %90 = getelementptr inbounds %struct.partinfo*, %struct.partinfo** %89, i64 %88, !dbg !259
  %91 = load %struct.partinfo*, %struct.partinfo** %90, align 8, !dbg !259
  %92 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %91, i32 0, i32 1, !dbg !260
  %93 = load i8*, i8** %92, align 8, !dbg !260
  call void (i8*, ...) @ohshit(i8* %80, i32 %83, i8* %86, i8* %93) #7, !dbg !261
  unreachable, !dbg !263

; <label>:94:                                     ; preds = %68
  %95 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !264
  %96 = load i32, i32* %7, align 4, !dbg !265
  %97 = sext i32 %96 to i64, !dbg !266
  %98 = load %struct.partinfo**, %struct.partinfo*** %4, align 8, !dbg !266
  %99 = getelementptr inbounds %struct.partinfo*, %struct.partinfo** %98, i64 %97, !dbg !266
  store %struct.partinfo* %95, %struct.partinfo** %99, align 8, !dbg !267
  ret void, !dbg !268
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare void @print_info(%struct.partinfo*) #2

; Function Attrs: nounwind uwtable
define i32 @do_join(i8**) #0 !dbg !269 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.partqueue*, align 8
  %5 = alloca %struct.partqueue*, align 8
  %6 = alloca %struct.partinfo*, align 8
  %7 = alloca %struct.partinfo**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.partinfo*, align 8
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !274, metadata !54), !dbg !275
  call void @llvm.dbg.declare(metadata i8** %3, metadata !276, metadata !54), !dbg !277
  call void @llvm.dbg.declare(metadata %struct.partqueue** %4, metadata !278, metadata !54), !dbg !284
  store %struct.partqueue* null, %struct.partqueue** %4, align 8, !dbg !284
  call void @llvm.dbg.declare(metadata %struct.partqueue** %5, metadata !285, metadata !54), !dbg !286
  call void @llvm.dbg.declare(metadata %struct.partinfo** %6, metadata !287, metadata !54), !dbg !288
  call void @llvm.dbg.declare(metadata %struct.partinfo*** %7, metadata !289, metadata !54), !dbg !290
  call void @llvm.dbg.declare(metadata i32* %8, metadata !291, metadata !54), !dbg !292
  %11 = load i8**, i8*** %2, align 8, !dbg !293
  %12 = load i8*, i8** %11, align 8, !dbg !295
  %13 = icmp ne i8* %12, null, !dbg !295
  br i1 %13, label %19, label %14, !dbg !296

; <label>:14:                                     ; preds = %1
  %15 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i32 0, i32 0)) #6, !dbg !297
  %16 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !298
  %17 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %16, i32 0, i32 0, !dbg !299
  %18 = load i8*, i8** %17, align 8, !dbg !299
  call void (i8*, ...) @badusage(i8* %15, i8* %18) #7, !dbg !300
  unreachable, !dbg !302

; <label>:19:                                     ; preds = %1
  br label %20, !dbg !303

; <label>:20:                                     ; preds = %25, %19
  %21 = load i8**, i8*** %2, align 8, !dbg !304
  %22 = getelementptr inbounds i8*, i8** %21, i32 1, !dbg !304
  store i8** %22, i8*** %2, align 8, !dbg !304
  %23 = load i8*, i8** %21, align 8, !dbg !306
  store i8* %23, i8** %3, align 8, !dbg !307
  %24 = icmp ne i8* %23, null, !dbg !308
  br i1 %24, label %25, label %35, !dbg !308

; <label>:25:                                     ; preds = %20
  %26 = call i8* @nfmalloc(i64 112), !dbg !309
  %27 = bitcast i8* %26 to %struct.partqueue*, !dbg !309
  store %struct.partqueue* %27, %struct.partqueue** %5, align 8, !dbg !311
  %28 = load i8*, i8** %3, align 8, !dbg !312
  %29 = load %struct.partqueue*, %struct.partqueue** %5, align 8, !dbg !313
  %30 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %29, i32 0, i32 1, !dbg !314
  call void @mustgetpartinfo(i8* %28, %struct.partinfo* %30), !dbg !315
  %31 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !316
  %32 = load %struct.partqueue*, %struct.partqueue** %5, align 8, !dbg !317
  %33 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %32, i32 0, i32 0, !dbg !318
  store %struct.partqueue* %31, %struct.partqueue** %33, align 8, !dbg !319
  %34 = load %struct.partqueue*, %struct.partqueue** %5, align 8, !dbg !320
  store %struct.partqueue* %34, %struct.partqueue** %4, align 8, !dbg !321
  br label %20, !dbg !322, !llvm.loop !324

; <label>:35:                                     ; preds = %20
  store %struct.partinfo* null, %struct.partinfo** %6, align 8, !dbg !325
  %36 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !326
  store %struct.partqueue* %36, %struct.partqueue** %5, align 8, !dbg !328
  br label %37, !dbg !329

; <label>:37:                                     ; preds = %56, %35
  %38 = load %struct.partqueue*, %struct.partqueue** %5, align 8, !dbg !330
  %39 = icmp ne %struct.partqueue* %38, null, !dbg !333
  br i1 %39, label %40, label %60, !dbg !333

; <label>:40:                                     ; preds = %37
  %41 = load %struct.partinfo*, %struct.partinfo** %6, align 8, !dbg !334
  %42 = icmp ne %struct.partinfo* %41, null, !dbg !334
  br i1 %42, label %43, label %52, !dbg !336

; <label>:43:                                     ; preds = %40
  %44 = load %struct.partqueue*, %struct.partqueue** %5, align 8, !dbg !337
  %45 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %44, i32 0, i32 1, !dbg !339
  %46 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %45, i32 0, i32 7, !dbg !340
  %47 = load i32, i32* %46, align 8, !dbg !340
  %48 = load %struct.partinfo*, %struct.partinfo** %6, align 8, !dbg !341
  %49 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %48, i32 0, i32 7, !dbg !342
  %50 = load i32, i32* %49, align 8, !dbg !342
  %51 = icmp ult i32 %47, %50, !dbg !343
  br i1 %51, label %52, label %55, !dbg !344

; <label>:52:                                     ; preds = %43, %40
  %53 = load %struct.partqueue*, %struct.partqueue** %5, align 8, !dbg !345
  %54 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %53, i32 0, i32 1, !dbg !347
  store %struct.partinfo* %54, %struct.partinfo** %6, align 8, !dbg !348
  br label %55, !dbg !349

; <label>:55:                                     ; preds = %52, %43
  br label %56, !dbg !350

; <label>:56:                                     ; preds = %55
  %57 = load %struct.partqueue*, %struct.partqueue** %5, align 8, !dbg !352
  %58 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %57, i32 0, i32 0, !dbg !354
  %59 = load %struct.partqueue*, %struct.partqueue** %58, align 8, !dbg !354
  store %struct.partqueue* %59, %struct.partqueue** %5, align 8, !dbg !355
  br label %37, !dbg !356, !llvm.loop !357

; <label>:60:                                     ; preds = %37
  %61 = load %struct.partinfo*, %struct.partinfo** %6, align 8, !dbg !359
  %62 = icmp eq %struct.partinfo* %61, null, !dbg !361
  br i1 %62, label %63, label %64, !dbg !362

; <label>:63:                                     ; preds = %60
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 123, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.do_join, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0)) #7, !dbg !363
  unreachable, !dbg !363

; <label>:64:                                     ; preds = %60
  %65 = load %struct.partinfo*, %struct.partinfo** %6, align 8, !dbg !364
  %66 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %65, i32 0, i32 8, !dbg !365
  %67 = load i32, i32* %66, align 4, !dbg !365
  %68 = zext i32 %67 to i64, !dbg !364
  %69 = mul i64 8, %68, !dbg !366
  %70 = call i8* @nfmalloc(i64 %69), !dbg !367
  %71 = bitcast i8* %70 to %struct.partinfo**, !dbg !367
  store %struct.partinfo** %71, %struct.partinfo*** %7, align 8, !dbg !368
  store i32 0, i32* %8, align 4, !dbg !369
  br label %72, !dbg !371

; <label>:72:                                     ; preds = %83, %64
  %73 = load i32, i32* %8, align 4, !dbg !372
  %74 = load %struct.partinfo*, %struct.partinfo** %6, align 8, !dbg !375
  %75 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %74, i32 0, i32 8, !dbg !376
  %76 = load i32, i32* %75, align 4, !dbg !376
  %77 = icmp ult i32 %73, %76, !dbg !377
  br i1 %77, label %78, label %86, !dbg !378

; <label>:78:                                     ; preds = %72
  %79 = load i32, i32* %8, align 4, !dbg !379
  %80 = zext i32 %79 to i64, !dbg !380
  %81 = load %struct.partinfo**, %struct.partinfo*** %7, align 8, !dbg !380
  %82 = getelementptr inbounds %struct.partinfo*, %struct.partinfo** %81, i64 %80, !dbg !380
  store %struct.partinfo* null, %struct.partinfo** %82, align 8, !dbg !381
  br label %83, !dbg !380

; <label>:83:                                     ; preds = %78
  %84 = load i32, i32* %8, align 4, !dbg !382
  %85 = add i32 %84, 1, !dbg !382
  store i32 %85, i32* %8, align 4, !dbg !382
  br label %72, !dbg !384, !llvm.loop !385

; <label>:86:                                     ; preds = %72
  %87 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !387
  store %struct.partqueue* %87, %struct.partqueue** %5, align 8, !dbg !389
  br label %88, !dbg !390

; <label>:88:                                     ; preds = %97, %86
  %89 = load %struct.partqueue*, %struct.partqueue** %5, align 8, !dbg !391
  %90 = icmp ne %struct.partqueue* %89, null, !dbg !394
  br i1 %90, label %91, label %101, !dbg !394

; <label>:91:                                     ; preds = %88
  call void @llvm.dbg.declare(metadata %struct.partinfo** %9, metadata !395, metadata !54), !dbg !397
  %92 = load %struct.partqueue*, %struct.partqueue** %5, align 8, !dbg !398
  %93 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %92, i32 0, i32 1, !dbg !399
  store %struct.partinfo* %93, %struct.partinfo** %9, align 8, !dbg !397
  %94 = load %struct.partinfo**, %struct.partinfo*** %7, align 8, !dbg !400
  %95 = load %struct.partinfo*, %struct.partinfo** %9, align 8, !dbg !401
  %96 = load %struct.partinfo*, %struct.partinfo** %6, align 8, !dbg !402
  call void @addtopartlist(%struct.partinfo** %94, %struct.partinfo* %95, %struct.partinfo* %96), !dbg !403
  br label %97, !dbg !404

; <label>:97:                                     ; preds = %91
  %98 = load %struct.partqueue*, %struct.partqueue** %5, align 8, !dbg !405
  %99 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %98, i32 0, i32 0, !dbg !407
  %100 = load %struct.partqueue*, %struct.partqueue** %99, align 8, !dbg !407
  store %struct.partqueue* %100, %struct.partqueue** %5, align 8, !dbg !408
  br label %88, !dbg !409, !llvm.loop !410

; <label>:101:                                    ; preds = %88
  store i32 0, i32* %8, align 4, !dbg !412
  br label %102, !dbg !414

; <label>:102:                                    ; preds = %120, %101
  %103 = load i32, i32* %8, align 4, !dbg !415
  %104 = load %struct.partinfo*, %struct.partinfo** %6, align 8, !dbg !418
  %105 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %104, i32 0, i32 8, !dbg !419
  %106 = load i32, i32* %105, align 4, !dbg !419
  %107 = icmp ult i32 %103, %106, !dbg !420
  br i1 %107, label %108, label %123, !dbg !421

; <label>:108:                                    ; preds = %102
  %109 = load i32, i32* %8, align 4, !dbg !422
  %110 = zext i32 %109 to i64, !dbg !425
  %111 = load %struct.partinfo**, %struct.partinfo*** %7, align 8, !dbg !425
  %112 = getelementptr inbounds %struct.partinfo*, %struct.partinfo** %111, i64 %110, !dbg !425
  %113 = load %struct.partinfo*, %struct.partinfo** %112, align 8, !dbg !425
  %114 = icmp ne %struct.partinfo* %113, null, !dbg !425
  br i1 %114, label %119, label %115, !dbg !426

; <label>:115:                                    ; preds = %108
  %116 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0)) #6, !dbg !427
  %117 = load i32, i32* %8, align 4, !dbg !429
  %118 = add i32 %117, 1, !dbg !430
  call void (i8*, ...) @ohshit(i8* %116, i32 %118) #7, !dbg !431
  unreachable, !dbg !433

; <label>:119:                                    ; preds = %108
  br label %120, !dbg !434

; <label>:120:                                    ; preds = %119
  %121 = load i32, i32* %8, align 4, !dbg !435
  %122 = add i32 %121, 1, !dbg !435
  store i32 %122, i32* %8, align 4, !dbg !435
  br label %102, !dbg !437, !llvm.loop !438

; <label>:123:                                    ; preds = %102
  %124 = load i8*, i8** @opt_outputfile, align 8, !dbg !440
  %125 = icmp ne i8* %124, null, !dbg !440
  br i1 %125, label %169, label %126, !dbg !442

; <label>:126:                                    ; preds = %123
  call void @llvm.dbg.declare(metadata i8** %10, metadata !443, metadata !54), !dbg !445
  %127 = load %struct.partinfo*, %struct.partinfo** %6, align 8, !dbg !446
  %128 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %127, i32 0, i32 2, !dbg !447
  %129 = load i8*, i8** %128, align 8, !dbg !447
  %130 = call i64 @strlen(i8* %129) #8, !dbg !448
  %131 = add i64 %130, 1, !dbg !449
  %132 = load %struct.partinfo*, %struct.partinfo** %6, align 8, !dbg !450
  %133 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %132, i32 0, i32 3, !dbg !451
  %134 = load i8*, i8** %133, align 8, !dbg !451
  %135 = call i64 @strlen(i8* %134) #8, !dbg !452
  %136 = add i64 %131, %135, !dbg !454
  %137 = add i64 %136, 5, !dbg !455
  %138 = call i8* @nfmalloc(i64 %137), !dbg !456
  store i8* %138, i8** %10, align 8, !dbg !458
  %139 = load i8*, i8** %10, align 8, !dbg !459
  %140 = load %struct.partinfo*, %struct.partinfo** %6, align 8, !dbg !460
  %141 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %140, i32 0, i32 2, !dbg !461
  %142 = load i8*, i8** %141, align 8, !dbg !461
  %143 = call i8* @strcpy(i8* %139, i8* %142) #6, !dbg !462
  %144 = load i8*, i8** %10, align 8, !dbg !463
  %145 = call i8* @strcat(i8* %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0)) #6, !dbg !464
  %146 = load i8*, i8** %10, align 8, !dbg !465
  %147 = load %struct.partinfo*, %struct.partinfo** %6, align 8, !dbg !466
  %148 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %147, i32 0, i32 3, !dbg !467
  %149 = load i8*, i8** %148, align 8, !dbg !467
  %150 = call i8* @strcat(i8* %146, i8* %149) #6, !dbg !468
  %151 = load i8*, i8** %10, align 8, !dbg !469
  %152 = call i8* @strcat(i8* %151, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0)) #6, !dbg !470
  %153 = load i8*, i8** %10, align 8, !dbg !471
  %154 = load %struct.partinfo*, %struct.partinfo** %6, align 8, !dbg !472
  %155 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %154, i32 0, i32 4, !dbg !473
  %156 = load i8*, i8** %155, align 8, !dbg !473
  %157 = icmp ne i8* %156, null, !dbg !472
  br i1 %157, label %158, label %162, !dbg !472

; <label>:158:                                    ; preds = %126
  %159 = load %struct.partinfo*, %struct.partinfo** %6, align 8, !dbg !474
  %160 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %159, i32 0, i32 4, !dbg !475
  %161 = load i8*, i8** %160, align 8, !dbg !475
  br label %163, !dbg !476

; <label>:162:                                    ; preds = %126
  br label %163, !dbg !477

; <label>:163:                                    ; preds = %162, %158
  %164 = phi i8* [ %161, %158 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), %162 ], !dbg !478
  %165 = call i8* @strcat(i8* %153, i8* %164) #6, !dbg !480
  %166 = load i8*, i8** %10, align 8, !dbg !481
  %167 = call i8* @strcat(i8* %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0)) #6, !dbg !482
  %168 = load i8*, i8** %10, align 8, !dbg !483
  store i8* %168, i8** @opt_outputfile, align 8, !dbg !484
  br label %169, !dbg !485

; <label>:169:                                    ; preds = %163, %123
  %170 = load %struct.partinfo**, %struct.partinfo*** %7, align 8, !dbg !486
  %171 = load i8*, i8** @opt_outputfile, align 8, !dbg !487
  call void @reassemble(%struct.partinfo** %170, i8* %171), !dbg !488
  ret i32 0, !dbg !489
}

; Function Attrs: noreturn
declare void @badusage(i8*, ...) #4

declare i8* @nfmalloc(i64) #2

declare void @mustgetpartinfo(i8*, %struct.partinfo*) #2

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9)
!1 = !DIFile(filename: "[inter]dpkg-split--join.o.i", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !4, line: 36, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!7 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!8 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!9 = !{!10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!14 = distinct !DISubprogram(name: "reassemble", scope: !15, file: !15, line: 39, type: !16, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !52)
!15 = !DIFile(filename: "join.c", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !31}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partinfo", file: !21, line: 35, size: 832, align: 64, elements: !22)
!21 = !DIFile(filename: "dpkg-split.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!22 = !{!23, !30, !34, !35, !36, !37, !38, !44, !46, !47, !48, !49, !50, !51}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "fmtversion", scope: !20, file: !21, line: 36, baseType: !24, size: 64, align: 32)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deb_version", file: !25, line: 37, size: 64, align: 32, elements: !26)
!25 = !DIFile(filename: "../lib/dpkg/deb-version.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!26 = !{!27, !29}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !24, file: !25, line: 38, baseType: !28, size: 32, align: 32)
!28 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !24, file: !25, line: 39, baseType: !28, size: 32, align: 32, offset: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !20, file: !21, line: 37, baseType: !31, size: 64, align: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !20, file: !21, line: 38, baseType: !31, size: 64, align: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !20, file: !21, line: 39, baseType: !31, size: 64, align: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !20, file: !21, line: 40, baseType: !31, size: 64, align: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !20, file: !21, line: 41, baseType: !31, size: 64, align: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "orglength", scope: !20, file: !21, line: 42, baseType: !39, size: 64, align: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !40, line: 86, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !42, line: 131, baseType: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!43 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "thispartn", scope: !20, file: !21, line: 43, baseType: !45, size: 32, align: 32, offset: 448)
!45 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "maxpartn", scope: !20, file: !21, line: 43, baseType: !45, size: 32, align: 32, offset: 480)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "maxpartlen", scope: !20, file: !21, line: 44, baseType: !39, size: 64, align: 64, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "thispartoffset", scope: !20, file: !21, line: 45, baseType: !39, size: 64, align: 64, offset: 576)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "thispartlen", scope: !20, file: !21, line: 46, baseType: !39, size: 64, align: 64, offset: 640)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "headerlen", scope: !20, file: !21, line: 48, baseType: !39, size: 64, align: 64, offset: 704)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "filesize", scope: !20, file: !21, line: 49, baseType: !39, size: 64, align: 64, offset: 768)
!52 = !{}
!53 = !DILocalVariable(name: "partlist", arg: 1, scope: !14, file: !15, line: 39, type: !18)
!54 = !DIExpression()
!55 = !DILocation(line: 39, column: 35, scope: !14)
!56 = !DILocalVariable(name: "outputfile", arg: 2, scope: !14, file: !15, line: 39, type: !31)
!57 = !DILocation(line: 39, column: 57, scope: !14)
!58 = !DILocalVariable(name: "err", scope: !14, file: !15, line: 40, type: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !4, line: 42, size: 128, align: 64, elements: !60)
!60 = !{!61, !62, !63}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !59, file: !4, line: 43, baseType: !3, size: 32, align: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !59, file: !4, line: 45, baseType: !28, size: 32, align: 32, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !59, file: !4, line: 46, baseType: !64, size: 64, align: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!65 = !DILocation(line: 40, column: 21, scope: !14)
!66 = !DILocalVariable(name: "fd_out", scope: !14, file: !15, line: 41, type: !28)
!67 = !DILocation(line: 41, column: 7, scope: !14)
!68 = !DILocalVariable(name: "fd_in", scope: !14, file: !15, line: 41, type: !28)
!69 = !DILocation(line: 41, column: 15, scope: !14)
!70 = !DILocalVariable(name: "i", scope: !14, file: !15, line: 42, type: !45)
!71 = !DILocation(line: 42, column: 16, scope: !14)
!72 = !DILocation(line: 44, column: 112, scope: !14)
!73 = !DILocation(line: 44, column: 125, scope: !14)
!74 = !DILocation(line: 44, column: 10, scope: !14)
!75 = !DILocation(line: 47, column: 10, scope: !14)
!76 = !DILocation(line: 47, column: 23, scope: !14)
!77 = !DILocation(line: 47, column: 31, scope: !14)
!78 = !DILocation(line: 47, column: 44, scope: !14)
!79 = !DILocation(line: 44, column: 3, scope: !80)
!80 = !DILexicalBlockFile(scope: !14, file: !15, discriminator: 1)
!81 = !DILocation(line: 49, column: 18, scope: !14)
!82 = !DILocation(line: 49, column: 12, scope: !14)
!83 = !DILocation(line: 49, column: 10, scope: !14)
!84 = !DILocation(line: 50, column: 7, scope: !85)
!85 = distinct !DILexicalBlock(scope: !14, file: !15, line: 50, column: 7)
!86 = !DILocation(line: 50, column: 14, scope: !85)
!87 = !DILocation(line: 50, column: 7, scope: !14)
!88 = !DILocation(line: 51, column: 13, scope: !85)
!89 = !DILocation(line: 51, column: 61, scope: !85)
!90 = !DILocation(line: 51, column: 5, scope: !91)
!91 = !DILexicalBlockFile(scope: !85, file: !15, discriminator: 1)
!92 = !DILocation(line: 51, column: 5, scope: !85)
!93 = !DILocation(line: 52, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !14, file: !15, line: 52, column: 3)
!95 = !DILocation(line: 52, column: 8, scope: !94)
!96 = !DILocation(line: 52, column: 13, scope: !97)
!97 = !DILexicalBlockFile(scope: !98, file: !15, discriminator: 1)
!98 = distinct !DILexicalBlock(scope: !94, file: !15, line: 52, column: 3)
!99 = !DILocation(line: 52, column: 15, scope: !97)
!100 = !DILocation(line: 52, column: 28, scope: !97)
!101 = !DILocation(line: 52, column: 14, scope: !97)
!102 = !DILocation(line: 52, column: 3, scope: !97)
!103 = !DILocalVariable(name: "pi", scope: !104, file: !15, line: 53, type: !19)
!104 = distinct !DILexicalBlock(scope: !98, file: !15, line: 52, column: 43)
!105 = !DILocation(line: 53, column: 22, scope: !104)
!106 = !DILocation(line: 53, column: 36, scope: !104)
!107 = !DILocation(line: 53, column: 27, scope: !104)
!108 = !DILocation(line: 55, column: 18, scope: !104)
!109 = !DILocation(line: 55, column: 22, scope: !104)
!110 = !DILocation(line: 55, column: 13, scope: !104)
!111 = !DILocation(line: 55, column: 11, scope: !104)
!112 = !DILocation(line: 56, column: 9, scope: !113)
!113 = distinct !DILexicalBlock(scope: !104, file: !15, line: 56, column: 9)
!114 = !DILocation(line: 56, column: 15, scope: !113)
!115 = !DILocation(line: 56, column: 9, scope: !104)
!116 = !DILocation(line: 57, column: 15, scope: !113)
!117 = !DILocation(line: 57, column: 71, scope: !113)
!118 = !DILocation(line: 57, column: 75, scope: !113)
!119 = !DILocation(line: 57, column: 7, scope: !120)
!120 = !DILexicalBlockFile(scope: !113, file: !15, discriminator: 1)
!121 = !DILocation(line: 57, column: 7, scope: !113)
!122 = !DILocation(line: 58, column: 25, scope: !123)
!123 = distinct !DILexicalBlock(scope: !104, file: !15, line: 58, column: 9)
!124 = !DILocation(line: 58, column: 35, scope: !123)
!125 = !DILocation(line: 58, column: 39, scope: !123)
!126 = !DILocation(line: 58, column: 9, scope: !123)
!127 = !DILocation(line: 58, column: 56, scope: !123)
!128 = !DILocation(line: 58, column: 9, scope: !104)
!129 = !DILocation(line: 59, column: 14, scope: !123)
!130 = !DILocation(line: 59, column: 72, scope: !123)
!131 = !DILocation(line: 59, column: 76, scope: !123)
!132 = !DILocation(line: 60, column: 18, scope: !123)
!133 = !DILocation(line: 59, column: 7, scope: !134)
!134 = !DILexicalBlockFile(scope: !123, file: !15, discriminator: 1)
!135 = !DILocation(line: 59, column: 7, scope: !123)
!136 = !DILocation(line: 61, column: 28, scope: !137)
!137 = distinct !DILexicalBlock(scope: !104, file: !15, line: 61, column: 9)
!138 = !DILocation(line: 61, column: 13, scope: !137)
!139 = !DILocation(line: 61, column: 24, scope: !137)
!140 = !DILocation(line: 61, column: 9, scope: !137)
!141 = !DILocation(line: 61, column: 47, scope: !137)
!142 = !DILocation(line: 61, column: 9, scope: !104)
!143 = !DILocation(line: 62, column: 14, scope: !137)
!144 = !DILocation(line: 63, column: 14, scope: !137)
!145 = !DILocation(line: 63, column: 18, scope: !137)
!146 = !DILocation(line: 63, column: 28, scope: !137)
!147 = !DILocation(line: 63, column: 44, scope: !137)
!148 = !DILocation(line: 62, column: 7, scope: !149)
!149 = !DILexicalBlockFile(scope: !137, file: !15, discriminator: 1)
!150 = !DILocation(line: 62, column: 7, scope: !137)
!151 = !DILocation(line: 64, column: 11, scope: !104)
!152 = !DILocation(line: 64, column: 5, scope: !104)
!153 = !DILocation(line: 66, column: 19, scope: !104)
!154 = !DILocation(line: 66, column: 21, scope: !104)
!155 = !DILocation(line: 66, column: 5, scope: !104)
!156 = !DILocation(line: 67, column: 3, scope: !104)
!157 = !DILocation(line: 52, column: 39, scope: !158)
!158 = !DILexicalBlockFile(scope: !98, file: !15, discriminator: 2)
!159 = !DILocation(line: 52, column: 3, scope: !158)
!160 = distinct !{!160, !161}
!161 = !DILocation(line: 52, column: 3, scope: !14)
!162 = !DILocation(line: 68, column: 13, scope: !163)
!163 = distinct !DILexicalBlock(scope: !14, file: !15, line: 68, column: 7)
!164 = !DILocation(line: 68, column: 7, scope: !163)
!165 = !DILocation(line: 68, column: 7, scope: !14)
!166 = !DILocation(line: 69, column: 13, scope: !163)
!167 = !DILocation(line: 69, column: 50, scope: !163)
!168 = !DILocation(line: 69, column: 5, scope: !169)
!169 = !DILexicalBlockFile(scope: !163, file: !15, discriminator: 1)
!170 = !DILocation(line: 69, column: 5, scope: !163)
!171 = !DILocation(line: 70, column: 13, scope: !172)
!172 = distinct !DILexicalBlock(scope: !14, file: !15, line: 70, column: 7)
!173 = !DILocation(line: 70, column: 7, scope: !172)
!174 = !DILocation(line: 70, column: 7, scope: !14)
!175 = !DILocation(line: 71, column: 13, scope: !172)
!176 = !DILocation(line: 71, column: 51, scope: !172)
!177 = !DILocation(line: 71, column: 5, scope: !178)
!178 = !DILexicalBlockFile(scope: !172, file: !15, discriminator: 1)
!179 = !DILocation(line: 71, column: 5, scope: !172)
!180 = !DILocation(line: 73, column: 10, scope: !14)
!181 = !DILocation(line: 73, column: 3, scope: !80)
!182 = !DILocation(line: 74, column: 1, scope: !14)
!183 = distinct !DISubprogram(name: "addtopartlist", scope: !15, file: !15, line: 77, type: !184, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !52)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !18, !19, !19}
!186 = !DILocalVariable(name: "partlist", arg: 1, scope: !183, file: !15, line: 77, type: !18)
!187 = !DILocation(line: 77, column: 38, scope: !183)
!188 = !DILocalVariable(name: "pi", arg: 2, scope: !183, file: !15, line: 78, type: !19)
!189 = !DILocation(line: 78, column: 37, scope: !183)
!190 = !DILocalVariable(name: "refi", arg: 3, scope: !183, file: !15, line: 78, type: !19)
!191 = !DILocation(line: 78, column: 58, scope: !183)
!192 = !DILocalVariable(name: "i", scope: !183, file: !15, line: 79, type: !28)
!193 = !DILocation(line: 79, column: 7, scope: !183)
!194 = !DILocation(line: 81, column: 14, scope: !195)
!195 = distinct !DILexicalBlock(scope: !183, file: !15, line: 81, column: 7)
!196 = !DILocation(line: 81, column: 18, scope: !195)
!197 = !DILocation(line: 81, column: 26, scope: !195)
!198 = !DILocation(line: 81, column: 32, scope: !195)
!199 = !DILocation(line: 81, column: 7, scope: !195)
!200 = !DILocation(line: 81, column: 41, scope: !195)
!201 = !DILocation(line: 82, column: 14, scope: !195)
!202 = !DILocation(line: 82, column: 18, scope: !195)
!203 = !DILocation(line: 82, column: 26, scope: !195)
!204 = !DILocation(line: 82, column: 32, scope: !195)
!205 = !DILocation(line: 82, column: 7, scope: !195)
!206 = !DILocation(line: 82, column: 41, scope: !195)
!207 = !DILocation(line: 83, column: 14, scope: !195)
!208 = !DILocation(line: 83, column: 18, scope: !195)
!209 = !DILocation(line: 83, column: 25, scope: !195)
!210 = !DILocation(line: 83, column: 31, scope: !195)
!211 = !DILocation(line: 83, column: 7, scope: !195)
!212 = !DILocation(line: 83, column: 39, scope: !195)
!213 = !DILocation(line: 84, column: 7, scope: !195)
!214 = !DILocation(line: 84, column: 11, scope: !195)
!215 = !DILocation(line: 84, column: 24, scope: !195)
!216 = !DILocation(line: 84, column: 30, scope: !195)
!217 = !DILocation(line: 84, column: 21, scope: !195)
!218 = !DILocation(line: 84, column: 40, scope: !195)
!219 = !DILocation(line: 85, column: 7, scope: !195)
!220 = !DILocation(line: 85, column: 11, scope: !195)
!221 = !DILocation(line: 85, column: 23, scope: !195)
!222 = !DILocation(line: 85, column: 29, scope: !195)
!223 = !DILocation(line: 85, column: 20, scope: !195)
!224 = !DILocation(line: 85, column: 38, scope: !195)
!225 = !DILocation(line: 86, column: 7, scope: !195)
!226 = !DILocation(line: 86, column: 11, scope: !195)
!227 = !DILocation(line: 86, column: 25, scope: !195)
!228 = !DILocation(line: 86, column: 31, scope: !195)
!229 = !DILocation(line: 86, column: 22, scope: !195)
!230 = !DILocation(line: 81, column: 7, scope: !231)
!231 = !DILexicalBlockFile(scope: !183, file: !15, discriminator: 1)
!232 = !DILocation(line: 87, column: 16, scope: !233)
!233 = distinct !DILexicalBlock(scope: !195, file: !15, line: 86, column: 43)
!234 = !DILocation(line: 87, column: 5, scope: !233)
!235 = !DILocation(line: 88, column: 16, scope: !233)
!236 = !DILocation(line: 88, column: 5, scope: !233)
!237 = !DILocation(line: 89, column: 12, scope: !233)
!238 = !DILocation(line: 90, column: 12, scope: !233)
!239 = !DILocation(line: 90, column: 16, scope: !233)
!240 = !DILocation(line: 90, column: 25, scope: !233)
!241 = !DILocation(line: 90, column: 31, scope: !233)
!242 = !DILocation(line: 89, column: 5, scope: !243)
!243 = !DILexicalBlockFile(scope: !233, file: !15, discriminator: 1)
!244 = !DILocation(line: 89, column: 5, scope: !233)
!245 = !DILocation(line: 92, column: 6, scope: !183)
!246 = !DILocation(line: 92, column: 10, scope: !183)
!247 = !DILocation(line: 92, column: 19, scope: !183)
!248 = !DILocation(line: 92, column: 4, scope: !183)
!249 = !DILocation(line: 93, column: 16, scope: !250)
!250 = distinct !DILexicalBlock(scope: !183, file: !15, line: 93, column: 7)
!251 = !DILocation(line: 93, column: 7, scope: !250)
!252 = !DILocation(line: 93, column: 7, scope: !183)
!253 = !DILocation(line: 94, column: 12, scope: !250)
!254 = !DILocation(line: 95, column: 12, scope: !250)
!255 = !DILocation(line: 95, column: 16, scope: !250)
!256 = !DILocation(line: 95, column: 27, scope: !250)
!257 = !DILocation(line: 95, column: 31, scope: !250)
!258 = !DILocation(line: 95, column: 50, scope: !250)
!259 = !DILocation(line: 95, column: 41, scope: !250)
!260 = !DILocation(line: 95, column: 54, scope: !250)
!261 = !DILocation(line: 94, column: 5, scope: !262)
!262 = !DILexicalBlockFile(scope: !250, file: !15, discriminator: 1)
!263 = !DILocation(line: 94, column: 5, scope: !250)
!264 = !DILocation(line: 96, column: 16, scope: !183)
!265 = !DILocation(line: 96, column: 12, scope: !183)
!266 = !DILocation(line: 96, column: 3, scope: !183)
!267 = !DILocation(line: 96, column: 14, scope: !183)
!268 = !DILocation(line: 97, column: 1, scope: !183)
!269 = distinct !DISubprogram(name: "do_join", scope: !15, file: !15, line: 100, type: !270, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !52)
!270 = !DISubroutineType(types: !271)
!271 = !{!28, !272}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!274 = !DILocalVariable(name: "argv", arg: 1, scope: !269, file: !15, line: 100, type: !272)
!275 = !DILocation(line: 100, column: 28, scope: !269)
!276 = !DILocalVariable(name: "thisarg", scope: !269, file: !15, line: 102, type: !31)
!277 = !DILocation(line: 102, column: 15, scope: !269)
!278 = !DILocalVariable(name: "queue", scope: !269, file: !15, line: 103, type: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partqueue", file: !21, line: 52, size: 896, align: 64, elements: !281)
!281 = !{!282, !283}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "nextinqueue", scope: !280, file: !21, line: 53, baseType: !279, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !280, file: !21, line: 58, baseType: !20, size: 832, align: 64, offset: 64)
!284 = !DILocation(line: 103, column: 21, scope: !269)
!285 = !DILocalVariable(name: "pq", scope: !269, file: !15, line: 104, type: !279)
!286 = !DILocation(line: 104, column: 21, scope: !269)
!287 = !DILocalVariable(name: "refi", scope: !269, file: !15, line: 105, type: !19)
!288 = !DILocation(line: 105, column: 20, scope: !269)
!289 = !DILocalVariable(name: "partlist", scope: !269, file: !15, line: 105, type: !18)
!290 = !DILocation(line: 105, column: 28, scope: !269)
!291 = !DILocalVariable(name: "i", scope: !269, file: !15, line: 106, type: !45)
!292 = !DILocation(line: 106, column: 16, scope: !269)
!293 = !DILocation(line: 108, column: 9, scope: !294)
!294 = distinct !DILexicalBlock(scope: !269, file: !15, line: 108, column: 7)
!295 = !DILocation(line: 108, column: 8, scope: !294)
!296 = !DILocation(line: 108, column: 7, scope: !269)
!297 = !DILocation(line: 109, column: 14, scope: !294)
!298 = !DILocation(line: 110, column: 14, scope: !294)
!299 = !DILocation(line: 110, column: 25, scope: !294)
!300 = !DILocation(line: 109, column: 5, scope: !301)
!301 = !DILexicalBlockFile(scope: !294, file: !15, discriminator: 1)
!302 = !DILocation(line: 109, column: 5, scope: !294)
!303 = !DILocation(line: 111, column: 3, scope: !269)
!304 = !DILocation(line: 111, column: 25, scope: !305)
!305 = !DILexicalBlockFile(scope: !269, file: !15, discriminator: 1)
!306 = !DILocation(line: 111, column: 20, scope: !305)
!307 = !DILocation(line: 111, column: 18, scope: !305)
!308 = !DILocation(line: 111, column: 3, scope: !305)
!309 = !DILocation(line: 112, column: 10, scope: !310)
!310 = distinct !DILexicalBlock(scope: !269, file: !15, line: 111, column: 30)
!311 = !DILocation(line: 112, column: 8, scope: !310)
!312 = !DILocation(line: 114, column: 21, scope: !310)
!313 = !DILocation(line: 114, column: 30, scope: !310)
!314 = !DILocation(line: 114, column: 34, scope: !310)
!315 = !DILocation(line: 114, column: 5, scope: !310)
!316 = !DILocation(line: 116, column: 22, scope: !310)
!317 = !DILocation(line: 116, column: 5, scope: !310)
!318 = !DILocation(line: 116, column: 9, scope: !310)
!319 = !DILocation(line: 116, column: 20, scope: !310)
!320 = !DILocation(line: 117, column: 12, scope: !310)
!321 = !DILocation(line: 117, column: 10, scope: !310)
!322 = !DILocation(line: 111, column: 3, scope: !323)
!323 = !DILexicalBlockFile(scope: !269, file: !15, discriminator: 2)
!324 = distinct !{!324, !303}
!325 = !DILocation(line: 119, column: 7, scope: !269)
!326 = !DILocation(line: 120, column: 12, scope: !327)
!327 = distinct !DILexicalBlock(scope: !269, file: !15, line: 120, column: 3)
!328 = !DILocation(line: 120, column: 10, scope: !327)
!329 = !DILocation(line: 120, column: 8, scope: !327)
!330 = !DILocation(line: 120, column: 19, scope: !331)
!331 = !DILexicalBlockFile(scope: !332, file: !15, discriminator: 1)
!332 = distinct !DILexicalBlock(scope: !327, file: !15, line: 120, column: 3)
!333 = !DILocation(line: 120, column: 3, scope: !331)
!334 = !DILocation(line: 121, column: 10, scope: !335)
!335 = distinct !DILexicalBlock(scope: !332, file: !15, line: 121, column: 9)
!336 = !DILocation(line: 121, column: 15, scope: !335)
!337 = !DILocation(line: 121, column: 18, scope: !338)
!338 = !DILexicalBlockFile(scope: !335, file: !15, discriminator: 1)
!339 = !DILocation(line: 121, column: 22, scope: !338)
!340 = !DILocation(line: 121, column: 27, scope: !338)
!341 = !DILocation(line: 121, column: 39, scope: !338)
!342 = !DILocation(line: 121, column: 45, scope: !338)
!343 = !DILocation(line: 121, column: 37, scope: !338)
!344 = !DILocation(line: 121, column: 9, scope: !338)
!345 = !DILocation(line: 121, column: 63, scope: !346)
!346 = !DILexicalBlockFile(scope: !335, file: !15, discriminator: 2)
!347 = !DILocation(line: 121, column: 67, scope: !346)
!348 = !DILocation(line: 121, column: 60, scope: !346)
!349 = !DILocation(line: 121, column: 56, scope: !346)
!350 = !DILocation(line: 121, column: 45, scope: !351)
!351 = !DILexicalBlockFile(scope: !335, file: !15, discriminator: 3)
!352 = !DILocation(line: 120, column: 27, scope: !353)
!353 = !DILexicalBlockFile(scope: !332, file: !15, discriminator: 2)
!354 = !DILocation(line: 120, column: 31, scope: !353)
!355 = !DILocation(line: 120, column: 25, scope: !353)
!356 = !DILocation(line: 120, column: 3, scope: !353)
!357 = distinct !{!357, !358}
!358 = !DILocation(line: 120, column: 3, scope: !269)
!359 = !DILocation(line: 122, column: 7, scope: !360)
!360 = distinct !DILexicalBlock(scope: !269, file: !15, line: 122, column: 7)
!361 = !DILocation(line: 122, column: 12, scope: !360)
!362 = !DILocation(line: 122, column: 7, scope: !269)
!363 = !DILocation(line: 123, column: 5, scope: !360)
!364 = !DILocation(line: 125, column: 43, scope: !269)
!365 = !DILocation(line: 125, column: 49, scope: !269)
!366 = !DILocation(line: 125, column: 41, scope: !269)
!367 = !DILocation(line: 125, column: 14, scope: !269)
!368 = !DILocation(line: 125, column: 12, scope: !269)
!369 = !DILocation(line: 126, column: 10, scope: !370)
!370 = distinct !DILexicalBlock(scope: !269, file: !15, line: 126, column: 3)
!371 = !DILocation(line: 126, column: 8, scope: !370)
!372 = !DILocation(line: 126, column: 15, scope: !373)
!373 = !DILexicalBlockFile(scope: !374, file: !15, discriminator: 1)
!374 = distinct !DILexicalBlock(scope: !370, file: !15, line: 126, column: 3)
!375 = !DILocation(line: 126, column: 19, scope: !373)
!376 = !DILocation(line: 126, column: 25, scope: !373)
!377 = !DILocation(line: 126, column: 17, scope: !373)
!378 = !DILocation(line: 126, column: 3, scope: !373)
!379 = !DILocation(line: 127, column: 14, scope: !374)
!380 = !DILocation(line: 127, column: 5, scope: !374)
!381 = !DILocation(line: 127, column: 17, scope: !374)
!382 = !DILocation(line: 126, column: 36, scope: !383)
!383 = !DILexicalBlockFile(scope: !374, file: !15, discriminator: 2)
!384 = !DILocation(line: 126, column: 3, scope: !383)
!385 = distinct !{!385, !386}
!386 = !DILocation(line: 126, column: 3, scope: !269)
!387 = !DILocation(line: 128, column: 12, scope: !388)
!388 = distinct !DILexicalBlock(scope: !269, file: !15, line: 128, column: 3)
!389 = !DILocation(line: 128, column: 10, scope: !388)
!390 = !DILocation(line: 128, column: 8, scope: !388)
!391 = !DILocation(line: 128, column: 19, scope: !392)
!392 = !DILexicalBlockFile(scope: !393, file: !15, discriminator: 1)
!393 = distinct !DILexicalBlock(scope: !388, file: !15, line: 128, column: 3)
!394 = !DILocation(line: 128, column: 3, scope: !392)
!395 = !DILocalVariable(name: "pi", scope: !396, file: !15, line: 129, type: !19)
!396 = distinct !DILexicalBlock(scope: !393, file: !15, line: 128, column: 44)
!397 = !DILocation(line: 129, column: 22, scope: !396)
!398 = !DILocation(line: 129, column: 28, scope: !396)
!399 = !DILocation(line: 129, column: 32, scope: !396)
!400 = !DILocation(line: 131, column: 19, scope: !396)
!401 = !DILocation(line: 131, column: 28, scope: !396)
!402 = !DILocation(line: 131, column: 31, scope: !396)
!403 = !DILocation(line: 131, column: 5, scope: !396)
!404 = !DILocation(line: 132, column: 3, scope: !396)
!405 = !DILocation(line: 128, column: 27, scope: !406)
!406 = !DILexicalBlockFile(scope: !393, file: !15, discriminator: 2)
!407 = !DILocation(line: 128, column: 31, scope: !406)
!408 = !DILocation(line: 128, column: 25, scope: !406)
!409 = !DILocation(line: 128, column: 3, scope: !406)
!410 = distinct !{!410, !411}
!411 = !DILocation(line: 128, column: 3, scope: !269)
!412 = !DILocation(line: 133, column: 9, scope: !413)
!413 = distinct !DILexicalBlock(scope: !269, file: !15, line: 133, column: 3)
!414 = !DILocation(line: 133, column: 8, scope: !413)
!415 = !DILocation(line: 133, column: 13, scope: !416)
!416 = !DILexicalBlockFile(scope: !417, file: !15, discriminator: 1)
!417 = distinct !DILexicalBlock(scope: !413, file: !15, line: 133, column: 3)
!418 = !DILocation(line: 133, column: 15, scope: !416)
!419 = !DILocation(line: 133, column: 21, scope: !416)
!420 = !DILocation(line: 133, column: 14, scope: !416)
!421 = !DILocation(line: 133, column: 3, scope: !416)
!422 = !DILocation(line: 134, column: 19, scope: !423)
!423 = distinct !DILexicalBlock(scope: !424, file: !15, line: 134, column: 9)
!424 = distinct !DILexicalBlock(scope: !417, file: !15, line: 133, column: 36)
!425 = !DILocation(line: 134, column: 10, scope: !423)
!426 = !DILocation(line: 134, column: 9, scope: !424)
!427 = !DILocation(line: 134, column: 30, scope: !428)
!428 = !DILexicalBlockFile(scope: !423, file: !15, discriminator: 1)
!429 = !DILocation(line: 134, column: 60, scope: !428)
!430 = !DILocation(line: 134, column: 61, scope: !428)
!431 = !DILocation(line: 134, column: 23, scope: !432)
!432 = !DILexicalBlockFile(scope: !428, file: !15, discriminator: 2)
!433 = !DILocation(line: 134, column: 23, scope: !428)
!434 = !DILocation(line: 135, column: 3, scope: !424)
!435 = !DILocation(line: 133, column: 32, scope: !436)
!436 = !DILexicalBlockFile(scope: !417, file: !15, discriminator: 2)
!437 = !DILocation(line: 133, column: 3, scope: !436)
!438 = distinct !{!438, !439}
!439 = !DILocation(line: 133, column: 3, scope: !269)
!440 = !DILocation(line: 136, column: 8, scope: !441)
!441 = distinct !DILexicalBlock(scope: !269, file: !15, line: 136, column: 7)
!442 = !DILocation(line: 136, column: 7, scope: !269)
!443 = !DILocalVariable(name: "p", scope: !444, file: !15, line: 137, type: !64)
!444 = distinct !DILexicalBlock(scope: !441, file: !15, line: 136, column: 24)
!445 = !DILocation(line: 137, column: 11, scope: !444)
!446 = !DILocation(line: 139, column: 24, scope: !444)
!447 = !DILocation(line: 139, column: 30, scope: !444)
!448 = !DILocation(line: 139, column: 17, scope: !444)
!449 = !DILocation(line: 139, column: 38, scope: !444)
!450 = !DILocation(line: 139, column: 48, scope: !444)
!451 = !DILocation(line: 139, column: 54, scope: !444)
!452 = !DILocation(line: 139, column: 41, scope: !453)
!453 = !DILexicalBlockFile(scope: !444, file: !15, discriminator: 1)
!454 = !DILocation(line: 139, column: 40, scope: !444)
!455 = !DILocation(line: 139, column: 62, scope: !444)
!456 = !DILocation(line: 139, column: 8, scope: !457)
!457 = !DILexicalBlockFile(scope: !444, file: !15, discriminator: 2)
!458 = !DILocation(line: 139, column: 6, scope: !444)
!459 = !DILocation(line: 140, column: 12, scope: !444)
!460 = !DILocation(line: 140, column: 14, scope: !444)
!461 = !DILocation(line: 140, column: 20, scope: !444)
!462 = !DILocation(line: 140, column: 5, scope: !444)
!463 = !DILocation(line: 141, column: 12, scope: !444)
!464 = !DILocation(line: 141, column: 5, scope: !444)
!465 = !DILocation(line: 142, column: 12, scope: !444)
!466 = !DILocation(line: 142, column: 14, scope: !444)
!467 = !DILocation(line: 142, column: 20, scope: !444)
!468 = !DILocation(line: 142, column: 5, scope: !444)
!469 = !DILocation(line: 143, column: 12, scope: !444)
!470 = !DILocation(line: 143, column: 5, scope: !444)
!471 = !DILocation(line: 144, column: 12, scope: !444)
!472 = !DILocation(line: 144, column: 15, scope: !444)
!473 = !DILocation(line: 144, column: 21, scope: !444)
!474 = !DILocation(line: 144, column: 28, scope: !453)
!475 = !DILocation(line: 144, column: 34, scope: !453)
!476 = !DILocation(line: 144, column: 15, scope: !453)
!477 = !DILocation(line: 144, column: 15, scope: !457)
!478 = !DILocation(line: 144, column: 15, scope: !479)
!479 = !DILexicalBlockFile(scope: !444, file: !15, discriminator: 3)
!480 = !DILocation(line: 144, column: 5, scope: !479)
!481 = !DILocation(line: 145, column: 12, scope: !444)
!482 = !DILocation(line: 145, column: 5, scope: !444)
!483 = !DILocation(line: 146, column: 22, scope: !444)
!484 = !DILocation(line: 146, column: 20, scope: !444)
!485 = !DILocation(line: 147, column: 3, scope: !444)
!486 = !DILocation(line: 148, column: 14, scope: !269)
!487 = !DILocation(line: 148, column: 24, scope: !269)
!488 = !DILocation(line: 148, column: 3, scope: !269)
!489 = !DILocation(line: 150, column: 3, scope: !269)
