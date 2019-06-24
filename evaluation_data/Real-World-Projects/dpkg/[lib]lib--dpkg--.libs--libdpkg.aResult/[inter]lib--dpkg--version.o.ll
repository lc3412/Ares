; ModuleID = './[inter]lib--dpkg--version.o.i'
source_filename = "./[inter]lib--dpkg--version.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dpkg_version = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"version.c\00", align 1
@__func__.dpkg_version_relate = private unnamed_addr constant [20 x i8] c"dpkg_version_relate\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unknown dpkg_relation %d\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define void @dpkg_version_blank(%struct.dpkg_version*) #0 !dbg !28 {
  %2 = alloca %struct.dpkg_version*, align 8
  store %struct.dpkg_version* %0, %struct.dpkg_version** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_version** %2, metadata !43, metadata !44), !dbg !45
  %3 = load %struct.dpkg_version*, %struct.dpkg_version** %2, align 8, !dbg !46
  %4 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %3, i32 0, i32 0, !dbg !47
  store i32 0, i32* %4, align 8, !dbg !48
  %5 = load %struct.dpkg_version*, %struct.dpkg_version** %2, align 8, !dbg !49
  %6 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %5, i32 0, i32 1, !dbg !50
  store i8* null, i8** %6, align 8, !dbg !51
  %7 = load %struct.dpkg_version*, %struct.dpkg_version** %2, align 8, !dbg !52
  %8 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %7, i32 0, i32 2, !dbg !53
  store i8* null, i8** %8, align 8, !dbg !54
  ret void, !dbg !55
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @dpkg_version_is_informative(%struct.dpkg_version*) #0 !dbg !56 {
  %2 = alloca %struct.dpkg_version*, align 8
  store %struct.dpkg_version* %0, %struct.dpkg_version** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_version** %2, metadata !62, metadata !44), !dbg !63
  %3 = load %struct.dpkg_version*, %struct.dpkg_version** %2, align 8, !dbg !64
  %4 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %3, i32 0, i32 0, !dbg !65
  %5 = load i32, i32* %4, align 8, !dbg !65
  %6 = icmp ne i32 %5, 0, !dbg !64
  br i1 %6, label %17, label %7, !dbg !66

; <label>:7:                                      ; preds = %1
  %8 = load %struct.dpkg_version*, %struct.dpkg_version** %2, align 8, !dbg !67
  %9 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %8, i32 0, i32 1, !dbg !68
  %10 = load i8*, i8** %9, align 8, !dbg !68
  %11 = call zeroext i1 @str_is_set(i8* %10), !dbg !69
  br i1 %11, label %17, label %12, !dbg !70

; <label>:12:                                     ; preds = %7
  %13 = load %struct.dpkg_version*, %struct.dpkg_version** %2, align 8, !dbg !71
  %14 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %13, i32 0, i32 2, !dbg !72
  %15 = load i8*, i8** %14, align 8, !dbg !72
  %16 = call zeroext i1 @str_is_set(i8* %15), !dbg !73
  br label %17, !dbg !74

; <label>:17:                                     ; preds = %12, %7, %1
  %18 = phi i1 [ true, %7 ], [ true, %1 ], [ %16, %12 ]
  ret i1 %18, !dbg !76
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @str_is_set(i8*) #2 !dbg !77 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !81, metadata !44), !dbg !82
  %3 = load i8*, i8** %2, align 8, !dbg !83
  %4 = icmp ne i8* %3, null, !dbg !84
  br i1 %4, label %5, label %11, !dbg !85

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !86
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !86
  %8 = load i8, i8* %7, align 1, !dbg !86
  %9 = sext i8 %8 to i32, !dbg !86
  %10 = icmp ne i32 %9, 0, !dbg !88
  br label %11

; <label>:11:                                     ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  ret i1 %12, !dbg !89
}

; Function Attrs: nounwind uwtable
define i32 @dpkg_version_compare(%struct.dpkg_version*, %struct.dpkg_version*) #0 !dbg !91 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpkg_version*, align 8
  %5 = alloca %struct.dpkg_version*, align 8
  %6 = alloca i32, align 4
  store %struct.dpkg_version* %0, %struct.dpkg_version** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_version** %4, metadata !95, metadata !44), !dbg !96
  store %struct.dpkg_version* %1, %struct.dpkg_version** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_version** %5, metadata !97, metadata !44), !dbg !98
  call void @llvm.dbg.declare(metadata i32* %6, metadata !99, metadata !44), !dbg !100
  %7 = load %struct.dpkg_version*, %struct.dpkg_version** %4, align 8, !dbg !101
  %8 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %7, i32 0, i32 0, !dbg !103
  %9 = load i32, i32* %8, align 8, !dbg !103
  %10 = load %struct.dpkg_version*, %struct.dpkg_version** %5, align 8, !dbg !104
  %11 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %10, i32 0, i32 0, !dbg !105
  %12 = load i32, i32* %11, align 8, !dbg !105
  %13 = icmp ugt i32 %9, %12, !dbg !106
  br i1 %13, label %14, label %15, !dbg !107

; <label>:14:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !108
  br label %44, !dbg !108

; <label>:15:                                     ; preds = %2
  %16 = load %struct.dpkg_version*, %struct.dpkg_version** %4, align 8, !dbg !109
  %17 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %16, i32 0, i32 0, !dbg !111
  %18 = load i32, i32* %17, align 8, !dbg !111
  %19 = load %struct.dpkg_version*, %struct.dpkg_version** %5, align 8, !dbg !112
  %20 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %19, i32 0, i32 0, !dbg !113
  %21 = load i32, i32* %20, align 8, !dbg !113
  %22 = icmp ult i32 %18, %21, !dbg !114
  br i1 %22, label %23, label %24, !dbg !115

; <label>:23:                                     ; preds = %15
  store i32 -1, i32* %3, align 4, !dbg !116
  br label %44, !dbg !116

; <label>:24:                                     ; preds = %15
  %25 = load %struct.dpkg_version*, %struct.dpkg_version** %4, align 8, !dbg !117
  %26 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %25, i32 0, i32 1, !dbg !118
  %27 = load i8*, i8** %26, align 8, !dbg !118
  %28 = load %struct.dpkg_version*, %struct.dpkg_version** %5, align 8, !dbg !119
  %29 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %28, i32 0, i32 1, !dbg !120
  %30 = load i8*, i8** %29, align 8, !dbg !120
  %31 = call i32 @verrevcmp(i8* %27, i8* %30), !dbg !121
  store i32 %31, i32* %6, align 4, !dbg !122
  %32 = load i32, i32* %6, align 4, !dbg !123
  %33 = icmp ne i32 %32, 0, !dbg !123
  br i1 %33, label %34, label %36, !dbg !125

; <label>:34:                                     ; preds = %24
  %35 = load i32, i32* %6, align 4, !dbg !126
  store i32 %35, i32* %3, align 4, !dbg !127
  br label %44, !dbg !127

; <label>:36:                                     ; preds = %24
  %37 = load %struct.dpkg_version*, %struct.dpkg_version** %4, align 8, !dbg !128
  %38 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %37, i32 0, i32 2, !dbg !129
  %39 = load i8*, i8** %38, align 8, !dbg !129
  %40 = load %struct.dpkg_version*, %struct.dpkg_version** %5, align 8, !dbg !130
  %41 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %40, i32 0, i32 2, !dbg !131
  %42 = load i8*, i8** %41, align 8, !dbg !131
  %43 = call i32 @verrevcmp(i8* %39, i8* %42), !dbg !132
  store i32 %43, i32* %3, align 4, !dbg !133
  br label %44, !dbg !133

; <label>:44:                                     ; preds = %36, %34, %23, %14
  %45 = load i32, i32* %3, align 4, !dbg !134
  ret i32 %45, !dbg !134
}

; Function Attrs: nounwind uwtable
define internal i32 @verrevcmp(i8*, i8*) #0 !dbg !135 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !138, metadata !44), !dbg !139
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !140, metadata !44), !dbg !141
  %9 = load i8*, i8** %4, align 8, !dbg !142
  %10 = icmp eq i8* %9, null, !dbg !144
  br i1 %10, label %11, label %12, !dbg !145

; <label>:11:                                     ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %4, align 8, !dbg !146
  br label %12, !dbg !147

; <label>:12:                                     ; preds = %11, %2
  %13 = load i8*, i8** %5, align 8, !dbg !148
  %14 = icmp eq i8* %13, null, !dbg !150
  br i1 %14, label %15, label %16, !dbg !151

; <label>:15:                                     ; preds = %12
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %5, align 8, !dbg !152
  br label %16, !dbg !153

; <label>:16:                                     ; preds = %15, %12
  br label %17, !dbg !154

; <label>:17:                                     ; preds = %140, %16
  %18 = load i8*, i8** %4, align 8, !dbg !155
  %19 = load i8, i8* %18, align 1, !dbg !157
  %20 = sext i8 %19 to i32, !dbg !157
  %21 = icmp ne i32 %20, 0, !dbg !157
  br i1 %21, label %27, label %22, !dbg !158

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %5, align 8, !dbg !159
  %24 = load i8, i8* %23, align 1, !dbg !161
  %25 = sext i8 %24 to i32, !dbg !161
  %26 = icmp ne i32 %25, 0, !dbg !162
  br label %27, !dbg !162

; <label>:27:                                     ; preds = %22, %17
  %28 = phi i1 [ true, %17 ], [ %26, %22 ]
  br i1 %28, label %29, label %141, !dbg !163

; <label>:29:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata i32* %6, metadata !165, metadata !44), !dbg !167
  store i32 0, i32* %6, align 4, !dbg !167
  br label %30, !dbg !168

; <label>:30:                                     ; preds = %71, %29
  %31 = load i8*, i8** %4, align 8, !dbg !169
  %32 = load i8, i8* %31, align 1, !dbg !171
  %33 = sext i8 %32 to i32, !dbg !171
  %34 = icmp ne i32 %33, 0, !dbg !171
  br i1 %34, label %35, label %40, !dbg !172

; <label>:35:                                     ; preds = %30
  %36 = load i8*, i8** %4, align 8, !dbg !173
  %37 = load i8, i8* %36, align 1, !dbg !175
  %38 = sext i8 %37 to i32, !dbg !175
  %39 = call zeroext i1 @c_isdigit(i32 %38), !dbg !176
  br i1 %39, label %40, label %53, !dbg !177

; <label>:40:                                     ; preds = %35, %30
  %41 = load i8*, i8** %5, align 8, !dbg !178
  %42 = load i8, i8* %41, align 1, !dbg !180
  %43 = sext i8 %42 to i32, !dbg !180
  %44 = icmp ne i32 %43, 0, !dbg !180
  br i1 %44, label %45, label %51, !dbg !181

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %5, align 8, !dbg !182
  %47 = load i8, i8* %46, align 1, !dbg !184
  %48 = sext i8 %47 to i32, !dbg !184
  %49 = call zeroext i1 @c_isdigit(i32 %48), !dbg !185
  %50 = xor i1 %49, true, !dbg !186
  br label %51

; <label>:51:                                     ; preds = %45, %40
  %52 = phi i1 [ false, %40 ], [ %50, %45 ]
  br label %53, !dbg !187

; <label>:53:                                     ; preds = %51, %35
  %54 = phi i1 [ true, %35 ], [ %52, %51 ]
  br i1 %54, label %55, label %76, !dbg !189

; <label>:55:                                     ; preds = %53
  call void @llvm.dbg.declare(metadata i32* %7, metadata !191, metadata !44), !dbg !193
  %56 = load i8*, i8** %4, align 8, !dbg !194
  %57 = load i8, i8* %56, align 1, !dbg !195
  %58 = sext i8 %57 to i32, !dbg !195
  %59 = call i32 @order(i32 %58), !dbg !196
  store i32 %59, i32* %7, align 4, !dbg !193
  call void @llvm.dbg.declare(metadata i32* %8, metadata !197, metadata !44), !dbg !198
  %60 = load i8*, i8** %5, align 8, !dbg !199
  %61 = load i8, i8* %60, align 1, !dbg !200
  %62 = sext i8 %61 to i32, !dbg !200
  %63 = call i32 @order(i32 %62), !dbg !201
  store i32 %63, i32* %8, align 4, !dbg !198
  %64 = load i32, i32* %7, align 4, !dbg !202
  %65 = load i32, i32* %8, align 4, !dbg !204
  %66 = icmp ne i32 %64, %65, !dbg !205
  br i1 %66, label %67, label %71, !dbg !206

; <label>:67:                                     ; preds = %55
  %68 = load i32, i32* %7, align 4, !dbg !207
  %69 = load i32, i32* %8, align 4, !dbg !208
  %70 = sub nsw i32 %68, %69, !dbg !209
  store i32 %70, i32* %3, align 4, !dbg !210
  br label %142, !dbg !210

; <label>:71:                                     ; preds = %55
  %72 = load i8*, i8** %4, align 8, !dbg !211
  %73 = getelementptr inbounds i8, i8* %72, i32 1, !dbg !211
  store i8* %73, i8** %4, align 8, !dbg !211
  %74 = load i8*, i8** %5, align 8, !dbg !212
  %75 = getelementptr inbounds i8, i8* %74, i32 1, !dbg !212
  store i8* %75, i8** %5, align 8, !dbg !212
  br label %30, !dbg !213, !llvm.loop !215

; <label>:76:                                     ; preds = %53
  br label %77, !dbg !216

; <label>:77:                                     ; preds = %82, %76
  %78 = load i8*, i8** %4, align 8, !dbg !217
  %79 = load i8, i8* %78, align 1, !dbg !218
  %80 = sext i8 %79 to i32, !dbg !218
  %81 = icmp eq i32 %80, 48, !dbg !219
  br i1 %81, label %82, label %85, !dbg !220

; <label>:82:                                     ; preds = %77
  %83 = load i8*, i8** %4, align 8, !dbg !221
  %84 = getelementptr inbounds i8, i8* %83, i32 1, !dbg !221
  store i8* %84, i8** %4, align 8, !dbg !221
  br label %77, !dbg !222, !llvm.loop !223

; <label>:85:                                     ; preds = %77
  br label %86, !dbg !224

; <label>:86:                                     ; preds = %91, %85
  %87 = load i8*, i8** %5, align 8, !dbg !225
  %88 = load i8, i8* %87, align 1, !dbg !226
  %89 = sext i8 %88 to i32, !dbg !226
  %90 = icmp eq i32 %89, 48, !dbg !227
  br i1 %90, label %91, label %94, !dbg !228

; <label>:91:                                     ; preds = %86
  %92 = load i8*, i8** %5, align 8, !dbg !229
  %93 = getelementptr inbounds i8, i8* %92, i32 1, !dbg !229
  store i8* %93, i8** %5, align 8, !dbg !229
  br label %86, !dbg !230, !llvm.loop !231

; <label>:94:                                     ; preds = %86
  br label %95, !dbg !232

; <label>:95:                                     ; preds = %118, %94
  %96 = load i8*, i8** %4, align 8, !dbg !233
  %97 = load i8, i8* %96, align 1, !dbg !234
  %98 = sext i8 %97 to i32, !dbg !234
  %99 = call zeroext i1 @c_isdigit(i32 %98), !dbg !235
  br i1 %99, label %100, label %105, !dbg !236

; <label>:100:                                    ; preds = %95
  %101 = load i8*, i8** %5, align 8, !dbg !237
  %102 = load i8, i8* %101, align 1, !dbg !238
  %103 = sext i8 %102 to i32, !dbg !238
  %104 = call zeroext i1 @c_isdigit(i32 %103), !dbg !239
  br label %105

; <label>:105:                                    ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ]
  br i1 %106, label %107, label %123, !dbg !240

; <label>:107:                                    ; preds = %105
  %108 = load i32, i32* %6, align 4, !dbg !241
  %109 = icmp ne i32 %108, 0, !dbg !241
  br i1 %109, label %118, label %110, !dbg !244

; <label>:110:                                    ; preds = %107
  %111 = load i8*, i8** %4, align 8, !dbg !245
  %112 = load i8, i8* %111, align 1, !dbg !246
  %113 = sext i8 %112 to i32, !dbg !246
  %114 = load i8*, i8** %5, align 8, !dbg !247
  %115 = load i8, i8* %114, align 1, !dbg !248
  %116 = sext i8 %115 to i32, !dbg !248
  %117 = sub nsw i32 %113, %116, !dbg !249
  store i32 %117, i32* %6, align 4, !dbg !250
  br label %118, !dbg !251

; <label>:118:                                    ; preds = %110, %107
  %119 = load i8*, i8** %4, align 8, !dbg !252
  %120 = getelementptr inbounds i8, i8* %119, i32 1, !dbg !252
  store i8* %120, i8** %4, align 8, !dbg !252
  %121 = load i8*, i8** %5, align 8, !dbg !253
  %122 = getelementptr inbounds i8, i8* %121, i32 1, !dbg !253
  store i8* %122, i8** %5, align 8, !dbg !253
  br label %95, !dbg !254, !llvm.loop !255

; <label>:123:                                    ; preds = %105
  %124 = load i8*, i8** %4, align 8, !dbg !256
  %125 = load i8, i8* %124, align 1, !dbg !258
  %126 = sext i8 %125 to i32, !dbg !258
  %127 = call zeroext i1 @c_isdigit(i32 %126), !dbg !259
  br i1 %127, label %128, label %129, !dbg !260

; <label>:128:                                    ; preds = %123
  store i32 1, i32* %3, align 4, !dbg !261
  br label %142, !dbg !261

; <label>:129:                                    ; preds = %123
  %130 = load i8*, i8** %5, align 8, !dbg !262
  %131 = load i8, i8* %130, align 1, !dbg !264
  %132 = sext i8 %131 to i32, !dbg !264
  %133 = call zeroext i1 @c_isdigit(i32 %132), !dbg !265
  br i1 %133, label %134, label %135, !dbg !266

; <label>:134:                                    ; preds = %129
  store i32 -1, i32* %3, align 4, !dbg !267
  br label %142, !dbg !267

; <label>:135:                                    ; preds = %129
  %136 = load i32, i32* %6, align 4, !dbg !268
  %137 = icmp ne i32 %136, 0, !dbg !268
  br i1 %137, label %138, label %140, !dbg !270

; <label>:138:                                    ; preds = %135
  %139 = load i32, i32* %6, align 4, !dbg !271
  store i32 %139, i32* %3, align 4, !dbg !272
  br label %142, !dbg !272

; <label>:140:                                    ; preds = %135
  br label %17, !dbg !273, !llvm.loop !275

; <label>:141:                                    ; preds = %27
  store i32 0, i32* %3, align 4, !dbg !276
  br label %142, !dbg !276

; <label>:142:                                    ; preds = %141, %138, %134, %128, %67
  %143 = load i32, i32* %3, align 4, !dbg !277
  ret i32 %143, !dbg !277
}

; Function Attrs: nounwind uwtable
define zeroext i1 @dpkg_version_relate(%struct.dpkg_version*, i32, %struct.dpkg_version*) #0 !dbg !278 {
  %4 = alloca i1, align 1
  %5 = alloca %struct.dpkg_version*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dpkg_version*, align 8
  %8 = alloca i32, align 4
  store %struct.dpkg_version* %0, %struct.dpkg_version** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_version** %5, metadata !281, metadata !44), !dbg !282
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !283, metadata !44), !dbg !284
  store %struct.dpkg_version* %2, %struct.dpkg_version** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_version** %7, metadata !285, metadata !44), !dbg !286
  call void @llvm.dbg.declare(metadata i32* %8, metadata !287, metadata !44), !dbg !288
  %9 = load i32, i32* %6, align 4, !dbg !289
  %10 = icmp eq i32 %9, 0, !dbg !291
  br i1 %10, label %11, label %12, !dbg !292

; <label>:11:                                     ; preds = %3
  store i1 true, i1* %4, align 1, !dbg !293
  br label %34, !dbg !293

; <label>:12:                                     ; preds = %3
  %13 = load %struct.dpkg_version*, %struct.dpkg_version** %5, align 8, !dbg !294
  %14 = load %struct.dpkg_version*, %struct.dpkg_version** %7, align 8, !dbg !295
  %15 = call i32 @dpkg_version_compare(%struct.dpkg_version* %13, %struct.dpkg_version* %14), !dbg !296
  store i32 %15, i32* %8, align 4, !dbg !297
  %16 = load i32, i32* %6, align 4, !dbg !298
  switch i32 %16, label %32 [
    i32 1, label %17
    i32 2, label %20
    i32 3, label %23
    i32 4, label %26
    i32 5, label %29
  ], !dbg !299

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* %8, align 4, !dbg !300
  %19 = icmp eq i32 %18, 0, !dbg !302
  store i1 %19, i1* %4, align 1, !dbg !303
  br label %34, !dbg !303

; <label>:20:                                     ; preds = %12
  %21 = load i32, i32* %8, align 4, !dbg !304
  %22 = icmp slt i32 %21, 0, !dbg !305
  store i1 %22, i1* %4, align 1, !dbg !306
  br label %34, !dbg !306

; <label>:23:                                     ; preds = %12
  %24 = load i32, i32* %8, align 4, !dbg !307
  %25 = icmp sle i32 %24, 0, !dbg !308
  store i1 %25, i1* %4, align 1, !dbg !309
  br label %34, !dbg !309

; <label>:26:                                     ; preds = %12
  %27 = load i32, i32* %8, align 4, !dbg !310
  %28 = icmp sgt i32 %27, 0, !dbg !311
  store i1 %28, i1* %4, align 1, !dbg !312
  br label %34, !dbg !312

; <label>:29:                                     ; preds = %12
  %30 = load i32, i32* %8, align 4, !dbg !313
  %31 = icmp sge i32 %30, 0, !dbg !314
  store i1 %31, i1* %4, align 1, !dbg !315
  br label %34, !dbg !315

; <label>:32:                                     ; preds = %12
  %33 = load i32, i32* %6, align 4, !dbg !316
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 195, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.dpkg_version_relate, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i32 %33) #5, !dbg !317
  unreachable, !dbg !317

; <label>:34:                                     ; preds = %29, %26, %23, %20, %17, %11
  %35 = load i1, i1* %4, align 1, !dbg !318
  ret i1 %35, !dbg !318
}

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #3

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isdigit(i32) #2 !dbg !319 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !322, metadata !44), !dbg !323
  %3 = load i32, i32* %2, align 4, !dbg !324
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 32), !dbg !325
  ret i1 %4, !dbg !326
}

; Function Attrs: nounwind uwtable
define internal i32 @order(i32) #0 !dbg !327 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !330, metadata !44), !dbg !331
  %4 = load i32, i32* %3, align 4, !dbg !332
  %5 = call zeroext i1 @c_isdigit(i32 %4), !dbg !334
  br i1 %5, label %6, label %7, !dbg !335

; <label>:6:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !336
  br label %23, !dbg !336

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4, !dbg !337
  %9 = call zeroext i1 @c_isalpha(i32 %8), !dbg !339
  br i1 %9, label %10, label %12, !dbg !340

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %3, align 4, !dbg !341
  store i32 %11, i32* %2, align 4, !dbg !342
  br label %23, !dbg !342

; <label>:12:                                     ; preds = %7
  %13 = load i32, i32* %3, align 4, !dbg !343
  %14 = icmp eq i32 %13, 126, !dbg !345
  br i1 %14, label %15, label %16, !dbg !346

; <label>:15:                                     ; preds = %12
  store i32 -1, i32* %2, align 4, !dbg !347
  br label %23, !dbg !347

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %3, align 4, !dbg !348
  %18 = icmp ne i32 %17, 0, !dbg !348
  br i1 %18, label %19, label %22, !dbg !350

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %3, align 4, !dbg !351
  %21 = add nsw i32 %20, 256, !dbg !352
  store i32 %21, i32* %2, align 4, !dbg !353
  br label %23, !dbg !353

; <label>:22:                                     ; preds = %16
  store i32 0, i32* %2, align 4, !dbg !354
  br label %23, !dbg !354

; <label>:23:                                     ; preds = %22, %19, %15, %10, %6
  %24 = load i32, i32* %2, align 4, !dbg !355
  ret i32 %24, !dbg !355
}

declare zeroext i1 @c_isbits(i32, i32) #4

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isalpha(i32) #2 !dbg !356 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !357, metadata !44), !dbg !358
  %3 = load i32, i32* %2, align 4, !dbg !359
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 24), !dbg !360
  ret i1 %4, !dbg !361
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !23)
!1 = !DIFile(filename: "[inter]lib--dpkg--version.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !12}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_relation", file: !4, line: 61, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8, !9, !10, !11}
!6 = !DIEnumerator(name: "DPKG_RELATION_NONE", value: 0)
!7 = !DIEnumerator(name: "DPKG_RELATION_EQ", value: 1)
!8 = !DIEnumerator(name: "DPKG_RELATION_LT", value: 2)
!9 = !DIEnumerator(name: "DPKG_RELATION_LE", value: 3)
!10 = !DIEnumerator(name: "DPKG_RELATION_GT", value: 4)
!11 = !DIEnumerator(name: "DPKG_RELATION_GE", value: 5)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_ctype_bit", file: !13, line: 32, size: 32, align: 32, elements: !14)
!13 = !DIFile(filename: "../../lib/dpkg/c-ctype.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22}
!15 = !DIEnumerator(name: "C_CTYPE_BLANK", value: 1)
!16 = !DIEnumerator(name: "C_CTYPE_WHITE", value: 2)
!17 = !DIEnumerator(name: "C_CTYPE_SPACE", value: 4)
!18 = !DIEnumerator(name: "C_CTYPE_UPPER", value: 8)
!19 = !DIEnumerator(name: "C_CTYPE_LOWER", value: 16)
!20 = !DIEnumerator(name: "C_CTYPE_DIGIT", value: 32)
!21 = !DIEnumerator(name: "C_CTYPE_ALPHA", value: 24)
!22 = !DIEnumerator(name: "C_CTYPE_ALNUM", value: 56)
!23 = !{!24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!25 = !{i32 2, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!28 = distinct !DISubprogram(name: "dpkg_version_blank", scope: !29, file: !29, line: 38, type: !30, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !42)
!29 = !DIFile(filename: "version.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !4, line: 42, size: 192, align: 64, elements: !34)
!34 = !{!35, !37, !41}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !33, file: !4, line: 44, baseType: !36, size: 32, align: 32)
!36 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !33, file: !4, line: 46, baseType: !38, size: 64, align: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !33, file: !4, line: 48, baseType: !38, size: 64, align: 64, offset: 128)
!42 = !{}
!43 = !DILocalVariable(name: "version", arg: 1, scope: !28, file: !29, line: 38, type: !32)
!44 = !DIExpression()
!45 = !DILocation(line: 38, column: 41, scope: !28)
!46 = !DILocation(line: 40, column: 2, scope: !28)
!47 = !DILocation(line: 40, column: 11, scope: !28)
!48 = !DILocation(line: 40, column: 17, scope: !28)
!49 = !DILocation(line: 41, column: 2, scope: !28)
!50 = !DILocation(line: 41, column: 11, scope: !28)
!51 = !DILocation(line: 41, column: 19, scope: !28)
!52 = !DILocation(line: 42, column: 2, scope: !28)
!53 = !DILocation(line: 42, column: 11, scope: !28)
!54 = !DILocation(line: 42, column: 20, scope: !28)
!55 = !DILocation(line: 43, column: 1, scope: !28)
!56 = distinct !DISubprogram(name: "dpkg_version_is_informative", scope: !29, file: !29, line: 54, type: !57, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !42)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !60}
!59 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!62 = !DILocalVariable(name: "version", arg: 1, scope: !56, file: !29, line: 54, type: !60)
!63 = !DILocation(line: 54, column: 56, scope: !56)
!64 = !DILocation(line: 56, column: 10, scope: !56)
!65 = !DILocation(line: 56, column: 19, scope: !56)
!66 = !DILocation(line: 56, column: 25, scope: !56)
!67 = !DILocation(line: 57, column: 21, scope: !56)
!68 = !DILocation(line: 57, column: 30, scope: !56)
!69 = !DILocation(line: 57, column: 10, scope: !56)
!70 = !DILocation(line: 57, column: 39, scope: !56)
!71 = !DILocation(line: 58, column: 21, scope: !56)
!72 = !DILocation(line: 58, column: 30, scope: !56)
!73 = !DILocation(line: 58, column: 10, scope: !56)
!74 = !DILocation(line: 57, column: 39, scope: !75)
!75 = !DILexicalBlockFile(scope: !56, file: !29, discriminator: 1)
!76 = !DILocation(line: 56, column: 2, scope: !75)
!77 = distinct !DISubprogram(name: "str_is_set", scope: !78, file: !78, line: 50, type: !79, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !42)
!78 = !DIFile(filename: "../../lib/dpkg/string.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!79 = !DISubroutineType(types: !80)
!80 = !{!59, !38}
!81 = !DILocalVariable(name: "str", arg: 1, scope: !77, file: !78, line: 50, type: !38)
!82 = !DILocation(line: 50, column: 24, scope: !77)
!83 = !DILocation(line: 52, column: 9, scope: !77)
!84 = !DILocation(line: 52, column: 13, scope: !77)
!85 = !DILocation(line: 52, column: 20, scope: !77)
!86 = !DILocation(line: 52, column: 23, scope: !87)
!87 = !DILexicalBlockFile(scope: !77, file: !78, discriminator: 1)
!88 = !DILocation(line: 52, column: 30, scope: !87)
!89 = !DILocation(line: 52, column: 2, scope: !90)
!90 = !DILexicalBlockFile(scope: !77, file: !78, discriminator: 2)
!91 = distinct !DISubprogram(name: "dpkg_version_compare", scope: !29, file: !29, line: 140, type: !92, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !42)
!92 = !DISubroutineType(types: !93)
!93 = !{!94, !60, !60}
!94 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!95 = !DILocalVariable(name: "a", arg: 1, scope: !91, file: !29, line: 140, type: !60)
!96 = !DILocation(line: 140, column: 49, scope: !91)
!97 = !DILocalVariable(name: "b", arg: 2, scope: !91, file: !29, line: 141, type: !60)
!98 = !DILocation(line: 141, column: 49, scope: !91)
!99 = !DILocalVariable(name: "rc", scope: !91, file: !29, line: 143, type: !94)
!100 = !DILocation(line: 143, column: 6, scope: !91)
!101 = !DILocation(line: 145, column: 6, scope: !102)
!102 = distinct !DILexicalBlock(scope: !91, file: !29, line: 145, column: 6)
!103 = !DILocation(line: 145, column: 9, scope: !102)
!104 = !DILocation(line: 145, column: 17, scope: !102)
!105 = !DILocation(line: 145, column: 20, scope: !102)
!106 = !DILocation(line: 145, column: 15, scope: !102)
!107 = !DILocation(line: 145, column: 6, scope: !91)
!108 = !DILocation(line: 146, column: 3, scope: !102)
!109 = !DILocation(line: 147, column: 6, scope: !110)
!110 = distinct !DILexicalBlock(scope: !91, file: !29, line: 147, column: 6)
!111 = !DILocation(line: 147, column: 9, scope: !110)
!112 = !DILocation(line: 147, column: 17, scope: !110)
!113 = !DILocation(line: 147, column: 20, scope: !110)
!114 = !DILocation(line: 147, column: 15, scope: !110)
!115 = !DILocation(line: 147, column: 6, scope: !91)
!116 = !DILocation(line: 148, column: 3, scope: !110)
!117 = !DILocation(line: 150, column: 17, scope: !91)
!118 = !DILocation(line: 150, column: 20, scope: !91)
!119 = !DILocation(line: 150, column: 29, scope: !91)
!120 = !DILocation(line: 150, column: 32, scope: !91)
!121 = !DILocation(line: 150, column: 7, scope: !91)
!122 = !DILocation(line: 150, column: 5, scope: !91)
!123 = !DILocation(line: 151, column: 6, scope: !124)
!124 = distinct !DILexicalBlock(scope: !91, file: !29, line: 151, column: 6)
!125 = !DILocation(line: 151, column: 6, scope: !91)
!126 = !DILocation(line: 152, column: 10, scope: !124)
!127 = !DILocation(line: 152, column: 3, scope: !124)
!128 = !DILocation(line: 154, column: 19, scope: !91)
!129 = !DILocation(line: 154, column: 22, scope: !91)
!130 = !DILocation(line: 154, column: 32, scope: !91)
!131 = !DILocation(line: 154, column: 35, scope: !91)
!132 = !DILocation(line: 154, column: 9, scope: !91)
!133 = !DILocation(line: 154, column: 2, scope: !91)
!134 = !DILocation(line: 155, column: 1, scope: !91)
!135 = distinct !DISubprogram(name: "verrevcmp", scope: !29, file: !29, line: 82, type: !136, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !42)
!136 = !DISubroutineType(types: !137)
!137 = !{!94, !38, !38}
!138 = !DILocalVariable(name: "a", arg: 1, scope: !135, file: !29, line: 82, type: !38)
!139 = !DILocation(line: 82, column: 23, scope: !135)
!140 = !DILocalVariable(name: "b", arg: 2, scope: !135, file: !29, line: 82, type: !38)
!141 = !DILocation(line: 82, column: 38, scope: !135)
!142 = !DILocation(line: 84, column: 6, scope: !143)
!143 = distinct !DILexicalBlock(scope: !135, file: !29, line: 84, column: 6)
!144 = !DILocation(line: 84, column: 8, scope: !143)
!145 = !DILocation(line: 84, column: 6, scope: !135)
!146 = !DILocation(line: 85, column: 5, scope: !143)
!147 = !DILocation(line: 85, column: 3, scope: !143)
!148 = !DILocation(line: 86, column: 6, scope: !149)
!149 = distinct !DILexicalBlock(scope: !135, file: !29, line: 86, column: 6)
!150 = !DILocation(line: 86, column: 8, scope: !149)
!151 = !DILocation(line: 86, column: 6, scope: !135)
!152 = !DILocation(line: 87, column: 5, scope: !149)
!153 = !DILocation(line: 87, column: 3, scope: !149)
!154 = !DILocation(line: 89, column: 2, scope: !135)
!155 = !DILocation(line: 89, column: 10, scope: !156)
!156 = !DILexicalBlockFile(scope: !135, file: !29, discriminator: 1)
!157 = !DILocation(line: 89, column: 9, scope: !156)
!158 = !DILocation(line: 89, column: 12, scope: !156)
!159 = !DILocation(line: 89, column: 16, scope: !160)
!160 = !DILexicalBlockFile(scope: !135, file: !29, discriminator: 2)
!161 = !DILocation(line: 89, column: 15, scope: !160)
!162 = !DILocation(line: 89, column: 12, scope: !160)
!163 = !DILocation(line: 89, column: 2, scope: !164)
!164 = !DILexicalBlockFile(scope: !135, file: !29, discriminator: 3)
!165 = !DILocalVariable(name: "first_diff", scope: !166, file: !29, line: 90, type: !94)
!166 = distinct !DILexicalBlock(scope: !135, file: !29, line: 89, column: 19)
!167 = !DILocation(line: 90, column: 7, scope: !166)
!168 = !DILocation(line: 92, column: 3, scope: !166)
!169 = !DILocation(line: 92, column: 12, scope: !170)
!170 = !DILexicalBlockFile(scope: !166, file: !29, discriminator: 1)
!171 = !DILocation(line: 92, column: 11, scope: !170)
!172 = !DILocation(line: 92, column: 14, scope: !170)
!173 = !DILocation(line: 92, column: 29, scope: !174)
!174 = !DILexicalBlockFile(scope: !166, file: !29, discriminator: 2)
!175 = !DILocation(line: 92, column: 28, scope: !174)
!176 = !DILocation(line: 92, column: 18, scope: !174)
!177 = !DILocation(line: 92, column: 33, scope: !174)
!178 = !DILocation(line: 92, column: 38, scope: !179)
!179 = !DILexicalBlockFile(scope: !166, file: !29, discriminator: 3)
!180 = !DILocation(line: 92, column: 37, scope: !179)
!181 = !DILocation(line: 92, column: 40, scope: !179)
!182 = !DILocation(line: 92, column: 55, scope: !183)
!183 = !DILexicalBlockFile(scope: !166, file: !29, discriminator: 4)
!184 = !DILocation(line: 92, column: 54, scope: !183)
!185 = !DILocation(line: 92, column: 44, scope: !183)
!186 = !DILocation(line: 92, column: 43, scope: !183)
!187 = !DILocation(line: 92, column: 33, scope: !188)
!188 = !DILexicalBlockFile(scope: !166, file: !29, discriminator: 5)
!189 = !DILocation(line: 92, column: 3, scope: !190)
!190 = !DILexicalBlockFile(scope: !166, file: !29, discriminator: 6)
!191 = !DILocalVariable(name: "ac", scope: !192, file: !29, line: 93, type: !94)
!192 = distinct !DILexicalBlock(scope: !166, file: !29, line: 92, column: 60)
!193 = !DILocation(line: 93, column: 8, scope: !192)
!194 = !DILocation(line: 93, column: 20, scope: !192)
!195 = !DILocation(line: 93, column: 19, scope: !192)
!196 = !DILocation(line: 93, column: 13, scope: !192)
!197 = !DILocalVariable(name: "bc", scope: !192, file: !29, line: 94, type: !94)
!198 = !DILocation(line: 94, column: 8, scope: !192)
!199 = !DILocation(line: 94, column: 20, scope: !192)
!200 = !DILocation(line: 94, column: 19, scope: !192)
!201 = !DILocation(line: 94, column: 13, scope: !192)
!202 = !DILocation(line: 96, column: 8, scope: !203)
!203 = distinct !DILexicalBlock(scope: !192, file: !29, line: 96, column: 8)
!204 = !DILocation(line: 96, column: 14, scope: !203)
!205 = !DILocation(line: 96, column: 11, scope: !203)
!206 = !DILocation(line: 96, column: 8, scope: !192)
!207 = !DILocation(line: 97, column: 12, scope: !203)
!208 = !DILocation(line: 97, column: 17, scope: !203)
!209 = !DILocation(line: 97, column: 15, scope: !203)
!210 = !DILocation(line: 97, column: 5, scope: !203)
!211 = !DILocation(line: 99, column: 5, scope: !192)
!212 = !DILocation(line: 100, column: 5, scope: !192)
!213 = !DILocation(line: 92, column: 3, scope: !214)
!214 = !DILexicalBlockFile(scope: !166, file: !29, discriminator: 7)
!215 = distinct !{!215, !168}
!216 = !DILocation(line: 102, column: 3, scope: !166)
!217 = !DILocation(line: 102, column: 11, scope: !170)
!218 = !DILocation(line: 102, column: 10, scope: !170)
!219 = !DILocation(line: 102, column: 13, scope: !170)
!220 = !DILocation(line: 102, column: 3, scope: !170)
!221 = !DILocation(line: 103, column: 5, scope: !166)
!222 = !DILocation(line: 102, column: 3, scope: !174)
!223 = distinct !{!223, !216}
!224 = !DILocation(line: 104, column: 3, scope: !166)
!225 = !DILocation(line: 104, column: 11, scope: !170)
!226 = !DILocation(line: 104, column: 10, scope: !170)
!227 = !DILocation(line: 104, column: 13, scope: !170)
!228 = !DILocation(line: 104, column: 3, scope: !170)
!229 = !DILocation(line: 105, column: 5, scope: !166)
!230 = !DILocation(line: 104, column: 3, scope: !174)
!231 = distinct !{!231, !224}
!232 = !DILocation(line: 106, column: 3, scope: !166)
!233 = !DILocation(line: 106, column: 21, scope: !170)
!234 = !DILocation(line: 106, column: 20, scope: !170)
!235 = !DILocation(line: 106, column: 10, scope: !170)
!236 = !DILocation(line: 106, column: 24, scope: !170)
!237 = !DILocation(line: 106, column: 38, scope: !174)
!238 = !DILocation(line: 106, column: 37, scope: !174)
!239 = !DILocation(line: 106, column: 27, scope: !174)
!240 = !DILocation(line: 106, column: 3, scope: !179)
!241 = !DILocation(line: 107, column: 9, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !29, line: 107, column: 8)
!243 = distinct !DILexicalBlock(scope: !166, file: !29, line: 106, column: 42)
!244 = !DILocation(line: 107, column: 8, scope: !243)
!245 = !DILocation(line: 108, column: 19, scope: !242)
!246 = !DILocation(line: 108, column: 18, scope: !242)
!247 = !DILocation(line: 108, column: 24, scope: !242)
!248 = !DILocation(line: 108, column: 23, scope: !242)
!249 = !DILocation(line: 108, column: 21, scope: !242)
!250 = !DILocation(line: 108, column: 16, scope: !242)
!251 = !DILocation(line: 108, column: 5, scope: !242)
!252 = !DILocation(line: 109, column: 5, scope: !243)
!253 = !DILocation(line: 110, column: 5, scope: !243)
!254 = !DILocation(line: 106, column: 3, scope: !183)
!255 = distinct !{!255, !232}
!256 = !DILocation(line: 113, column: 18, scope: !257)
!257 = distinct !DILexicalBlock(scope: !166, file: !29, line: 113, column: 7)
!258 = !DILocation(line: 113, column: 17, scope: !257)
!259 = !DILocation(line: 113, column: 7, scope: !257)
!260 = !DILocation(line: 113, column: 7, scope: !166)
!261 = !DILocation(line: 114, column: 4, scope: !257)
!262 = !DILocation(line: 115, column: 18, scope: !263)
!263 = distinct !DILexicalBlock(scope: !166, file: !29, line: 115, column: 7)
!264 = !DILocation(line: 115, column: 17, scope: !263)
!265 = !DILocation(line: 115, column: 7, scope: !263)
!266 = !DILocation(line: 115, column: 7, scope: !166)
!267 = !DILocation(line: 116, column: 4, scope: !263)
!268 = !DILocation(line: 117, column: 7, scope: !269)
!269 = distinct !DILexicalBlock(scope: !166, file: !29, line: 117, column: 7)
!270 = !DILocation(line: 117, column: 7, scope: !166)
!271 = !DILocation(line: 118, column: 11, scope: !269)
!272 = !DILocation(line: 118, column: 4, scope: !269)
!273 = !DILocation(line: 89, column: 2, scope: !274)
!274 = !DILexicalBlockFile(scope: !135, file: !29, discriminator: 4)
!275 = distinct !{!275, !154}
!276 = !DILocation(line: 121, column: 2, scope: !135)
!277 = !DILocation(line: 122, column: 1, scope: !135)
!278 = distinct !DISubprogram(name: "dpkg_version_relate", scope: !29, file: !29, line: 172, type: !279, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !42)
!279 = !DISubroutineType(types: !280)
!280 = !{!59, !60, !3, !60}
!281 = !DILocalVariable(name: "a", arg: 1, scope: !278, file: !29, line: 172, type: !60)
!282 = !DILocation(line: 172, column: 48, scope: !278)
!283 = !DILocalVariable(name: "rel", arg: 2, scope: !278, file: !29, line: 173, type: !3)
!284 = !DILocation(line: 173, column: 40, scope: !278)
!285 = !DILocalVariable(name: "b", arg: 3, scope: !278, file: !29, line: 174, type: !60)
!286 = !DILocation(line: 174, column: 48, scope: !278)
!287 = !DILocalVariable(name: "rc", scope: !278, file: !29, line: 176, type: !94)
!288 = !DILocation(line: 176, column: 6, scope: !278)
!289 = !DILocation(line: 178, column: 6, scope: !290)
!290 = distinct !DILexicalBlock(scope: !278, file: !29, line: 178, column: 6)
!291 = !DILocation(line: 178, column: 10, scope: !290)
!292 = !DILocation(line: 178, column: 6, scope: !278)
!293 = !DILocation(line: 179, column: 3, scope: !290)
!294 = !DILocation(line: 181, column: 28, scope: !278)
!295 = !DILocation(line: 181, column: 31, scope: !278)
!296 = !DILocation(line: 181, column: 7, scope: !278)
!297 = !DILocation(line: 181, column: 5, scope: !278)
!298 = !DILocation(line: 183, column: 10, scope: !278)
!299 = !DILocation(line: 183, column: 2, scope: !278)
!300 = !DILocation(line: 185, column: 10, scope: !301)
!301 = distinct !DILexicalBlock(scope: !278, file: !29, line: 183, column: 15)
!302 = !DILocation(line: 185, column: 13, scope: !301)
!303 = !DILocation(line: 185, column: 3, scope: !301)
!304 = !DILocation(line: 187, column: 10, scope: !301)
!305 = !DILocation(line: 187, column: 13, scope: !301)
!306 = !DILocation(line: 187, column: 3, scope: !301)
!307 = !DILocation(line: 189, column: 10, scope: !301)
!308 = !DILocation(line: 189, column: 13, scope: !301)
!309 = !DILocation(line: 189, column: 3, scope: !301)
!310 = !DILocation(line: 191, column: 10, scope: !301)
!311 = !DILocation(line: 191, column: 13, scope: !301)
!312 = !DILocation(line: 191, column: 3, scope: !301)
!313 = !DILocation(line: 193, column: 10, scope: !301)
!314 = !DILocation(line: 193, column: 13, scope: !301)
!315 = !DILocation(line: 193, column: 3, scope: !301)
!316 = !DILocation(line: 195, column: 72, scope: !301)
!317 = !DILocation(line: 195, column: 3, scope: !301)
!318 = !DILocation(line: 198, column: 1, scope: !278)
!319 = distinct !DISubprogram(name: "c_isdigit", scope: !13, file: !13, line: 78, type: !320, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !42)
!320 = !DISubroutineType(types: !321)
!321 = !{!59, !94}
!322 = !DILocalVariable(name: "c", arg: 1, scope: !319, file: !13, line: 78, type: !94)
!323 = !DILocation(line: 78, column: 15, scope: !319)
!324 = !DILocation(line: 80, column: 18, scope: !319)
!325 = !DILocation(line: 80, column: 9, scope: !319)
!326 = !DILocation(line: 80, column: 2, scope: !319)
!327 = distinct !DISubprogram(name: "order", scope: !29, file: !29, line: 67, type: !328, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !42)
!328 = !DISubroutineType(types: !329)
!329 = !{!94, !94}
!330 = !DILocalVariable(name: "c", arg: 1, scope: !327, file: !29, line: 67, type: !94)
!331 = !DILocation(line: 67, column: 11, scope: !327)
!332 = !DILocation(line: 69, column: 16, scope: !333)
!333 = distinct !DILexicalBlock(scope: !327, file: !29, line: 69, column: 6)
!334 = !DILocation(line: 69, column: 6, scope: !333)
!335 = !DILocation(line: 69, column: 6, scope: !327)
!336 = !DILocation(line: 70, column: 3, scope: !333)
!337 = !DILocation(line: 71, column: 21, scope: !338)
!338 = distinct !DILexicalBlock(scope: !333, file: !29, line: 71, column: 11)
!339 = !DILocation(line: 71, column: 11, scope: !338)
!340 = !DILocation(line: 71, column: 11, scope: !333)
!341 = !DILocation(line: 72, column: 10, scope: !338)
!342 = !DILocation(line: 72, column: 3, scope: !338)
!343 = !DILocation(line: 73, column: 11, scope: !344)
!344 = distinct !DILexicalBlock(scope: !338, file: !29, line: 73, column: 11)
!345 = !DILocation(line: 73, column: 13, scope: !344)
!346 = !DILocation(line: 73, column: 11, scope: !338)
!347 = !DILocation(line: 74, column: 3, scope: !344)
!348 = !DILocation(line: 75, column: 11, scope: !349)
!349 = distinct !DILexicalBlock(scope: !344, file: !29, line: 75, column: 11)
!350 = !DILocation(line: 75, column: 11, scope: !344)
!351 = !DILocation(line: 76, column: 10, scope: !349)
!352 = !DILocation(line: 76, column: 12, scope: !349)
!353 = !DILocation(line: 76, column: 3, scope: !349)
!354 = !DILocation(line: 78, column: 3, scope: !349)
!355 = !DILocation(line: 79, column: 1, scope: !327)
!356 = distinct !DISubprogram(name: "c_isalpha", scope: !13, file: !13, line: 105, type: !320, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !42)
!357 = !DILocalVariable(name: "c", arg: 1, scope: !356, file: !13, line: 105, type: !94)
!358 = !DILocation(line: 105, column: 15, scope: !356)
!359 = !DILocation(line: 107, column: 18, scope: !356)
!360 = !DILocation(line: 107, column: 9, scope: !356)
!361 = !DILocation(line: 107, column: 2, scope: !356)
