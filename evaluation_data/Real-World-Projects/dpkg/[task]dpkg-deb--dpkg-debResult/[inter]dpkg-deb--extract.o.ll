; ModuleID = './[inter]dpkg-deb--extract.o.i'
source_filename = "./[inter]dpkg-deb--extract.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
%struct.dpkg_error = type { i32, i32, i8* }
%struct.dpkg_ar = type { i8*, i32, i64, i64, i32 }
%struct.deb_version = type { i32, i32 }
%struct.dpkg_ar_hdr = type { [16 x i8], [12 x i8], [6 x i8], [6 x i8], [8 x i8], [10 x i8], [2 x i8] }
%struct.command = type { i8*, i8*, i32, i32, i8** }

@.str = private unnamed_addr constant [29 x i8] c"archive magic version number\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"!<arch>\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"archive member header\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"file '%.250s' is corrupt - bad archive header magic\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"debian-binary\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"file '%.250s' is not a Debian binary archive (try dpkg-split?)\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"archive information header member\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"archive has no newlines in header\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"archive has invalid format version: %s\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"archive is format version %d.%d; get a newer dpkg-deb\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"cannot skip archive member from '%s': %s\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"control.tar\00", align 1
@.str.12 = private unnamed_addr constant [67 x i8] c"archive '%s' uses unknown compression for member '%.*s', giving up\00", align 1
@.str.13 = private unnamed_addr constant [64 x i8] c"archive '%s' has premature member '%.*s' before '%s', giving up\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"data.tar\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"archive '%.250s' contains two control members, giving up\00", align 1
@.str.16 = private unnamed_addr constant [81 x i8] c" new Debian package, version %d.%d.\0A size %jd bytes: control archive=%jd bytes.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17 = private unnamed_addr constant [18 x i8] c"<standard output>\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"0.93\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"archive control member size\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"%jd%c%d\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"archive has malformed control member size '%s'\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"cannot skip archive control member from '%s': %s\00", align 1
@.str.23 = private unnamed_addr constant [93 x i8] c" old Debian package, version %d.%d.\0A size %jd bytes: control archive=%jd, main archive=%jd.\0A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"!<arch>\00", align 1
@.str.25 = private unnamed_addr constant [99 x i8] c"file looks like it might be an archive which has been\0A corrupted by being downloaded in ASCII mode\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"'%.255s' is not a Debian format archive\00", align 1
@.str.27 = private unnamed_addr constant [62 x i8] c"cannot copy archive member from '%s' to decompressor pipe: %s\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"cannot close decompressor pipe\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"decompressing archive member\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"tar\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"-xv\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"-tv\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"extract.c\00", align 1
@__func__.extracthalf = private unnamed_addr constant [12 x i8] c"extracthalf\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"unknown or missing tar action '%d'\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"--warning=no-timestamp\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"TAR_OPTIONS\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"failed to create directory\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"unexpected pre-existing pathname %s\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"failed to chdir to directory\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"<decompress>\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"paste\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c".DEBIAN\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"DEBIAN\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c"--%s needs a .deb filename argument\00", align 1
@cipaction = external global %struct.cmdinfo*, align 8
@.str.50 = private unnamed_addr constant [45 x i8] c"--%s takes only one argument (.deb filename)\00", align 1
@.str.51 = private unnamed_addr constant [54 x i8] c"--%s takes at most two arguments (.deb and directory)\00", align 1
@opt_verbose = external global i32, align 4
@.str.52 = private unnamed_addr constant [49 x i8] c"--%s needs .deb filename and directory arguments\00", align 1
@.str.53 = private unnamed_addr constant [76 x i8] c"--%s needs a target directory.\0APerhaps you should be using dpkg --install ?\00", align 1
@.str.54 = private unnamed_addr constant [65 x i8] c"--%s does not support (yet) reading the .deb from standard input\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"unexpected end of file in %s in %.255s\00", align 1
@.str.57 = private unnamed_addr constant [34 x i8] c"error reading %s from file %.255s\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"mv %s/* . && rmdir %s\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"shell command to move files\00", align 1

; Function Attrs: nounwind uwtable
define void @extracthalf(i8*, i8*, i32, i32) #0 !dbg !50 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dpkg_error, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.dpkg_ar*, align 8
  %12 = alloca [40 x i8], align 16
  %13 = alloca %struct.deb_version, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [2 x i32], align 4
  %22 = alloca [2 x i32], align 4
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  %25 = alloca i32, align 4
  %26 = alloca i8, align 1
  %27 = alloca i32, align 4
  %28 = alloca %struct.dpkg_ar_hdr, align 1
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca [40 x i8], align 16
  %33 = alloca i32, align 4
  %34 = alloca %struct.command, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !58, metadata !59), !dbg !60
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !61, metadata !59), !dbg !62
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !63, metadata !59), !dbg !64
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !65, metadata !59), !dbg !66
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %9, metadata !67, metadata !59), !dbg !74
  call void @llvm.dbg.declare(metadata i8** %10, metadata !75, metadata !59), !dbg !76
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar** %11, metadata !77, metadata !59), !dbg !95
  call void @llvm.dbg.declare(metadata [40 x i8]* %12, metadata !96, metadata !59), !dbg !100
  call void @llvm.dbg.declare(metadata %struct.deb_version* %13, metadata !101, metadata !59), !dbg !107
  call void @llvm.dbg.declare(metadata i64* %14, metadata !108, metadata !59), !dbg !109
  call void @llvm.dbg.declare(metadata i64* %15, metadata !110, metadata !59), !dbg !111
  store i64 0, i64* %15, align 8, !dbg !111
  call void @llvm.dbg.declare(metadata i64* %16, metadata !112, metadata !59), !dbg !113
  call void @llvm.dbg.declare(metadata i32* %17, metadata !114, metadata !59), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %18, metadata !116, metadata !59), !dbg !119
  store i32 0, i32* %18, align 4, !dbg !119
  call void @llvm.dbg.declare(metadata i32* %19, metadata !120, metadata !59), !dbg !121
  call void @llvm.dbg.declare(metadata i32* %20, metadata !122, metadata !59), !dbg !123
  call void @llvm.dbg.declare(metadata [2 x i32]* %21, metadata !124, metadata !59), !dbg !128
  call void @llvm.dbg.declare(metadata [2 x i32]* %22, metadata !129, metadata !59), !dbg !130
  call void @llvm.dbg.declare(metadata i32* %23, metadata !131, metadata !59), !dbg !132
  call void @llvm.dbg.declare(metadata i8* %24, metadata !133, metadata !59), !dbg !134
  call void @llvm.dbg.declare(metadata i32* %25, metadata !135, metadata !59), !dbg !136
  store i32 -1, i32* %25, align 4, !dbg !136
  call void @llvm.dbg.declare(metadata i8* %26, metadata !137, metadata !59), !dbg !139
  call void @llvm.dbg.declare(metadata i32* %27, metadata !140, metadata !59), !dbg !141
  store i32 1, i32* %27, align 4, !dbg !141
  %35 = load i8*, i8** %5, align 8, !dbg !142
  %36 = call %struct.dpkg_ar* @dpkg_ar_open(i8* %35), !dbg !143
  store %struct.dpkg_ar* %36, %struct.dpkg_ar** %11, align 8, !dbg !144
  %37 = load %struct.dpkg_ar*, %struct.dpkg_ar** %11, align 8, !dbg !145
  %38 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %37, i32 0, i32 4, !dbg !146
  %39 = load i32, i32* %38, align 8, !dbg !146
  %40 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i32 0, i32 0, !dbg !147
  %41 = call i64 @read_line(i32 %39, i8* %40, i64 8, i64 39), !dbg !148
  store i64 %41, i64* %16, align 8, !dbg !149
  %42 = load i64, i64* %16, align 8, !dbg !150
  %43 = icmp slt i64 %42, 0, !dbg !152
  br i1 %43, label %44, label %49, !dbg !153

; <label>:44:                                     ; preds = %4
  %45 = load i64, i64* %16, align 8, !dbg !154
  %46 = trunc i64 %45 to i32, !dbg !154
  %47 = load i8*, i8** %5, align 8, !dbg !155
  %48 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0)) #9, !dbg !156
  call void @read_fail(i32 %46, i8* %47, i8* %48) #10, !dbg !157
  unreachable, !dbg !159

; <label>:49:                                     ; preds = %4
  %50 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i32 0, i32 0, !dbg !160
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #11, !dbg !162
  %52 = icmp eq i32 %51, 0, !dbg !163
  br i1 %52, label %53, label %280, !dbg !164

; <label>:53:                                     ; preds = %49
  store i64 0, i64* %14, align 8, !dbg !165
  store i8 0, i8* %26, align 1, !dbg !167
  br label %54, !dbg !168

; <label>:54:                                     ; preds = %262, %53
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar_hdr* %28, metadata !169, metadata !59), !dbg !198
  %55 = load %struct.dpkg_ar*, %struct.dpkg_ar** %11, align 8, !dbg !199
  %56 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %55, i32 0, i32 4, !dbg !200
  %57 = load i32, i32* %56, align 8, !dbg !200
  %58 = bitcast %struct.dpkg_ar_hdr* %28 to i8*, !dbg !201
  %59 = call i64 @fd_read(i32 %57, i8* %58, i64 60), !dbg !202
  store i64 %59, i64* %16, align 8, !dbg !203
  %60 = load i64, i64* %16, align 8, !dbg !204
  %61 = icmp ne i64 %60, 60, !dbg !206
  br i1 %61, label %62, label %67, !dbg !207

; <label>:62:                                     ; preds = %54
  %63 = load i64, i64* %16, align 8, !dbg !208
  %64 = trunc i64 %63 to i32, !dbg !208
  %65 = load i8*, i8** %5, align 8, !dbg !209
  %66 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)) #9, !dbg !210
  call void @read_fail(i32 %64, i8* %65, i8* %66) #10, !dbg !211
  unreachable, !dbg !213

; <label>:67:                                     ; preds = %54
  call void @dpkg_ar_normalize_name(%struct.dpkg_ar_hdr* %28), !dbg !214
  %68 = call zeroext i1 @dpkg_ar_member_is_illegal(%struct.dpkg_ar_hdr* %28), !dbg !215
  br i1 %68, label %69, label %72, !dbg !217

; <label>:69:                                     ; preds = %67
  %70 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i32 0, i32 0)) #9, !dbg !218
  %71 = load i8*, i8** %5, align 8, !dbg !219
  call void (i8*, ...) @ohshit(i8* %70, i8* %71) #10, !dbg !220
  unreachable, !dbg !222

; <label>:72:                                     ; preds = %67
  %73 = load %struct.dpkg_ar*, %struct.dpkg_ar** %11, align 8, !dbg !223
  %74 = call i64 @dpkg_ar_member_get_size(%struct.dpkg_ar* %73, %struct.dpkg_ar_hdr* %28), !dbg !224
  store i64 %74, i64* %15, align 8, !dbg !225
  %75 = load i8, i8* %26, align 1, !dbg !226
  %76 = trunc i8 %75 to i1, !dbg !226
  br i1 %76, label %138, label %77, !dbg !228

; <label>:77:                                     ; preds = %72
  call void @llvm.dbg.declare(metadata i8** %29, metadata !229, metadata !59), !dbg !231
  %78 = getelementptr inbounds %struct.dpkg_ar_hdr, %struct.dpkg_ar_hdr* %28, i32 0, i32 0, !dbg !232
  %79 = getelementptr inbounds [16 x i8], [16 x i8]* %78, i32 0, i32 0, !dbg !234
  %80 = call i32 @strncmp(i8* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i64 16) #11, !dbg !235
  %81 = icmp ne i32 %80, 0, !dbg !236
  br i1 %81, label %82, label %85, !dbg !237

; <label>:82:                                     ; preds = %77
  %83 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i32 0, i32 0)) #9, !dbg !238
  %84 = load i8*, i8** %5, align 8, !dbg !239
  call void (i8*, ...) @ohshit(i8* %83, i8* %84) #10, !dbg !240
  unreachable, !dbg !242

; <label>:85:                                     ; preds = %77
  %86 = load i64, i64* %15, align 8, !dbg !243
  %87 = add nsw i64 %86, 1, !dbg !244
  %88 = call i8* @m_malloc(i64 %87), !dbg !245
  store i8* %88, i8** %29, align 8, !dbg !246
  %89 = load %struct.dpkg_ar*, %struct.dpkg_ar** %11, align 8, !dbg !247
  %90 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %89, i32 0, i32 4, !dbg !248
  %91 = load i32, i32* %90, align 8, !dbg !248
  %92 = load i8*, i8** %29, align 8, !dbg !249
  %93 = load i64, i64* %15, align 8, !dbg !250
  %94 = load i64, i64* %15, align 8, !dbg !251
  %95 = and i64 %94, 1, !dbg !252
  %96 = add nsw i64 %93, %95, !dbg !253
  %97 = call i64 @fd_read(i32 %91, i8* %92, i64 %96), !dbg !254
  store i64 %97, i64* %16, align 8, !dbg !255
  %98 = load i64, i64* %16, align 8, !dbg !256
  %99 = load i64, i64* %15, align 8, !dbg !258
  %100 = load i64, i64* %15, align 8, !dbg !259
  %101 = and i64 %100, 1, !dbg !260
  %102 = add nsw i64 %99, %101, !dbg !261
  %103 = icmp ne i64 %98, %102, !dbg !262
  br i1 %103, label %104, label %109, !dbg !263

; <label>:104:                                    ; preds = %85
  %105 = load i64, i64* %16, align 8, !dbg !264
  %106 = trunc i64 %105 to i32, !dbg !264
  %107 = load i8*, i8** %5, align 8, !dbg !265
  %108 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0)) #9, !dbg !266
  call void @read_fail(i32 %106, i8* %107, i8* %108) #10, !dbg !267
  unreachable, !dbg !269

; <label>:109:                                    ; preds = %85
  %110 = load i64, i64* %15, align 8, !dbg !270
  %111 = load i8*, i8** %29, align 8, !dbg !271
  %112 = getelementptr inbounds i8, i8* %111, i64 %110, !dbg !271
  store i8 0, i8* %112, align 1, !dbg !272
  %113 = load i8*, i8** %29, align 8, !dbg !273
  %114 = call i8* @strchr(i8* %113, i32 10) #11, !dbg !275
  %115 = icmp eq i8* %114, null, !dbg !276
  br i1 %115, label %116, label %118, !dbg !277

; <label>:116:                                    ; preds = %109
  %117 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0)) #9, !dbg !278
  call void (i8*, ...) @ohshit(i8* %117) #10, !dbg !279
  unreachable, !dbg !281

; <label>:118:                                    ; preds = %109
  %119 = load i8*, i8** %29, align 8, !dbg !282
  %120 = call i8* @deb_version_parse(%struct.deb_version* %13, i8* %119), !dbg !283
  store i8* %120, i8** %10, align 8, !dbg !284
  %121 = load i8*, i8** %10, align 8, !dbg !285
  %122 = icmp ne i8* %121, null, !dbg !285
  br i1 %122, label %123, label %126, !dbg !287

; <label>:123:                                    ; preds = %118
  %124 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0)) #9, !dbg !288
  %125 = load i8*, i8** %10, align 8, !dbg !289
  call void (i8*, ...) @ohshit(i8* %124, i8* %125) #10, !dbg !290
  unreachable, !dbg !292

; <label>:126:                                    ; preds = %118
  %127 = getelementptr inbounds %struct.deb_version, %struct.deb_version* %13, i32 0, i32 0, !dbg !293
  %128 = load i32, i32* %127, align 4, !dbg !293
  %129 = icmp ne i32 %128, 2, !dbg !295
  br i1 %129, label %130, label %136, !dbg !296

; <label>:130:                                    ; preds = %126
  %131 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0)) #9, !dbg !297
  %132 = getelementptr inbounds %struct.deb_version, %struct.deb_version* %13, i32 0, i32 0, !dbg !298
  %133 = load i32, i32* %132, align 4, !dbg !298
  %134 = getelementptr inbounds %struct.deb_version, %struct.deb_version* %13, i32 0, i32 1, !dbg !299
  %135 = load i32, i32* %134, align 4, !dbg !299
  call void (i8*, ...) @ohshit(i8* %131, i32 %133, i32 %135) #10, !dbg !300
  unreachable, !dbg !302

; <label>:136:                                    ; preds = %126
  %137 = load i8*, i8** %29, align 8, !dbg !303
  call void @free(i8* %137) #9, !dbg !304
  store i8 1, i8* %26, align 1, !dbg !305
  br label %262, !dbg !306

; <label>:138:                                    ; preds = %72
  %139 = getelementptr inbounds %struct.dpkg_ar_hdr, %struct.dpkg_ar_hdr* %28, i32 0, i32 0, !dbg !307
  %140 = getelementptr inbounds [16 x i8], [16 x i8]* %139, i64 0, i64 0, !dbg !310
  %141 = load i8, i8* %140, align 1, !dbg !310
  %142 = sext i8 %141 to i32, !dbg !310
  %143 = icmp eq i32 %142, 95, !dbg !311
  br i1 %143, label %144, label %162, !dbg !310

; <label>:144:                                    ; preds = %138
  %145 = load %struct.dpkg_ar*, %struct.dpkg_ar** %11, align 8, !dbg !312
  %146 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %145, i32 0, i32 4, !dbg !315
  %147 = load i32, i32* %146, align 8, !dbg !315
  %148 = load i64, i64* %15, align 8, !dbg !316
  %149 = load i64, i64* %15, align 8, !dbg !317
  %150 = and i64 %149, 1, !dbg !318
  %151 = add nsw i64 %148, %150, !dbg !319
  %152 = call i64 @buffer_skip_Int(i32 %147, i32 0, i64 %151, %struct.dpkg_error* %9), !dbg !320
  %153 = icmp slt i64 %152, 0, !dbg !321
  br i1 %153, label %154, label %161, !dbg !322

; <label>:154:                                    ; preds = %144
  %155 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0)) #9, !dbg !323
  %156 = load %struct.dpkg_ar*, %struct.dpkg_ar** %11, align 8, !dbg !324
  %157 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %156, i32 0, i32 0, !dbg !325
  %158 = load i8*, i8** %157, align 8, !dbg !325
  %159 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %9, i32 0, i32 2, !dbg !326
  %160 = load i8*, i8** %159, align 8, !dbg !326
  call void (i8*, ...) @ohshit(i8* %155, i8* %158, i8* %160) #10, !dbg !327
  unreachable, !dbg !329

; <label>:161:                                    ; preds = %144
  br label %261, !dbg !330

; <label>:162:                                    ; preds = %138
  %163 = getelementptr inbounds %struct.dpkg_ar_hdr, %struct.dpkg_ar_hdr* %28, i32 0, i32 0, !dbg !331
  %164 = getelementptr inbounds [16 x i8], [16 x i8]* %163, i32 0, i32 0, !dbg !334
  %165 = call i32 @strncmp(i8* %164, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i64 11) #11, !dbg !335
  %166 = icmp eq i32 %165, 0, !dbg !336
  br i1 %166, label %167, label %187, !dbg !337

; <label>:167:                                    ; preds = %162
  call void @llvm.dbg.declare(metadata i8** %30, metadata !338, metadata !59), !dbg !340
  %168 = getelementptr inbounds %struct.dpkg_ar_hdr, %struct.dpkg_ar_hdr* %28, i32 0, i32 0, !dbg !341
  %169 = getelementptr inbounds [16 x i8], [16 x i8]* %168, i32 0, i32 0, !dbg !342
  %170 = getelementptr inbounds i8, i8* %169, i64 11, !dbg !343
  store i8* %170, i8** %30, align 8, !dbg !340
  store i32 1, i32* %25, align 4, !dbg !344
  %171 = load i8*, i8** %30, align 8, !dbg !345
  %172 = call i32 @compressor_find_by_extension(i8* %171), !dbg !346
  store i32 %172, i32* %27, align 4, !dbg !347
  %173 = load i32, i32* %27, align 4, !dbg !348
  %174 = icmp ne i32 %173, 0, !dbg !350
  br i1 %174, label %175, label %186, !dbg !351

; <label>:175:                                    ; preds = %167
  %176 = load i32, i32* %27, align 4, !dbg !352
  %177 = icmp ne i32 %176, 1, !dbg !353
  br i1 %177, label %178, label %186, !dbg !354

; <label>:178:                                    ; preds = %175
  %179 = load i32, i32* %27, align 4, !dbg !355
  %180 = icmp ne i32 %179, 2, !dbg !356
  br i1 %180, label %181, label %186, !dbg !357

; <label>:181:                                    ; preds = %178
  %182 = call i8* @gettext(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.12, i32 0, i32 0)) #9, !dbg !359
  %183 = load i8*, i8** %5, align 8, !dbg !360
  %184 = getelementptr inbounds %struct.dpkg_ar_hdr, %struct.dpkg_ar_hdr* %28, i32 0, i32 0, !dbg !361
  %185 = getelementptr inbounds [16 x i8], [16 x i8]* %184, i32 0, i32 0, !dbg !362
  call void (i8*, ...) @ohshit(i8* %182, i8* %183, i32 16, i8* %185) #10, !dbg !363
  unreachable, !dbg !365

; <label>:186:                                    ; preds = %178, %175, %167
  br label %220, !dbg !366

; <label>:187:                                    ; preds = %162
  %188 = load i32, i32* %25, align 4, !dbg !367
  %189 = icmp ne i32 %188, 1, !dbg !370
  br i1 %189, label %190, label %195, !dbg !371

; <label>:190:                                    ; preds = %187
  %191 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.13, i32 0, i32 0)) #9, !dbg !372
  %192 = load i8*, i8** %5, align 8, !dbg !373
  %193 = getelementptr inbounds %struct.dpkg_ar_hdr, %struct.dpkg_ar_hdr* %28, i32 0, i32 0, !dbg !374
  %194 = getelementptr inbounds [16 x i8], [16 x i8]* %193, i32 0, i32 0, !dbg !375
  call void (i8*, ...) @ohshit(i8* %191, i8* %192, i32 16, i8* %194, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0)) #10, !dbg !376
  unreachable, !dbg !378

; <label>:195:                                    ; preds = %187
  %196 = getelementptr inbounds %struct.dpkg_ar_hdr, %struct.dpkg_ar_hdr* %28, i32 0, i32 0, !dbg !379
  %197 = getelementptr inbounds [16 x i8], [16 x i8]* %196, i32 0, i32 0, !dbg !381
  %198 = call i32 @strncmp(i8* %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i64 8) #11, !dbg !382
  %199 = icmp eq i32 %198, 0, !dbg !383
  br i1 %199, label %200, label %214, !dbg !384

; <label>:200:                                    ; preds = %195
  call void @llvm.dbg.declare(metadata i8** %31, metadata !385, metadata !59), !dbg !387
  %201 = getelementptr inbounds %struct.dpkg_ar_hdr, %struct.dpkg_ar_hdr* %28, i32 0, i32 0, !dbg !388
  %202 = getelementptr inbounds [16 x i8], [16 x i8]* %201, i32 0, i32 0, !dbg !389
  %203 = getelementptr inbounds i8, i8* %202, i64 8, !dbg !390
  store i8* %203, i8** %31, align 8, !dbg !387
  store i32 0, i32* %25, align 4, !dbg !391
  %204 = load i8*, i8** %31, align 8, !dbg !392
  %205 = call i32 @compressor_find_by_extension(i8* %204), !dbg !393
  store i32 %205, i32* %27, align 4, !dbg !394
  %206 = load i32, i32* %27, align 4, !dbg !395
  %207 = icmp eq i32 %206, -1, !dbg !397
  br i1 %207, label %208, label %213, !dbg !398

; <label>:208:                                    ; preds = %200
  %209 = call i8* @gettext(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.12, i32 0, i32 0)) #9, !dbg !399
  %210 = load i8*, i8** %5, align 8, !dbg !400
  %211 = getelementptr inbounds %struct.dpkg_ar_hdr, %struct.dpkg_ar_hdr* %28, i32 0, i32 0, !dbg !401
  %212 = getelementptr inbounds [16 x i8], [16 x i8]* %211, i32 0, i32 0, !dbg !402
  call void (i8*, ...) @ohshit(i8* %209, i8* %210, i32 16, i8* %212) #10, !dbg !403
  unreachable, !dbg !405

; <label>:213:                                    ; preds = %200
  br label %219, !dbg !406

; <label>:214:                                    ; preds = %195
  %215 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.13, i32 0, i32 0)) #9, !dbg !407
  %216 = load i8*, i8** %5, align 8, !dbg !409
  %217 = getelementptr inbounds %struct.dpkg_ar_hdr, %struct.dpkg_ar_hdr* %28, i32 0, i32 0, !dbg !410
  %218 = getelementptr inbounds [16 x i8], [16 x i8]* %217, i32 0, i32 0, !dbg !411
  call void (i8*, ...) @ohshit(i8* %215, i8* %216, i32 16, i8* %218, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0)) #10, !dbg !412
  unreachable, !dbg !414

; <label>:219:                                    ; preds = %213
  br label %220

; <label>:220:                                    ; preds = %219, %186
  %221 = load i32, i32* %25, align 4, !dbg !415
  %222 = icmp eq i32 %221, 1, !dbg !417
  br i1 %222, label %223, label %231, !dbg !418

; <label>:223:                                    ; preds = %220
  %224 = load i64, i64* %14, align 8, !dbg !419
  %225 = icmp ne i64 %224, 0, !dbg !422
  br i1 %225, label %226, label %229, !dbg !423

; <label>:226:                                    ; preds = %223
  %227 = call i8* @gettext(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.15, i32 0, i32 0)) #9, !dbg !424
  %228 = load i8*, i8** %5, align 8, !dbg !425
  call void (i8*, ...) @ohshit(i8* %227, i8* %228) #10, !dbg !426
  unreachable, !dbg !428

; <label>:229:                                    ; preds = %223
  %230 = load i64, i64* %15, align 8, !dbg !429
  store i64 %230, i64* %14, align 8, !dbg !430
  br label %231, !dbg !431

; <label>:231:                                    ; preds = %229, %220
  %232 = load i32, i32* %25, align 4, !dbg !432
  %233 = icmp ne i32 %232, 0, !dbg !434
  %234 = xor i1 %233, true, !dbg !434
  %235 = zext i1 %234 to i32, !dbg !434
  %236 = load i32, i32* %8, align 4, !dbg !435
  %237 = icmp ne i32 %236, 0, !dbg !436
  %238 = xor i1 %237, true, !dbg !436
  %239 = zext i1 %238 to i32, !dbg !436
  %240 = icmp ne i32 %235, %239, !dbg !437
  br i1 %240, label %241, label %259, !dbg !438

; <label>:241:                                    ; preds = %231
  %242 = load %struct.dpkg_ar*, %struct.dpkg_ar** %11, align 8, !dbg !439
  %243 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %242, i32 0, i32 4, !dbg !442
  %244 = load i32, i32* %243, align 8, !dbg !442
  %245 = load i64, i64* %15, align 8, !dbg !443
  %246 = load i64, i64* %15, align 8, !dbg !444
  %247 = and i64 %246, 1, !dbg !445
  %248 = add nsw i64 %245, %247, !dbg !446
  %249 = call i64 @buffer_skip_Int(i32 %244, i32 0, i64 %248, %struct.dpkg_error* %9), !dbg !447
  %250 = icmp slt i64 %249, 0, !dbg !448
  br i1 %250, label %251, label %258, !dbg !449

; <label>:251:                                    ; preds = %241
  %252 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0)) #9, !dbg !450
  %253 = load %struct.dpkg_ar*, %struct.dpkg_ar** %11, align 8, !dbg !451
  %254 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %253, i32 0, i32 0, !dbg !452
  %255 = load i8*, i8** %254, align 8, !dbg !452
  %256 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %9, i32 0, i32 2, !dbg !453
  %257 = load i8*, i8** %256, align 8, !dbg !453
  call void (i8*, ...) @ohshit(i8* %252, i8* %255, i8* %257) #10, !dbg !454
  unreachable, !dbg !456

; <label>:258:                                    ; preds = %241
  br label %260, !dbg !457

; <label>:259:                                    ; preds = %231
  br label %263, !dbg !458

; <label>:260:                                    ; preds = %258
  br label %261

; <label>:261:                                    ; preds = %260, %161
  br label %262

; <label>:262:                                    ; preds = %261, %136
  br label %54, !dbg !460, !llvm.loop !462

; <label>:263:                                    ; preds = %259
  %264 = load i32, i32* %8, align 4, !dbg !463
  %265 = icmp sge i32 %264, 2, !dbg !465
  br i1 %265, label %266, label %279, !dbg !466

; <label>:266:                                    ; preds = %263
  %267 = call i8* @gettext(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.16, i32 0, i32 0)) #9, !dbg !467
  %268 = getelementptr inbounds %struct.deb_version, %struct.deb_version* %13, i32 0, i32 0, !dbg !469
  %269 = load i32, i32* %268, align 4, !dbg !469
  %270 = getelementptr inbounds %struct.deb_version, %struct.deb_version* %13, i32 0, i32 1, !dbg !470
  %271 = load i32, i32* %270, align 4, !dbg !470
  %272 = load %struct.dpkg_ar*, %struct.dpkg_ar** %11, align 8, !dbg !471
  %273 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %272, i32 0, i32 3, !dbg !472
  %274 = load i64, i64* %273, align 8, !dbg !472
  %275 = load i64, i64* %14, align 8, !dbg !473
  %276 = call i32 (i8*, ...) @printf(i8* %267, i32 %269, i32 %271, i64 %274, i64 %275), !dbg !474
  %277 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !476
  %278 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0)) #9, !dbg !477
  call void @m_output(%struct._IO_FILE* %277, i8* %278), !dbg !478
  br label %279, !dbg !479

; <label>:279:                                    ; preds = %266, %263
  br label %394, !dbg !480

; <label>:280:                                    ; preds = %49
  %281 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i32 0, i32 0, !dbg !481
  %282 = call i32 @strncmp(i8* %281, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i64 4) #11, !dbg !484
  %283 = icmp eq i32 %282, 0, !dbg !485
  br i1 %283, label %284, label %384, !dbg !484

; <label>:284:                                    ; preds = %280
  call void @llvm.dbg.declare(metadata [40 x i8]* %32, metadata !486, metadata !59), !dbg !488
  call void @llvm.dbg.declare(metadata i32* %33, metadata !489, metadata !59), !dbg !490
  %285 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i32 0, i32 0, !dbg !491
  %286 = call i64 @strlen(i8* %285) #11, !dbg !492
  %287 = trunc i64 %286 to i32, !dbg !492
  store i32 %287, i32* %33, align 4, !dbg !493
  %288 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i32 0, i32 0, !dbg !494
  %289 = call i8* @strchr(i8* %288, i32 10) #11, !dbg !496
  %290 = icmp eq i8* %289, null, !dbg !497
  br i1 %290, label %291, label %293, !dbg !498

; <label>:291:                                    ; preds = %284
  %292 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0)) #9, !dbg !499
  call void (i8*, ...) @ohshit(i8* %292) #10, !dbg !500
  unreachable, !dbg !502

; <label>:293:                                    ; preds = %284
  %294 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i32 0, i32 0, !dbg !503
  %295 = call i8* @deb_version_parse(%struct.deb_version* %13, i8* %294), !dbg !504
  store i8* %295, i8** %10, align 8, !dbg !505
  %296 = load i8*, i8** %10, align 8, !dbg !506
  %297 = icmp ne i8* %296, null, !dbg !506
  br i1 %297, label %298, label %301, !dbg !508

; <label>:298:                                    ; preds = %293
  %299 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0)) #9, !dbg !509
  %300 = load i8*, i8** %10, align 8, !dbg !510
  call void (i8*, ...) @ohshit(i8* %299, i8* %300) #10, !dbg !511
  unreachable, !dbg !513

; <label>:301:                                    ; preds = %293
  %302 = load %struct.dpkg_ar*, %struct.dpkg_ar** %11, align 8, !dbg !514
  %303 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %302, i32 0, i32 4, !dbg !515
  %304 = load i32, i32* %303, align 8, !dbg !515
  %305 = getelementptr inbounds [40 x i8], [40 x i8]* %32, i32 0, i32 0, !dbg !516
  %306 = call i64 @read_line(i32 %304, i8* %305, i64 1, i64 39), !dbg !517
  store i64 %306, i64* %16, align 8, !dbg !518
  %307 = load i64, i64* %16, align 8, !dbg !519
  %308 = icmp slt i64 %307, 0, !dbg !521
  br i1 %308, label %309, label %314, !dbg !522

; <label>:309:                                    ; preds = %301
  %310 = load i64, i64* %16, align 8, !dbg !523
  %311 = trunc i64 %310 to i32, !dbg !523
  %312 = load i8*, i8** %5, align 8, !dbg !524
  %313 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0)) #9, !dbg !525
  call void @read_fail(i32 %311, i8* %312, i8* %313) #10, !dbg !526
  unreachable, !dbg !528

; <label>:314:                                    ; preds = %301
  %315 = getelementptr inbounds [40 x i8], [40 x i8]* %32, i32 0, i32 0, !dbg !529
  %316 = call i32 (i8*, i8*, ...) @sscanf(i8* %315, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i64* %14, i8* %24, i32* %17) #9, !dbg !531
  %317 = icmp ne i32 %316, 2, !dbg !532
  br i1 %317, label %322, label %318, !dbg !533

; <label>:318:                                    ; preds = %314
  %319 = load i8, i8* %24, align 1, !dbg !534
  %320 = sext i8 %319 to i32, !dbg !534
  %321 = icmp ne i32 %320, 10, !dbg !535
  br i1 %321, label %322, label %325, !dbg !536

; <label>:322:                                    ; preds = %318, %314
  %323 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i32 0, i32 0)) #9, !dbg !538
  %324 = getelementptr inbounds [40 x i8], [40 x i8]* %32, i32 0, i32 0, !dbg !539
  call void (i8*, ...) @ohshit(i8* %323, i8* %324) #10, !dbg !540
  unreachable, !dbg !542

; <label>:325:                                    ; preds = %318
  %326 = load i32, i32* %8, align 4, !dbg !543
  %327 = icmp ne i32 %326, 0, !dbg !543
  br i1 %327, label %328, label %330, !dbg !545

; <label>:328:                                    ; preds = %325
  %329 = load i64, i64* %14, align 8, !dbg !546
  store i64 %329, i64* %15, align 8, !dbg !548
  br label %356, !dbg !549

; <label>:330:                                    ; preds = %325
  %331 = load %struct.dpkg_ar*, %struct.dpkg_ar** %11, align 8, !dbg !550
  %332 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %331, i32 0, i32 3, !dbg !552
  %333 = load i64, i64* %332, align 8, !dbg !552
  %334 = load i64, i64* %14, align 8, !dbg !553
  %335 = sub nsw i64 %333, %334, !dbg !554
  %336 = getelementptr inbounds [40 x i8], [40 x i8]* %32, i32 0, i32 0, !dbg !555
  %337 = call i64 @strlen(i8* %336) #11, !dbg !556
  %338 = sub i64 %335, %337, !dbg !557
  %339 = load i32, i32* %33, align 4, !dbg !558
  %340 = sext i32 %339 to i64, !dbg !558
  %341 = sub i64 %338, %340, !dbg !559
  store i64 %341, i64* %15, align 8, !dbg !560
  %342 = load %struct.dpkg_ar*, %struct.dpkg_ar** %11, align 8, !dbg !561
  %343 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %342, i32 0, i32 4, !dbg !563
  %344 = load i32, i32* %343, align 8, !dbg !563
  %345 = load i64, i64* %14, align 8, !dbg !564
  %346 = call i64 @buffer_skip_Int(i32 %344, i32 0, i64 %345, %struct.dpkg_error* %9), !dbg !565
  %347 = icmp slt i64 %346, 0, !dbg !566
  br i1 %347, label %348, label %355, !dbg !567

; <label>:348:                                    ; preds = %330
  %349 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i32 0, i32 0)) #9, !dbg !568
  %350 = load %struct.dpkg_ar*, %struct.dpkg_ar** %11, align 8, !dbg !569
  %351 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %350, i32 0, i32 0, !dbg !570
  %352 = load i8*, i8** %351, align 8, !dbg !570
  %353 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %9, i32 0, i32 2, !dbg !571
  %354 = load i8*, i8** %353, align 8, !dbg !571
  call void (i8*, ...) @ohshit(i8* %349, i8* %352, i8* %354) #10, !dbg !572
  unreachable, !dbg !574

; <label>:355:                                    ; preds = %330
  br label %356

; <label>:356:                                    ; preds = %355, %328
  %357 = load i32, i32* %8, align 4, !dbg !575
  %358 = icmp sge i32 %357, 2, !dbg !577
  br i1 %358, label %359, label %383, !dbg !578

; <label>:359:                                    ; preds = %356
  %360 = call i8* @gettext(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.23, i32 0, i32 0)) #9, !dbg !579
  %361 = getelementptr inbounds %struct.deb_version, %struct.deb_version* %13, i32 0, i32 0, !dbg !581
  %362 = load i32, i32* %361, align 4, !dbg !581
  %363 = getelementptr inbounds %struct.deb_version, %struct.deb_version* %13, i32 0, i32 1, !dbg !582
  %364 = load i32, i32* %363, align 4, !dbg !582
  %365 = load %struct.dpkg_ar*, %struct.dpkg_ar** %11, align 8, !dbg !583
  %366 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %365, i32 0, i32 3, !dbg !584
  %367 = load i64, i64* %366, align 8, !dbg !584
  %368 = load i64, i64* %14, align 8, !dbg !585
  %369 = load %struct.dpkg_ar*, %struct.dpkg_ar** %11, align 8, !dbg !586
  %370 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %369, i32 0, i32 3, !dbg !587
  %371 = load i64, i64* %370, align 8, !dbg !587
  %372 = load i64, i64* %14, align 8, !dbg !588
  %373 = sub nsw i64 %371, %372, !dbg !589
  %374 = getelementptr inbounds [40 x i8], [40 x i8]* %32, i32 0, i32 0, !dbg !590
  %375 = call i64 @strlen(i8* %374) #11, !dbg !591
  %376 = sub i64 %373, %375, !dbg !592
  %377 = load i32, i32* %33, align 4, !dbg !593
  %378 = sext i32 %377 to i64, !dbg !593
  %379 = sub i64 %376, %378, !dbg !594
  %380 = call i32 (i8*, ...) @printf(i8* %360, i32 %362, i32 %364, i64 %367, i64 %368, i64 %379), !dbg !595
  %381 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !597
  %382 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0)) #9, !dbg !598
  call void @m_output(%struct._IO_FILE* %381, i8* %382), !dbg !599
  br label %383, !dbg !600

; <label>:383:                                    ; preds = %359, %356
  br label %393, !dbg !601

; <label>:384:                                    ; preds = %280
  %385 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i32 0, i32 0, !dbg !602
  %386 = call i32 @strncmp(i8* %385, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i64 7) #11, !dbg !605
  %387 = icmp eq i32 %386, 0, !dbg !606
  br i1 %387, label %388, label %390, !dbg !607

; <label>:388:                                    ; preds = %384
  %389 = call i8* @gettext(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.25, i32 0, i32 0)) #9, !dbg !608
  call void (i8*, ...) @notice(i8* %389), !dbg !610
  br label %390, !dbg !612

; <label>:390:                                    ; preds = %388, %384
  %391 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i32 0, i32 0)) #9, !dbg !613
  %392 = load i8*, i8** %5, align 8, !dbg !614
  call void (i8*, ...) @ohshit(i8* %391, i8* %392) #10, !dbg !615
  unreachable, !dbg !617

; <label>:393:                                    ; preds = %383
  br label %394

; <label>:394:                                    ; preds = %393, %279
  %395 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i32 0, i32 0, !dbg !618
  call void @m_pipe(i32* %395), !dbg !619
  %396 = call i32 @subproc_fork(), !dbg !620
  store i32 %396, i32* %18, align 4, !dbg !621
  %397 = load i32, i32* %18, align 4, !dbg !622
  %398 = icmp ne i32 %397, 0, !dbg !622
  br i1 %398, label %426, label %399, !dbg !624

; <label>:399:                                    ; preds = %394
  %400 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0, !dbg !625
  %401 = load i32, i32* %400, align 4, !dbg !625
  %402 = call i32 @close(i32 %401), !dbg !627
  %403 = load %struct.dpkg_ar*, %struct.dpkg_ar** %11, align 8, !dbg !628
  %404 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %403, i32 0, i32 4, !dbg !630
  %405 = load i32, i32* %404, align 8, !dbg !630
  %406 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1, !dbg !631
  %407 = load i32, i32* %406, align 4, !dbg !631
  %408 = load i64, i64* %15, align 8, !dbg !632
  %409 = call i64 @buffer_copy_IntInt(i32 %405, i32 0, i8* null, i32 4, i32 %407, i32 2, i64 %408, %struct.dpkg_error* %9), !dbg !633
  %410 = icmp slt i64 %409, 0, !dbg !634
  br i1 %410, label %411, label %418, !dbg !635

; <label>:411:                                    ; preds = %399
  %412 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.27, i32 0, i32 0)) #9, !dbg !636
  %413 = load %struct.dpkg_ar*, %struct.dpkg_ar** %11, align 8, !dbg !637
  %414 = getelementptr inbounds %struct.dpkg_ar, %struct.dpkg_ar* %413, i32 0, i32 0, !dbg !638
  %415 = load i8*, i8** %414, align 8, !dbg !638
  %416 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %9, i32 0, i32 2, !dbg !639
  %417 = load i8*, i8** %416, align 8, !dbg !639
  call void (i8*, ...) @ohshit(i8* %412, i8* %415, i8* %417) #10, !dbg !640
  unreachable, !dbg !642

; <label>:418:                                    ; preds = %399
  %419 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1, !dbg !643
  %420 = load i32, i32* %419, align 4, !dbg !643
  %421 = call i32 @close(i32 %420), !dbg !645
  %422 = icmp ne i32 %421, 0, !dbg !645
  br i1 %422, label %423, label %425, !dbg !646

; <label>:423:                                    ; preds = %418
  %424 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i32 0, i32 0)) #9, !dbg !647
  call void (i8*, ...) @ohshite(i8* %424) #10, !dbg !648
  unreachable, !dbg !650

; <label>:425:                                    ; preds = %418
  call void @exit(i32 0) #12, !dbg !651
  unreachable, !dbg !651

; <label>:426:                                    ; preds = %394
  %427 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1, !dbg !652
  %428 = load i32, i32* %427, align 4, !dbg !652
  %429 = call i32 @close(i32 %428), !dbg !653
  %430 = load i32, i32* %7, align 4, !dbg !654
  %431 = icmp ne i32 %430, 0, !dbg !654
  br i1 %431, label %432, label %436, !dbg !656

; <label>:432:                                    ; preds = %426
  %433 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i32 0, i32 0, !dbg !657
  call void @m_pipe(i32* %433), !dbg !659
  %434 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1, !dbg !660
  %435 = load i32, i32* %434, align 4, !dbg !660
  store i32 %435, i32* %23, align 4, !dbg !661
  br label %437, !dbg !662

; <label>:436:                                    ; preds = %426
  store i32 1, i32* %23, align 4, !dbg !663
  br label %437

; <label>:437:                                    ; preds = %436, %432
  %438 = call i32 @subproc_fork(), !dbg !665
  store i32 %438, i32* %19, align 4, !dbg !666
  %439 = load i32, i32* %19, align 4, !dbg !667
  %440 = icmp ne i32 %439, 0, !dbg !667
  br i1 %440, label %454, label %441, !dbg !669

; <label>:441:                                    ; preds = %437
  %442 = load i32, i32* %7, align 4, !dbg !670
  %443 = icmp ne i32 %442, 0, !dbg !670
  br i1 %443, label %444, label %448, !dbg !673

; <label>:444:                                    ; preds = %441
  %445 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0, !dbg !674
  %446 = load i32, i32* %445, align 4, !dbg !674
  %447 = call i32 @close(i32 %446), !dbg !675
  br label %448, !dbg !675

; <label>:448:                                    ; preds = %444, %441
  %449 = load i32, i32* %27, align 4, !dbg !676
  %450 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0, !dbg !677
  %451 = load i32, i32* %450, align 4, !dbg !677
  %452 = load i32, i32* %23, align 4, !dbg !678
  %453 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i32 0, i32 0)) #9, !dbg !679
  call void (i32, i32, i32, i8*, ...) @decompress_filter(i32 %449, i32 %451, i32 %452, i8* %453), !dbg !680
  call void @exit(i32 0) #12, !dbg !681
  unreachable, !dbg !681

; <label>:454:                                    ; preds = %437
  %455 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0, !dbg !682
  %456 = load i32, i32* %455, align 4, !dbg !682
  %457 = call i32 @close(i32 %456), !dbg !683
  %458 = load %struct.dpkg_ar*, %struct.dpkg_ar** %11, align 8, !dbg !684
  call void @dpkg_ar_close(%struct.dpkg_ar* %458), !dbg !685
  %459 = load i32, i32* %7, align 4, !dbg !686
  %460 = icmp ne i32 %459, 0, !dbg !686
  br i1 %460, label %461, label %465, !dbg !688

; <label>:461:                                    ; preds = %454
  %462 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1, !dbg !689
  %463 = load i32, i32* %462, align 4, !dbg !689
  %464 = call i32 @close(i32 %463), !dbg !691
  br label %465, !dbg !691

; <label>:465:                                    ; preds = %461, %454
  %466 = load i32, i32* %7, align 4, !dbg !692
  %467 = icmp ne i32 %466, 0, !dbg !692
  br i1 %467, label %468, label %546, !dbg !694

; <label>:468:                                    ; preds = %465
  %469 = call i32 @subproc_fork(), !dbg !695
  store i32 %469, i32* %20, align 4, !dbg !697
  %470 = load i32, i32* %20, align 4, !dbg !698
  %471 = icmp ne i32 %470, 0, !dbg !698
  br i1 %471, label %540, label %472, !dbg !700

; <label>:472:                                    ; preds = %468
  call void @llvm.dbg.declare(metadata %struct.command* %34, metadata !701, metadata !59), !dbg !712
  call void @command_init(%struct.command* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0)), !dbg !713
  call void @command_add_arg(%struct.command* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0)), !dbg !714
  %473 = load i32, i32* %7, align 4, !dbg !715
  %474 = and i32 %473, 1, !dbg !717
  %475 = icmp ne i32 %474, 0, !dbg !717
  br i1 %475, label %476, label %481, !dbg !718

; <label>:476:                                    ; preds = %472
  %477 = load i32, i32* %7, align 4, !dbg !719
  %478 = and i32 %477, 2, !dbg !721
  %479 = icmp ne i32 %478, 0, !dbg !721
  br i1 %479, label %480, label %481, !dbg !722

; <label>:480:                                    ; preds = %476
  call void @command_add_arg(%struct.command* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0)), !dbg !723
  br label %495, !dbg !723

; <label>:481:                                    ; preds = %476, %472
  %482 = load i32, i32* %7, align 4, !dbg !724
  %483 = and i32 %482, 2, !dbg !726
  %484 = icmp ne i32 %483, 0, !dbg !726
  br i1 %484, label %485, label %486, !dbg !727

; <label>:485:                                    ; preds = %481
  call void @command_add_arg(%struct.command* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0)), !dbg !728
  br label %494, !dbg !728

; <label>:486:                                    ; preds = %481
  %487 = load i32, i32* %7, align 4, !dbg !729
  %488 = and i32 %487, 1, !dbg !731
  %489 = icmp ne i32 %488, 0, !dbg !731
  br i1 %489, label %490, label %491, !dbg !732

; <label>:490:                                    ; preds = %486
  call void @command_add_arg(%struct.command* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0)), !dbg !733
  br label %493, !dbg !733

; <label>:491:                                    ; preds = %486
  %492 = load i32, i32* %7, align 4, !dbg !734
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i32 322, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.extracthalf, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.35, i32 0, i32 0), i32 %492) #10, !dbg !735
  unreachable, !dbg !735

; <label>:493:                                    ; preds = %490
  br label %494

; <label>:494:                                    ; preds = %493, %485
  br label %495

; <label>:495:                                    ; preds = %494, %480
  %496 = load i32, i32* %7, align 4, !dbg !736
  %497 = and i32 %496, 4, !dbg !738
  %498 = icmp ne i32 %497, 0, !dbg !738
  br i1 %498, label %499, label %500, !dbg !739

; <label>:499:                                    ; preds = %495
  call void @command_add_arg(%struct.command* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0)), !dbg !740
  br label %500, !dbg !740

; <label>:500:                                    ; preds = %499, %495
  %501 = load i32, i32* %7, align 4, !dbg !741
  %502 = and i32 %501, 8, !dbg !743
  %503 = icmp ne i32 %502, 0, !dbg !743
  br i1 %503, label %504, label %505, !dbg !744

; <label>:504:                                    ; preds = %500
  call void @command_add_arg(%struct.command* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0)), !dbg !745
  br label %505, !dbg !745

; <label>:505:                                    ; preds = %504, %500
  call void @command_add_arg(%struct.command* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0)), !dbg !746
  call void @command_add_arg(%struct.command* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0)), !dbg !747
  call void @command_add_arg(%struct.command* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i32 0, i32 0)), !dbg !748
  %506 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0, !dbg !749
  %507 = load i32, i32* %506, align 4, !dbg !749
  call void @m_dup2(i32 %507, i32 0), !dbg !750
  %508 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0, !dbg !751
  %509 = load i32, i32* %508, align 4, !dbg !751
  %510 = call i32 @close(i32 %509), !dbg !752
  %511 = call i32 @unsetenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0)) #9, !dbg !753
  %512 = load i8*, i8** %6, align 8, !dbg !754
  %513 = icmp ne i8* %512, null, !dbg !754
  br i1 %513, label %514, label %539, !dbg !756

; <label>:514:                                    ; preds = %505
  %515 = load i8*, i8** %6, align 8, !dbg !757
  %516 = call i32 @mkdir(i8* %515, i32 511) #9, !dbg !760
  %517 = icmp ne i32 %516, 0, !dbg !761
  br i1 %517, label %518, label %532, !dbg !762

; <label>:518:                                    ; preds = %514
  %519 = call i32* @__errno_location() #1, !dbg !763
  %520 = load i32, i32* %519, align 4, !dbg !766
  %521 = icmp ne i32 %520, 17, !dbg !767
  br i1 %521, label %522, label %524, !dbg !768

; <label>:522:                                    ; preds = %518
  %523 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i32 0, i32 0)) #9, !dbg !769
  call void (i8*, ...) @ohshite(i8* %523) #10, !dbg !770
  unreachable, !dbg !772

; <label>:524:                                    ; preds = %518
  %525 = load i32, i32* %7, align 4, !dbg !773
  %526 = and i32 %525, 16, !dbg !775
  %527 = icmp ne i32 %526, 0, !dbg !775
  br i1 %527, label %528, label %531, !dbg !776

; <label>:528:                                    ; preds = %524
  %529 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.43, i32 0, i32 0)) #9, !dbg !777
  %530 = load i8*, i8** %6, align 8, !dbg !778
  call void (i8*, ...) @ohshite(i8* %529, i8* %530) #10, !dbg !779
  unreachable, !dbg !781

; <label>:531:                                    ; preds = %524
  br label %532, !dbg !782

; <label>:532:                                    ; preds = %531, %514
  %533 = load i8*, i8** %6, align 8, !dbg !783
  %534 = call i32 @chdir(i8* %533) #9, !dbg !785
  %535 = icmp ne i32 %534, 0, !dbg !786
  br i1 %535, label %536, label %538, !dbg !787

; <label>:536:                                    ; preds = %532
  %537 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i32 0, i32 0)) #9, !dbg !788
  call void (i8*, ...) @ohshite(i8* %537) #10, !dbg !789
  unreachable, !dbg !791

; <label>:538:                                    ; preds = %532
  br label %539, !dbg !792

; <label>:539:                                    ; preds = %538, %505
  call void @command_exec(%struct.command* %34) #10, !dbg !793
  unreachable, !dbg !793

; <label>:540:                                    ; preds = %468
  %541 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0, !dbg !794
  %542 = load i32, i32* %541, align 4, !dbg !794
  %543 = call i32 @close(i32 %542), !dbg !795
  %544 = load i32, i32* %20, align 4, !dbg !796
  %545 = call i32 @subproc_reap(i32 %544, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i32 0), !dbg !797
  br label %546, !dbg !798

; <label>:546:                                    ; preds = %540, %465
  %547 = load i32, i32* %19, align 4, !dbg !799
  %548 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0)) #9, !dbg !800
  %549 = call i32 @subproc_reap(i32 %547, i8* %548, i32 2), !dbg !801
  %550 = load i32, i32* %18, align 4, !dbg !803
  %551 = icmp ne i32 %550, -1, !dbg !805
  br i1 %551, label %552, label %556, !dbg !806

; <label>:552:                                    ; preds = %546
  %553 = load i32, i32* %18, align 4, !dbg !807
  %554 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0)) #9, !dbg !808
  %555 = call i32 @subproc_reap(i32 %553, i8* %554, i32 0), !dbg !809
  br label %556, !dbg !811

; <label>:556:                                    ; preds = %552, %546
  %557 = getelementptr inbounds %struct.deb_version, %struct.deb_version* %13, i32 0, i32 0, !dbg !812
  %558 = load i32, i32* %557, align 4, !dbg !812
  %559 = icmp eq i32 %558, 0, !dbg !814
  br i1 %559, label %560, label %595, !dbg !815

; <label>:560:                                    ; preds = %556
  %561 = load i32, i32* %8, align 4, !dbg !816
  %562 = icmp ne i32 %561, 0, !dbg !816
  br i1 %562, label %563, label %595, !dbg !818

; <label>:563:                                    ; preds = %560
  br label %564, !dbg !819

; <label>:564:                                    ; preds = %575, %563
  %565 = getelementptr inbounds %struct.deb_version, %struct.deb_version* %13, i32 0, i32 1, !dbg !821
  %566 = load i32, i32* %565, align 4, !dbg !821
  %567 = icmp ne i32 %566, 0, !dbg !823
  br i1 %567, label %568, label %573, !dbg !824

; <label>:568:                                    ; preds = %564
  %569 = getelementptr inbounds %struct.deb_version, %struct.deb_version* %13, i32 0, i32 1, !dbg !825
  %570 = load i32, i32* %569, align 4, !dbg !825
  %571 = srem i32 %570, 10, !dbg !827
  %572 = icmp eq i32 %571, 0, !dbg !828
  br label %573

; <label>:573:                                    ; preds = %568, %564
  %574 = phi i1 [ false, %564 ], [ %572, %568 ]
  br i1 %574, label %575, label %579, !dbg !829

; <label>:575:                                    ; preds = %573
  %576 = getelementptr inbounds %struct.deb_version, %struct.deb_version* %13, i32 0, i32 1, !dbg !831
  %577 = load i32, i32* %576, align 4, !dbg !832
  %578 = sdiv i32 %577, 10, !dbg !832
  store i32 %578, i32* %576, align 4, !dbg !832
  br label %564, !dbg !833, !llvm.loop !835

; <label>:579:                                    ; preds = %573
  %580 = getelementptr inbounds %struct.deb_version, %struct.deb_version* %13, i32 0, i32 1, !dbg !836
  %581 = load i32, i32* %580, align 4, !dbg !836
  %582 = icmp eq i32 %581, 931, !dbg !838
  br i1 %582, label %583, label %584, !dbg !839

; <label>:583:                                    ; preds = %579
  call void @movecontrolfiles(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0)), !dbg !840
  br label %594, !dbg !840

; <label>:584:                                    ; preds = %579
  %585 = getelementptr inbounds %struct.deb_version, %struct.deb_version* %13, i32 0, i32 1, !dbg !841
  %586 = load i32, i32* %585, align 4, !dbg !841
  %587 = icmp eq i32 %586, 932, !dbg !843
  br i1 %587, label %592, label %588, !dbg !844

; <label>:588:                                    ; preds = %584
  %589 = getelementptr inbounds %struct.deb_version, %struct.deb_version* %13, i32 0, i32 1, !dbg !845
  %590 = load i32, i32* %589, align 4, !dbg !845
  %591 = icmp eq i32 %590, 933, !dbg !847
  br i1 %591, label %592, label %593, !dbg !848

; <label>:592:                                    ; preds = %588, %584
  call void @movecontrolfiles(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0)), !dbg !849
  br label %593, !dbg !849

; <label>:593:                                    ; preds = %592, %588
  br label %594

; <label>:594:                                    ; preds = %593, %583
  br label %595, !dbg !850

; <label>:595:                                    ; preds = %594, %560, %556
  ret void, !dbg !851
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct.dpkg_ar* @dpkg_ar_open(i8*) #2

; Function Attrs: nounwind uwtable
define internal i64 @read_line(i32, i8*, i64, i64) #0 !dbg !852 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !858, metadata !59), !dbg !859
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !860, metadata !59), !dbg !861
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !862, metadata !59), !dbg !863
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !864, metadata !59), !dbg !865
  call void @llvm.dbg.declare(metadata i64* %10, metadata !866, metadata !59), !dbg !867
  store i64 0, i64* %10, align 8, !dbg !867
  call void @llvm.dbg.declare(metadata i64* %11, metadata !868, metadata !59), !dbg !869
  %14 = load i64, i64* %8, align 8, !dbg !870
  store i64 %14, i64* %11, align 8, !dbg !869
  br label %15, !dbg !871

; <label>:15:                                     ; preds = %45, %4
  %16 = load i64, i64* %10, align 8, !dbg !872
  %17 = load i64, i64* %9, align 8, !dbg !874
  %18 = icmp slt i64 %16, %17, !dbg !875
  br i1 %18, label %19, label %46, !dbg !876

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.declare(metadata i64* %12, metadata !877, metadata !59), !dbg !879
  call void @llvm.dbg.declare(metadata i8** %13, metadata !880, metadata !59), !dbg !881
  %20 = load i32, i32* %6, align 4, !dbg !882
  %21 = load i8*, i8** %7, align 8, !dbg !883
  %22 = load i64, i64* %10, align 8, !dbg !884
  %23 = getelementptr inbounds i8, i8* %21, i64 %22, !dbg !885
  %24 = load i64, i64* %11, align 8, !dbg !886
  %25 = call i64 @fd_read(i32 %20, i8* %23, i64 %24), !dbg !887
  store i64 %25, i64* %12, align 8, !dbg !888
  %26 = load i64, i64* %12, align 8, !dbg !889
  %27 = icmp sle i64 %26, 0, !dbg !891
  br i1 %27, label %28, label %30, !dbg !892

; <label>:28:                                     ; preds = %19
  %29 = load i64, i64* %12, align 8, !dbg !893
  store i64 %29, i64* %5, align 8, !dbg !894
  br label %51, !dbg !894

; <label>:30:                                     ; preds = %19
  %31 = load i8*, i8** %7, align 8, !dbg !895
  %32 = load i64, i64* %10, align 8, !dbg !896
  %33 = getelementptr inbounds i8, i8* %31, i64 %32, !dbg !897
  %34 = load i64, i64* %12, align 8, !dbg !898
  %35 = call i8* @memchr(i8* %33, i32 10, i64 %34) #11, !dbg !899
  store i8* %35, i8** %13, align 8, !dbg !900
  %36 = load i64, i64* %12, align 8, !dbg !901
  %37 = load i64, i64* %10, align 8, !dbg !902
  %38 = add nsw i64 %37, %36, !dbg !902
  store i64 %38, i64* %10, align 8, !dbg !902
  %39 = load i8*, i8** %13, align 8, !dbg !903
  %40 = icmp ne i8* %39, null, !dbg !905
  br i1 %40, label %41, label %45, !dbg !906

; <label>:41:                                     ; preds = %30
  %42 = load i8*, i8** %13, align 8, !dbg !907
  %43 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !907
  store i8 0, i8* %43, align 1, !dbg !909
  %44 = load i64, i64* %10, align 8, !dbg !910
  store i64 %44, i64* %5, align 8, !dbg !911
  br label %51, !dbg !911

; <label>:45:                                     ; preds = %30
  store i64 1, i64* %11, align 8, !dbg !912
  br label %15, !dbg !913, !llvm.loop !915

; <label>:46:                                     ; preds = %15
  %47 = load i64, i64* %10, align 8, !dbg !916
  %48 = load i8*, i8** %7, align 8, !dbg !917
  %49 = getelementptr inbounds i8, i8* %48, i64 %47, !dbg !917
  store i8 0, i8* %49, align 1, !dbg !918
  %50 = load i64, i64* %10, align 8, !dbg !919
  store i64 %50, i64* %5, align 8, !dbg !920
  br label %51, !dbg !920

; <label>:51:                                     ; preds = %46, %41, %28
  %52 = load i64, i64* %5, align 8, !dbg !921
  ret i64 %52, !dbg !921
}

; Function Attrs: noreturn nounwind uwtable
define internal void @read_fail(i32, i8*, i8*) #3 !dbg !922 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !925, metadata !59), !dbg !926
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !927, metadata !59), !dbg !928
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !929, metadata !59), !dbg !930
  %7 = load i32, i32* %4, align 4, !dbg !931
  %8 = icmp sge i32 %7, 0, !dbg !933
  br i1 %8, label %9, label %13, !dbg !934

; <label>:9:                                      ; preds = %3
  %10 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.56, i32 0, i32 0)) #9, !dbg !935
  %11 = load i8*, i8** %6, align 8, !dbg !936
  %12 = load i8*, i8** %5, align 8, !dbg !937
  call void (i8*, ...) @ohshit(i8* %10, i8* %11, i8* %12) #10, !dbg !938
  unreachable, !dbg !940

; <label>:13:                                     ; preds = %3
  %14 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.57, i32 0, i32 0)) #9, !dbg !941
  %15 = load i8*, i8** %6, align 8, !dbg !942
  %16 = load i8*, i8** %5, align 8, !dbg !943
  call void (i8*, ...) @ohshite(i8* %14, i8* %15, i8* %16) #10, !dbg !944
  unreachable, !dbg !945
                                                  ; No predecessors!
  ret void, !dbg !946
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare i64 @fd_read(i32, i8*, i64) #2

declare void @dpkg_ar_normalize_name(%struct.dpkg_ar_hdr*) #2

declare zeroext i1 @dpkg_ar_member_is_illegal(%struct.dpkg_ar_hdr*) #2

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #6

declare i64 @dpkg_ar_member_get_size(%struct.dpkg_ar*, %struct.dpkg_ar_hdr*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

declare i8* @m_malloc(i64) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

declare i8* @deb_version_parse(%struct.deb_version*, i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #4

declare i64 @buffer_skip_Int(i32, i32, i64, %struct.dpkg_error*) #2

declare i32 @compressor_find_by_extension(i8*) #2

declare i32 @printf(i8*, ...) #2

declare void @m_output(%struct._IO_FILE*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare i32 @sscanf(i8*, i8*, ...) #4

declare void @notice(i8*, ...) #2

declare void @m_pipe(i32*) #2

declare i32 @subproc_fork() #2

declare i32 @close(i32) #2

declare i64 @buffer_copy_IntInt(i32, i32, i8*, i32, i32, i32, i64, %struct.dpkg_error*) #2

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32) #7

declare void @decompress_filter(i32, i32, i32, i8*, ...) #2

declare void @dpkg_ar_close(%struct.dpkg_ar*) #2

declare void @command_init(%struct.command*, i8*, i8*) #2

declare void @command_add_arg(%struct.command*, i8*) #2

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #6

declare void @m_dup2(i32, i32) #2

; Function Attrs: nounwind
declare i32 @unsetenv(i8*) #4

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #8

; Function Attrs: nounwind
declare i32 @chdir(i8*) #4

; Function Attrs: noreturn
declare void @command_exec(%struct.command*) #6

declare i32 @subproc_reap(i32, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @movecontrolfiles(i8*) #0 !dbg !947 {
  %2 = alloca i8*, align 8
  %3 = alloca [200 x i8], align 16
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !950, metadata !59), !dbg !951
  call void @llvm.dbg.declare(metadata [200 x i8]* %3, metadata !952, metadata !59), !dbg !956
  call void @llvm.dbg.declare(metadata i32* %4, metadata !957, metadata !59), !dbg !958
  %5 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i32 0, i32 0, !dbg !959
  %6 = load i8*, i8** %2, align 8, !dbg !960
  %7 = load i8*, i8** %2, align 8, !dbg !961
  %8 = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.58, i32 0, i32 0), i8* %6, i8* %7) #9, !dbg !962
  %9 = call i32 @subproc_fork(), !dbg !963
  store i32 %9, i32* %4, align 4, !dbg !964
  %10 = load i32, i32* %4, align 4, !dbg !965
  %11 = icmp eq i32 %10, 0, !dbg !967
  br i1 %11, label %12, label %15, !dbg !968

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i32 0, i32 0, !dbg !969
  %14 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.59, i32 0, i32 0)) #9, !dbg !971
  call void @command_shell(i8* %13, i8* %14) #10, !dbg !972
  unreachable, !dbg !974

; <label>:15:                                     ; preds = %1
  %16 = load i32, i32* %4, align 4, !dbg !975
  %17 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.59, i32 0, i32 0)) #9, !dbg !976
  %18 = call i32 @subproc_reap(i32 %16, i8* %17, i32 0), !dbg !977
  ret void, !dbg !979
}

; Function Attrs: nounwind uwtable
define i32 @do_ctrltarfile(i8**) #0 !dbg !980 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !985, metadata !59), !dbg !986
  call void @llvm.dbg.declare(metadata i8** %3, metadata !987, metadata !59), !dbg !988
  %4 = load i8**, i8*** %2, align 8, !dbg !989
  %5 = getelementptr inbounds i8*, i8** %4, i32 1, !dbg !989
  store i8** %5, i8*** %2, align 8, !dbg !989
  %6 = load i8*, i8** %4, align 8, !dbg !990
  store i8* %6, i8** %3, align 8, !dbg !991
  %7 = load i8*, i8** %3, align 8, !dbg !992
  %8 = icmp eq i8* %7, null, !dbg !994
  br i1 %8, label %9, label %14, !dbg !995

; <label>:9:                                      ; preds = %1
  %10 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.49, i32 0, i32 0)) #9, !dbg !996
  %11 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !997
  %12 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %11, i32 0, i32 0, !dbg !998
  %13 = load i8*, i8** %12, align 8, !dbg !998
  call void (i8*, ...) @badusage(i8* %10, i8* %13) #10, !dbg !999
  unreachable, !dbg !1001

; <label>:14:                                     ; preds = %1
  %15 = load i8**, i8*** %2, align 8, !dbg !1002
  %16 = load i8*, i8** %15, align 8, !dbg !1004
  %17 = icmp ne i8* %16, null, !dbg !1004
  br i1 %17, label %18, label %23, !dbg !1005

; <label>:18:                                     ; preds = %14
  %19 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.50, i32 0, i32 0)) #9, !dbg !1006
  %20 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1007
  %21 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %20, i32 0, i32 0, !dbg !1008
  %22 = load i8*, i8** %21, align 8, !dbg !1008
  call void (i8*, ...) @badusage(i8* %19, i8* %22) #10, !dbg !1009
  unreachable, !dbg !1011

; <label>:23:                                     ; preds = %14
  %24 = load i8*, i8** %3, align 8, !dbg !1012
  call void @extracthalf(i8* %24, i8* null, i32 0, i32 1), !dbg !1013
  ret i32 0, !dbg !1014
}

; Function Attrs: noreturn
declare void @badusage(i8*, ...) #6

; Function Attrs: nounwind uwtable
define i32 @do_fsystarfile(i8**) #0 !dbg !1015 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1016, metadata !59), !dbg !1017
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1018, metadata !59), !dbg !1019
  %4 = load i8**, i8*** %2, align 8, !dbg !1020
  %5 = getelementptr inbounds i8*, i8** %4, i32 1, !dbg !1020
  store i8** %5, i8*** %2, align 8, !dbg !1020
  %6 = load i8*, i8** %4, align 8, !dbg !1021
  store i8* %6, i8** %3, align 8, !dbg !1022
  %7 = load i8*, i8** %3, align 8, !dbg !1023
  %8 = icmp eq i8* %7, null, !dbg !1025
  br i1 %8, label %9, label %14, !dbg !1026

; <label>:9:                                      ; preds = %1
  %10 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.49, i32 0, i32 0)) #9, !dbg !1027
  %11 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1028
  %12 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %11, i32 0, i32 0, !dbg !1029
  %13 = load i8*, i8** %12, align 8, !dbg !1029
  call void (i8*, ...) @badusage(i8* %10, i8* %13) #10, !dbg !1030
  unreachable, !dbg !1032

; <label>:14:                                     ; preds = %1
  %15 = load i8**, i8*** %2, align 8, !dbg !1033
  %16 = load i8*, i8** %15, align 8, !dbg !1035
  %17 = icmp ne i8* %16, null, !dbg !1035
  br i1 %17, label %18, label %23, !dbg !1036

; <label>:18:                                     ; preds = %14
  %19 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.50, i32 0, i32 0)) #9, !dbg !1037
  %20 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1038
  %21 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %20, i32 0, i32 0, !dbg !1039
  %22 = load i8*, i8** %21, align 8, !dbg !1039
  call void (i8*, ...) @badusage(i8* %19, i8* %22) #10, !dbg !1040
  unreachable, !dbg !1042

; <label>:23:                                     ; preds = %14
  %24 = load i8*, i8** %3, align 8, !dbg !1043
  call void @extracthalf(i8* %24, i8* null, i32 0, i32 0), !dbg !1044
  ret i32 0, !dbg !1045
}

; Function Attrs: nounwind uwtable
define i32 @do_control(i8**) #0 !dbg !1046 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1047, metadata !59), !dbg !1048
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1049, metadata !59), !dbg !1050
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1051, metadata !59), !dbg !1052
  %5 = load i8**, i8*** %2, align 8, !dbg !1053
  %6 = getelementptr inbounds i8*, i8** %5, i32 1, !dbg !1053
  store i8** %6, i8*** %2, align 8, !dbg !1053
  %7 = load i8*, i8** %5, align 8, !dbg !1054
  store i8* %7, i8** %3, align 8, !dbg !1055
  %8 = load i8*, i8** %3, align 8, !dbg !1056
  %9 = icmp eq i8* %8, null, !dbg !1058
  br i1 %9, label %10, label %15, !dbg !1059

; <label>:10:                                     ; preds = %1
  %11 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.49, i32 0, i32 0)) #9, !dbg !1060
  %12 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1061
  %13 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %12, i32 0, i32 0, !dbg !1062
  %14 = load i8*, i8** %13, align 8, !dbg !1062
  call void (i8*, ...) @badusage(i8* %11, i8* %14) #10, !dbg !1063
  unreachable, !dbg !1065

; <label>:15:                                     ; preds = %1
  %16 = load i8**, i8*** %2, align 8, !dbg !1066
  %17 = getelementptr inbounds i8*, i8** %16, i32 1, !dbg !1066
  store i8** %17, i8*** %2, align 8, !dbg !1066
  %18 = load i8*, i8** %16, align 8, !dbg !1067
  store i8* %18, i8** %4, align 8, !dbg !1068
  %19 = load i8*, i8** %4, align 8, !dbg !1069
  %20 = icmp eq i8* %19, null, !dbg !1071
  br i1 %20, label %21, label %22, !dbg !1072

; <label>:21:                                     ; preds = %15
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8** %4, align 8, !dbg !1073
  br label %32, !dbg !1074

; <label>:22:                                     ; preds = %15
  %23 = load i8**, i8*** %2, align 8, !dbg !1075
  %24 = load i8*, i8** %23, align 8, !dbg !1077
  %25 = icmp ne i8* %24, null, !dbg !1077
  br i1 %25, label %26, label %31, !dbg !1078

; <label>:26:                                     ; preds = %22
  %27 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.51, i32 0, i32 0)) #9, !dbg !1079
  %28 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1080
  %29 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %28, i32 0, i32 0, !dbg !1081
  %30 = load i8*, i8** %29, align 8, !dbg !1081
  call void (i8*, ...) @badusage(i8* %27, i8* %30) #10, !dbg !1082
  unreachable, !dbg !1084

; <label>:31:                                     ; preds = %22
  br label %32

; <label>:32:                                     ; preds = %31, %21
  %33 = load i8*, i8** %3, align 8, !dbg !1085
  %34 = load i8*, i8** %4, align 8, !dbg !1086
  call void @extracthalf(i8* %33, i8* %34, i32 2, i32 1), !dbg !1087
  ret i32 0, !dbg !1088
}

; Function Attrs: nounwind uwtable
define i32 @do_extract(i8**) #0 !dbg !1089 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1090, metadata !59), !dbg !1091
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1092, metadata !59), !dbg !1093
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1094, metadata !59), !dbg !1095
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1096, metadata !59), !dbg !1097
  store i32 6, i32* %5, align 4, !dbg !1097
  %6 = load i32, i32* @opt_verbose, align 4, !dbg !1098
  %7 = icmp ne i32 %6, 0, !dbg !1098
  br i1 %7, label %8, label %11, !dbg !1100

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %5, align 4, !dbg !1101
  %10 = or i32 %9, 1, !dbg !1101
  store i32 %10, i32* %5, align 4, !dbg !1101
  br label %11, !dbg !1102

; <label>:11:                                     ; preds = %8, %1
  %12 = load i8**, i8*** %2, align 8, !dbg !1103
  %13 = getelementptr inbounds i8*, i8** %12, i32 1, !dbg !1103
  store i8** %13, i8*** %2, align 8, !dbg !1103
  %14 = load i8*, i8** %12, align 8, !dbg !1104
  store i8* %14, i8** %3, align 8, !dbg !1105
  %15 = load i8*, i8** %3, align 8, !dbg !1106
  %16 = icmp eq i8* %15, null, !dbg !1108
  br i1 %16, label %17, label %22, !dbg !1109

; <label>:17:                                     ; preds = %11
  %18 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.52, i32 0, i32 0)) #9, !dbg !1110
  %19 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1111
  %20 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %19, i32 0, i32 0, !dbg !1112
  %21 = load i8*, i8** %20, align 8, !dbg !1112
  call void (i8*, ...) @badusage(i8* %18, i8* %21) #10, !dbg !1113
  unreachable, !dbg !1115

; <label>:22:                                     ; preds = %11
  %23 = load i8**, i8*** %2, align 8, !dbg !1116
  %24 = getelementptr inbounds i8*, i8** %23, i32 1, !dbg !1116
  store i8** %24, i8*** %2, align 8, !dbg !1116
  %25 = load i8*, i8** %23, align 8, !dbg !1117
  store i8* %25, i8** %4, align 8, !dbg !1118
  %26 = load i8*, i8** %4, align 8, !dbg !1119
  %27 = icmp eq i8* %26, null, !dbg !1121
  br i1 %27, label %28, label %33, !dbg !1122

; <label>:28:                                     ; preds = %22
  %29 = call i8* @gettext(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.53, i32 0, i32 0)) #9, !dbg !1123
  %30 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1124
  %31 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %30, i32 0, i32 0, !dbg !1125
  %32 = load i8*, i8** %31, align 8, !dbg !1125
  call void (i8*, ...) @badusage(i8* %29, i8* %32) #10, !dbg !1126
  unreachable, !dbg !1128

; <label>:33:                                     ; preds = %22
  %34 = load i8**, i8*** %2, align 8, !dbg !1129
  %35 = load i8*, i8** %34, align 8, !dbg !1131
  %36 = icmp ne i8* %35, null, !dbg !1131
  br i1 %36, label %37, label %42, !dbg !1132

; <label>:37:                                     ; preds = %33
  %38 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.51, i32 0, i32 0)) #9, !dbg !1133
  %39 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1134
  %40 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %39, i32 0, i32 0, !dbg !1135
  %41 = load i8*, i8** %40, align 8, !dbg !1135
  call void (i8*, ...) @badusage(i8* %38, i8* %41) #10, !dbg !1136
  unreachable, !dbg !1138

; <label>:42:                                     ; preds = %33
  br label %43

; <label>:43:                                     ; preds = %42
  %44 = load i8*, i8** %3, align 8, !dbg !1139
  %45 = load i8*, i8** %4, align 8, !dbg !1140
  %46 = load i32, i32* %5, align 4, !dbg !1141
  call void @extracthalf(i8* %44, i8* %45, i32 %46, i32 0), !dbg !1142
  ret i32 0, !dbg !1143
}

; Function Attrs: nounwind uwtable
define i32 @do_vextract(i8**) #0 !dbg !1144 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1145, metadata !59), !dbg !1146
  store i32 1, i32* @opt_verbose, align 4, !dbg !1147
  %3 = load i8**, i8*** %2, align 8, !dbg !1148
  %4 = call i32 @do_extract(i8** %3), !dbg !1149
  ret i32 %4, !dbg !1150
}

; Function Attrs: nounwind uwtable
define i32 @do_raw_extract(i8**) #0 !dbg !1151 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1152, metadata !59), !dbg !1153
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1154, metadata !59), !dbg !1155
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1156, metadata !59), !dbg !1157
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1158, metadata !59), !dbg !1159
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1160, metadata !59), !dbg !1161
  %7 = load i8**, i8*** %2, align 8, !dbg !1162
  %8 = getelementptr inbounds i8*, i8** %7, i32 1, !dbg !1162
  store i8** %8, i8*** %2, align 8, !dbg !1162
  %9 = load i8*, i8** %7, align 8, !dbg !1163
  store i8* %9, i8** %4, align 8, !dbg !1164
  %10 = load i8*, i8** %4, align 8, !dbg !1165
  %11 = icmp eq i8* %10, null, !dbg !1167
  br i1 %11, label %12, label %17, !dbg !1168

; <label>:12:                                     ; preds = %1
  %13 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.52, i32 0, i32 0)) #9, !dbg !1169
  %14 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1170
  %15 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %14, i32 0, i32 0, !dbg !1171
  %16 = load i8*, i8** %15, align 8, !dbg !1171
  call void (i8*, ...) @badusage(i8* %13, i8* %16) #10, !dbg !1172
  unreachable, !dbg !1174

; <label>:17:                                     ; preds = %1
  %18 = load i8*, i8** %4, align 8, !dbg !1175
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0)) #11, !dbg !1177
  %20 = icmp eq i32 %19, 0, !dbg !1178
  br i1 %20, label %21, label %26, !dbg !1179

; <label>:21:                                     ; preds = %17
  %22 = call i8* @gettext(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.54, i32 0, i32 0)) #9, !dbg !1180
  %23 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1181
  %24 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %23, i32 0, i32 0, !dbg !1182
  %25 = load i8*, i8** %24, align 8, !dbg !1182
  call void (i8*, ...) @badusage(i8* %22, i8* %25) #10, !dbg !1183
  unreachable, !dbg !1185

; <label>:26:                                     ; preds = %17
  br label %27

; <label>:27:                                     ; preds = %26
  %28 = load i8**, i8*** %2, align 8, !dbg !1186
  %29 = getelementptr inbounds i8*, i8** %28, i32 1, !dbg !1186
  store i8** %29, i8*** %2, align 8, !dbg !1186
  %30 = load i8*, i8** %28, align 8, !dbg !1187
  store i8* %30, i8** %5, align 8, !dbg !1188
  %31 = load i8*, i8** %5, align 8, !dbg !1189
  %32 = icmp eq i8* %31, null, !dbg !1191
  br i1 %32, label %33, label %38, !dbg !1192

; <label>:33:                                     ; preds = %27
  %34 = call i8* @gettext(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.53, i32 0, i32 0)) #9, !dbg !1193
  %35 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1194
  %36 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %35, i32 0, i32 0, !dbg !1195
  %37 = load i8*, i8** %36, align 8, !dbg !1195
  call void (i8*, ...) @badusage(i8* %34, i8* %37) #10, !dbg !1196
  unreachable, !dbg !1198

; <label>:38:                                     ; preds = %27
  %39 = load i8**, i8*** %2, align 8, !dbg !1199
  %40 = load i8*, i8** %39, align 8, !dbg !1201
  %41 = icmp ne i8* %40, null, !dbg !1201
  br i1 %41, label %42, label %47, !dbg !1202

; <label>:42:                                     ; preds = %38
  %43 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.51, i32 0, i32 0)) #9, !dbg !1203
  %44 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !1204
  %45 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %44, i32 0, i32 0, !dbg !1205
  %46 = load i8*, i8** %45, align 8, !dbg !1205
  call void (i8*, ...) @badusage(i8* %43, i8* %46) #10, !dbg !1206
  unreachable, !dbg !1208

; <label>:47:                                     ; preds = %38
  br label %48

; <label>:48:                                     ; preds = %47
  %49 = load i8*, i8** %5, align 8, !dbg !1209
  %50 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0)), !dbg !1210
  store i8* %50, i8** %6, align 8, !dbg !1211
  store i32 6, i32* %3, align 4, !dbg !1212
  %51 = load i32, i32* @opt_verbose, align 4, !dbg !1213
  %52 = icmp ne i32 %51, 0, !dbg !1213
  br i1 %52, label %53, label %56, !dbg !1215

; <label>:53:                                     ; preds = %48
  %54 = load i32, i32* %3, align 4, !dbg !1216
  %55 = or i32 %54, 1, !dbg !1216
  store i32 %55, i32* %3, align 4, !dbg !1216
  br label %56, !dbg !1217

; <label>:56:                                     ; preds = %53, %48
  %57 = load i8*, i8** %4, align 8, !dbg !1218
  %58 = load i8*, i8** %5, align 8, !dbg !1219
  %59 = load i32, i32* %3, align 4, !dbg !1220
  call void @extracthalf(i8* %57, i8* %58, i32 %59, i32 0), !dbg !1221
  %60 = load i8*, i8** %4, align 8, !dbg !1222
  %61 = load i8*, i8** %6, align 8, !dbg !1223
  call void @extracthalf(i8* %60, i8* %61, i32 18, i32 1), !dbg !1224
  %62 = load i8*, i8** %6, align 8, !dbg !1225
  call void @free(i8* %62) #9, !dbg !1226
  ret i32 0, !dbg !1227
}

declare i8* @str_fmt(i8*, ...) #2

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #5

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: noreturn
declare void @command_shell(i8*, i8*) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!47, !48}
!llvm.ident = !{!49}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !36)
!1 = !DIFile(filename: "[inter]dpkg-deb--extract.o.i", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!2 = !{!3, !12, !18, !27}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_tar_options", file: !4, line: 46, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "dpkg-deb.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!5 = !{!6, !7, !8, !9, !10, !11}
!6 = !DIEnumerator(name: "DPKG_TAR_PASSTHROUGH", value: 0)
!7 = !DIEnumerator(name: "DPKG_TAR_LIST", value: 1)
!8 = !DIEnumerator(name: "DPKG_TAR_EXTRACT", value: 2)
!9 = !DIEnumerator(name: "DPKG_TAR_PERMS", value: 4)
!10 = !DIEnumerator(name: "DPKG_TAR_NOMTIME", value: 8)
!11 = !DIEnumerator(name: "DPKG_TAR_CREATE_DIR", value: 16)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !13, line: 36, size: 32, align: 32, elements: !14)
!13 = !DIFile(filename: "../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!16 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!17 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "compressor_type", file: !19, line: 38, size: 32, align: 32, elements: !20)
!19 = !DIFile(filename: "../lib/dpkg/compress.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!20 = !{!21, !22, !23, !24, !25, !26}
!21 = !DIEnumerator(name: "COMPRESSOR_TYPE_UNKNOWN", value: -1)
!22 = !DIEnumerator(name: "COMPRESSOR_TYPE_NONE", value: 0)
!23 = !DIEnumerator(name: "COMPRESSOR_TYPE_GZIP", value: 1)
!24 = !DIEnumerator(name: "COMPRESSOR_TYPE_XZ", value: 2)
!25 = !DIEnumerator(name: "COMPRESSOR_TYPE_BZIP2", value: 3)
!26 = !DIEnumerator(name: "COMPRESSOR_TYPE_LZMA", value: 4)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "subproc_flags", file: !28, line: 36, size: 32, align: 32, elements: !29)
!28 = !DIFile(filename: "../lib/dpkg/subproc.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!29 = !{!30, !31, !32, !33, !34, !35}
!30 = !DIEnumerator(name: "SUBPROC_NORMAL", value: 0)
!31 = !DIEnumerator(name: "SUBPROC_WARN", value: 1)
!32 = !DIEnumerator(name: "SUBPROC_NOPIPE", value: 2)
!33 = !DIEnumerator(name: "SUBPROC_NOCHECK", value: 4)
!34 = !DIEnumerator(name: "SUBPROC_RETERROR", value: 8)
!35 = !DIEnumerator(name: "SUBPROC_RETSIGNO", value: 8)
!36 = !{!37, !38, !39, !42, !43}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!38 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !40, line: 134, baseType: !41)
!40 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!41 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !44, line: 109, baseType: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !46, line: 172, baseType: !41)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!47 = !{i32 2, !"Dwarf Version", i32 4}
!48 = !{i32 2, !"Debug Info Version", i32 3}
!49 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!50 = distinct !DISubprogram(name: "extracthalf", scope: !51, file: !51, line: 105, type: !52, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!51 = !DIFile(filename: "extract.c", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!52 = !DISubroutineType(types: !53)
!53 = !{null, !54, !54, !3, !38}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!57 = !{}
!58 = !DILocalVariable(name: "debar", arg: 1, scope: !50, file: !51, line: 105, type: !54)
!59 = !DIExpression()
!60 = !DILocation(line: 105, column: 25, scope: !50)
!61 = !DILocalVariable(name: "dir", arg: 2, scope: !50, file: !51, line: 105, type: !54)
!62 = !DILocation(line: 105, column: 44, scope: !50)
!63 = !DILocalVariable(name: "taroption", arg: 3, scope: !50, file: !51, line: 106, type: !3)
!64 = !DILocation(line: 106, column: 35, scope: !50)
!65 = !DILocalVariable(name: "admininfo", arg: 4, scope: !50, file: !51, line: 106, type: !38)
!66 = !DILocation(line: 106, column: 50, scope: !50)
!67 = !DILocalVariable(name: "err", scope: !50, file: !51, line: 108, type: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !13, line: 42, size: 128, align: 64, elements: !69)
!69 = !{!70, !71, !72}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !13, line: 43, baseType: !12, size: 32, align: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !68, file: !13, line: 45, baseType: !38, size: 32, align: 32, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !68, file: !13, line: 46, baseType: !73, size: 64, align: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!74 = !DILocation(line: 108, column: 21, scope: !50)
!75 = !DILocalVariable(name: "errstr", scope: !50, file: !51, line: 109, type: !54)
!76 = !DILocation(line: 109, column: 15, scope: !50)
!77 = !DILocalVariable(name: "ar", scope: !50, file: !51, line: 110, type: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_ar", file: !80, line: 57, size: 320, align: 64, elements: !81)
!80 = !DIFile(filename: "../lib/dpkg/ar.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!81 = !{!82, !83, !87, !91, !94}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !79, file: !80, line: 58, baseType: !54, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !79, file: !80, line: 59, baseType: !84, size: 32, align: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !44, line: 70, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !46, line: 129, baseType: !86)
!86 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !79, file: !80, line: 60, baseType: !88, size: 64, align: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !89, line: 75, baseType: !90)
!89 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !46, line: 139, baseType: !41)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !79, file: !80, line: 61, baseType: !92, size: 64, align: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !44, line: 86, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !46, line: 131, baseType: !41)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !79, file: !80, line: 62, baseType: !38, size: 32, align: 32, offset: 256)
!95 = !DILocation(line: 110, column: 19, scope: !50)
!96 = !DILocalVariable(name: "versionbuf", scope: !50, file: !51, line: 111, type: !97)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 320, align: 8, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 40)
!100 = !DILocation(line: 111, column: 8, scope: !50)
!101 = !DILocalVariable(name: "version", scope: !50, file: !51, line: 112, type: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deb_version", file: !103, line: 37, size: 64, align: 32, elements: !104)
!103 = !DIFile(filename: "../lib/dpkg/deb-version.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !102, file: !103, line: 38, baseType: !38, size: 32, align: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !102, file: !103, line: 39, baseType: !38, size: 32, align: 32, offset: 32)
!107 = !DILocation(line: 112, column: 22, scope: !50)
!108 = !DILocalVariable(name: "ctrllennum", scope: !50, file: !51, line: 113, type: !92)
!109 = !DILocation(line: 113, column: 9, scope: !50)
!110 = !DILocalVariable(name: "memberlen", scope: !50, file: !51, line: 113, type: !92)
!111 = !DILocation(line: 113, column: 21, scope: !50)
!112 = !DILocalVariable(name: "r", scope: !50, file: !51, line: 114, type: !43)
!113 = !DILocation(line: 114, column: 11, scope: !50)
!114 = !DILocalVariable(name: "dummy", scope: !50, file: !51, line: 115, type: !38)
!115 = !DILocation(line: 115, column: 7, scope: !50)
!116 = !DILocalVariable(name: "c1", scope: !50, file: !51, line: 116, type: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !44, line: 98, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !46, line: 133, baseType: !38)
!119 = !DILocation(line: 116, column: 9, scope: !50)
!120 = !DILocalVariable(name: "c2", scope: !50, file: !51, line: 116, type: !117)
!121 = !DILocation(line: 116, column: 14, scope: !50)
!122 = !DILocalVariable(name: "c3", scope: !50, file: !51, line: 116, type: !117)
!123 = !DILocation(line: 116, column: 17, scope: !50)
!124 = !DILocalVariable(name: "p1", scope: !50, file: !51, line: 117, type: !125)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, align: 32, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 2)
!128 = !DILocation(line: 117, column: 7, scope: !50)
!129 = !DILocalVariable(name: "p2", scope: !50, file: !51, line: 117, type: !125)
!130 = !DILocation(line: 117, column: 14, scope: !50)
!131 = !DILocalVariable(name: "p2_out", scope: !50, file: !51, line: 118, type: !38)
!132 = !DILocation(line: 118, column: 7, scope: !50)
!133 = !DILocalVariable(name: "nlc", scope: !50, file: !51, line: 119, type: !56)
!134 = !DILocation(line: 119, column: 8, scope: !50)
!135 = !DILocalVariable(name: "adminmember", scope: !50, file: !51, line: 120, type: !38)
!136 = !DILocation(line: 120, column: 7, scope: !50)
!137 = !DILocalVariable(name: "header_done", scope: !50, file: !51, line: 121, type: !138)
!138 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!139 = !DILocation(line: 121, column: 7, scope: !50)
!140 = !DILocalVariable(name: "decompressor", scope: !50, file: !51, line: 122, type: !18)
!141 = !DILocation(line: 122, column: 24, scope: !50)
!142 = !DILocation(line: 124, column: 21, scope: !50)
!143 = !DILocation(line: 124, column: 8, scope: !50)
!144 = !DILocation(line: 124, column: 6, scope: !50)
!145 = !DILocation(line: 126, column: 17, scope: !50)
!146 = !DILocation(line: 126, column: 21, scope: !50)
!147 = !DILocation(line: 126, column: 25, scope: !50)
!148 = !DILocation(line: 126, column: 7, scope: !50)
!149 = !DILocation(line: 126, column: 5, scope: !50)
!150 = !DILocation(line: 127, column: 7, scope: !151)
!151 = distinct !DILexicalBlock(scope: !50, file: !51, line: 127, column: 7)
!152 = !DILocation(line: 127, column: 9, scope: !151)
!153 = !DILocation(line: 127, column: 7, scope: !50)
!154 = !DILocation(line: 128, column: 15, scope: !151)
!155 = !DILocation(line: 128, column: 18, scope: !151)
!156 = !DILocation(line: 128, column: 25, scope: !151)
!157 = !DILocation(line: 128, column: 5, scope: !158)
!158 = !DILexicalBlockFile(scope: !151, file: !51, discriminator: 1)
!159 = !DILocation(line: 128, column: 5, scope: !151)
!160 = !DILocation(line: 130, column: 14, scope: !161)
!161 = distinct !DILexicalBlock(scope: !50, file: !51, line: 130, column: 7)
!162 = !DILocation(line: 130, column: 7, scope: !161)
!163 = !DILocation(line: 130, column: 39, scope: !161)
!164 = !DILocation(line: 130, column: 7, scope: !50)
!165 = !DILocation(line: 131, column: 15, scope: !166)
!166 = distinct !DILexicalBlock(scope: !161, file: !51, line: 130, column: 45)
!167 = !DILocation(line: 132, column: 17, scope: !166)
!168 = !DILocation(line: 133, column: 5, scope: !166)
!169 = !DILocalVariable(name: "arh", scope: !170, file: !51, line: 134, type: !173)
!170 = distinct !DILexicalBlock(scope: !171, file: !51, line: 133, column: 14)
!171 = distinct !DILexicalBlock(scope: !172, file: !51, line: 133, column: 5)
!172 = distinct !DILexicalBlock(scope: !166, file: !51, line: 133, column: 5)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_ar_hdr", file: !80, line: 45, size: 480, align: 8, elements: !174)
!174 = !{!175, !179, !183, !187, !188, !192, !196}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "ar_name", scope: !173, file: !80, line: 46, baseType: !176, size: 128, align: 8)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 128, align: 8, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 16)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "ar_date", scope: !173, file: !80, line: 47, baseType: !180, size: 96, align: 8, offset: 128)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 96, align: 8, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 12)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "ar_uid", scope: !173, file: !80, line: 48, baseType: !184, size: 48, align: 8, offset: 224)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 48, align: 8, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 6)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "ar_gid", scope: !173, file: !80, line: 48, baseType: !184, size: 48, align: 8, offset: 272)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ar_mode", scope: !173, file: !80, line: 49, baseType: !189, size: 64, align: 8, offset: 320)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 64, align: 8, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "ar_size", scope: !173, file: !80, line: 50, baseType: !193, size: 80, align: 8, offset: 384)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 80, align: 8, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 10)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "ar_fmag", scope: !173, file: !80, line: 51, baseType: !197, size: 16, align: 8, offset: 464)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 16, align: 8, elements: !126)
!198 = !DILocation(line: 134, column: 26, scope: !170)
!199 = !DILocation(line: 136, column: 19, scope: !170)
!200 = !DILocation(line: 136, column: 23, scope: !170)
!201 = !DILocation(line: 136, column: 27, scope: !170)
!202 = !DILocation(line: 136, column: 11, scope: !170)
!203 = !DILocation(line: 136, column: 9, scope: !170)
!204 = !DILocation(line: 137, column: 11, scope: !205)
!205 = distinct !DILexicalBlock(scope: !170, file: !51, line: 137, column: 11)
!206 = !DILocation(line: 137, column: 13, scope: !205)
!207 = !DILocation(line: 137, column: 11, scope: !170)
!208 = !DILocation(line: 138, column: 19, scope: !205)
!209 = !DILocation(line: 138, column: 22, scope: !205)
!210 = !DILocation(line: 138, column: 29, scope: !205)
!211 = !DILocation(line: 138, column: 9, scope: !212)
!212 = !DILexicalBlockFile(scope: !205, file: !51, discriminator: 1)
!213 = !DILocation(line: 138, column: 9, scope: !205)
!214 = !DILocation(line: 140, column: 7, scope: !170)
!215 = !DILocation(line: 142, column: 11, scope: !216)
!216 = distinct !DILexicalBlock(scope: !170, file: !51, line: 142, column: 11)
!217 = !DILocation(line: 142, column: 11, scope: !170)
!218 = !DILocation(line: 143, column: 16, scope: !216)
!219 = !DILocation(line: 143, column: 80, scope: !216)
!220 = !DILocation(line: 143, column: 9, scope: !221)
!221 = !DILexicalBlockFile(scope: !216, file: !51, discriminator: 1)
!222 = !DILocation(line: 143, column: 9, scope: !216)
!223 = !DILocation(line: 144, column: 43, scope: !170)
!224 = !DILocation(line: 144, column: 19, scope: !170)
!225 = !DILocation(line: 144, column: 17, scope: !170)
!226 = !DILocation(line: 145, column: 12, scope: !227)
!227 = distinct !DILexicalBlock(scope: !170, file: !51, line: 145, column: 11)
!228 = !DILocation(line: 145, column: 11, scope: !170)
!229 = !DILocalVariable(name: "infobuf", scope: !230, file: !51, line: 146, type: !73)
!230 = distinct !DILexicalBlock(scope: !227, file: !51, line: 145, column: 25)
!231 = !DILocation(line: 146, column: 15, scope: !230)
!232 = !DILocation(line: 148, column: 25, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !51, line: 148, column: 13)
!234 = !DILocation(line: 148, column: 21, scope: !233)
!235 = !DILocation(line: 148, column: 13, scope: !233)
!236 = !DILocation(line: 148, column: 72, scope: !233)
!237 = !DILocation(line: 148, column: 13, scope: !230)
!238 = !DILocation(line: 149, column: 18, scope: !233)
!239 = !DILocation(line: 150, column: 18, scope: !233)
!240 = !DILocation(line: 149, column: 11, scope: !241)
!241 = !DILexicalBlockFile(scope: !233, file: !51, discriminator: 1)
!242 = !DILocation(line: 149, column: 11, scope: !233)
!243 = !DILocation(line: 151, column: 27, scope: !230)
!244 = !DILocation(line: 151, column: 36, scope: !230)
!245 = !DILocation(line: 151, column: 18, scope: !230)
!246 = !DILocation(line: 151, column: 16, scope: !230)
!247 = !DILocation(line: 152, column: 21, scope: !230)
!248 = !DILocation(line: 152, column: 25, scope: !230)
!249 = !DILocation(line: 152, column: 29, scope: !230)
!250 = !DILocation(line: 152, column: 38, scope: !230)
!251 = !DILocation(line: 152, column: 51, scope: !230)
!252 = !DILocation(line: 152, column: 61, scope: !230)
!253 = !DILocation(line: 152, column: 48, scope: !230)
!254 = !DILocation(line: 152, column: 13, scope: !230)
!255 = !DILocation(line: 152, column: 11, scope: !230)
!256 = !DILocation(line: 153, column: 13, scope: !257)
!257 = distinct !DILexicalBlock(scope: !230, file: !51, line: 153, column: 13)
!258 = !DILocation(line: 153, column: 19, scope: !257)
!259 = !DILocation(line: 153, column: 32, scope: !257)
!260 = !DILocation(line: 153, column: 42, scope: !257)
!261 = !DILocation(line: 153, column: 29, scope: !257)
!262 = !DILocation(line: 153, column: 15, scope: !257)
!263 = !DILocation(line: 153, column: 13, scope: !230)
!264 = !DILocation(line: 154, column: 21, scope: !257)
!265 = !DILocation(line: 154, column: 24, scope: !257)
!266 = !DILocation(line: 154, column: 31, scope: !257)
!267 = !DILocation(line: 154, column: 11, scope: !268)
!268 = !DILexicalBlockFile(scope: !257, file: !51, discriminator: 1)
!269 = !DILocation(line: 154, column: 11, scope: !257)
!270 = !DILocation(line: 155, column: 17, scope: !230)
!271 = !DILocation(line: 155, column: 9, scope: !230)
!272 = !DILocation(line: 155, column: 28, scope: !230)
!273 = !DILocation(line: 157, column: 20, scope: !274)
!274 = distinct !DILexicalBlock(scope: !230, file: !51, line: 157, column: 13)
!275 = !DILocation(line: 157, column: 13, scope: !274)
!276 = !DILocation(line: 157, column: 35, scope: !274)
!277 = !DILocation(line: 157, column: 13, scope: !230)
!278 = !DILocation(line: 158, column: 18, scope: !274)
!279 = !DILocation(line: 158, column: 11, scope: !280)
!280 = !DILexicalBlockFile(scope: !274, file: !51, discriminator: 1)
!281 = !DILocation(line: 158, column: 11, scope: !274)
!282 = !DILocation(line: 159, column: 46, scope: !230)
!283 = !DILocation(line: 159, column: 18, scope: !230)
!284 = !DILocation(line: 159, column: 16, scope: !230)
!285 = !DILocation(line: 160, column: 13, scope: !286)
!286 = distinct !DILexicalBlock(scope: !230, file: !51, line: 160, column: 13)
!287 = !DILocation(line: 160, column: 13, scope: !230)
!288 = !DILocation(line: 161, column: 18, scope: !286)
!289 = !DILocation(line: 161, column: 69, scope: !286)
!290 = !DILocation(line: 161, column: 11, scope: !291)
!291 = !DILexicalBlockFile(scope: !286, file: !51, discriminator: 1)
!292 = !DILocation(line: 161, column: 11, scope: !286)
!293 = !DILocation(line: 162, column: 21, scope: !294)
!294 = distinct !DILexicalBlock(scope: !230, file: !51, line: 162, column: 13)
!295 = !DILocation(line: 162, column: 27, scope: !294)
!296 = !DILocation(line: 162, column: 13, scope: !230)
!297 = !DILocation(line: 163, column: 18, scope: !294)
!298 = !DILocation(line: 164, column: 26, scope: !294)
!299 = !DILocation(line: 164, column: 41, scope: !294)
!300 = !DILocation(line: 163, column: 11, scope: !301)
!301 = !DILexicalBlockFile(scope: !294, file: !51, discriminator: 1)
!302 = !DILocation(line: 163, column: 11, scope: !294)
!303 = !DILocation(line: 166, column: 14, scope: !230)
!304 = !DILocation(line: 166, column: 9, scope: !230)
!305 = !DILocation(line: 168, column: 21, scope: !230)
!306 = !DILocation(line: 169, column: 7, scope: !230)
!307 = !DILocation(line: 169, column: 22, scope: !308)
!308 = !DILexicalBlockFile(scope: !309, file: !51, discriminator: 1)
!309 = distinct !DILexicalBlock(scope: !227, file: !51, line: 169, column: 18)
!310 = !DILocation(line: 169, column: 18, scope: !308)
!311 = !DILocation(line: 169, column: 33, scope: !308)
!312 = !DILocation(line: 172, column: 29, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !51, line: 172, column: 13)
!314 = distinct !DILexicalBlock(scope: !309, file: !51, line: 169, column: 41)
!315 = !DILocation(line: 172, column: 33, scope: !313)
!316 = !DILocation(line: 172, column: 40, scope: !313)
!317 = !DILocation(line: 172, column: 53, scope: !313)
!318 = !DILocation(line: 172, column: 63, scope: !313)
!319 = !DILocation(line: 172, column: 50, scope: !313)
!320 = !DILocation(line: 172, column: 13, scope: !313)
!321 = !DILocation(line: 172, column: 75, scope: !313)
!322 = !DILocation(line: 172, column: 13, scope: !314)
!323 = !DILocation(line: 173, column: 18, scope: !313)
!324 = !DILocation(line: 173, column: 71, scope: !313)
!325 = !DILocation(line: 173, column: 75, scope: !313)
!326 = !DILocation(line: 173, column: 85, scope: !313)
!327 = !DILocation(line: 173, column: 11, scope: !328)
!328 = !DILexicalBlockFile(scope: !313, file: !51, discriminator: 1)
!329 = !DILocation(line: 173, column: 11, scope: !313)
!330 = !DILocation(line: 174, column: 7, scope: !314)
!331 = !DILocation(line: 175, column: 25, scope: !332)
!332 = distinct !DILexicalBlock(scope: !333, file: !51, line: 175, column: 13)
!333 = distinct !DILexicalBlock(scope: !309, file: !51, line: 174, column: 14)
!334 = !DILocation(line: 175, column: 21, scope: !332)
!335 = !DILocation(line: 175, column: 13, scope: !332)
!336 = !DILocation(line: 175, column: 72, scope: !332)
!337 = !DILocation(line: 175, column: 13, scope: !333)
!338 = !DILocalVariable(name: "extension", scope: !339, file: !51, line: 176, type: !54)
!339 = distinct !DILexicalBlock(scope: !332, file: !51, line: 175, column: 78)
!340 = !DILocation(line: 176, column: 23, scope: !339)
!341 = !DILocation(line: 176, column: 39, scope: !339)
!342 = !DILocation(line: 176, column: 35, scope: !339)
!343 = !DILocation(line: 176, column: 47, scope: !339)
!344 = !DILocation(line: 178, column: 16, scope: !339)
!345 = !DILocation(line: 179, column: 55, scope: !339)
!346 = !DILocation(line: 179, column: 26, scope: !339)
!347 = !DILocation(line: 179, column: 24, scope: !339)
!348 = !DILocation(line: 180, column: 15, scope: !349)
!349 = distinct !DILexicalBlock(scope: !339, file: !51, line: 180, column: 15)
!350 = !DILocation(line: 180, column: 28, scope: !349)
!351 = !DILocation(line: 180, column: 52, scope: !349)
!352 = !DILocation(line: 181, column: 15, scope: !349)
!353 = !DILocation(line: 181, column: 28, scope: !349)
!354 = !DILocation(line: 181, column: 52, scope: !349)
!355 = !DILocation(line: 182, column: 15, scope: !349)
!356 = !DILocation(line: 182, column: 28, scope: !349)
!357 = !DILocation(line: 180, column: 15, scope: !358)
!358 = !DILexicalBlockFile(scope: !339, file: !51, discriminator: 1)
!359 = !DILocation(line: 183, column: 20, scope: !349)
!360 = !DILocation(line: 185, column: 20, scope: !349)
!361 = !DILocation(line: 185, column: 57, scope: !349)
!362 = !DILocation(line: 185, column: 53, scope: !349)
!363 = !DILocation(line: 183, column: 13, scope: !364)
!364 = !DILexicalBlockFile(scope: !349, file: !51, discriminator: 1)
!365 = !DILocation(line: 183, column: 13, scope: !349)
!366 = !DILocation(line: 186, column: 9, scope: !339)
!367 = !DILocation(line: 187, column: 15, scope: !368)
!368 = distinct !DILexicalBlock(scope: !369, file: !51, line: 187, column: 15)
!369 = distinct !DILexicalBlock(scope: !332, file: !51, line: 186, column: 16)
!370 = !DILocation(line: 187, column: 27, scope: !368)
!371 = !DILocation(line: 187, column: 15, scope: !369)
!372 = !DILocation(line: 188, column: 20, scope: !368)
!373 = !DILocation(line: 190, column: 20, scope: !368)
!374 = !DILocation(line: 190, column: 57, scope: !368)
!375 = !DILocation(line: 190, column: 53, scope: !368)
!376 = !DILocation(line: 188, column: 13, scope: !377)
!377 = !DILexicalBlockFile(scope: !368, file: !51, discriminator: 1)
!378 = !DILocation(line: 188, column: 13, scope: !368)
!379 = !DILocation(line: 192, column: 20, scope: !380)
!380 = distinct !DILexicalBlock(scope: !369, file: !51, line: 192, column: 8)
!381 = !DILocation(line: 192, column: 16, scope: !380)
!382 = !DILocation(line: 192, column: 8, scope: !380)
!383 = !DILocation(line: 192, column: 61, scope: !380)
!384 = !DILocation(line: 192, column: 8, scope: !369)
!385 = !DILocalVariable(name: "extension", scope: !386, file: !51, line: 193, type: !54)
!386 = distinct !DILexicalBlock(scope: !380, file: !51, line: 192, column: 67)
!387 = !DILocation(line: 193, column: 18, scope: !386)
!388 = !DILocation(line: 193, column: 34, scope: !386)
!389 = !DILocation(line: 193, column: 30, scope: !386)
!390 = !DILocation(line: 193, column: 42, scope: !386)
!391 = !DILocation(line: 195, column: 17, scope: !386)
!392 = !DILocation(line: 196, column: 50, scope: !386)
!393 = !DILocation(line: 196, column: 21, scope: !386)
!394 = !DILocation(line: 196, column: 19, scope: !386)
!395 = !DILocation(line: 197, column: 17, scope: !396)
!396 = distinct !DILexicalBlock(scope: !386, file: !51, line: 197, column: 17)
!397 = !DILocation(line: 197, column: 30, scope: !396)
!398 = !DILocation(line: 197, column: 17, scope: !386)
!399 = !DILocation(line: 198, column: 22, scope: !396)
!400 = !DILocation(line: 200, column: 22, scope: !396)
!401 = !DILocation(line: 200, column: 59, scope: !396)
!402 = !DILocation(line: 200, column: 55, scope: !396)
!403 = !DILocation(line: 198, column: 15, scope: !404)
!404 = !DILexicalBlockFile(scope: !396, file: !51, discriminator: 1)
!405 = !DILocation(line: 198, column: 15, scope: !396)
!406 = !DILocation(line: 201, column: 11, scope: !386)
!407 = !DILocation(line: 202, column: 20, scope: !408)
!408 = distinct !DILexicalBlock(scope: !380, file: !51, line: 201, column: 18)
!409 = !DILocation(line: 204, column: 20, scope: !408)
!410 = !DILocation(line: 204, column: 57, scope: !408)
!411 = !DILocation(line: 204, column: 53, scope: !408)
!412 = !DILocation(line: 202, column: 13, scope: !413)
!413 = !DILexicalBlockFile(scope: !408, file: !51, discriminator: 1)
!414 = !DILocation(line: 202, column: 13, scope: !408)
!415 = !DILocation(line: 207, column: 13, scope: !416)
!416 = distinct !DILexicalBlock(scope: !333, file: !51, line: 207, column: 13)
!417 = !DILocation(line: 207, column: 25, scope: !416)
!418 = !DILocation(line: 207, column: 13, scope: !333)
!419 = !DILocation(line: 208, column: 15, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !51, line: 208, column: 15)
!421 = distinct !DILexicalBlock(scope: !416, file: !51, line: 207, column: 31)
!422 = !DILocation(line: 208, column: 26, scope: !420)
!423 = !DILocation(line: 208, column: 15, scope: !421)
!424 = !DILocation(line: 209, column: 20, scope: !420)
!425 = !DILocation(line: 210, column: 20, scope: !420)
!426 = !DILocation(line: 209, column: 13, scope: !427)
!427 = !DILexicalBlockFile(scope: !420, file: !51, discriminator: 1)
!428 = !DILocation(line: 209, column: 13, scope: !420)
!429 = !DILocation(line: 211, column: 23, scope: !421)
!430 = !DILocation(line: 211, column: 21, scope: !421)
!431 = !DILocation(line: 212, column: 9, scope: !421)
!432 = !DILocation(line: 213, column: 14, scope: !433)
!433 = distinct !DILexicalBlock(scope: !333, file: !51, line: 213, column: 13)
!434 = !DILocation(line: 213, column: 13, scope: !433)
!435 = !DILocation(line: 213, column: 30, scope: !433)
!436 = !DILocation(line: 213, column: 29, scope: !433)
!437 = !DILocation(line: 213, column: 26, scope: !433)
!438 = !DILocation(line: 213, column: 13, scope: !333)
!439 = !DILocation(line: 214, column: 31, scope: !440)
!440 = distinct !DILexicalBlock(scope: !441, file: !51, line: 214, column: 15)
!441 = distinct !DILexicalBlock(scope: !433, file: !51, line: 213, column: 41)
!442 = !DILocation(line: 214, column: 35, scope: !440)
!443 = !DILocation(line: 214, column: 42, scope: !440)
!444 = !DILocation(line: 214, column: 55, scope: !440)
!445 = !DILocation(line: 214, column: 65, scope: !440)
!446 = !DILocation(line: 214, column: 52, scope: !440)
!447 = !DILocation(line: 214, column: 15, scope: !440)
!448 = !DILocation(line: 214, column: 77, scope: !440)
!449 = !DILocation(line: 214, column: 15, scope: !441)
!450 = !DILocation(line: 215, column: 20, scope: !440)
!451 = !DILocation(line: 215, column: 73, scope: !440)
!452 = !DILocation(line: 215, column: 77, scope: !440)
!453 = !DILocation(line: 215, column: 87, scope: !440)
!454 = !DILocation(line: 215, column: 13, scope: !455)
!455 = !DILexicalBlockFile(scope: !440, file: !51, discriminator: 1)
!456 = !DILocation(line: 215, column: 13, scope: !440)
!457 = !DILocation(line: 216, column: 9, scope: !441)
!458 = !DILocation(line: 218, column: 11, scope: !459)
!459 = distinct !DILexicalBlock(scope: !433, file: !51, line: 216, column: 16)
!460 = !DILocation(line: 133, column: 5, scope: !461)
!461 = !DILexicalBlockFile(scope: !171, file: !51, discriminator: 1)
!462 = distinct !{!462, !168}
!463 = !DILocation(line: 223, column: 9, scope: !464)
!464 = distinct !DILexicalBlock(scope: !166, file: !51, line: 223, column: 9)
!465 = !DILocation(line: 223, column: 19, scope: !464)
!466 = !DILocation(line: 223, column: 9, scope: !166)
!467 = !DILocation(line: 224, column: 14, scope: !468)
!468 = distinct !DILexicalBlock(scope: !464, file: !51, line: 223, column: 25)
!469 = !DILocation(line: 226, column: 22, scope: !468)
!470 = !DILocation(line: 226, column: 37, scope: !468)
!471 = !DILocation(line: 227, column: 24, scope: !468)
!472 = !DILocation(line: 227, column: 28, scope: !468)
!473 = !DILocation(line: 227, column: 44, scope: !468)
!474 = !DILocation(line: 224, column: 7, scope: !475)
!475 = !DILexicalBlockFile(scope: !468, file: !51, discriminator: 1)
!476 = !DILocation(line: 228, column: 15, scope: !468)
!477 = !DILocation(line: 228, column: 23, scope: !468)
!478 = !DILocation(line: 228, column: 7, scope: !475)
!479 = !DILocation(line: 229, column: 5, scope: !468)
!480 = !DILocation(line: 230, column: 3, scope: !166)
!481 = !DILocation(line: 230, column: 22, scope: !482)
!482 = !DILexicalBlockFile(scope: !483, file: !51, discriminator: 1)
!483 = distinct !DILexicalBlock(scope: !161, file: !51, line: 230, column: 14)
!484 = !DILocation(line: 230, column: 14, scope: !482)
!485 = !DILocation(line: 230, column: 45, scope: !482)
!486 = !DILocalVariable(name: "ctrllenbuf", scope: !487, file: !51, line: 231, type: !97)
!487 = distinct !DILexicalBlock(scope: !483, file: !51, line: 230, column: 51)
!488 = !DILocation(line: 231, column: 10, scope: !487)
!489 = !DILocalVariable(name: "l", scope: !487, file: !51, line: 232, type: !38)
!490 = !DILocation(line: 232, column: 9, scope: !487)
!491 = !DILocation(line: 234, column: 16, scope: !487)
!492 = !DILocation(line: 234, column: 9, scope: !487)
!493 = !DILocation(line: 234, column: 7, scope: !487)
!494 = !DILocation(line: 236, column: 16, scope: !495)
!495 = distinct !DILexicalBlock(scope: !487, file: !51, line: 236, column: 9)
!496 = !DILocation(line: 236, column: 9, scope: !495)
!497 = !DILocation(line: 236, column: 34, scope: !495)
!498 = !DILocation(line: 236, column: 9, scope: !487)
!499 = !DILocation(line: 237, column: 14, scope: !495)
!500 = !DILocation(line: 237, column: 7, scope: !501)
!501 = !DILexicalBlockFile(scope: !495, file: !51, discriminator: 1)
!502 = !DILocation(line: 237, column: 7, scope: !495)
!503 = !DILocation(line: 238, column: 42, scope: !487)
!504 = !DILocation(line: 238, column: 14, scope: !487)
!505 = !DILocation(line: 238, column: 12, scope: !487)
!506 = !DILocation(line: 239, column: 9, scope: !507)
!507 = distinct !DILexicalBlock(scope: !487, file: !51, line: 239, column: 9)
!508 = !DILocation(line: 239, column: 9, scope: !487)
!509 = !DILocation(line: 240, column: 14, scope: !507)
!510 = !DILocation(line: 240, column: 65, scope: !507)
!511 = !DILocation(line: 240, column: 7, scope: !512)
!512 = !DILexicalBlockFile(scope: !507, file: !51, discriminator: 1)
!513 = !DILocation(line: 240, column: 7, scope: !507)
!514 = !DILocation(line: 242, column: 19, scope: !487)
!515 = !DILocation(line: 242, column: 23, scope: !487)
!516 = !DILocation(line: 242, column: 27, scope: !487)
!517 = !DILocation(line: 242, column: 9, scope: !487)
!518 = !DILocation(line: 242, column: 7, scope: !487)
!519 = !DILocation(line: 243, column: 9, scope: !520)
!520 = distinct !DILexicalBlock(scope: !487, file: !51, line: 243, column: 9)
!521 = !DILocation(line: 243, column: 11, scope: !520)
!522 = !DILocation(line: 243, column: 9, scope: !487)
!523 = !DILocation(line: 244, column: 17, scope: !520)
!524 = !DILocation(line: 244, column: 20, scope: !520)
!525 = !DILocation(line: 244, column: 27, scope: !520)
!526 = !DILocation(line: 244, column: 7, scope: !527)
!527 = !DILexicalBlockFile(scope: !520, file: !51, discriminator: 1)
!528 = !DILocation(line: 244, column: 7, scope: !520)
!529 = !DILocation(line: 245, column: 16, scope: !530)
!530 = distinct !DILexicalBlock(scope: !487, file: !51, line: 245, column: 9)
!531 = !DILocation(line: 245, column: 9, scope: !530)
!532 = !DILocation(line: 245, column: 78, scope: !530)
!533 = !DILocation(line: 245, column: 83, scope: !530)
!534 = !DILocation(line: 246, column: 9, scope: !530)
!535 = !DILocation(line: 246, column: 13, scope: !530)
!536 = !DILocation(line: 245, column: 9, scope: !537)
!537 = !DILexicalBlockFile(scope: !487, file: !51, discriminator: 1)
!538 = !DILocation(line: 247, column: 14, scope: !530)
!539 = !DILocation(line: 247, column: 73, scope: !530)
!540 = !DILocation(line: 247, column: 7, scope: !541)
!541 = !DILexicalBlockFile(scope: !530, file: !51, discriminator: 1)
!542 = !DILocation(line: 247, column: 7, scope: !530)
!543 = !DILocation(line: 249, column: 9, scope: !544)
!544 = distinct !DILexicalBlock(scope: !487, file: !51, line: 249, column: 9)
!545 = !DILocation(line: 249, column: 9, scope: !487)
!546 = !DILocation(line: 250, column: 19, scope: !547)
!547 = distinct !DILexicalBlock(scope: !544, file: !51, line: 249, column: 20)
!548 = !DILocation(line: 250, column: 17, scope: !547)
!549 = !DILocation(line: 251, column: 5, scope: !547)
!550 = !DILocation(line: 252, column: 19, scope: !551)
!551 = distinct !DILexicalBlock(scope: !544, file: !51, line: 251, column: 12)
!552 = !DILocation(line: 252, column: 23, scope: !551)
!553 = !DILocation(line: 252, column: 30, scope: !551)
!554 = !DILocation(line: 252, column: 28, scope: !551)
!555 = !DILocation(line: 252, column: 50, scope: !551)
!556 = !DILocation(line: 252, column: 43, scope: !551)
!557 = !DILocation(line: 252, column: 41, scope: !551)
!558 = !DILocation(line: 252, column: 64, scope: !551)
!559 = !DILocation(line: 252, column: 62, scope: !551)
!560 = !DILocation(line: 252, column: 17, scope: !551)
!561 = !DILocation(line: 253, column: 27, scope: !562)
!562 = distinct !DILexicalBlock(scope: !551, file: !51, line: 253, column: 11)
!563 = !DILocation(line: 253, column: 31, scope: !562)
!564 = !DILocation(line: 253, column: 38, scope: !562)
!565 = !DILocation(line: 253, column: 11, scope: !562)
!566 = !DILocation(line: 253, column: 56, scope: !562)
!567 = !DILocation(line: 253, column: 11, scope: !551)
!568 = !DILocation(line: 254, column: 16, scope: !562)
!569 = !DILocation(line: 254, column: 77, scope: !562)
!570 = !DILocation(line: 254, column: 81, scope: !562)
!571 = !DILocation(line: 255, column: 20, scope: !562)
!572 = !DILocation(line: 254, column: 9, scope: !573)
!573 = !DILexicalBlockFile(scope: !562, file: !51, discriminator: 1)
!574 = !DILocation(line: 254, column: 9, scope: !562)
!575 = !DILocation(line: 258, column: 9, scope: !576)
!576 = distinct !DILexicalBlock(scope: !487, file: !51, line: 258, column: 9)
!577 = !DILocation(line: 258, column: 19, scope: !576)
!578 = !DILocation(line: 258, column: 9, scope: !487)
!579 = !DILocation(line: 259, column: 14, scope: !580)
!580 = distinct !DILexicalBlock(scope: !576, file: !51, line: 258, column: 25)
!581 = !DILocation(line: 261, column: 22, scope: !580)
!582 = !DILocation(line: 261, column: 37, scope: !580)
!583 = !DILocation(line: 262, column: 24, scope: !580)
!584 = !DILocation(line: 262, column: 28, scope: !580)
!585 = !DILocation(line: 262, column: 44, scope: !580)
!586 = !DILocation(line: 263, column: 25, scope: !580)
!587 = !DILocation(line: 263, column: 29, scope: !580)
!588 = !DILocation(line: 263, column: 36, scope: !580)
!589 = !DILocation(line: 263, column: 34, scope: !580)
!590 = !DILocation(line: 263, column: 56, scope: !580)
!591 = !DILocation(line: 263, column: 49, scope: !580)
!592 = !DILocation(line: 263, column: 47, scope: !580)
!593 = !DILocation(line: 263, column: 70, scope: !580)
!594 = !DILocation(line: 263, column: 68, scope: !580)
!595 = !DILocation(line: 259, column: 7, scope: !596)
!596 = !DILexicalBlockFile(scope: !580, file: !51, discriminator: 1)
!597 = !DILocation(line: 264, column: 15, scope: !580)
!598 = !DILocation(line: 264, column: 23, scope: !580)
!599 = !DILocation(line: 264, column: 7, scope: !596)
!600 = !DILocation(line: 265, column: 5, scope: !580)
!601 = !DILocation(line: 266, column: 3, scope: !487)
!602 = !DILocation(line: 267, column: 17, scope: !603)
!603 = distinct !DILexicalBlock(scope: !604, file: !51, line: 267, column: 9)
!604 = distinct !DILexicalBlock(scope: !483, file: !51, line: 266, column: 10)
!605 = !DILocation(line: 267, column: 9, scope: !603)
!606 = !DILocation(line: 267, column: 43, scope: !603)
!607 = !DILocation(line: 267, column: 9, scope: !604)
!608 = !DILocation(line: 268, column: 14, scope: !609)
!609 = distinct !DILexicalBlock(scope: !603, file: !51, line: 267, column: 49)
!610 = !DILocation(line: 268, column: 7, scope: !611)
!611 = !DILexicalBlockFile(scope: !609, file: !51, discriminator: 1)
!612 = !DILocation(line: 270, column: 5, scope: !609)
!613 = !DILocation(line: 272, column: 12, scope: !604)
!614 = !DILocation(line: 272, column: 64, scope: !604)
!615 = !DILocation(line: 272, column: 5, scope: !616)
!616 = !DILexicalBlockFile(scope: !604, file: !51, discriminator: 1)
!617 = !DILocation(line: 272, column: 5, scope: !604)
!618 = !DILocation(line: 275, column: 10, scope: !50)
!619 = !DILocation(line: 275, column: 3, scope: !50)
!620 = !DILocation(line: 276, column: 8, scope: !50)
!621 = !DILocation(line: 276, column: 6, scope: !50)
!622 = !DILocation(line: 277, column: 8, scope: !623)
!623 = distinct !DILexicalBlock(scope: !50, file: !51, line: 277, column: 7)
!624 = !DILocation(line: 277, column: 7, scope: !50)
!625 = !DILocation(line: 278, column: 11, scope: !626)
!626 = distinct !DILexicalBlock(scope: !623, file: !51, line: 277, column: 12)
!627 = !DILocation(line: 278, column: 5, scope: !626)
!628 = !DILocation(line: 279, column: 28, scope: !629)
!629 = distinct !DILexicalBlock(scope: !626, file: !51, line: 279, column: 9)
!630 = !DILocation(line: 279, column: 32, scope: !629)
!631 = !DILocation(line: 279, column: 13, scope: !629)
!632 = !DILocation(line: 279, column: 23, scope: !629)
!633 = !DILocation(line: 279, column: 9, scope: !629)
!634 = !DILocation(line: 279, column: 40, scope: !629)
!635 = !DILocation(line: 279, column: 9, scope: !626)
!636 = !DILocation(line: 280, column: 14, scope: !629)
!637 = !DILocation(line: 281, column: 14, scope: !629)
!638 = !DILocation(line: 281, column: 18, scope: !629)
!639 = !DILocation(line: 281, column: 28, scope: !629)
!640 = !DILocation(line: 280, column: 7, scope: !641)
!641 = !DILexicalBlockFile(scope: !629, file: !51, discriminator: 1)
!642 = !DILocation(line: 280, column: 7, scope: !629)
!643 = !DILocation(line: 282, column: 15, scope: !644)
!644 = distinct !DILexicalBlock(scope: !626, file: !51, line: 282, column: 9)
!645 = !DILocation(line: 282, column: 9, scope: !644)
!646 = !DILocation(line: 282, column: 9, scope: !626)
!647 = !DILocation(line: 283, column: 15, scope: !644)
!648 = !DILocation(line: 283, column: 7, scope: !649)
!649 = !DILexicalBlockFile(scope: !644, file: !51, discriminator: 1)
!650 = !DILocation(line: 283, column: 7, scope: !644)
!651 = !DILocation(line: 284, column: 5, scope: !626)
!652 = !DILocation(line: 286, column: 9, scope: !50)
!653 = !DILocation(line: 286, column: 3, scope: !50)
!654 = !DILocation(line: 288, column: 7, scope: !655)
!655 = distinct !DILexicalBlock(scope: !50, file: !51, line: 288, column: 7)
!656 = !DILocation(line: 288, column: 7, scope: !50)
!657 = !DILocation(line: 289, column: 12, scope: !658)
!658 = distinct !DILexicalBlock(scope: !655, file: !51, line: 288, column: 18)
!659 = !DILocation(line: 289, column: 5, scope: !658)
!660 = !DILocation(line: 290, column: 14, scope: !658)
!661 = !DILocation(line: 290, column: 12, scope: !658)
!662 = !DILocation(line: 291, column: 3, scope: !658)
!663 = !DILocation(line: 292, column: 12, scope: !664)
!664 = distinct !DILexicalBlock(scope: !655, file: !51, line: 291, column: 10)
!665 = !DILocation(line: 295, column: 8, scope: !50)
!666 = !DILocation(line: 295, column: 6, scope: !50)
!667 = !DILocation(line: 296, column: 8, scope: !668)
!668 = distinct !DILexicalBlock(scope: !50, file: !51, line: 296, column: 7)
!669 = !DILocation(line: 296, column: 7, scope: !50)
!670 = !DILocation(line: 297, column: 9, scope: !671)
!671 = distinct !DILexicalBlock(scope: !672, file: !51, line: 297, column: 9)
!672 = distinct !DILexicalBlock(scope: !668, file: !51, line: 296, column: 12)
!673 = !DILocation(line: 297, column: 9, scope: !672)
!674 = !DILocation(line: 298, column: 13, scope: !671)
!675 = !DILocation(line: 298, column: 7, scope: !671)
!676 = !DILocation(line: 299, column: 23, scope: !672)
!677 = !DILocation(line: 299, column: 37, scope: !672)
!678 = !DILocation(line: 299, column: 44, scope: !672)
!679 = !DILocation(line: 300, column: 23, scope: !672)
!680 = !DILocation(line: 299, column: 5, scope: !672)
!681 = !DILocation(line: 301, column: 5, scope: !672)
!682 = !DILocation(line: 303, column: 9, scope: !50)
!683 = !DILocation(line: 303, column: 3, scope: !50)
!684 = !DILocation(line: 304, column: 17, scope: !50)
!685 = !DILocation(line: 304, column: 3, scope: !50)
!686 = !DILocation(line: 305, column: 7, scope: !687)
!687 = distinct !DILexicalBlock(scope: !50, file: !51, line: 305, column: 7)
!688 = !DILocation(line: 305, column: 7, scope: !50)
!689 = !DILocation(line: 305, column: 24, scope: !690)
!690 = !DILexicalBlockFile(scope: !687, file: !51, discriminator: 1)
!691 = !DILocation(line: 305, column: 18, scope: !690)
!692 = !DILocation(line: 307, column: 7, scope: !693)
!693 = distinct !DILexicalBlock(scope: !50, file: !51, line: 307, column: 7)
!694 = !DILocation(line: 307, column: 7, scope: !50)
!695 = !DILocation(line: 308, column: 10, scope: !696)
!696 = distinct !DILexicalBlock(scope: !693, file: !51, line: 307, column: 18)
!697 = !DILocation(line: 308, column: 8, scope: !696)
!698 = !DILocation(line: 309, column: 10, scope: !699)
!699 = distinct !DILexicalBlock(scope: !696, file: !51, line: 309, column: 9)
!700 = !DILocation(line: 309, column: 9, scope: !696)
!701 = !DILocalVariable(name: "cmd", scope: !702, file: !51, line: 310, type: !703)
!702 = distinct !DILexicalBlock(scope: !699, file: !51, line: 309, column: 14)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "command", file: !704, line: 37, size: 256, align: 64, elements: !705)
!704 = !DIFile(filename: "../lib/dpkg/command.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!705 = !{!706, !707, !708, !709, !710}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !703, file: !704, line: 39, baseType: !54, size: 64, align: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !703, file: !704, line: 41, baseType: !54, size: 64, align: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !703, file: !704, line: 42, baseType: !38, size: 32, align: 32, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "argv_size", scope: !703, file: !704, line: 43, baseType: !38, size: 32, align: 32, offset: 160)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !703, file: !704, line: 44, baseType: !711, size: 64, align: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!712 = !DILocation(line: 310, column: 22, scope: !702)
!713 = !DILocation(line: 312, column: 7, scope: !702)
!714 = !DILocation(line: 313, column: 7, scope: !702)
!715 = !DILocation(line: 315, column: 12, scope: !716)
!716 = distinct !DILexicalBlock(scope: !702, file: !51, line: 315, column: 11)
!717 = !DILocation(line: 315, column: 22, scope: !716)
!718 = !DILocation(line: 315, column: 39, scope: !716)
!719 = !DILocation(line: 315, column: 43, scope: !720)
!720 = !DILexicalBlockFile(scope: !716, file: !51, discriminator: 1)
!721 = !DILocation(line: 315, column: 53, scope: !720)
!722 = !DILocation(line: 315, column: 11, scope: !720)
!723 = !DILocation(line: 316, column: 9, scope: !716)
!724 = !DILocation(line: 317, column: 16, scope: !725)
!725 = distinct !DILexicalBlock(scope: !716, file: !51, line: 317, column: 16)
!726 = !DILocation(line: 317, column: 26, scope: !725)
!727 = !DILocation(line: 317, column: 16, scope: !716)
!728 = !DILocation(line: 318, column: 9, scope: !725)
!729 = !DILocation(line: 319, column: 16, scope: !730)
!730 = distinct !DILexicalBlock(scope: !725, file: !51, line: 319, column: 16)
!731 = !DILocation(line: 319, column: 26, scope: !730)
!732 = !DILocation(line: 319, column: 16, scope: !725)
!733 = !DILocation(line: 320, column: 9, scope: !730)
!734 = !DILocation(line: 322, column: 88, scope: !730)
!735 = !DILocation(line: 322, column: 9, scope: !730)
!736 = !DILocation(line: 324, column: 11, scope: !737)
!737 = distinct !DILexicalBlock(scope: !702, file: !51, line: 324, column: 11)
!738 = !DILocation(line: 324, column: 21, scope: !737)
!739 = !DILocation(line: 324, column: 11, scope: !702)
!740 = !DILocation(line: 325, column: 9, scope: !737)
!741 = !DILocation(line: 326, column: 11, scope: !742)
!742 = distinct !DILexicalBlock(scope: !702, file: !51, line: 326, column: 11)
!743 = !DILocation(line: 326, column: 21, scope: !742)
!744 = !DILocation(line: 326, column: 11, scope: !702)
!745 = !DILocation(line: 327, column: 9, scope: !742)
!746 = !DILocation(line: 329, column: 7, scope: !702)
!747 = !DILocation(line: 330, column: 7, scope: !702)
!748 = !DILocation(line: 331, column: 7, scope: !702)
!749 = !DILocation(line: 333, column: 14, scope: !702)
!750 = !DILocation(line: 333, column: 7, scope: !702)
!751 = !DILocation(line: 334, column: 13, scope: !702)
!752 = !DILocation(line: 334, column: 7, scope: !702)
!753 = !DILocation(line: 336, column: 7, scope: !702)
!754 = !DILocation(line: 338, column: 11, scope: !755)
!755 = distinct !DILexicalBlock(scope: !702, file: !51, line: 338, column: 11)
!756 = !DILocation(line: 338, column: 11, scope: !702)
!757 = !DILocation(line: 339, column: 19, scope: !758)
!758 = distinct !DILexicalBlock(scope: !759, file: !51, line: 339, column: 13)
!759 = distinct !DILexicalBlock(scope: !755, file: !51, line: 338, column: 16)
!760 = !DILocation(line: 339, column: 13, scope: !758)
!761 = !DILocation(line: 339, column: 30, scope: !758)
!762 = !DILocation(line: 339, column: 13, scope: !759)
!763 = !DILocation(line: 340, column: 16, scope: !764)
!764 = distinct !DILexicalBlock(scope: !765, file: !51, line: 340, column: 14)
!765 = distinct !DILexicalBlock(scope: !758, file: !51, line: 339, column: 36)
!766 = !DILocation(line: 340, column: 15, scope: !764)
!767 = !DILocation(line: 340, column: 20, scope: !764)
!768 = !DILocation(line: 340, column: 14, scope: !765)
!769 = !DILocation(line: 341, column: 21, scope: !764)
!770 = !DILocation(line: 341, column: 13, scope: !771)
!771 = !DILexicalBlockFile(scope: !764, file: !51, discriminator: 1)
!772 = !DILocation(line: 341, column: 13, scope: !764)
!773 = !DILocation(line: 343, column: 15, scope: !774)
!774 = distinct !DILexicalBlock(scope: !765, file: !51, line: 343, column: 15)
!775 = !DILocation(line: 343, column: 25, scope: !774)
!776 = !DILocation(line: 343, column: 15, scope: !765)
!777 = !DILocation(line: 344, column: 21, scope: !774)
!778 = !DILocation(line: 344, column: 69, scope: !774)
!779 = !DILocation(line: 344, column: 13, scope: !780)
!780 = !DILexicalBlockFile(scope: !774, file: !51, discriminator: 1)
!781 = !DILocation(line: 344, column: 13, scope: !774)
!782 = !DILocation(line: 345, column: 9, scope: !765)
!783 = !DILocation(line: 346, column: 19, scope: !784)
!784 = distinct !DILexicalBlock(scope: !759, file: !51, line: 346, column: 13)
!785 = !DILocation(line: 346, column: 13, scope: !784)
!786 = !DILocation(line: 346, column: 24, scope: !784)
!787 = !DILocation(line: 346, column: 13, scope: !759)
!788 = !DILocation(line: 347, column: 19, scope: !784)
!789 = !DILocation(line: 347, column: 11, scope: !790)
!790 = !DILexicalBlockFile(scope: !784, file: !51, discriminator: 1)
!791 = !DILocation(line: 347, column: 11, scope: !784)
!792 = !DILocation(line: 348, column: 7, scope: !759)
!793 = !DILocation(line: 350, column: 7, scope: !702)
!794 = !DILocation(line: 352, column: 11, scope: !696)
!795 = !DILocation(line: 352, column: 5, scope: !696)
!796 = !DILocation(line: 353, column: 18, scope: !696)
!797 = !DILocation(line: 353, column: 5, scope: !696)
!798 = !DILocation(line: 354, column: 3, scope: !696)
!799 = !DILocation(line: 356, column: 16, scope: !50)
!800 = !DILocation(line: 356, column: 20, scope: !50)
!801 = !DILocation(line: 356, column: 3, scope: !802)
!802 = !DILexicalBlockFile(scope: !50, file: !51, discriminator: 1)
!803 = !DILocation(line: 357, column: 7, scope: !804)
!804 = distinct !DILexicalBlock(scope: !50, file: !51, line: 357, column: 7)
!805 = !DILocation(line: 357, column: 10, scope: !804)
!806 = !DILocation(line: 357, column: 7, scope: !50)
!807 = !DILocation(line: 358, column: 18, scope: !804)
!808 = !DILocation(line: 358, column: 22, scope: !804)
!809 = !DILocation(line: 358, column: 5, scope: !810)
!810 = !DILexicalBlockFile(scope: !804, file: !51, discriminator: 1)
!811 = !DILocation(line: 358, column: 5, scope: !804)
!812 = !DILocation(line: 359, column: 15, scope: !813)
!813 = distinct !DILexicalBlock(scope: !50, file: !51, line: 359, column: 7)
!814 = !DILocation(line: 359, column: 21, scope: !813)
!815 = !DILocation(line: 359, column: 26, scope: !813)
!816 = !DILocation(line: 359, column: 29, scope: !817)
!817 = !DILexicalBlockFile(scope: !813, file: !51, discriminator: 1)
!818 = !DILocation(line: 359, column: 7, scope: !817)
!819 = !DILocation(line: 363, column: 5, scope: !820)
!820 = distinct !DILexicalBlock(scope: !813, file: !51, line: 359, column: 40)
!821 = !DILocation(line: 363, column: 20, scope: !822)
!822 = !DILexicalBlockFile(scope: !820, file: !51, discriminator: 1)
!823 = !DILocation(line: 363, column: 12, scope: !822)
!824 = !DILocation(line: 363, column: 26, scope: !822)
!825 = !DILocation(line: 363, column: 38, scope: !826)
!826 = !DILexicalBlockFile(scope: !820, file: !51, discriminator: 2)
!827 = !DILocation(line: 363, column: 44, scope: !826)
!828 = !DILocation(line: 363, column: 50, scope: !826)
!829 = !DILocation(line: 363, column: 5, scope: !830)
!830 = !DILexicalBlockFile(scope: !820, file: !51, discriminator: 3)
!831 = !DILocation(line: 364, column: 15, scope: !820)
!832 = !DILocation(line: 364, column: 21, scope: !820)
!833 = !DILocation(line: 363, column: 5, scope: !834)
!834 = !DILexicalBlockFile(scope: !820, file: !51, discriminator: 4)
!835 = distinct !{!835, !819}
!836 = !DILocation(line: 366, column: 17, scope: !837)
!837 = distinct !DILexicalBlock(scope: !820, file: !51, line: 366, column: 9)
!838 = !DILocation(line: 366, column: 23, scope: !837)
!839 = !DILocation(line: 366, column: 9, scope: !820)
!840 = !DILocation(line: 367, column: 7, scope: !837)
!841 = !DILocation(line: 368, column: 22, scope: !842)
!842 = distinct !DILexicalBlock(scope: !837, file: !51, line: 368, column: 14)
!843 = !DILocation(line: 368, column: 28, scope: !842)
!844 = !DILocation(line: 368, column: 35, scope: !842)
!845 = !DILocation(line: 368, column: 46, scope: !846)
!846 = !DILexicalBlockFile(scope: !842, file: !51, discriminator: 1)
!847 = !DILocation(line: 368, column: 52, scope: !846)
!848 = !DILocation(line: 368, column: 14, scope: !846)
!849 = !DILocation(line: 369, column: 7, scope: !842)
!850 = !DILocation(line: 370, column: 3, scope: !820)
!851 = !DILocation(line: 371, column: 1, scope: !50)
!852 = distinct !DISubprogram(name: "read_line", scope: !51, file: !51, line: 76, type: !853, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!853 = !DISubroutineType(types: !854)
!854 = !{!43, !38, !73, !855, !855}
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !856, line: 216, baseType: !857)
!856 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!857 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!858 = !DILocalVariable(name: "fd", arg: 1, scope: !852, file: !51, line: 76, type: !38)
!859 = !DILocation(line: 76, column: 15, scope: !852)
!860 = !DILocalVariable(name: "buf", arg: 2, scope: !852, file: !51, line: 76, type: !73)
!861 = !DILocation(line: 76, column: 25, scope: !852)
!862 = !DILocalVariable(name: "min_size", arg: 3, scope: !852, file: !51, line: 76, type: !855)
!863 = !DILocation(line: 76, column: 37, scope: !852)
!864 = !DILocalVariable(name: "max_size", arg: 4, scope: !852, file: !51, line: 76, type: !855)
!865 = !DILocation(line: 76, column: 54, scope: !852)
!866 = !DILocalVariable(name: "line_size", scope: !852, file: !51, line: 78, type: !43)
!867 = !DILocation(line: 78, column: 11, scope: !852)
!868 = !DILocalVariable(name: "n", scope: !852, file: !51, line: 79, type: !855)
!869 = !DILocation(line: 79, column: 10, scope: !852)
!870 = !DILocation(line: 79, column: 14, scope: !852)
!871 = !DILocation(line: 81, column: 3, scope: !852)
!872 = !DILocation(line: 81, column: 10, scope: !873)
!873 = !DILexicalBlockFile(scope: !852, file: !51, discriminator: 1)
!874 = !DILocation(line: 81, column: 31, scope: !873)
!875 = !DILocation(line: 81, column: 20, scope: !873)
!876 = !DILocation(line: 81, column: 3, scope: !873)
!877 = !DILocalVariable(name: "r", scope: !878, file: !51, line: 82, type: !43)
!878 = distinct !DILexicalBlock(scope: !852, file: !51, line: 81, column: 41)
!879 = !DILocation(line: 82, column: 13, scope: !878)
!880 = !DILocalVariable(name: "nl", scope: !878, file: !51, line: 83, type: !73)
!881 = !DILocation(line: 83, column: 11, scope: !878)
!882 = !DILocation(line: 85, column: 17, scope: !878)
!883 = !DILocation(line: 85, column: 21, scope: !878)
!884 = !DILocation(line: 85, column: 27, scope: !878)
!885 = !DILocation(line: 85, column: 25, scope: !878)
!886 = !DILocation(line: 85, column: 38, scope: !878)
!887 = !DILocation(line: 85, column: 9, scope: !878)
!888 = !DILocation(line: 85, column: 7, scope: !878)
!889 = !DILocation(line: 86, column: 9, scope: !890)
!890 = distinct !DILexicalBlock(scope: !878, file: !51, line: 86, column: 9)
!891 = !DILocation(line: 86, column: 11, scope: !890)
!892 = !DILocation(line: 86, column: 9, scope: !878)
!893 = !DILocation(line: 87, column: 14, scope: !890)
!894 = !DILocation(line: 87, column: 7, scope: !890)
!895 = !DILocation(line: 89, column: 17, scope: !878)
!896 = !DILocation(line: 89, column: 23, scope: !878)
!897 = !DILocation(line: 89, column: 21, scope: !878)
!898 = !DILocation(line: 89, column: 40, scope: !878)
!899 = !DILocation(line: 89, column: 10, scope: !878)
!900 = !DILocation(line: 89, column: 8, scope: !878)
!901 = !DILocation(line: 90, column: 18, scope: !878)
!902 = !DILocation(line: 90, column: 15, scope: !878)
!903 = !DILocation(line: 92, column: 9, scope: !904)
!904 = distinct !DILexicalBlock(scope: !878, file: !51, line: 92, column: 9)
!905 = !DILocation(line: 92, column: 12, scope: !904)
!906 = !DILocation(line: 92, column: 9, scope: !878)
!907 = !DILocation(line: 93, column: 7, scope: !908)
!908 = distinct !DILexicalBlock(scope: !904, file: !51, line: 92, column: 20)
!909 = !DILocation(line: 93, column: 13, scope: !908)
!910 = !DILocation(line: 94, column: 14, scope: !908)
!911 = !DILocation(line: 94, column: 7, scope: !908)
!912 = !DILocation(line: 97, column: 7, scope: !878)
!913 = !DILocation(line: 81, column: 3, scope: !914)
!914 = !DILexicalBlockFile(scope: !852, file: !51, discriminator: 2)
!915 = distinct !{!915, !871}
!916 = !DILocation(line: 100, column: 7, scope: !852)
!917 = !DILocation(line: 100, column: 3, scope: !852)
!918 = !DILocation(line: 100, column: 18, scope: !852)
!919 = !DILocation(line: 101, column: 10, scope: !852)
!920 = !DILocation(line: 101, column: 3, scope: !852)
!921 = !DILocation(line: 102, column: 1, scope: !852)
!922 = distinct !DISubprogram(name: "read_fail", scope: !51, file: !51, line: 67, type: !923, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !38, !54, !54}
!925 = !DILocalVariable(name: "rc", arg: 1, scope: !922, file: !51, line: 67, type: !38)
!926 = !DILocation(line: 67, column: 15, scope: !922)
!927 = !DILocalVariable(name: "filename", arg: 2, scope: !922, file: !51, line: 67, type: !54)
!928 = !DILocation(line: 67, column: 31, scope: !922)
!929 = !DILocalVariable(name: "what", arg: 3, scope: !922, file: !51, line: 67, type: !54)
!930 = !DILocation(line: 67, column: 53, scope: !922)
!931 = !DILocation(line: 69, column: 7, scope: !932)
!932 = distinct !DILexicalBlock(scope: !922, file: !51, line: 69, column: 7)
!933 = !DILocation(line: 69, column: 10, scope: !932)
!934 = !DILocation(line: 69, column: 7, scope: !922)
!935 = !DILocation(line: 70, column: 12, scope: !932)
!936 = !DILocation(line: 70, column: 62, scope: !932)
!937 = !DILocation(line: 70, column: 67, scope: !932)
!938 = !DILocation(line: 70, column: 5, scope: !939)
!939 = !DILexicalBlockFile(scope: !932, file: !51, discriminator: 1)
!940 = !DILocation(line: 70, column: 5, scope: !932)
!941 = !DILocation(line: 72, column: 13, scope: !932)
!942 = !DILocation(line: 72, column: 59, scope: !932)
!943 = !DILocation(line: 72, column: 65, scope: !932)
!944 = !DILocation(line: 72, column: 5, scope: !939)
!945 = !DILocation(line: 72, column: 5, scope: !932)
!946 = !DILocation(line: 73, column: 1, scope: !922)
!947 = distinct !DISubprogram(name: "movecontrolfiles", scope: !51, file: !51, line: 54, type: !948, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!948 = !DISubroutineType(types: !949)
!949 = !{null, !54}
!950 = !DILocalVariable(name: "thing", arg: 1, scope: !947, file: !51, line: 54, type: !54)
!951 = !DILocation(line: 54, column: 42, scope: !947)
!952 = !DILocalVariable(name: "buf", scope: !947, file: !51, line: 55, type: !953)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 1600, align: 8, elements: !954)
!954 = !{!955}
!955 = !DISubrange(count: 200)
!956 = !DILocation(line: 55, column: 8, scope: !947)
!957 = !DILocalVariable(name: "pid", scope: !947, file: !51, line: 56, type: !117)
!958 = !DILocation(line: 56, column: 9, scope: !947)
!959 = !DILocation(line: 58, column: 11, scope: !947)
!960 = !DILocation(line: 58, column: 41, scope: !947)
!961 = !DILocation(line: 58, column: 48, scope: !947)
!962 = !DILocation(line: 58, column: 3, scope: !947)
!963 = !DILocation(line: 59, column: 9, scope: !947)
!964 = !DILocation(line: 59, column: 7, scope: !947)
!965 = !DILocation(line: 60, column: 7, scope: !966)
!966 = distinct !DILexicalBlock(scope: !947, file: !51, line: 60, column: 7)
!967 = !DILocation(line: 60, column: 11, scope: !966)
!968 = !DILocation(line: 60, column: 7, scope: !947)
!969 = !DILocation(line: 61, column: 19, scope: !970)
!970 = distinct !DILexicalBlock(scope: !966, file: !51, line: 60, column: 17)
!971 = !DILocation(line: 61, column: 24, scope: !970)
!972 = !DILocation(line: 61, column: 5, scope: !973)
!973 = !DILexicalBlockFile(scope: !970, file: !51, discriminator: 1)
!974 = !DILocation(line: 61, column: 5, scope: !970)
!975 = !DILocation(line: 63, column: 16, scope: !947)
!976 = !DILocation(line: 63, column: 21, scope: !947)
!977 = !DILocation(line: 63, column: 3, scope: !978)
!978 = !DILexicalBlockFile(scope: !947, file: !51, discriminator: 1)
!979 = !DILocation(line: 64, column: 1, scope: !947)
!980 = distinct !DISubprogram(name: "do_ctrltarfile", scope: !51, file: !51, line: 374, type: !981, isLocal: false, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!981 = !DISubroutineType(types: !982)
!982 = !{!38, !983}
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64, align: 64)
!984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!985 = !DILocalVariable(name: "argv", arg: 1, scope: !980, file: !51, line: 374, type: !983)
!986 = !DILocation(line: 374, column: 35, scope: !980)
!987 = !DILocalVariable(name: "debar", scope: !980, file: !51, line: 376, type: !54)
!988 = !DILocation(line: 376, column: 15, scope: !980)
!989 = !DILocation(line: 378, column: 16, scope: !980)
!990 = !DILocation(line: 378, column: 11, scope: !980)
!991 = !DILocation(line: 378, column: 9, scope: !980)
!992 = !DILocation(line: 379, column: 7, scope: !993)
!993 = distinct !DILexicalBlock(scope: !980, file: !51, line: 379, column: 7)
!994 = !DILocation(line: 379, column: 13, scope: !993)
!995 = !DILocation(line: 379, column: 7, scope: !980)
!996 = !DILocation(line: 380, column: 14, scope: !993)
!997 = !DILocation(line: 380, column: 62, scope: !993)
!998 = !DILocation(line: 380, column: 73, scope: !993)
!999 = !DILocation(line: 380, column: 5, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !993, file: !51, discriminator: 1)
!1001 = !DILocation(line: 380, column: 5, scope: !993)
!1002 = !DILocation(line: 381, column: 8, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !980, file: !51, line: 381, column: 7)
!1004 = !DILocation(line: 381, column: 7, scope: !1003)
!1005 = !DILocation(line: 381, column: 7, scope: !980)
!1006 = !DILocation(line: 382, column: 14, scope: !1003)
!1007 = !DILocation(line: 383, column: 14, scope: !1003)
!1008 = !DILocation(line: 383, column: 25, scope: !1003)
!1009 = !DILocation(line: 382, column: 5, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !1003, file: !51, discriminator: 1)
!1011 = !DILocation(line: 382, column: 5, scope: !1003)
!1012 = !DILocation(line: 385, column: 15, scope: !980)
!1013 = !DILocation(line: 385, column: 3, scope: !980)
!1014 = !DILocation(line: 387, column: 3, scope: !980)
!1015 = distinct !DISubprogram(name: "do_fsystarfile", scope: !51, file: !51, line: 391, type: !981, isLocal: false, isDefinition: true, scopeLine: 392, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1016 = !DILocalVariable(name: "argv", arg: 1, scope: !1015, file: !51, line: 391, type: !983)
!1017 = !DILocation(line: 391, column: 35, scope: !1015)
!1018 = !DILocalVariable(name: "debar", scope: !1015, file: !51, line: 393, type: !54)
!1019 = !DILocation(line: 393, column: 15, scope: !1015)
!1020 = !DILocation(line: 395, column: 16, scope: !1015)
!1021 = !DILocation(line: 395, column: 11, scope: !1015)
!1022 = !DILocation(line: 395, column: 9, scope: !1015)
!1023 = !DILocation(line: 396, column: 7, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1015, file: !51, line: 396, column: 7)
!1025 = !DILocation(line: 396, column: 13, scope: !1024)
!1026 = !DILocation(line: 396, column: 7, scope: !1015)
!1027 = !DILocation(line: 397, column: 14, scope: !1024)
!1028 = !DILocation(line: 397, column: 61, scope: !1024)
!1029 = !DILocation(line: 397, column: 72, scope: !1024)
!1030 = !DILocation(line: 397, column: 5, scope: !1031)
!1031 = !DILexicalBlockFile(scope: !1024, file: !51, discriminator: 1)
!1032 = !DILocation(line: 397, column: 5, scope: !1024)
!1033 = !DILocation(line: 398, column: 8, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1015, file: !51, line: 398, column: 7)
!1035 = !DILocation(line: 398, column: 7, scope: !1034)
!1036 = !DILocation(line: 398, column: 7, scope: !1015)
!1037 = !DILocation(line: 399, column: 14, scope: !1034)
!1038 = !DILocation(line: 399, column: 70, scope: !1034)
!1039 = !DILocation(line: 399, column: 81, scope: !1034)
!1040 = !DILocation(line: 399, column: 5, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !1034, file: !51, discriminator: 1)
!1042 = !DILocation(line: 399, column: 5, scope: !1034)
!1043 = !DILocation(line: 400, column: 15, scope: !1015)
!1044 = !DILocation(line: 400, column: 3, scope: !1015)
!1045 = !DILocation(line: 402, column: 3, scope: !1015)
!1046 = distinct !DISubprogram(name: "do_control", scope: !51, file: !51, line: 406, type: !981, isLocal: false, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1047 = !DILocalVariable(name: "argv", arg: 1, scope: !1046, file: !51, line: 406, type: !983)
!1048 = !DILocation(line: 406, column: 31, scope: !1046)
!1049 = !DILocalVariable(name: "debar", scope: !1046, file: !51, line: 408, type: !54)
!1050 = !DILocation(line: 408, column: 15, scope: !1046)
!1051 = !DILocalVariable(name: "dir", scope: !1046, file: !51, line: 408, type: !54)
!1052 = !DILocation(line: 408, column: 23, scope: !1046)
!1053 = !DILocation(line: 410, column: 16, scope: !1046)
!1054 = !DILocation(line: 410, column: 11, scope: !1046)
!1055 = !DILocation(line: 410, column: 9, scope: !1046)
!1056 = !DILocation(line: 411, column: 7, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1046, file: !51, line: 411, column: 7)
!1058 = !DILocation(line: 411, column: 13, scope: !1057)
!1059 = !DILocation(line: 411, column: 7, scope: !1046)
!1060 = !DILocation(line: 412, column: 14, scope: !1057)
!1061 = !DILocation(line: 412, column: 62, scope: !1057)
!1062 = !DILocation(line: 412, column: 73, scope: !1057)
!1063 = !DILocation(line: 412, column: 5, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !1057, file: !51, discriminator: 1)
!1065 = !DILocation(line: 412, column: 5, scope: !1057)
!1066 = !DILocation(line: 414, column: 14, scope: !1046)
!1067 = !DILocation(line: 414, column: 9, scope: !1046)
!1068 = !DILocation(line: 414, column: 7, scope: !1046)
!1069 = !DILocation(line: 415, column: 7, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1046, file: !51, line: 415, column: 7)
!1071 = !DILocation(line: 415, column: 11, scope: !1070)
!1072 = !DILocation(line: 415, column: 7, scope: !1046)
!1073 = !DILocation(line: 416, column: 9, scope: !1070)
!1074 = !DILocation(line: 416, column: 5, scope: !1070)
!1075 = !DILocation(line: 417, column: 13, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1070, file: !51, line: 417, column: 12)
!1077 = !DILocation(line: 417, column: 12, scope: !1076)
!1078 = !DILocation(line: 417, column: 12, scope: !1070)
!1079 = !DILocation(line: 418, column: 14, scope: !1076)
!1080 = !DILocation(line: 419, column: 14, scope: !1076)
!1081 = !DILocation(line: 419, column: 25, scope: !1076)
!1082 = !DILocation(line: 418, column: 5, scope: !1083)
!1083 = !DILexicalBlockFile(scope: !1076, file: !51, discriminator: 1)
!1084 = !DILocation(line: 418, column: 5, scope: !1076)
!1085 = !DILocation(line: 421, column: 15, scope: !1046)
!1086 = !DILocation(line: 421, column: 22, scope: !1046)
!1087 = !DILocation(line: 421, column: 3, scope: !1046)
!1088 = !DILocation(line: 423, column: 3, scope: !1046)
!1089 = distinct !DISubprogram(name: "do_extract", scope: !51, file: !51, line: 427, type: !981, isLocal: false, isDefinition: true, scopeLine: 428, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1090 = !DILocalVariable(name: "argv", arg: 1, scope: !1089, file: !51, line: 427, type: !983)
!1091 = !DILocation(line: 427, column: 31, scope: !1089)
!1092 = !DILocalVariable(name: "debar", scope: !1089, file: !51, line: 429, type: !54)
!1093 = !DILocation(line: 429, column: 15, scope: !1089)
!1094 = !DILocalVariable(name: "dir", scope: !1089, file: !51, line: 429, type: !54)
!1095 = !DILocation(line: 429, column: 23, scope: !1089)
!1096 = !DILocalVariable(name: "options", scope: !1089, file: !51, line: 430, type: !3)
!1097 = !DILocation(line: 430, column: 25, scope: !1089)
!1098 = !DILocation(line: 432, column: 7, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1089, file: !51, line: 432, column: 7)
!1100 = !DILocation(line: 432, column: 7, scope: !1089)
!1101 = !DILocation(line: 433, column: 13, scope: !1099)
!1102 = !DILocation(line: 433, column: 5, scope: !1099)
!1103 = !DILocation(line: 435, column: 16, scope: !1089)
!1104 = !DILocation(line: 435, column: 11, scope: !1089)
!1105 = !DILocation(line: 435, column: 9, scope: !1089)
!1106 = !DILocation(line: 436, column: 7, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1089, file: !51, line: 436, column: 7)
!1108 = !DILocation(line: 436, column: 13, scope: !1107)
!1109 = !DILocation(line: 436, column: 7, scope: !1089)
!1110 = !DILocation(line: 437, column: 14, scope: !1107)
!1111 = !DILocation(line: 438, column: 14, scope: !1107)
!1112 = !DILocation(line: 438, column: 25, scope: !1107)
!1113 = !DILocation(line: 437, column: 5, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1107, file: !51, discriminator: 1)
!1115 = !DILocation(line: 437, column: 5, scope: !1107)
!1116 = !DILocation(line: 440, column: 14, scope: !1089)
!1117 = !DILocation(line: 440, column: 9, scope: !1089)
!1118 = !DILocation(line: 440, column: 7, scope: !1089)
!1119 = !DILocation(line: 441, column: 7, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1089, file: !51, line: 441, column: 7)
!1121 = !DILocation(line: 441, column: 11, scope: !1120)
!1122 = !DILocation(line: 441, column: 7, scope: !1089)
!1123 = !DILocation(line: 442, column: 14, scope: !1120)
!1124 = !DILocation(line: 444, column: 14, scope: !1120)
!1125 = !DILocation(line: 444, column: 25, scope: !1120)
!1126 = !DILocation(line: 442, column: 5, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1120, file: !51, discriminator: 1)
!1128 = !DILocation(line: 442, column: 5, scope: !1120)
!1129 = !DILocation(line: 445, column: 13, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1120, file: !51, line: 445, column: 12)
!1131 = !DILocation(line: 445, column: 12, scope: !1130)
!1132 = !DILocation(line: 445, column: 12, scope: !1120)
!1133 = !DILocation(line: 446, column: 14, scope: !1130)
!1134 = !DILocation(line: 447, column: 14, scope: !1130)
!1135 = !DILocation(line: 447, column: 25, scope: !1130)
!1136 = !DILocation(line: 446, column: 5, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1130, file: !51, discriminator: 1)
!1138 = !DILocation(line: 446, column: 5, scope: !1130)
!1139 = !DILocation(line: 449, column: 15, scope: !1089)
!1140 = !DILocation(line: 449, column: 22, scope: !1089)
!1141 = !DILocation(line: 449, column: 27, scope: !1089)
!1142 = !DILocation(line: 449, column: 3, scope: !1089)
!1143 = !DILocation(line: 451, column: 3, scope: !1089)
!1144 = distinct !DISubprogram(name: "do_vextract", scope: !51, file: !51, line: 455, type: !981, isLocal: false, isDefinition: true, scopeLine: 456, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1145 = !DILocalVariable(name: "argv", arg: 1, scope: !1144, file: !51, line: 455, type: !983)
!1146 = !DILocation(line: 455, column: 32, scope: !1144)
!1147 = !DILocation(line: 458, column: 15, scope: !1144)
!1148 = !DILocation(line: 459, column: 21, scope: !1144)
!1149 = !DILocation(line: 459, column: 10, scope: !1144)
!1150 = !DILocation(line: 459, column: 3, scope: !1144)
!1151 = distinct !DISubprogram(name: "do_raw_extract", scope: !51, file: !51, line: 463, type: !981, isLocal: false, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1152 = !DILocalVariable(name: "argv", arg: 1, scope: !1151, file: !51, line: 463, type: !983)
!1153 = !DILocation(line: 463, column: 35, scope: !1151)
!1154 = !DILocalVariable(name: "data_options", scope: !1151, file: !51, line: 465, type: !3)
!1155 = !DILocation(line: 465, column: 25, scope: !1151)
!1156 = !DILocalVariable(name: "debar", scope: !1151, file: !51, line: 466, type: !54)
!1157 = !DILocation(line: 466, column: 15, scope: !1151)
!1158 = !DILocalVariable(name: "dir", scope: !1151, file: !51, line: 466, type: !54)
!1159 = !DILocation(line: 466, column: 23, scope: !1151)
!1160 = !DILocalVariable(name: "control_dir", scope: !1151, file: !51, line: 467, type: !73)
!1161 = !DILocation(line: 467, column: 9, scope: !1151)
!1162 = !DILocation(line: 469, column: 16, scope: !1151)
!1163 = !DILocation(line: 469, column: 11, scope: !1151)
!1164 = !DILocation(line: 469, column: 9, scope: !1151)
!1165 = !DILocation(line: 470, column: 7, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1151, file: !51, line: 470, column: 7)
!1167 = !DILocation(line: 470, column: 13, scope: !1166)
!1168 = !DILocation(line: 470, column: 7, scope: !1151)
!1169 = !DILocation(line: 471, column: 14, scope: !1166)
!1170 = !DILocation(line: 472, column: 14, scope: !1166)
!1171 = !DILocation(line: 472, column: 25, scope: !1166)
!1172 = !DILocation(line: 471, column: 5, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1166, file: !51, discriminator: 1)
!1174 = !DILocation(line: 471, column: 5, scope: !1166)
!1175 = !DILocation(line: 473, column: 19, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1166, file: !51, line: 473, column: 12)
!1177 = !DILocation(line: 473, column: 12, scope: !1176)
!1178 = !DILocation(line: 473, column: 31, scope: !1176)
!1179 = !DILocation(line: 473, column: 12, scope: !1166)
!1180 = !DILocation(line: 474, column: 14, scope: !1176)
!1181 = !DILocation(line: 475, column: 14, scope: !1176)
!1182 = !DILocation(line: 475, column: 25, scope: !1176)
!1183 = !DILocation(line: 474, column: 5, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !1176, file: !51, discriminator: 1)
!1185 = !DILocation(line: 474, column: 5, scope: !1176)
!1186 = !DILocation(line: 477, column: 14, scope: !1151)
!1187 = !DILocation(line: 477, column: 9, scope: !1151)
!1188 = !DILocation(line: 477, column: 7, scope: !1151)
!1189 = !DILocation(line: 478, column: 7, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1151, file: !51, line: 478, column: 7)
!1191 = !DILocation(line: 478, column: 11, scope: !1190)
!1192 = !DILocation(line: 478, column: 7, scope: !1151)
!1193 = !DILocation(line: 479, column: 14, scope: !1190)
!1194 = !DILocation(line: 481, column: 14, scope: !1190)
!1195 = !DILocation(line: 481, column: 25, scope: !1190)
!1196 = !DILocation(line: 479, column: 5, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1190, file: !51, discriminator: 1)
!1198 = !DILocation(line: 479, column: 5, scope: !1190)
!1199 = !DILocation(line: 482, column: 13, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1190, file: !51, line: 482, column: 12)
!1201 = !DILocation(line: 482, column: 12, scope: !1200)
!1202 = !DILocation(line: 482, column: 12, scope: !1190)
!1203 = !DILocation(line: 483, column: 14, scope: !1200)
!1204 = !DILocation(line: 484, column: 14, scope: !1200)
!1205 = !DILocation(line: 484, column: 25, scope: !1200)
!1206 = !DILocation(line: 483, column: 5, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1200, file: !51, discriminator: 1)
!1208 = !DILocation(line: 483, column: 5, scope: !1200)
!1209 = !DILocation(line: 486, column: 34, scope: !1151)
!1210 = !DILocation(line: 486, column: 17, scope: !1151)
!1211 = !DILocation(line: 486, column: 15, scope: !1151)
!1212 = !DILocation(line: 488, column: 16, scope: !1151)
!1213 = !DILocation(line: 489, column: 7, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1151, file: !51, line: 489, column: 7)
!1215 = !DILocation(line: 489, column: 7, scope: !1151)
!1216 = !DILocation(line: 490, column: 18, scope: !1214)
!1217 = !DILocation(line: 490, column: 5, scope: !1214)
!1218 = !DILocation(line: 492, column: 15, scope: !1151)
!1219 = !DILocation(line: 492, column: 22, scope: !1151)
!1220 = !DILocation(line: 492, column: 27, scope: !1151)
!1221 = !DILocation(line: 492, column: 3, scope: !1151)
!1222 = !DILocation(line: 493, column: 15, scope: !1151)
!1223 = !DILocation(line: 493, column: 22, scope: !1151)
!1224 = !DILocation(line: 493, column: 3, scope: !1151)
!1225 = !DILocation(line: 495, column: 8, scope: !1151)
!1226 = !DILocation(line: 495, column: 3, scope: !1151)
!1227 = !DILocation(line: 497, column: 3, scope: !1151)
