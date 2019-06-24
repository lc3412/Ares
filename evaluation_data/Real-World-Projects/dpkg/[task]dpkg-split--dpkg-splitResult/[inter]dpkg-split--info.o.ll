; ModuleID = './[inter]dpkg-split--info.o.i'
source_filename = "./[inter]dpkg-split--info.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dpkg_ar = type { i8*, i32, i64, i64, i32 }
%struct.partinfo = type { %struct.deb_version, i8*, i8*, i8*, i8*, i8*, i64, i32, i32, i64, i64, i64, i64, i64 }
%struct.deb_version = type { i32, i32 }
%struct.dpkg_ar_hdr = type { [16 x i8], [12 x i8], [6 x i8], [6 x i8], [8 x i8], [10 x i8], [2 x i8] }

@read_info.readinfobuf = internal global i8* null, align 8
@read_info.readinfobuflen = internal global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"error reading %.250s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"!<arch>\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ar header\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"debian-split\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"file '%.250s' is corrupt - bad magic at end of first header\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"reading header member\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"file '%.250s' is corrupt - bad padding character (code %d)\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"file '%.250s' is corrupt - nulls in info section\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"format version number\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"file '%.250s' has invalid format version: %s\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"file '%.250s' is format version %d.%d; get a newer dpkg-split\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"package name\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"package version number\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"package file MD5 checksum\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"file '%.250s' is corrupt - bad MD5 checksum '%.250s'\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"archive total size\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"archive part offset\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"archive part numbers\00", align 1
@.str.19 = private unnamed_addr constant [65 x i8] c"file '%.250s' is corrupt - no slash between archive part numbers\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"number of archive parts\00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"file '%.250s' is corrupt - bad number of archive parts\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"archive parts number\00", align 1
@.str.23 = private unnamed_addr constant [51 x i8] c"file '%.250s' is corrupt - bad archive part number\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"package architecture\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"reading data part member ar header\00", align 1
@.str.26 = private unnamed_addr constant [61 x i8] c"file '%.250s' is corrupt - bad magic at end of second header\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.28 = private unnamed_addr constant [60 x i8] c"file '%.250s' is corrupt - second member is not data member\00", align 1
@.str.29 = private unnamed_addr constant [66 x i8] c"file '%.250s' is corrupt - wrong number of parts for quoted sizes\00", align 1
@.str.30 = private unnamed_addr constant [64 x i8] c"file '%.250s' is corrupt - size is wrong for quoted part number\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"file '%.250s' is corrupt - too short\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"cannot open archive part file '%.250s'\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"file '%.250s' is not an archive part\00", align 1
@.str.34 = private unnamed_addr constant [476 x i8] c"%s:\0A    Part format version:            %d.%d\0A    Part of package:                %s\0A        ... version:                %s\0A        ... architecture:           %s\0A        ... MD5 checksum:           %s\0A        ... length:                 %jd bytes\0A        ... split every:            %jd bytes\0A    Part number:                    %d/%d\0A    Part length:                    %jd bytes\0A    Part offset:                    %jd bytes\0A    Part file size (used portion):  %jd bytes\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"architecture\04<unknown>\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.37 = private unnamed_addr constant [46 x i8] c"--%s requires one or more part file arguments\00", align 1
@cipaction = external global %struct.cmdinfo*, align 8
@.str.38 = private unnamed_addr constant [34 x i8] c"file '%s' is not an archive part\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.39 = private unnamed_addr constant [18 x i8] c"<standard output>\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"file '%.250s' is corrupt - %.250s missing\00", align 1
@.str.41 = private unnamed_addr constant [56 x i8] c"file '%.250s' is corrupt - missing newline after %.250s\00", align 1
@.str.42 = private unnamed_addr constant [53 x i8] c"file '%.250s' is corrupt - bad digit (code %d) in %s\00", align 1
@.str.43 = private unnamed_addr constant [49 x i8] c"file '%s' is corrupt; out of range integer in %s\00", align 1

; Function Attrs: nounwind uwtable
define %struct.partinfo* @read_info(%struct.dpkg_ar*, %struct.partinfo*) #0 !dbg !24 {
  %3 = alloca %struct.partinfo*, align 8
  %4 = alloca %struct.dpkg_ar*, align 8
  %5 = alloca %struct.partinfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [8 x i8], align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.dpkg_ar_hdr, align 1
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.dpkg_ar* %0, %struct.dpkg_ar** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar** %4, metadata !82, metadata !83), !dbg !84
  store %struct.partinfo* %1, %struct.partinfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.partinfo** %5, metadata !85, metadata !83), !dbg !86
  call void @llvm.dbg.declare(metadata i64* %6, metadata !87, metadata !83), !dbg !88
  call void @llvm.dbg.declare(metadata i64* %7, metadata !89, metadata !83), !dbg !90
  call void @llvm.dbg.declare(metadata [8 x i8]* %8, metadata !91, metadata !83), !dbg !95
  call void @llvm.dbg.declare(metadata i8** %9, metadata !96, metadata !83), !dbg !97
  call void @llvm.dbg.declare(metadata i8** %10, metadata !98, metadata !83), !dbg !99
  call void @llvm.dbg.declare(metadata i8** %11, metadata !100, metadata !83), !dbg !101
  call void @llvm.dbg.declare(metadata i8** %12, metadata !102, metadata !83), !dbg !103
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar_hdr* %13, metadata !104, metadata !83), !dbg !129
  call void @llvm.dbg.declare(metadata i64* %14, metadata !130, metadata !83), !dbg !131
  %16 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !132
  %17 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %16, i32 0, i32 4, !dbg !133
  %18 = load i32, i32* %17, align 8, !dbg !133
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i32 0, i32 0, !dbg !134
  %20 = call i64 @fd_read(i32 %18, i8* %19, i64 8), !dbg !135
  store i64 %20, i64* %14, align 8, !dbg !136
  %21 = load i64, i64* %14, align 8, !dbg !137
  %22 = icmp ne i64 %21, 8, !dbg !139
  br i1 %22, label %23, label %32, !dbg !140

; <label>:23:                                     ; preds = %2
  %24 = load i64, i64* %14, align 8, !dbg !141
  %25 = icmp slt i64 %24, 0, !dbg !144
  br i1 %25, label %26, label %31, !dbg !145

; <label>:26:                                     ; preds = %23
  %27 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)) #8, !dbg !146
  %28 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !147
  %29 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %28, i32 0, i32 0, !dbg !148
  %30 = load i8*, i8** %29, align 8, !dbg !148
  call void (i8*, ...) @ohshite(i8* %27, i8* %30) #9, !dbg !149
  unreachable, !dbg !151

; <label>:31:                                     ; preds = %23
  store %struct.partinfo* null, %struct.partinfo** %3, align 8, !dbg !152
  br label %468, !dbg !152

; <label>:32:                                     ; preds = %2
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i32 0, i32 0, !dbg !153
  %34 = call i32 @memcmp(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 8) #10, !dbg !155
  %35 = icmp ne i32 %34, 0, !dbg !155
  br i1 %35, label %36, label %37, !dbg !156

; <label>:36:                                     ; preds = %32
  store %struct.partinfo* null, %struct.partinfo** %3, align 8, !dbg !157
  br label %468, !dbg !157

; <label>:37:                                     ; preds = %32
  %38 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !158
  %39 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %38, i32 0, i32 4, !dbg !159
  %40 = load i32, i32* %39, align 8, !dbg !159
  %41 = bitcast %struct.dpkg_ar_hdr* %13 to i8*, !dbg !160
  %42 = call i64 @fd_read(i32 %40, i8* %41, i64 60), !dbg !161
  store i64 %42, i64* %14, align 8, !dbg !162
  %43 = load i64, i64* %14, align 8, !dbg !163
  %44 = icmp ne i64 %43, 60, !dbg !165
  br i1 %44, label %45, label %51, !dbg !166

; <label>:45:                                     ; preds = %37
  %46 = load i64, i64* %14, align 8, !dbg !167
  %47 = trunc i64 %46 to i32, !dbg !167
  %48 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !168
  %49 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %48, i32 0, i32 0, !dbg !169
  %50 = load i8*, i8** %49, align 8, !dbg !169
  call void @read_fail(i32 %47, i8* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)) #9, !dbg !170
  unreachable, !dbg !170

; <label>:51:                                     ; preds = %37
  call void @dpkg_ar_normalize_name(%struct.dpkg_ar_hdr* %13), !dbg !171
  %52 = getelementptr inbounds %struct.dpkg_ar_hdr, %struct.dpkg_ar_hdr* %13, i32 0, i32 0, !dbg !172
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %52, i32 0, i32 0, !dbg !174
  %54 = call i32 @strncmp(i8* %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i64 16) #10, !dbg !175
  %55 = icmp ne i32 %54, 0, !dbg !176
  br i1 %55, label %56, label %57, !dbg !177

; <label>:56:                                     ; preds = %51
  store %struct.partinfo* null, %struct.partinfo** %3, align 8, !dbg !178
  br label %468, !dbg !178

; <label>:57:                                     ; preds = %51
  %58 = call zeroext i1 @dpkg_ar_member_is_illegal(%struct.dpkg_ar_hdr* %13), !dbg !179
  br i1 %58, label %59, label %64, !dbg !181

; <label>:59:                                     ; preds = %57
  %60 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i32 0, i32 0)) #8, !dbg !182
  %61 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !183
  %62 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %61, i32 0, i32 0, !dbg !184
  %63 = load i8*, i8** %62, align 8, !dbg !184
  call void (i8*, ...) @ohshit(i8* %60, i8* %63) #9, !dbg !185
  unreachable, !dbg !187

; <label>:64:                                     ; preds = %57
  %65 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !188
  %66 = call i64 @dpkg_ar_member_get_size(%struct.dpkg_ar* %65, %struct.dpkg_ar_hdr* %13), !dbg !189
  store i64 %66, i64* %6, align 8, !dbg !190
  %67 = load i64, i64* %6, align 8, !dbg !191
  %68 = load i64, i64* @read_info.readinfobuflen, align 8, !dbg !193
  %69 = icmp uge i64 %67, %68, !dbg !194
  br i1 %69, label %70, label %76, !dbg !195

; <label>:70:                                     ; preds = %64
  %71 = load i64, i64* %6, align 8, !dbg !196
  %72 = add i64 %71, 2, !dbg !198
  store i64 %72, i64* @read_info.readinfobuflen, align 8, !dbg !199
  %73 = load i8*, i8** @read_info.readinfobuf, align 8, !dbg !200
  %74 = load i64, i64* @read_info.readinfobuflen, align 8, !dbg !201
  %75 = call i8* @m_realloc(i8* %73, i64 %74), !dbg !202
  store i8* %75, i8** @read_info.readinfobuf, align 8, !dbg !203
  br label %76, !dbg !204

; <label>:76:                                     ; preds = %70, %64
  %77 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !205
  %78 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %77, i32 0, i32 4, !dbg !206
  %79 = load i32, i32* %78, align 8, !dbg !206
  %80 = load i8*, i8** @read_info.readinfobuf, align 8, !dbg !207
  %81 = load i64, i64* %6, align 8, !dbg !208
  %82 = load i64, i64* %6, align 8, !dbg !209
  %83 = and i64 %82, 1, !dbg !210
  %84 = add i64 %81, %83, !dbg !211
  %85 = call i64 @fd_read(i32 %79, i8* %80, i64 %84), !dbg !212
  store i64 %85, i64* %14, align 8, !dbg !213
  %86 = load i64, i64* %14, align 8, !dbg !214
  %87 = load i64, i64* %6, align 8, !dbg !216
  %88 = load i64, i64* %6, align 8, !dbg !217
  %89 = and i64 %88, 1, !dbg !218
  %90 = add i64 %87, %89, !dbg !219
  %91 = icmp ne i64 %86, %90, !dbg !220
  br i1 %91, label %92, label %98, !dbg !221

; <label>:92:                                     ; preds = %76
  %93 = load i64, i64* %14, align 8, !dbg !222
  %94 = trunc i64 %93 to i32, !dbg !222
  %95 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !223
  %96 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %95, i32 0, i32 0, !dbg !224
  %97 = load i8*, i8** %96, align 8, !dbg !224
  call void @read_fail(i32 %94, i8* %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0)) #9, !dbg !225
  unreachable, !dbg !225

; <label>:98:                                     ; preds = %76
  %99 = load i64, i64* %6, align 8, !dbg !226
  %100 = and i64 %99, 1, !dbg !228
  %101 = icmp ne i64 %100, 0, !dbg !228
  br i1 %101, label %102, label %118, !dbg !229

; <label>:102:                                    ; preds = %98
  call void @llvm.dbg.declare(metadata i32* %15, metadata !230, metadata !83), !dbg !232
  %103 = load i64, i64* %6, align 8, !dbg !233
  %104 = add i64 %103, 1, !dbg !234
  %105 = load i8*, i8** @read_info.readinfobuf, align 8, !dbg !235
  %106 = getelementptr inbounds i8, i8* %105, i64 %104, !dbg !235
  %107 = load i8, i8* %106, align 1, !dbg !235
  %108 = sext i8 %107 to i32, !dbg !235
  store i32 %108, i32* %15, align 4, !dbg !232
  %109 = load i32, i32* %15, align 4, !dbg !236
  %110 = icmp ne i32 %109, 10, !dbg !238
  br i1 %110, label %111, label %117, !dbg !239

; <label>:111:                                    ; preds = %102
  %112 = call i8* @gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !240
  %113 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !241
  %114 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %113, i32 0, i32 0, !dbg !242
  %115 = load i8*, i8** %114, align 8, !dbg !242
  %116 = load i32, i32* %15, align 4, !dbg !243
  call void (i8*, ...) @ohshit(i8* %112, i8* %115, i32 %116) #9, !dbg !244
  unreachable, !dbg !246

; <label>:117:                                    ; preds = %102
  br label %118, !dbg !247

; <label>:118:                                    ; preds = %117, %98
  %119 = load i64, i64* %6, align 8, !dbg !248
  %120 = load i8*, i8** @read_info.readinfobuf, align 8, !dbg !249
  %121 = getelementptr inbounds i8, i8* %120, i64 %119, !dbg !249
  store i8 0, i8* %121, align 1, !dbg !250
  %122 = load i8*, i8** @read_info.readinfobuf, align 8, !dbg !251
  %123 = load i64, i64* %6, align 8, !dbg !253
  %124 = call i8* @memchr(i8* %122, i32 0, i64 %123) #10, !dbg !254
  %125 = icmp ne i8* %124, null, !dbg !254
  br i1 %125, label %126, label %131, !dbg !255

; <label>:126:                                    ; preds = %118
  %127 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0)) #8, !dbg !256
  %128 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !257
  %129 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %128, i32 0, i32 0, !dbg !258
  %130 = load i8*, i8** %129, align 8, !dbg !258
  call void (i8*, ...) @ohshit(i8* %127, i8* %130) #9, !dbg !259
  unreachable, !dbg !261

; <label>:131:                                    ; preds = %118
  %132 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !262
  %133 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %132, i32 0, i32 0, !dbg !263
  %134 = load i8*, i8** %133, align 8, !dbg !263
  %135 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !264
  %136 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %135, i32 0, i32 1, !dbg !265
  store i8* %134, i8** %136, align 8, !dbg !266
  %137 = load i8*, i8** @read_info.readinfobuf, align 8, !dbg !267
  store i8* %137, i8** %9, align 8, !dbg !268
  %138 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !269
  %139 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %138, i32 0, i32 0, !dbg !270
  %140 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !271
  %141 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %140, i32 0, i32 0, !dbg !272
  %142 = load i8*, i8** %141, align 8, !dbg !272
  %143 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)) #8, !dbg !273
  %144 = call i8* @nextline(i8** %9, i8* %142, i8* %143), !dbg !274
  %145 = call i8* @deb_version_parse(%struct.deb_version* %139, i8* %144), !dbg !276
  store i8* %145, i8** %12, align 8, !dbg !277
  %146 = load i8*, i8** %12, align 8, !dbg !278
  %147 = icmp ne i8* %146, null, !dbg !278
  br i1 %147, label %148, label %154, !dbg !280

; <label>:148:                                    ; preds = %131
  %149 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i32 0, i32 0)) #8, !dbg !281
  %150 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !282
  %151 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %150, i32 0, i32 0, !dbg !283
  %152 = load i8*, i8** %151, align 8, !dbg !283
  %153 = load i8*, i8** %12, align 8, !dbg !284
  call void (i8*, ...) @ohshit(i8* %149, i8* %152, i8* %153) #9, !dbg !285
  unreachable, !dbg !287

; <label>:154:                                    ; preds = %131
  %155 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !288
  %156 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %155, i32 0, i32 0, !dbg !290
  %157 = getelementptr inbounds %struct.deb_version, %struct.deb_version* %156, i32 0, i32 0, !dbg !291
  %158 = load i32, i32* %157, align 8, !dbg !291
  %159 = icmp ne i32 %158, 2, !dbg !292
  br i1 %159, label %160, label %173, !dbg !293

; <label>:160:                                    ; preds = %154
  %161 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i32 0, i32 0)) #8, !dbg !294
  %162 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !295
  %163 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %162, i32 0, i32 0, !dbg !296
  %164 = load i8*, i8** %163, align 8, !dbg !296
  %165 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !297
  %166 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %165, i32 0, i32 0, !dbg !298
  %167 = getelementptr inbounds %struct.deb_version, %struct.deb_version* %166, i32 0, i32 0, !dbg !299
  %168 = load i32, i32* %167, align 8, !dbg !299
  %169 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !300
  %170 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %169, i32 0, i32 0, !dbg !301
  %171 = getelementptr inbounds %struct.deb_version, %struct.deb_version* %170, i32 0, i32 1, !dbg !302
  %172 = load i32, i32* %171, align 4, !dbg !302
  call void (i8*, ...) @ohshit(i8* %161, i8* %164, i32 %168, i32 %172) #9, !dbg !303
  unreachable, !dbg !305

; <label>:173:                                    ; preds = %154
  %174 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !306
  %175 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %174, i32 0, i32 0, !dbg !307
  %176 = load i8*, i8** %175, align 8, !dbg !307
  %177 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0)) #8, !dbg !308
  %178 = call i8* @nextline(i8** %9, i8* %176, i8* %177), !dbg !309
  %179 = call i8* @nfstrsave(i8* %178), !dbg !310
  %180 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !312
  %181 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %180, i32 0, i32 2, !dbg !313
  store i8* %179, i8** %181, align 8, !dbg !314
  %182 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !315
  %183 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %182, i32 0, i32 0, !dbg !316
  %184 = load i8*, i8** %183, align 8, !dbg !316
  %185 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !317
  %186 = call i8* @nextline(i8** %9, i8* %184, i8* %185), !dbg !318
  %187 = call i8* @nfstrsave(i8* %186), !dbg !319
  %188 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !320
  %189 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %188, i32 0, i32 3, !dbg !321
  store i8* %187, i8** %189, align 8, !dbg !322
  %190 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !323
  %191 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %190, i32 0, i32 0, !dbg !324
  %192 = load i8*, i8** %191, align 8, !dbg !324
  %193 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !325
  %194 = call i8* @nextline(i8** %9, i8* %192, i8* %193), !dbg !326
  %195 = call i8* @nfstrsave(i8* %194), !dbg !327
  %196 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !328
  %197 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %196, i32 0, i32 5, !dbg !329
  store i8* %195, i8** %197, align 8, !dbg !330
  %198 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !331
  %199 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %198, i32 0, i32 5, !dbg !333
  %200 = load i8*, i8** %199, align 8, !dbg !333
  %201 = call i64 @strlen(i8* %200) #10, !dbg !334
  %202 = icmp ne i64 %201, 32, !dbg !335
  br i1 %202, label %209, label %203, !dbg !336

; <label>:203:                                    ; preds = %173
  %204 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !337
  %205 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %204, i32 0, i32 5, !dbg !338
  %206 = load i8*, i8** %205, align 8, !dbg !338
  %207 = call i64 @strspn(i8* %206, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)) #10, !dbg !339
  %208 = icmp ne i64 %207, 32, !dbg !340
  br i1 %208, label %209, label %217, !dbg !341

; <label>:209:                                    ; preds = %203, %173
  %210 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i32 0, i32 0)) #8, !dbg !342
  %211 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !343
  %212 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %211, i32 0, i32 0, !dbg !344
  %213 = load i8*, i8** %212, align 8, !dbg !344
  %214 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !345
  %215 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %214, i32 0, i32 5, !dbg !346
  %216 = load i8*, i8** %215, align 8, !dbg !346
  call void (i8*, ...) @ohshit(i8* %210, i8* %213, i8* %216) #9, !dbg !347
  unreachable, !dbg !349

; <label>:217:                                    ; preds = %203
  %218 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !350
  %219 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %218, i32 0, i32 0, !dbg !351
  %220 = load i8*, i8** %219, align 8, !dbg !351
  %221 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0)) #8, !dbg !352
  %222 = call i8* @nextline(i8** %9, i8* %220, i8* %221), !dbg !353
  %223 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !354
  %224 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %223, i32 0, i32 0, !dbg !355
  %225 = load i8*, i8** %224, align 8, !dbg !355
  %226 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0)) #8, !dbg !356
  %227 = call i64 @parse_intmax(i8* %222, i8* %225, i8* %226), !dbg !357
  %228 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !358
  %229 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %228, i32 0, i32 6, !dbg !359
  store i64 %227, i64* %229, align 8, !dbg !360
  %230 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !361
  %231 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %230, i32 0, i32 0, !dbg !362
  %232 = load i8*, i8** %231, align 8, !dbg !362
  %233 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !363
  %234 = call i8* @nextline(i8** %9, i8* %232, i8* %233), !dbg !364
  %235 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !365
  %236 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %235, i32 0, i32 0, !dbg !366
  %237 = load i8*, i8** %236, align 8, !dbg !366
  %238 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !367
  %239 = call i64 @parse_intmax(i8* %234, i8* %237, i8* %238), !dbg !368
  %240 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !369
  %241 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %240, i32 0, i32 9, !dbg !370
  store i64 %239, i64* %241, align 8, !dbg !371
  %242 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !372
  %243 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %242, i32 0, i32 0, !dbg !373
  %244 = load i8*, i8** %243, align 8, !dbg !373
  %245 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0)) #8, !dbg !374
  %246 = call i8* @nextline(i8** %9, i8* %244, i8* %245), !dbg !375
  store i8* %246, i8** %10, align 8, !dbg !376
  %247 = load i8*, i8** %10, align 8, !dbg !377
  %248 = call i8* @strchr(i8* %247, i32 47) #10, !dbg !378
  store i8* %248, i8** %11, align 8, !dbg !379
  %249 = load i8*, i8** %11, align 8, !dbg !380
  %250 = icmp ne i8* %249, null, !dbg !380
  br i1 %250, label %256, label %251, !dbg !382

; <label>:251:                                    ; preds = %217
  %252 = call i8* @gettext(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19, i32 0, i32 0)) #8, !dbg !383
  %253 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !384
  %254 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %253, i32 0, i32 0, !dbg !385
  %255 = load i8*, i8** %254, align 8, !dbg !385
  call void (i8*, ...) @ohshit(i8* %252, i8* %255) #9, !dbg !386
  unreachable, !dbg !388

; <label>:256:                                    ; preds = %217
  %257 = load i8*, i8** %11, align 8, !dbg !389
  %258 = getelementptr inbounds i8, i8* %257, i32 1, !dbg !389
  store i8* %258, i8** %11, align 8, !dbg !389
  store i8 0, i8* %257, align 1, !dbg !390
  %259 = load i8*, i8** %11, align 8, !dbg !391
  %260 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !392
  %261 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %260, i32 0, i32 0, !dbg !393
  %262 = load i8*, i8** %261, align 8, !dbg !393
  %263 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0)) #8, !dbg !394
  %264 = call i64 @parse_intmax(i8* %259, i8* %262, i8* %263), !dbg !395
  store i64 %264, i64* %7, align 8, !dbg !396
  %265 = load i64, i64* %7, align 8, !dbg !397
  %266 = icmp sle i64 %265, 0, !dbg !399
  br i1 %266, label %270, label %267, !dbg !400

; <label>:267:                                    ; preds = %256
  %268 = load i64, i64* %7, align 8, !dbg !401
  %269 = icmp sgt i64 %268, 2147483647, !dbg !403
  br i1 %269, label %270, label %275, !dbg !404

; <label>:270:                                    ; preds = %267, %256
  %271 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !405
  %272 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !406
  %273 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %272, i32 0, i32 0, !dbg !407
  %274 = load i8*, i8** %273, align 8, !dbg !407
  call void (i8*, ...) @ohshit(i8* %271, i8* %274) #9, !dbg !408
  unreachable, !dbg !409

; <label>:275:                                    ; preds = %267
  %276 = load i64, i64* %7, align 8, !dbg !410
  %277 = trunc i64 %276 to i32, !dbg !410
  %278 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !411
  %279 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %278, i32 0, i32 8, !dbg !412
  store i32 %277, i32* %279, align 4, !dbg !413
  %280 = load i8*, i8** %10, align 8, !dbg !414
  %281 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !415
  %282 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %281, i32 0, i32 0, !dbg !416
  %283 = load i8*, i8** %282, align 8, !dbg !416
  %284 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0)) #8, !dbg !417
  %285 = call i64 @parse_intmax(i8* %280, i8* %283, i8* %284), !dbg !418
  store i64 %285, i64* %7, align 8, !dbg !419
  %286 = load i64, i64* %7, align 8, !dbg !420
  %287 = icmp sle i64 %286, 0, !dbg !422
  br i1 %287, label %295, label %288, !dbg !423

; <label>:288:                                    ; preds = %275
  %289 = load i64, i64* %7, align 8, !dbg !424
  %290 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !426
  %291 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %290, i32 0, i32 8, !dbg !427
  %292 = load i32, i32* %291, align 4, !dbg !427
  %293 = zext i32 %292 to i64, !dbg !426
  %294 = icmp sgt i64 %289, %293, !dbg !428
  br i1 %294, label %295, label %300, !dbg !429

; <label>:295:                                    ; preds = %288, %275
  %296 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.23, i32 0, i32 0)) #8, !dbg !430
  %297 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !431
  %298 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %297, i32 0, i32 0, !dbg !432
  %299 = load i8*, i8** %298, align 8, !dbg !432
  call void (i8*, ...) @ohshit(i8* %296, i8* %299) #9, !dbg !433
  unreachable, !dbg !434

; <label>:300:                                    ; preds = %288
  %301 = load i64, i64* %7, align 8, !dbg !435
  %302 = trunc i64 %301 to i32, !dbg !435
  %303 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !436
  %304 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %303, i32 0, i32 7, !dbg !437
  store i32 %302, i32* %304, align 8, !dbg !438
  %305 = load i8*, i8** %9, align 8, !dbg !439
  %306 = load i8, i8* %305, align 1, !dbg !441
  %307 = sext i8 %306 to i32, !dbg !441
  %308 = icmp ne i32 %307, 0, !dbg !442
  br i1 %308, label %309, label %318, !dbg !443

; <label>:309:                                    ; preds = %300
  %310 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !444
  %311 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %310, i32 0, i32 0, !dbg !445
  %312 = load i8*, i8** %311, align 8, !dbg !445
  %313 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0)) #8, !dbg !446
  %314 = call i8* @nextline(i8** %9, i8* %312, i8* %313), !dbg !447
  %315 = call i8* @nfstrsave(i8* %314), !dbg !449
  %316 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !451
  %317 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %316, i32 0, i32 4, !dbg !452
  store i8* %315, i8** %317, align 8, !dbg !453
  br label %321, !dbg !451

; <label>:318:                                    ; preds = %300
  %319 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !454
  %320 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %319, i32 0, i32 4, !dbg !455
  store i8* null, i8** %320, align 8, !dbg !456
  br label %321

; <label>:321:                                    ; preds = %318, %309
  %322 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !457
  %323 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %322, i32 0, i32 4, !dbg !458
  %324 = load i32, i32* %323, align 8, !dbg !458
  %325 = bitcast %struct.dpkg_ar_hdr* %13 to i8*, !dbg !459
  %326 = call i64 @fd_read(i32 %324, i8* %325, i64 60), !dbg !460
  store i64 %326, i64* %14, align 8, !dbg !461
  %327 = load i64, i64* %14, align 8, !dbg !462
  %328 = icmp ne i64 %327, 60, !dbg !464
  br i1 %328, label %329, label %335, !dbg !465

; <label>:329:                                    ; preds = %321
  %330 = load i64, i64* %14, align 8, !dbg !466
  %331 = trunc i64 %330 to i32, !dbg !466
  %332 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !467
  %333 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %332, i32 0, i32 0, !dbg !468
  %334 = load i8*, i8** %333, align 8, !dbg !468
  call void @read_fail(i32 %331, i8* %334, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i32 0, i32 0)) #9, !dbg !469
  unreachable, !dbg !469

; <label>:335:                                    ; preds = %321
  call void @dpkg_ar_normalize_name(%struct.dpkg_ar_hdr* %13), !dbg !470
  %336 = call zeroext i1 @dpkg_ar_member_is_illegal(%struct.dpkg_ar_hdr* %13), !dbg !471
  br i1 %336, label %337, label %342, !dbg !473

; <label>:337:                                    ; preds = %335
  %338 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.26, i32 0, i32 0)) #8, !dbg !474
  %339 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !475
  %340 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %339, i32 0, i32 0, !dbg !476
  %341 = load i8*, i8** %340, align 8, !dbg !476
  call void (i8*, ...) @ohshit(i8* %338, i8* %341) #9, !dbg !477
  unreachable, !dbg !479

; <label>:342:                                    ; preds = %335
  %343 = getelementptr inbounds %struct.dpkg_ar_hdr, %struct.dpkg_ar_hdr* %13, i32 0, i32 0, !dbg !480
  %344 = getelementptr inbounds [16 x i8], [16 x i8]* %343, i32 0, i32 0, !dbg !482
  %345 = call i32 @strncmp(i8* %344, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i64 4) #10, !dbg !483
  %346 = icmp ne i32 %345, 0, !dbg !483
  br i1 %346, label %347, label %352, !dbg !484

; <label>:347:                                    ; preds = %342
  %348 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.28, i32 0, i32 0)) #8, !dbg !485
  %349 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !486
  %350 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %349, i32 0, i32 0, !dbg !487
  %351 = load i8*, i8** %350, align 8, !dbg !487
  call void (i8*, ...) @ohshit(i8* %348, i8* %351) #9, !dbg !488
  unreachable, !dbg !490

; <label>:352:                                    ; preds = %342
  %353 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !491
  %354 = call i64 @dpkg_ar_member_get_size(%struct.dpkg_ar* %353, %struct.dpkg_ar_hdr* %13), !dbg !492
  %355 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !493
  %356 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %355, i32 0, i32 11, !dbg !494
  store i64 %354, i64* %356, align 8, !dbg !495
  %357 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !496
  %358 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %357, i32 0, i32 7, !dbg !497
  %359 = load i32, i32* %358, align 8, !dbg !497
  %360 = sub i32 %359, 1, !dbg !498
  %361 = zext i32 %360 to i64, !dbg !499
  %362 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !500
  %363 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %362, i32 0, i32 9, !dbg !501
  %364 = load i64, i64* %363, align 8, !dbg !501
  %365 = mul nsw i64 %361, %364, !dbg !502
  %366 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !503
  %367 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %366, i32 0, i32 10, !dbg !504
  store i64 %365, i64* %367, align 8, !dbg !505
  %368 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !506
  %369 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %368, i32 0, i32 8, !dbg !508
  %370 = load i32, i32* %369, align 4, !dbg !508
  %371 = zext i32 %370 to i64, !dbg !506
  %372 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !509
  %373 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %372, i32 0, i32 6, !dbg !510
  %374 = load i64, i64* %373, align 8, !dbg !510
  %375 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !511
  %376 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %375, i32 0, i32 9, !dbg !512
  %377 = load i64, i64* %376, align 8, !dbg !512
  %378 = add nsw i64 %374, %377, !dbg !513
  %379 = sub nsw i64 %378, 1, !dbg !514
  %380 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !515
  %381 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %380, i32 0, i32 9, !dbg !516
  %382 = load i64, i64* %381, align 8, !dbg !516
  %383 = sdiv i64 %379, %382, !dbg !517
  %384 = icmp ne i64 %371, %383, !dbg !518
  br i1 %384, label %385, label %390, !dbg !519

; <label>:385:                                    ; preds = %352
  %386 = call i8* @gettext(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.29, i32 0, i32 0)) #8, !dbg !520
  %387 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !521
  %388 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %387, i32 0, i32 0, !dbg !522
  %389 = load i8*, i8** %388, align 8, !dbg !522
  call void (i8*, ...) @ohshit(i8* %386, i8* %389) #9, !dbg !523
  unreachable, !dbg !525

; <label>:390:                                    ; preds = %352
  %391 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !526
  %392 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %391, i32 0, i32 11, !dbg !528
  %393 = load i64, i64* %392, align 8, !dbg !528
  %394 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !529
  %395 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %394, i32 0, i32 7, !dbg !530
  %396 = load i32, i32* %395, align 8, !dbg !530
  %397 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !531
  %398 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %397, i32 0, i32 8, !dbg !532
  %399 = load i32, i32* %398, align 4, !dbg !532
  %400 = icmp eq i32 %396, %399, !dbg !533
  br i1 %400, label %401, label %409, !dbg !529

; <label>:401:                                    ; preds = %390
  %402 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !534
  %403 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %402, i32 0, i32 6, !dbg !535
  %404 = load i64, i64* %403, align 8, !dbg !535
  %405 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !536
  %406 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %405, i32 0, i32 10, !dbg !537
  %407 = load i64, i64* %406, align 8, !dbg !537
  %408 = sub nsw i64 %404, %407, !dbg !538
  br label %413, !dbg !539

; <label>:409:                                    ; preds = %390
  %410 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !541
  %411 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %410, i32 0, i32 9, !dbg !542
  %412 = load i64, i64* %411, align 8, !dbg !542
  br label %413, !dbg !543

; <label>:413:                                    ; preds = %409, %401
  %414 = phi i64 [ %408, %401 ], [ %412, %409 ], !dbg !545
  %415 = icmp ne i64 %393, %414, !dbg !547
  br i1 %415, label %416, label %421, !dbg !548

; <label>:416:                                    ; preds = %413
  %417 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.30, i32 0, i32 0)) #8, !dbg !549
  %418 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !550
  %419 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %418, i32 0, i32 0, !dbg !551
  %420 = load i8*, i8** %419, align 8, !dbg !551
  call void (i8*, ...) @ohshit(i8* %417, i8* %420) #9, !dbg !552
  unreachable, !dbg !553

; <label>:421:                                    ; preds = %413
  %422 = load i64, i64* %6, align 8, !dbg !554
  %423 = add i64 68, %422, !dbg !555
  %424 = load i64, i64* %6, align 8, !dbg !556
  %425 = and i64 %424, 1, !dbg !557
  %426 = add i64 %423, %425, !dbg !558
  %427 = add i64 %426, 60, !dbg !559
  %428 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !560
  %429 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %428, i32 0, i32 11, !dbg !561
  %430 = load i64, i64* %429, align 8, !dbg !561
  %431 = add i64 %427, %430, !dbg !562
  %432 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !563
  %433 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %432, i32 0, i32 11, !dbg !564
  %434 = load i64, i64* %433, align 8, !dbg !564
  %435 = and i64 %434, 1, !dbg !565
  %436 = add i64 %431, %435, !dbg !566
  %437 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !567
  %438 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %437, i32 0, i32 13, !dbg !568
  store i64 %436, i64* %438, align 8, !dbg !569
  %439 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !570
  %440 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %439, i32 0, i32 1, !dbg !572
  %441 = load i32, i32* %440, align 8, !dbg !572
  %442 = and i32 %441, 61440, !dbg !573
  %443 = icmp eq i32 %442, 32768, !dbg !574
  br i1 %443, label %444, label %458, !dbg !575

; <label>:444:                                    ; preds = %421
  %445 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !576
  %446 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %445, i32 0, i32 3, !dbg !579
  %447 = load i64, i64* %446, align 8, !dbg !579
  %448 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !580
  %449 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %448, i32 0, i32 13, !dbg !581
  %450 = load i64, i64* %449, align 8, !dbg !581
  %451 = icmp slt i64 %447, %450, !dbg !582
  br i1 %451, label %452, label %457, !dbg !583

; <label>:452:                                    ; preds = %444
  %453 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i32 0, i32 0)) #8, !dbg !584
  %454 = load %struct.dpkg_ar*, %struct.dpkg_ar** %4, align 8, !dbg !585
  %455 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %454, i32 0, i32 0, !dbg !586
  %456 = load i8*, i8** %455, align 8, !dbg !586
  call void (i8*, ...) @ohshit(i8* %453, i8* %456) #9, !dbg !587
  unreachable, !dbg !589

; <label>:457:                                    ; preds = %444
  br label %458, !dbg !590

; <label>:458:                                    ; preds = %457, %421
  %459 = load i64, i64* %6, align 8, !dbg !591
  %460 = add i64 68, %459, !dbg !592
  %461 = load i64, i64* %6, align 8, !dbg !593
  %462 = and i64 %461, 1, !dbg !594
  %463 = add i64 %460, %462, !dbg !595
  %464 = add i64 %463, 60, !dbg !596
  %465 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !597
  %466 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %465, i32 0, i32 12, !dbg !598
  store i64 %464, i64* %466, align 8, !dbg !599
  %467 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !600
  store %struct.partinfo* %467, %struct.partinfo** %3, align 8, !dbg !601
  br label %468, !dbg !601

; <label>:468:                                    ; preds = %458, %56, %36, %31
  %469 = load %struct.partinfo*, %struct.partinfo** %3, align 8, !dbg !602
  ret %struct.partinfo* %469, !dbg !602
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i64 @fd_read(i32, i8*, i64) #2

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: noreturn
declare void @read_fail(i32, i8*, i8*) #3

declare void @dpkg_ar_normalize_name(%struct.dpkg_ar_hdr*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

declare zeroext i1 @dpkg_ar_member_is_illegal(%struct.dpkg_ar_hdr*) #2

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #3

declare i64 @dpkg_ar_member_get_size(%struct.dpkg_ar*, %struct.dpkg_ar_hdr*) #2

declare i8* @m_realloc(i8*, i64) #2

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #5

declare i8* @deb_version_parse(%struct.deb_version*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @nextline(i8**, i8*, i8*) #0 !dbg !603 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !607, metadata !83), !dbg !608
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !609, metadata !83), !dbg !610
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !611, metadata !83), !dbg !612
  call void @llvm.dbg.declare(metadata i8** %7, metadata !613, metadata !83), !dbg !614
  call void @llvm.dbg.declare(metadata i8** %8, metadata !615, metadata !83), !dbg !616
  %9 = load i8**, i8*** %4, align 8, !dbg !617
  %10 = load i8*, i8** %9, align 8, !dbg !618
  store i8* %10, i8** %8, align 8, !dbg !619
  %11 = load i8*, i8** %8, align 8, !dbg !620
  %12 = icmp ne i8* %11, null, !dbg !620
  br i1 %12, label %17, label %13, !dbg !622

; <label>:13:                                     ; preds = %3
  %14 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.40, i32 0, i32 0)) #8, !dbg !623
  %15 = load i8*, i8** %5, align 8, !dbg !624
  %16 = load i8*, i8** %6, align 8, !dbg !625
  call void (i8*, ...) @ohshit(i8* %14, i8* %15, i8* %16) #9, !dbg !626
  unreachable, !dbg !628

; <label>:17:                                     ; preds = %3
  %18 = load i8*, i8** %8, align 8, !dbg !629
  %19 = call i8* @strchr(i8* %18, i32 10) #10, !dbg !630
  store i8* %19, i8** %7, align 8, !dbg !631
  %20 = load i8*, i8** %7, align 8, !dbg !632
  %21 = icmp ne i8* %20, null, !dbg !632
  br i1 %21, label %26, label %22, !dbg !634

; <label>:22:                                     ; preds = %17
  %23 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.41, i32 0, i32 0)) #8, !dbg !635
  %24 = load i8*, i8** %5, align 8, !dbg !636
  %25 = load i8*, i8** %6, align 8, !dbg !637
  call void (i8*, ...) @ohshit(i8* %23, i8* %24, i8* %25) #9, !dbg !638
  unreachable, !dbg !640

; <label>:26:                                     ; preds = %17
  %27 = load i8*, i8** %7, align 8, !dbg !641
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !642
  %29 = load i8**, i8*** %4, align 8, !dbg !643
  store i8* %28, i8** %29, align 8, !dbg !644
  br label %30, !dbg !645

; <label>:30:                                     ; preds = %42, %26
  %31 = load i8*, i8** %7, align 8, !dbg !646
  %32 = load i8*, i8** %8, align 8, !dbg !648
  %33 = icmp ugt i8* %31, %32, !dbg !649
  br i1 %33, label %34, label %40, !dbg !650

; <label>:34:                                     ; preds = %30
  %35 = load i8*, i8** %7, align 8, !dbg !651
  %36 = getelementptr inbounds i8, i8* %35, i64 -1, !dbg !651
  %37 = load i8, i8* %36, align 1, !dbg !651
  %38 = sext i8 %37 to i32, !dbg !651
  %39 = call zeroext i1 @c_isspace(i32 %38), !dbg !653
  br label %40

; <label>:40:                                     ; preds = %34, %30
  %41 = phi i1 [ false, %30 ], [ %39, %34 ]
  br i1 %41, label %42, label %45, !dbg !654

; <label>:42:                                     ; preds = %40
  %43 = load i8*, i8** %7, align 8, !dbg !656
  %44 = getelementptr inbounds i8, i8* %43, i32 -1, !dbg !656
  store i8* %44, i8** %7, align 8, !dbg !656
  br label %30, !dbg !657, !llvm.loop !659

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %7, align 8, !dbg !660
  store i8 0, i8* %46, align 1, !dbg !661
  %47 = load i8*, i8** %8, align 8, !dbg !662
  ret i8* %47, !dbg !663
}

declare i8* @nfstrsave(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal i64 @parse_intmax(i8*, i8*, i8*) #0 !dbg !664 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !667, metadata !83), !dbg !668
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !669, metadata !83), !dbg !670
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !671, metadata !83), !dbg !672
  call void @llvm.dbg.declare(metadata i64* %7, metadata !673, metadata !83), !dbg !674
  call void @llvm.dbg.declare(metadata i8** %8, metadata !675, metadata !83), !dbg !676
  %9 = call i32* @__errno_location() #1, !dbg !677
  store i32 0, i32* %9, align 4, !dbg !678
  %10 = load i8*, i8** %4, align 8, !dbg !679
  %11 = call i64 @strtoimax(i8* %10, i8** %8, i32 10) #8, !dbg !680
  store i64 %11, i64* %7, align 8, !dbg !681
  %12 = load i8*, i8** %4, align 8, !dbg !682
  %13 = load i8*, i8** %8, align 8, !dbg !684
  %14 = icmp eq i8* %12, %13, !dbg !685
  br i1 %14, label %20, label %15, !dbg !686

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %8, align 8, !dbg !687
  %17 = load i8, i8* %16, align 1, !dbg !689
  %18 = sext i8 %17 to i32, !dbg !689
  %19 = icmp ne i32 %18, 0, !dbg !689
  br i1 %19, label %20, label %27, !dbg !690

; <label>:20:                                     ; preds = %15, %3
  %21 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.42, i32 0, i32 0)) #8, !dbg !691
  %22 = load i8*, i8** %5, align 8, !dbg !692
  %23 = load i8*, i8** %8, align 8, !dbg !693
  %24 = load i8, i8* %23, align 1, !dbg !694
  %25 = sext i8 %24 to i32, !dbg !694
  %26 = load i8*, i8** %6, align 8, !dbg !695
  call void (i8*, ...) @ohshit(i8* %21, i8* %22, i32 %25, i8* %26) #9, !dbg !696
  unreachable, !dbg !697

; <label>:27:                                     ; preds = %15
  %28 = load i64, i64* %7, align 8, !dbg !698
  %29 = icmp slt i64 %28, 0, !dbg !700
  br i1 %29, label %34, label %30, !dbg !701

; <label>:30:                                     ; preds = %27
  %31 = call i32* @__errno_location() #1, !dbg !702
  %32 = load i32, i32* %31, align 4, !dbg !704
  %33 = icmp eq i32 %32, 34, !dbg !705
  br i1 %33, label %34, label %38, !dbg !706

; <label>:34:                                     ; preds = %30, %27
  %35 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.43, i32 0, i32 0)) #8, !dbg !707
  %36 = load i8*, i8** %5, align 8, !dbg !708
  %37 = load i8*, i8** %6, align 8, !dbg !709
  call void (i8*, ...) @ohshit(i8* %35, i8* %36, i8* %37) #9, !dbg !710
  unreachable, !dbg !711

; <label>:38:                                     ; preds = %30
  %39 = load i64, i64* %7, align 8, !dbg !712
  ret i64 %39, !dbg !713
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: nounwind uwtable
define void @mustgetpartinfo(i8*, %struct.partinfo*) #0 !dbg !714 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.partinfo*, align 8
  %5 = alloca %struct.dpkg_ar*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !717, metadata !83), !dbg !718
  store %struct.partinfo* %1, %struct.partinfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.partinfo** %4, metadata !719, metadata !83), !dbg !720
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar** %5, metadata !721, metadata !83), !dbg !722
  %6 = load i8*, i8** %3, align 8, !dbg !723
  %7 = call %struct.dpkg_ar* @dpkg_ar_open(i8* %6), !dbg !724
  store %struct.dpkg_ar* %7, %struct.dpkg_ar** %5, align 8, !dbg !725
  %8 = load %struct.dpkg_ar*, %struct.dpkg_ar** %5, align 8, !dbg !726
  %9 = icmp ne %struct.dpkg_ar* %8, null, !dbg !726
  br i1 %9, label %13, label %10, !dbg !728

; <label>:10:                                     ; preds = %2
  %11 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i32 0, i32 0)) #8, !dbg !729
  %12 = load i8*, i8** %3, align 8, !dbg !730
  call void (i8*, ...) @ohshite(i8* %11, i8* %12) #9, !dbg !731
  unreachable, !dbg !733

; <label>:13:                                     ; preds = %2
  %14 = load %struct.dpkg_ar*, %struct.dpkg_ar** %5, align 8, !dbg !734
  %15 = load %struct.partinfo*, %struct.partinfo** %4, align 8, !dbg !736
  %16 = call %struct.partinfo* @read_info(%struct.dpkg_ar* %14, %struct.partinfo* %15), !dbg !737
  %17 = icmp ne %struct.partinfo* %16, null, !dbg !737
  br i1 %17, label %21, label %18, !dbg !738

; <label>:18:                                     ; preds = %13
  %19 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i32 0, i32 0)) #8, !dbg !739
  %20 = load i8*, i8** %3, align 8, !dbg !740
  call void (i8*, ...) @ohshite(i8* %19, i8* %20) #9, !dbg !741
  unreachable, !dbg !743

; <label>:21:                                     ; preds = %13
  %22 = load %struct.dpkg_ar*, %struct.dpkg_ar** %5, align 8, !dbg !744
  call void @dpkg_ar_close(%struct.dpkg_ar* %22), !dbg !745
  ret void, !dbg !746
}

declare %struct.dpkg_ar* @dpkg_ar_open(i8*) #2

declare void @dpkg_ar_close(%struct.dpkg_ar*) #2

; Function Attrs: nounwind uwtable
define void @print_info(%struct.partinfo*) #0 !dbg !747 {
  %2 = alloca %struct.partinfo*, align 8
  store %struct.partinfo* %0, %struct.partinfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.partinfo** %2, metadata !752, metadata !83), !dbg !753
  %3 = call i8* @gettext(i8* getelementptr inbounds ([476 x i8], [476 x i8]* @.str.34, i32 0, i32 0)) #8, !dbg !754
  %4 = load %struct.partinfo*, %struct.partinfo** %2, align 8, !dbg !755
  %5 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %4, i32 0, i32 1, !dbg !756
  %6 = load i8*, i8** %5, align 8, !dbg !756
  %7 = load %struct.partinfo*, %struct.partinfo** %2, align 8, !dbg !757
  %8 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %7, i32 0, i32 0, !dbg !758
  %9 = getelementptr inbounds %struct.deb_version, %struct.deb_version* %8, i32 0, i32 0, !dbg !759
  %10 = load i32, i32* %9, align 8, !dbg !759
  %11 = load %struct.partinfo*, %struct.partinfo** %2, align 8, !dbg !760
  %12 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %11, i32 0, i32 0, !dbg !761
  %13 = getelementptr inbounds %struct.deb_version, %struct.deb_version* %12, i32 0, i32 1, !dbg !762
  %14 = load i32, i32* %13, align 4, !dbg !762
  %15 = load %struct.partinfo*, %struct.partinfo** %2, align 8, !dbg !763
  %16 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %15, i32 0, i32 2, !dbg !764
  %17 = load i8*, i8** %16, align 8, !dbg !764
  %18 = load %struct.partinfo*, %struct.partinfo** %2, align 8, !dbg !765
  %19 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %18, i32 0, i32 3, !dbg !766
  %20 = load i8*, i8** %19, align 8, !dbg !766
  %21 = load %struct.partinfo*, %struct.partinfo** %2, align 8, !dbg !767
  %22 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %21, i32 0, i32 4, !dbg !768
  %23 = load i8*, i8** %22, align 8, !dbg !768
  %24 = icmp ne i8* %23, null, !dbg !767
  br i1 %24, label %25, label %29, !dbg !767

; <label>:25:                                     ; preds = %1
  %26 = load %struct.partinfo*, %struct.partinfo** %2, align 8, !dbg !769
  %27 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %26, i32 0, i32 4, !dbg !771
  %28 = load i8*, i8** %27, align 8, !dbg !771
  br label %31, !dbg !772

; <label>:29:                                     ; preds = %1
  %30 = call i8* @pgettext_aux(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i32 5), !dbg !773
  br label %31, !dbg !775

; <label>:31:                                     ; preds = %29, %25
  %32 = phi i8* [ %28, %25 ], [ %30, %29 ], !dbg !776
  %33 = load %struct.partinfo*, %struct.partinfo** %2, align 8, !dbg !778
  %34 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %33, i32 0, i32 5, !dbg !779
  %35 = load i8*, i8** %34, align 8, !dbg !779
  %36 = load %struct.partinfo*, %struct.partinfo** %2, align 8, !dbg !780
  %37 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %36, i32 0, i32 6, !dbg !781
  %38 = load i64, i64* %37, align 8, !dbg !781
  %39 = load %struct.partinfo*, %struct.partinfo** %2, align 8, !dbg !782
  %40 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %39, i32 0, i32 9, !dbg !783
  %41 = load i64, i64* %40, align 8, !dbg !783
  %42 = load %struct.partinfo*, %struct.partinfo** %2, align 8, !dbg !784
  %43 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %42, i32 0, i32 7, !dbg !785
  %44 = load i32, i32* %43, align 8, !dbg !785
  %45 = load %struct.partinfo*, %struct.partinfo** %2, align 8, !dbg !786
  %46 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %45, i32 0, i32 8, !dbg !787
  %47 = load i32, i32* %46, align 4, !dbg !787
  %48 = load %struct.partinfo*, %struct.partinfo** %2, align 8, !dbg !788
  %49 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %48, i32 0, i32 11, !dbg !789
  %50 = load i64, i64* %49, align 8, !dbg !789
  %51 = load %struct.partinfo*, %struct.partinfo** %2, align 8, !dbg !790
  %52 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %51, i32 0, i32 10, !dbg !791
  %53 = load i64, i64* %52, align 8, !dbg !791
  %54 = load %struct.partinfo*, %struct.partinfo** %2, align 8, !dbg !792
  %55 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %54, i32 0, i32 13, !dbg !793
  %56 = load i64, i64* %55, align 8, !dbg !793
  %57 = call i32 (i8*, ...) @printf(i8* %3, i8* %6, i32 %10, i32 %14, i8* %17, i8* %20, i8* %32, i8* %35, i64 %38, i64 %41, i32 %44, i32 %47, i64 %50, i64 %53, i64 %56), !dbg !794
  ret void, !dbg !795
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @pgettext_aux(i8*, i8*, i8*, i32) #6 !dbg !796 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !800, metadata !83), !dbg !801
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !802, metadata !83), !dbg !803
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !804, metadata !83), !dbg !805
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !806, metadata !83), !dbg !807
  call void @llvm.dbg.declare(metadata i8** %10, metadata !808, metadata !83), !dbg !809
  %11 = load i8*, i8** %6, align 8, !dbg !810
  %12 = load i8*, i8** %7, align 8, !dbg !811
  %13 = load i32, i32* %9, align 4, !dbg !812
  %14 = call i8* @dcgettext(i8* %11, i8* %12, i32 %13) #8, !dbg !813
  store i8* %14, i8** %10, align 8, !dbg !809
  %15 = load i8*, i8** %10, align 8, !dbg !814
  %16 = load i8*, i8** %7, align 8, !dbg !816
  %17 = icmp eq i8* %15, %16, !dbg !817
  br i1 %17, label %18, label %20, !dbg !818

; <label>:18:                                     ; preds = %4
  %19 = load i8*, i8** %8, align 8, !dbg !819
  store i8* %19, i8** %5, align 8, !dbg !820
  br label %22, !dbg !820

; <label>:20:                                     ; preds = %4
  %21 = load i8*, i8** %10, align 8, !dbg !821
  store i8* %21, i8** %5, align 8, !dbg !822
  br label %22, !dbg !822

; <label>:22:                                     ; preds = %20, %18
  %23 = load i8*, i8** %5, align 8, !dbg !823
  ret i8* %23, !dbg !823
}

; Function Attrs: nounwind uwtable
define i32 @do_info(i8**) #0 !dbg !824 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.partinfo*, align 8
  %5 = alloca %struct.partinfo, align 8
  %6 = alloca %struct.dpkg_ar*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !829, metadata !83), !dbg !830
  call void @llvm.dbg.declare(metadata i8** %3, metadata !831, metadata !83), !dbg !832
  call void @llvm.dbg.declare(metadata %struct.partinfo** %4, metadata !833, metadata !83), !dbg !834
  call void @llvm.dbg.declare(metadata %struct.partinfo* %5, metadata !835, metadata !83), !dbg !836
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar** %6, metadata !837, metadata !83), !dbg !838
  %7 = load i8**, i8*** %2, align 8, !dbg !839
  %8 = load i8*, i8** %7, align 8, !dbg !841
  %9 = icmp ne i8* %8, null, !dbg !841
  br i1 %9, label %15, label %10, !dbg !842

; <label>:10:                                     ; preds = %1
  %11 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.37, i32 0, i32 0)) #8, !dbg !843
  %12 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !844
  %13 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %12, i32 0, i32 0, !dbg !845
  %14 = load i8*, i8** %13, align 8, !dbg !845
  call void (i8*, ...) @badusage(i8* %11, i8* %14) #9, !dbg !846
  unreachable, !dbg !848

; <label>:15:                                     ; preds = %1
  br label %16, !dbg !849

; <label>:16:                                     ; preds = %41, %15
  %17 = load i8**, i8*** %2, align 8, !dbg !850
  %18 = getelementptr inbounds i8*, i8** %17, i32 1, !dbg !850
  store i8** %18, i8*** %2, align 8, !dbg !850
  %19 = load i8*, i8** %17, align 8, !dbg !852
  store i8* %19, i8** %3, align 8, !dbg !853
  %20 = icmp ne i8* %19, null, !dbg !854
  br i1 %20, label %21, label %44, !dbg !854

; <label>:21:                                     ; preds = %16
  %22 = load i8*, i8** %3, align 8, !dbg !855
  %23 = call %struct.dpkg_ar* @dpkg_ar_open(i8* %22), !dbg !857
  store %struct.dpkg_ar* %23, %struct.dpkg_ar** %6, align 8, !dbg !858
  %24 = load %struct.dpkg_ar*, %struct.dpkg_ar** %6, align 8, !dbg !859
  %25 = icmp ne %struct.dpkg_ar* %24, null, !dbg !859
  br i1 %25, label %29, label %26, !dbg !861

; <label>:26:                                     ; preds = %21
  %27 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i32 0, i32 0)) #8, !dbg !862
  %28 = load i8*, i8** %3, align 8, !dbg !863
  call void (i8*, ...) @ohshite(i8* %27, i8* %28) #9, !dbg !864
  unreachable, !dbg !866

; <label>:29:                                     ; preds = %21
  %30 = load %struct.dpkg_ar*, %struct.dpkg_ar** %6, align 8, !dbg !867
  %31 = call %struct.partinfo* @read_info(%struct.dpkg_ar* %30, %struct.partinfo* %5), !dbg !868
  store %struct.partinfo* %31, %struct.partinfo** %4, align 8, !dbg !869
  %32 = load %struct.dpkg_ar*, %struct.dpkg_ar** %6, align 8, !dbg !870
  call void @dpkg_ar_close(%struct.dpkg_ar* %32), !dbg !871
  %33 = load %struct.partinfo*, %struct.partinfo** %4, align 8, !dbg !872
  %34 = icmp ne %struct.partinfo* %33, null, !dbg !872
  br i1 %34, label %35, label %37, !dbg !874

; <label>:35:                                     ; preds = %29
  %36 = load %struct.partinfo*, %struct.partinfo** %4, align 8, !dbg !875
  call void @print_info(%struct.partinfo* %36), !dbg !877
  br label %41, !dbg !878

; <label>:37:                                     ; preds = %29
  %38 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i32 0, i32 0)) #8, !dbg !879
  %39 = load i8*, i8** %3, align 8, !dbg !881
  %40 = call i32 (i8*, ...) @printf(i8* %38, i8* %39), !dbg !882
  br label %41

; <label>:41:                                     ; preds = %37, %35
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !884
  %43 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0)) #8, !dbg !885
  call void @m_output(%struct._IO_FILE* %42, i8* %43), !dbg !886
  br label %16, !dbg !888, !llvm.loop !890

; <label>:44:                                     ; preds = %16
  ret i32 0, !dbg !891
}

; Function Attrs: noreturn
declare void @badusage(i8*, ...) #3

declare void @m_output(%struct._IO_FILE*, i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isspace(i32) #6 !dbg !892 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !896, metadata !83), !dbg !897
  %3 = load i32, i32* %2, align 4, !dbg !898
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 4), !dbg !899
  ret i1 %4, !dbg !900
}

declare zeroext i1 @c_isbits(i32, i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind
declare i64 @strtoimax(i8*, i8**, i32) #4

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!79, !80}
!llvm.ident = !{!81}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !14, globals: !22)
!1 = !DIFile(filename: "[inter]dpkg-split--info.o.i", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_ctype_bit", file: !4, line: 32, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../lib/dpkg/c-ctype.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13}
!6 = !DIEnumerator(name: "C_CTYPE_BLANK", value: 1)
!7 = !DIEnumerator(name: "C_CTYPE_WHITE", value: 2)
!8 = !DIEnumerator(name: "C_CTYPE_SPACE", value: 4)
!9 = !DIEnumerator(name: "C_CTYPE_UPPER", value: 8)
!10 = !DIEnumerator(name: "C_CTYPE_LOWER", value: 16)
!11 = !DIEnumerator(name: "C_CTYPE_DIGIT", value: 32)
!12 = !DIEnumerator(name: "C_CTYPE_ALPHA", value: 24)
!13 = !DIEnumerator(name: "C_CTYPE_ALNUM", value: 56)
!14 = !{!15, !20}
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !16, line: 223, baseType: !17)
!16 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !18, line: 172, baseType: !19)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!19 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !21, line: 134, baseType: !19)
!21 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!22 = !{!23, !75}
!23 = distinct !DIGlobalVariable(name: "readinfobuf", scope: !24, file: !25, line: 89, type: !74, isLocal: true, isDefinition: true, variable: i8** @read_info.readinfobuf)
!24 = distinct !DISubprogram(name: "read_info", scope: !25, file: !25, line: 87, type: !26, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !73)
!25 = !DIFile(filename: "info.c", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !59, !28}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partinfo", file: !30, line: 35, size: 832, align: 64, elements: !31)
!30 = !DIFile(filename: "dpkg-split.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!31 = !{!32, !39, !43, !44, !45, !46, !47, !51, !53, !54, !55, !56, !57, !58}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "fmtversion", scope: !29, file: !30, line: 36, baseType: !33, size: 64, align: 32)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deb_version", file: !34, line: 37, size: 64, align: 32, elements: !35)
!34 = !DIFile(filename: "../lib/dpkg/deb-version.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!35 = !{!36, !38}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !33, file: !34, line: 38, baseType: !37, size: 32, align: 32)
!37 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !33, file: !34, line: 39, baseType: !37, size: 32, align: 32, offset: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !29, file: !30, line: 37, baseType: !40, size: 64, align: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !29, file: !30, line: 38, baseType: !40, size: 64, align: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !29, file: !30, line: 39, baseType: !40, size: 64, align: 64, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !29, file: !30, line: 40, baseType: !40, size: 64, align: 64, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !29, file: !30, line: 41, baseType: !40, size: 64, align: 64, offset: 320)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "orglength", scope: !29, file: !30, line: 42, baseType: !48, size: 64, align: 64, offset: 384)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !49, line: 73, baseType: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !18, line: 131, baseType: !19)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "thispartn", scope: !29, file: !30, line: 43, baseType: !52, size: 32, align: 32, offset: 448)
!52 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "maxpartn", scope: !29, file: !30, line: 43, baseType: !52, size: 32, align: 32, offset: 480)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "maxpartlen", scope: !29, file: !30, line: 44, baseType: !48, size: 64, align: 64, offset: 512)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "thispartoffset", scope: !29, file: !30, line: 45, baseType: !48, size: 64, align: 64, offset: 576)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "thispartlen", scope: !29, file: !30, line: 46, baseType: !48, size: 64, align: 64, offset: 640)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "headerlen", scope: !29, file: !30, line: 48, baseType: !48, size: 64, align: 64, offset: 704)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "filesize", scope: !29, file: !30, line: 49, baseType: !48, size: 64, align: 64, offset: 768)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_ar", file: !61, line: 57, size: 320, align: 64, elements: !62)
!61 = !DIFile(filename: "../lib/dpkg/ar.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!62 = !{!63, !64, !67, !71, !72}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !60, file: !61, line: 58, baseType: !40, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !60, file: !61, line: 59, baseType: !65, size: 32, align: 32, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !49, line: 62, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !18, line: 129, baseType: !52)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !60, file: !61, line: 60, baseType: !68, size: 64, align: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !69, line: 75, baseType: !70)
!69 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !18, line: 139, baseType: !19)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !60, file: !61, line: 61, baseType: !48, size: 64, align: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !60, file: !61, line: 62, baseType: !37, size: 32, align: 32, offset: 256)
!73 = !{}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!75 = distinct !DIGlobalVariable(name: "readinfobuflen", scope: !24, file: !25, line: 90, type: !76, isLocal: true, isDefinition: true, variable: i64* @read_info.readinfobuflen)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 216, baseType: !78)
!77 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!78 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!79 = !{i32 2, !"Dwarf Version", i32 4}
!80 = !{i32 2, !"Debug Info Version", i32 3}
!81 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!82 = !DILocalVariable(name: "ar", arg: 1, scope: !24, file: !25, line: 87, type: !59)
!83 = !DIExpression()
!84 = !DILocation(line: 87, column: 27, scope: !24)
!85 = !DILocalVariable(name: "ir", arg: 2, scope: !24, file: !25, line: 87, type: !28)
!86 = !DILocation(line: 87, column: 48, scope: !24)
!87 = !DILocalVariable(name: "thisilen", scope: !24, file: !25, line: 92, type: !76)
!88 = !DILocation(line: 92, column: 10, scope: !24)
!89 = !DILocalVariable(name: "templong", scope: !24, file: !25, line: 93, type: !20)
!90 = !DILocation(line: 93, column: 12, scope: !24)
!91 = !DILocalVariable(name: "magicbuf", scope: !24, file: !25, line: 94, type: !92)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 64, align: 8, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 8)
!95 = !DILocation(line: 94, column: 8, scope: !24)
!96 = !DILocalVariable(name: "rip", scope: !24, file: !25, line: 94, type: !74)
!97 = !DILocation(line: 94, column: 44, scope: !24)
!98 = !DILocalVariable(name: "partnums", scope: !24, file: !25, line: 94, type: !74)
!99 = !DILocation(line: 94, column: 50, scope: !24)
!100 = !DILocalVariable(name: "slash", scope: !24, file: !25, line: 94, type: !74)
!101 = !DILocation(line: 94, column: 61, scope: !24)
!102 = !DILocalVariable(name: "err", scope: !24, file: !25, line: 95, type: !40)
!103 = !DILocation(line: 95, column: 15, scope: !24)
!104 = !DILocalVariable(name: "arh", scope: !24, file: !25, line: 96, type: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_ar_hdr", file: !61, line: 45, size: 480, align: 8, elements: !106)
!106 = !{!107, !111, !115, !119, !120, !121, !125}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "ar_name", scope: !105, file: !61, line: 46, baseType: !108, size: 128, align: 8)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 128, align: 8, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 16)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ar_date", scope: !105, file: !61, line: 47, baseType: !112, size: 96, align: 8, offset: 128)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 96, align: 8, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 12)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "ar_uid", scope: !105, file: !61, line: 48, baseType: !116, size: 48, align: 8, offset: 224)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 48, align: 8, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 6)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "ar_gid", scope: !105, file: !61, line: 48, baseType: !116, size: 48, align: 8, offset: 272)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "ar_mode", scope: !105, file: !61, line: 49, baseType: !92, size: 64, align: 8, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "ar_size", scope: !105, file: !61, line: 50, baseType: !122, size: 80, align: 8, offset: 384)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 80, align: 8, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 10)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "ar_fmag", scope: !105, file: !61, line: 51, baseType: !126, size: 16, align: 8, offset: 464)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 16, align: 8, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 2)
!129 = !DILocation(line: 96, column: 22, scope: !24)
!130 = !DILocalVariable(name: "rc", scope: !24, file: !25, line: 97, type: !15)
!131 = !DILocation(line: 97, column: 11, scope: !24)
!132 = !DILocation(line: 99, column: 16, scope: !24)
!133 = !DILocation(line: 99, column: 20, scope: !24)
!134 = !DILocation(line: 99, column: 24, scope: !24)
!135 = !DILocation(line: 99, column: 8, scope: !24)
!136 = !DILocation(line: 99, column: 6, scope: !24)
!137 = !DILocation(line: 100, column: 7, scope: !138)
!138 = distinct !DILexicalBlock(scope: !24, file: !25, line: 100, column: 7)
!139 = !DILocation(line: 100, column: 10, scope: !138)
!140 = !DILocation(line: 100, column: 7, scope: !24)
!141 = !DILocation(line: 101, column: 9, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !25, line: 101, column: 9)
!143 = distinct !DILexicalBlock(scope: !138, file: !25, line: 100, column: 31)
!144 = !DILocation(line: 101, column: 12, scope: !142)
!145 = !DILocation(line: 101, column: 9, scope: !143)
!146 = !DILocation(line: 102, column: 15, scope: !142)
!147 = !DILocation(line: 102, column: 48, scope: !142)
!148 = !DILocation(line: 102, column: 52, scope: !142)
!149 = !DILocation(line: 102, column: 7, scope: !150)
!150 = !DILexicalBlockFile(scope: !142, file: !25, discriminator: 1)
!151 = !DILocation(line: 102, column: 7, scope: !142)
!152 = !DILocation(line: 104, column: 7, scope: !142)
!153 = !DILocation(line: 106, column: 14, scope: !154)
!154 = distinct !DILexicalBlock(scope: !24, file: !25, line: 106, column: 7)
!155 = !DILocation(line: 106, column: 7, scope: !154)
!156 = !DILocation(line: 106, column: 7, scope: !24)
!157 = !DILocation(line: 107, column: 5, scope: !154)
!158 = !DILocation(line: 109, column: 16, scope: !24)
!159 = !DILocation(line: 109, column: 20, scope: !24)
!160 = !DILocation(line: 109, column: 24, scope: !24)
!161 = !DILocation(line: 109, column: 8, scope: !24)
!162 = !DILocation(line: 109, column: 6, scope: !24)
!163 = !DILocation(line: 110, column: 7, scope: !164)
!164 = distinct !DILexicalBlock(scope: !24, file: !25, line: 110, column: 7)
!165 = !DILocation(line: 110, column: 10, scope: !164)
!166 = !DILocation(line: 110, column: 7, scope: !24)
!167 = !DILocation(line: 111, column: 15, scope: !164)
!168 = !DILocation(line: 111, column: 19, scope: !164)
!169 = !DILocation(line: 111, column: 23, scope: !164)
!170 = !DILocation(line: 111, column: 5, scope: !164)
!171 = !DILocation(line: 113, column: 3, scope: !24)
!172 = !DILocation(line: 115, column: 19, scope: !173)
!173 = distinct !DILexicalBlock(scope: !24, file: !25, line: 115, column: 7)
!174 = !DILocation(line: 115, column: 15, scope: !173)
!175 = !DILocation(line: 115, column: 7, scope: !173)
!176 = !DILocation(line: 115, column: 65, scope: !173)
!177 = !DILocation(line: 115, column: 7, scope: !24)
!178 = !DILocation(line: 116, column: 5, scope: !173)
!179 = !DILocation(line: 117, column: 7, scope: !180)
!180 = distinct !DILexicalBlock(scope: !24, file: !25, line: 117, column: 7)
!181 = !DILocation(line: 117, column: 7, scope: !24)
!182 = !DILocation(line: 118, column: 12, scope: !180)
!183 = !DILocation(line: 119, column: 12, scope: !180)
!184 = !DILocation(line: 119, column: 16, scope: !180)
!185 = !DILocation(line: 118, column: 5, scope: !186)
!186 = !DILexicalBlockFile(scope: !180, file: !25, discriminator: 1)
!187 = !DILocation(line: 118, column: 5, scope: !180)
!188 = !DILocation(line: 120, column: 38, scope: !24)
!189 = !DILocation(line: 120, column: 14, scope: !24)
!190 = !DILocation(line: 120, column: 12, scope: !24)
!191 = !DILocation(line: 121, column: 7, scope: !192)
!192 = distinct !DILexicalBlock(scope: !24, file: !25, line: 121, column: 7)
!193 = !DILocation(line: 121, column: 19, scope: !192)
!194 = !DILocation(line: 121, column: 16, scope: !192)
!195 = !DILocation(line: 121, column: 7, scope: !24)
!196 = !DILocation(line: 122, column: 22, scope: !197)
!197 = distinct !DILexicalBlock(scope: !192, file: !25, line: 121, column: 35)
!198 = !DILocation(line: 122, column: 31, scope: !197)
!199 = !DILocation(line: 122, column: 20, scope: !197)
!200 = !DILocation(line: 123, column: 28, scope: !197)
!201 = !DILocation(line: 123, column: 40, scope: !197)
!202 = !DILocation(line: 123, column: 18, scope: !197)
!203 = !DILocation(line: 123, column: 16, scope: !197)
!204 = !DILocation(line: 124, column: 3, scope: !197)
!205 = !DILocation(line: 125, column: 16, scope: !24)
!206 = !DILocation(line: 125, column: 20, scope: !24)
!207 = !DILocation(line: 125, column: 24, scope: !24)
!208 = !DILocation(line: 125, column: 37, scope: !24)
!209 = !DILocation(line: 125, column: 49, scope: !24)
!210 = !DILocation(line: 125, column: 58, scope: !24)
!211 = !DILocation(line: 125, column: 46, scope: !24)
!212 = !DILocation(line: 125, column: 8, scope: !24)
!213 = !DILocation(line: 125, column: 6, scope: !24)
!214 = !DILocation(line: 126, column: 7, scope: !215)
!215 = distinct !DILexicalBlock(scope: !24, file: !25, line: 126, column: 7)
!216 = !DILocation(line: 126, column: 23, scope: !215)
!217 = !DILocation(line: 126, column: 35, scope: !215)
!218 = !DILocation(line: 126, column: 44, scope: !215)
!219 = !DILocation(line: 126, column: 32, scope: !215)
!220 = !DILocation(line: 126, column: 10, scope: !215)
!221 = !DILocation(line: 126, column: 7, scope: !24)
!222 = !DILocation(line: 127, column: 15, scope: !215)
!223 = !DILocation(line: 127, column: 19, scope: !215)
!224 = !DILocation(line: 127, column: 23, scope: !215)
!225 = !DILocation(line: 127, column: 5, scope: !215)
!226 = !DILocation(line: 128, column: 7, scope: !227)
!227 = distinct !DILexicalBlock(scope: !24, file: !25, line: 128, column: 7)
!228 = !DILocation(line: 128, column: 16, scope: !227)
!229 = !DILocation(line: 128, column: 7, scope: !24)
!230 = !DILocalVariable(name: "c", scope: !231, file: !25, line: 129, type: !37)
!231 = distinct !DILexicalBlock(scope: !227, file: !25, line: 128, column: 21)
!232 = !DILocation(line: 129, column: 9, scope: !231)
!233 = !DILocation(line: 129, column: 25, scope: !231)
!234 = !DILocation(line: 129, column: 34, scope: !231)
!235 = !DILocation(line: 129, column: 13, scope: !231)
!236 = !DILocation(line: 131, column: 9, scope: !237)
!237 = distinct !DILexicalBlock(scope: !231, file: !25, line: 131, column: 9)
!238 = !DILocation(line: 131, column: 11, scope: !237)
!239 = !DILocation(line: 131, column: 9, scope: !231)
!240 = !DILocation(line: 132, column: 14, scope: !237)
!241 = !DILocation(line: 133, column: 14, scope: !237)
!242 = !DILocation(line: 133, column: 18, scope: !237)
!243 = !DILocation(line: 133, column: 24, scope: !237)
!244 = !DILocation(line: 132, column: 7, scope: !245)
!245 = !DILexicalBlockFile(scope: !237, file: !25, discriminator: 1)
!246 = !DILocation(line: 132, column: 7, scope: !237)
!247 = !DILocation(line: 134, column: 3, scope: !231)
!248 = !DILocation(line: 135, column: 15, scope: !24)
!249 = !DILocation(line: 135, column: 3, scope: !24)
!250 = !DILocation(line: 135, column: 25, scope: !24)
!251 = !DILocation(line: 136, column: 14, scope: !252)
!252 = distinct !DILexicalBlock(scope: !24, file: !25, line: 136, column: 7)
!253 = !DILocation(line: 136, column: 28, scope: !252)
!254 = !DILocation(line: 136, column: 7, scope: !252)
!255 = !DILocation(line: 136, column: 7, scope: !24)
!256 = !DILocation(line: 137, column: 12, scope: !252)
!257 = !DILocation(line: 137, column: 73, scope: !252)
!258 = !DILocation(line: 137, column: 77, scope: !252)
!259 = !DILocation(line: 137, column: 5, scope: !260)
!260 = !DILexicalBlockFile(scope: !252, file: !25, discriminator: 1)
!261 = !DILocation(line: 137, column: 5, scope: !252)
!262 = !DILocation(line: 139, column: 18, scope: !24)
!263 = !DILocation(line: 139, column: 22, scope: !24)
!264 = !DILocation(line: 139, column: 3, scope: !24)
!265 = !DILocation(line: 139, column: 7, scope: !24)
!266 = !DILocation(line: 139, column: 16, scope: !24)
!267 = !DILocation(line: 141, column: 8, scope: !24)
!268 = !DILocation(line: 141, column: 6, scope: !24)
!269 = !DILocation(line: 142, column: 28, scope: !24)
!270 = !DILocation(line: 142, column: 32, scope: !24)
!271 = !DILocation(line: 143, column: 42, scope: !24)
!272 = !DILocation(line: 143, column: 46, scope: !24)
!273 = !DILocation(line: 143, column: 52, scope: !24)
!274 = !DILocation(line: 143, column: 27, scope: !275)
!275 = !DILexicalBlockFile(scope: !24, file: !25, discriminator: 1)
!276 = !DILocation(line: 142, column: 9, scope: !24)
!277 = !DILocation(line: 142, column: 7, scope: !24)
!278 = !DILocation(line: 144, column: 7, scope: !279)
!279 = distinct !DILexicalBlock(scope: !24, file: !25, line: 144, column: 7)
!280 = !DILocation(line: 144, column: 7, scope: !24)
!281 = !DILocation(line: 145, column: 12, scope: !279)
!282 = !DILocation(line: 145, column: 69, scope: !279)
!283 = !DILocation(line: 145, column: 73, scope: !279)
!284 = !DILocation(line: 145, column: 79, scope: !279)
!285 = !DILocation(line: 145, column: 5, scope: !286)
!286 = !DILexicalBlockFile(scope: !279, file: !25, discriminator: 1)
!287 = !DILocation(line: 145, column: 5, scope: !279)
!288 = !DILocation(line: 146, column: 7, scope: !289)
!289 = distinct !DILexicalBlock(scope: !24, file: !25, line: 146, column: 7)
!290 = !DILocation(line: 146, column: 11, scope: !289)
!291 = !DILocation(line: 146, column: 22, scope: !289)
!292 = !DILocation(line: 146, column: 28, scope: !289)
!293 = !DILocation(line: 146, column: 7, scope: !24)
!294 = !DILocation(line: 147, column: 12, scope: !289)
!295 = !DILocation(line: 148, column: 12, scope: !289)
!296 = !DILocation(line: 148, column: 16, scope: !289)
!297 = !DILocation(line: 148, column: 22, scope: !289)
!298 = !DILocation(line: 148, column: 26, scope: !289)
!299 = !DILocation(line: 148, column: 37, scope: !289)
!300 = !DILocation(line: 148, column: 44, scope: !289)
!301 = !DILocation(line: 148, column: 48, scope: !289)
!302 = !DILocation(line: 148, column: 59, scope: !289)
!303 = !DILocation(line: 147, column: 5, scope: !304)
!304 = !DILexicalBlockFile(scope: !289, file: !25, discriminator: 1)
!305 = !DILocation(line: 147, column: 5, scope: !289)
!306 = !DILocation(line: 150, column: 42, scope: !24)
!307 = !DILocation(line: 150, column: 46, scope: !24)
!308 = !DILocation(line: 150, column: 52, scope: !24)
!309 = !DILocation(line: 150, column: 27, scope: !275)
!310 = !DILocation(line: 150, column: 17, scope: !311)
!311 = !DILexicalBlockFile(scope: !24, file: !25, discriminator: 2)
!312 = !DILocation(line: 150, column: 3, scope: !24)
!313 = !DILocation(line: 150, column: 7, scope: !24)
!314 = !DILocation(line: 150, column: 15, scope: !24)
!315 = !DILocation(line: 151, column: 42, scope: !24)
!316 = !DILocation(line: 151, column: 46, scope: !24)
!317 = !DILocation(line: 151, column: 52, scope: !24)
!318 = !DILocation(line: 151, column: 27, scope: !275)
!319 = !DILocation(line: 151, column: 17, scope: !311)
!320 = !DILocation(line: 151, column: 3, scope: !24)
!321 = !DILocation(line: 151, column: 7, scope: !24)
!322 = !DILocation(line: 151, column: 15, scope: !24)
!323 = !DILocation(line: 152, column: 41, scope: !24)
!324 = !DILocation(line: 152, column: 45, scope: !24)
!325 = !DILocation(line: 152, column: 51, scope: !24)
!326 = !DILocation(line: 152, column: 26, scope: !275)
!327 = !DILocation(line: 152, column: 16, scope: !311)
!328 = !DILocation(line: 152, column: 3, scope: !24)
!329 = !DILocation(line: 152, column: 7, scope: !24)
!330 = !DILocation(line: 152, column: 14, scope: !24)
!331 = !DILocation(line: 153, column: 14, scope: !332)
!332 = distinct !DILexicalBlock(scope: !24, file: !25, line: 153, column: 7)
!333 = !DILocation(line: 153, column: 18, scope: !332)
!334 = !DILocation(line: 153, column: 7, scope: !332)
!335 = !DILocation(line: 153, column: 26, scope: !332)
!336 = !DILocation(line: 153, column: 32, scope: !332)
!337 = !DILocation(line: 154, column: 14, scope: !332)
!338 = !DILocation(line: 154, column: 18, scope: !332)
!339 = !DILocation(line: 154, column: 7, scope: !332)
!340 = !DILocation(line: 154, column: 46, scope: !332)
!341 = !DILocation(line: 153, column: 7, scope: !275)
!342 = !DILocation(line: 155, column: 12, scope: !332)
!343 = !DILocation(line: 156, column: 12, scope: !332)
!344 = !DILocation(line: 156, column: 16, scope: !332)
!345 = !DILocation(line: 156, column: 22, scope: !332)
!346 = !DILocation(line: 156, column: 26, scope: !332)
!347 = !DILocation(line: 155, column: 5, scope: !348)
!348 = !DILexicalBlockFile(scope: !332, file: !25, discriminator: 1)
!349 = !DILocation(line: 155, column: 5, scope: !332)
!350 = !DILocation(line: 158, column: 47, scope: !24)
!351 = !DILocation(line: 158, column: 51, scope: !24)
!352 = !DILocation(line: 158, column: 57, scope: !24)
!353 = !DILocation(line: 158, column: 32, scope: !275)
!354 = !DILocation(line: 159, column: 32, scope: !24)
!355 = !DILocation(line: 159, column: 36, scope: !24)
!356 = !DILocation(line: 159, column: 42, scope: !24)
!357 = !DILocation(line: 158, column: 19, scope: !311)
!358 = !DILocation(line: 158, column: 3, scope: !24)
!359 = !DILocation(line: 158, column: 7, scope: !24)
!360 = !DILocation(line: 158, column: 17, scope: !24)
!361 = !DILocation(line: 160, column: 48, scope: !24)
!362 = !DILocation(line: 160, column: 52, scope: !24)
!363 = !DILocation(line: 160, column: 58, scope: !24)
!364 = !DILocation(line: 160, column: 33, scope: !275)
!365 = !DILocation(line: 161, column: 33, scope: !24)
!366 = !DILocation(line: 161, column: 37, scope: !24)
!367 = !DILocation(line: 161, column: 43, scope: !24)
!368 = !DILocation(line: 160, column: 20, scope: !311)
!369 = !DILocation(line: 160, column: 3, scope: !24)
!370 = !DILocation(line: 160, column: 7, scope: !24)
!371 = !DILocation(line: 160, column: 18, scope: !24)
!372 = !DILocation(line: 163, column: 29, scope: !24)
!373 = !DILocation(line: 163, column: 33, scope: !24)
!374 = !DILocation(line: 163, column: 39, scope: !24)
!375 = !DILocation(line: 163, column: 14, scope: !275)
!376 = !DILocation(line: 163, column: 12, scope: !24)
!377 = !DILocation(line: 164, column: 17, scope: !24)
!378 = !DILocation(line: 164, column: 10, scope: !24)
!379 = !DILocation(line: 164, column: 8, scope: !24)
!380 = !DILocation(line: 165, column: 8, scope: !381)
!381 = distinct !DILexicalBlock(scope: !24, file: !25, line: 165, column: 7)
!382 = !DILocation(line: 165, column: 7, scope: !24)
!383 = !DILocation(line: 166, column: 12, scope: !381)
!384 = !DILocation(line: 166, column: 89, scope: !381)
!385 = !DILocation(line: 166, column: 93, scope: !381)
!386 = !DILocation(line: 166, column: 5, scope: !387)
!387 = !DILexicalBlockFile(scope: !381, file: !25, discriminator: 1)
!388 = !DILocation(line: 166, column: 5, scope: !381)
!389 = !DILocation(line: 167, column: 9, scope: !24)
!390 = !DILocation(line: 167, column: 12, scope: !24)
!391 = !DILocation(line: 169, column: 27, scope: !24)
!392 = !DILocation(line: 169, column: 34, scope: !24)
!393 = !DILocation(line: 169, column: 38, scope: !24)
!394 = !DILocation(line: 169, column: 44, scope: !24)
!395 = !DILocation(line: 169, column: 14, scope: !275)
!396 = !DILocation(line: 169, column: 12, scope: !24)
!397 = !DILocation(line: 170, column: 7, scope: !398)
!398 = distinct !DILexicalBlock(scope: !24, file: !25, line: 170, column: 7)
!399 = !DILocation(line: 170, column: 16, scope: !398)
!400 = !DILocation(line: 170, column: 21, scope: !398)
!401 = !DILocation(line: 170, column: 24, scope: !402)
!402 = !DILexicalBlockFile(scope: !398, file: !25, discriminator: 1)
!403 = !DILocation(line: 170, column: 33, scope: !402)
!404 = !DILocation(line: 170, column: 7, scope: !402)
!405 = !DILocation(line: 171, column: 12, scope: !398)
!406 = !DILocation(line: 171, column: 79, scope: !398)
!407 = !DILocation(line: 171, column: 83, scope: !398)
!408 = !DILocation(line: 171, column: 5, scope: !402)
!409 = !DILocation(line: 171, column: 5, scope: !398)
!410 = !DILocation(line: 172, column: 17, scope: !24)
!411 = !DILocation(line: 172, column: 3, scope: !24)
!412 = !DILocation(line: 172, column: 7, scope: !24)
!413 = !DILocation(line: 172, column: 15, scope: !24)
!414 = !DILocation(line: 173, column: 27, scope: !24)
!415 = !DILocation(line: 173, column: 37, scope: !24)
!416 = !DILocation(line: 173, column: 41, scope: !24)
!417 = !DILocation(line: 173, column: 47, scope: !24)
!418 = !DILocation(line: 173, column: 14, scope: !275)
!419 = !DILocation(line: 173, column: 12, scope: !24)
!420 = !DILocation(line: 174, column: 7, scope: !421)
!421 = distinct !DILexicalBlock(scope: !24, file: !25, line: 174, column: 7)
!422 = !DILocation(line: 174, column: 16, scope: !421)
!423 = !DILocation(line: 174, column: 21, scope: !421)
!424 = !DILocation(line: 174, column: 24, scope: !425)
!425 = !DILexicalBlockFile(scope: !421, file: !25, discriminator: 1)
!426 = !DILocation(line: 174, column: 35, scope: !425)
!427 = !DILocation(line: 174, column: 39, scope: !425)
!428 = !DILocation(line: 174, column: 33, scope: !425)
!429 = !DILocation(line: 174, column: 7, scope: !425)
!430 = !DILocation(line: 175, column: 12, scope: !421)
!431 = !DILocation(line: 175, column: 75, scope: !421)
!432 = !DILocation(line: 175, column: 79, scope: !421)
!433 = !DILocation(line: 175, column: 5, scope: !425)
!434 = !DILocation(line: 175, column: 5, scope: !421)
!435 = !DILocation(line: 176, column: 18, scope: !24)
!436 = !DILocation(line: 176, column: 3, scope: !24)
!437 = !DILocation(line: 176, column: 7, scope: !24)
!438 = !DILocation(line: 176, column: 16, scope: !24)
!439 = !DILocation(line: 180, column: 8, scope: !440)
!440 = distinct !DILexicalBlock(scope: !24, file: !25, line: 180, column: 7)
!441 = !DILocation(line: 180, column: 7, scope: !440)
!442 = !DILocation(line: 180, column: 12, scope: !440)
!443 = !DILocation(line: 180, column: 7, scope: !24)
!444 = !DILocation(line: 181, column: 41, scope: !440)
!445 = !DILocation(line: 181, column: 45, scope: !440)
!446 = !DILocation(line: 181, column: 51, scope: !440)
!447 = !DILocation(line: 181, column: 26, scope: !448)
!448 = !DILexicalBlockFile(scope: !440, file: !25, discriminator: 1)
!449 = !DILocation(line: 181, column: 16, scope: !450)
!450 = !DILexicalBlockFile(scope: !440, file: !25, discriminator: 2)
!451 = !DILocation(line: 181, column: 5, scope: !440)
!452 = !DILocation(line: 181, column: 9, scope: !440)
!453 = !DILocation(line: 181, column: 14, scope: !440)
!454 = !DILocation(line: 183, column: 5, scope: !440)
!455 = !DILocation(line: 183, column: 9, scope: !440)
!456 = !DILocation(line: 183, column: 14, scope: !440)
!457 = !DILocation(line: 185, column: 16, scope: !24)
!458 = !DILocation(line: 185, column: 20, scope: !24)
!459 = !DILocation(line: 185, column: 24, scope: !24)
!460 = !DILocation(line: 185, column: 8, scope: !24)
!461 = !DILocation(line: 185, column: 6, scope: !24)
!462 = !DILocation(line: 186, column: 7, scope: !463)
!463 = distinct !DILexicalBlock(scope: !24, file: !25, line: 186, column: 7)
!464 = !DILocation(line: 186, column: 10, scope: !463)
!465 = !DILocation(line: 186, column: 7, scope: !24)
!466 = !DILocation(line: 187, column: 15, scope: !463)
!467 = !DILocation(line: 187, column: 19, scope: !463)
!468 = !DILocation(line: 187, column: 23, scope: !463)
!469 = !DILocation(line: 187, column: 5, scope: !463)
!470 = !DILocation(line: 189, column: 3, scope: !24)
!471 = !DILocation(line: 191, column: 7, scope: !472)
!472 = distinct !DILexicalBlock(scope: !24, file: !25, line: 191, column: 7)
!473 = !DILocation(line: 191, column: 7, scope: !24)
!474 = !DILocation(line: 192, column: 12, scope: !472)
!475 = !DILocation(line: 193, column: 12, scope: !472)
!476 = !DILocation(line: 193, column: 16, scope: !472)
!477 = !DILocation(line: 192, column: 5, scope: !478)
!478 = !DILexicalBlockFile(scope: !472, file: !25, discriminator: 1)
!479 = !DILocation(line: 192, column: 5, scope: !472)
!480 = !DILocation(line: 194, column: 19, scope: !481)
!481 = distinct !DILexicalBlock(scope: !24, file: !25, line: 194, column: 7)
!482 = !DILocation(line: 194, column: 15, scope: !481)
!483 = !DILocation(line: 194, column: 7, scope: !481)
!484 = !DILocation(line: 194, column: 7, scope: !24)
!485 = !DILocation(line: 195, column: 12, scope: !481)
!486 = !DILocation(line: 196, column: 12, scope: !481)
!487 = !DILocation(line: 196, column: 16, scope: !481)
!488 = !DILocation(line: 195, column: 5, scope: !489)
!489 = !DILexicalBlockFile(scope: !481, file: !25, discriminator: 1)
!490 = !DILocation(line: 195, column: 5, scope: !481)
!491 = !DILocation(line: 198, column: 45, scope: !24)
!492 = !DILocation(line: 198, column: 21, scope: !24)
!493 = !DILocation(line: 198, column: 3, scope: !24)
!494 = !DILocation(line: 198, column: 7, scope: !24)
!495 = !DILocation(line: 198, column: 19, scope: !24)
!496 = !DILocation(line: 199, column: 24, scope: !24)
!497 = !DILocation(line: 199, column: 28, scope: !24)
!498 = !DILocation(line: 199, column: 37, scope: !24)
!499 = !DILocation(line: 199, column: 23, scope: !24)
!500 = !DILocation(line: 199, column: 41, scope: !24)
!501 = !DILocation(line: 199, column: 45, scope: !24)
!502 = !DILocation(line: 199, column: 40, scope: !24)
!503 = !DILocation(line: 199, column: 3, scope: !24)
!504 = !DILocation(line: 199, column: 7, scope: !24)
!505 = !DILocation(line: 199, column: 21, scope: !24)
!506 = !DILocation(line: 201, column: 7, scope: !507)
!507 = distinct !DILexicalBlock(scope: !24, file: !25, line: 201, column: 7)
!508 = !DILocation(line: 201, column: 11, scope: !507)
!509 = !DILocation(line: 201, column: 24, scope: !507)
!510 = !DILocation(line: 201, column: 28, scope: !507)
!511 = !DILocation(line: 201, column: 38, scope: !507)
!512 = !DILocation(line: 201, column: 42, scope: !507)
!513 = !DILocation(line: 201, column: 37, scope: !507)
!514 = !DILocation(line: 201, column: 52, scope: !507)
!515 = !DILocation(line: 201, column: 56, scope: !507)
!516 = !DILocation(line: 201, column: 60, scope: !507)
!517 = !DILocation(line: 201, column: 55, scope: !507)
!518 = !DILocation(line: 201, column: 20, scope: !507)
!519 = !DILocation(line: 201, column: 7, scope: !24)
!520 = !DILocation(line: 202, column: 12, scope: !507)
!521 = !DILocation(line: 203, column: 12, scope: !507)
!522 = !DILocation(line: 203, column: 16, scope: !507)
!523 = !DILocation(line: 202, column: 5, scope: !524)
!524 = !DILexicalBlockFile(scope: !507, file: !25, discriminator: 1)
!525 = !DILocation(line: 202, column: 5, scope: !507)
!526 = !DILocation(line: 204, column: 7, scope: !527)
!527 = distinct !DILexicalBlock(scope: !24, file: !25, line: 204, column: 7)
!528 = !DILocation(line: 204, column: 11, scope: !527)
!529 = !DILocation(line: 205, column: 8, scope: !527)
!530 = !DILocation(line: 205, column: 12, scope: !527)
!531 = !DILocation(line: 205, column: 25, scope: !527)
!532 = !DILocation(line: 205, column: 29, scope: !527)
!533 = !DILocation(line: 205, column: 22, scope: !527)
!534 = !DILocation(line: 206, column: 10, scope: !527)
!535 = !DILocation(line: 206, column: 14, scope: !527)
!536 = !DILocation(line: 206, column: 26, scope: !527)
!537 = !DILocation(line: 206, column: 30, scope: !527)
!538 = !DILocation(line: 206, column: 24, scope: !527)
!539 = !DILocation(line: 205, column: 8, scope: !540)
!540 = !DILexicalBlockFile(scope: !527, file: !25, discriminator: 1)
!541 = !DILocation(line: 206, column: 47, scope: !540)
!542 = !DILocation(line: 206, column: 51, scope: !540)
!543 = !DILocation(line: 205, column: 8, scope: !544)
!544 = !DILexicalBlockFile(scope: !527, file: !25, discriminator: 2)
!545 = !DILocation(line: 205, column: 8, scope: !546)
!546 = !DILexicalBlockFile(scope: !527, file: !25, discriminator: 3)
!547 = !DILocation(line: 204, column: 23, scope: !540)
!548 = !DILocation(line: 204, column: 7, scope: !540)
!549 = !DILocation(line: 207, column: 12, scope: !527)
!550 = !DILocation(line: 208, column: 12, scope: !527)
!551 = !DILocation(line: 208, column: 16, scope: !527)
!552 = !DILocation(line: 207, column: 5, scope: !540)
!553 = !DILocation(line: 207, column: 5, scope: !527)
!554 = !DILocation(line: 211, column: 33, scope: !24)
!555 = !DILocation(line: 211, column: 31, scope: !24)
!556 = !DILocation(line: 211, column: 45, scope: !24)
!557 = !DILocation(line: 211, column: 54, scope: !24)
!558 = !DILocation(line: 211, column: 42, scope: !24)
!559 = !DILocation(line: 211, column: 59, scope: !24)
!560 = !DILocation(line: 212, column: 33, scope: !24)
!561 = !DILocation(line: 212, column: 37, scope: !24)
!562 = !DILocation(line: 212, column: 31, scope: !24)
!563 = !DILocation(line: 212, column: 52, scope: !24)
!564 = !DILocation(line: 212, column: 56, scope: !24)
!565 = !DILocation(line: 212, column: 68, scope: !24)
!566 = !DILocation(line: 212, column: 49, scope: !24)
!567 = !DILocation(line: 210, column: 3, scope: !24)
!568 = !DILocation(line: 210, column: 7, scope: !24)
!569 = !DILocation(line: 210, column: 16, scope: !24)
!570 = !DILocation(line: 214, column: 6, scope: !571)
!571 = distinct !DILexicalBlock(scope: !24, file: !25, line: 214, column: 6)
!572 = !DILocation(line: 214, column: 10, scope: !571)
!573 = !DILocation(line: 214, column: 9, scope: !571)
!574 = !DILocation(line: 214, column: 20, scope: !571)
!575 = !DILocation(line: 214, column: 6, scope: !24)
!576 = !DILocation(line: 217, column: 9, scope: !577)
!577 = distinct !DILexicalBlock(scope: !578, file: !25, line: 217, column: 9)
!578 = distinct !DILexicalBlock(scope: !571, file: !25, line: 214, column: 25)
!579 = !DILocation(line: 217, column: 13, scope: !577)
!580 = !DILocation(line: 217, column: 20, scope: !577)
!581 = !DILocation(line: 217, column: 24, scope: !577)
!582 = !DILocation(line: 217, column: 18, scope: !577)
!583 = !DILocation(line: 217, column: 9, scope: !578)
!584 = !DILocation(line: 218, column: 14, scope: !577)
!585 = !DILocation(line: 218, column: 63, scope: !577)
!586 = !DILocation(line: 218, column: 67, scope: !577)
!587 = !DILocation(line: 218, column: 7, scope: !588)
!588 = !DILexicalBlockFile(scope: !577, file: !25, discriminator: 1)
!589 = !DILocation(line: 218, column: 7, scope: !577)
!590 = !DILocation(line: 219, column: 3, scope: !578)
!591 = !DILocation(line: 222, column: 33, scope: !24)
!592 = !DILocation(line: 222, column: 31, scope: !24)
!593 = !DILocation(line: 222, column: 45, scope: !24)
!594 = !DILocation(line: 222, column: 54, scope: !24)
!595 = !DILocation(line: 222, column: 42, scope: !24)
!596 = !DILocation(line: 222, column: 59, scope: !24)
!597 = !DILocation(line: 221, column: 3, scope: !24)
!598 = !DILocation(line: 221, column: 7, scope: !24)
!599 = !DILocation(line: 221, column: 17, scope: !24)
!600 = !DILocation(line: 224, column: 10, scope: !24)
!601 = !DILocation(line: 224, column: 3, scope: !24)
!602 = !DILocation(line: 225, column: 1, scope: !24)
!603 = distinct !DISubprogram(name: "nextline", scope: !25, file: !25, line: 63, type: !604, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !73)
!604 = !DISubroutineType(types: !605)
!605 = !{!74, !606, !40, !40}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!607 = !DILocalVariable(name: "ripp", arg: 1, scope: !603, file: !25, line: 63, type: !606)
!608 = !DILocation(line: 63, column: 30, scope: !603)
!609 = !DILocalVariable(name: "fn", arg: 2, scope: !603, file: !25, line: 63, type: !40)
!610 = !DILocation(line: 63, column: 48, scope: !603)
!611 = !DILocalVariable(name: "what", arg: 3, scope: !603, file: !25, line: 63, type: !40)
!612 = !DILocation(line: 63, column: 64, scope: !603)
!613 = !DILocalVariable(name: "newline", scope: !603, file: !25, line: 64, type: !74)
!614 = !DILocation(line: 64, column: 9, scope: !603)
!615 = !DILocalVariable(name: "rip", scope: !603, file: !25, line: 64, type: !74)
!616 = !DILocation(line: 64, column: 19, scope: !603)
!617 = !DILocation(line: 66, column: 9, scope: !603)
!618 = !DILocation(line: 66, column: 8, scope: !603)
!619 = !DILocation(line: 66, column: 6, scope: !603)
!620 = !DILocation(line: 67, column: 8, scope: !621)
!621 = distinct !DILexicalBlock(scope: !603, file: !25, line: 67, column: 7)
!622 = !DILocation(line: 67, column: 7, scope: !603)
!623 = !DILocation(line: 68, column: 12, scope: !621)
!624 = !DILocation(line: 68, column: 66, scope: !621)
!625 = !DILocation(line: 68, column: 70, scope: !621)
!626 = !DILocation(line: 68, column: 5, scope: !627)
!627 = !DILexicalBlockFile(scope: !621, file: !25, discriminator: 1)
!628 = !DILocation(line: 68, column: 5, scope: !621)
!629 = !DILocation(line: 69, column: 19, scope: !603)
!630 = !DILocation(line: 69, column: 12, scope: !603)
!631 = !DILocation(line: 69, column: 10, scope: !603)
!632 = !DILocation(line: 70, column: 8, scope: !633)
!633 = distinct !DILexicalBlock(scope: !603, file: !25, line: 70, column: 7)
!634 = !DILocation(line: 70, column: 7, scope: !603)
!635 = !DILocation(line: 71, column: 12, scope: !633)
!636 = !DILocation(line: 72, column: 12, scope: !633)
!637 = !DILocation(line: 72, column: 16, scope: !633)
!638 = !DILocation(line: 71, column: 5, scope: !639)
!639 = !DILexicalBlockFile(scope: !633, file: !25, discriminator: 1)
!640 = !DILocation(line: 71, column: 5, scope: !633)
!641 = !DILocation(line: 73, column: 10, scope: !603)
!642 = !DILocation(line: 73, column: 17, scope: !603)
!643 = !DILocation(line: 73, column: 4, scope: !603)
!644 = !DILocation(line: 73, column: 8, scope: !603)
!645 = !DILocation(line: 74, column: 3, scope: !603)
!646 = !DILocation(line: 74, column: 10, scope: !647)
!647 = !DILexicalBlockFile(scope: !603, file: !25, discriminator: 1)
!648 = !DILocation(line: 74, column: 20, scope: !647)
!649 = !DILocation(line: 74, column: 18, scope: !647)
!650 = !DILocation(line: 74, column: 24, scope: !647)
!651 = !DILocation(line: 74, column: 37, scope: !652)
!652 = !DILexicalBlockFile(scope: !603, file: !25, discriminator: 2)
!653 = !DILocation(line: 74, column: 27, scope: !652)
!654 = !DILocation(line: 74, column: 3, scope: !655)
!655 = !DILexicalBlockFile(scope: !603, file: !25, discriminator: 3)
!656 = !DILocation(line: 75, column: 12, scope: !603)
!657 = !DILocation(line: 74, column: 3, scope: !658)
!658 = !DILexicalBlockFile(scope: !603, file: !25, discriminator: 4)
!659 = distinct !{!659, !645}
!660 = !DILocation(line: 76, column: 4, scope: !603)
!661 = !DILocation(line: 76, column: 12, scope: !603)
!662 = !DILocation(line: 77, column: 10, scope: !603)
!663 = !DILocation(line: 77, column: 3, scope: !603)
!664 = distinct !DISubprogram(name: "parse_intmax", scope: !25, file: !25, line: 48, type: !665, isLocal: true, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !73)
!665 = !DISubroutineType(types: !666)
!666 = !{!20, !40, !40, !40}
!667 = !DILocalVariable(name: "value", arg: 1, scope: !664, file: !25, line: 48, type: !40)
!668 = !DILocation(line: 48, column: 26, scope: !664)
!669 = !DILocalVariable(name: "fn", arg: 2, scope: !664, file: !25, line: 48, type: !40)
!670 = !DILocation(line: 48, column: 45, scope: !664)
!671 = !DILocalVariable(name: "what", arg: 3, scope: !664, file: !25, line: 48, type: !40)
!672 = !DILocation(line: 48, column: 61, scope: !664)
!673 = !DILocalVariable(name: "r", scope: !664, file: !25, line: 50, type: !20)
!674 = !DILocation(line: 50, column: 12, scope: !664)
!675 = !DILocalVariable(name: "endp", scope: !664, file: !25, line: 51, type: !74)
!676 = !DILocation(line: 51, column: 9, scope: !664)
!677 = !DILocation(line: 53, column: 4, scope: !664)
!678 = !DILocation(line: 53, column: 8, scope: !664)
!679 = !DILocation(line: 54, column: 17, scope: !664)
!680 = !DILocation(line: 54, column: 7, scope: !664)
!681 = !DILocation(line: 54, column: 5, scope: !664)
!682 = !DILocation(line: 55, column: 7, scope: !683)
!683 = distinct !DILexicalBlock(scope: !664, file: !25, line: 55, column: 7)
!684 = !DILocation(line: 55, column: 16, scope: !683)
!685 = !DILocation(line: 55, column: 13, scope: !683)
!686 = !DILocation(line: 55, column: 21, scope: !683)
!687 = !DILocation(line: 55, column: 25, scope: !688)
!688 = !DILexicalBlockFile(scope: !683, file: !25, discriminator: 1)
!689 = !DILocation(line: 55, column: 24, scope: !688)
!690 = !DILocation(line: 55, column: 7, scope: !688)
!691 = !DILocation(line: 56, column: 12, scope: !683)
!692 = !DILocation(line: 57, column: 12, scope: !683)
!693 = !DILocation(line: 57, column: 17, scope: !683)
!694 = !DILocation(line: 57, column: 16, scope: !683)
!695 = !DILocation(line: 57, column: 23, scope: !683)
!696 = !DILocation(line: 56, column: 5, scope: !688)
!697 = !DILocation(line: 56, column: 5, scope: !683)
!698 = !DILocation(line: 58, column: 7, scope: !699)
!699 = distinct !DILexicalBlock(scope: !664, file: !25, line: 58, column: 7)
!700 = !DILocation(line: 58, column: 9, scope: !699)
!701 = !DILocation(line: 58, column: 13, scope: !699)
!702 = !DILocation(line: 58, column: 17, scope: !703)
!703 = !DILexicalBlockFile(scope: !699, file: !25, discriminator: 1)
!704 = !DILocation(line: 58, column: 16, scope: !703)
!705 = !DILocation(line: 58, column: 21, scope: !703)
!706 = !DILocation(line: 58, column: 7, scope: !703)
!707 = !DILocation(line: 59, column: 12, scope: !699)
!708 = !DILocation(line: 59, column: 73, scope: !699)
!709 = !DILocation(line: 59, column: 77, scope: !699)
!710 = !DILocation(line: 59, column: 5, scope: !703)
!711 = !DILocation(line: 59, column: 5, scope: !699)
!712 = !DILocation(line: 60, column: 10, scope: !664)
!713 = !DILocation(line: 60, column: 3, scope: !664)
!714 = distinct !DISubprogram(name: "mustgetpartinfo", scope: !25, file: !25, line: 227, type: !715, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !73)
!715 = !DISubroutineType(types: !716)
!716 = !{null, !40, !28}
!717 = !DILocalVariable(name: "filename", arg: 1, scope: !714, file: !25, line: 227, type: !40)
!718 = !DILocation(line: 227, column: 34, scope: !714)
!719 = !DILocalVariable(name: "ri", arg: 2, scope: !714, file: !25, line: 227, type: !28)
!720 = !DILocation(line: 227, column: 61, scope: !714)
!721 = !DILocalVariable(name: "part", scope: !714, file: !25, line: 228, type: !59)
!722 = !DILocation(line: 228, column: 19, scope: !714)
!723 = !DILocation(line: 230, column: 23, scope: !714)
!724 = !DILocation(line: 230, column: 10, scope: !714)
!725 = !DILocation(line: 230, column: 8, scope: !714)
!726 = !DILocation(line: 231, column: 8, scope: !727)
!727 = distinct !DILexicalBlock(scope: !714, file: !25, line: 231, column: 7)
!728 = !DILocation(line: 231, column: 7, scope: !714)
!729 = !DILocation(line: 232, column: 13, scope: !727)
!730 = !DILocation(line: 232, column: 64, scope: !727)
!731 = !DILocation(line: 232, column: 5, scope: !732)
!732 = !DILexicalBlockFile(scope: !727, file: !25, discriminator: 1)
!733 = !DILocation(line: 232, column: 5, scope: !727)
!734 = !DILocation(line: 233, column: 18, scope: !735)
!735 = distinct !DILexicalBlock(scope: !714, file: !25, line: 233, column: 7)
!736 = !DILocation(line: 233, column: 24, scope: !735)
!737 = !DILocation(line: 233, column: 8, scope: !735)
!738 = !DILocation(line: 233, column: 7, scope: !714)
!739 = !DILocation(line: 234, column: 13, scope: !735)
!740 = !DILocation(line: 234, column: 62, scope: !735)
!741 = !DILocation(line: 234, column: 5, scope: !742)
!742 = !DILexicalBlockFile(scope: !735, file: !25, discriminator: 1)
!743 = !DILocation(line: 234, column: 5, scope: !735)
!744 = !DILocation(line: 235, column: 17, scope: !714)
!745 = !DILocation(line: 235, column: 3, scope: !714)
!746 = !DILocation(line: 236, column: 1, scope: !714)
!747 = distinct !DISubprogram(name: "print_info", scope: !25, file: !25, line: 238, type: !748, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !73)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !750}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64, align: 64)
!751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!752 = !DILocalVariable(name: "pi", arg: 1, scope: !747, file: !25, line: 238, type: !750)
!753 = !DILocation(line: 238, column: 40, scope: !747)
!754 = !DILocation(line: 239, column: 10, scope: !747)
!755 = !DILocation(line: 251, column: 10, scope: !747)
!756 = !DILocation(line: 251, column: 14, scope: !747)
!757 = !DILocation(line: 252, column: 10, scope: !747)
!758 = !DILocation(line: 252, column: 14, scope: !747)
!759 = !DILocation(line: 252, column: 25, scope: !747)
!760 = !DILocation(line: 252, column: 32, scope: !747)
!761 = !DILocation(line: 252, column: 36, scope: !747)
!762 = !DILocation(line: 252, column: 47, scope: !747)
!763 = !DILocation(line: 253, column: 10, scope: !747)
!764 = !DILocation(line: 253, column: 14, scope: !747)
!765 = !DILocation(line: 254, column: 10, scope: !747)
!766 = !DILocation(line: 254, column: 14, scope: !747)
!767 = !DILocation(line: 255, column: 10, scope: !747)
!768 = !DILocation(line: 255, column: 14, scope: !747)
!769 = !DILocation(line: 255, column: 21, scope: !770)
!770 = !DILexicalBlockFile(scope: !747, file: !25, discriminator: 1)
!771 = !DILocation(line: 255, column: 25, scope: !770)
!772 = !DILocation(line: 255, column: 10, scope: !770)
!773 = !DILocation(line: 255, column: 31, scope: !774)
!774 = !DILexicalBlockFile(scope: !747, file: !25, discriminator: 2)
!775 = !DILocation(line: 255, column: 10, scope: !774)
!776 = !DILocation(line: 255, column: 10, scope: !777)
!777 = !DILexicalBlockFile(scope: !747, file: !25, discriminator: 3)
!778 = !DILocation(line: 256, column: 10, scope: !747)
!779 = !DILocation(line: 256, column: 14, scope: !747)
!780 = !DILocation(line: 257, column: 20, scope: !747)
!781 = !DILocation(line: 257, column: 24, scope: !747)
!782 = !DILocation(line: 258, column: 20, scope: !747)
!783 = !DILocation(line: 258, column: 24, scope: !747)
!784 = !DILocation(line: 259, column: 10, scope: !747)
!785 = !DILocation(line: 259, column: 14, scope: !747)
!786 = !DILocation(line: 260, column: 10, scope: !747)
!787 = !DILocation(line: 260, column: 14, scope: !747)
!788 = !DILocation(line: 261, column: 20, scope: !747)
!789 = !DILocation(line: 261, column: 24, scope: !747)
!790 = !DILocation(line: 262, column: 20, scope: !747)
!791 = !DILocation(line: 262, column: 24, scope: !747)
!792 = !DILocation(line: 263, column: 20, scope: !747)
!793 = !DILocation(line: 263, column: 24, scope: !747)
!794 = !DILocation(line: 239, column: 3, scope: !770)
!795 = !DILocation(line: 264, column: 1, scope: !747)
!796 = distinct !DISubprogram(name: "pgettext_aux", scope: !797, file: !797, line: 136, type: !798, isLocal: true, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !73)
!797 = !DIFile(filename: "../lib/compat/gettext.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!798 = !DISubroutineType(types: !799)
!799 = !{!40, !40, !40, !40, !37}
!800 = !DILocalVariable(name: "domain", arg: 1, scope: !796, file: !797, line: 136, type: !40)
!801 = !DILocation(line: 136, column: 27, scope: !796)
!802 = !DILocalVariable(name: "msg_ctxt_id", arg: 2, scope: !796, file: !797, line: 137, type: !40)
!803 = !DILocation(line: 137, column: 20, scope: !796)
!804 = !DILocalVariable(name: "msgid", arg: 3, scope: !796, file: !797, line: 137, type: !40)
!805 = !DILocation(line: 137, column: 45, scope: !796)
!806 = !DILocalVariable(name: "category", arg: 4, scope: !796, file: !797, line: 138, type: !37)
!807 = !DILocation(line: 138, column: 12, scope: !796)
!808 = !DILocalVariable(name: "translation", scope: !796, file: !797, line: 140, type: !40)
!809 = !DILocation(line: 140, column: 15, scope: !796)
!810 = !DILocation(line: 140, column: 40, scope: !796)
!811 = !DILocation(line: 140, column: 48, scope: !796)
!812 = !DILocation(line: 140, column: 61, scope: !796)
!813 = !DILocation(line: 140, column: 29, scope: !796)
!814 = !DILocation(line: 141, column: 7, scope: !815)
!815 = distinct !DILexicalBlock(scope: !796, file: !797, line: 141, column: 7)
!816 = !DILocation(line: 141, column: 22, scope: !815)
!817 = !DILocation(line: 141, column: 19, scope: !815)
!818 = !DILocation(line: 141, column: 7, scope: !796)
!819 = !DILocation(line: 142, column: 12, scope: !815)
!820 = !DILocation(line: 142, column: 5, scope: !815)
!821 = !DILocation(line: 144, column: 12, scope: !815)
!822 = !DILocation(line: 144, column: 5, scope: !815)
!823 = !DILocation(line: 145, column: 1, scope: !796)
!824 = distinct !DISubprogram(name: "do_info", scope: !25, file: !25, line: 267, type: !825, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !73)
!825 = !DISubroutineType(types: !826)
!826 = !{!37, !827}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64, align: 64)
!828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!829 = !DILocalVariable(name: "argv", arg: 1, scope: !824, file: !25, line: 267, type: !827)
!830 = !DILocation(line: 267, column: 28, scope: !824)
!831 = !DILocalVariable(name: "thisarg", scope: !824, file: !25, line: 269, type: !40)
!832 = !DILocation(line: 269, column: 15, scope: !824)
!833 = !DILocalVariable(name: "pi", scope: !824, file: !25, line: 270, type: !28)
!834 = !DILocation(line: 270, column: 20, scope: !824)
!835 = !DILocalVariable(name: "ps", scope: !824, file: !25, line: 270, type: !29)
!836 = !DILocation(line: 270, column: 24, scope: !824)
!837 = !DILocalVariable(name: "part", scope: !824, file: !25, line: 271, type: !59)
!838 = !DILocation(line: 271, column: 19, scope: !824)
!839 = !DILocation(line: 273, column: 9, scope: !840)
!840 = distinct !DILexicalBlock(scope: !824, file: !25, line: 273, column: 7)
!841 = !DILocation(line: 273, column: 8, scope: !840)
!842 = !DILocation(line: 273, column: 7, scope: !824)
!843 = !DILocation(line: 274, column: 14, scope: !840)
!844 = !DILocation(line: 275, column: 14, scope: !840)
!845 = !DILocation(line: 275, column: 25, scope: !840)
!846 = !DILocation(line: 274, column: 5, scope: !847)
!847 = !DILexicalBlockFile(scope: !840, file: !25, discriminator: 1)
!848 = !DILocation(line: 274, column: 5, scope: !840)
!849 = !DILocation(line: 277, column: 3, scope: !824)
!850 = !DILocation(line: 277, column: 25, scope: !851)
!851 = !DILexicalBlockFile(scope: !824, file: !25, discriminator: 1)
!852 = !DILocation(line: 277, column: 20, scope: !851)
!853 = !DILocation(line: 277, column: 18, scope: !851)
!854 = !DILocation(line: 277, column: 3, scope: !851)
!855 = !DILocation(line: 278, column: 25, scope: !856)
!856 = distinct !DILexicalBlock(scope: !824, file: !25, line: 277, column: 30)
!857 = !DILocation(line: 278, column: 12, scope: !856)
!858 = !DILocation(line: 278, column: 10, scope: !856)
!859 = !DILocation(line: 279, column: 10, scope: !860)
!860 = distinct !DILexicalBlock(scope: !856, file: !25, line: 279, column: 9)
!861 = !DILocation(line: 279, column: 9, scope: !856)
!862 = !DILocation(line: 280, column: 15, scope: !860)
!863 = !DILocation(line: 280, column: 66, scope: !860)
!864 = !DILocation(line: 280, column: 7, scope: !865)
!865 = !DILexicalBlockFile(scope: !860, file: !25, discriminator: 1)
!866 = !DILocation(line: 280, column: 7, scope: !860)
!867 = !DILocation(line: 281, column: 20, scope: !856)
!868 = !DILocation(line: 281, column: 10, scope: !856)
!869 = !DILocation(line: 281, column: 8, scope: !856)
!870 = !DILocation(line: 282, column: 19, scope: !856)
!871 = !DILocation(line: 282, column: 5, scope: !856)
!872 = !DILocation(line: 283, column: 9, scope: !873)
!873 = distinct !DILexicalBlock(scope: !856, file: !25, line: 283, column: 9)
!874 = !DILocation(line: 283, column: 9, scope: !856)
!875 = !DILocation(line: 284, column: 18, scope: !876)
!876 = distinct !DILexicalBlock(scope: !873, file: !25, line: 283, column: 13)
!877 = !DILocation(line: 284, column: 7, scope: !876)
!878 = !DILocation(line: 285, column: 5, scope: !876)
!879 = !DILocation(line: 286, column: 14, scope: !880)
!880 = distinct !DILexicalBlock(scope: !873, file: !25, line: 285, column: 12)
!881 = !DILocation(line: 286, column: 61, scope: !880)
!882 = !DILocation(line: 286, column: 7, scope: !883)
!883 = !DILexicalBlockFile(scope: !880, file: !25, discriminator: 1)
!884 = !DILocation(line: 288, column: 13, scope: !856)
!885 = !DILocation(line: 288, column: 21, scope: !856)
!886 = !DILocation(line: 288, column: 5, scope: !887)
!887 = !DILexicalBlockFile(scope: !856, file: !25, discriminator: 1)
!888 = !DILocation(line: 277, column: 3, scope: !889)
!889 = !DILexicalBlockFile(scope: !824, file: !25, discriminator: 2)
!890 = distinct !{!890, !849}
!891 = !DILocation(line: 291, column: 3, scope: !824)
!892 = distinct !DISubprogram(name: "c_isspace", scope: !4, file: !4, line: 69, type: !893, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !73)
!893 = !DISubroutineType(types: !894)
!894 = !{!895, !37}
!895 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!896 = !DILocalVariable(name: "c", arg: 1, scope: !892, file: !4, line: 69, type: !37)
!897 = !DILocation(line: 69, column: 15, scope: !892)
!898 = !DILocation(line: 71, column: 18, scope: !892)
!899 = !DILocation(line: 71, column: 9, scope: !892)
!900 = !DILocation(line: 71, column: 2, scope: !892)
