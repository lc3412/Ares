; ModuleID = './[inter]lib--dpkg--arch.o.i'
source_filename = "./[inter]lib--dpkg--arch.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dpkg_arch = type { %struct.dpkg_arch*, i8*, i32 }
%struct.varbuf = type { i64, i64, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.atomic_file = type { i32, i8*, i8*, %struct._IO_FILE* }

@dpkg_arch_name_is_illegal.buf = internal global [150 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"arch.c\00", align 1
@__func__.dpkg_arch_name_is_illegal = private unnamed_addr constant [26 x i8] c"dpkg_arch_name_is_illegal\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"arch name argument is NULL\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"may not be empty string\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"must start with an alphanumeric\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"character '%c' not allowed (only letters, digits and characters '%s')\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@arch_item_none = internal global %struct.dpkg_arch { %struct.dpkg_arch* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0), i32 0 }, align 8
@arch_item_empty = internal global %struct.dpkg_arch { %struct.dpkg_arch* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0), i32 1 }, align 8
@arch_head = internal global %struct.dpkg_arch* @arch_item_native, align 8
@arch_item_any = internal global %struct.dpkg_arch { %struct.dpkg_arch* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 3 }, align 8
@arch_item_all = internal global %struct.dpkg_arch { %struct.dpkg_arch* @arch_item_any, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i32 4 }, align 8
@arch_item_native = internal global %struct.dpkg_arch { %struct.dpkg_arch* @arch_item_all, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 5 }, align 8
@__func__.dpkg_arch_get = private unnamed_addr constant [14 x i8] c"dpkg_arch_get\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"architecture type %d is not unique\00", align 1
@arch_builtin_tail = internal global %struct.dpkg_arch* @arch_item_any, align 8
@arch_list_dirty = internal global i8 0, align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"architecture\04<none>\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"architecture\04<empty>\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"<empty>\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"arch\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"error writing to architecture list\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"amd64\00", align 1

; Function Attrs: nounwind uwtable
define i8* @dpkg_arch_name_is_illegal(i8* nonnull) #0 !dbg !33 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !62, metadata !63), !dbg !64
  call void @llvm.dbg.declare(metadata i8** %4, metadata !65, metadata !63), !dbg !66
  %5 = load i8*, i8** %3, align 8, !dbg !67
  store i8* %5, i8** %4, align 8, !dbg !66
  %6 = load i8*, i8** %3, align 8, !dbg !68
  %7 = icmp eq i8* %6, null, !dbg !70
  br i1 %7, label %8, label %9, !dbg !71

; <label>:8:                                      ; preds = %1
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.dpkg_arch_name_is_illegal, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0)) #7, !dbg !72
  unreachable, !dbg !72

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %4, align 8, !dbg !73
  %11 = load i8, i8* %10, align 1, !dbg !75
  %12 = icmp ne i8 %11, 0, !dbg !75
  br i1 %12, label %15, label %13, !dbg !76

; <label>:13:                                     ; preds = %9
  %14 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !77
  store i8* %14, i8** %2, align 8, !dbg !78
  br label %53, !dbg !78

; <label>:15:                                     ; preds = %9
  %16 = load i8*, i8** %4, align 8, !dbg !79
  %17 = load i8, i8* %16, align 1, !dbg !81
  %18 = sext i8 %17 to i32, !dbg !81
  %19 = call zeroext i1 @c_isalnum(i32 %18), !dbg !82
  br i1 %19, label %22, label %20, !dbg !83

; <label>:20:                                     ; preds = %15
  %21 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0)) #8, !dbg !84
  store i8* %21, i8** %2, align 8, !dbg !85
  br label %53, !dbg !85

; <label>:22:                                     ; preds = %15
  br label %23, !dbg !86

; <label>:23:                                     ; preds = %40, %22
  %24 = load i8*, i8** %4, align 8, !dbg !87
  %25 = getelementptr inbounds i8, i8* %24, i32 1, !dbg !87
  store i8* %25, i8** %4, align 8, !dbg !87
  %26 = load i8, i8* %25, align 1, !dbg !89
  %27 = sext i8 %26 to i32, !dbg !89
  %28 = icmp ne i32 %27, 0, !dbg !90
  br i1 %28, label %29, label %41, !dbg !91

; <label>:29:                                     ; preds = %23
  %30 = load i8*, i8** %4, align 8, !dbg !92
  %31 = load i8, i8* %30, align 1, !dbg !94
  %32 = sext i8 %31 to i32, !dbg !94
  %33 = call zeroext i1 @c_isalnum(i32 %32), !dbg !95
  br i1 %33, label %40, label %34, !dbg !96

; <label>:34:                                     ; preds = %29
  %35 = load i8*, i8** %4, align 8, !dbg !97
  %36 = load i8, i8* %35, align 1, !dbg !99
  %37 = sext i8 %36 to i32, !dbg !99
  %38 = icmp ne i32 %37, 45, !dbg !100
  br i1 %38, label %39, label %40, !dbg !101

; <label>:39:                                     ; preds = %34
  br label %41, !dbg !102

; <label>:40:                                     ; preds = %34, %29
  br label %23, !dbg !103, !llvm.loop !105

; <label>:41:                                     ; preds = %39, %23
  %42 = load i8*, i8** %4, align 8, !dbg !106
  %43 = load i8, i8* %42, align 1, !dbg !108
  %44 = sext i8 %43 to i32, !dbg !108
  %45 = icmp eq i32 %44, 0, !dbg !109
  br i1 %45, label %46, label %47, !dbg !110

; <label>:46:                                     ; preds = %41
  store i8* null, i8** %2, align 8, !dbg !111
  br label %53, !dbg !111

; <label>:47:                                     ; preds = %41
  %48 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i32 0, i32 0)) #8, !dbg !112
  %49 = load i8*, i8** %4, align 8, !dbg !113
  %50 = load i8, i8* %49, align 1, !dbg !114
  %51 = sext i8 %50 to i32, !dbg !114
  %52 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([150 x i8], [150 x i8]* @dpkg_arch_name_is_illegal.buf, i32 0, i32 0), i64 150, i8* %48, i32 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !115
  store i8* getelementptr inbounds ([150 x i8], [150 x i8]* @dpkg_arch_name_is_illegal.buf, i32 0, i32 0), i8** %2, align 8, !dbg !116
  br label %53, !dbg !116

; <label>:53:                                     ; preds = %47, %46, %20, %13
  %54 = load i8*, i8** %2, align 8, !dbg !117
  ret i8* %54, !dbg !117
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isalnum(i32) #4 !dbg !118 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !122, metadata !63), !dbg !123
  %3 = load i32, i32* %2, align 4, !dbg !124
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 56), !dbg !125
  ret i1 %4, !dbg !126
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

; Function Attrs: nounwind uwtable
define %struct.dpkg_arch* @dpkg_arch_find(i8*) #0 !dbg !127 {
  %2 = alloca %struct.dpkg_arch*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dpkg_arch*, align 8
  %5 = alloca %struct.dpkg_arch*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !130, metadata !63), !dbg !131
  call void @llvm.dbg.declare(metadata %struct.dpkg_arch** %4, metadata !132, metadata !63), !dbg !133
  call void @llvm.dbg.declare(metadata %struct.dpkg_arch** %5, metadata !134, metadata !63), !dbg !135
  store %struct.dpkg_arch* null, %struct.dpkg_arch** %5, align 8, !dbg !135
  call void @llvm.dbg.declare(metadata i32* %6, metadata !136, metadata !63), !dbg !137
  %7 = load i8*, i8** %3, align 8, !dbg !138
  %8 = icmp eq i8* %7, null, !dbg !140
  br i1 %8, label %9, label %10, !dbg !141

; <label>:9:                                      ; preds = %1
  store %struct.dpkg_arch* @arch_item_none, %struct.dpkg_arch** %2, align 8, !dbg !142
  br label %51, !dbg !142

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %3, align 8, !dbg !143
  %12 = getelementptr inbounds i8, i8* %11, i64 0, !dbg !143
  %13 = load i8, i8* %12, align 1, !dbg !143
  %14 = sext i8 %13 to i32, !dbg !143
  %15 = icmp eq i32 %14, 0, !dbg !145
  br i1 %15, label %16, label %17, !dbg !146

; <label>:16:                                     ; preds = %10
  store %struct.dpkg_arch* @arch_item_empty, %struct.dpkg_arch** %2, align 8, !dbg !147
  br label %51, !dbg !147

; <label>:17:                                     ; preds = %10
  %18 = load %struct.dpkg_arch*, %struct.dpkg_arch** @arch_head, align 8, !dbg !148
  store %struct.dpkg_arch* %18, %struct.dpkg_arch** %4, align 8, !dbg !150
  br label %19, !dbg !151

; <label>:19:                                     ; preds = %33, %17
  %20 = load %struct.dpkg_arch*, %struct.dpkg_arch** %4, align 8, !dbg !152
  %21 = icmp ne %struct.dpkg_arch* %20, null, !dbg !155
  br i1 %21, label %22, label %37, !dbg !155

; <label>:22:                                     ; preds = %19
  %23 = load %struct.dpkg_arch*, %struct.dpkg_arch** %4, align 8, !dbg !156
  %24 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %23, i32 0, i32 1, !dbg !159
  %25 = load i8*, i8** %24, align 8, !dbg !159
  %26 = load i8*, i8** %3, align 8, !dbg !160
  %27 = call i32 @strcmp(i8* %25, i8* %26) #9, !dbg !161
  %28 = icmp eq i32 %27, 0, !dbg !162
  br i1 %28, label %29, label %31, !dbg !163

; <label>:29:                                     ; preds = %22
  %30 = load %struct.dpkg_arch*, %struct.dpkg_arch** %4, align 8, !dbg !164
  store %struct.dpkg_arch* %30, %struct.dpkg_arch** %2, align 8, !dbg !165
  br label %51, !dbg !165

; <label>:31:                                     ; preds = %22
  %32 = load %struct.dpkg_arch*, %struct.dpkg_arch** %4, align 8, !dbg !166
  store %struct.dpkg_arch* %32, %struct.dpkg_arch** %5, align 8, !dbg !167
  br label %33, !dbg !168

; <label>:33:                                     ; preds = %31
  %34 = load %struct.dpkg_arch*, %struct.dpkg_arch** %4, align 8, !dbg !169
  %35 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %34, i32 0, i32 0, !dbg !171
  %36 = load %struct.dpkg_arch*, %struct.dpkg_arch** %35, align 8, !dbg !171
  store %struct.dpkg_arch* %36, %struct.dpkg_arch** %4, align 8, !dbg !172
  br label %19, !dbg !173, !llvm.loop !174

; <label>:37:                                     ; preds = %19
  %38 = load i8*, i8** %3, align 8, !dbg !176
  %39 = call i8* @dpkg_arch_name_is_illegal(i8* %38), !dbg !178
  %40 = icmp ne i8* %39, null, !dbg !178
  br i1 %40, label %41, label %42, !dbg !179

; <label>:41:                                     ; preds = %37
  store i32 2, i32* %6, align 4, !dbg !180
  br label %43, !dbg !181

; <label>:42:                                     ; preds = %37
  store i32 7, i32* %6, align 4, !dbg !182
  br label %43

; <label>:43:                                     ; preds = %42, %41
  %44 = load i8*, i8** %3, align 8, !dbg !183
  %45 = load i32, i32* %6, align 4, !dbg !184
  %46 = call %struct.dpkg_arch* @dpkg_arch_new(i8* %44, i32 %45), !dbg !185
  store %struct.dpkg_arch* %46, %struct.dpkg_arch** %4, align 8, !dbg !186
  %47 = load %struct.dpkg_arch*, %struct.dpkg_arch** %4, align 8, !dbg !187
  %48 = load %struct.dpkg_arch*, %struct.dpkg_arch** %5, align 8, !dbg !188
  %49 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %48, i32 0, i32 0, !dbg !189
  store %struct.dpkg_arch* %47, %struct.dpkg_arch** %49, align 8, !dbg !190
  %50 = load %struct.dpkg_arch*, %struct.dpkg_arch** %4, align 8, !dbg !191
  store %struct.dpkg_arch* %50, %struct.dpkg_arch** %2, align 8, !dbg !192
  br label %51, !dbg !192

; <label>:51:                                     ; preds = %43, %29, %16, %9
  %52 = load %struct.dpkg_arch*, %struct.dpkg_arch** %2, align 8, !dbg !193
  ret %struct.dpkg_arch* %52, !dbg !193
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal %struct.dpkg_arch* @dpkg_arch_new(i8*, i32) #0 !dbg !194 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpkg_arch*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !197, metadata !63), !dbg !198
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !199, metadata !63), !dbg !200
  call void @llvm.dbg.declare(metadata %struct.dpkg_arch** %5, metadata !201, metadata !63), !dbg !202
  %6 = call i8* @nfmalloc(i64 24), !dbg !203
  %7 = bitcast i8* %6 to %struct.dpkg_arch*, !dbg !203
  store %struct.dpkg_arch* %7, %struct.dpkg_arch** %5, align 8, !dbg !204
  %8 = load %struct.dpkg_arch*, %struct.dpkg_arch** %5, align 8, !dbg !205
  %9 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %8, i32 0, i32 0, !dbg !206
  store %struct.dpkg_arch* null, %struct.dpkg_arch** %9, align 8, !dbg !207
  %10 = load i8*, i8** %3, align 8, !dbg !208
  %11 = call i8* @nfstrsave(i8* %10), !dbg !209
  %12 = load %struct.dpkg_arch*, %struct.dpkg_arch** %5, align 8, !dbg !210
  %13 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %12, i32 0, i32 1, !dbg !211
  store i8* %11, i8** %13, align 8, !dbg !212
  %14 = load i32, i32* %4, align 4, !dbg !213
  %15 = load %struct.dpkg_arch*, %struct.dpkg_arch** %5, align 8, !dbg !214
  %16 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %15, i32 0, i32 2, !dbg !215
  store i32 %14, i32* %16, align 8, !dbg !216
  %17 = load %struct.dpkg_arch*, %struct.dpkg_arch** %5, align 8, !dbg !217
  ret %struct.dpkg_arch* %17, !dbg !218
}

; Function Attrs: nounwind uwtable
define %struct.dpkg_arch* @dpkg_arch_get(i32) #0 !dbg !219 {
  %2 = alloca %struct.dpkg_arch*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !222, metadata !63), !dbg !223
  %4 = load i32, i32* %3, align 4, !dbg !224
  switch i32 %4, label %12 [
    i32 0, label %5
    i32 1, label %6
    i32 3, label %7
    i32 4, label %8
    i32 5, label %9
    i32 2, label %10
    i32 6, label %10
    i32 7, label %10
  ], !dbg !225

; <label>:5:                                      ; preds = %1
  store %struct.dpkg_arch* @arch_item_none, %struct.dpkg_arch** %2, align 8, !dbg !226
  br label %13, !dbg !226

; <label>:6:                                      ; preds = %1
  store %struct.dpkg_arch* @arch_item_empty, %struct.dpkg_arch** %2, align 8, !dbg !228
  br label %13, !dbg !228

; <label>:7:                                      ; preds = %1
  store %struct.dpkg_arch* @arch_item_any, %struct.dpkg_arch** %2, align 8, !dbg !229
  br label %13, !dbg !229

; <label>:8:                                      ; preds = %1
  store %struct.dpkg_arch* @arch_item_all, %struct.dpkg_arch** %2, align 8, !dbg !230
  br label %13, !dbg !230

; <label>:9:                                      ; preds = %1
  store %struct.dpkg_arch* @arch_item_native, %struct.dpkg_arch** %2, align 8, !dbg !231
  br label %13, !dbg !231

; <label>:10:                                     ; preds = %1, %1, %1
  %11 = load i32, i32* %3, align 4, !dbg !232
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 186, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dpkg_arch_get, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i32 %11) #7, !dbg !233
  unreachable, !dbg !233

; <label>:12:                                     ; preds = %1
  store %struct.dpkg_arch* null, %struct.dpkg_arch** %2, align 8, !dbg !234
  br label %13, !dbg !234

; <label>:13:                                     ; preds = %12, %9, %8, %7, %6, %5
  %14 = load %struct.dpkg_arch*, %struct.dpkg_arch** %2, align 8, !dbg !235
  ret %struct.dpkg_arch* %14, !dbg !235
}

; Function Attrs: nounwind uwtable
define %struct.dpkg_arch* @dpkg_arch_get_list() #0 !dbg !236 {
  %1 = load %struct.dpkg_arch*, %struct.dpkg_arch** @arch_head, align 8, !dbg !239
  ret %struct.dpkg_arch* %1, !dbg !240
}

; Function Attrs: nounwind uwtable
define void @dpkg_arch_reset_list() #0 !dbg !241 {
  %1 = load %struct.dpkg_arch*, %struct.dpkg_arch** @arch_builtin_tail, align 8, !dbg !244
  %2 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %1, i32 0, i32 0, !dbg !245
  store %struct.dpkg_arch* null, %struct.dpkg_arch** %2, align 8, !dbg !246
  store i8 0, i8* @arch_list_dirty, align 1, !dbg !247
  ret void, !dbg !248
}

; Function Attrs: nounwind uwtable
define void @varbuf_add_archqual(%struct.varbuf*, %struct.dpkg_arch*) #0 !dbg !249 {
  %3 = alloca %struct.varbuf*, align 8
  %4 = alloca %struct.dpkg_arch*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %3, metadata !265, metadata !63), !dbg !266
  store %struct.dpkg_arch* %1, %struct.dpkg_arch** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_arch** %4, metadata !267, metadata !63), !dbg !268
  %5 = load %struct.dpkg_arch*, %struct.dpkg_arch** %4, align 8, !dbg !269
  %6 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %5, i32 0, i32 2, !dbg !271
  %7 = load i32, i32* %6, align 8, !dbg !271
  %8 = icmp eq i32 %7, 0, !dbg !272
  br i1 %8, label %9, label %10, !dbg !273

; <label>:9:                                      ; preds = %2
  br label %26, !dbg !274

; <label>:10:                                     ; preds = %2
  %11 = load %struct.dpkg_arch*, %struct.dpkg_arch** %4, align 8, !dbg !275
  %12 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %11, i32 0, i32 2, !dbg !277
  %13 = load i32, i32* %12, align 8, !dbg !277
  %14 = icmp eq i32 %13, 1, !dbg !278
  br i1 %14, label %15, label %16, !dbg !279

; <label>:15:                                     ; preds = %10
  br label %26, !dbg !280

; <label>:16:                                     ; preds = %10
  %17 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !281
  call void @varbuf_add_char(%struct.varbuf* %17, i32 58), !dbg !282
  %18 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !283
  %19 = load %struct.dpkg_arch*, %struct.dpkg_arch** %4, align 8, !dbg !284
  %20 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %19, i32 0, i32 1, !dbg !285
  %21 = load i8*, i8** %20, align 8, !dbg !285
  %22 = load %struct.dpkg_arch*, %struct.dpkg_arch** %4, align 8, !dbg !286
  %23 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %22, i32 0, i32 1, !dbg !287
  %24 = load i8*, i8** %23, align 8, !dbg !287
  %25 = call i64 @strlen(i8* %24) #9, !dbg !288
  call void @varbuf_add_buf(%struct.varbuf* %18, i8* %21, i64 %25), !dbg !289
  br label %26, !dbg !291

; <label>:26:                                     ; preds = %16, %15, %9
  ret void, !dbg !292
}

declare void @varbuf_add_char(%struct.varbuf*, i32) #6

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #6

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind uwtable
define i8* @dpkg_arch_describe(%struct.dpkg_arch*) #0 !dbg !293 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dpkg_arch*, align 8
  store %struct.dpkg_arch* %0, %struct.dpkg_arch** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_arch** %3, metadata !296, metadata !63), !dbg !297
  %4 = load %struct.dpkg_arch*, %struct.dpkg_arch** %3, align 8, !dbg !298
  %5 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %4, i32 0, i32 2, !dbg !300
  %6 = load i32, i32* %5, align 8, !dbg !300
  %7 = icmp eq i32 %6, 0, !dbg !301
  br i1 %7, label %8, label %10, !dbg !302

; <label>:8:                                      ; preds = %1
  %9 = call i8* @pgettext_aux(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 5), !dbg !303
  store i8* %9, i8** %2, align 8, !dbg !304
  br label %21, !dbg !304

; <label>:10:                                     ; preds = %1
  %11 = load %struct.dpkg_arch*, %struct.dpkg_arch** %3, align 8, !dbg !305
  %12 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %11, i32 0, i32 2, !dbg !307
  %13 = load i32, i32* %12, align 8, !dbg !307
  %14 = icmp eq i32 %13, 1, !dbg !308
  br i1 %14, label %15, label %17, !dbg !309

; <label>:15:                                     ; preds = %10
  %16 = call i8* @pgettext_aux(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 5), !dbg !310
  store i8* %16, i8** %2, align 8, !dbg !311
  br label %21, !dbg !311

; <label>:17:                                     ; preds = %10
  %18 = load %struct.dpkg_arch*, %struct.dpkg_arch** %3, align 8, !dbg !312
  %19 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %18, i32 0, i32 1, !dbg !313
  %20 = load i8*, i8** %19, align 8, !dbg !313
  store i8* %20, i8** %2, align 8, !dbg !314
  br label %21, !dbg !314

; <label>:21:                                     ; preds = %17, %15, %8
  %22 = load i8*, i8** %2, align 8, !dbg !315
  ret i8* %22, !dbg !315
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @pgettext_aux(i8*, i8*, i8*, i32) #4 !dbg !316 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !320, metadata !63), !dbg !321
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !322, metadata !63), !dbg !323
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !324, metadata !63), !dbg !325
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !326, metadata !63), !dbg !327
  call void @llvm.dbg.declare(metadata i8** %10, metadata !328, metadata !63), !dbg !329
  %11 = load i8*, i8** %6, align 8, !dbg !330
  %12 = load i8*, i8** %7, align 8, !dbg !331
  %13 = load i32, i32* %9, align 4, !dbg !332
  %14 = call i8* @dcgettext(i8* %11, i8* %12, i32 %13) #8, !dbg !333
  store i8* %14, i8** %10, align 8, !dbg !329
  %15 = load i8*, i8** %10, align 8, !dbg !334
  %16 = load i8*, i8** %7, align 8, !dbg !336
  %17 = icmp eq i8* %15, %16, !dbg !337
  br i1 %17, label %18, label %20, !dbg !338

; <label>:18:                                     ; preds = %4
  %19 = load i8*, i8** %8, align 8, !dbg !339
  store i8* %19, i8** %5, align 8, !dbg !340
  br label %22, !dbg !340

; <label>:20:                                     ; preds = %4
  %21 = load i8*, i8** %10, align 8, !dbg !341
  store i8* %21, i8** %5, align 8, !dbg !342
  br label %22, !dbg !342

; <label>:22:                                     ; preds = %20, %18
  %23 = load i8*, i8** %5, align 8, !dbg !343
  ret i8* %23, !dbg !343
}

; Function Attrs: nounwind uwtable
define %struct.dpkg_arch* @dpkg_arch_add(i8*) #0 !dbg !344 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dpkg_arch*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !345, metadata !63), !dbg !346
  call void @llvm.dbg.declare(metadata %struct.dpkg_arch** %3, metadata !347, metadata !63), !dbg !348
  %4 = load i8*, i8** %2, align 8, !dbg !349
  %5 = call %struct.dpkg_arch* @dpkg_arch_find(i8* %4), !dbg !350
  store %struct.dpkg_arch* %5, %struct.dpkg_arch** %3, align 8, !dbg !351
  %6 = load %struct.dpkg_arch*, %struct.dpkg_arch** %3, align 8, !dbg !352
  %7 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %6, i32 0, i32 2, !dbg !354
  %8 = load i32, i32* %7, align 8, !dbg !354
  %9 = icmp eq i32 %8, 7, !dbg !355
  br i1 %9, label %10, label %13, !dbg !356

; <label>:10:                                     ; preds = %1
  %11 = load %struct.dpkg_arch*, %struct.dpkg_arch** %3, align 8, !dbg !357
  %12 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %11, i32 0, i32 2, !dbg !359
  store i32 6, i32* %12, align 8, !dbg !360
  store i8 1, i8* @arch_list_dirty, align 1, !dbg !361
  br label %13, !dbg !362

; <label>:13:                                     ; preds = %10, %1
  %14 = load %struct.dpkg_arch*, %struct.dpkg_arch** %3, align 8, !dbg !363
  ret %struct.dpkg_arch* %14, !dbg !364
}

; Function Attrs: nounwind uwtable
define void @dpkg_arch_unmark(%struct.dpkg_arch*) #0 !dbg !365 {
  %2 = alloca %struct.dpkg_arch*, align 8
  %3 = alloca %struct.dpkg_arch*, align 8
  store %struct.dpkg_arch* %0, %struct.dpkg_arch** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_arch** %2, metadata !368, metadata !63), !dbg !369
  call void @llvm.dbg.declare(metadata %struct.dpkg_arch** %3, metadata !370, metadata !63), !dbg !371
  %4 = load %struct.dpkg_arch*, %struct.dpkg_arch** @arch_builtin_tail, align 8, !dbg !372
  %5 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %4, i32 0, i32 0, !dbg !374
  %6 = load %struct.dpkg_arch*, %struct.dpkg_arch** %5, align 8, !dbg !374
  store %struct.dpkg_arch* %6, %struct.dpkg_arch** %3, align 8, !dbg !375
  br label %7, !dbg !376

; <label>:7:                                      ; preds = %24, %1
  %8 = load %struct.dpkg_arch*, %struct.dpkg_arch** %3, align 8, !dbg !377
  %9 = icmp ne %struct.dpkg_arch* %8, null, !dbg !380
  br i1 %9, label %10, label %28, !dbg !380

; <label>:10:                                     ; preds = %7
  %11 = load %struct.dpkg_arch*, %struct.dpkg_arch** %3, align 8, !dbg !381
  %12 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %11, i32 0, i32 2, !dbg !384
  %13 = load i32, i32* %12, align 8, !dbg !384
  %14 = icmp ne i32 %13, 6, !dbg !385
  br i1 %14, label %15, label %16, !dbg !386

; <label>:15:                                     ; preds = %10
  br label %24, !dbg !387

; <label>:16:                                     ; preds = %10
  %17 = load %struct.dpkg_arch*, %struct.dpkg_arch** %3, align 8, !dbg !388
  %18 = load %struct.dpkg_arch*, %struct.dpkg_arch** %2, align 8, !dbg !390
  %19 = icmp eq %struct.dpkg_arch* %17, %18, !dbg !391
  br i1 %19, label %20, label %23, !dbg !392

; <label>:20:                                     ; preds = %16
  %21 = load %struct.dpkg_arch*, %struct.dpkg_arch** %3, align 8, !dbg !393
  %22 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %21, i32 0, i32 2, !dbg !395
  store i32 7, i32* %22, align 8, !dbg !396
  store i8 1, i8* @arch_list_dirty, align 1, !dbg !397
  br label %28, !dbg !398

; <label>:23:                                     ; preds = %16
  br label %24, !dbg !399

; <label>:24:                                     ; preds = %23, %15
  %25 = load %struct.dpkg_arch*, %struct.dpkg_arch** %3, align 8, !dbg !400
  %26 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %25, i32 0, i32 0, !dbg !402
  %27 = load %struct.dpkg_arch*, %struct.dpkg_arch** %26, align 8, !dbg !402
  store %struct.dpkg_arch* %27, %struct.dpkg_arch** %3, align 8, !dbg !403
  br label %7, !dbg !404, !llvm.loop !405

; <label>:28:                                     ; preds = %20, %7
  ret void, !dbg !407
}

; Function Attrs: nounwind uwtable
define void @dpkg_arch_load_list() #0 !dbg !408 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca [2048 x i8], align 16
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %1, metadata !409, metadata !63), !dbg !466
  call void @llvm.dbg.declare(metadata i8** %2, metadata !467, metadata !63), !dbg !468
  call void @llvm.dbg.declare(metadata [2048 x i8]* %3, metadata !469, metadata !63), !dbg !473
  %4 = call i8* @dpkg_db_get_path(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0)), !dbg !474
  store i8* %4, i8** %2, align 8, !dbg !475
  %5 = load i8*, i8** %2, align 8, !dbg !476
  %6 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)), !dbg !477
  store %struct._IO_FILE* %6, %struct._IO_FILE** %1, align 8, !dbg !478
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !dbg !479
  %8 = icmp eq %struct._IO_FILE* %7, null, !dbg !481
  br i1 %8, label %9, label %11, !dbg !482

; <label>:9:                                      ; preds = %0
  store i8 1, i8* @arch_list_dirty, align 1, !dbg !483
  %10 = load i8*, i8** %2, align 8, !dbg !485
  call void @free(i8* %10) #8, !dbg !486
  br label %25, !dbg !487

; <label>:11:                                     ; preds = %0
  br label %12, !dbg !488

; <label>:12:                                     ; preds = %18, %11
  %13 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i32 0, i32 0, !dbg !489
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !dbg !491
  %15 = load i8*, i8** %2, align 8, !dbg !492
  %16 = call i32 @fgets_checked(i8* %13, i64 2048, %struct._IO_FILE* %14, i8* %15), !dbg !493
  %17 = icmp sge i32 %16, 0, !dbg !494
  br i1 %17, label %18, label %21, !dbg !495

; <label>:18:                                     ; preds = %12
  %19 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i32 0, i32 0, !dbg !496
  %20 = call %struct.dpkg_arch* @dpkg_arch_add(i8* %19), !dbg !497
  br label %12, !dbg !498, !llvm.loop !500

; <label>:21:                                     ; preds = %12
  %22 = load i8*, i8** %2, align 8, !dbg !501
  call void @free(i8* %22) #8, !dbg !502
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !dbg !503
  %24 = call i32 @fclose(%struct._IO_FILE* %23), !dbg !504
  br label %25, !dbg !505

; <label>:25:                                     ; preds = %21, %9
  ret void, !dbg !506
}

declare i8* @dpkg_db_get_path(i8*) #6

declare %struct._IO_FILE* @fopen(i8*, i8*) #6

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @fgets_checked(i8*, i64, %struct._IO_FILE*, i8*) #6

declare i32 @fclose(%struct._IO_FILE*) #6

; Function Attrs: nounwind uwtable
define void @dpkg_arch_save_list() #0 !dbg !507 {
  %1 = alloca %struct.atomic_file*, align 8
  %2 = alloca %struct.dpkg_arch*, align 8
  %3 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_file** %1, metadata !508, metadata !63), !dbg !516
  call void @llvm.dbg.declare(metadata %struct.dpkg_arch** %2, metadata !517, metadata !63), !dbg !518
  call void @llvm.dbg.declare(metadata i8** %3, metadata !519, metadata !63), !dbg !520
  %4 = load i8, i8* @arch_list_dirty, align 1, !dbg !521
  %5 = trunc i8 %4 to i1, !dbg !521
  br i1 %5, label %7, label %6, !dbg !523

; <label>:6:                                      ; preds = %0
  br label %50, !dbg !524

; <label>:7:                                      ; preds = %0
  %8 = call i8* @dpkg_db_get_path(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0)), !dbg !525
  store i8* %8, i8** %3, align 8, !dbg !526
  %9 = load i8*, i8** %3, align 8, !dbg !527
  %10 = call %struct.atomic_file* @atomic_file_new(i8* %9, i32 0), !dbg !528
  store %struct.atomic_file* %10, %struct.atomic_file** %1, align 8, !dbg !529
  %11 = load %struct.atomic_file*, %struct.atomic_file** %1, align 8, !dbg !530
  call void @atomic_file_open(%struct.atomic_file* %11), !dbg !531
  %12 = load %struct.dpkg_arch*, %struct.dpkg_arch** @arch_head, align 8, !dbg !532
  store %struct.dpkg_arch* %12, %struct.dpkg_arch** %2, align 8, !dbg !534
  br label %13, !dbg !535

; <label>:13:                                     ; preds = %39, %7
  %14 = load %struct.dpkg_arch*, %struct.dpkg_arch** %2, align 8, !dbg !536
  %15 = icmp ne %struct.dpkg_arch* %14, null, !dbg !539
  br i1 %15, label %16, label %43, !dbg !539

; <label>:16:                                     ; preds = %13
  %17 = load %struct.dpkg_arch*, %struct.dpkg_arch** %2, align 8, !dbg !540
  %18 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %17, i32 0, i32 2, !dbg !543
  %19 = load i32, i32* %18, align 8, !dbg !543
  %20 = icmp ne i32 %19, 6, !dbg !544
  br i1 %20, label %21, label %27, !dbg !545

; <label>:21:                                     ; preds = %16
  %22 = load %struct.dpkg_arch*, %struct.dpkg_arch** %2, align 8, !dbg !546
  %23 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %22, i32 0, i32 2, !dbg !547
  %24 = load i32, i32* %23, align 8, !dbg !547
  %25 = icmp ne i32 %24, 5, !dbg !548
  br i1 %25, label %26, label %27, !dbg !549

; <label>:26:                                     ; preds = %21
  br label %39, !dbg !551

; <label>:27:                                     ; preds = %21, %16
  %28 = load %struct.atomic_file*, %struct.atomic_file** %1, align 8, !dbg !552
  %29 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %28, i32 0, i32 3, !dbg !554
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %29, align 8, !dbg !554
  %31 = load %struct.dpkg_arch*, %struct.dpkg_arch** %2, align 8, !dbg !555
  %32 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %31, i32 0, i32 1, !dbg !556
  %33 = load i8*, i8** %32, align 8, !dbg !556
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %33), !dbg !557
  %35 = icmp slt i32 %34, 0, !dbg !558
  br i1 %35, label %36, label %38, !dbg !559

; <label>:36:                                     ; preds = %27
  %37 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i32 0, i32 0)) #8, !dbg !560
  call void (i8*, ...) @ohshite(i8* %37) #7, !dbg !561
  unreachable, !dbg !563

; <label>:38:                                     ; preds = %27
  br label %39, !dbg !564

; <label>:39:                                     ; preds = %38, %26
  %40 = load %struct.dpkg_arch*, %struct.dpkg_arch** %2, align 8, !dbg !565
  %41 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %40, i32 0, i32 0, !dbg !567
  %42 = load %struct.dpkg_arch*, %struct.dpkg_arch** %41, align 8, !dbg !567
  store %struct.dpkg_arch* %42, %struct.dpkg_arch** %2, align 8, !dbg !568
  br label %13, !dbg !569, !llvm.loop !570

; <label>:43:                                     ; preds = %13
  %44 = load %struct.atomic_file*, %struct.atomic_file** %1, align 8, !dbg !572
  call void @atomic_file_sync(%struct.atomic_file* %44), !dbg !573
  %45 = load %struct.atomic_file*, %struct.atomic_file** %1, align 8, !dbg !574
  call void @atomic_file_close(%struct.atomic_file* %45), !dbg !575
  %46 = load %struct.atomic_file*, %struct.atomic_file** %1, align 8, !dbg !576
  call void @atomic_file_commit(%struct.atomic_file* %46), !dbg !577
  %47 = load %struct.atomic_file*, %struct.atomic_file** %1, align 8, !dbg !578
  call void @atomic_file_free(%struct.atomic_file* %47), !dbg !579
  %48 = call i8* @dpkg_db_get_dir(), !dbg !580
  call void @dir_sync_path(i8* %48), !dbg !581
  store i8 0, i8* @arch_list_dirty, align 1, !dbg !583
  %49 = load i8*, i8** %3, align 8, !dbg !584
  call void @free(i8* %49) #8, !dbg !585
  br label %50, !dbg !586

; <label>:50:                                     ; preds = %43, %6
  ret void, !dbg !587
}

declare %struct.atomic_file* @atomic_file_new(i8*, i32) #6

declare void @atomic_file_open(%struct.atomic_file*) #6

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #6

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #2

declare void @atomic_file_sync(%struct.atomic_file*) #6

declare void @atomic_file_close(%struct.atomic_file*) #6

declare void @atomic_file_commit(%struct.atomic_file*) #6

declare void @atomic_file_free(%struct.atomic_file*) #6

declare void @dir_sync_path(i8*) #6

declare i8* @dpkg_db_get_dir() #6

declare zeroext i1 @c_isbits(i32, i32) #6

declare i8* @nfmalloc(i64) #6

declare i8* @nfstrsave(i8*) #6

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!59, !60}
!llvm.ident = !{!61}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !29, globals: !31)
!1 = !DIFile(filename: "[inter]lib--dpkg--arch.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !14, !18}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_arch_type", file: !4, line: 37, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/arch.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13}
!6 = !DIEnumerator(name: "DPKG_ARCH_NONE", value: 0)
!7 = !DIEnumerator(name: "DPKG_ARCH_EMPTY", value: 1)
!8 = !DIEnumerator(name: "DPKG_ARCH_ILLEGAL", value: 2)
!9 = !DIEnumerator(name: "DPKG_ARCH_WILDCARD", value: 3)
!10 = !DIEnumerator(name: "DPKG_ARCH_ALL", value: 4)
!11 = !DIEnumerator(name: "DPKG_ARCH_NATIVE", value: 5)
!12 = !DIEnumerator(name: "DPKG_ARCH_FOREIGN", value: 6)
!13 = !DIEnumerator(name: "DPKG_ARCH_UNKNOWN", value: 7)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "atomic_file_flags", file: !15, line: 36, size: 32, align: 32, elements: !16)
!15 = !DIFile(filename: "../../lib/dpkg/atomic-file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!16 = !{!17}
!17 = !DIEnumerator(name: "ATOMIC_FILE_BACKUP", value: 1)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_ctype_bit", file: !19, line: 32, size: 32, align: 32, elements: !20)
!19 = !DIFile(filename: "../../lib/dpkg/c-ctype.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28}
!21 = !DIEnumerator(name: "C_CTYPE_BLANK", value: 1)
!22 = !DIEnumerator(name: "C_CTYPE_WHITE", value: 2)
!23 = !DIEnumerator(name: "C_CTYPE_SPACE", value: 4)
!24 = !DIEnumerator(name: "C_CTYPE_UPPER", value: 8)
!25 = !DIEnumerator(name: "C_CTYPE_LOWER", value: 16)
!26 = !DIEnumerator(name: "C_CTYPE_DIGIT", value: 32)
!27 = !DIEnumerator(name: "C_CTYPE_ALPHA", value: 24)
!28 = !DIEnumerator(name: "C_CTYPE_ALNUM", value: 56)
!29 = !{!30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!31 = !{!32, !44, !46, !53, !54, !55, !56, !57, !58}
!32 = distinct !DIGlobalVariable(name: "buf", scope: !33, file: !34, line: 58, type: !41, isLocal: true, isDefinition: true, variable: [150 x i8]* @dpkg_arch_name_is_illegal.buf)
!33 = distinct !DISubprogram(name: "dpkg_arch_name_is_illegal", scope: !34, file: !34, line: 56, type: !35, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!34 = !DIFile(filename: "arch.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!40 = !{}
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1200, align: 8, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 150)
!44 = distinct !DIGlobalVariable(name: "arch_list_dirty", scope: !0, file: !34, line: 109, type: !45, isLocal: true, isDefinition: true, variable: i8* @arch_list_dirty)
!45 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!46 = distinct !DIGlobalVariable(name: "arch_item_none", scope: !0, file: !34, line: 81, type: !47, isLocal: true, isDefinition: true, variable: %struct.dpkg_arch* @arch_item_none)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !4, line: 48, size: 192, align: 64, elements: !48)
!48 = !{!49, !51, !52}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !47, file: !4, line: 49, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !47, file: !4, line: 50, baseType: !37, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !47, file: !4, line: 51, baseType: !3, size: 32, align: 32, offset: 128)
!53 = distinct !DIGlobalVariable(name: "arch_item_empty", scope: !0, file: !34, line: 86, type: !47, isLocal: true, isDefinition: true, variable: %struct.dpkg_arch* @arch_item_empty)
!54 = distinct !DIGlobalVariable(name: "arch_head", scope: !0, file: !34, line: 107, type: !50, isLocal: true, isDefinition: true, variable: %struct.dpkg_arch** @arch_head)
!55 = distinct !DIGlobalVariable(name: "arch_item_any", scope: !0, file: !34, line: 92, type: !47, isLocal: true, isDefinition: true, variable: %struct.dpkg_arch* @arch_item_any)
!56 = distinct !DIGlobalVariable(name: "arch_item_all", scope: !0, file: !34, line: 97, type: !47, isLocal: true, isDefinition: true, variable: %struct.dpkg_arch* @arch_item_all)
!57 = distinct !DIGlobalVariable(name: "arch_item_native", scope: !0, file: !34, line: 102, type: !47, isLocal: true, isDefinition: true, variable: %struct.dpkg_arch* @arch_item_native)
!58 = distinct !DIGlobalVariable(name: "arch_builtin_tail", scope: !0, file: !34, line: 108, type: !50, isLocal: true, isDefinition: true, variable: %struct.dpkg_arch** @arch_builtin_tail)
!59 = !{i32 2, !"Dwarf Version", i32 4}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!62 = !DILocalVariable(name: "name", arg: 1, scope: !33, file: !34, line: 56, type: !37)
!63 = !DIExpression()
!64 = !DILocation(line: 56, column: 39, scope: !33)
!65 = !DILocalVariable(name: "p", scope: !33, file: !34, line: 59, type: !37)
!66 = !DILocation(line: 59, column: 14, scope: !33)
!67 = !DILocation(line: 59, column: 18, scope: !33)
!68 = !DILocation(line: 61, column: 6, scope: !69)
!69 = distinct !DILexicalBlock(scope: !33, file: !34, line: 61, column: 6)
!70 = !DILocation(line: 61, column: 11, scope: !69)
!71 = !DILocation(line: 61, column: 6, scope: !33)
!72 = !DILocation(line: 62, column: 3, scope: !69)
!73 = !DILocation(line: 63, column: 8, scope: !74)
!74 = distinct !DILexicalBlock(scope: !33, file: !34, line: 63, column: 6)
!75 = !DILocation(line: 63, column: 7, scope: !74)
!76 = !DILocation(line: 63, column: 6, scope: !33)
!77 = !DILocation(line: 64, column: 9, scope: !74)
!78 = !DILocation(line: 64, column: 3, scope: !74)
!79 = !DILocation(line: 65, column: 18, scope: !80)
!80 = distinct !DILexicalBlock(scope: !33, file: !34, line: 65, column: 6)
!81 = !DILocation(line: 65, column: 17, scope: !80)
!82 = !DILocation(line: 65, column: 7, scope: !80)
!83 = !DILocation(line: 65, column: 6, scope: !33)
!84 = !DILocation(line: 66, column: 9, scope: !80)
!85 = !DILocation(line: 66, column: 3, scope: !80)
!86 = !DILocation(line: 67, column: 2, scope: !33)
!87 = !DILocation(line: 67, column: 10, scope: !88)
!88 = !DILexicalBlockFile(scope: !33, file: !34, discriminator: 1)
!89 = !DILocation(line: 67, column: 9, scope: !88)
!90 = !DILocation(line: 67, column: 14, scope: !88)
!91 = !DILocation(line: 67, column: 2, scope: !88)
!92 = !DILocation(line: 68, column: 19, scope: !93)
!93 = distinct !DILexicalBlock(scope: !33, file: !34, line: 68, column: 7)
!94 = !DILocation(line: 68, column: 18, scope: !93)
!95 = !DILocation(line: 68, column: 8, scope: !93)
!96 = !DILocation(line: 68, column: 22, scope: !93)
!97 = !DILocation(line: 68, column: 26, scope: !98)
!98 = !DILexicalBlockFile(scope: !93, file: !34, discriminator: 1)
!99 = !DILocation(line: 68, column: 25, scope: !98)
!100 = !DILocation(line: 68, column: 28, scope: !98)
!101 = !DILocation(line: 68, column: 7, scope: !98)
!102 = !DILocation(line: 69, column: 4, scope: !93)
!103 = !DILocation(line: 67, column: 2, scope: !104)
!104 = !DILexicalBlockFile(scope: !33, file: !34, discriminator: 2)
!105 = distinct !{!105, !86}
!106 = !DILocation(line: 70, column: 7, scope: !107)
!107 = distinct !DILexicalBlock(scope: !33, file: !34, line: 70, column: 6)
!108 = !DILocation(line: 70, column: 6, scope: !107)
!109 = !DILocation(line: 70, column: 9, scope: !107)
!110 = !DILocation(line: 70, column: 6, scope: !33)
!111 = !DILocation(line: 71, column: 3, scope: !107)
!112 = !DILocation(line: 73, column: 28, scope: !33)
!113 = !DILocation(line: 75, column: 12, scope: !33)
!114 = !DILocation(line: 75, column: 11, scope: !33)
!115 = !DILocation(line: 73, column: 2, scope: !88)
!116 = !DILocation(line: 76, column: 2, scope: !33)
!117 = !DILocation(line: 77, column: 1, scope: !33)
!118 = distinct !DISubprogram(name: "c_isalnum", scope: !19, file: !19, line: 114, type: !119, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!119 = !DISubroutineType(types: !120)
!120 = !{!45, !121}
!121 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!122 = !DILocalVariable(name: "c", arg: 1, scope: !118, file: !19, line: 114, type: !121)
!123 = !DILocation(line: 114, column: 15, scope: !118)
!124 = !DILocation(line: 116, column: 18, scope: !118)
!125 = !DILocation(line: 116, column: 9, scope: !118)
!126 = !DILocation(line: 116, column: 2, scope: !118)
!127 = distinct !DISubprogram(name: "dpkg_arch_find", scope: !34, file: !34, line: 136, type: !128, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!128 = !DISubroutineType(types: !129)
!129 = !{!50, !37}
!130 = !DILocalVariable(name: "name", arg: 1, scope: !127, file: !34, line: 136, type: !37)
!131 = !DILocation(line: 136, column: 28, scope: !127)
!132 = !DILocalVariable(name: "arch", scope: !127, file: !34, line: 138, type: !50)
!133 = !DILocation(line: 138, column: 20, scope: !127)
!134 = !DILocalVariable(name: "last_arch", scope: !127, file: !34, line: 138, type: !50)
!135 = !DILocation(line: 138, column: 27, scope: !127)
!136 = !DILocalVariable(name: "type", scope: !127, file: !34, line: 139, type: !3)
!137 = !DILocation(line: 139, column: 22, scope: !127)
!138 = !DILocation(line: 141, column: 6, scope: !139)
!139 = distinct !DILexicalBlock(scope: !127, file: !34, line: 141, column: 6)
!140 = !DILocation(line: 141, column: 11, scope: !139)
!141 = !DILocation(line: 141, column: 6, scope: !127)
!142 = !DILocation(line: 142, column: 3, scope: !139)
!143 = !DILocation(line: 143, column: 6, scope: !144)
!144 = distinct !DILexicalBlock(scope: !127, file: !34, line: 143, column: 6)
!145 = !DILocation(line: 143, column: 14, scope: !144)
!146 = !DILocation(line: 143, column: 6, scope: !127)
!147 = !DILocation(line: 144, column: 3, scope: !144)
!148 = !DILocation(line: 146, column: 14, scope: !149)
!149 = distinct !DILexicalBlock(scope: !127, file: !34, line: 146, column: 2)
!150 = !DILocation(line: 146, column: 12, scope: !149)
!151 = !DILocation(line: 146, column: 7, scope: !149)
!152 = !DILocation(line: 146, column: 25, scope: !153)
!153 = !DILexicalBlockFile(scope: !154, file: !34, discriminator: 1)
!154 = distinct !DILexicalBlock(scope: !149, file: !34, line: 146, column: 2)
!155 = !DILocation(line: 146, column: 2, scope: !153)
!156 = !DILocation(line: 147, column: 14, scope: !157)
!157 = distinct !DILexicalBlock(scope: !158, file: !34, line: 147, column: 7)
!158 = distinct !DILexicalBlock(scope: !154, file: !34, line: 146, column: 50)
!159 = !DILocation(line: 147, column: 20, scope: !157)
!160 = !DILocation(line: 147, column: 26, scope: !157)
!161 = !DILocation(line: 147, column: 7, scope: !157)
!162 = !DILocation(line: 147, column: 32, scope: !157)
!163 = !DILocation(line: 147, column: 7, scope: !158)
!164 = !DILocation(line: 148, column: 11, scope: !157)
!165 = !DILocation(line: 148, column: 4, scope: !157)
!166 = !DILocation(line: 149, column: 15, scope: !158)
!167 = !DILocation(line: 149, column: 13, scope: !158)
!168 = !DILocation(line: 150, column: 2, scope: !158)
!169 = !DILocation(line: 146, column: 38, scope: !170)
!170 = !DILexicalBlockFile(scope: !154, file: !34, discriminator: 2)
!171 = !DILocation(line: 146, column: 44, scope: !170)
!172 = !DILocation(line: 146, column: 36, scope: !170)
!173 = !DILocation(line: 146, column: 2, scope: !170)
!174 = distinct !{!174, !175}
!175 = !DILocation(line: 146, column: 2, scope: !127)
!176 = !DILocation(line: 152, column: 32, scope: !177)
!177 = distinct !DILexicalBlock(scope: !127, file: !34, line: 152, column: 6)
!178 = !DILocation(line: 152, column: 6, scope: !177)
!179 = !DILocation(line: 152, column: 6, scope: !127)
!180 = !DILocation(line: 153, column: 8, scope: !177)
!181 = !DILocation(line: 153, column: 3, scope: !177)
!182 = !DILocation(line: 155, column: 8, scope: !177)
!183 = !DILocation(line: 157, column: 23, scope: !127)
!184 = !DILocation(line: 157, column: 29, scope: !127)
!185 = !DILocation(line: 157, column: 9, scope: !127)
!186 = !DILocation(line: 157, column: 7, scope: !127)
!187 = !DILocation(line: 158, column: 20, scope: !127)
!188 = !DILocation(line: 158, column: 2, scope: !127)
!189 = !DILocation(line: 158, column: 13, scope: !127)
!190 = !DILocation(line: 158, column: 18, scope: !127)
!191 = !DILocation(line: 160, column: 9, scope: !127)
!192 = !DILocation(line: 160, column: 2, scope: !127)
!193 = !DILocation(line: 161, column: 1, scope: !127)
!194 = distinct !DISubprogram(name: "dpkg_arch_new", scope: !34, file: !34, line: 112, type: !195, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!195 = !DISubroutineType(types: !196)
!196 = !{!50, !37, !3}
!197 = !DILocalVariable(name: "name", arg: 1, scope: !194, file: !34, line: 112, type: !37)
!198 = !DILocation(line: 112, column: 27, scope: !194)
!199 = !DILocalVariable(name: "type", arg: 2, scope: !194, file: !34, line: 112, type: !3)
!200 = !DILocation(line: 112, column: 53, scope: !194)
!201 = !DILocalVariable(name: "new", scope: !194, file: !34, line: 114, type: !50)
!202 = !DILocation(line: 114, column: 20, scope: !194)
!203 = !DILocation(line: 116, column: 8, scope: !194)
!204 = !DILocation(line: 116, column: 6, scope: !194)
!205 = !DILocation(line: 117, column: 2, scope: !194)
!206 = !DILocation(line: 117, column: 7, scope: !194)
!207 = !DILocation(line: 117, column: 12, scope: !194)
!208 = !DILocation(line: 118, column: 24, scope: !194)
!209 = !DILocation(line: 118, column: 14, scope: !194)
!210 = !DILocation(line: 118, column: 2, scope: !194)
!211 = !DILocation(line: 118, column: 7, scope: !194)
!212 = !DILocation(line: 118, column: 12, scope: !194)
!213 = !DILocation(line: 119, column: 14, scope: !194)
!214 = !DILocation(line: 119, column: 2, scope: !194)
!215 = !DILocation(line: 119, column: 7, scope: !194)
!216 = !DILocation(line: 119, column: 12, scope: !194)
!217 = !DILocation(line: 121, column: 9, scope: !194)
!218 = !DILocation(line: 121, column: 2, scope: !194)
!219 = distinct !DISubprogram(name: "dpkg_arch_get", scope: !34, file: !34, line: 170, type: !220, isLocal: false, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!220 = !DISubroutineType(types: !221)
!221 = !{!50, !3}
!222 = !DILocalVariable(name: "type", arg: 1, scope: !219, file: !34, line: 170, type: !3)
!223 = !DILocation(line: 170, column: 35, scope: !219)
!224 = !DILocation(line: 172, column: 10, scope: !219)
!225 = !DILocation(line: 172, column: 2, scope: !219)
!226 = !DILocation(line: 174, column: 3, scope: !227)
!227 = distinct !DILexicalBlock(scope: !219, file: !34, line: 172, column: 16)
!228 = !DILocation(line: 176, column: 3, scope: !227)
!229 = !DILocation(line: 178, column: 3, scope: !227)
!230 = !DILocation(line: 180, column: 3, scope: !227)
!231 = !DILocation(line: 182, column: 3, scope: !227)
!232 = !DILocation(line: 186, column: 79, scope: !227)
!233 = !DILocation(line: 186, column: 3, scope: !227)
!234 = !DILocation(line: 189, column: 3, scope: !227)
!235 = !DILocation(line: 191, column: 1, scope: !219)
!236 = distinct !DISubprogram(name: "dpkg_arch_get_list", scope: !34, file: !34, line: 200, type: !237, isLocal: false, isDefinition: true, scopeLine: 201, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!237 = !DISubroutineType(types: !238)
!238 = !{!50}
!239 = !DILocation(line: 202, column: 9, scope: !236)
!240 = !DILocation(line: 202, column: 2, scope: !236)
!241 = distinct !DISubprogram(name: "dpkg_arch_reset_list", scope: !34, file: !34, line: 212, type: !242, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!242 = !DISubroutineType(types: !243)
!243 = !{null}
!244 = !DILocation(line: 214, column: 2, scope: !241)
!245 = !DILocation(line: 214, column: 21, scope: !241)
!246 = !DILocation(line: 214, column: 26, scope: !241)
!247 = !DILocation(line: 215, column: 18, scope: !241)
!248 = !DILocation(line: 216, column: 1, scope: !241)
!249 = distinct !DISubprogram(name: "varbuf_add_archqual", scope: !34, file: !34, line: 219, type: !250, isLocal: false, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !252, !263}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !254, line: 55, size: 192, align: 64, elements: !255)
!254 = !DIFile(filename: "../../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!255 = !{!256, !260, !261}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !253, file: !254, line: 56, baseType: !257, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !258, line: 216, baseType: !259)
!258 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!259 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !253, file: !254, line: 56, baseType: !257, size: 64, align: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !253, file: !254, line: 57, baseType: !262, size: 64, align: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!265 = !DILocalVariable(name: "vb", arg: 1, scope: !249, file: !34, line: 219, type: !252)
!266 = !DILocation(line: 219, column: 36, scope: !249)
!267 = !DILocalVariable(name: "arch", arg: 2, scope: !249, file: !34, line: 219, type: !263)
!268 = !DILocation(line: 219, column: 64, scope: !249)
!269 = !DILocation(line: 221, column: 6, scope: !270)
!270 = distinct !DILexicalBlock(scope: !249, file: !34, line: 221, column: 6)
!271 = !DILocation(line: 221, column: 12, scope: !270)
!272 = !DILocation(line: 221, column: 17, scope: !270)
!273 = !DILocation(line: 221, column: 6, scope: !249)
!274 = !DILocation(line: 222, column: 3, scope: !270)
!275 = !DILocation(line: 223, column: 6, scope: !276)
!276 = distinct !DILexicalBlock(scope: !249, file: !34, line: 223, column: 6)
!277 = !DILocation(line: 223, column: 12, scope: !276)
!278 = !DILocation(line: 223, column: 17, scope: !276)
!279 = !DILocation(line: 223, column: 6, scope: !249)
!280 = !DILocation(line: 224, column: 3, scope: !276)
!281 = !DILocation(line: 226, column: 18, scope: !249)
!282 = !DILocation(line: 226, column: 2, scope: !249)
!283 = !DILocation(line: 227, column: 17, scope: !249)
!284 = !DILocation(line: 227, column: 21, scope: !249)
!285 = !DILocation(line: 227, column: 27, scope: !249)
!286 = !DILocation(line: 227, column: 40, scope: !249)
!287 = !DILocation(line: 227, column: 46, scope: !249)
!288 = !DILocation(line: 227, column: 33, scope: !249)
!289 = !DILocation(line: 227, column: 2, scope: !290)
!290 = !DILexicalBlockFile(scope: !249, file: !34, discriminator: 1)
!291 = !DILocation(line: 228, column: 1, scope: !249)
!292 = !DILocation(line: 228, column: 1, scope: !290)
!293 = distinct !DISubprogram(name: "dpkg_arch_describe", scope: !34, file: !34, line: 234, type: !294, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!294 = !DISubroutineType(types: !295)
!295 = !{!37, !263}
!296 = !DILocalVariable(name: "arch", arg: 1, scope: !293, file: !34, line: 234, type: !263)
!297 = !DILocation(line: 234, column: 44, scope: !293)
!298 = !DILocation(line: 236, column: 6, scope: !299)
!299 = distinct !DILexicalBlock(scope: !293, file: !34, line: 236, column: 6)
!300 = !DILocation(line: 236, column: 12, scope: !299)
!301 = !DILocation(line: 236, column: 17, scope: !299)
!302 = !DILocation(line: 236, column: 6, scope: !293)
!303 = !DILocation(line: 237, column: 9, scope: !299)
!304 = !DILocation(line: 237, column: 3, scope: !299)
!305 = !DILocation(line: 238, column: 6, scope: !306)
!306 = distinct !DILexicalBlock(scope: !293, file: !34, line: 238, column: 6)
!307 = !DILocation(line: 238, column: 12, scope: !306)
!308 = !DILocation(line: 238, column: 17, scope: !306)
!309 = !DILocation(line: 238, column: 6, scope: !293)
!310 = !DILocation(line: 239, column: 9, scope: !306)
!311 = !DILocation(line: 239, column: 3, scope: !306)
!312 = !DILocation(line: 241, column: 9, scope: !293)
!313 = !DILocation(line: 241, column: 15, scope: !293)
!314 = !DILocation(line: 241, column: 2, scope: !293)
!315 = !DILocation(line: 242, column: 1, scope: !293)
!316 = distinct !DISubprogram(name: "pgettext_aux", scope: !317, file: !317, line: 136, type: !318, isLocal: true, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!317 = !DIFile(filename: "../../lib/compat/gettext.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!318 = !DISubroutineType(types: !319)
!319 = !{!37, !37, !37, !37, !121}
!320 = !DILocalVariable(name: "domain", arg: 1, scope: !316, file: !317, line: 136, type: !37)
!321 = !DILocation(line: 136, column: 27, scope: !316)
!322 = !DILocalVariable(name: "msg_ctxt_id", arg: 2, scope: !316, file: !317, line: 137, type: !37)
!323 = !DILocation(line: 137, column: 20, scope: !316)
!324 = !DILocalVariable(name: "msgid", arg: 3, scope: !316, file: !317, line: 137, type: !37)
!325 = !DILocation(line: 137, column: 45, scope: !316)
!326 = !DILocalVariable(name: "category", arg: 4, scope: !316, file: !317, line: 138, type: !121)
!327 = !DILocation(line: 138, column: 12, scope: !316)
!328 = !DILocalVariable(name: "translation", scope: !316, file: !317, line: 140, type: !37)
!329 = !DILocation(line: 140, column: 15, scope: !316)
!330 = !DILocation(line: 140, column: 40, scope: !316)
!331 = !DILocation(line: 140, column: 48, scope: !316)
!332 = !DILocation(line: 140, column: 61, scope: !316)
!333 = !DILocation(line: 140, column: 29, scope: !316)
!334 = !DILocation(line: 141, column: 7, scope: !335)
!335 = distinct !DILexicalBlock(scope: !316, file: !317, line: 141, column: 7)
!336 = !DILocation(line: 141, column: 22, scope: !335)
!337 = !DILocation(line: 141, column: 19, scope: !335)
!338 = !DILocation(line: 141, column: 7, scope: !316)
!339 = !DILocation(line: 142, column: 12, scope: !335)
!340 = !DILocation(line: 142, column: 5, scope: !335)
!341 = !DILocation(line: 144, column: 12, scope: !335)
!342 = !DILocation(line: 144, column: 5, scope: !335)
!343 = !DILocation(line: 145, column: 1, scope: !316)
!344 = distinct !DISubprogram(name: "dpkg_arch_add", scope: !34, file: !34, line: 248, type: !128, isLocal: false, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!345 = !DILocalVariable(name: "name", arg: 1, scope: !344, file: !34, line: 248, type: !37)
!346 = !DILocation(line: 248, column: 27, scope: !344)
!347 = !DILocalVariable(name: "arch", scope: !344, file: !34, line: 250, type: !50)
!348 = !DILocation(line: 250, column: 20, scope: !344)
!349 = !DILocation(line: 252, column: 24, scope: !344)
!350 = !DILocation(line: 252, column: 9, scope: !344)
!351 = !DILocation(line: 252, column: 7, scope: !344)
!352 = !DILocation(line: 253, column: 6, scope: !353)
!353 = distinct !DILexicalBlock(scope: !344, file: !34, line: 253, column: 6)
!354 = !DILocation(line: 253, column: 12, scope: !353)
!355 = !DILocation(line: 253, column: 17, scope: !353)
!356 = !DILocation(line: 253, column: 6, scope: !344)
!357 = !DILocation(line: 254, column: 3, scope: !358)
!358 = distinct !DILexicalBlock(scope: !353, file: !34, line: 253, column: 39)
!359 = !DILocation(line: 254, column: 9, scope: !358)
!360 = !DILocation(line: 254, column: 14, scope: !358)
!361 = !DILocation(line: 255, column: 19, scope: !358)
!362 = !DILocation(line: 256, column: 2, scope: !358)
!363 = !DILocation(line: 258, column: 9, scope: !344)
!364 = !DILocation(line: 258, column: 2, scope: !344)
!365 = distinct !DISubprogram(name: "dpkg_arch_unmark", scope: !34, file: !34, line: 265, type: !366, isLocal: false, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !50}
!368 = !DILocalVariable(name: "arch_remove", arg: 1, scope: !365, file: !34, line: 265, type: !50)
!369 = !DILocation(line: 265, column: 36, scope: !365)
!370 = !DILocalVariable(name: "arch", scope: !365, file: !34, line: 267, type: !50)
!371 = !DILocation(line: 267, column: 20, scope: !365)
!372 = !DILocation(line: 269, column: 14, scope: !373)
!373 = distinct !DILexicalBlock(scope: !365, file: !34, line: 269, column: 2)
!374 = !DILocation(line: 269, column: 33, scope: !373)
!375 = !DILocation(line: 269, column: 12, scope: !373)
!376 = !DILocation(line: 269, column: 7, scope: !373)
!377 = !DILocation(line: 269, column: 39, scope: !378)
!378 = !DILexicalBlockFile(scope: !379, file: !34, discriminator: 1)
!379 = distinct !DILexicalBlock(scope: !373, file: !34, line: 269, column: 2)
!380 = !DILocation(line: 269, column: 2, scope: !378)
!381 = !DILocation(line: 270, column: 7, scope: !382)
!382 = distinct !DILexicalBlock(scope: !383, file: !34, line: 270, column: 7)
!383 = distinct !DILexicalBlock(scope: !379, file: !34, line: 269, column: 64)
!384 = !DILocation(line: 270, column: 13, scope: !382)
!385 = !DILocation(line: 270, column: 18, scope: !382)
!386 = !DILocation(line: 270, column: 7, scope: !383)
!387 = !DILocation(line: 271, column: 4, scope: !382)
!388 = !DILocation(line: 273, column: 7, scope: !389)
!389 = distinct !DILexicalBlock(scope: !383, file: !34, line: 273, column: 7)
!390 = !DILocation(line: 273, column: 15, scope: !389)
!391 = !DILocation(line: 273, column: 12, scope: !389)
!392 = !DILocation(line: 273, column: 7, scope: !383)
!393 = !DILocation(line: 274, column: 4, scope: !394)
!394 = distinct !DILexicalBlock(scope: !389, file: !34, line: 273, column: 28)
!395 = !DILocation(line: 274, column: 10, scope: !394)
!396 = !DILocation(line: 274, column: 15, scope: !394)
!397 = !DILocation(line: 275, column: 20, scope: !394)
!398 = !DILocation(line: 276, column: 4, scope: !394)
!399 = !DILocation(line: 278, column: 2, scope: !383)
!400 = !DILocation(line: 269, column: 52, scope: !401)
!401 = !DILexicalBlockFile(scope: !379, file: !34, discriminator: 2)
!402 = !DILocation(line: 269, column: 58, scope: !401)
!403 = !DILocation(line: 269, column: 50, scope: !401)
!404 = !DILocation(line: 269, column: 2, scope: !401)
!405 = distinct !{!405, !406}
!406 = !DILocation(line: 269, column: 2, scope: !365)
!407 = !DILocation(line: 279, column: 1, scope: !365)
!408 = distinct !DISubprogram(name: "dpkg_arch_load_list", scope: !34, file: !34, line: 285, type: !242, isLocal: false, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!409 = !DILocalVariable(name: "fp", scope: !408, file: !34, line: 287, type: !410)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !412, line: 48, baseType: !413)
!412 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !414, line: 241, size: 1728, align: 64, elements: !415)
!414 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!415 = !{!416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !436, !437, !438, !439, !443, !445, !447, !451, !454, !456, !457, !458, !459, !460, !461, !462}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !413, file: !414, line: 242, baseType: !121, size: 32, align: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !413, file: !414, line: 247, baseType: !262, size: 64, align: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !413, file: !414, line: 248, baseType: !262, size: 64, align: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !413, file: !414, line: 249, baseType: !262, size: 64, align: 64, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !413, file: !414, line: 250, baseType: !262, size: 64, align: 64, offset: 256)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !413, file: !414, line: 251, baseType: !262, size: 64, align: 64, offset: 320)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !413, file: !414, line: 252, baseType: !262, size: 64, align: 64, offset: 384)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !413, file: !414, line: 253, baseType: !262, size: 64, align: 64, offset: 448)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !413, file: !414, line: 254, baseType: !262, size: 64, align: 64, offset: 512)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !413, file: !414, line: 256, baseType: !262, size: 64, align: 64, offset: 576)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !413, file: !414, line: 257, baseType: !262, size: 64, align: 64, offset: 640)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !413, file: !414, line: 258, baseType: !262, size: 64, align: 64, offset: 704)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !413, file: !414, line: 260, baseType: !429, size: 64, align: 64, offset: 768)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64, align: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !414, line: 156, size: 192, align: 64, elements: !431)
!431 = !{!432, !433, !435}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !430, file: !414, line: 157, baseType: !429, size: 64, align: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !430, file: !414, line: 158, baseType: !434, size: 64, align: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !430, file: !414, line: 162, baseType: !121, size: 32, align: 32, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !413, file: !414, line: 262, baseType: !434, size: 64, align: 64, offset: 832)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !413, file: !414, line: 264, baseType: !121, size: 32, align: 32, offset: 896)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !413, file: !414, line: 268, baseType: !121, size: 32, align: 32, offset: 928)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !413, file: !414, line: 270, baseType: !440, size: 64, align: 64, offset: 960)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !441, line: 131, baseType: !442)
!441 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!442 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !413, file: !414, line: 274, baseType: !444, size: 16, align: 16, offset: 1024)
!444 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !413, file: !414, line: 275, baseType: !446, size: 8, align: 8, offset: 1040)
!446 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !413, file: !414, line: 276, baseType: !448, size: 8, align: 8, offset: 1048)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 8, align: 8, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 1)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !413, file: !414, line: 280, baseType: !452, size: 64, align: 64, offset: 1088)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64, align: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !414, line: 150, baseType: null)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !413, file: !414, line: 289, baseType: !455, size: 64, align: 64, offset: 1152)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !441, line: 132, baseType: !442)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !413, file: !414, line: 297, baseType: !30, size: 64, align: 64, offset: 1216)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !413, file: !414, line: 298, baseType: !30, size: 64, align: 64, offset: 1280)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !413, file: !414, line: 299, baseType: !30, size: 64, align: 64, offset: 1344)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !413, file: !414, line: 300, baseType: !30, size: 64, align: 64, offset: 1408)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !413, file: !414, line: 302, baseType: !257, size: 64, align: 64, offset: 1472)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !413, file: !414, line: 303, baseType: !121, size: 32, align: 32, offset: 1536)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !413, file: !414, line: 305, baseType: !463, size: 160, align: 8, offset: 1568)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 160, align: 8, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 20)
!466 = !DILocation(line: 287, column: 8, scope: !408)
!467 = !DILocalVariable(name: "archfile", scope: !408, file: !34, line: 288, type: !262)
!468 = !DILocation(line: 288, column: 8, scope: !408)
!469 = !DILocalVariable(name: "archname", scope: !408, file: !34, line: 289, type: !470)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 16384, align: 8, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 2048)
!473 = !DILocation(line: 289, column: 7, scope: !408)
!474 = !DILocation(line: 291, column: 13, scope: !408)
!475 = !DILocation(line: 291, column: 11, scope: !408)
!476 = !DILocation(line: 292, column: 13, scope: !408)
!477 = !DILocation(line: 292, column: 7, scope: !408)
!478 = !DILocation(line: 292, column: 5, scope: !408)
!479 = !DILocation(line: 293, column: 6, scope: !480)
!480 = distinct !DILexicalBlock(scope: !408, file: !34, line: 293, column: 6)
!481 = !DILocation(line: 293, column: 9, scope: !480)
!482 = !DILocation(line: 293, column: 6, scope: !408)
!483 = !DILocation(line: 294, column: 19, scope: !484)
!484 = distinct !DILexicalBlock(scope: !480, file: !34, line: 293, column: 17)
!485 = !DILocation(line: 295, column: 8, scope: !484)
!486 = !DILocation(line: 295, column: 3, scope: !484)
!487 = !DILocation(line: 296, column: 3, scope: !484)
!488 = !DILocation(line: 299, column: 2, scope: !408)
!489 = !DILocation(line: 299, column: 23, scope: !490)
!490 = !DILexicalBlockFile(scope: !408, file: !34, discriminator: 1)
!491 = !DILocation(line: 299, column: 51, scope: !490)
!492 = !DILocation(line: 299, column: 55, scope: !490)
!493 = !DILocation(line: 299, column: 9, scope: !490)
!494 = !DILocation(line: 299, column: 65, scope: !490)
!495 = !DILocation(line: 299, column: 2, scope: !490)
!496 = !DILocation(line: 300, column: 17, scope: !408)
!497 = !DILocation(line: 300, column: 3, scope: !408)
!498 = !DILocation(line: 299, column: 2, scope: !499)
!499 = !DILexicalBlockFile(scope: !408, file: !34, discriminator: 2)
!500 = distinct !{!500, !488}
!501 = !DILocation(line: 302, column: 7, scope: !408)
!502 = !DILocation(line: 302, column: 2, scope: !408)
!503 = !DILocation(line: 303, column: 9, scope: !408)
!504 = !DILocation(line: 303, column: 2, scope: !408)
!505 = !DILocation(line: 304, column: 1, scope: !408)
!506 = !DILocation(line: 304, column: 1, scope: !490)
!507 = distinct !DISubprogram(name: "dpkg_arch_save_list", scope: !34, file: !34, line: 310, type: !242, isLocal: false, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!508 = !DILocalVariable(name: "file", scope: !507, file: !34, line: 312, type: !509)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64, align: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic_file", file: !15, line: 40, size: 256, align: 64, elements: !511)
!511 = !{!512, !513, !514, !515}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !510, file: !15, line: 41, baseType: !14, size: 32, align: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !510, file: !15, line: 42, baseType: !262, size: 64, align: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "name_new", scope: !510, file: !15, line: 43, baseType: !262, size: 64, align: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !510, file: !15, line: 44, baseType: !410, size: 64, align: 64, offset: 192)
!516 = !DILocation(line: 312, column: 22, scope: !507)
!517 = !DILocalVariable(name: "arch", scope: !507, file: !34, line: 313, type: !50)
!518 = !DILocation(line: 313, column: 20, scope: !507)
!519 = !DILocalVariable(name: "archfile", scope: !507, file: !34, line: 314, type: !262)
!520 = !DILocation(line: 314, column: 8, scope: !507)
!521 = !DILocation(line: 316, column: 7, scope: !522)
!522 = distinct !DILexicalBlock(scope: !507, file: !34, line: 316, column: 6)
!523 = !DILocation(line: 316, column: 6, scope: !507)
!524 = !DILocation(line: 317, column: 3, scope: !522)
!525 = !DILocation(line: 319, column: 13, scope: !507)
!526 = !DILocation(line: 319, column: 11, scope: !507)
!527 = !DILocation(line: 320, column: 25, scope: !507)
!528 = !DILocation(line: 320, column: 9, scope: !507)
!529 = !DILocation(line: 320, column: 7, scope: !507)
!530 = !DILocation(line: 321, column: 19, scope: !507)
!531 = !DILocation(line: 321, column: 2, scope: !507)
!532 = !DILocation(line: 323, column: 14, scope: !533)
!533 = distinct !DILexicalBlock(scope: !507, file: !34, line: 323, column: 2)
!534 = !DILocation(line: 323, column: 12, scope: !533)
!535 = !DILocation(line: 323, column: 7, scope: !533)
!536 = !DILocation(line: 323, column: 25, scope: !537)
!537 = !DILexicalBlockFile(scope: !538, file: !34, discriminator: 1)
!538 = distinct !DILexicalBlock(scope: !533, file: !34, line: 323, column: 2)
!539 = !DILocation(line: 323, column: 2, scope: !537)
!540 = !DILocation(line: 324, column: 7, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !34, line: 324, column: 7)
!542 = distinct !DILexicalBlock(scope: !538, file: !34, line: 323, column: 50)
!543 = !DILocation(line: 324, column: 13, scope: !541)
!544 = !DILocation(line: 324, column: 18, scope: !541)
!545 = !DILocation(line: 324, column: 39, scope: !541)
!546 = !DILocation(line: 325, column: 7, scope: !541)
!547 = !DILocation(line: 325, column: 13, scope: !541)
!548 = !DILocation(line: 325, column: 18, scope: !541)
!549 = !DILocation(line: 324, column: 7, scope: !550)
!550 = !DILexicalBlockFile(scope: !542, file: !34, discriminator: 1)
!551 = !DILocation(line: 326, column: 4, scope: !541)
!552 = !DILocation(line: 328, column: 15, scope: !553)
!553 = distinct !DILexicalBlock(scope: !542, file: !34, line: 328, column: 7)
!554 = !DILocation(line: 328, column: 21, scope: !553)
!555 = !DILocation(line: 328, column: 33, scope: !553)
!556 = !DILocation(line: 328, column: 39, scope: !553)
!557 = !DILocation(line: 328, column: 7, scope: !553)
!558 = !DILocation(line: 328, column: 45, scope: !553)
!559 = !DILocation(line: 328, column: 7, scope: !542)
!560 = !DILocation(line: 329, column: 11, scope: !553)
!561 = !DILocation(line: 329, column: 4, scope: !562)
!562 = !DILexicalBlockFile(scope: !553, file: !34, discriminator: 1)
!563 = !DILocation(line: 329, column: 4, scope: !553)
!564 = !DILocation(line: 330, column: 2, scope: !542)
!565 = !DILocation(line: 323, column: 38, scope: !566)
!566 = !DILexicalBlockFile(scope: !538, file: !34, discriminator: 2)
!567 = !DILocation(line: 323, column: 44, scope: !566)
!568 = !DILocation(line: 323, column: 36, scope: !566)
!569 = !DILocation(line: 323, column: 2, scope: !566)
!570 = distinct !{!570, !571}
!571 = !DILocation(line: 323, column: 2, scope: !507)
!572 = !DILocation(line: 332, column: 19, scope: !507)
!573 = !DILocation(line: 332, column: 2, scope: !507)
!574 = !DILocation(line: 333, column: 20, scope: !507)
!575 = !DILocation(line: 333, column: 2, scope: !507)
!576 = !DILocation(line: 334, column: 21, scope: !507)
!577 = !DILocation(line: 334, column: 2, scope: !507)
!578 = !DILocation(line: 335, column: 19, scope: !507)
!579 = !DILocation(line: 335, column: 2, scope: !507)
!580 = !DILocation(line: 337, column: 16, scope: !507)
!581 = !DILocation(line: 337, column: 2, scope: !582)
!582 = !DILexicalBlockFile(scope: !507, file: !34, discriminator: 1)
!583 = !DILocation(line: 339, column: 18, scope: !507)
!584 = !DILocation(line: 341, column: 7, scope: !507)
!585 = !DILocation(line: 341, column: 2, scope: !507)
!586 = !DILocation(line: 342, column: 1, scope: !507)
!587 = !DILocation(line: 342, column: 1, scope: !582)
