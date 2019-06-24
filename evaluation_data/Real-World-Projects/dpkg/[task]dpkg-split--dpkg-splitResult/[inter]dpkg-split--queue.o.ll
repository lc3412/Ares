; ModuleID = './[inter]dpkg-split--queue.o.i'
source_filename = "./[inter]dpkg-split--queue.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
%struct.partinfo = type { %struct.deb_version, i8*, i8*, i8*, i8*, i8*, i64, i32, i32, i64, i64, i64, i64, i64 }
%struct.deb_version = type { i32, i32 }
%struct.partqueue = type { %struct.partqueue*, %struct.partinfo }
%struct.dpkg_ar = type { i8*, i32, i64, i64, i32 }
%struct.dpkg_error = type { i32, i32, i8* }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@opt_outputfile = external global i8*, align 8
@.str = private unnamed_addr constant [47 x i8] c"--auto requires the use of the --output option\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"--auto requires exactly one part file argument\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"unable to read part file '%.250s'\00", align 1
@opt_npquiet = external global i32, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"File '%.250s' is not part of a multipart archive.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"<standard output>\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%s/t.%lx\00", align 1
@opt_depotdir = external global i8*, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"%s/%s.%jx.%x.%x\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"unable to reopen part file '%.250s'\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"unable to open new depot file '%.250s'\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"cannot extract split package part '%s': %s\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"unable to sync file '%s'\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"unable to close file '%s'\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"unable to rename new depot file '%.250s' to '%.250s'\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Part %d of package %s filed (still want \00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c").\0A\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"unable to delete used-up depot file '%.250s'\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [17 x i8] c"<standard error>\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"--%s takes no arguments\00", align 1
@cipaction = external global %struct.cmdinfo*, align 8
@.str.22 = private unnamed_addr constant [48 x i8] c"Junk files left around in the depot directory:\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"unable to stat '%.250s'\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c" %s (%jd bytes)\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c" %s (not a plain file)\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Packages not yet reassembled:\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c" Package %s: part(s) \00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"part file '%.250s' is not a plain file\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"(total %jd bytes)\0A\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"unable to read depot directory '%.250s'\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"queue.c\00", align 1
@__func__.discard_parts = private unnamed_addr constant [14 x i8] c"discard_parts\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"unknown discard_which '%d'\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"unable to discard '%.250s'\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"Deleted %s.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @do_auto(i8**) #0 !dbg !25 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.partinfo*, align 8
  %6 = alloca %struct.partinfo**, align 8
  %7 = alloca %struct.partinfo*, align 8
  %8 = alloca %struct.partqueue*, align 8
  %9 = alloca %struct.partqueue*, align 8
  %10 = alloca %struct.dpkg_ar*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.partinfo*, align 8
  %14 = alloca %struct.partinfo*, align 8
  %15 = alloca %struct.dpkg_error, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !34, metadata !35), !dbg !36
  call void @llvm.dbg.declare(metadata i8** %4, metadata !37, metadata !35), !dbg !38
  call void @llvm.dbg.declare(metadata %struct.partinfo** %5, metadata !39, metadata !35), !dbg !67
  call void @llvm.dbg.declare(metadata %struct.partinfo*** %6, metadata !68, metadata !35), !dbg !70
  call void @llvm.dbg.declare(metadata %struct.partinfo** %7, metadata !71, metadata !35), !dbg !72
  call void @llvm.dbg.declare(metadata %struct.partqueue** %8, metadata !73, metadata !35), !dbg !79
  call void @llvm.dbg.declare(metadata %struct.partqueue** %9, metadata !80, metadata !35), !dbg !81
  call void @llvm.dbg.declare(metadata %struct.dpkg_ar** %10, metadata !82, metadata !35), !dbg !97
  call void @llvm.dbg.declare(metadata i32* %11, metadata !98, metadata !35), !dbg !99
  call void @llvm.dbg.declare(metadata i32* %12, metadata !100, metadata !35), !dbg !101
  %21 = load i8*, i8** @opt_outputfile, align 8, !dbg !102
  %22 = icmp ne i8* %21, null, !dbg !102
  br i1 %22, label %25, label %23, !dbg !104

; <label>:23:                                     ; preds = %1
  %24 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i32 0, i32 0)) #7, !dbg !105
  call void (i8*, ...) @badusage(i8* %24) #8, !dbg !106
  unreachable, !dbg !108

; <label>:25:                                     ; preds = %1
  %26 = load i8**, i8*** %3, align 8, !dbg !109
  %27 = getelementptr inbounds i8*, i8** %26, i32 1, !dbg !109
  store i8** %27, i8*** %3, align 8, !dbg !109
  %28 = load i8*, i8** %26, align 8, !dbg !110
  store i8* %28, i8** %4, align 8, !dbg !111
  %29 = load i8*, i8** %4, align 8, !dbg !112
  %30 = icmp eq i8* %29, null, !dbg !114
  br i1 %30, label %35, label %31, !dbg !115

; <label>:31:                                     ; preds = %25
  %32 = load i8**, i8*** %3, align 8, !dbg !116
  %33 = load i8*, i8** %32, align 8, !dbg !118
  %34 = icmp ne i8* %33, null, !dbg !118
  br i1 %34, label %35, label %37, !dbg !119

; <label>:35:                                     ; preds = %31, %25
  %36 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0)) #7, !dbg !120
  call void (i8*, ...) @badusage(i8* %36) #8, !dbg !121
  unreachable, !dbg !122

; <label>:37:                                     ; preds = %31
  %38 = call i8* @nfmalloc(i64 104), !dbg !123
  %39 = bitcast i8* %38 to %struct.partinfo*, !dbg !123
  store %struct.partinfo* %39, %struct.partinfo** %5, align 8, !dbg !124
  %40 = load i8*, i8** %4, align 8, !dbg !125
  %41 = call %struct.dpkg_ar* @dpkg_ar_open(i8* %40), !dbg !126
  store %struct.dpkg_ar* %41, %struct.dpkg_ar** %10, align 8, !dbg !127
  %42 = load %struct.dpkg_ar*, %struct.dpkg_ar** %10, align 8, !dbg !128
  %43 = icmp ne %struct.dpkg_ar* %42, null, !dbg !128
  br i1 %43, label %47, label %44, !dbg !130

; <label>:44:                                     ; preds = %37
  %45 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0)) #7, !dbg !131
  %46 = load i8*, i8** %4, align 8, !dbg !132
  call void (i8*, ...) @ohshite(i8* %45, i8* %46) #8, !dbg !133
  unreachable, !dbg !135

; <label>:47:                                     ; preds = %37
  %48 = load %struct.dpkg_ar*, %struct.dpkg_ar** %10, align 8, !dbg !136
  %49 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !138
  %50 = call %struct.partinfo* @read_info(%struct.dpkg_ar* %48, %struct.partinfo* %49), !dbg !139
  %51 = icmp ne %struct.partinfo* %50, null, !dbg !139
  br i1 %51, label %62, label %52, !dbg !140

; <label>:52:                                     ; preds = %47
  %53 = load i32, i32* @opt_npquiet, align 4, !dbg !141
  %54 = icmp ne i32 %53, 0, !dbg !141
  br i1 %54, label %59, label %55, !dbg !144

; <label>:55:                                     ; preds = %52
  %56 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !145
  %57 = load i8*, i8** %4, align 8, !dbg !146
  %58 = call i32 (i8*, ...) @printf(i8* %56, i8* %57), !dbg !147
  br label %59, !dbg !149

; <label>:59:                                     ; preds = %55, %52
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !150
  %61 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0)) #7, !dbg !151
  call void @m_output(%struct._IO_FILE* %60, i8* %61), !dbg !152
  store i32 1, i32* %2, align 4, !dbg !154
  br label %326, !dbg !154

; <label>:62:                                     ; preds = %47
  %63 = load %struct.dpkg_ar*, %struct.dpkg_ar** %10, align 8, !dbg !155
  call void @dpkg_ar_close(%struct.dpkg_ar* %63), !dbg !156
  %64 = call %struct.partqueue* @scandepot(), !dbg !157
  store %struct.partqueue* %64, %struct.partqueue** %8, align 8, !dbg !158
  %65 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !159
  %66 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %65, i32 0, i32 8, !dbg !160
  %67 = load i32, i32* %66, align 4, !dbg !160
  %68 = zext i32 %67 to i64, !dbg !159
  %69 = mul i64 8, %68, !dbg !161
  %70 = call i8* @nfmalloc(i64 %69), !dbg !162
  %71 = bitcast i8* %70 to %struct.partinfo**, !dbg !162
  store %struct.partinfo** %71, %struct.partinfo*** %6, align 8, !dbg !163
  store i32 0, i32* %11, align 4, !dbg !164
  br label %72, !dbg !166

; <label>:72:                                     ; preds = %83, %62
  %73 = load i32, i32* %11, align 4, !dbg !167
  %74 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !170
  %75 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %74, i32 0, i32 8, !dbg !171
  %76 = load i32, i32* %75, align 4, !dbg !171
  %77 = icmp ult i32 %73, %76, !dbg !172
  br i1 %77, label %78, label %86, !dbg !173

; <label>:78:                                     ; preds = %72
  %79 = load i32, i32* %11, align 4, !dbg !174
  %80 = zext i32 %79 to i64, !dbg !175
  %81 = load %struct.partinfo**, %struct.partinfo*** %6, align 8, !dbg !175
  %82 = getelementptr inbounds %struct.partinfo*, %struct.partinfo** %81, i64 %80, !dbg !175
  store %struct.partinfo* null, %struct.partinfo** %82, align 8, !dbg !176
  br label %83, !dbg !175

; <label>:83:                                     ; preds = %78
  %84 = load i32, i32* %11, align 4, !dbg !177
  %85 = add i32 %84, 1, !dbg !177
  store i32 %85, i32* %11, align 4, !dbg !177
  br label %72, !dbg !179, !llvm.loop !180

; <label>:86:                                     ; preds = %72
  %87 = load %struct.partqueue*, %struct.partqueue** %8, align 8, !dbg !182
  store %struct.partqueue* %87, %struct.partqueue** %9, align 8, !dbg !184
  br label %88, !dbg !185

; <label>:88:                                     ; preds = %108, %86
  %89 = load %struct.partqueue*, %struct.partqueue** %9, align 8, !dbg !186
  %90 = icmp ne %struct.partqueue* %89, null, !dbg !189
  br i1 %90, label %91, label %112, !dbg !189

; <label>:91:                                     ; preds = %88
  call void @llvm.dbg.declare(metadata %struct.partinfo** %13, metadata !190, metadata !35), !dbg !192
  call void @llvm.dbg.declare(metadata %struct.partinfo** %14, metadata !193, metadata !35), !dbg !194
  %92 = load %struct.partqueue*, %struct.partqueue** %9, align 8, !dbg !195
  %93 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %92, i32 0, i32 1, !dbg !196
  store %struct.partinfo* %93, %struct.partinfo** %14, align 8, !dbg !194
  %94 = load %struct.partinfo*, %struct.partinfo** %14, align 8, !dbg !197
  %95 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !199
  %96 = call zeroext i1 @partmatches(%struct.partinfo* %94, %struct.partinfo* %95), !dbg !200
  br i1 %96, label %98, label %97, !dbg !201

; <label>:97:                                     ; preds = %91
  br label %108, !dbg !202

; <label>:98:                                     ; preds = %91
  %99 = call i8* @nfmalloc(i64 104), !dbg !204
  %100 = bitcast i8* %99 to %struct.partinfo*, !dbg !204
  store %struct.partinfo* %100, %struct.partinfo** %13, align 8, !dbg !205
  %101 = load %struct.partinfo*, %struct.partinfo** %14, align 8, !dbg !206
  %102 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %101, i32 0, i32 1, !dbg !207
  %103 = load i8*, i8** %102, align 8, !dbg !207
  %104 = load %struct.partinfo*, %struct.partinfo** %13, align 8, !dbg !208
  call void @mustgetpartinfo(i8* %103, %struct.partinfo* %104), !dbg !209
  %105 = load %struct.partinfo**, %struct.partinfo*** %6, align 8, !dbg !210
  %106 = load %struct.partinfo*, %struct.partinfo** %13, align 8, !dbg !211
  %107 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !212
  call void @addtopartlist(%struct.partinfo** %105, %struct.partinfo* %106, %struct.partinfo* %107), !dbg !213
  br label %108, !dbg !214

; <label>:108:                                    ; preds = %98, %97
  %109 = load %struct.partqueue*, %struct.partqueue** %9, align 8, !dbg !215
  %110 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %109, i32 0, i32 0, !dbg !217
  %111 = load %struct.partqueue*, %struct.partqueue** %110, align 8, !dbg !217
  store %struct.partqueue* %111, %struct.partqueue** %9, align 8, !dbg !218
  br label %88, !dbg !219, !llvm.loop !220

; <label>:112:                                    ; preds = %88
  %113 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !222
  %114 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %113, i32 0, i32 7, !dbg !223
  %115 = load i32, i32* %114, align 8, !dbg !223
  %116 = sub i32 %115, 1, !dbg !224
  %117 = zext i32 %116 to i64, !dbg !225
  %118 = load %struct.partinfo**, %struct.partinfo*** %6, align 8, !dbg !225
  %119 = getelementptr inbounds %struct.partinfo*, %struct.partinfo** %118, i64 %117, !dbg !225
  %120 = load %struct.partinfo*, %struct.partinfo** %119, align 8, !dbg !225
  store %struct.partinfo* %120, %struct.partinfo** %7, align 8, !dbg !226
  %121 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !227
  %122 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !228
  %123 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %122, i32 0, i32 7, !dbg !229
  %124 = load i32, i32* %123, align 8, !dbg !229
  %125 = sub i32 %124, 1, !dbg !230
  %126 = zext i32 %125 to i64, !dbg !231
  %127 = load %struct.partinfo**, %struct.partinfo*** %6, align 8, !dbg !231
  %128 = getelementptr inbounds %struct.partinfo*, %struct.partinfo** %127, i64 %126, !dbg !231
  store %struct.partinfo* %121, %struct.partinfo** %128, align 8, !dbg !232
  %129 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !233
  %130 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %129, i32 0, i32 8, !dbg !235
  %131 = load i32, i32* %130, align 4, !dbg !235
  %132 = sub i32 %131, 1, !dbg !236
  store i32 %132, i32* %12, align 4, !dbg !237
  br label %133, !dbg !238

; <label>:133:                                    ; preds = %146, %112
  %134 = load i32, i32* %12, align 4, !dbg !239
  %135 = icmp sge i32 %134, 0, !dbg !242
  br i1 %135, label %136, label %143, !dbg !243

; <label>:136:                                    ; preds = %133
  %137 = load i32, i32* %12, align 4, !dbg !244
  %138 = sext i32 %137 to i64, !dbg !246
  %139 = load %struct.partinfo**, %struct.partinfo*** %6, align 8, !dbg !246
  %140 = getelementptr inbounds %struct.partinfo*, %struct.partinfo** %139, i64 %138, !dbg !246
  %141 = load %struct.partinfo*, %struct.partinfo** %140, align 8, !dbg !246
  %142 = icmp ne %struct.partinfo* %141, null, !dbg !247
  br label %143

; <label>:143:                                    ; preds = %136, %133
  %144 = phi i1 [ false, %133 ], [ %142, %136 ]
  br i1 %144, label %145, label %149, !dbg !248

; <label>:145:                                    ; preds = %143
  br label %146, !dbg !250

; <label>:146:                                    ; preds = %145
  %147 = load i32, i32* %12, align 4, !dbg !252
  %148 = add nsw i32 %147, -1, !dbg !252
  store i32 %148, i32* %12, align 4, !dbg !252
  br label %133, !dbg !254, !llvm.loop !255

; <label>:149:                                    ; preds = %143
  %150 = load i32, i32* %12, align 4, !dbg !257
  %151 = icmp sge i32 %150, 0, !dbg !259
  br i1 %151, label %152, label %274, !dbg !260

; <label>:152:                                    ; preds = %149
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %15, metadata !261, metadata !35), !dbg !269
  call void @llvm.dbg.declare(metadata i32* %16, metadata !270, metadata !35), !dbg !271
  call void @llvm.dbg.declare(metadata i32* %17, metadata !272, metadata !35), !dbg !273
  call void @llvm.dbg.declare(metadata i32* %18, metadata !274, metadata !35), !dbg !275
  call void @llvm.dbg.declare(metadata i8** %19, metadata !276, metadata !35), !dbg !277
  call void @llvm.dbg.declare(metadata i8** %20, metadata !278, metadata !35), !dbg !279
  %153 = load i8*, i8** @opt_depotdir, align 8, !dbg !280
  %154 = call i32 @getpid() #7, !dbg !281
  %155 = sext i32 %154 to i64, !dbg !282
  %156 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* %153, i64 %155), !dbg !283
  store i8* %156, i8** %19, align 8, !dbg !285
  %157 = load i8*, i8** @opt_depotdir, align 8, !dbg !286
  %158 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !287
  %159 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %158, i32 0, i32 5, !dbg !288
  %160 = load i8*, i8** %159, align 8, !dbg !288
  %161 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !289
  %162 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %161, i32 0, i32 9, !dbg !290
  %163 = load i64, i64* %162, align 8, !dbg !290
  %164 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !291
  %165 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %164, i32 0, i32 7, !dbg !292
  %166 = load i32, i32* %165, align 8, !dbg !292
  %167 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !293
  %168 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %167, i32 0, i32 8, !dbg !294
  %169 = load i32, i32* %168, align 4, !dbg !294
  %170 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* %157, i8* %160, i64 %163, i32 %166, i32 %169), !dbg !295
  store i8* %170, i8** %20, align 8, !dbg !296
  %171 = load i8*, i8** %4, align 8, !dbg !297
  %172 = call i32 (i8*, i32, ...) @open(i8* %171, i32 0), !dbg !298
  store i32 %172, i32* %16, align 4, !dbg !299
  %173 = load i32, i32* %16, align 4, !dbg !300
  %174 = icmp slt i32 %173, 0, !dbg !302
  br i1 %174, label %175, label %178, !dbg !303

; <label>:175:                                    ; preds = %152
  %176 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !304
  %177 = load i8*, i8** %4, align 8, !dbg !305
  call void (i8*, ...) @ohshite(i8* %176, i8* %177) #8, !dbg !306
  unreachable, !dbg !308

; <label>:178:                                    ; preds = %152
  %179 = load i8*, i8** %19, align 8, !dbg !309
  %180 = call i32 @creat(i8* %179, i32 420), !dbg !310
  store i32 %180, i32* %17, align 4, !dbg !311
  %181 = load i32, i32* %17, align 4, !dbg !312
  %182 = icmp slt i32 %181, 0, !dbg !314
  br i1 %182, label %183, label %186, !dbg !315

; <label>:183:                                    ; preds = %178
  %184 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0)) #7, !dbg !316
  %185 = load i8*, i8** %19, align 8, !dbg !317
  call void (i8*, ...) @ohshite(i8* %184, i8* %185) #8, !dbg !318
  unreachable, !dbg !320

; <label>:186:                                    ; preds = %178
  %187 = load i32, i32* %16, align 4, !dbg !321
  %188 = load i32, i32* %17, align 4, !dbg !323
  %189 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !324
  %190 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %189, i32 0, i32 13, !dbg !325
  %191 = load i64, i64* %190, align 8, !dbg !325
  %192 = call i64 @buffer_copy_IntInt(i32 %187, i32 0, i8* null, i32 4, i32 %188, i32 2, i64 %191, %struct.dpkg_error* %15), !dbg !326
  %193 = icmp slt i64 %192, 0, !dbg !327
  br i1 %193, label %194, label %199, !dbg !328

; <label>:194:                                    ; preds = %186
  %195 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i32 0, i32 0)) #7, !dbg !329
  %196 = load i8*, i8** %4, align 8, !dbg !330
  %197 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %15, i32 0, i32 2, !dbg !331
  %198 = load i8*, i8** %197, align 8, !dbg !331
  call void (i8*, ...) @ohshit(i8* %195, i8* %196, i8* %198) #8, !dbg !332
  unreachable, !dbg !334

; <label>:199:                                    ; preds = %186
  %200 = load i32, i32* %17, align 4, !dbg !335
  %201 = call i32 @fsync(i32 %200), !dbg !337
  %202 = icmp ne i32 %201, 0, !dbg !337
  br i1 %202, label %203, label %206, !dbg !338

; <label>:203:                                    ; preds = %199
  %204 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0)) #7, !dbg !339
  %205 = load i8*, i8** %19, align 8, !dbg !340
  call void (i8*, ...) @ohshite(i8* %204, i8* %205) #8, !dbg !341
  unreachable, !dbg !343

; <label>:206:                                    ; preds = %199
  %207 = load i32, i32* %17, align 4, !dbg !344
  %208 = call i32 @close(i32 %207), !dbg !346
  %209 = icmp ne i32 %208, 0, !dbg !346
  br i1 %209, label %210, label %213, !dbg !347

; <label>:210:                                    ; preds = %206
  %211 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0)) #7, !dbg !348
  %212 = load i8*, i8** %19, align 8, !dbg !349
  call void (i8*, ...) @ohshite(i8* %211, i8* %212) #8, !dbg !350
  unreachable, !dbg !352

; <label>:213:                                    ; preds = %206
  %214 = load i32, i32* %16, align 4, !dbg !353
  %215 = call i32 @close(i32 %214), !dbg !354
  %216 = load i8*, i8** %19, align 8, !dbg !355
  %217 = load i8*, i8** %20, align 8, !dbg !357
  %218 = call i32 @rename(i8* %216, i8* %217) #7, !dbg !358
  %219 = icmp ne i32 %218, 0, !dbg !358
  br i1 %219, label %220, label %224, !dbg !359

; <label>:220:                                    ; preds = %213
  %221 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i32 0, i32 0)) #7, !dbg !360
  %222 = load i8*, i8** %19, align 8, !dbg !361
  %223 = load i8*, i8** %20, align 8, !dbg !362
  call void (i8*, ...) @ohshite(i8* %221, i8* %222, i8* %223) #8, !dbg !363
  unreachable, !dbg !365

; <label>:224:                                    ; preds = %213
  %225 = load i8*, i8** %20, align 8, !dbg !366
  call void @free(i8* %225) #7, !dbg !367
  %226 = load i8*, i8** %19, align 8, !dbg !368
  call void @free(i8* %226) #7, !dbg !369
  %227 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i32 0, i32 0)) #7, !dbg !370
  %228 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !371
  %229 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %228, i32 0, i32 7, !dbg !372
  %230 = load i32, i32* %229, align 8, !dbg !372
  %231 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !373
  %232 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %231, i32 0, i32 2, !dbg !374
  %233 = load i8*, i8** %232, align 8, !dbg !374
  %234 = call i32 (i8*, ...) @printf(i8* %227, i32 %230, i8* %233), !dbg !375
  store i32 0, i32* %11, align 4, !dbg !376
  store i32 0, i32* %18, align 4, !dbg !378
  br label %235, !dbg !379

; <label>:235:                                    ; preds = %268, %224
  %236 = load i32, i32* %11, align 4, !dbg !380
  %237 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !383
  %238 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %237, i32 0, i32 8, !dbg !384
  %239 = load i32, i32* %238, align 4, !dbg !384
  %240 = icmp ult i32 %236, %239, !dbg !385
  br i1 %240, label %241, label %271, !dbg !386

; <label>:241:                                    ; preds = %235
  %242 = load i32, i32* %11, align 4, !dbg !387
  %243 = zext i32 %242 to i64, !dbg !389
  %244 = load %struct.partinfo**, %struct.partinfo*** %6, align 8, !dbg !389
  %245 = getelementptr inbounds %struct.partinfo*, %struct.partinfo** %244, i64 %243, !dbg !389
  %246 = load %struct.partinfo*, %struct.partinfo** %245, align 8, !dbg !389
  %247 = icmp ne %struct.partinfo* %246, null, !dbg !389
  br i1 %247, label %267, label %248, !dbg !390

; <label>:248:                                    ; preds = %241
  %249 = load i32, i32* %18, align 4, !dbg !391
  %250 = add nsw i32 %249, 1, !dbg !391
  store i32 %250, i32* %18, align 4, !dbg !391
  %251 = icmp ne i32 %249, 0, !dbg !391
  br i1 %251, label %253, label %252, !dbg !392

; <label>:252:                                    ; preds = %248
  br label %262, !dbg !393

; <label>:253:                                    ; preds = %248
  %254 = load i32, i32* %11, align 4, !dbg !395
  %255 = load i32, i32* %12, align 4, !dbg !397
  %256 = icmp eq i32 %254, %255, !dbg !398
  br i1 %256, label %257, label %259, !dbg !395

; <label>:257:                                    ; preds = %253
  %258 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #7, !dbg !399
  br label %260, !dbg !401

; <label>:259:                                    ; preds = %253
  br label %260, !dbg !402

; <label>:260:                                    ; preds = %259, %257
  %261 = phi i8* [ %258, %257 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), %259 ], !dbg !404
  br label %262, !dbg !406

; <label>:262:                                    ; preds = %260, %252
  %263 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), %252 ], [ %261, %260 ], !dbg !407
  %264 = load i32, i32* %11, align 4, !dbg !409
  %265 = add i32 %264, 1, !dbg !410
  %266 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %263, i32 %265), !dbg !411
  br label %267, !dbg !411

; <label>:267:                                    ; preds = %262, %241
  br label %268, !dbg !412

; <label>:268:                                    ; preds = %267
  %269 = load i32, i32* %11, align 4, !dbg !413
  %270 = add i32 %269, 1, !dbg !413
  store i32 %270, i32* %11, align 4, !dbg !413
  br label %235, !dbg !415, !llvm.loop !416

; <label>:271:                                    ; preds = %235
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0)), !dbg !418
  %273 = load i8*, i8** @opt_depotdir, align 8, !dbg !419
  call void @dir_sync_path(i8* %273), !dbg !420
  br label %323, !dbg !421

; <label>:274:                                    ; preds = %149
  %275 = load %struct.partinfo**, %struct.partinfo*** %6, align 8, !dbg !422
  %276 = load i8*, i8** @opt_outputfile, align 8, !dbg !424
  call void @reassemble(%struct.partinfo** %275, i8* %276), !dbg !425
  %277 = load %struct.partinfo*, %struct.partinfo** %7, align 8, !dbg !426
  %278 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !427
  %279 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %278, i32 0, i32 7, !dbg !428
  %280 = load i32, i32* %279, align 8, !dbg !428
  %281 = sub i32 %280, 1, !dbg !429
  %282 = zext i32 %281 to i64, !dbg !430
  %283 = load %struct.partinfo**, %struct.partinfo*** %6, align 8, !dbg !430
  %284 = getelementptr inbounds %struct.partinfo*, %struct.partinfo** %283, i64 %282, !dbg !430
  store %struct.partinfo* %277, %struct.partinfo** %284, align 8, !dbg !431
  store i32 0, i32* %11, align 4, !dbg !432
  br label %285, !dbg !434

; <label>:285:                                    ; preds = %319, %274
  %286 = load i32, i32* %11, align 4, !dbg !435
  %287 = load %struct.partinfo*, %struct.partinfo** %5, align 8, !dbg !438
  %288 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %287, i32 0, i32 8, !dbg !439
  %289 = load i32, i32* %288, align 4, !dbg !439
  %290 = icmp ult i32 %286, %289, !dbg !440
  br i1 %290, label %291, label %322, !dbg !441

; <label>:291:                                    ; preds = %285
  %292 = load i32, i32* %11, align 4, !dbg !442
  %293 = zext i32 %292 to i64, !dbg !444
  %294 = load %struct.partinfo**, %struct.partinfo*** %6, align 8, !dbg !444
  %295 = getelementptr inbounds %struct.partinfo*, %struct.partinfo** %294, i64 %293, !dbg !444
  %296 = load %struct.partinfo*, %struct.partinfo** %295, align 8, !dbg !444
  %297 = icmp ne %struct.partinfo* %296, null, !dbg !444
  br i1 %297, label %298, label %318, !dbg !445

; <label>:298:                                    ; preds = %291
  %299 = load i32, i32* %11, align 4, !dbg !446
  %300 = zext i32 %299 to i64, !dbg !448
  %301 = load %struct.partinfo**, %struct.partinfo*** %6, align 8, !dbg !448
  %302 = getelementptr inbounds %struct.partinfo*, %struct.partinfo** %301, i64 %300, !dbg !448
  %303 = load %struct.partinfo*, %struct.partinfo** %302, align 8, !dbg !448
  %304 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %303, i32 0, i32 1, !dbg !449
  %305 = load i8*, i8** %304, align 8, !dbg !449
  %306 = call i32 @unlink(i8* %305) #7, !dbg !450
  %307 = icmp ne i32 %306, 0, !dbg !450
  br i1 %307, label %308, label %317, !dbg !451

; <label>:308:                                    ; preds = %298
  %309 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !452
  %310 = load i32, i32* %11, align 4, !dbg !453
  %311 = zext i32 %310 to i64, !dbg !454
  %312 = load %struct.partinfo**, %struct.partinfo*** %6, align 8, !dbg !454
  %313 = getelementptr inbounds %struct.partinfo*, %struct.partinfo** %312, i64 %311, !dbg !454
  %314 = load %struct.partinfo*, %struct.partinfo** %313, align 8, !dbg !454
  %315 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %314, i32 0, i32 1, !dbg !455
  %316 = load i8*, i8** %315, align 8, !dbg !455
  call void (i8*, ...) @ohshite(i8* %309, i8* %316) #8, !dbg !456
  unreachable, !dbg !458

; <label>:317:                                    ; preds = %298
  br label %318, !dbg !459

; <label>:318:                                    ; preds = %317, %291
  br label %319, !dbg !460

; <label>:319:                                    ; preds = %318
  %320 = load i32, i32* %11, align 4, !dbg !462
  %321 = add i32 %320, 1, !dbg !462
  store i32 %321, i32* %11, align 4, !dbg !462
  br label %285, !dbg !464, !llvm.loop !465

; <label>:322:                                    ; preds = %285
  br label %323

; <label>:323:                                    ; preds = %322, %271
  %324 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !467
  %325 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0)) #7, !dbg !468
  call void @m_output(%struct._IO_FILE* %324, i8* %325), !dbg !469
  store i32 0, i32* %2, align 4, !dbg !471
  br label %326, !dbg !471

; <label>:326:                                    ; preds = %323, %59
  %327 = load i32, i32* %2, align 4, !dbg !472
  ret i32 %327, !dbg !472
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @badusage(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i8* @nfmalloc(i64) #4

declare %struct.dpkg_ar* @dpkg_ar_open(i8*) #4

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #2

declare %struct.partinfo* @read_info(%struct.dpkg_ar*, %struct.partinfo*) #4

declare i32 @printf(i8*, ...) #4

declare void @m_output(%struct._IO_FILE*, i8*) #4

declare void @dpkg_ar_close(%struct.dpkg_ar*) #4

; Function Attrs: nounwind uwtable
define internal %struct.partqueue* @scandepot() #0 !dbg !473 {
  %1 = alloca %struct.__dirstream*, align 8
  %2 = alloca %struct.dirent*, align 8
  %3 = alloca %struct.partqueue*, align 8
  %4 = alloca %struct.partqueue*, align 8
  %5 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %1, metadata !476, metadata !35), !dbg !481
  call void @llvm.dbg.declare(metadata %struct.dirent** %2, metadata !482, metadata !35), !dbg !499
  call void @llvm.dbg.declare(metadata %struct.partqueue** %3, metadata !500, metadata !35), !dbg !501
  store %struct.partqueue* null, %struct.partqueue** %3, align 8, !dbg !501
  %6 = load i8*, i8** @opt_depotdir, align 8, !dbg !502
  %7 = call %struct.__dirstream* @opendir(i8* %6), !dbg !503
  store %struct.__dirstream* %7, %struct.__dirstream** %1, align 8, !dbg !504
  %8 = load %struct.__dirstream*, %struct.__dirstream** %1, align 8, !dbg !505
  %9 = icmp ne %struct.__dirstream* %8, null, !dbg !505
  br i1 %9, label %13, label %10, !dbg !507

; <label>:10:                                     ; preds = %0
  %11 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i32 0, i32 0)) #7, !dbg !508
  %12 = load i8*, i8** @opt_depotdir, align 8, !dbg !509
  call void (i8*, ...) @ohshite(i8* %11, i8* %12) #8, !dbg !510
  unreachable, !dbg !512

; <label>:13:                                     ; preds = %0
  br label %14, !dbg !513

; <label>:14:                                     ; preds = %96, %25, %13
  %15 = load %struct.__dirstream*, %struct.__dirstream** %1, align 8, !dbg !514
  %16 = call %struct.dirent* @readdir(%struct.__dirstream* %15), !dbg !516
  store %struct.dirent* %16, %struct.dirent** %2, align 8, !dbg !517
  %17 = icmp ne %struct.dirent* %16, null, !dbg !518
  br i1 %17, label %18, label %101, !dbg !518

; <label>:18:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata %struct.partqueue** %4, metadata !519, metadata !35), !dbg !521
  call void @llvm.dbg.declare(metadata i8** %5, metadata !522, metadata !35), !dbg !523
  %19 = load %struct.dirent*, %struct.dirent** %2, align 8, !dbg !524
  %20 = getelementptr inbounds %struct.dirent, %struct.dirent* %19, i32 0, i32 4, !dbg !526
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0, !dbg !524
  %22 = load i8, i8* %21, align 1, !dbg !524
  %23 = sext i8 %22 to i32, !dbg !524
  %24 = icmp eq i32 %23, 46, !dbg !527
  br i1 %24, label %25, label %26, !dbg !528

; <label>:25:                                     ; preds = %18
  br label %14, !dbg !529, !llvm.loop !531

; <label>:26:                                     ; preds = %18
  %27 = call i8* @nfmalloc(i64 112), !dbg !532
  %28 = bitcast i8* %27 to %struct.partqueue*, !dbg !532
  store %struct.partqueue* %28, %struct.partqueue** %4, align 8, !dbg !533
  %29 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !534
  %30 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %29, i32 0, i32 1, !dbg !535
  %31 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %30, i32 0, i32 0, !dbg !536
  %32 = getelementptr inbounds %struct.deb_version, %struct.deb_version* %31, i32 0, i32 0, !dbg !537
  store i32 0, i32* %32, align 8, !dbg !538
  %33 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !539
  %34 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %33, i32 0, i32 1, !dbg !540
  %35 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %34, i32 0, i32 0, !dbg !541
  %36 = getelementptr inbounds %struct.deb_version, %struct.deb_version* %35, i32 0, i32 1, !dbg !542
  store i32 0, i32* %36, align 4, !dbg !543
  %37 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !544
  %38 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %37, i32 0, i32 1, !dbg !545
  %39 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %38, i32 0, i32 2, !dbg !546
  store i8* null, i8** %39, align 8, !dbg !547
  %40 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !548
  %41 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %40, i32 0, i32 1, !dbg !549
  %42 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %41, i32 0, i32 3, !dbg !550
  store i8* null, i8** %42, align 8, !dbg !551
  %43 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !552
  %44 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %43, i32 0, i32 1, !dbg !553
  %45 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %44, i32 0, i32 4, !dbg !554
  store i8* null, i8** %45, align 8, !dbg !555
  %46 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !556
  %47 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %46, i32 0, i32 1, !dbg !557
  %48 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %47, i32 0, i32 11, !dbg !558
  store i64 0, i64* %48, align 8, !dbg !559
  %49 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !560
  %50 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %49, i32 0, i32 1, !dbg !561
  %51 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %50, i32 0, i32 10, !dbg !562
  store i64 0, i64* %51, align 8, !dbg !563
  %52 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !564
  %53 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %52, i32 0, i32 1, !dbg !565
  %54 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %53, i32 0, i32 6, !dbg !566
  store i64 0, i64* %54, align 8, !dbg !567
  %55 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !568
  %56 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %55, i32 0, i32 1, !dbg !569
  %57 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %56, i32 0, i32 12, !dbg !570
  store i64 0, i64* %57, align 8, !dbg !571
  %58 = load i8*, i8** @opt_depotdir, align 8, !dbg !572
  %59 = call i64 @strlen(i8* %58) #9, !dbg !573
  %60 = add i64 %59, 1, !dbg !574
  %61 = load %struct.dirent*, %struct.dirent** %2, align 8, !dbg !575
  %62 = getelementptr inbounds %struct.dirent, %struct.dirent* %61, i32 0, i32 4, !dbg !576
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %62, i32 0, i32 0, !dbg !575
  %64 = call i64 @strlen(i8* %63) #9, !dbg !577
  %65 = add i64 %60, %64, !dbg !579
  %66 = add i64 %65, 1, !dbg !580
  %67 = call i8* @nfmalloc(i64 %66), !dbg !581
  store i8* %67, i8** %5, align 8, !dbg !583
  %68 = load i8*, i8** %5, align 8, !dbg !584
  %69 = load i8*, i8** @opt_depotdir, align 8, !dbg !585
  %70 = load %struct.dirent*, %struct.dirent** %2, align 8, !dbg !586
  %71 = getelementptr inbounds %struct.dirent, %struct.dirent* %70, i32 0, i32 4, !dbg !587
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %71, i32 0, i32 0, !dbg !586
  %73 = call i32 (i8*, i8*, ...) @sprintf(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* %69, i8* %72) #7, !dbg !588
  %74 = load i8*, i8** %5, align 8, !dbg !589
  %75 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !590
  %76 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %75, i32 0, i32 1, !dbg !591
  %77 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %76, i32 0, i32 1, !dbg !592
  store i8* %74, i8** %77, align 8, !dbg !593
  %78 = load %struct.dirent*, %struct.dirent** %2, align 8, !dbg !594
  %79 = getelementptr inbounds %struct.dirent, %struct.dirent* %78, i32 0, i32 4, !dbg !596
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %79, i32 0, i32 0, !dbg !594
  %81 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !597
  %82 = call zeroext i1 @decompose_filename(i8* %80, %struct.partqueue* %81), !dbg !598
  br i1 %82, label %96, label %83, !dbg !599

; <label>:83:                                     ; preds = %26
  %84 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !600
  %85 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %84, i32 0, i32 1, !dbg !602
  %86 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %85, i32 0, i32 5, !dbg !603
  store i8* null, i8** %86, align 8, !dbg !604
  %87 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !605
  %88 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %87, i32 0, i32 1, !dbg !606
  %89 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %88, i32 0, i32 8, !dbg !607
  store i32 0, i32* %89, align 4, !dbg !608
  %90 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !609
  %91 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %90, i32 0, i32 1, !dbg !610
  %92 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %91, i32 0, i32 7, !dbg !611
  store i32 0, i32* %92, align 8, !dbg !612
  %93 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !613
  %94 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %93, i32 0, i32 1, !dbg !614
  %95 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %94, i32 0, i32 9, !dbg !615
  store i64 0, i64* %95, align 8, !dbg !616
  br label %96, !dbg !617

; <label>:96:                                     ; preds = %83, %26
  %97 = load %struct.partqueue*, %struct.partqueue** %3, align 8, !dbg !618
  %98 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !619
  %99 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %98, i32 0, i32 0, !dbg !620
  store %struct.partqueue* %97, %struct.partqueue** %99, align 8, !dbg !621
  %100 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !622
  store %struct.partqueue* %100, %struct.partqueue** %3, align 8, !dbg !623
  br label %14, !dbg !624, !llvm.loop !531

; <label>:101:                                    ; preds = %14
  %102 = load %struct.__dirstream*, %struct.__dirstream** %1, align 8, !dbg !626
  %103 = call i32 @closedir(%struct.__dirstream* %102), !dbg !627
  %104 = load %struct.partqueue*, %struct.partqueue** %3, align 8, !dbg !628
  ret %struct.partqueue* %104, !dbg !629
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @partmatches(%struct.partinfo*, %struct.partinfo*) #0 !dbg !630 {
  %3 = alloca %struct.partinfo*, align 8
  %4 = alloca %struct.partinfo*, align 8
  store %struct.partinfo* %0, %struct.partinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.partinfo** %3, metadata !634, metadata !35), !dbg !635
  store %struct.partinfo* %1, %struct.partinfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.partinfo** %4, metadata !636, metadata !35), !dbg !637
  %5 = load %struct.partinfo*, %struct.partinfo** %3, align 8, !dbg !638
  %6 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %5, i32 0, i32 5, !dbg !639
  %7 = load i8*, i8** %6, align 8, !dbg !639
  %8 = icmp ne i8* %7, null, !dbg !638
  br i1 %8, label %9, label %34, !dbg !640

; <label>:9:                                      ; preds = %2
  %10 = load %struct.partinfo*, %struct.partinfo** %3, align 8, !dbg !641
  %11 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %10, i32 0, i32 5, !dbg !642
  %12 = load i8*, i8** %11, align 8, !dbg !642
  %13 = load %struct.partinfo*, %struct.partinfo** %4, align 8, !dbg !643
  %14 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %13, i32 0, i32 5, !dbg !644
  %15 = load i8*, i8** %14, align 8, !dbg !644
  %16 = call i32 @strcmp(i8* %12, i8* %15) #9, !dbg !645
  %17 = icmp eq i32 %16, 0, !dbg !646
  br i1 %17, label %18, label %34, !dbg !647

; <label>:18:                                     ; preds = %9
  %19 = load %struct.partinfo*, %struct.partinfo** %3, align 8, !dbg !648
  %20 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %19, i32 0, i32 8, !dbg !649
  %21 = load i32, i32* %20, align 4, !dbg !649
  %22 = load %struct.partinfo*, %struct.partinfo** %4, align 8, !dbg !650
  %23 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %22, i32 0, i32 8, !dbg !651
  %24 = load i32, i32* %23, align 4, !dbg !651
  %25 = icmp eq i32 %21, %24, !dbg !652
  br i1 %25, label %26, label %34, !dbg !653

; <label>:26:                                     ; preds = %18
  %27 = load %struct.partinfo*, %struct.partinfo** %3, align 8, !dbg !654
  %28 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %27, i32 0, i32 9, !dbg !655
  %29 = load i64, i64* %28, align 8, !dbg !655
  %30 = load %struct.partinfo*, %struct.partinfo** %4, align 8, !dbg !656
  %31 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %30, i32 0, i32 9, !dbg !657
  %32 = load i64, i64* %31, align 8, !dbg !657
  %33 = icmp eq i64 %29, %32, !dbg !658
  br label %34

; <label>:34:                                     ; preds = %26, %18, %9, %2
  %35 = phi i1 [ false, %18 ], [ false, %9 ], [ false, %2 ], [ %33, %26 ]
  ret i1 %35, !dbg !659
}

declare void @mustgetpartinfo(i8*, %struct.partinfo*) #4

declare void @addtopartlist(%struct.partinfo**, %struct.partinfo*, %struct.partinfo*) #4

declare i8* @str_fmt(i8*, ...) #4

; Function Attrs: nounwind
declare i32 @getpid() #3

declare i32 @open(i8*, i32, ...) #4

declare i32 @creat(i8*, i32) #4

declare i64 @buffer_copy_IntInt(i32, i32, i8*, i32, i32, i32, i64, %struct.dpkg_error*) #4

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #2

declare i32 @fsync(i32) #4

declare i32 @close(i32) #4

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

declare void @dir_sync_path(i8*) #4

declare void @reassemble(%struct.partinfo**, i8*) #4

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @do_queue(i8**) #0 !dbg !661 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.partqueue*, align 8
  %4 = alloca %struct.partqueue*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.partinfo, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.partqueue*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !662, metadata !35), !dbg !663
  call void @llvm.dbg.declare(metadata %struct.partqueue** %3, metadata !664, metadata !35), !dbg !665
  call void @llvm.dbg.declare(metadata %struct.partqueue** %4, metadata !666, metadata !35), !dbg !667
  call void @llvm.dbg.declare(metadata i8** %5, metadata !668, metadata !35), !dbg !669
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !670, metadata !35), !dbg !703
  call void @llvm.dbg.declare(metadata i64* %7, metadata !704, metadata !35), !dbg !705
  %11 = load i8**, i8*** %2, align 8, !dbg !706
  %12 = load i8*, i8** %11, align 8, !dbg !708
  %13 = icmp ne i8* %12, null, !dbg !708
  br i1 %13, label %14, label %19, !dbg !709

; <label>:14:                                     ; preds = %1
  %15 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0)) #7, !dbg !710
  %16 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !711
  %17 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %16, i32 0, i32 0, !dbg !712
  %18 = load i8*, i8** %17, align 8, !dbg !712
  call void (i8*, ...) @badusage(i8* %15, i8* %18) #8, !dbg !713
  unreachable, !dbg !715

; <label>:19:                                     ; preds = %1
  %20 = call %struct.partqueue* @scandepot(), !dbg !716
  store %struct.partqueue* %20, %struct.partqueue** %3, align 8, !dbg !717
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.22, i32 0, i32 0), i8** %5, align 8, !dbg !718
  %21 = load %struct.partqueue*, %struct.partqueue** %3, align 8, !dbg !719
  store %struct.partqueue* %21, %struct.partqueue** %4, align 8, !dbg !721
  br label %22, !dbg !722

; <label>:22:                                     ; preds = %72, %19
  %23 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !723
  %24 = icmp ne %struct.partqueue* %23, null, !dbg !726
  br i1 %24, label %25, label %76, !dbg !726

; <label>:25:                                     ; preds = %22
  %26 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !727
  %27 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %26, i32 0, i32 1, !dbg !730
  %28 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %27, i32 0, i32 5, !dbg !731
  %29 = load i8*, i8** %28, align 8, !dbg !731
  %30 = icmp ne i8* %29, null, !dbg !727
  br i1 %30, label %31, label %32, !dbg !732

; <label>:31:                                     ; preds = %25
  br label %72, !dbg !733

; <label>:32:                                     ; preds = %25
  %33 = load i8*, i8** %5, align 8, !dbg !735
  %34 = call i8* @gettext(i8* %33) #7, !dbg !736
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !737
  %36 = call i32 @fputs(i8* %34, %struct._IO_FILE* %35), !dbg !738
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8** %5, align 8, !dbg !740
  %37 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !741
  %38 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %37, i32 0, i32 1, !dbg !743
  %39 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %38, i32 0, i32 1, !dbg !744
  %40 = load i8*, i8** %39, align 8, !dbg !744
  %41 = call i32 @lstat(i8* %40, %struct.stat* %6) #7, !dbg !745
  %42 = icmp ne i32 %41, 0, !dbg !745
  br i1 %42, label %43, label %49, !dbg !746

; <label>:43:                                     ; preds = %32
  %44 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0)) #7, !dbg !747
  %45 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !748
  %46 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %45, i32 0, i32 1, !dbg !749
  %47 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %46, i32 0, i32 1, !dbg !750
  %48 = load i8*, i8** %47, align 8, !dbg !750
  call void (i8*, ...) @ohshit(i8* %44, i8* %48) #8, !dbg !751
  unreachable, !dbg !753

; <label>:49:                                     ; preds = %32
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3, !dbg !754
  %51 = load i32, i32* %50, align 8, !dbg !754
  %52 = and i32 %51, 61440, !dbg !756
  %53 = icmp eq i32 %52, 32768, !dbg !757
  br i1 %53, label %54, label %64, !dbg !758

; <label>:54:                                     ; preds = %49
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 8, !dbg !759
  %56 = load i64, i64* %55, align 8, !dbg !759
  store i64 %56, i64* %7, align 8, !dbg !761
  %57 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0)) #7, !dbg !762
  %58 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !763
  %59 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %58, i32 0, i32 1, !dbg !764
  %60 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %59, i32 0, i32 1, !dbg !765
  %61 = load i8*, i8** %60, align 8, !dbg !765
  %62 = load i64, i64* %7, align 8, !dbg !766
  %63 = call i32 (i8*, ...) @printf(i8* %57, i8* %61, i64 %62), !dbg !767
  br label %71, !dbg !769

; <label>:64:                                     ; preds = %49
  %65 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0)) #7, !dbg !770
  %66 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !772
  %67 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %66, i32 0, i32 1, !dbg !773
  %68 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %67, i32 0, i32 1, !dbg !774
  %69 = load i8*, i8** %68, align 8, !dbg !774
  %70 = call i32 (i8*, ...) @printf(i8* %65, i8* %69), !dbg !775
  br label %71

; <label>:71:                                     ; preds = %64, %54
  br label %72, !dbg !777

; <label>:72:                                     ; preds = %71, %31
  %73 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !778
  %74 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %73, i32 0, i32 0, !dbg !780
  %75 = load %struct.partqueue*, %struct.partqueue** %74, align 8, !dbg !780
  store %struct.partqueue* %75, %struct.partqueue** %4, align 8, !dbg !781
  br label %22, !dbg !782, !llvm.loop !783

; <label>:76:                                     ; preds = %22
  %77 = load i8*, i8** %5, align 8, !dbg !785
  %78 = load i8, i8* %77, align 1, !dbg !787
  %79 = icmp ne i8 %78, 0, !dbg !787
  br i1 %79, label %82, label %80, !dbg !788

; <label>:80:                                     ; preds = %76
  %81 = call i32 @putchar(i32 10), !dbg !789
  br label %82, !dbg !789

; <label>:82:                                     ; preds = %80, %76
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i32 0, i32 0), i8** %5, align 8, !dbg !791
  %83 = load %struct.partqueue*, %struct.partqueue** %3, align 8, !dbg !792
  store %struct.partqueue* %83, %struct.partqueue** %4, align 8, !dbg !794
  br label %84, !dbg !795

; <label>:84:                                     ; preds = %185, %82
  %85 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !796
  %86 = icmp ne %struct.partqueue* %85, null, !dbg !799
  br i1 %86, label %87, label %189, !dbg !799

; <label>:87:                                     ; preds = %84
  call void @llvm.dbg.declare(metadata %struct.partinfo* %8, metadata !800, metadata !35), !dbg !802
  call void @llvm.dbg.declare(metadata i32* %9, metadata !803, metadata !35), !dbg !804
  %88 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !805
  %89 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %88, i32 0, i32 1, !dbg !807
  %90 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %89, i32 0, i32 5, !dbg !808
  %91 = load i8*, i8** %90, align 8, !dbg !808
  %92 = icmp ne i8* %91, null, !dbg !805
  br i1 %92, label %94, label %93, !dbg !809

; <label>:93:                                     ; preds = %87
  br label %185, !dbg !810

; <label>:94:                                     ; preds = %87
  %95 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !812
  %96 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %95, i32 0, i32 1, !dbg !813
  %97 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %96, i32 0, i32 1, !dbg !814
  %98 = load i8*, i8** %97, align 8, !dbg !814
  call void @mustgetpartinfo(i8* %98, %struct.partinfo* %8), !dbg !815
  %99 = load i8*, i8** %5, align 8, !dbg !816
  %100 = call i8* @gettext(i8* %99) #7, !dbg !817
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !818
  %102 = call i32 @fputs(i8* %100, %struct._IO_FILE* %101), !dbg !819
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8** %5, align 8, !dbg !821
  %103 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0)) #7, !dbg !822
  %104 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %8, i32 0, i32 2, !dbg !823
  %105 = load i8*, i8** %104, align 8, !dbg !823
  %106 = call i32 (i8*, ...) @printf(i8* %103, i8* %105), !dbg !824
  store i64 0, i64* %7, align 8, !dbg !825
  store i32 0, i32* %9, align 4, !dbg !826
  br label %107, !dbg !828

; <label>:107:                                    ; preds = %178, %94
  %108 = load i32, i32* %9, align 4, !dbg !829
  %109 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %8, i32 0, i32 8, !dbg !832
  %110 = load i32, i32* %109, align 4, !dbg !832
  %111 = icmp ult i32 %108, %110, !dbg !833
  br i1 %111, label %112, label %181, !dbg !834

; <label>:112:                                    ; preds = %107
  call void @llvm.dbg.declare(metadata %struct.partqueue** %10, metadata !835, metadata !35), !dbg !837
  %113 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !838
  store %struct.partqueue* %113, %struct.partqueue** %10, align 8, !dbg !840
  br label %114, !dbg !841

; <label>:114:                                    ; preds = %135, %112
  %115 = load %struct.partqueue*, %struct.partqueue** %10, align 8, !dbg !842
  %116 = icmp ne %struct.partqueue* %115, null, !dbg !842
  br i1 %116, label %117, label %132, !dbg !844

; <label>:117:                                    ; preds = %114
  %118 = load %struct.partqueue*, %struct.partqueue** %10, align 8, !dbg !845
  %119 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %118, i32 0, i32 1, !dbg !847
  %120 = call zeroext i1 @partmatches(%struct.partinfo* %119, %struct.partinfo* %8), !dbg !848
  br i1 %120, label %121, label %129, !dbg !849

; <label>:121:                                    ; preds = %117
  %122 = load %struct.partqueue*, %struct.partqueue** %10, align 8, !dbg !850
  %123 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %122, i32 0, i32 1, !dbg !852
  %124 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %123, i32 0, i32 7, !dbg !853
  %125 = load i32, i32* %124, align 8, !dbg !853
  %126 = load i32, i32* %9, align 4, !dbg !854
  %127 = add i32 %126, 1, !dbg !855
  %128 = icmp eq i32 %125, %127, !dbg !856
  br label %129

; <label>:129:                                    ; preds = %121, %117
  %130 = phi i1 [ false, %117 ], [ %128, %121 ]
  %131 = xor i1 %130, true, !dbg !857
  br label %132

; <label>:132:                                    ; preds = %129, %114
  %133 = phi i1 [ false, %114 ], [ %131, %129 ]
  br i1 %133, label %134, label %139, !dbg !859

; <label>:134:                                    ; preds = %132
  br label %135, !dbg !861

; <label>:135:                                    ; preds = %134
  %136 = load %struct.partqueue*, %struct.partqueue** %10, align 8, !dbg !863
  %137 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %136, i32 0, i32 0, !dbg !864
  %138 = load %struct.partqueue*, %struct.partqueue** %137, align 8, !dbg !864
  store %struct.partqueue* %138, %struct.partqueue** %10, align 8, !dbg !865
  br label %114, !dbg !866, !llvm.loop !867

; <label>:139:                                    ; preds = %132
  %140 = load %struct.partqueue*, %struct.partqueue** %10, align 8, !dbg !869
  %141 = icmp ne %struct.partqueue* %140, null, !dbg !869
  br i1 %141, label %142, label %177, !dbg !871

; <label>:142:                                    ; preds = %139
  %143 = load i32, i32* %9, align 4, !dbg !872
  %144 = add i32 %143, 1, !dbg !874
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 %144), !dbg !875
  %146 = load %struct.partqueue*, %struct.partqueue** %10, align 8, !dbg !876
  %147 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %146, i32 0, i32 1, !dbg !878
  %148 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %147, i32 0, i32 1, !dbg !879
  %149 = load i8*, i8** %148, align 8, !dbg !879
  %150 = call i32 @lstat(i8* %149, %struct.stat* %6) #7, !dbg !880
  %151 = icmp ne i32 %150, 0, !dbg !880
  br i1 %151, label %152, label %158, !dbg !881

; <label>:152:                                    ; preds = %142
  %153 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0)) #7, !dbg !882
  %154 = load %struct.partqueue*, %struct.partqueue** %10, align 8, !dbg !883
  %155 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %154, i32 0, i32 1, !dbg !884
  %156 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %155, i32 0, i32 1, !dbg !885
  %157 = load i8*, i8** %156, align 8, !dbg !885
  call void (i8*, ...) @ohshite(i8* %153, i8* %157) #8, !dbg !886
  unreachable, !dbg !888

; <label>:158:                                    ; preds = %142
  %159 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3, !dbg !889
  %160 = load i32, i32* %159, align 8, !dbg !889
  %161 = and i32 %160, 61440, !dbg !891
  %162 = icmp eq i32 %161, 32768, !dbg !892
  br i1 %162, label %169, label %163, !dbg !893

; <label>:163:                                    ; preds = %158
  %164 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i32 0, i32 0)) #7, !dbg !894
  %165 = load %struct.partqueue*, %struct.partqueue** %10, align 8, !dbg !895
  %166 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %165, i32 0, i32 1, !dbg !896
  %167 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %166, i32 0, i32 1, !dbg !897
  %168 = load i8*, i8** %167, align 8, !dbg !897
  call void (i8*, ...) @ohshit(i8* %164, i8* %168) #8, !dbg !898
  unreachable, !dbg !900

; <label>:169:                                    ; preds = %158
  %170 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 8, !dbg !901
  %171 = load i64, i64* %170, align 8, !dbg !901
  %172 = load i64, i64* %7, align 8, !dbg !902
  %173 = add nsw i64 %172, %171, !dbg !902
  store i64 %173, i64* %7, align 8, !dbg !902
  %174 = load %struct.partqueue*, %struct.partqueue** %10, align 8, !dbg !903
  %175 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %174, i32 0, i32 1, !dbg !904
  %176 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %175, i32 0, i32 5, !dbg !905
  store i8* null, i8** %176, align 8, !dbg !906
  br label %177, !dbg !907

; <label>:177:                                    ; preds = %169, %139
  br label %178, !dbg !908

; <label>:178:                                    ; preds = %177
  %179 = load i32, i32* %9, align 4, !dbg !909
  %180 = add i32 %179, 1, !dbg !909
  store i32 %180, i32* %9, align 4, !dbg !909
  br label %107, !dbg !911, !llvm.loop !912

; <label>:181:                                    ; preds = %107
  %182 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0)) #7, !dbg !914
  %183 = load i64, i64* %7, align 8, !dbg !915
  %184 = call i32 (i8*, ...) @printf(i8* %182, i64 %183), !dbg !916
  br label %185, !dbg !917

; <label>:185:                                    ; preds = %181, %93
  %186 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !918
  %187 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %186, i32 0, i32 0, !dbg !920
  %188 = load %struct.partqueue*, %struct.partqueue** %187, align 8, !dbg !920
  store %struct.partqueue* %188, %struct.partqueue** %4, align 8, !dbg !921
  br label %84, !dbg !922, !llvm.loop !923

; <label>:189:                                    ; preds = %84
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !925
  %191 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0)) #7, !dbg !926
  call void @m_output(%struct._IO_FILE* %190, i8* %191), !dbg !927
  ret i32 0, !dbg !929
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #3

declare i32 @putchar(i32) #4

; Function Attrs: nounwind uwtable
define i32 @do_discard(i8**) #0 !dbg !930 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.partqueue*, align 8
  %5 = alloca %struct.partqueue*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !931, metadata !35), !dbg !932
  call void @llvm.dbg.declare(metadata i8** %3, metadata !933, metadata !35), !dbg !934
  call void @llvm.dbg.declare(metadata %struct.partqueue** %4, metadata !935, metadata !35), !dbg !936
  call void @llvm.dbg.declare(metadata %struct.partqueue** %5, metadata !937, metadata !35), !dbg !938
  %6 = call %struct.partqueue* @scandepot(), !dbg !939
  store %struct.partqueue* %6, %struct.partqueue** %4, align 8, !dbg !940
  %7 = load i8**, i8*** %2, align 8, !dbg !941
  %8 = load i8*, i8** %7, align 8, !dbg !943
  %9 = icmp ne i8* %8, null, !dbg !943
  br i1 %9, label %10, label %44, !dbg !944

; <label>:10:                                     ; preds = %1
  %11 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !945
  store %struct.partqueue* %11, %struct.partqueue** %5, align 8, !dbg !948
  br label %12, !dbg !949

; <label>:12:                                     ; preds = %29, %10
  %13 = load %struct.partqueue*, %struct.partqueue** %5, align 8, !dbg !950
  %14 = icmp ne %struct.partqueue* %13, null, !dbg !953
  br i1 %14, label %15, label %33, !dbg !953

; <label>:15:                                     ; preds = %12
  %16 = load %struct.partqueue*, %struct.partqueue** %5, align 8, !dbg !954
  %17 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %16, i32 0, i32 1, !dbg !956
  %18 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %17, i32 0, i32 5, !dbg !957
  %19 = load i8*, i8** %18, align 8, !dbg !957
  %20 = icmp ne i8* %19, null, !dbg !954
  br i1 %20, label %21, label %28, !dbg !958

; <label>:21:                                     ; preds = %15
  %22 = load %struct.partqueue*, %struct.partqueue** %5, align 8, !dbg !959
  %23 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %22, i32 0, i32 1, !dbg !960
  %24 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %23, i32 0, i32 1, !dbg !961
  %25 = load i8*, i8** %24, align 8, !dbg !961
  %26 = load %struct.partqueue*, %struct.partqueue** %5, align 8, !dbg !962
  %27 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %26, i32 0, i32 1, !dbg !963
  call void @mustgetpartinfo(i8* %25, %struct.partinfo* %27), !dbg !964
  br label %28, !dbg !964

; <label>:28:                                     ; preds = %21, %15
  br label %29, !dbg !965

; <label>:29:                                     ; preds = %28
  %30 = load %struct.partqueue*, %struct.partqueue** %5, align 8, !dbg !967
  %31 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %30, i32 0, i32 0, !dbg !969
  %32 = load %struct.partqueue*, %struct.partqueue** %31, align 8, !dbg !969
  store %struct.partqueue* %32, %struct.partqueue** %5, align 8, !dbg !970
  br label %12, !dbg !971, !llvm.loop !972

; <label>:33:                                     ; preds = %12
  %34 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !974
  call void @discard_parts(%struct.partqueue* %34, i32 0, i8* null), !dbg !975
  br label %35, !dbg !976

; <label>:35:                                     ; preds = %40, %33
  %36 = load i8**, i8*** %2, align 8, !dbg !977
  %37 = getelementptr inbounds i8*, i8** %36, i32 1, !dbg !977
  store i8** %37, i8*** %2, align 8, !dbg !977
  %38 = load i8*, i8** %36, align 8, !dbg !979
  store i8* %38, i8** %3, align 8, !dbg !980
  %39 = icmp ne i8* %38, null, !dbg !981
  br i1 %39, label %40, label %43, !dbg !981

; <label>:40:                                     ; preds = %35
  %41 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !982
  %42 = load i8*, i8** %3, align 8, !dbg !983
  call void @discard_parts(%struct.partqueue* %41, i32 1, i8* %42), !dbg !984
  br label %35, !dbg !985, !llvm.loop !987

; <label>:43:                                     ; preds = %35
  br label %46, !dbg !988

; <label>:44:                                     ; preds = %1
  %45 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !989
  call void @discard_parts(%struct.partqueue* %45, i32 2, i8* null), !dbg !991
  br label %46

; <label>:46:                                     ; preds = %44, %43
  ret i32 0, !dbg !992
}

; Function Attrs: nounwind uwtable
define internal void @discard_parts(%struct.partqueue*, i32, i8*) #0 !dbg !993 {
  %4 = alloca %struct.partqueue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.partqueue*, align 8
  store %struct.partqueue* %0, %struct.partqueue** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.partqueue** %4, metadata !996, metadata !35), !dbg !997
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !998, metadata !35), !dbg !999
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1000, metadata !35), !dbg !1001
  call void @llvm.dbg.declare(metadata %struct.partqueue** %7, metadata !1002, metadata !35), !dbg !1003
  %8 = load %struct.partqueue*, %struct.partqueue** %4, align 8, !dbg !1004
  store %struct.partqueue* %8, %struct.partqueue** %7, align 8, !dbg !1006
  br label %9, !dbg !1007

; <label>:9:                                      ; preds = %61, %3
  %10 = load %struct.partqueue*, %struct.partqueue** %7, align 8, !dbg !1008
  %11 = icmp ne %struct.partqueue* %10, null, !dbg !1011
  br i1 %11, label %12, label %65, !dbg !1011

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %5, align 4, !dbg !1012
  switch i32 %13, label %39 [
    i32 0, label %14
    i32 1, label %22
    i32 2, label %38
  ], !dbg !1014

; <label>:14:                                     ; preds = %12
  %15 = load %struct.partqueue*, %struct.partqueue** %7, align 8, !dbg !1015
  %16 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %15, i32 0, i32 1, !dbg !1018
  %17 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %16, i32 0, i32 5, !dbg !1019
  %18 = load i8*, i8** %17, align 8, !dbg !1019
  %19 = icmp ne i8* %18, null, !dbg !1015
  br i1 %19, label %20, label %21, !dbg !1020

; <label>:20:                                     ; preds = %14
  br label %61, !dbg !1021

; <label>:21:                                     ; preds = %14
  br label %41, !dbg !1023

; <label>:22:                                     ; preds = %12
  %23 = load %struct.partqueue*, %struct.partqueue** %7, align 8, !dbg !1024
  %24 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %23, i32 0, i32 1, !dbg !1026
  %25 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %24, i32 0, i32 5, !dbg !1027
  %26 = load i8*, i8** %25, align 8, !dbg !1027
  %27 = icmp ne i8* %26, null, !dbg !1024
  br i1 %27, label %28, label %36, !dbg !1028

; <label>:28:                                     ; preds = %22
  %29 = load %struct.partqueue*, %struct.partqueue** %7, align 8, !dbg !1029
  %30 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %29, i32 0, i32 1, !dbg !1031
  %31 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %30, i32 0, i32 2, !dbg !1032
  %32 = load i8*, i8** %31, align 8, !dbg !1032
  %33 = load i8*, i8** %6, align 8, !dbg !1033
  %34 = call i32 @strcasecmp(i8* %32, i8* %33) #9, !dbg !1034
  %35 = icmp ne i32 %34, 0, !dbg !1034
  br i1 %35, label %36, label %37, !dbg !1035

; <label>:36:                                     ; preds = %28, %22
  br label %61, !dbg !1036

; <label>:37:                                     ; preds = %28
  br label %41, !dbg !1038

; <label>:38:                                     ; preds = %12
  br label %41, !dbg !1039

; <label>:39:                                     ; preds = %12
  %40 = load i32, i32* %5, align 4, !dbg !1040
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i32 330, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.discard_parts, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i32 0, i32 0), i32 %40) #8, !dbg !1041
  unreachable, !dbg !1041

; <label>:41:                                     ; preds = %38, %37, %21
  %42 = load %struct.partqueue*, %struct.partqueue** %7, align 8, !dbg !1042
  %43 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %42, i32 0, i32 1, !dbg !1044
  %44 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %43, i32 0, i32 1, !dbg !1045
  %45 = load i8*, i8** %44, align 8, !dbg !1045
  %46 = call i32 @unlink(i8* %45) #7, !dbg !1046
  %47 = icmp ne i32 %46, 0, !dbg !1046
  br i1 %47, label %48, label %54, !dbg !1047

; <label>:48:                                     ; preds = %41
  %49 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i32 0, i32 0)) #7, !dbg !1048
  %50 = load %struct.partqueue*, %struct.partqueue** %7, align 8, !dbg !1049
  %51 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %50, i32 0, i32 1, !dbg !1050
  %52 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %51, i32 0, i32 1, !dbg !1051
  %53 = load i8*, i8** %52, align 8, !dbg !1051
  call void (i8*, ...) @ohshite(i8* %49, i8* %53) #8, !dbg !1052
  unreachable, !dbg !1054

; <label>:54:                                     ; preds = %41
  %55 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0)) #7, !dbg !1055
  %56 = load %struct.partqueue*, %struct.partqueue** %7, align 8, !dbg !1056
  %57 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %56, i32 0, i32 1, !dbg !1057
  %58 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %57, i32 0, i32 1, !dbg !1058
  %59 = load i8*, i8** %58, align 8, !dbg !1058
  %60 = call i32 (i8*, ...) @printf(i8* %55, i8* %59), !dbg !1059
  br label %61, !dbg !1061

; <label>:61:                                     ; preds = %54, %36, %20
  %62 = load %struct.partqueue*, %struct.partqueue** %7, align 8, !dbg !1062
  %63 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %62, i32 0, i32 0, !dbg !1064
  %64 = load %struct.partqueue*, %struct.partqueue** %63, align 8, !dbg !1064
  store %struct.partqueue* %64, %struct.partqueue** %7, align 8, !dbg !1065
  br label %9, !dbg !1066, !llvm.loop !1067

; <label>:65:                                     ; preds = %9
  ret void, !dbg !1069
}

declare %struct.__dirstream* @opendir(i8*) #4

declare %struct.dirent* @readdir(%struct.__dirstream*) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal zeroext i1 @decompose_filename(i8*, %struct.partqueue*) #0 !dbg !1070 {
  %3 = alloca i1, align 1
  %4 = alloca i8*, align 8
  %5 = alloca %struct.partqueue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1073, metadata !35), !dbg !1074
  store %struct.partqueue* %1, %struct.partqueue** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.partqueue** %5, metadata !1075, metadata !35), !dbg !1076
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1077, metadata !35), !dbg !1078
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1079, metadata !35), !dbg !1080
  %8 = load i8*, i8** %4, align 8, !dbg !1081
  %9 = call i64 @strspn(i8* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0)) #9, !dbg !1083
  %10 = icmp ne i64 %9, 32, !dbg !1084
  br i1 %10, label %17, label %11, !dbg !1085

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !1086
  %13 = getelementptr inbounds i8, i8* %12, i64 32, !dbg !1086
  %14 = load i8, i8* %13, align 1, !dbg !1086
  %15 = sext i8 %14 to i32, !dbg !1086
  %16 = icmp ne i32 %15, 46, !dbg !1087
  br i1 %16, label %17, label %18, !dbg !1088

; <label>:17:                                     ; preds = %11, %2
  store i1 false, i1* %3, align 1, !dbg !1090
  br label %91, !dbg !1090

; <label>:18:                                     ; preds = %11
  %19 = load i8*, i8** %4, align 8, !dbg !1091
  %20 = call i8* @nfstrnsave(i8* %19, i64 32), !dbg !1092
  %21 = load %struct.partqueue*, %struct.partqueue** %5, align 8, !dbg !1093
  %22 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %21, i32 0, i32 1, !dbg !1094
  %23 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %22, i32 0, i32 5, !dbg !1095
  store i8* %20, i8** %23, align 8, !dbg !1096
  %24 = load i8*, i8** %4, align 8, !dbg !1097
  %25 = getelementptr inbounds i8, i8* %24, i64 32, !dbg !1098
  %26 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !1099
  store i8* %26, i8** %6, align 8, !dbg !1100
  %27 = call i32* @__errno_location() #1, !dbg !1101
  store i32 0, i32* %27, align 4, !dbg !1102
  %28 = load i8*, i8** %6, align 8, !dbg !1103
  %29 = call i64 @strtoimax(i8* %28, i8** %7, i32 16) #7, !dbg !1104
  %30 = load %struct.partqueue*, %struct.partqueue** %5, align 8, !dbg !1105
  %31 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %30, i32 0, i32 1, !dbg !1106
  %32 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %31, i32 0, i32 9, !dbg !1107
  store i64 %29, i64* %32, align 8, !dbg !1108
  %33 = load i8*, i8** %7, align 8, !dbg !1109
  %34 = load i8*, i8** %6, align 8, !dbg !1111
  %35 = icmp eq i8* %33, %34, !dbg !1112
  br i1 %35, label %46, label %36, !dbg !1113

; <label>:36:                                     ; preds = %18
  %37 = load i8*, i8** %7, align 8, !dbg !1114
  %38 = getelementptr inbounds i8, i8* %37, i32 1, !dbg !1114
  store i8* %38, i8** %7, align 8, !dbg !1114
  %39 = load i8, i8* %37, align 1, !dbg !1116
  %40 = sext i8 %39 to i32, !dbg !1116
  %41 = icmp ne i32 %40, 46, !dbg !1117
  br i1 %41, label %46, label %42, !dbg !1118

; <label>:42:                                     ; preds = %36
  %43 = call i32* @__errno_location() #1, !dbg !1119
  %44 = load i32, i32* %43, align 4, !dbg !1121
  %45 = icmp ne i32 %44, 0, !dbg !1122
  br i1 %45, label %46, label %47, !dbg !1123

; <label>:46:                                     ; preds = %42, %36, %18
  store i1 false, i1* %3, align 1, !dbg !1124
  br label %91, !dbg !1124

; <label>:47:                                     ; preds = %42
  %48 = load i8*, i8** %7, align 8, !dbg !1125
  store i8* %48, i8** %6, align 8, !dbg !1126
  %49 = load i8*, i8** %6, align 8, !dbg !1127
  %50 = call i64 @strtol(i8* %49, i8** %7, i32 16) #7, !dbg !1128
  %51 = trunc i64 %50 to i32, !dbg !1129
  %52 = load %struct.partqueue*, %struct.partqueue** %5, align 8, !dbg !1130
  %53 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %52, i32 0, i32 1, !dbg !1131
  %54 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %53, i32 0, i32 7, !dbg !1132
  store i32 %51, i32* %54, align 8, !dbg !1133
  %55 = load i8*, i8** %7, align 8, !dbg !1134
  %56 = load i8*, i8** %6, align 8, !dbg !1136
  %57 = icmp eq i8* %55, %56, !dbg !1137
  br i1 %57, label %68, label %58, !dbg !1138

; <label>:58:                                     ; preds = %47
  %59 = load i8*, i8** %7, align 8, !dbg !1139
  %60 = getelementptr inbounds i8, i8* %59, i32 1, !dbg !1139
  store i8* %60, i8** %7, align 8, !dbg !1139
  %61 = load i8, i8* %59, align 1, !dbg !1141
  %62 = sext i8 %61 to i32, !dbg !1141
  %63 = icmp ne i32 %62, 46, !dbg !1142
  br i1 %63, label %68, label %64, !dbg !1143

; <label>:64:                                     ; preds = %58
  %65 = call i32* @__errno_location() #1, !dbg !1144
  %66 = load i32, i32* %65, align 4, !dbg !1146
  %67 = icmp ne i32 %66, 0, !dbg !1147
  br i1 %67, label %68, label %69, !dbg !1148

; <label>:68:                                     ; preds = %64, %58, %47
  store i1 false, i1* %3, align 1, !dbg !1149
  br label %91, !dbg !1149

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %7, align 8, !dbg !1150
  store i8* %70, i8** %6, align 8, !dbg !1151
  %71 = load i8*, i8** %6, align 8, !dbg !1152
  %72 = call i64 @strtol(i8* %71, i8** %7, i32 16) #7, !dbg !1153
  %73 = trunc i64 %72 to i32, !dbg !1154
  %74 = load %struct.partqueue*, %struct.partqueue** %5, align 8, !dbg !1155
  %75 = getelementptr inbounds %struct.partqueue, %struct.partqueue* %74, i32 0, i32 1, !dbg !1156
  %76 = getelementptr inbounds %struct.partinfo, %struct.partinfo* %75, i32 0, i32 8, !dbg !1157
  store i32 %73, i32* %76, align 4, !dbg !1158
  %77 = load i8*, i8** %7, align 8, !dbg !1159
  %78 = load i8*, i8** %6, align 8, !dbg !1161
  %79 = icmp eq i8* %77, %78, !dbg !1162
  br i1 %79, label %89, label %80, !dbg !1163

; <label>:80:                                     ; preds = %69
  %81 = load i8*, i8** %7, align 8, !dbg !1164
  %82 = load i8, i8* %81, align 1, !dbg !1166
  %83 = sext i8 %82 to i32, !dbg !1166
  %84 = icmp ne i32 %83, 0, !dbg !1166
  br i1 %84, label %89, label %85, !dbg !1167

; <label>:85:                                     ; preds = %80
  %86 = call i32* @__errno_location() #1, !dbg !1168
  %87 = load i32, i32* %86, align 4, !dbg !1170
  %88 = icmp ne i32 %87, 0, !dbg !1171
  br i1 %88, label %89, label %90, !dbg !1172

; <label>:89:                                     ; preds = %85, %80, %69
  store i1 false, i1* %3, align 1, !dbg !1173
  br label %91, !dbg !1173

; <label>:90:                                     ; preds = %85
  store i1 true, i1* %3, align 1, !dbg !1174
  br label %91, !dbg !1174

; <label>:91:                                     ; preds = %90, %89, %68, %46, %17
  %92 = load i1, i1* %3, align 1, !dbg !1175
  ret i1 %92, !dbg !1175
}

declare i32 @closedir(%struct.__dirstream*) #4

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #5

declare i8* @nfstrnsave(i8*, i64) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind
declare i64 @strtoimax(i8*, i8**, i32) #3

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #5

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!22, !23}
!llvm.ident = !{!24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15)
!1 = !DIFile(filename: "[inter]dpkg-split--queue.o.i", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !4, line: 36, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!7 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!8 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "discard_which", file: !10, line: 307, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "queue.c", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "DISCARD_PART_JUNK", value: 0)
!13 = !DIEnumerator(name: "DISCARD_PART_PACKAGE", value: 1)
!14 = !DIEnumerator(name: "DISCARD_PART_ALL", value: 2)
!15 = !{!16, !17, !18, !20, !21}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!17 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !19, line: 134, baseType: !17)
!19 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!20 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!21 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!22 = !{i32 2, !"Dwarf Version", i32 4}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!25 = distinct !DISubprogram(name: "do_auto", scope: !10, file: !10, line: 135, type: !26, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !33)
!26 = !DISubroutineType(types: !27)
!27 = !{!21, !28}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!33 = !{}
!34 = !DILocalVariable(name: "argv", arg: 1, scope: !25, file: !10, line: 135, type: !28)
!35 = !DIExpression()
!36 = !DILocation(line: 135, column: 28, scope: !25)
!37 = !DILocalVariable(name: "partfile", scope: !25, file: !10, line: 137, type: !30)
!38 = !DILocation(line: 137, column: 15, scope: !25)
!39 = !DILocalVariable(name: "refi", scope: !25, file: !10, line: 138, type: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partinfo", file: !42, line: 35, size: 832, align: 64, elements: !43)
!42 = !DIFile(filename: "dpkg-split.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!43 = !{!44, !50, !51, !52, !53, !54, !55, !60, !61, !62, !63, !64, !65, !66}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "fmtversion", scope: !41, file: !42, line: 36, baseType: !45, size: 64, align: 32)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deb_version", file: !46, line: 37, size: 64, align: 32, elements: !47)
!46 = !DIFile(filename: "../lib/dpkg/deb-version.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!47 = !{!48, !49}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !45, file: !46, line: 38, baseType: !21, size: 32, align: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !45, file: !46, line: 39, baseType: !21, size: 32, align: 32, offset: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !41, file: !42, line: 37, baseType: !30, size: 64, align: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !41, file: !42, line: 38, baseType: !30, size: 64, align: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !41, file: !42, line: 39, baseType: !30, size: 64, align: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !41, file: !42, line: 40, baseType: !30, size: 64, align: 64, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !41, file: !42, line: 41, baseType: !30, size: 64, align: 64, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "orglength", scope: !41, file: !42, line: 42, baseType: !56, size: 64, align: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !57, line: 73, baseType: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !59, line: 131, baseType: !17)
!59 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!60 = !DIDerivedType(tag: DW_TAG_member, name: "thispartn", scope: !41, file: !42, line: 43, baseType: !20, size: 32, align: 32, offset: 448)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "maxpartn", scope: !41, file: !42, line: 43, baseType: !20, size: 32, align: 32, offset: 480)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "maxpartlen", scope: !41, file: !42, line: 44, baseType: !56, size: 64, align: 64, offset: 512)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "thispartoffset", scope: !41, file: !42, line: 45, baseType: !56, size: 64, align: 64, offset: 576)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "thispartlen", scope: !41, file: !42, line: 46, baseType: !56, size: 64, align: 64, offset: 640)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "headerlen", scope: !41, file: !42, line: 48, baseType: !56, size: 64, align: 64, offset: 704)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "filesize", scope: !41, file: !42, line: 49, baseType: !56, size: 64, align: 64, offset: 768)
!67 = !DILocation(line: 138, column: 20, scope: !25)
!68 = !DILocalVariable(name: "partlist", scope: !25, file: !10, line: 138, type: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!70 = !DILocation(line: 138, column: 28, scope: !25)
!71 = !DILocalVariable(name: "otherthispart", scope: !25, file: !10, line: 138, type: !40)
!72 = !DILocation(line: 138, column: 39, scope: !25)
!73 = !DILocalVariable(name: "queue", scope: !25, file: !10, line: 139, type: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partqueue", file: !42, line: 52, size: 896, align: 64, elements: !76)
!76 = !{!77, !78}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "nextinqueue", scope: !75, file: !42, line: 53, baseType: !74, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !75, file: !42, line: 58, baseType: !41, size: 832, align: 64, offset: 64)
!79 = !DILocation(line: 139, column: 21, scope: !25)
!80 = !DILocalVariable(name: "pq", scope: !25, file: !10, line: 140, type: !74)
!81 = !DILocation(line: 140, column: 21, scope: !25)
!82 = !DILocalVariable(name: "part", scope: !25, file: !10, line: 141, type: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_ar", file: !85, line: 57, size: 320, align: 64, elements: !86)
!85 = !DIFile(filename: "../lib/dpkg/ar.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!86 = !{!87, !88, !91, !95, !96}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !84, file: !85, line: 58, baseType: !30, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !84, file: !85, line: 59, baseType: !89, size: 32, align: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !57, line: 62, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !59, line: 129, baseType: !20)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !84, file: !85, line: 60, baseType: !92, size: 64, align: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !93, line: 75, baseType: !94)
!93 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !59, line: 139, baseType: !17)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !84, file: !85, line: 61, baseType: !56, size: 64, align: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !84, file: !85, line: 62, baseType: !21, size: 32, align: 32, offset: 256)
!97 = !DILocation(line: 141, column: 19, scope: !25)
!98 = !DILocalVariable(name: "i", scope: !25, file: !10, line: 142, type: !20)
!99 = !DILocation(line: 142, column: 16, scope: !25)
!100 = !DILocalVariable(name: "j", scope: !25, file: !10, line: 143, type: !21)
!101 = !DILocation(line: 143, column: 7, scope: !25)
!102 = !DILocation(line: 145, column: 8, scope: !103)
!103 = distinct !DILexicalBlock(scope: !25, file: !10, line: 145, column: 7)
!104 = !DILocation(line: 145, column: 7, scope: !25)
!105 = !DILocation(line: 146, column: 14, scope: !103)
!106 = !DILocation(line: 146, column: 5, scope: !107)
!107 = !DILexicalBlockFile(scope: !103, file: !10, discriminator: 1)
!108 = !DILocation(line: 146, column: 5, scope: !103)
!109 = !DILocation(line: 147, column: 19, scope: !25)
!110 = !DILocation(line: 147, column: 14, scope: !25)
!111 = !DILocation(line: 147, column: 12, scope: !25)
!112 = !DILocation(line: 148, column: 7, scope: !113)
!113 = distinct !DILexicalBlock(scope: !25, file: !10, line: 148, column: 7)
!114 = !DILocation(line: 148, column: 16, scope: !113)
!115 = !DILocation(line: 148, column: 23, scope: !113)
!116 = !DILocation(line: 148, column: 27, scope: !117)
!117 = !DILexicalBlockFile(scope: !113, file: !10, discriminator: 1)
!118 = !DILocation(line: 148, column: 26, scope: !117)
!119 = !DILocation(line: 148, column: 7, scope: !117)
!120 = !DILocation(line: 149, column: 14, scope: !113)
!121 = !DILocation(line: 149, column: 5, scope: !117)
!122 = !DILocation(line: 149, column: 5, scope: !113)
!123 = !DILocation(line: 151, column: 10, scope: !25)
!124 = !DILocation(line: 151, column: 8, scope: !25)
!125 = !DILocation(line: 152, column: 23, scope: !25)
!126 = !DILocation(line: 152, column: 10, scope: !25)
!127 = !DILocation(line: 152, column: 8, scope: !25)
!128 = !DILocation(line: 153, column: 8, scope: !129)
!129 = distinct !DILexicalBlock(scope: !25, file: !10, line: 153, column: 7)
!130 = !DILocation(line: 153, column: 7, scope: !25)
!131 = !DILocation(line: 154, column: 13, scope: !129)
!132 = !DILocation(line: 154, column: 59, scope: !129)
!133 = !DILocation(line: 154, column: 5, scope: !134)
!134 = !DILexicalBlockFile(scope: !129, file: !10, discriminator: 1)
!135 = !DILocation(line: 154, column: 5, scope: !129)
!136 = !DILocation(line: 155, column: 18, scope: !137)
!137 = distinct !DILexicalBlock(scope: !25, file: !10, line: 155, column: 7)
!138 = !DILocation(line: 155, column: 24, scope: !137)
!139 = !DILocation(line: 155, column: 8, scope: !137)
!140 = !DILocation(line: 155, column: 7, scope: !25)
!141 = !DILocation(line: 156, column: 10, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !10, line: 156, column: 9)
!143 = distinct !DILexicalBlock(scope: !137, file: !10, line: 155, column: 31)
!144 = !DILocation(line: 156, column: 9, scope: !143)
!145 = !DILocation(line: 157, column: 14, scope: !142)
!146 = !DILocation(line: 157, column: 78, scope: !142)
!147 = !DILocation(line: 157, column: 7, scope: !148)
!148 = !DILexicalBlockFile(scope: !142, file: !10, discriminator: 1)
!149 = !DILocation(line: 157, column: 7, scope: !142)
!150 = !DILocation(line: 158, column: 13, scope: !143)
!151 = !DILocation(line: 158, column: 21, scope: !143)
!152 = !DILocation(line: 158, column: 5, scope: !153)
!153 = !DILexicalBlockFile(scope: !143, file: !10, discriminator: 1)
!154 = !DILocation(line: 159, column: 5, scope: !143)
!155 = !DILocation(line: 161, column: 17, scope: !25)
!156 = !DILocation(line: 161, column: 3, scope: !25)
!157 = !DILocation(line: 163, column: 11, scope: !25)
!158 = !DILocation(line: 163, column: 9, scope: !25)
!159 = !DILocation(line: 164, column: 43, scope: !25)
!160 = !DILocation(line: 164, column: 49, scope: !25)
!161 = !DILocation(line: 164, column: 41, scope: !25)
!162 = !DILocation(line: 164, column: 14, scope: !25)
!163 = !DILocation(line: 164, column: 12, scope: !25)
!164 = !DILocation(line: 165, column: 10, scope: !165)
!165 = distinct !DILexicalBlock(scope: !25, file: !10, line: 165, column: 3)
!166 = !DILocation(line: 165, column: 8, scope: !165)
!167 = !DILocation(line: 165, column: 15, scope: !168)
!168 = !DILexicalBlockFile(scope: !169, file: !10, discriminator: 1)
!169 = distinct !DILexicalBlock(scope: !165, file: !10, line: 165, column: 3)
!170 = !DILocation(line: 165, column: 19, scope: !168)
!171 = !DILocation(line: 165, column: 25, scope: !168)
!172 = !DILocation(line: 165, column: 17, scope: !168)
!173 = !DILocation(line: 165, column: 3, scope: !168)
!174 = !DILocation(line: 166, column: 14, scope: !169)
!175 = !DILocation(line: 166, column: 5, scope: !169)
!176 = !DILocation(line: 166, column: 17, scope: !169)
!177 = !DILocation(line: 165, column: 36, scope: !178)
!178 = !DILexicalBlockFile(scope: !169, file: !10, discriminator: 2)
!179 = !DILocation(line: 165, column: 3, scope: !178)
!180 = distinct !{!180, !181}
!181 = !DILocation(line: 165, column: 3, scope: !25)
!182 = !DILocation(line: 167, column: 12, scope: !183)
!183 = distinct !DILexicalBlock(scope: !25, file: !10, line: 167, column: 3)
!184 = !DILocation(line: 167, column: 10, scope: !183)
!185 = !DILocation(line: 167, column: 8, scope: !183)
!186 = !DILocation(line: 167, column: 19, scope: !187)
!187 = !DILexicalBlockFile(scope: !188, file: !10, discriminator: 1)
!188 = distinct !DILexicalBlock(scope: !183, file: !10, line: 167, column: 3)
!189 = !DILocation(line: 167, column: 3, scope: !187)
!190 = !DILocalVariable(name: "npi", scope: !191, file: !10, line: 168, type: !40)
!191 = distinct !DILexicalBlock(scope: !188, file: !10, line: 167, column: 44)
!192 = !DILocation(line: 168, column: 22, scope: !191)
!193 = !DILocalVariable(name: "pi", scope: !191, file: !10, line: 168, type: !40)
!194 = !DILocation(line: 168, column: 28, scope: !191)
!195 = !DILocation(line: 168, column: 34, scope: !191)
!196 = !DILocation(line: 168, column: 38, scope: !191)
!197 = !DILocation(line: 170, column: 22, scope: !198)
!198 = distinct !DILexicalBlock(scope: !191, file: !10, line: 170, column: 9)
!199 = !DILocation(line: 170, column: 25, scope: !198)
!200 = !DILocation(line: 170, column: 10, scope: !198)
!201 = !DILocation(line: 170, column: 9, scope: !191)
!202 = !DILocation(line: 170, column: 32, scope: !203)
!203 = !DILexicalBlockFile(scope: !198, file: !10, discriminator: 1)
!204 = !DILocation(line: 171, column: 11, scope: !191)
!205 = !DILocation(line: 171, column: 9, scope: !191)
!206 = !DILocation(line: 172, column: 21, scope: !191)
!207 = !DILocation(line: 172, column: 25, scope: !191)
!208 = !DILocation(line: 172, column: 34, scope: !191)
!209 = !DILocation(line: 172, column: 5, scope: !191)
!210 = !DILocation(line: 173, column: 19, scope: !191)
!211 = !DILocation(line: 173, column: 28, scope: !191)
!212 = !DILocation(line: 173, column: 32, scope: !191)
!213 = !DILocation(line: 173, column: 5, scope: !191)
!214 = !DILocation(line: 174, column: 3, scope: !191)
!215 = !DILocation(line: 167, column: 27, scope: !216)
!216 = !DILexicalBlockFile(scope: !188, file: !10, discriminator: 2)
!217 = !DILocation(line: 167, column: 31, scope: !216)
!218 = !DILocation(line: 167, column: 25, scope: !216)
!219 = !DILocation(line: 167, column: 3, scope: !216)
!220 = distinct !{!220, !221}
!221 = !DILocation(line: 167, column: 3, scope: !25)
!222 = !DILocation(line: 179, column: 27, scope: !25)
!223 = !DILocation(line: 179, column: 33, scope: !25)
!224 = !DILocation(line: 179, column: 42, scope: !25)
!225 = !DILocation(line: 179, column: 18, scope: !25)
!226 = !DILocation(line: 179, column: 16, scope: !25)
!227 = !DILocation(line: 180, column: 32, scope: !25)
!228 = !DILocation(line: 180, column: 12, scope: !25)
!229 = !DILocation(line: 180, column: 18, scope: !25)
!230 = !DILocation(line: 180, column: 27, scope: !25)
!231 = !DILocation(line: 180, column: 3, scope: !25)
!232 = !DILocation(line: 180, column: 30, scope: !25)
!233 = !DILocation(line: 181, column: 10, scope: !234)
!234 = distinct !DILexicalBlock(scope: !25, file: !10, line: 181, column: 3)
!235 = !DILocation(line: 181, column: 16, scope: !234)
!236 = !DILocation(line: 181, column: 24, scope: !234)
!237 = !DILocation(line: 181, column: 9, scope: !234)
!238 = !DILocation(line: 181, column: 8, scope: !234)
!239 = !DILocation(line: 181, column: 28, scope: !240)
!240 = !DILexicalBlockFile(scope: !241, file: !10, discriminator: 1)
!241 = distinct !DILexicalBlock(scope: !234, file: !10, line: 181, column: 3)
!242 = !DILocation(line: 181, column: 29, scope: !240)
!243 = !DILocation(line: 181, column: 33, scope: !240)
!244 = !DILocation(line: 181, column: 45, scope: !245)
!245 = !DILexicalBlockFile(scope: !241, file: !10, discriminator: 2)
!246 = !DILocation(line: 181, column: 36, scope: !245)
!247 = !DILocation(line: 181, column: 33, scope: !245)
!248 = !DILocation(line: 181, column: 3, scope: !249)
!249 = !DILexicalBlockFile(scope: !234, file: !10, discriminator: 3)
!250 = !DILocation(line: 181, column: 3, scope: !251)
!251 = !DILexicalBlockFile(scope: !234, file: !10, discriminator: 4)
!252 = !DILocation(line: 181, column: 50, scope: !253)
!253 = !DILexicalBlockFile(scope: !241, file: !10, discriminator: 5)
!254 = !DILocation(line: 181, column: 3, scope: !253)
!255 = distinct !{!255, !256}
!256 = !DILocation(line: 181, column: 3, scope: !25)
!257 = !DILocation(line: 183, column: 7, scope: !258)
!258 = distinct !DILexicalBlock(scope: !25, file: !10, line: 183, column: 7)
!259 = !DILocation(line: 183, column: 8, scope: !258)
!260 = !DILocation(line: 183, column: 7, scope: !25)
!261 = !DILocalVariable(name: "err", scope: !262, file: !10, line: 184, type: !263)
!262 = distinct !DILexicalBlock(scope: !258, file: !10, line: 183, column: 13)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !4, line: 42, size: 128, align: 64, elements: !264)
!264 = !{!265, !266, !267}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !263, file: !4, line: 43, baseType: !3, size: 32, align: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !263, file: !4, line: 45, baseType: !21, size: 32, align: 32, offset: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !263, file: !4, line: 46, baseType: !268, size: 64, align: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!269 = !DILocation(line: 184, column: 23, scope: !262)
!270 = !DILocalVariable(name: "fd_src", scope: !262, file: !10, line: 185, type: !21)
!271 = !DILocation(line: 185, column: 9, scope: !262)
!272 = !DILocalVariable(name: "fd_dst", scope: !262, file: !10, line: 185, type: !21)
!273 = !DILocation(line: 185, column: 17, scope: !262)
!274 = !DILocalVariable(name: "ap", scope: !262, file: !10, line: 186, type: !21)
!275 = !DILocation(line: 186, column: 9, scope: !262)
!276 = !DILocalVariable(name: "p", scope: !262, file: !10, line: 187, type: !268)
!277 = !DILocation(line: 187, column: 11, scope: !262)
!278 = !DILocalVariable(name: "q", scope: !262, file: !10, line: 187, type: !268)
!279 = !DILocation(line: 187, column: 15, scope: !262)
!280 = !DILocation(line: 189, column: 29, scope: !262)
!281 = !DILocation(line: 189, column: 49, scope: !262)
!282 = !DILocation(line: 189, column: 43, scope: !262)
!283 = !DILocation(line: 189, column: 9, scope: !284)
!284 = !DILexicalBlockFile(scope: !262, file: !10, discriminator: 1)
!285 = !DILocation(line: 189, column: 7, scope: !262)
!286 = !DILocation(line: 190, column: 36, scope: !262)
!287 = !DILocation(line: 190, column: 50, scope: !262)
!288 = !DILocation(line: 190, column: 56, scope: !262)
!289 = !DILocation(line: 191, column: 27, scope: !262)
!290 = !DILocation(line: 191, column: 33, scope: !262)
!291 = !DILocation(line: 191, column: 45, scope: !262)
!292 = !DILocation(line: 191, column: 51, scope: !262)
!293 = !DILocation(line: 191, column: 62, scope: !262)
!294 = !DILocation(line: 191, column: 68, scope: !262)
!295 = !DILocation(line: 190, column: 9, scope: !262)
!296 = !DILocation(line: 190, column: 7, scope: !262)
!297 = !DILocation(line: 193, column: 19, scope: !262)
!298 = !DILocation(line: 193, column: 14, scope: !262)
!299 = !DILocation(line: 193, column: 12, scope: !262)
!300 = !DILocation(line: 194, column: 9, scope: !301)
!301 = distinct !DILexicalBlock(scope: !262, file: !10, line: 194, column: 9)
!302 = !DILocation(line: 194, column: 16, scope: !301)
!303 = !DILocation(line: 194, column: 9, scope: !262)
!304 = !DILocation(line: 195, column: 15, scope: !301)
!305 = !DILocation(line: 195, column: 63, scope: !301)
!306 = !DILocation(line: 195, column: 7, scope: !307)
!307 = !DILexicalBlockFile(scope: !301, file: !10, discriminator: 1)
!308 = !DILocation(line: 195, column: 7, scope: !301)
!309 = !DILocation(line: 196, column: 20, scope: !262)
!310 = !DILocation(line: 196, column: 14, scope: !262)
!311 = !DILocation(line: 196, column: 12, scope: !262)
!312 = !DILocation(line: 197, column: 9, scope: !313)
!313 = distinct !DILexicalBlock(scope: !262, file: !10, line: 197, column: 9)
!314 = !DILocation(line: 197, column: 16, scope: !313)
!315 = !DILocation(line: 197, column: 9, scope: !262)
!316 = !DILocation(line: 198, column: 15, scope: !313)
!317 = !DILocation(line: 198, column: 66, scope: !313)
!318 = !DILocation(line: 198, column: 7, scope: !319)
!319 = !DILexicalBlockFile(scope: !313, file: !10, discriminator: 1)
!320 = !DILocation(line: 198, column: 7, scope: !313)
!321 = !DILocation(line: 200, column: 28, scope: !322)
!322 = distinct !DILexicalBlock(scope: !262, file: !10, line: 200, column: 9)
!323 = !DILocation(line: 200, column: 13, scope: !322)
!324 = !DILocation(line: 200, column: 24, scope: !322)
!325 = !DILocation(line: 200, column: 30, scope: !322)
!326 = !DILocation(line: 200, column: 9, scope: !322)
!327 = !DILocation(line: 200, column: 46, scope: !322)
!328 = !DILocation(line: 200, column: 9, scope: !262)
!329 = !DILocation(line: 201, column: 14, scope: !322)
!330 = !DILocation(line: 202, column: 14, scope: !322)
!331 = !DILocation(line: 202, column: 28, scope: !322)
!332 = !DILocation(line: 201, column: 7, scope: !333)
!333 = !DILexicalBlockFile(scope: !322, file: !10, discriminator: 1)
!334 = !DILocation(line: 201, column: 7, scope: !322)
!335 = !DILocation(line: 204, column: 15, scope: !336)
!336 = distinct !DILexicalBlock(scope: !262, file: !10, line: 204, column: 9)
!337 = !DILocation(line: 204, column: 9, scope: !336)
!338 = !DILocation(line: 204, column: 9, scope: !262)
!339 = !DILocation(line: 205, column: 15, scope: !336)
!340 = !DILocation(line: 205, column: 52, scope: !336)
!341 = !DILocation(line: 205, column: 7, scope: !342)
!342 = !DILexicalBlockFile(scope: !336, file: !10, discriminator: 1)
!343 = !DILocation(line: 205, column: 7, scope: !336)
!344 = !DILocation(line: 206, column: 15, scope: !345)
!345 = distinct !DILexicalBlock(scope: !262, file: !10, line: 206, column: 9)
!346 = !DILocation(line: 206, column: 9, scope: !345)
!347 = !DILocation(line: 206, column: 9, scope: !262)
!348 = !DILocation(line: 207, column: 15, scope: !345)
!349 = !DILocation(line: 207, column: 53, scope: !345)
!350 = !DILocation(line: 207, column: 7, scope: !351)
!351 = !DILexicalBlockFile(scope: !345, file: !10, discriminator: 1)
!352 = !DILocation(line: 207, column: 7, scope: !345)
!353 = !DILocation(line: 208, column: 11, scope: !262)
!354 = !DILocation(line: 208, column: 5, scope: !262)
!355 = !DILocation(line: 210, column: 16, scope: !356)
!356 = distinct !DILexicalBlock(scope: !262, file: !10, line: 210, column: 9)
!357 = !DILocation(line: 210, column: 19, scope: !356)
!358 = !DILocation(line: 210, column: 9, scope: !356)
!359 = !DILocation(line: 210, column: 9, scope: !262)
!360 = !DILocation(line: 211, column: 15, scope: !356)
!361 = !DILocation(line: 211, column: 80, scope: !356)
!362 = !DILocation(line: 211, column: 83, scope: !356)
!363 = !DILocation(line: 211, column: 7, scope: !364)
!364 = !DILexicalBlockFile(scope: !356, file: !10, discriminator: 1)
!365 = !DILocation(line: 211, column: 7, scope: !356)
!366 = !DILocation(line: 212, column: 10, scope: !262)
!367 = !DILocation(line: 212, column: 5, scope: !262)
!368 = !DILocation(line: 213, column: 10, scope: !262)
!369 = !DILocation(line: 213, column: 5, scope: !262)
!370 = !DILocation(line: 215, column: 12, scope: !262)
!371 = !DILocation(line: 215, column: 64, scope: !262)
!372 = !DILocation(line: 215, column: 70, scope: !262)
!373 = !DILocation(line: 215, column: 80, scope: !262)
!374 = !DILocation(line: 215, column: 86, scope: !262)
!375 = !DILocation(line: 215, column: 5, scope: !284)
!376 = !DILocation(line: 217, column: 11, scope: !377)
!377 = distinct !DILexicalBlock(scope: !262, file: !10, line: 217, column: 5)
!378 = !DILocation(line: 217, column: 17, scope: !377)
!379 = !DILocation(line: 217, column: 10, scope: !377)
!380 = !DILocation(line: 217, column: 21, scope: !381)
!381 = !DILexicalBlockFile(scope: !382, file: !10, discriminator: 1)
!382 = distinct !DILexicalBlock(scope: !377, file: !10, line: 217, column: 5)
!383 = !DILocation(line: 217, column: 23, scope: !381)
!384 = !DILocation(line: 217, column: 29, scope: !381)
!385 = !DILocation(line: 217, column: 22, scope: !381)
!386 = !DILocation(line: 217, column: 5, scope: !381)
!387 = !DILocation(line: 218, column: 21, scope: !388)
!388 = distinct !DILexicalBlock(scope: !382, file: !10, line: 218, column: 11)
!389 = !DILocation(line: 218, column: 12, scope: !388)
!390 = !DILocation(line: 218, column: 11, scope: !382)
!391 = !DILocation(line: 219, column: 27, scope: !388)
!392 = !DILocation(line: 219, column: 24, scope: !388)
!393 = !DILocation(line: 219, column: 24, scope: !394)
!394 = !DILexicalBlockFile(scope: !388, file: !10, discriminator: 1)
!395 = !DILocation(line: 219, column: 37, scope: !396)
!396 = !DILexicalBlockFile(scope: !388, file: !10, discriminator: 2)
!397 = !DILocation(line: 219, column: 56, scope: !396)
!398 = !DILocation(line: 219, column: 39, scope: !396)
!399 = !DILocation(line: 219, column: 60, scope: !400)
!400 = !DILexicalBlockFile(scope: !388, file: !10, discriminator: 3)
!401 = !DILocation(line: 219, column: 37, scope: !400)
!402 = !DILocation(line: 219, column: 37, scope: !403)
!403 = !DILexicalBlockFile(scope: !388, file: !10, discriminator: 4)
!404 = !DILocation(line: 219, column: 37, scope: !405)
!405 = !DILexicalBlockFile(scope: !388, file: !10, discriminator: 5)
!406 = !DILocation(line: 219, column: 24, scope: !405)
!407 = !DILocation(line: 219, column: 24, scope: !408)
!408 = !DILexicalBlockFile(scope: !388, file: !10, discriminator: 6)
!409 = !DILocation(line: 219, column: 85, scope: !408)
!410 = !DILocation(line: 219, column: 87, scope: !408)
!411 = !DILocation(line: 219, column: 9, scope: !408)
!412 = !DILocation(line: 218, column: 22, scope: !394)
!413 = !DILocation(line: 217, column: 40, scope: !414)
!414 = !DILexicalBlockFile(scope: !382, file: !10, discriminator: 2)
!415 = !DILocation(line: 217, column: 5, scope: !414)
!416 = distinct !{!416, !417}
!417 = !DILocation(line: 217, column: 5, scope: !262)
!418 = !DILocation(line: 220, column: 5, scope: !262)
!419 = !DILocation(line: 222, column: 19, scope: !262)
!420 = !DILocation(line: 222, column: 5, scope: !262)
!421 = !DILocation(line: 223, column: 3, scope: !262)
!422 = !DILocation(line: 226, column: 16, scope: !423)
!423 = distinct !DILexicalBlock(scope: !258, file: !10, line: 223, column: 10)
!424 = !DILocation(line: 226, column: 26, scope: !423)
!425 = !DILocation(line: 226, column: 5, scope: !423)
!426 = !DILocation(line: 229, column: 34, scope: !423)
!427 = !DILocation(line: 229, column: 14, scope: !423)
!428 = !DILocation(line: 229, column: 20, scope: !423)
!429 = !DILocation(line: 229, column: 29, scope: !423)
!430 = !DILocation(line: 229, column: 5, scope: !423)
!431 = !DILocation(line: 229, column: 32, scope: !423)
!432 = !DILocation(line: 230, column: 11, scope: !433)
!433 = distinct !DILexicalBlock(scope: !423, file: !10, line: 230, column: 5)
!434 = !DILocation(line: 230, column: 10, scope: !433)
!435 = !DILocation(line: 230, column: 15, scope: !436)
!436 = !DILexicalBlockFile(scope: !437, file: !10, discriminator: 1)
!437 = distinct !DILexicalBlock(scope: !433, file: !10, line: 230, column: 5)
!438 = !DILocation(line: 230, column: 17, scope: !436)
!439 = !DILocation(line: 230, column: 23, scope: !436)
!440 = !DILocation(line: 230, column: 16, scope: !436)
!441 = !DILocation(line: 230, column: 5, scope: !436)
!442 = !DILocation(line: 231, column: 20, scope: !443)
!443 = distinct !DILexicalBlock(scope: !437, file: !10, line: 231, column: 11)
!444 = !DILocation(line: 231, column: 11, scope: !443)
!445 = !DILocation(line: 231, column: 11, scope: !437)
!446 = !DILocation(line: 232, column: 29, scope: !447)
!447 = distinct !DILexicalBlock(scope: !443, file: !10, line: 232, column: 13)
!448 = !DILocation(line: 232, column: 20, scope: !447)
!449 = !DILocation(line: 232, column: 33, scope: !447)
!450 = !DILocation(line: 232, column: 13, scope: !447)
!451 = !DILocation(line: 232, column: 13, scope: !443)
!452 = !DILocation(line: 233, column: 19, scope: !447)
!453 = !DILocation(line: 234, column: 28, scope: !447)
!454 = !DILocation(line: 234, column: 19, scope: !447)
!455 = !DILocation(line: 234, column: 32, scope: !447)
!456 = !DILocation(line: 233, column: 11, scope: !457)
!457 = !DILexicalBlockFile(scope: !447, file: !10, discriminator: 1)
!458 = !DILocation(line: 233, column: 11, scope: !447)
!459 = !DILocation(line: 232, column: 41, scope: !457)
!460 = !DILocation(line: 231, column: 21, scope: !461)
!461 = !DILexicalBlockFile(scope: !443, file: !10, discriminator: 1)
!462 = !DILocation(line: 230, column: 34, scope: !463)
!463 = !DILexicalBlockFile(scope: !437, file: !10, discriminator: 2)
!464 = !DILocation(line: 230, column: 5, scope: !463)
!465 = distinct !{!465, !466}
!466 = !DILocation(line: 230, column: 5, scope: !423)
!467 = !DILocation(line: 238, column: 11, scope: !25)
!468 = !DILocation(line: 238, column: 19, scope: !25)
!469 = !DILocation(line: 238, column: 3, scope: !470)
!470 = !DILexicalBlockFile(scope: !25, file: !10, discriminator: 1)
!471 = !DILocation(line: 240, column: 3, scope: !25)
!472 = !DILocation(line: 241, column: 1, scope: !25)
!473 = distinct !DISubprogram(name: "scandepot", scope: !10, file: !10, line: 88, type: !474, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !33)
!474 = !DISubroutineType(types: !475)
!475 = !{!74}
!476 = !DILocalVariable(name: "depot", scope: !473, file: !10, line: 90, type: !477)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64, align: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !479, line: 127, baseType: !480)
!479 = !DIFile(filename: "/usr/include/dirent.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !479, line: 127, flags: DIFlagFwdDecl)
!481 = !DILocation(line: 90, column: 8, scope: !473)
!482 = !DILocalVariable(name: "de", scope: !473, file: !10, line: 91, type: !483)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64, align: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !485, line: 22, size: 2240, align: 64, elements: !486)
!485 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!486 = !{!487, !490, !491, !493, !495}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !484, file: !485, line: 25, baseType: !488, size: 64, align: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !59, line: 127, baseType: !489)
!489 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !484, file: !485, line: 26, baseType: !58, size: 64, align: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !484, file: !485, line: 31, baseType: !492, size: 16, align: 16, offset: 128)
!492 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !484, file: !485, line: 32, baseType: !494, size: 8, align: 8, offset: 144)
!494 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !484, file: !485, line: 33, baseType: !496, size: 2048, align: 8, offset: 152)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 2048, align: 8, elements: !497)
!497 = !{!498}
!498 = !DISubrange(count: 256)
!499 = !DILocation(line: 91, column: 18, scope: !473)
!500 = !DILocalVariable(name: "queue", scope: !473, file: !10, line: 92, type: !74)
!501 = !DILocation(line: 92, column: 21, scope: !473)
!502 = !DILocation(line: 94, column: 19, scope: !473)
!503 = !DILocation(line: 94, column: 11, scope: !473)
!504 = !DILocation(line: 94, column: 9, scope: !473)
!505 = !DILocation(line: 95, column: 8, scope: !506)
!506 = distinct !DILexicalBlock(scope: !473, file: !10, line: 95, column: 7)
!507 = !DILocation(line: 95, column: 7, scope: !473)
!508 = !DILocation(line: 96, column: 13, scope: !506)
!509 = !DILocation(line: 96, column: 65, scope: !506)
!510 = !DILocation(line: 96, column: 5, scope: !511)
!511 = !DILexicalBlockFile(scope: !506, file: !10, discriminator: 1)
!512 = !DILocation(line: 96, column: 5, scope: !506)
!513 = !DILocation(line: 97, column: 3, scope: !473)
!514 = !DILocation(line: 97, column: 23, scope: !515)
!515 = !DILexicalBlockFile(scope: !473, file: !10, discriminator: 1)
!516 = !DILocation(line: 97, column: 15, scope: !515)
!517 = !DILocation(line: 97, column: 13, scope: !515)
!518 = !DILocation(line: 97, column: 3, scope: !515)
!519 = !DILocalVariable(name: "pq", scope: !520, file: !10, line: 98, type: !74)
!520 = distinct !DILexicalBlock(scope: !473, file: !10, line: 97, column: 32)
!521 = !DILocation(line: 98, column: 23, scope: !520)
!522 = !DILocalVariable(name: "p", scope: !520, file: !10, line: 99, type: !268)
!523 = !DILocation(line: 99, column: 11, scope: !520)
!524 = !DILocation(line: 101, column: 9, scope: !525)
!525 = distinct !DILexicalBlock(scope: !520, file: !10, line: 101, column: 9)
!526 = !DILocation(line: 101, column: 13, scope: !525)
!527 = !DILocation(line: 101, column: 23, scope: !525)
!528 = !DILocation(line: 101, column: 9, scope: !520)
!529 = !DILocation(line: 101, column: 31, scope: !530)
!530 = !DILexicalBlockFile(scope: !525, file: !10, discriminator: 1)
!531 = distinct !{!531, !513}
!532 = !DILocation(line: 102, column: 10, scope: !520)
!533 = !DILocation(line: 102, column: 8, scope: !520)
!534 = !DILocation(line: 103, column: 5, scope: !520)
!535 = !DILocation(line: 103, column: 9, scope: !520)
!536 = !DILocation(line: 103, column: 14, scope: !520)
!537 = !DILocation(line: 103, column: 25, scope: !520)
!538 = !DILocation(line: 103, column: 31, scope: !520)
!539 = !DILocation(line: 104, column: 5, scope: !520)
!540 = !DILocation(line: 104, column: 9, scope: !520)
!541 = !DILocation(line: 104, column: 14, scope: !520)
!542 = !DILocation(line: 104, column: 25, scope: !520)
!543 = !DILocation(line: 104, column: 31, scope: !520)
!544 = !DILocation(line: 105, column: 5, scope: !520)
!545 = !DILocation(line: 105, column: 9, scope: !520)
!546 = !DILocation(line: 105, column: 14, scope: !520)
!547 = !DILocation(line: 105, column: 22, scope: !520)
!548 = !DILocation(line: 106, column: 5, scope: !520)
!549 = !DILocation(line: 106, column: 9, scope: !520)
!550 = !DILocation(line: 106, column: 14, scope: !520)
!551 = !DILocation(line: 106, column: 22, scope: !520)
!552 = !DILocation(line: 107, column: 5, scope: !520)
!553 = !DILocation(line: 107, column: 9, scope: !520)
!554 = !DILocation(line: 107, column: 14, scope: !520)
!555 = !DILocation(line: 107, column: 19, scope: !520)
!556 = !DILocation(line: 108, column: 50, scope: !520)
!557 = !DILocation(line: 108, column: 54, scope: !520)
!558 = !DILocation(line: 108, column: 59, scope: !520)
!559 = !DILocation(line: 108, column: 70, scope: !520)
!560 = !DILocation(line: 108, column: 25, scope: !520)
!561 = !DILocation(line: 108, column: 29, scope: !520)
!562 = !DILocation(line: 108, column: 34, scope: !520)
!563 = !DILocation(line: 108, column: 48, scope: !520)
!564 = !DILocation(line: 108, column: 5, scope: !520)
!565 = !DILocation(line: 108, column: 9, scope: !520)
!566 = !DILocation(line: 108, column: 14, scope: !520)
!567 = !DILocation(line: 108, column: 23, scope: !520)
!568 = !DILocation(line: 109, column: 5, scope: !520)
!569 = !DILocation(line: 109, column: 9, scope: !520)
!570 = !DILocation(line: 109, column: 14, scope: !520)
!571 = !DILocation(line: 109, column: 23, scope: !520)
!572 = !DILocation(line: 110, column: 25, scope: !520)
!573 = !DILocation(line: 110, column: 18, scope: !520)
!574 = !DILocation(line: 110, column: 39, scope: !520)
!575 = !DILocation(line: 110, column: 52, scope: !520)
!576 = !DILocation(line: 110, column: 56, scope: !520)
!577 = !DILocation(line: 110, column: 45, scope: !578)
!578 = !DILexicalBlockFile(scope: !520, file: !10, discriminator: 1)
!579 = !DILocation(line: 110, column: 43, scope: !520)
!580 = !DILocation(line: 110, column: 64, scope: !520)
!581 = !DILocation(line: 110, column: 9, scope: !582)
!582 = !DILexicalBlockFile(scope: !520, file: !10, discriminator: 2)
!583 = !DILocation(line: 110, column: 7, scope: !520)
!584 = !DILocation(line: 111, column: 13, scope: !520)
!585 = !DILocation(line: 111, column: 25, scope: !520)
!586 = !DILocation(line: 111, column: 39, scope: !520)
!587 = !DILocation(line: 111, column: 43, scope: !520)
!588 = !DILocation(line: 111, column: 5, scope: !520)
!589 = !DILocation(line: 112, column: 24, scope: !520)
!590 = !DILocation(line: 112, column: 5, scope: !520)
!591 = !DILocation(line: 112, column: 9, scope: !520)
!592 = !DILocation(line: 112, column: 14, scope: !520)
!593 = !DILocation(line: 112, column: 22, scope: !520)
!594 = !DILocation(line: 113, column: 29, scope: !595)
!595 = distinct !DILexicalBlock(scope: !520, file: !10, line: 113, column: 9)
!596 = !DILocation(line: 113, column: 33, scope: !595)
!597 = !DILocation(line: 113, column: 40, scope: !595)
!598 = !DILocation(line: 113, column: 10, scope: !595)
!599 = !DILocation(line: 113, column: 9, scope: !520)
!600 = !DILocation(line: 114, column: 7, scope: !601)
!601 = distinct !DILexicalBlock(scope: !595, file: !10, line: 113, column: 45)
!602 = !DILocation(line: 114, column: 11, scope: !601)
!603 = !DILocation(line: 114, column: 16, scope: !601)
!604 = !DILocation(line: 114, column: 22, scope: !601)
!605 = !DILocation(line: 115, column: 48, scope: !601)
!606 = !DILocation(line: 115, column: 52, scope: !601)
!607 = !DILocation(line: 115, column: 57, scope: !601)
!608 = !DILocation(line: 115, column: 65, scope: !601)
!609 = !DILocation(line: 115, column: 28, scope: !601)
!610 = !DILocation(line: 115, column: 32, scope: !601)
!611 = !DILocation(line: 115, column: 37, scope: !601)
!612 = !DILocation(line: 115, column: 46, scope: !601)
!613 = !DILocation(line: 115, column: 7, scope: !601)
!614 = !DILocation(line: 115, column: 11, scope: !601)
!615 = !DILocation(line: 115, column: 16, scope: !601)
!616 = !DILocation(line: 115, column: 26, scope: !601)
!617 = !DILocation(line: 116, column: 5, scope: !601)
!618 = !DILocation(line: 117, column: 22, scope: !520)
!619 = !DILocation(line: 117, column: 5, scope: !520)
!620 = !DILocation(line: 117, column: 9, scope: !520)
!621 = !DILocation(line: 117, column: 20, scope: !520)
!622 = !DILocation(line: 118, column: 12, scope: !520)
!623 = !DILocation(line: 118, column: 10, scope: !520)
!624 = !DILocation(line: 97, column: 3, scope: !625)
!625 = !DILexicalBlockFile(scope: !473, file: !10, discriminator: 2)
!626 = !DILocation(line: 120, column: 12, scope: !473)
!627 = !DILocation(line: 120, column: 3, scope: !473)
!628 = !DILocation(line: 122, column: 10, scope: !473)
!629 = !DILocation(line: 122, column: 3, scope: !473)
!630 = distinct !DISubprogram(name: "partmatches", scope: !10, file: !10, line: 126, type: !631, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !33)
!631 = !DISubroutineType(types: !632)
!632 = !{!633, !40, !40}
!633 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!634 = !DILocalVariable(name: "pi", arg: 1, scope: !630, file: !10, line: 126, type: !40)
!635 = !DILocation(line: 126, column: 30, scope: !630)
!636 = !DILocalVariable(name: "refi", arg: 2, scope: !630, file: !10, line: 126, type: !40)
!637 = !DILocation(line: 126, column: 51, scope: !630)
!638 = !DILocation(line: 128, column: 11, scope: !630)
!639 = !DILocation(line: 128, column: 15, scope: !630)
!640 = !DILocation(line: 128, column: 22, scope: !630)
!641 = !DILocation(line: 129, column: 18, scope: !630)
!642 = !DILocation(line: 129, column: 22, scope: !630)
!643 = !DILocation(line: 129, column: 30, scope: !630)
!644 = !DILocation(line: 129, column: 36, scope: !630)
!645 = !DILocation(line: 129, column: 11, scope: !630)
!646 = !DILocation(line: 129, column: 44, scope: !630)
!647 = !DILocation(line: 129, column: 49, scope: !630)
!648 = !DILocation(line: 130, column: 11, scope: !630)
!649 = !DILocation(line: 130, column: 15, scope: !630)
!650 = !DILocation(line: 130, column: 27, scope: !630)
!651 = !DILocation(line: 130, column: 33, scope: !630)
!652 = !DILocation(line: 130, column: 24, scope: !630)
!653 = !DILocation(line: 130, column: 42, scope: !630)
!654 = !DILocation(line: 131, column: 11, scope: !630)
!655 = !DILocation(line: 131, column: 15, scope: !630)
!656 = !DILocation(line: 131, column: 29, scope: !630)
!657 = !DILocation(line: 131, column: 35, scope: !630)
!658 = !DILocation(line: 131, column: 26, scope: !630)
!659 = !DILocation(line: 128, column: 3, scope: !660)
!660 = !DILexicalBlockFile(scope: !630, file: !10, discriminator: 1)
!661 = distinct !DISubprogram(name: "do_queue", scope: !10, file: !10, line: 244, type: !26, isLocal: false, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !33)
!662 = !DILocalVariable(name: "argv", arg: 1, scope: !661, file: !10, line: 244, type: !28)
!663 = !DILocation(line: 244, column: 29, scope: !661)
!664 = !DILocalVariable(name: "queue", scope: !661, file: !10, line: 246, type: !74)
!665 = !DILocation(line: 246, column: 21, scope: !661)
!666 = !DILocalVariable(name: "pq", scope: !661, file: !10, line: 247, type: !74)
!667 = !DILocation(line: 247, column: 21, scope: !661)
!668 = !DILocalVariable(name: "head", scope: !661, file: !10, line: 248, type: !30)
!669 = !DILocation(line: 248, column: 15, scope: !661)
!670 = !DILocalVariable(name: "stab", scope: !661, file: !10, line: 249, type: !671)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !672, line: 46, size: 1152, align: 64, elements: !673)
!672 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!673 = !{!674, !676, !677, !679, !680, !682, !684, !685, !686, !687, !689, !691, !697, !698, !699}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !671, file: !672, line: 48, baseType: !675, size: 64, align: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !59, line: 124, baseType: !489)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !671, file: !672, line: 53, baseType: !488, size: 64, align: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !671, file: !672, line: 61, baseType: !678, size: 64, align: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !59, line: 130, baseType: !489)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !671, file: !672, line: 62, baseType: !90, size: 32, align: 32, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !671, file: !672, line: 64, baseType: !681, size: 32, align: 32, offset: 224)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !59, line: 125, baseType: !20)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !671, file: !672, line: 65, baseType: !683, size: 32, align: 32, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !59, line: 126, baseType: !20)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !671, file: !672, line: 67, baseType: !21, size: 32, align: 32, offset: 288)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !671, file: !672, line: 69, baseType: !675, size: 64, align: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !671, file: !672, line: 74, baseType: !58, size: 64, align: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !671, file: !672, line: 78, baseType: !688, size: 64, align: 64, offset: 448)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !59, line: 153, baseType: !17)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !671, file: !672, line: 80, baseType: !690, size: 64, align: 64, offset: 512)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !59, line: 158, baseType: !17)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !671, file: !672, line: 91, baseType: !692, size: 128, align: 64, offset: 576)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !93, line: 120, size: 128, align: 64, elements: !693)
!693 = !{!694, !695}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !692, file: !93, line: 122, baseType: !94, size: 64, align: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !692, file: !93, line: 123, baseType: !696, size: 64, align: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !59, line: 175, baseType: !17)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !671, file: !672, line: 92, baseType: !692, size: 128, align: 64, offset: 704)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !671, file: !672, line: 93, baseType: !692, size: 128, align: 64, offset: 832)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !671, file: !672, line: 106, baseType: !700, size: 192, align: 64, offset: 960)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 192, align: 64, elements: !701)
!701 = !{!702}
!702 = !DISubrange(count: 3)
!703 = !DILocation(line: 249, column: 15, scope: !661)
!704 = !DILocalVariable(name: "bytes", scope: !661, file: !10, line: 250, type: !56)
!705 = !DILocation(line: 250, column: 9, scope: !661)
!706 = !DILocation(line: 252, column: 8, scope: !707)
!707 = distinct !DILexicalBlock(scope: !661, file: !10, line: 252, column: 7)
!708 = !DILocation(line: 252, column: 7, scope: !707)
!709 = !DILocation(line: 252, column: 7, scope: !661)
!710 = !DILocation(line: 253, column: 14, scope: !707)
!711 = !DILocation(line: 253, column: 50, scope: !707)
!712 = !DILocation(line: 253, column: 61, scope: !707)
!713 = !DILocation(line: 253, column: 5, scope: !714)
!714 = !DILexicalBlockFile(scope: !707, file: !10, discriminator: 1)
!715 = !DILocation(line: 253, column: 5, scope: !707)
!716 = !DILocation(line: 255, column: 11, scope: !661)
!717 = !DILocation(line: 255, column: 9, scope: !661)
!718 = !DILocation(line: 257, column: 7, scope: !661)
!719 = !DILocation(line: 258, column: 12, scope: !720)
!720 = distinct !DILexicalBlock(scope: !661, file: !10, line: 258, column: 3)
!721 = !DILocation(line: 258, column: 10, scope: !720)
!722 = !DILocation(line: 258, column: 8, scope: !720)
!723 = !DILocation(line: 258, column: 19, scope: !724)
!724 = !DILexicalBlockFile(scope: !725, file: !10, discriminator: 1)
!725 = distinct !DILexicalBlock(scope: !720, file: !10, line: 258, column: 3)
!726 = !DILocation(line: 258, column: 3, scope: !724)
!727 = !DILocation(line: 259, column: 9, scope: !728)
!728 = distinct !DILexicalBlock(scope: !729, file: !10, line: 259, column: 9)
!729 = distinct !DILexicalBlock(scope: !725, file: !10, line: 258, column: 44)
!730 = !DILocation(line: 259, column: 13, scope: !728)
!731 = !DILocation(line: 259, column: 18, scope: !728)
!732 = !DILocation(line: 259, column: 9, scope: !729)
!733 = !DILocation(line: 259, column: 26, scope: !734)
!734 = !DILexicalBlockFile(scope: !728, file: !10, discriminator: 1)
!735 = !DILocation(line: 260, column: 19, scope: !729)
!736 = !DILocation(line: 260, column: 11, scope: !729)
!737 = !DILocation(line: 260, column: 24, scope: !729)
!738 = !DILocation(line: 260, column: 5, scope: !739)
!739 = !DILexicalBlockFile(scope: !729, file: !10, discriminator: 1)
!740 = !DILocation(line: 260, column: 37, scope: !729)
!741 = !DILocation(line: 261, column: 15, scope: !742)
!742 = distinct !DILexicalBlock(scope: !729, file: !10, line: 261, column: 9)
!743 = !DILocation(line: 261, column: 19, scope: !742)
!744 = !DILocation(line: 261, column: 24, scope: !742)
!745 = !DILocation(line: 261, column: 9, scope: !742)
!746 = !DILocation(line: 261, column: 9, scope: !729)
!747 = !DILocation(line: 262, column: 14, scope: !742)
!748 = !DILocation(line: 262, column: 50, scope: !742)
!749 = !DILocation(line: 262, column: 54, scope: !742)
!750 = !DILocation(line: 262, column: 59, scope: !742)
!751 = !DILocation(line: 262, column: 7, scope: !752)
!752 = !DILexicalBlockFile(scope: !742, file: !10, discriminator: 1)
!753 = !DILocation(line: 262, column: 7, scope: !742)
!754 = !DILocation(line: 263, column: 13, scope: !755)
!755 = distinct !DILexicalBlock(scope: !729, file: !10, line: 263, column: 8)
!756 = !DILocation(line: 263, column: 11, scope: !755)
!757 = !DILocation(line: 263, column: 22, scope: !755)
!758 = !DILocation(line: 263, column: 8, scope: !729)
!759 = !DILocation(line: 264, column: 19, scope: !760)
!760 = distinct !DILexicalBlock(scope: !755, file: !10, line: 263, column: 31)
!761 = !DILocation(line: 264, column: 12, scope: !760)
!762 = !DILocation(line: 265, column: 14, scope: !760)
!763 = !DILocation(line: 265, column: 44, scope: !760)
!764 = !DILocation(line: 265, column: 48, scope: !760)
!765 = !DILocation(line: 265, column: 53, scope: !760)
!766 = !DILocation(line: 265, column: 73, scope: !760)
!767 = !DILocation(line: 265, column: 7, scope: !768)
!768 = !DILexicalBlockFile(scope: !760, file: !10, discriminator: 1)
!769 = !DILocation(line: 266, column: 5, scope: !760)
!770 = !DILocation(line: 267, column: 14, scope: !771)
!771 = distinct !DILexicalBlock(scope: !755, file: !10, line: 266, column: 12)
!772 = !DILocation(line: 267, column: 50, scope: !771)
!773 = !DILocation(line: 267, column: 54, scope: !771)
!774 = !DILocation(line: 267, column: 59, scope: !771)
!775 = !DILocation(line: 267, column: 7, scope: !776)
!776 = !DILexicalBlockFile(scope: !771, file: !10, discriminator: 1)
!777 = !DILocation(line: 269, column: 3, scope: !729)
!778 = !DILocation(line: 258, column: 27, scope: !779)
!779 = !DILexicalBlockFile(scope: !725, file: !10, discriminator: 2)
!780 = !DILocation(line: 258, column: 31, scope: !779)
!781 = !DILocation(line: 258, column: 25, scope: !779)
!782 = !DILocation(line: 258, column: 3, scope: !779)
!783 = distinct !{!783, !784}
!784 = !DILocation(line: 258, column: 3, scope: !661)
!785 = !DILocation(line: 270, column: 9, scope: !786)
!786 = distinct !DILexicalBlock(scope: !661, file: !10, line: 270, column: 7)
!787 = !DILocation(line: 270, column: 8, scope: !786)
!788 = !DILocation(line: 270, column: 7, scope: !661)
!789 = !DILocation(line: 270, column: 15, scope: !790)
!790 = !DILexicalBlockFile(scope: !786, file: !10, discriminator: 1)
!791 = !DILocation(line: 272, column: 7, scope: !661)
!792 = !DILocation(line: 273, column: 12, scope: !793)
!793 = distinct !DILexicalBlock(scope: !661, file: !10, line: 273, column: 3)
!794 = !DILocation(line: 273, column: 10, scope: !793)
!795 = !DILocation(line: 273, column: 8, scope: !793)
!796 = !DILocation(line: 273, column: 19, scope: !797)
!797 = !DILexicalBlockFile(scope: !798, file: !10, discriminator: 1)
!798 = distinct !DILexicalBlock(scope: !793, file: !10, line: 273, column: 3)
!799 = !DILocation(line: 273, column: 3, scope: !797)
!800 = !DILocalVariable(name: "ti", scope: !801, file: !10, line: 274, type: !41)
!801 = distinct !DILexicalBlock(scope: !798, file: !10, line: 273, column: 44)
!802 = !DILocation(line: 274, column: 21, scope: !801)
!803 = !DILocalVariable(name: "i", scope: !801, file: !10, line: 275, type: !20)
!804 = !DILocation(line: 275, column: 18, scope: !801)
!805 = !DILocation(line: 277, column: 10, scope: !806)
!806 = distinct !DILexicalBlock(scope: !801, file: !10, line: 277, column: 9)
!807 = !DILocation(line: 277, column: 14, scope: !806)
!808 = !DILocation(line: 277, column: 19, scope: !806)
!809 = !DILocation(line: 277, column: 9, scope: !801)
!810 = !DILocation(line: 277, column: 27, scope: !811)
!811 = !DILexicalBlockFile(scope: !806, file: !10, discriminator: 1)
!812 = !DILocation(line: 278, column: 21, scope: !801)
!813 = !DILocation(line: 278, column: 25, scope: !801)
!814 = !DILocation(line: 278, column: 30, scope: !801)
!815 = !DILocation(line: 278, column: 5, scope: !801)
!816 = !DILocation(line: 279, column: 19, scope: !801)
!817 = !DILocation(line: 279, column: 11, scope: !801)
!818 = !DILocation(line: 279, column: 24, scope: !801)
!819 = !DILocation(line: 279, column: 5, scope: !820)
!820 = !DILexicalBlockFile(scope: !801, file: !10, discriminator: 1)
!821 = !DILocation(line: 279, column: 37, scope: !801)
!822 = !DILocation(line: 280, column: 12, scope: !801)
!823 = !DILocation(line: 280, column: 49, scope: !801)
!824 = !DILocation(line: 280, column: 5, scope: !820)
!825 = !DILocation(line: 281, column: 10, scope: !801)
!826 = !DILocation(line: 282, column: 11, scope: !827)
!827 = distinct !DILexicalBlock(scope: !801, file: !10, line: 282, column: 5)
!828 = !DILocation(line: 282, column: 10, scope: !827)
!829 = !DILocation(line: 282, column: 15, scope: !830)
!830 = !DILexicalBlockFile(scope: !831, file: !10, discriminator: 1)
!831 = distinct !DILexicalBlock(scope: !827, file: !10, line: 282, column: 5)
!832 = !DILocation(line: 282, column: 20, scope: !830)
!833 = !DILocation(line: 282, column: 16, scope: !830)
!834 = !DILocation(line: 282, column: 5, scope: !830)
!835 = !DILocalVariable(name: "qq", scope: !836, file: !10, line: 283, type: !74)
!836 = distinct !DILexicalBlock(scope: !831, file: !10, line: 282, column: 35)
!837 = !DILocation(line: 283, column: 25, scope: !836)
!838 = !DILocation(line: 285, column: 16, scope: !839)
!839 = distinct !DILexicalBlock(scope: !836, file: !10, line: 285, column: 7)
!840 = !DILocation(line: 285, column: 14, scope: !839)
!841 = !DILocation(line: 285, column: 12, scope: !839)
!842 = !DILocation(line: 286, column: 12, scope: !843)
!843 = distinct !DILexicalBlock(scope: !839, file: !10, line: 285, column: 7)
!844 = !DILocation(line: 286, column: 15, scope: !843)
!845 = !DILocation(line: 286, column: 33, scope: !846)
!846 = !DILexicalBlockFile(scope: !843, file: !10, discriminator: 1)
!847 = !DILocation(line: 286, column: 37, scope: !846)
!848 = !DILocation(line: 286, column: 20, scope: !846)
!849 = !DILocation(line: 286, column: 47, scope: !846)
!850 = !DILocation(line: 286, column: 50, scope: !851)
!851 = !DILexicalBlockFile(scope: !843, file: !10, discriminator: 2)
!852 = !DILocation(line: 286, column: 54, scope: !851)
!853 = !DILocation(line: 286, column: 59, scope: !851)
!854 = !DILocation(line: 286, column: 72, scope: !851)
!855 = !DILocation(line: 286, column: 73, scope: !851)
!856 = !DILocation(line: 286, column: 69, scope: !851)
!857 = !DILocation(line: 286, column: 18, scope: !858)
!858 = !DILexicalBlockFile(scope: !843, file: !10, discriminator: 3)
!859 = !DILocation(line: 285, column: 7, scope: !860)
!860 = !DILexicalBlockFile(scope: !839, file: !10, discriminator: 1)
!861 = !DILocation(line: 285, column: 7, scope: !862)
!862 = !DILexicalBlockFile(scope: !839, file: !10, discriminator: 2)
!863 = !DILocation(line: 287, column: 16, scope: !843)
!864 = !DILocation(line: 287, column: 20, scope: !843)
!865 = !DILocation(line: 287, column: 14, scope: !843)
!866 = !DILocation(line: 285, column: 7, scope: !858)
!867 = distinct !{!867, !868}
!868 = !DILocation(line: 285, column: 7, scope: !836)
!869 = !DILocation(line: 288, column: 11, scope: !870)
!870 = distinct !DILexicalBlock(scope: !836, file: !10, line: 288, column: 11)
!871 = !DILocation(line: 288, column: 11, scope: !836)
!872 = !DILocation(line: 289, column: 22, scope: !873)
!873 = distinct !DILexicalBlock(scope: !870, file: !10, line: 288, column: 15)
!874 = !DILocation(line: 289, column: 23, scope: !873)
!875 = !DILocation(line: 289, column: 9, scope: !873)
!876 = !DILocation(line: 290, column: 19, scope: !877)
!877 = distinct !DILexicalBlock(scope: !873, file: !10, line: 290, column: 13)
!878 = !DILocation(line: 290, column: 23, scope: !877)
!879 = !DILocation(line: 290, column: 28, scope: !877)
!880 = !DILocation(line: 290, column: 13, scope: !877)
!881 = !DILocation(line: 290, column: 13, scope: !873)
!882 = !DILocation(line: 291, column: 19, scope: !877)
!883 = !DILocation(line: 291, column: 55, scope: !877)
!884 = !DILocation(line: 291, column: 59, scope: !877)
!885 = !DILocation(line: 291, column: 64, scope: !877)
!886 = !DILocation(line: 291, column: 11, scope: !887)
!887 = !DILexicalBlockFile(scope: !877, file: !10, discriminator: 1)
!888 = !DILocation(line: 291, column: 11, scope: !877)
!889 = !DILocation(line: 292, column: 18, scope: !890)
!890 = distinct !DILexicalBlock(scope: !873, file: !10, line: 292, column: 13)
!891 = !DILocation(line: 292, column: 16, scope: !890)
!892 = !DILocation(line: 292, column: 27, scope: !890)
!893 = !DILocation(line: 292, column: 13, scope: !873)
!894 = !DILocation(line: 293, column: 18, scope: !890)
!895 = !DILocation(line: 293, column: 69, scope: !890)
!896 = !DILocation(line: 293, column: 73, scope: !890)
!897 = !DILocation(line: 293, column: 78, scope: !890)
!898 = !DILocation(line: 293, column: 11, scope: !899)
!899 = !DILexicalBlockFile(scope: !890, file: !10, discriminator: 1)
!900 = !DILocation(line: 293, column: 11, scope: !890)
!901 = !DILocation(line: 294, column: 22, scope: !873)
!902 = !DILocation(line: 294, column: 14, scope: !873)
!903 = !DILocation(line: 297, column: 9, scope: !873)
!904 = !DILocation(line: 297, column: 13, scope: !873)
!905 = !DILocation(line: 297, column: 18, scope: !873)
!906 = !DILocation(line: 297, column: 25, scope: !873)
!907 = !DILocation(line: 298, column: 7, scope: !873)
!908 = !DILocation(line: 299, column: 5, scope: !836)
!909 = !DILocation(line: 282, column: 31, scope: !910)
!910 = !DILexicalBlockFile(scope: !831, file: !10, discriminator: 2)
!911 = !DILocation(line: 282, column: 5, scope: !910)
!912 = distinct !{!912, !913}
!913 = !DILocation(line: 282, column: 5, scope: !801)
!914 = !DILocation(line: 300, column: 12, scope: !801)
!915 = !DILocation(line: 300, column: 54, scope: !801)
!916 = !DILocation(line: 300, column: 5, scope: !820)
!917 = !DILocation(line: 301, column: 3, scope: !801)
!918 = !DILocation(line: 273, column: 27, scope: !919)
!919 = !DILexicalBlockFile(scope: !798, file: !10, discriminator: 2)
!920 = !DILocation(line: 273, column: 31, scope: !919)
!921 = !DILocation(line: 273, column: 25, scope: !919)
!922 = !DILocation(line: 273, column: 3, scope: !919)
!923 = distinct !{!923, !924}
!924 = !DILocation(line: 273, column: 3, scope: !661)
!925 = !DILocation(line: 302, column: 11, scope: !661)
!926 = !DILocation(line: 302, column: 19, scope: !661)
!927 = !DILocation(line: 302, column: 3, scope: !928)
!928 = !DILexicalBlockFile(scope: !661, file: !10, discriminator: 1)
!929 = !DILocation(line: 304, column: 3, scope: !661)
!930 = distinct !DISubprogram(name: "do_discard", scope: !10, file: !10, line: 339, type: !26, isLocal: false, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !33)
!931 = !DILocalVariable(name: "argv", arg: 1, scope: !930, file: !10, line: 339, type: !28)
!932 = !DILocation(line: 339, column: 31, scope: !930)
!933 = !DILocalVariable(name: "thisarg", scope: !930, file: !10, line: 341, type: !30)
!934 = !DILocation(line: 341, column: 15, scope: !930)
!935 = !DILocalVariable(name: "queue", scope: !930, file: !10, line: 342, type: !74)
!936 = !DILocation(line: 342, column: 21, scope: !930)
!937 = !DILocalVariable(name: "pq", scope: !930, file: !10, line: 343, type: !74)
!938 = !DILocation(line: 343, column: 21, scope: !930)
!939 = !DILocation(line: 345, column: 11, scope: !930)
!940 = !DILocation(line: 345, column: 9, scope: !930)
!941 = !DILocation(line: 346, column: 8, scope: !942)
!942 = distinct !DILexicalBlock(scope: !930, file: !10, line: 346, column: 7)
!943 = !DILocation(line: 346, column: 7, scope: !942)
!944 = !DILocation(line: 346, column: 7, scope: !930)
!945 = !DILocation(line: 347, column: 14, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !10, line: 347, column: 5)
!947 = distinct !DILexicalBlock(scope: !942, file: !10, line: 346, column: 14)
!948 = !DILocation(line: 347, column: 12, scope: !946)
!949 = !DILocation(line: 347, column: 10, scope: !946)
!950 = !DILocation(line: 347, column: 21, scope: !951)
!951 = !DILexicalBlockFile(scope: !952, file: !10, discriminator: 1)
!952 = distinct !DILexicalBlock(scope: !946, file: !10, line: 347, column: 5)
!953 = !DILocation(line: 347, column: 5, scope: !951)
!954 = !DILocation(line: 348, column: 11, scope: !955)
!955 = distinct !DILexicalBlock(scope: !952, file: !10, line: 348, column: 11)
!956 = !DILocation(line: 348, column: 15, scope: !955)
!957 = !DILocation(line: 348, column: 20, scope: !955)
!958 = !DILocation(line: 348, column: 11, scope: !952)
!959 = !DILocation(line: 349, column: 25, scope: !955)
!960 = !DILocation(line: 349, column: 29, scope: !955)
!961 = !DILocation(line: 349, column: 34, scope: !955)
!962 = !DILocation(line: 349, column: 44, scope: !955)
!963 = !DILocation(line: 349, column: 48, scope: !955)
!964 = !DILocation(line: 349, column: 9, scope: !955)
!965 = !DILocation(line: 348, column: 20, scope: !966)
!966 = !DILexicalBlockFile(scope: !955, file: !10, discriminator: 1)
!967 = !DILocation(line: 347, column: 29, scope: !968)
!968 = !DILexicalBlockFile(scope: !952, file: !10, discriminator: 2)
!969 = !DILocation(line: 347, column: 33, scope: !968)
!970 = !DILocation(line: 347, column: 27, scope: !968)
!971 = !DILocation(line: 347, column: 5, scope: !968)
!972 = distinct !{!972, !973}
!973 = !DILocation(line: 347, column: 5, scope: !947)
!974 = !DILocation(line: 350, column: 19, scope: !947)
!975 = !DILocation(line: 350, column: 5, scope: !947)
!976 = !DILocation(line: 351, column: 5, scope: !947)
!977 = !DILocation(line: 351, column: 28, scope: !978)
!978 = !DILexicalBlockFile(scope: !947, file: !10, discriminator: 1)
!979 = !DILocation(line: 351, column: 23, scope: !978)
!980 = !DILocation(line: 351, column: 21, scope: !978)
!981 = !DILocation(line: 351, column: 5, scope: !978)
!982 = !DILocation(line: 352, column: 21, scope: !947)
!983 = !DILocation(line: 352, column: 50, scope: !947)
!984 = !DILocation(line: 352, column: 7, scope: !947)
!985 = !DILocation(line: 351, column: 5, scope: !986)
!986 = !DILexicalBlockFile(scope: !947, file: !10, discriminator: 2)
!987 = distinct !{!987, !976}
!988 = !DILocation(line: 353, column: 3, scope: !947)
!989 = !DILocation(line: 354, column: 19, scope: !990)
!990 = distinct !DILexicalBlock(scope: !942, file: !10, line: 353, column: 10)
!991 = !DILocation(line: 354, column: 5, scope: !990)
!992 = !DILocation(line: 357, column: 3, scope: !930)
!993 = distinct !DISubprogram(name: "discard_parts", scope: !10, file: !10, line: 314, type: !994, isLocal: true, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !33)
!994 = !DISubroutineType(types: !995)
!995 = !{null, !74, !9, !30}
!996 = !DILocalVariable(name: "queue", arg: 1, scope: !993, file: !10, line: 314, type: !74)
!997 = !DILocation(line: 314, column: 33, scope: !993)
!998 = !DILocalVariable(name: "which", arg: 2, scope: !993, file: !10, line: 314, type: !9)
!999 = !DILocation(line: 314, column: 59, scope: !993)
!1000 = !DILocalVariable(name: "package", arg: 3, scope: !993, file: !10, line: 315, type: !30)
!1001 = !DILocation(line: 315, column: 27, scope: !993)
!1002 = !DILocalVariable(name: "pq", scope: !993, file: !10, line: 317, type: !74)
!1003 = !DILocation(line: 317, column: 21, scope: !993)
!1004 = !DILocation(line: 319, column: 12, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !993, file: !10, line: 319, column: 3)
!1006 = !DILocation(line: 319, column: 10, scope: !1005)
!1007 = !DILocation(line: 319, column: 8, scope: !1005)
!1008 = !DILocation(line: 319, column: 19, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !1010, file: !10, discriminator: 1)
!1010 = distinct !DILexicalBlock(scope: !1005, file: !10, line: 319, column: 3)
!1011 = !DILocation(line: 319, column: 3, scope: !1009)
!1012 = !DILocation(line: 320, column: 13, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1010, file: !10, line: 319, column: 44)
!1014 = !DILocation(line: 320, column: 5, scope: !1013)
!1015 = !DILocation(line: 322, column: 11, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !10, line: 322, column: 11)
!1017 = distinct !DILexicalBlock(scope: !1013, file: !10, line: 320, column: 20)
!1018 = !DILocation(line: 322, column: 15, scope: !1016)
!1019 = !DILocation(line: 322, column: 20, scope: !1016)
!1020 = !DILocation(line: 322, column: 11, scope: !1017)
!1021 = !DILocation(line: 322, column: 28, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !1016, file: !10, discriminator: 1)
!1023 = !DILocation(line: 323, column: 7, scope: !1017)
!1024 = !DILocation(line: 325, column: 12, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1017, file: !10, line: 325, column: 11)
!1026 = !DILocation(line: 325, column: 16, scope: !1025)
!1027 = !DILocation(line: 325, column: 21, scope: !1025)
!1028 = !DILocation(line: 325, column: 28, scope: !1025)
!1029 = !DILocation(line: 325, column: 42, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !1025, file: !10, discriminator: 1)
!1031 = !DILocation(line: 325, column: 46, scope: !1030)
!1032 = !DILocation(line: 325, column: 51, scope: !1030)
!1033 = !DILocation(line: 325, column: 59, scope: !1030)
!1034 = !DILocation(line: 325, column: 31, scope: !1030)
!1035 = !DILocation(line: 325, column: 11, scope: !1030)
!1036 = !DILocation(line: 325, column: 69, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !1025, file: !10, discriminator: 2)
!1038 = !DILocation(line: 326, column: 7, scope: !1017)
!1039 = !DILocation(line: 328, column: 7, scope: !1017)
!1040 = !DILocation(line: 330, column: 76, scope: !1017)
!1041 = !DILocation(line: 330, column: 7, scope: !1017)
!1042 = !DILocation(line: 332, column: 16, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1013, file: !10, line: 332, column: 9)
!1044 = !DILocation(line: 332, column: 20, scope: !1043)
!1045 = !DILocation(line: 332, column: 25, scope: !1043)
!1046 = !DILocation(line: 332, column: 9, scope: !1043)
!1047 = !DILocation(line: 332, column: 9, scope: !1013)
!1048 = !DILocation(line: 333, column: 15, scope: !1043)
!1049 = !DILocation(line: 333, column: 54, scope: !1043)
!1050 = !DILocation(line: 333, column: 58, scope: !1043)
!1051 = !DILocation(line: 333, column: 63, scope: !1043)
!1052 = !DILocation(line: 333, column: 7, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1043, file: !10, discriminator: 1)
!1054 = !DILocation(line: 333, column: 7, scope: !1043)
!1055 = !DILocation(line: 334, column: 12, scope: !1013)
!1056 = !DILocation(line: 334, column: 37, scope: !1013)
!1057 = !DILocation(line: 334, column: 41, scope: !1013)
!1058 = !DILocation(line: 334, column: 46, scope: !1013)
!1059 = !DILocation(line: 334, column: 5, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1013, file: !10, discriminator: 1)
!1061 = !DILocation(line: 335, column: 3, scope: !1013)
!1062 = !DILocation(line: 319, column: 27, scope: !1063)
!1063 = !DILexicalBlockFile(scope: !1010, file: !10, discriminator: 2)
!1064 = !DILocation(line: 319, column: 31, scope: !1063)
!1065 = !DILocation(line: 319, column: 25, scope: !1063)
!1066 = !DILocation(line: 319, column: 3, scope: !1063)
!1067 = distinct !{!1067, !1068}
!1068 = !DILocation(line: 319, column: 3, scope: !993)
!1069 = !DILocation(line: 336, column: 1, scope: !993)
!1070 = distinct !DISubprogram(name: "decompose_filename", scope: !10, file: !10, line: 57, type: !1071, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !33)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!633, !30, !74}
!1073 = !DILocalVariable(name: "filename", arg: 1, scope: !1070, file: !10, line: 57, type: !30)
!1074 = !DILocation(line: 57, column: 32, scope: !1070)
!1075 = !DILocalVariable(name: "pq", arg: 2, scope: !1070, file: !10, line: 57, type: !74)
!1076 = !DILocation(line: 57, column: 60, scope: !1070)
!1077 = !DILocalVariable(name: "p", scope: !1070, file: !10, line: 59, type: !30)
!1078 = !DILocation(line: 59, column: 15, scope: !1070)
!1079 = !DILocalVariable(name: "q", scope: !1070, file: !10, line: 60, type: !268)
!1080 = !DILocation(line: 60, column: 9, scope: !1070)
!1081 = !DILocation(line: 62, column: 14, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1070, file: !10, line: 62, column: 7)
!1083 = !DILocation(line: 62, column: 7, scope: !1082)
!1084 = !DILocation(line: 62, column: 44, scope: !1082)
!1085 = !DILocation(line: 62, column: 50, scope: !1082)
!1086 = !DILocation(line: 63, column: 7, scope: !1082)
!1087 = !DILocation(line: 63, column: 20, scope: !1082)
!1088 = !DILocation(line: 62, column: 7, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1070, file: !10, discriminator: 1)
!1090 = !DILocation(line: 64, column: 5, scope: !1082)
!1091 = !DILocation(line: 66, column: 32, scope: !1070)
!1092 = !DILocation(line: 66, column: 21, scope: !1070)
!1093 = !DILocation(line: 66, column: 3, scope: !1070)
!1094 = !DILocation(line: 66, column: 7, scope: !1070)
!1095 = !DILocation(line: 66, column: 12, scope: !1070)
!1096 = !DILocation(line: 66, column: 19, scope: !1070)
!1097 = !DILocation(line: 68, column: 7, scope: !1070)
!1098 = !DILocation(line: 68, column: 16, scope: !1070)
!1099 = !DILocation(line: 68, column: 21, scope: !1070)
!1100 = !DILocation(line: 68, column: 5, scope: !1070)
!1101 = !DILocation(line: 69, column: 4, scope: !1070)
!1102 = !DILocation(line: 69, column: 8, scope: !1070)
!1103 = !DILocation(line: 70, column: 35, scope: !1070)
!1104 = !DILocation(line: 70, column: 25, scope: !1070)
!1105 = !DILocation(line: 70, column: 3, scope: !1070)
!1106 = !DILocation(line: 70, column: 7, scope: !1070)
!1107 = !DILocation(line: 70, column: 12, scope: !1070)
!1108 = !DILocation(line: 70, column: 23, scope: !1070)
!1109 = !DILocation(line: 71, column: 7, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1070, file: !10, line: 71, column: 7)
!1111 = !DILocation(line: 71, column: 12, scope: !1110)
!1112 = !DILocation(line: 71, column: 9, scope: !1110)
!1113 = !DILocation(line: 71, column: 14, scope: !1110)
!1114 = !DILocation(line: 71, column: 19, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1110, file: !10, discriminator: 1)
!1116 = !DILocation(line: 71, column: 17, scope: !1115)
!1117 = !DILocation(line: 71, column: 22, scope: !1115)
!1118 = !DILocation(line: 71, column: 29, scope: !1115)
!1119 = !DILocation(line: 71, column: 33, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1110, file: !10, discriminator: 2)
!1121 = !DILocation(line: 71, column: 32, scope: !1120)
!1122 = !DILocation(line: 71, column: 37, scope: !1120)
!1123 = !DILocation(line: 71, column: 7, scope: !1120)
!1124 = !DILocation(line: 72, column: 5, scope: !1110)
!1125 = !DILocation(line: 74, column: 7, scope: !1070)
!1126 = !DILocation(line: 74, column: 5, scope: !1070)
!1127 = !DILocation(line: 75, column: 36, scope: !1070)
!1128 = !DILocation(line: 75, column: 29, scope: !1070)
!1129 = !DILocation(line: 75, column: 24, scope: !1070)
!1130 = !DILocation(line: 75, column: 3, scope: !1070)
!1131 = !DILocation(line: 75, column: 7, scope: !1070)
!1132 = !DILocation(line: 75, column: 12, scope: !1070)
!1133 = !DILocation(line: 75, column: 22, scope: !1070)
!1134 = !DILocation(line: 76, column: 7, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1070, file: !10, line: 76, column: 7)
!1136 = !DILocation(line: 76, column: 12, scope: !1135)
!1137 = !DILocation(line: 76, column: 9, scope: !1135)
!1138 = !DILocation(line: 76, column: 14, scope: !1135)
!1139 = !DILocation(line: 76, column: 19, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1135, file: !10, discriminator: 1)
!1141 = !DILocation(line: 76, column: 17, scope: !1140)
!1142 = !DILocation(line: 76, column: 22, scope: !1140)
!1143 = !DILocation(line: 76, column: 29, scope: !1140)
!1144 = !DILocation(line: 76, column: 33, scope: !1145)
!1145 = !DILexicalBlockFile(scope: !1135, file: !10, discriminator: 2)
!1146 = !DILocation(line: 76, column: 32, scope: !1145)
!1147 = !DILocation(line: 76, column: 37, scope: !1145)
!1148 = !DILocation(line: 76, column: 7, scope: !1145)
!1149 = !DILocation(line: 77, column: 5, scope: !1135)
!1150 = !DILocation(line: 79, column: 7, scope: !1070)
!1151 = !DILocation(line: 79, column: 5, scope: !1070)
!1152 = !DILocation(line: 80, column: 35, scope: !1070)
!1153 = !DILocation(line: 80, column: 28, scope: !1070)
!1154 = !DILocation(line: 80, column: 23, scope: !1070)
!1155 = !DILocation(line: 80, column: 3, scope: !1070)
!1156 = !DILocation(line: 80, column: 7, scope: !1070)
!1157 = !DILocation(line: 80, column: 12, scope: !1070)
!1158 = !DILocation(line: 80, column: 21, scope: !1070)
!1159 = !DILocation(line: 81, column: 7, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1070, file: !10, line: 81, column: 7)
!1161 = !DILocation(line: 81, column: 12, scope: !1160)
!1162 = !DILocation(line: 81, column: 9, scope: !1160)
!1163 = !DILocation(line: 81, column: 14, scope: !1160)
!1164 = !DILocation(line: 81, column: 18, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1160, file: !10, discriminator: 1)
!1166 = !DILocation(line: 81, column: 17, scope: !1165)
!1167 = !DILocation(line: 81, column: 20, scope: !1165)
!1168 = !DILocation(line: 81, column: 24, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1160, file: !10, discriminator: 2)
!1170 = !DILocation(line: 81, column: 23, scope: !1169)
!1171 = !DILocation(line: 81, column: 28, scope: !1169)
!1172 = !DILocation(line: 81, column: 7, scope: !1169)
!1173 = !DILocation(line: 82, column: 5, scope: !1160)
!1174 = !DILocation(line: 84, column: 3, scope: !1070)
!1175 = !DILocation(line: 85, column: 1, scope: !1070)
