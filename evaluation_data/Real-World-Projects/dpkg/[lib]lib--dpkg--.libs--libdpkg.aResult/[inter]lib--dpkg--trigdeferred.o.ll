; ModuleID = './[inter]lib--dpkg--trigdeferred.o.i'
source_filename = "./[inter]lib--dpkg--trigdeferred.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.varbuf = type { i64, i64, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.trigdefmeths = type { void (i8*)*, void (i8*)*, void ()* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"triggers\00", align 1
@triggersdir = internal global i8* null, align 8
@fn = internal global %struct.varbuf zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"Lock\00", align 1
@lock_fd = internal global i32 -1, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"unable to open/create triggers lock file '%.250s'\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"triggers database lock\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Unincorp\00", align 1
@old_deferred = internal global %struct._IO_FILE* null, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"unable to open triggers deferred file '%.250s'\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"unable to stat triggers deferred file '%.250s'\00", align 1
@newfn = internal global %struct.varbuf zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"Unincorp.new\00", align 1
@trig_new_deferred = internal global %struct._IO_FILE* null, align 8
@.str.10 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"unable to open/create new triggers deferred file '%.250s'\00", align 1
@trigdef = internal global %struct.trigdefmeths* null, align 8
@.str.12 = private unnamed_addr constant [65 x i8] c"invalid package name '%.250s' in triggers deferred file '%.250s'\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"error reading triggers deferred file '%.250s'\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"unable to write new triggers deferred file '%.250s'\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"unable to close new triggers deferred file '%.250s'\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"unable to install new triggers deferred file '%.250s'\00", align 1
@.str.17 = private unnamed_addr constant [78 x i8] c"syntax error in triggers deferred file '%.250s' at line %d character %zd '%s'\00", align 1

; Function Attrs: nounwind uwtable
define i32 @trigdef_update_start(i32) #0 !dbg !136 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !140, metadata !141), !dbg !142
  %6 = call i8* @dpkg_db_get_path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)), !dbg !143
  store i8* %6, i8** @triggersdir, align 8, !dbg !144
  %7 = load i32, i32* %3, align 4, !dbg !145
  %8 = and i32 %7, 2, !dbg !147
  %9 = icmp ne i32 %8, 0, !dbg !147
  br i1 %9, label %10, label %35, !dbg !148

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** @triggersdir, align 8, !dbg !149
  call void @constructfn(%struct.varbuf* @fn, i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !151
  %12 = load i32, i32* @lock_fd, align 4, !dbg !152
  %13 = icmp eq i32 %12, -1, !dbg !154
  br i1 %13, label %14, label %32, !dbg !155

; <label>:14:                                     ; preds = %10
  %15 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fn, i32 0, i32 2), align 8, !dbg !156
  %16 = call i32 (i8*, i32, ...) @open(i8* %15, i32 578, i32 384), !dbg !158
  store i32 %16, i32* @lock_fd, align 4, !dbg !159
  %17 = load i32, i32* @lock_fd, align 4, !dbg !160
  %18 = icmp eq i32 %17, -1, !dbg !162
  br i1 %18, label %19, label %31, !dbg !163

; <label>:19:                                     ; preds = %14
  %20 = call i32* @__errno_location() #1, !dbg !164
  %21 = load i32, i32* %20, align 4, !dbg !167
  %22 = icmp eq i32 %21, 2, !dbg !168
  br i1 %22, label %23, label %27, !dbg !169

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %3, align 4, !dbg !170
  %25 = and i32 %24, 1, !dbg !172
  %26 = icmp ne i32 %25, 0, !dbg !172
  br i1 %26, label %30, label %27, !dbg !173

; <label>:27:                                     ; preds = %23, %19
  %28 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0)) #6, !dbg !174
  %29 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fn, i32 0, i32 2), align 8, !dbg !175
  call void (i8*, ...) @ohshite(i8* %28, i8* %29) #9, !dbg !176
  unreachable, !dbg !177

; <label>:30:                                     ; preds = %23
  store i32 -1, i32* %2, align 4, !dbg !178
  br label %120, !dbg !178

; <label>:31:                                     ; preds = %14
  br label %32, !dbg !179

; <label>:32:                                     ; preds = %31, %10
  %33 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fn, i32 0, i32 2), align 8, !dbg !180
  %34 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)) #6, !dbg !181
  call void @file_lock(i32* @lock_fd, i32 1, i8* %33, i8* %34), !dbg !182
  br label %35, !dbg !183

; <label>:35:                                     ; preds = %32, %1
  %36 = load i8*, i8** @triggersdir, align 8, !dbg !184
  call void @constructfn(%struct.varbuf* @fn, i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0)), !dbg !185
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @old_deferred, align 8, !dbg !186
  %38 = icmp ne %struct._IO_FILE* %37, null, !dbg !186
  br i1 %38, label %39, label %42, !dbg !188

; <label>:39:                                     ; preds = %35
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @old_deferred, align 8, !dbg !189
  %41 = call i32 @fclose(%struct._IO_FILE* %40), !dbg !190
  br label %42, !dbg !190

; <label>:42:                                     ; preds = %39, %35
  %43 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fn, i32 0, i32 2), align 8, !dbg !191
  %44 = call %struct._IO_FILE* @fopen(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)), !dbg !192
  store %struct._IO_FILE* %44, %struct._IO_FILE** @old_deferred, align 8, !dbg !193
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @old_deferred, align 8, !dbg !194
  %46 = icmp ne %struct._IO_FILE* %45, null, !dbg !194
  br i1 %46, label %65, label %47, !dbg !196

; <label>:47:                                     ; preds = %42
  %48 = call i32* @__errno_location() #1, !dbg !197
  %49 = load i32, i32* %48, align 4, !dbg !200
  %50 = icmp ne i32 %49, 2, !dbg !201
  br i1 %50, label %51, label %54, !dbg !202

; <label>:51:                                     ; preds = %47
  %52 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i32 0, i32 0)) #6, !dbg !203
  %53 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fn, i32 0, i32 2), align 8, !dbg !204
  call void (i8*, ...) @ohshite(i8* %52, i8* %53) #9, !dbg !205
  unreachable, !dbg !207

; <label>:54:                                     ; preds = %47
  %55 = load i32, i32* %3, align 4, !dbg !208
  %56 = and i32 %55, 16, !dbg !210
  %57 = icmp ne i32 %56, 0, !dbg !210
  br i1 %57, label %64, label %58, !dbg !211

; <label>:58:                                     ; preds = %54
  %59 = load i32, i32* %3, align 4, !dbg !212
  %60 = and i32 %59, 2, !dbg !215
  %61 = icmp ne i32 %60, 0, !dbg !215
  br i1 %61, label %62, label %63, !dbg !216

; <label>:62:                                     ; preds = %58
  call void @pop_cleanup(i32 1), !dbg !217
  br label %63, !dbg !217

; <label>:63:                                     ; preds = %62, %58
  store i32 -3, i32* %2, align 4, !dbg !218
  br label %120, !dbg !218

; <label>:64:                                     ; preds = %54
  br label %92, !dbg !219

; <label>:65:                                     ; preds = %42
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !220, metadata !141), !dbg !259
  call void @llvm.dbg.declare(metadata i32* %5, metadata !260, metadata !141), !dbg !261
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @old_deferred, align 8, !dbg !262
  %67 = call i32 @fileno(%struct._IO_FILE* %66) #6, !dbg !263
  %68 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fn, i32 0, i32 2), align 8, !dbg !264
  call void @setcloexec(i32 %67, i8* %68), !dbg !265
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @old_deferred, align 8, !dbg !267
  %70 = call i32 @fileno(%struct._IO_FILE* %69) #6, !dbg !268
  %71 = call i32 @fstat(i32 %70, %struct.stat* %4) #6, !dbg !269
  store i32 %71, i32* %5, align 4, !dbg !270
  %72 = load i32, i32* %5, align 4, !dbg !271
  %73 = icmp slt i32 %72, 0, !dbg !273
  br i1 %73, label %74, label %77, !dbg !274

; <label>:74:                                     ; preds = %65
  %75 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i32 0, i32 0)) #6, !dbg !275
  %76 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fn, i32 0, i32 2), align 8, !dbg !276
  call void (i8*, ...) @ohshite(i8* %75, i8* %76) #9, !dbg !277
  unreachable, !dbg !279

; <label>:77:                                     ; preds = %65
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 8, !dbg !280
  %79 = load i64, i64* %78, align 8, !dbg !280
  %80 = icmp eq i64 %79, 0, !dbg !282
  br i1 %80, label %81, label %91, !dbg !283

; <label>:81:                                     ; preds = %77
  %82 = load i32, i32* %3, align 4, !dbg !284
  %83 = and i32 %82, 8, !dbg !286
  %84 = icmp ne i32 %83, 0, !dbg !286
  br i1 %84, label %91, label %85, !dbg !287

; <label>:85:                                     ; preds = %81
  %86 = load i32, i32* %3, align 4, !dbg !288
  %87 = and i32 %86, 2, !dbg !291
  %88 = icmp ne i32 %87, 0, !dbg !291
  br i1 %88, label %89, label %90, !dbg !292

; <label>:89:                                     ; preds = %85
  call void @pop_cleanup(i32 1), !dbg !293
  br label %90, !dbg !293

; <label>:90:                                     ; preds = %89, %85
  store i32 -2, i32* %2, align 4, !dbg !294
  br label %120, !dbg !294

; <label>:91:                                     ; preds = %81, %77
  br label %92

; <label>:92:                                     ; preds = %91, %64
  %93 = load i32, i32* %3, align 4, !dbg !295
  %94 = and i32 %93, 2, !dbg !297
  %95 = icmp ne i32 %94, 0, !dbg !297
  br i1 %95, label %96, label %115, !dbg !298

; <label>:96:                                     ; preds = %92
  %97 = load i8*, i8** @triggersdir, align 8, !dbg !299
  call void @constructfn(%struct.varbuf* @newfn, i8* %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0)), !dbg !301
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @trig_new_deferred, align 8, !dbg !302
  %99 = icmp ne %struct._IO_FILE* %98, null, !dbg !302
  br i1 %99, label %100, label %103, !dbg !304

; <label>:100:                                    ; preds = %96
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @trig_new_deferred, align 8, !dbg !305
  %102 = call i32 @fclose(%struct._IO_FILE* %101), !dbg !306
  br label %103, !dbg !306

; <label>:103:                                    ; preds = %100, %96
  %104 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @newfn, i32 0, i32 2), align 8, !dbg !307
  %105 = call %struct._IO_FILE* @fopen(i8* %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !dbg !308
  store %struct._IO_FILE* %105, %struct._IO_FILE** @trig_new_deferred, align 8, !dbg !309
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @trig_new_deferred, align 8, !dbg !310
  %107 = icmp ne %struct._IO_FILE* %106, null, !dbg !310
  br i1 %107, label %111, label %108, !dbg !312

; <label>:108:                                    ; preds = %103
  %109 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i32 0, i32 0)) #6, !dbg !313
  %110 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @newfn, i32 0, i32 2), align 8, !dbg !314
  call void (i8*, ...) @ohshite(i8* %109, i8* %110) #9, !dbg !315
  unreachable, !dbg !317

; <label>:111:                                    ; preds = %103
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @trig_new_deferred, align 8, !dbg !318
  %113 = call i32 @fileno(%struct._IO_FILE* %112) #6, !dbg !319
  %114 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @newfn, i32 0, i32 2), align 8, !dbg !320
  call void @setcloexec(i32 %113, i8* %114), !dbg !321
  br label %115, !dbg !323

; <label>:115:                                    ; preds = %111, %92
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @old_deferred, align 8, !dbg !324
  %117 = icmp ne %struct._IO_FILE* %116, null, !dbg !324
  br i1 %117, label %119, label %118, !dbg !326

; <label>:118:                                    ; preds = %115
  store i32 1, i32* %2, align 4, !dbg !327
  br label %120, !dbg !327

; <label>:119:                                    ; preds = %115
  store i32 2, i32* %2, align 4, !dbg !328
  br label %120, !dbg !328

; <label>:120:                                    ; preds = %119, %118, %90, %63, %30
  %121 = load i32, i32* %2, align 4, !dbg !329
  ret i32 %121, !dbg !329
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @dpkg_db_get_path(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @constructfn(%struct.varbuf*, i8*, i8*) #0 !dbg !330 {
  %4 = alloca %struct.varbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %4, metadata !334, metadata !141), !dbg !335
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !336, metadata !141), !dbg !337
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !338, metadata !141), !dbg !339
  %7 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !340
  call void @varbuf_reset(%struct.varbuf* %7), !dbg !341
  %8 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !342
  %9 = load i8*, i8** %5, align 8, !dbg !343
  %10 = load i8*, i8** %5, align 8, !dbg !344
  %11 = call i64 @strlen(i8* %10) #10, !dbg !345
  call void @varbuf_add_buf(%struct.varbuf* %8, i8* %9, i64 %11), !dbg !346
  %12 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !348
  call void @varbuf_add_char(%struct.varbuf* %12, i32 47), !dbg !349
  %13 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !350
  %14 = load i8*, i8** %6, align 8, !dbg !351
  %15 = load i8*, i8** %6, align 8, !dbg !352
  %16 = call i64 @strlen(i8* %15) #10, !dbg !353
  call void @varbuf_add_buf(%struct.varbuf* %13, i8* %14, i64 %16), !dbg !354
  %17 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !355
  call void @varbuf_end_str(%struct.varbuf* %17), !dbg !356
  ret void, !dbg !357
}

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #4

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #5

declare void @file_lock(i32*, i32, i8*, i8*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare void @pop_cleanup(i32) #2

declare void @setcloexec(i32, i8*) #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #5

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #5

; Function Attrs: nounwind uwtable
define void @trigdef_set_methods(%struct.trigdefmeths*) #0 !dbg !358 {
  %2 = alloca %struct.trigdefmeths*, align 8
  store %struct.trigdefmeths* %0, %struct.trigdefmeths** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.trigdefmeths** %2, metadata !361, metadata !141), !dbg !362
  %3 = load %struct.trigdefmeths*, %struct.trigdefmeths** %2, align 8, !dbg !363
  store %struct.trigdefmeths* %3, %struct.trigdefmeths** @trigdef, align 8, !dbg !364
  ret void, !dbg !365
}

; Function Attrs: nounwind uwtable
define void @trigdef_update_printf(i8*, ...) #0 !dbg !366 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !369, metadata !141), !dbg !370
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !371, metadata !141), !dbg !383
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !384
  %5 = bitcast %struct.__va_list_tag* %4 to i8*, !dbg !384
  call void @llvm.va_start(i8* %5), !dbg !384
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @trig_new_deferred, align 8, !dbg !385
  %7 = load i8*, i8** %2, align 8, !dbg !386
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !387
  %9 = call i32 @vfprintf(%struct._IO_FILE* %6, i8* %7, %struct.__va_list_tag* %8), !dbg !388
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !389
  %11 = bitcast %struct.__va_list_tag* %10 to i8*, !dbg !389
  call void @llvm.va_end(i8* %11), !dbg !389
  ret void, !dbg !390
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind uwtable
define i32 @trigdef_parse() #0 !dbg !391 {
  %1 = alloca [2048 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata [2048 x i8]* %1, metadata !394, metadata !141), !dbg !398
  call void @llvm.dbg.declare(metadata i8** %2, metadata !399, metadata !141), !dbg !400
  call void @llvm.dbg.declare(metadata i8** %3, metadata !401, metadata !141), !dbg !402
  call void @llvm.dbg.declare(metadata i32* %4, metadata !403, metadata !141), !dbg !404
  store i32 0, i32* %4, align 4, !dbg !404
  br label %5, !dbg !405

; <label>:5:                                      ; preds = %177, %25, %0
  %6 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i32 0, i32 0, !dbg !406
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @old_deferred, align 8, !dbg !408
  %8 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fn, i32 0, i32 2), align 8, !dbg !409
  %9 = call i32 @fgets_checked(i8* %6, i64 2048, %struct._IO_FILE* %7, i8* %8), !dbg !410
  %10 = icmp sgt i32 %9, 0, !dbg !411
  br i1 %10, label %11, label %181, !dbg !412

; <label>:11:                                     ; preds = %5
  %12 = load i32, i32* %4, align 4, !dbg !413
  %13 = add nsw i32 %12, 1, !dbg !413
  store i32 %13, i32* %4, align 4, !dbg !413
  %14 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i32 0, i32 0, !dbg !415
  %15 = call i8* @trigdef_skip_whitespace(i8* %14), !dbg !416
  store i8* %15, i8** %2, align 8, !dbg !417
  %16 = load i8*, i8** %2, align 8, !dbg !418
  %17 = load i8, i8* %16, align 1, !dbg !420
  %18 = sext i8 %17 to i32, !dbg !420
  %19 = icmp eq i32 %18, 0, !dbg !421
  br i1 %19, label %25, label %20, !dbg !422

; <label>:20:                                     ; preds = %11
  %21 = load i8*, i8** %2, align 8, !dbg !423
  %22 = load i8, i8* %21, align 1, !dbg !425
  %23 = sext i8 %22 to i32, !dbg !425
  %24 = icmp eq i32 %23, 35, !dbg !426
  br i1 %24, label %25, label %26, !dbg !427

; <label>:25:                                     ; preds = %20, %11
  br label %5, !dbg !428, !llvm.loop !429

; <label>:26:                                     ; preds = %20
  %27 = load i8*, i8** %2, align 8, !dbg !430
  store i8* %27, i8** %3, align 8, !dbg !431
  br label %28, !dbg !432

; <label>:28:                                     ; preds = %43, %26
  %29 = load i8*, i8** %2, align 8, !dbg !433
  %30 = load i8, i8* %29, align 1, !dbg !435
  %31 = icmp ne i8 %30, 0, !dbg !436
  br i1 %31, label %32, label %46, !dbg !436

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %2, align 8, !dbg !437
  %34 = load i8, i8* %33, align 1, !dbg !440
  %35 = sext i8 %34 to i32, !dbg !440
  %36 = icmp slt i32 %35, 33, !dbg !441
  br i1 %36, label %42, label %37, !dbg !442

; <label>:37:                                     ; preds = %32
  %38 = load i8*, i8** %2, align 8, !dbg !443
  %39 = load i8, i8* %38, align 1, !dbg !445
  %40 = sext i8 %39 to i32, !dbg !445
  %41 = icmp sgt i32 %40, 126, !dbg !446
  br i1 %41, label %42, label %43, !dbg !447

; <label>:42:                                     ; preds = %37, %32
  br label %46, !dbg !448

; <label>:43:                                     ; preds = %37
  %44 = load i8*, i8** %2, align 8, !dbg !449
  %45 = getelementptr inbounds i8, i8* %44, i32 1, !dbg !449
  store i8* %45, i8** %2, align 8, !dbg !449
  br label %28, !dbg !450, !llvm.loop !452

; <label>:46:                                     ; preds = %42, %28
  %47 = load i8*, i8** %2, align 8, !dbg !453
  %48 = load i8, i8* %47, align 1, !dbg !455
  %49 = sext i8 %48 to i32, !dbg !455
  %50 = icmp eq i32 %49, 0, !dbg !456
  br i1 %50, label %55, label %51, !dbg !457

; <label>:51:                                     ; preds = %46
  %52 = load i8*, i8** %3, align 8, !dbg !458
  %53 = load i8*, i8** %2, align 8, !dbg !460
  %54 = icmp eq i8* %52, %53, !dbg !461
  br i1 %54, label %55, label %59, !dbg !462

; <label>:55:                                     ; preds = %51, %46
  %56 = load i32, i32* %4, align 4, !dbg !463
  %57 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i32 0, i32 0, !dbg !464
  %58 = load i8*, i8** %2, align 8, !dbg !465
  call void @trigdef_parse_error(i32 %56, i8* %57, i8* %58), !dbg !466
  br label %59, !dbg !466

; <label>:59:                                     ; preds = %55, %51
  %60 = load i8*, i8** %2, align 8, !dbg !467
  %61 = getelementptr inbounds i8, i8* %60, i32 1, !dbg !467
  store i8* %61, i8** %2, align 8, !dbg !467
  store i8 0, i8* %60, align 1, !dbg !468
  %62 = load %struct.trigdefmeths*, %struct.trigdefmeths** @trigdef, align 8, !dbg !469
  %63 = getelementptr inbounds %struct.trigdefmeths, %struct.trigdefmeths* %62, i32 0, i32 0, !dbg !470
  %64 = load void (i8*)*, void (i8*)** %63, align 8, !dbg !470
  %65 = load i8*, i8** %3, align 8, !dbg !471
  call void %64(i8* %65), !dbg !469
  br label %66, !dbg !472

; <label>:66:                                     ; preds = %172, %59
  %67 = load i8*, i8** %2, align 8, !dbg !473
  %68 = load i8, i8* %67, align 1, !dbg !474
  %69 = icmp ne i8 %68, 0, !dbg !475
  br i1 %69, label %70, label %177, !dbg !475

; <label>:70:                                     ; preds = %66
  %71 = load i8*, i8** %2, align 8, !dbg !476
  %72 = call i8* @trigdef_skip_whitespace(i8* %71), !dbg !478
  store i8* %72, i8** %2, align 8, !dbg !479
  %73 = load i8*, i8** %2, align 8, !dbg !480
  store i8* %73, i8** %3, align 8, !dbg !481
  %74 = load i8*, i8** %2, align 8, !dbg !482
  %75 = load i8, i8* %74, align 1, !dbg !484
  %76 = sext i8 %75 to i32, !dbg !484
  %77 = icmp eq i32 %76, 0, !dbg !485
  br i1 %77, label %93, label %78, !dbg !486

; <label>:78:                                     ; preds = %70
  %79 = load i8*, i8** %2, align 8, !dbg !487
  %80 = load i8, i8* %79, align 1, !dbg !488
  %81 = sext i8 %80 to i32, !dbg !488
  %82 = call zeroext i1 @c_isdigit(i32 %81), !dbg !489
  br i1 %82, label %97, label %83, !dbg !490

; <label>:83:                                     ; preds = %78
  %84 = load i8*, i8** %2, align 8, !dbg !491
  %85 = load i8, i8* %84, align 1, !dbg !493
  %86 = sext i8 %85 to i32, !dbg !493
  %87 = call zeroext i1 @c_islower(i32 %86), !dbg !494
  br i1 %87, label %97, label %88, !dbg !495

; <label>:88:                                     ; preds = %83
  %89 = load i8*, i8** %2, align 8, !dbg !496
  %90 = load i8, i8* %89, align 1, !dbg !498
  %91 = sext i8 %90 to i32, !dbg !498
  %92 = icmp eq i32 %91, 45, !dbg !499
  br i1 %92, label %97, label %93, !dbg !500

; <label>:93:                                     ; preds = %88, %70
  %94 = load i32, i32* %4, align 4, !dbg !502
  %95 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i32 0, i32 0, !dbg !503
  %96 = load i8*, i8** %2, align 8, !dbg !504
  call void @trigdef_parse_error(i32 %94, i8* %95, i8* %96), !dbg !505
  br label %97, !dbg !505

; <label>:97:                                     ; preds = %93, %88, %83, %78
  br label %98, !dbg !506

; <label>:98:                                     ; preds = %134, %97
  %99 = load i8*, i8** %2, align 8, !dbg !507
  %100 = getelementptr inbounds i8, i8* %99, i32 1, !dbg !507
  store i8* %100, i8** %2, align 8, !dbg !507
  %101 = load i8, i8* %100, align 1, !dbg !508
  %102 = icmp ne i8 %101, 0, !dbg !509
  br i1 %102, label %103, label %135, !dbg !509

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %2, align 8, !dbg !510
  %105 = load i8, i8* %104, align 1, !dbg !513
  %106 = sext i8 %105 to i32, !dbg !513
  %107 = call zeroext i1 @c_isdigit(i32 %106), !dbg !514
  br i1 %107, label %134, label %108, !dbg !515

; <label>:108:                                    ; preds = %103
  %109 = load i8*, i8** %2, align 8, !dbg !516
  %110 = load i8, i8* %109, align 1, !dbg !518
  %111 = sext i8 %110 to i32, !dbg !518
  %112 = call zeroext i1 @c_islower(i32 %111), !dbg !519
  br i1 %112, label %134, label %113, !dbg !520

; <label>:113:                                    ; preds = %108
  %114 = load i8*, i8** %2, align 8, !dbg !521
  %115 = load i8, i8* %114, align 1, !dbg !522
  %116 = sext i8 %115 to i32, !dbg !522
  %117 = icmp ne i32 %116, 45, !dbg !523
  br i1 %117, label %118, label %134, !dbg !524

; <label>:118:                                    ; preds = %113
  %119 = load i8*, i8** %2, align 8, !dbg !525
  %120 = load i8, i8* %119, align 1, !dbg !526
  %121 = sext i8 %120 to i32, !dbg !526
  %122 = icmp ne i32 %121, 58, !dbg !527
  br i1 %122, label %123, label %134, !dbg !528

; <label>:123:                                    ; preds = %118
  %124 = load i8*, i8** %2, align 8, !dbg !529
  %125 = load i8, i8* %124, align 1, !dbg !530
  %126 = sext i8 %125 to i32, !dbg !530
  %127 = icmp ne i32 %126, 43, !dbg !531
  br i1 %127, label %128, label %134, !dbg !532

; <label>:128:                                    ; preds = %123
  %129 = load i8*, i8** %2, align 8, !dbg !533
  %130 = load i8, i8* %129, align 1, !dbg !534
  %131 = sext i8 %130 to i32, !dbg !534
  %132 = icmp ne i32 %131, 46, !dbg !535
  br i1 %132, label %133, label %134, !dbg !536

; <label>:133:                                    ; preds = %128
  br label %135, !dbg !538

; <label>:134:                                    ; preds = %128, %123, %118, %113, %108, %103
  br label %98, !dbg !539, !llvm.loop !541

; <label>:135:                                    ; preds = %133, %98
  %136 = load i8*, i8** %2, align 8, !dbg !542
  %137 = load i8, i8* %136, align 1, !dbg !544
  %138 = sext i8 %137 to i32, !dbg !544
  %139 = icmp ne i32 %138, 0, !dbg !545
  br i1 %139, label %140, label %154, !dbg !546

; <label>:140:                                    ; preds = %135
  %141 = load i8*, i8** %2, align 8, !dbg !547
  %142 = load i8, i8* %141, align 1, !dbg !549
  %143 = sext i8 %142 to i32, !dbg !549
  %144 = icmp ne i32 %143, 35, !dbg !550
  br i1 %144, label %145, label %154, !dbg !551

; <label>:145:                                    ; preds = %140
  %146 = load i8*, i8** %2, align 8, !dbg !552
  %147 = load i8, i8* %146, align 1, !dbg !554
  %148 = sext i8 %147 to i32, !dbg !554
  %149 = call zeroext i1 @c_iswhite(i32 %148), !dbg !555
  br i1 %149, label %154, label %150, !dbg !556

; <label>:150:                                    ; preds = %145
  %151 = load i32, i32* %4, align 4, !dbg !557
  %152 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i32 0, i32 0, !dbg !558
  %153 = load i8*, i8** %2, align 8, !dbg !559
  call void @trigdef_parse_error(i32 %151, i8* %152, i8* %153), !dbg !560
  br label %154, !dbg !560

; <label>:154:                                    ; preds = %150, %145, %140, %135
  %155 = load i8*, i8** %2, align 8, !dbg !561
  %156 = getelementptr inbounds i8, i8* %155, i32 1, !dbg !561
  store i8* %156, i8** %2, align 8, !dbg !561
  store i8 0, i8* %155, align 1, !dbg !562
  %157 = load i8*, i8** %3, align 8, !dbg !563
  %158 = getelementptr inbounds i8, i8* %157, i64 0, !dbg !563
  %159 = load i8, i8* %158, align 1, !dbg !563
  %160 = sext i8 %159 to i32, !dbg !563
  %161 = icmp eq i32 %160, 45, !dbg !565
  br i1 %161, label %162, label %172, !dbg !566

; <label>:162:                                    ; preds = %154
  %163 = load i8*, i8** %3, align 8, !dbg !567
  %164 = getelementptr inbounds i8, i8* %163, i64 1, !dbg !567
  %165 = load i8, i8* %164, align 1, !dbg !567
  %166 = sext i8 %165 to i32, !dbg !567
  %167 = icmp ne i32 %166, 0, !dbg !567
  br i1 %167, label %168, label %172, !dbg !569

; <label>:168:                                    ; preds = %162
  %169 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i32 0, i32 0)) #6, !dbg !570
  %170 = load i8*, i8** %3, align 8, !dbg !571
  %171 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fn, i32 0, i32 2), align 8, !dbg !572
  call void (i8*, ...) @ohshit(i8* %169, i8* %170, i8* %171) #9, !dbg !573
  unreachable, !dbg !574

; <label>:172:                                    ; preds = %162, %154
  %173 = load %struct.trigdefmeths*, %struct.trigdefmeths** @trigdef, align 8, !dbg !575
  %174 = getelementptr inbounds %struct.trigdefmeths, %struct.trigdefmeths* %173, i32 0, i32 1, !dbg !576
  %175 = load void (i8*)*, void (i8*)** %174, align 8, !dbg !576
  %176 = load i8*, i8** %3, align 8, !dbg !577
  call void %175(i8* %176), !dbg !575
  br label %66, !dbg !578, !llvm.loop !579

; <label>:177:                                    ; preds = %66
  %178 = load %struct.trigdefmeths*, %struct.trigdefmeths** @trigdef, align 8, !dbg !580
  %179 = getelementptr inbounds %struct.trigdefmeths, %struct.trigdefmeths* %178, i32 0, i32 2, !dbg !581
  %180 = load void ()*, void ()** %179, align 8, !dbg !581
  call void %180(), !dbg !580
  br label %5, !dbg !582, !llvm.loop !429

; <label>:181:                                    ; preds = %5
  ret i32 0, !dbg !584
}

declare i32 @fgets_checked(i8*, i64, %struct._IO_FILE*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @trigdef_skip_whitespace(i8*) #0 !dbg !585 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !588, metadata !141), !dbg !589
  br label %3, !dbg !590

; <label>:3:                                      ; preds = %13, %1
  %4 = load i8*, i8** %2, align 8, !dbg !591
  %5 = load i8, i8* %4, align 1, !dbg !593
  %6 = icmp ne i8 %5, 0, !dbg !594
  br i1 %6, label %7, label %16, !dbg !594

; <label>:7:                                      ; preds = %3
  %8 = load i8*, i8** %2, align 8, !dbg !595
  %9 = load i8, i8* %8, align 1, !dbg !598
  %10 = sext i8 %9 to i32, !dbg !598
  %11 = call zeroext i1 @c_iswhite(i32 %10), !dbg !599
  br i1 %11, label %13, label %12, !dbg !600

; <label>:12:                                     ; preds = %7
  br label %16, !dbg !601

; <label>:13:                                     ; preds = %7
  %14 = load i8*, i8** %2, align 8, !dbg !602
  %15 = getelementptr inbounds i8, i8* %14, i32 1, !dbg !602
  store i8* %15, i8** %2, align 8, !dbg !602
  br label %3, !dbg !603, !llvm.loop !605

; <label>:16:                                     ; preds = %12, %3
  %17 = load i8*, i8** %2, align 8, !dbg !606
  ret i8* %17, !dbg !607
}

; Function Attrs: nounwind uwtable
define internal void @trigdef_parse_error(i32, i8*, i8*) #0 !dbg !608 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !611, metadata !141), !dbg !612
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !613, metadata !141), !dbg !614
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !615, metadata !141), !dbg !616
  %7 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.17, i32 0, i32 0)) #6, !dbg !617
  %8 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fn, i32 0, i32 2), align 8, !dbg !618
  %9 = load i32, i32* %4, align 4, !dbg !619
  %10 = load i8*, i8** %6, align 8, !dbg !620
  %11 = load i8*, i8** %5, align 8, !dbg !621
  %12 = ptrtoint i8* %10 to i64, !dbg !622
  %13 = ptrtoint i8* %11 to i64, !dbg !622
  %14 = sub i64 %12, %13, !dbg !622
  %15 = add nsw i64 %14, 1, !dbg !623
  %16 = load i8*, i8** %6, align 8, !dbg !624
  call void (i8*, ...) @ohshit(i8* %7, i8* %8, i32 %9, i64 %15, i8* %16) #9, !dbg !625
  unreachable, !dbg !627
                                                  ; No predecessors!
  ret void, !dbg !628
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isdigit(i32) #7 !dbg !629 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !633, metadata !141), !dbg !634
  %3 = load i32, i32* %2, align 4, !dbg !635
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 32), !dbg !636
  ret i1 %4, !dbg !637
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_islower(i32) #7 !dbg !638 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !639, metadata !141), !dbg !640
  %3 = load i32, i32* %2, align 4, !dbg !641
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 16), !dbg !642
  ret i1 %4, !dbg !643
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_iswhite(i32) #7 !dbg !644 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !645, metadata !141), !dbg !646
  %3 = load i32, i32* %2, align 4, !dbg !647
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 2), !dbg !648
  ret i1 %4, !dbg !649
}

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #4

; Function Attrs: nounwind uwtable
define void @trigdef_process_done() #0 !dbg !650 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !651, metadata !141), !dbg !652
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @old_deferred, align 8, !dbg !653
  %3 = icmp ne %struct._IO_FILE* %2, null, !dbg !653
  br i1 %3, label %4, label %14, !dbg !655

; <label>:4:                                      ; preds = %0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @old_deferred, align 8, !dbg !656
  %6 = call i32 @ferror(%struct._IO_FILE* %5) #6, !dbg !659
  %7 = icmp ne i32 %6, 0, !dbg !659
  br i1 %7, label %8, label %11, !dbg !660

; <label>:8:                                      ; preds = %4
  %9 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i32 0, i32 0)) #6, !dbg !661
  %10 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fn, i32 0, i32 2), align 8, !dbg !662
  call void (i8*, ...) @ohshite(i8* %9, i8* %10) #9, !dbg !663
  unreachable, !dbg !665

; <label>:11:                                     ; preds = %4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @old_deferred, align 8, !dbg !666
  %13 = call i32 @fclose(%struct._IO_FILE* %12), !dbg !667
  store %struct._IO_FILE* null, %struct._IO_FILE** @old_deferred, align 8, !dbg !668
  br label %14, !dbg !669

; <label>:14:                                     ; preds = %11, %0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @trig_new_deferred, align 8, !dbg !670
  %16 = icmp ne %struct._IO_FILE* %15, null, !dbg !670
  br i1 %16, label %17, label %42, !dbg !672

; <label>:17:                                     ; preds = %14
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @trig_new_deferred, align 8, !dbg !673
  %19 = call i32 @ferror(%struct._IO_FILE* %18) #6, !dbg !676
  %20 = icmp ne i32 %19, 0, !dbg !676
  br i1 %20, label %21, label %24, !dbg !677

; <label>:21:                                     ; preds = %17
  %22 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i32 0, i32 0)) #6, !dbg !678
  %23 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @newfn, i32 0, i32 2), align 8, !dbg !679
  call void (i8*, ...) @ohshite(i8* %22, i8* %23) #9, !dbg !680
  unreachable, !dbg !682

; <label>:24:                                     ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @trig_new_deferred, align 8, !dbg !683
  %26 = call i32 @fclose(%struct._IO_FILE* %25), !dbg !684
  store i32 %26, i32* %1, align 4, !dbg !685
  store %struct._IO_FILE* null, %struct._IO_FILE** @trig_new_deferred, align 8, !dbg !686
  %27 = load i32, i32* %1, align 4, !dbg !687
  %28 = icmp ne i32 %27, 0, !dbg !687
  br i1 %28, label %29, label %32, !dbg !689

; <label>:29:                                     ; preds = %24
  %30 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i32 0, i32 0)) #6, !dbg !690
  %31 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @newfn, i32 0, i32 2), align 8, !dbg !691
  call void (i8*, ...) @ohshite(i8* %30, i8* %31) #9, !dbg !692
  unreachable, !dbg !694

; <label>:32:                                     ; preds = %24
  %33 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @newfn, i32 0, i32 2), align 8, !dbg !695
  %34 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fn, i32 0, i32 2), align 8, !dbg !697
  %35 = call i32 @rename(i8* %33, i8* %34) #6, !dbg !698
  %36 = icmp ne i32 %35, 0, !dbg !698
  br i1 %36, label %37, label %40, !dbg !699

; <label>:37:                                     ; preds = %32
  %38 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i32 0, i32 0)) #6, !dbg !700
  %39 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @fn, i32 0, i32 2), align 8, !dbg !701
  call void (i8*, ...) @ohshite(i8* %38, i8* %39) #9, !dbg !702
  unreachable, !dbg !704

; <label>:40:                                     ; preds = %32
  %41 = load i8*, i8** @triggersdir, align 8, !dbg !705
  call void @dir_sync_path(i8* %41), !dbg !706
  br label %42, !dbg !707

; <label>:42:                                     ; preds = %40, %14
  %43 = load i8*, i8** @triggersdir, align 8, !dbg !708
  call void @free(i8* %43) #6, !dbg !709
  store i8* null, i8** @triggersdir, align 8, !dbg !710
  %44 = load i32, i32* @lock_fd, align 4, !dbg !711
  %45 = icmp sge i32 %44, 0, !dbg !713
  br i1 %45, label %46, label %47, !dbg !714

; <label>:46:                                     ; preds = %42
  call void @pop_cleanup(i32 1), !dbg !715
  br label %47, !dbg !715

; <label>:47:                                     ; preds = %46, %42
  ret void, !dbg !716
}

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #5

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #5

declare void @dir_sync_path(i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #5

declare void @varbuf_reset(%struct.varbuf*) #2

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #8

declare void @varbuf_add_char(%struct.varbuf*, i32) #2

declare void @varbuf_end_str(%struct.varbuf*) #2

declare zeroext i1 @c_isbits(i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!133, !134}
!llvm.ident = !{!135}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !40)
!1 = !DIFile(filename: "[inter]lib--dpkg--trigdeferred.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !11, !18, !23, !29}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trigdef_update_status", file: !4, line: 45, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/trigdeferred.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "TDUS_ERROR_NO_DIR", value: -1)
!7 = !DIEnumerator(name: "TDUS_ERROR_EMPTY_DEFERRED", value: -2)
!8 = !DIEnumerator(name: "TDUS_ERROR_NO_DEFERRED", value: -3)
!9 = !DIEnumerator(name: "TDUS_NO_DEFERRED", value: 1)
!10 = !DIEnumerator(name: "TDUS_OK", value: 2)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trigdef_update_flags", file: !4, line: 36, size: 32, align: 32, elements: !12)
!12 = !{!13, !14, !15, !16, !17}
!13 = !DIEnumerator(name: "TDUF_NO_LOCK_OK", value: 1)
!14 = !DIEnumerator(name: "TDUF_WRITE", value: 2)
!15 = !DIEnumerator(name: "TDUF_NO_LOCK", value: 3)
!16 = !DIEnumerator(name: "TDUF_WRITE_IF_EMPTY", value: 8)
!17 = !DIEnumerator(name: "TDUF_WRITE_IF_ENOENT", value: 16)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "file_lock_flags", file: !19, line: 56, size: 32, align: 32, elements: !20)
!19 = !DIFile(filename: "../../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "FILE_LOCK_NOWAIT", value: 0)
!22 = !DIEnumerator(name: "FILE_LOCK_WAIT", value: 1)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 41, size: 32, align: 32, elements: !25)
!24 = !DIFile(filename: "../../lib/dpkg/ehandle.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!25 = !{!26, !27, !28}
!26 = !DIEnumerator(name: "ehflag_normaltidy", value: 1)
!27 = !DIEnumerator(name: "ehflag_bombout", value: 2)
!28 = !DIEnumerator(name: "ehflag_recursiveerror", value: 4)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_ctype_bit", file: !30, line: 32, size: 32, align: 32, elements: !31)
!30 = !DIFile(filename: "../../lib/dpkg/c-ctype.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39}
!32 = !DIEnumerator(name: "C_CTYPE_BLANK", value: 1)
!33 = !DIEnumerator(name: "C_CTYPE_WHITE", value: 2)
!34 = !DIEnumerator(name: "C_CTYPE_SPACE", value: 4)
!35 = !DIEnumerator(name: "C_CTYPE_UPPER", value: 8)
!36 = !DIEnumerator(name: "C_CTYPE_LOWER", value: 16)
!37 = !DIEnumerator(name: "C_CTYPE_DIGIT", value: 32)
!38 = !DIEnumerator(name: "C_CTYPE_ALPHA", value: 24)
!39 = !DIEnumerator(name: "C_CTYPE_ALNUM", value: 56)
!40 = !{!41, !54, !55, !71, !72, !131, !132}
!41 = distinct !DIGlobalVariable(name: "fn", scope: !0, file: !42, line: 42, type: !43, isLocal: true, isDefinition: true, variable: %struct.varbuf* @fn)
!42 = !DIFile(filename: "trigdeferred.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !44, line: 55, size: 192, align: 64, elements: !45)
!44 = !DIFile(filename: "../../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!45 = !{!46, !50, !51}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !43, file: !44, line: 56, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 216, baseType: !49)
!48 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!49 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !43, file: !44, line: 56, baseType: !47, size: 64, align: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !43, file: !44, line: 57, baseType: !52, size: 64, align: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!54 = distinct !DIGlobalVariable(name: "newfn", scope: !0, file: !42, line: 42, type: !43, isLocal: true, isDefinition: true, variable: %struct.varbuf* @newfn)
!55 = distinct !DIGlobalVariable(name: "trigdef", scope: !0, file: !42, line: 44, type: !56, isLocal: true, isDefinition: true, variable: %struct.trigdefmeths** @trigdef)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigdefmeths", file: !4, line: 53, size: 192, align: 64, elements: !59)
!59 = !{!60, !66, !67}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "trig_begin", scope: !58, file: !4, line: 54, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !58, file: !4, line: 55, baseType: !61, size: 64, align: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "trig_end", scope: !58, file: !4, line: 56, baseType: !68, size: 64, align: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{null}
!71 = distinct !DIGlobalVariable(name: "triggersdir", scope: !0, file: !42, line: 48, type: !52, isLocal: true, isDefinition: true, variable: i8** @triggersdir)
!72 = distinct !DIGlobalVariable(name: "old_deferred", scope: !0, file: !42, line: 50, type: !73, isLocal: true, isDefinition: true, variable: %struct._IO_FILE** @old_deferred)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !75, line: 48, baseType: !76)
!75 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !77, line: 241, size: 1728, align: 64, elements: !78)
!77 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!78 = !{!79, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !100, !101, !102, !103, !107, !109, !111, !115, !118, !120, !122, !123, !124, !125, !126, !127}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !76, file: !77, line: 242, baseType: !80, size: 32, align: 32)
!80 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !76, file: !77, line: 247, baseType: !52, size: 64, align: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !76, file: !77, line: 248, baseType: !52, size: 64, align: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !76, file: !77, line: 249, baseType: !52, size: 64, align: 64, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !76, file: !77, line: 250, baseType: !52, size: 64, align: 64, offset: 256)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !76, file: !77, line: 251, baseType: !52, size: 64, align: 64, offset: 320)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !76, file: !77, line: 252, baseType: !52, size: 64, align: 64, offset: 384)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !76, file: !77, line: 253, baseType: !52, size: 64, align: 64, offset: 448)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !76, file: !77, line: 254, baseType: !52, size: 64, align: 64, offset: 512)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !76, file: !77, line: 256, baseType: !52, size: 64, align: 64, offset: 576)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !76, file: !77, line: 257, baseType: !52, size: 64, align: 64, offset: 640)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !76, file: !77, line: 258, baseType: !52, size: 64, align: 64, offset: 704)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !76, file: !77, line: 260, baseType: !93, size: 64, align: 64, offset: 768)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !77, line: 156, size: 192, align: 64, elements: !95)
!95 = !{!96, !97, !99}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !94, file: !77, line: 157, baseType: !93, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !94, file: !77, line: 158, baseType: !98, size: 64, align: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !94, file: !77, line: 162, baseType: !80, size: 32, align: 32, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !76, file: !77, line: 262, baseType: !98, size: 64, align: 64, offset: 832)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !76, file: !77, line: 264, baseType: !80, size: 32, align: 32, offset: 896)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !76, file: !77, line: 268, baseType: !80, size: 32, align: 32, offset: 928)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !76, file: !77, line: 270, baseType: !104, size: 64, align: 64, offset: 960)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !105, line: 131, baseType: !106)
!105 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!106 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !76, file: !77, line: 274, baseType: !108, size: 16, align: 16, offset: 1024)
!108 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !76, file: !77, line: 275, baseType: !110, size: 8, align: 8, offset: 1040)
!110 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !76, file: !77, line: 276, baseType: !112, size: 8, align: 8, offset: 1048)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 8, align: 8, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 1)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !76, file: !77, line: 280, baseType: !116, size: 64, align: 64, offset: 1088)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !77, line: 150, baseType: null)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !76, file: !77, line: 289, baseType: !119, size: 64, align: 64, offset: 1152)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !105, line: 132, baseType: !106)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !76, file: !77, line: 297, baseType: !121, size: 64, align: 64, offset: 1216)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !76, file: !77, line: 298, baseType: !121, size: 64, align: 64, offset: 1280)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !76, file: !77, line: 299, baseType: !121, size: 64, align: 64, offset: 1344)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !76, file: !77, line: 300, baseType: !121, size: 64, align: 64, offset: 1408)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !76, file: !77, line: 302, baseType: !47, size: 64, align: 64, offset: 1472)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !76, file: !77, line: 303, baseType: !80, size: 32, align: 32, offset: 1536)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !76, file: !77, line: 305, baseType: !128, size: 160, align: 8, offset: 1568)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 160, align: 8, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 20)
!131 = distinct !DIGlobalVariable(name: "trig_new_deferred", scope: !0, file: !42, line: 51, type: !73, isLocal: true, isDefinition: true, variable: %struct._IO_FILE** @trig_new_deferred)
!132 = distinct !DIGlobalVariable(name: "lock_fd", scope: !0, file: !42, line: 49, type: !80, isLocal: true, isDefinition: true, variable: i32* @lock_fd)
!133 = !{i32 2, !"Dwarf Version", i32 4}
!134 = !{i32 2, !"Debug Info Version", i32 3}
!135 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!136 = distinct !DISubprogram(name: "trigdef_update_start", scope: !42, file: !42, line: 75, type: !137, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!137 = !DISubroutineType(types: !138)
!138 = !{!3, !11}
!139 = !{}
!140 = !DILocalVariable(name: "uf", arg: 1, scope: !136, file: !42, line: 75, type: !11)
!141 = !DIExpression()
!142 = !DILocation(line: 75, column: 48, scope: !136)
!143 = !DILocation(line: 77, column: 16, scope: !136)
!144 = !DILocation(line: 77, column: 14, scope: !136)
!145 = !DILocation(line: 79, column: 6, scope: !146)
!146 = distinct !DILexicalBlock(scope: !136, file: !42, line: 79, column: 6)
!147 = !DILocation(line: 79, column: 9, scope: !146)
!148 = !DILocation(line: 79, column: 6, scope: !136)
!149 = !DILocation(line: 80, column: 20, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !42, line: 79, column: 23)
!151 = !DILocation(line: 80, column: 3, scope: !150)
!152 = !DILocation(line: 81, column: 7, scope: !153)
!153 = distinct !DILexicalBlock(scope: !150, file: !42, line: 81, column: 7)
!154 = !DILocation(line: 81, column: 15, scope: !153)
!155 = !DILocation(line: 81, column: 7, scope: !150)
!156 = !DILocation(line: 82, column: 22, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !42, line: 81, column: 22)
!158 = !DILocation(line: 82, column: 14, scope: !157)
!159 = !DILocation(line: 82, column: 12, scope: !157)
!160 = !DILocation(line: 83, column: 8, scope: !161)
!161 = distinct !DILexicalBlock(scope: !157, file: !42, line: 83, column: 8)
!162 = !DILocation(line: 83, column: 16, scope: !161)
!163 = !DILocation(line: 83, column: 8, scope: !157)
!164 = !DILocation(line: 84, column: 12, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !42, line: 84, column: 9)
!166 = distinct !DILexicalBlock(scope: !161, file: !42, line: 83, column: 23)
!167 = !DILocation(line: 84, column: 11, scope: !165)
!168 = !DILocation(line: 84, column: 16, scope: !165)
!169 = !DILocation(line: 84, column: 26, scope: !165)
!170 = !DILocation(line: 84, column: 30, scope: !171)
!171 = !DILexicalBlockFile(scope: !165, file: !42, discriminator: 1)
!172 = !DILocation(line: 84, column: 33, scope: !171)
!173 = !DILocation(line: 84, column: 9, scope: !171)
!174 = !DILocation(line: 85, column: 13, scope: !165)
!175 = !DILocation(line: 87, column: 17, scope: !165)
!176 = !DILocation(line: 85, column: 6, scope: !171)
!177 = !DILocation(line: 85, column: 6, scope: !165)
!178 = !DILocation(line: 88, column: 5, scope: !166)
!179 = !DILocation(line: 90, column: 3, scope: !157)
!180 = !DILocation(line: 92, column: 42, scope: !150)
!181 = !DILocation(line: 93, column: 12, scope: !150)
!182 = !DILocation(line: 92, column: 3, scope: !150)
!183 = !DILocation(line: 94, column: 2, scope: !150)
!184 = !DILocation(line: 96, column: 19, scope: !136)
!185 = !DILocation(line: 96, column: 2, scope: !136)
!186 = !DILocation(line: 98, column: 6, scope: !187)
!187 = distinct !DILexicalBlock(scope: !136, file: !42, line: 98, column: 6)
!188 = !DILocation(line: 98, column: 6, scope: !136)
!189 = !DILocation(line: 99, column: 10, scope: !187)
!190 = !DILocation(line: 99, column: 3, scope: !187)
!191 = !DILocation(line: 100, column: 26, scope: !136)
!192 = !DILocation(line: 100, column: 17, scope: !136)
!193 = !DILocation(line: 100, column: 15, scope: !136)
!194 = !DILocation(line: 101, column: 7, scope: !195)
!195 = distinct !DILexicalBlock(scope: !136, file: !42, line: 101, column: 6)
!196 = !DILocation(line: 101, column: 6, scope: !136)
!197 = !DILocation(line: 102, column: 8, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !42, line: 102, column: 6)
!199 = distinct !DILexicalBlock(scope: !195, file: !42, line: 101, column: 21)
!200 = !DILocation(line: 102, column: 7, scope: !198)
!201 = !DILocation(line: 102, column: 12, scope: !198)
!202 = !DILocation(line: 102, column: 6, scope: !199)
!203 = !DILocation(line: 103, column: 11, scope: !198)
!204 = !DILocation(line: 104, column: 15, scope: !198)
!205 = !DILocation(line: 103, column: 4, scope: !206)
!206 = !DILexicalBlockFile(scope: !198, file: !42, discriminator: 1)
!207 = !DILocation(line: 103, column: 4, scope: !198)
!208 = !DILocation(line: 105, column: 9, scope: !209)
!209 = distinct !DILexicalBlock(scope: !199, file: !42, line: 105, column: 7)
!210 = !DILocation(line: 105, column: 12, scope: !209)
!211 = !DILocation(line: 105, column: 7, scope: !199)
!212 = !DILocation(line: 106, column: 8, scope: !213)
!213 = distinct !DILexicalBlock(scope: !214, file: !42, line: 106, column: 8)
!214 = distinct !DILexicalBlock(scope: !209, file: !42, line: 105, column: 37)
!215 = !DILocation(line: 106, column: 11, scope: !213)
!216 = !DILocation(line: 106, column: 8, scope: !214)
!217 = !DILocation(line: 107, column: 5, scope: !213)
!218 = !DILocation(line: 108, column: 4, scope: !214)
!219 = !DILocation(line: 110, column: 2, scope: !199)
!220 = !DILocalVariable(name: "stab", scope: !221, file: !42, line: 111, type: !222)
!221 = distinct !DILexicalBlock(scope: !195, file: !42, line: 110, column: 9)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !223, line: 46, size: 1152, align: 64, elements: !224)
!223 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!224 = !{!225, !227, !229, !231, !234, !236, !238, !239, !240, !241, !243, !245, !253, !254, !255}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !222, file: !223, line: 48, baseType: !226, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !105, line: 124, baseType: !49)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !222, file: !223, line: 53, baseType: !228, size: 64, align: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !105, line: 127, baseType: !49)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !222, file: !223, line: 61, baseType: !230, size: 64, align: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !105, line: 130, baseType: !49)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !222, file: !223, line: 62, baseType: !232, size: 32, align: 32, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !105, line: 129, baseType: !233)
!233 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !222, file: !223, line: 64, baseType: !235, size: 32, align: 32, offset: 224)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !105, line: 125, baseType: !233)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !222, file: !223, line: 65, baseType: !237, size: 32, align: 32, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !105, line: 126, baseType: !233)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !222, file: !223, line: 67, baseType: !80, size: 32, align: 32, offset: 288)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !222, file: !223, line: 69, baseType: !226, size: 64, align: 64, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !222, file: !223, line: 74, baseType: !104, size: 64, align: 64, offset: 384)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !222, file: !223, line: 78, baseType: !242, size: 64, align: 64, offset: 448)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !105, line: 153, baseType: !106)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !222, file: !223, line: 80, baseType: !244, size: 64, align: 64, offset: 512)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !105, line: 158, baseType: !106)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !222, file: !223, line: 91, baseType: !246, size: 128, align: 64, offset: 576)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !247, line: 120, size: 128, align: 64, elements: !248)
!247 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!248 = !{!249, !251}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !246, file: !247, line: 122, baseType: !250, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !105, line: 139, baseType: !106)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !246, file: !247, line: 123, baseType: !252, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !105, line: 175, baseType: !106)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !222, file: !223, line: 92, baseType: !246, size: 128, align: 64, offset: 704)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !222, file: !223, line: 93, baseType: !246, size: 128, align: 64, offset: 832)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !222, file: !223, line: 106, baseType: !256, size: 192, align: 64, offset: 960)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 192, align: 64, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 3)
!259 = !DILocation(line: 111, column: 15, scope: !221)
!260 = !DILocalVariable(name: "rc", scope: !221, file: !42, line: 112, type: !80)
!261 = !DILocation(line: 112, column: 7, scope: !221)
!262 = !DILocation(line: 114, column: 21, scope: !221)
!263 = !DILocation(line: 114, column: 14, scope: !221)
!264 = !DILocation(line: 114, column: 39, scope: !221)
!265 = !DILocation(line: 114, column: 3, scope: !266)
!266 = !DILexicalBlockFile(scope: !221, file: !42, discriminator: 1)
!267 = !DILocation(line: 116, column: 21, scope: !221)
!268 = !DILocation(line: 116, column: 14, scope: !221)
!269 = !DILocation(line: 116, column: 8, scope: !266)
!270 = !DILocation(line: 116, column: 6, scope: !221)
!271 = !DILocation(line: 117, column: 7, scope: !272)
!272 = distinct !DILexicalBlock(scope: !221, file: !42, line: 117, column: 7)
!273 = !DILocation(line: 117, column: 10, scope: !272)
!274 = !DILocation(line: 117, column: 7, scope: !221)
!275 = !DILocation(line: 118, column: 11, scope: !272)
!276 = !DILocation(line: 119, column: 15, scope: !272)
!277 = !DILocation(line: 118, column: 4, scope: !278)
!278 = !DILexicalBlockFile(scope: !272, file: !42, discriminator: 1)
!279 = !DILocation(line: 118, column: 4, scope: !272)
!280 = !DILocation(line: 121, column: 12, scope: !281)
!281 = distinct !DILexicalBlock(scope: !221, file: !42, line: 121, column: 7)
!282 = !DILocation(line: 121, column: 20, scope: !281)
!283 = !DILocation(line: 121, column: 25, scope: !281)
!284 = !DILocation(line: 121, column: 30, scope: !285)
!285 = !DILexicalBlockFile(scope: !281, file: !42, discriminator: 1)
!286 = !DILocation(line: 121, column: 33, scope: !285)
!287 = !DILocation(line: 121, column: 7, scope: !285)
!288 = !DILocation(line: 122, column: 8, scope: !289)
!289 = distinct !DILexicalBlock(scope: !290, file: !42, line: 122, column: 8)
!290 = distinct !DILexicalBlock(scope: !281, file: !42, line: 121, column: 57)
!291 = !DILocation(line: 122, column: 11, scope: !289)
!292 = !DILocation(line: 122, column: 8, scope: !290)
!293 = !DILocation(line: 123, column: 5, scope: !289)
!294 = !DILocation(line: 124, column: 4, scope: !290)
!295 = !DILocation(line: 128, column: 6, scope: !296)
!296 = distinct !DILexicalBlock(scope: !136, file: !42, line: 128, column: 6)
!297 = !DILocation(line: 128, column: 9, scope: !296)
!298 = !DILocation(line: 128, column: 6, scope: !136)
!299 = !DILocation(line: 129, column: 23, scope: !300)
!300 = distinct !DILexicalBlock(scope: !296, file: !42, line: 128, column: 23)
!301 = !DILocation(line: 129, column: 3, scope: !300)
!302 = !DILocation(line: 130, column: 7, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !42, line: 130, column: 7)
!304 = !DILocation(line: 130, column: 7, scope: !300)
!305 = !DILocation(line: 131, column: 11, scope: !303)
!306 = !DILocation(line: 131, column: 4, scope: !303)
!307 = !DILocation(line: 132, column: 35, scope: !300)
!308 = !DILocation(line: 132, column: 23, scope: !300)
!309 = !DILocation(line: 132, column: 21, scope: !300)
!310 = !DILocation(line: 133, column: 8, scope: !311)
!311 = distinct !DILexicalBlock(scope: !300, file: !42, line: 133, column: 7)
!312 = !DILocation(line: 133, column: 7, scope: !300)
!313 = !DILocation(line: 134, column: 11, scope: !311)
!314 = !DILocation(line: 135, column: 18, scope: !311)
!315 = !DILocation(line: 134, column: 4, scope: !316)
!316 = !DILexicalBlockFile(scope: !311, file: !42, discriminator: 1)
!317 = !DILocation(line: 134, column: 4, scope: !311)
!318 = !DILocation(line: 137, column: 21, scope: !300)
!319 = !DILocation(line: 137, column: 14, scope: !300)
!320 = !DILocation(line: 137, column: 47, scope: !300)
!321 = !DILocation(line: 137, column: 3, scope: !322)
!322 = !DILexicalBlockFile(scope: !300, file: !42, discriminator: 1)
!323 = !DILocation(line: 138, column: 2, scope: !300)
!324 = !DILocation(line: 140, column: 7, scope: !325)
!325 = distinct !DILexicalBlock(scope: !136, file: !42, line: 140, column: 6)
!326 = !DILocation(line: 140, column: 6, scope: !136)
!327 = !DILocation(line: 141, column: 3, scope: !325)
!328 = !DILocation(line: 143, column: 2, scope: !136)
!329 = !DILocation(line: 144, column: 1, scope: !136)
!330 = distinct !DISubprogram(name: "constructfn", scope: !42, file: !42, line: 54, type: !331, isLocal: true, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !333, !64, !64}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!334 = !DILocalVariable(name: "vb", arg: 1, scope: !330, file: !42, line: 54, type: !333)
!335 = !DILocation(line: 54, column: 28, scope: !330)
!336 = !DILocalVariable(name: "dir", arg: 2, scope: !330, file: !42, line: 54, type: !64)
!337 = !DILocation(line: 54, column: 44, scope: !330)
!338 = !DILocalVariable(name: "tail", arg: 3, scope: !330, file: !42, line: 54, type: !64)
!339 = !DILocation(line: 54, column: 61, scope: !330)
!340 = !DILocation(line: 56, column: 15, scope: !330)
!341 = !DILocation(line: 56, column: 2, scope: !330)
!342 = !DILocation(line: 57, column: 17, scope: !330)
!343 = !DILocation(line: 57, column: 21, scope: !330)
!344 = !DILocation(line: 57, column: 33, scope: !330)
!345 = !DILocation(line: 57, column: 26, scope: !330)
!346 = !DILocation(line: 57, column: 2, scope: !347)
!347 = !DILexicalBlockFile(scope: !330, file: !42, discriminator: 1)
!348 = !DILocation(line: 58, column: 18, scope: !330)
!349 = !DILocation(line: 58, column: 2, scope: !330)
!350 = !DILocation(line: 59, column: 17, scope: !330)
!351 = !DILocation(line: 59, column: 21, scope: !330)
!352 = !DILocation(line: 59, column: 34, scope: !330)
!353 = !DILocation(line: 59, column: 27, scope: !330)
!354 = !DILocation(line: 59, column: 2, scope: !347)
!355 = !DILocation(line: 60, column: 17, scope: !330)
!356 = !DILocation(line: 60, column: 2, scope: !330)
!357 = !DILocation(line: 61, column: 1, scope: !330)
!358 = distinct !DISubprogram(name: "trigdef_set_methods", scope: !42, file: !42, line: 147, type: !359, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !56}
!361 = !DILocalVariable(name: "methods", arg: 1, scope: !358, file: !42, line: 147, type: !56)
!362 = !DILocation(line: 147, column: 48, scope: !358)
!363 = !DILocation(line: 149, column: 12, scope: !358)
!364 = !DILocation(line: 149, column: 10, scope: !358)
!365 = !DILocation(line: 150, column: 1, scope: !358)
!366 = distinct !DISubprogram(name: "trigdef_update_printf", scope: !42, file: !42, line: 153, type: !367, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !64, null}
!369 = !DILocalVariable(name: "format", arg: 1, scope: !366, file: !42, line: 153, type: !64)
!370 = !DILocation(line: 153, column: 35, scope: !366)
!371 = !DILocalVariable(name: "ap", scope: !366, file: !42, line: 155, type: !372)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !75, line: 79, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !374, line: 40, baseType: !375)
!374 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 155, baseType: !376)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 192, align: 64, elements: !113)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 155, size: 192, align: 64, elements: !378)
!378 = !{!379, !380, !381, !382}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !377, file: !1, line: 155, baseType: !233, size: 32, align: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !377, file: !1, line: 155, baseType: !233, size: 32, align: 32, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !377, file: !1, line: 155, baseType: !121, size: 64, align: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !377, file: !1, line: 155, baseType: !121, size: 64, align: 64, offset: 128)
!383 = !DILocation(line: 155, column: 10, scope: !366)
!384 = !DILocation(line: 157, column: 1, scope: !366)
!385 = !DILocation(line: 158, column: 11, scope: !366)
!386 = !DILocation(line: 158, column: 30, scope: !366)
!387 = !DILocation(line: 158, column: 38, scope: !366)
!388 = !DILocation(line: 158, column: 2, scope: !366)
!389 = !DILocation(line: 159, column: 1, scope: !366)
!390 = !DILocation(line: 160, column: 1, scope: !366)
!391 = distinct !DISubprogram(name: "trigdef_parse", scope: !42, file: !42, line: 184, type: !392, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!392 = !DISubroutineType(types: !393)
!393 = !{!80}
!394 = !DILocalVariable(name: "line", scope: !391, file: !42, line: 186, type: !395)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 16384, align: 8, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 2048)
!398 = !DILocation(line: 186, column: 7, scope: !391)
!399 = !DILocalVariable(name: "ptr", scope: !391, file: !42, line: 187, type: !52)
!400 = !DILocation(line: 187, column: 8, scope: !391)
!401 = !DILocalVariable(name: "ptr_ini", scope: !391, file: !42, line: 187, type: !52)
!402 = !DILocation(line: 187, column: 14, scope: !391)
!403 = !DILocalVariable(name: "line_num", scope: !391, file: !42, line: 188, type: !80)
!404 = !DILocation(line: 188, column: 6, scope: !391)
!405 = !DILocation(line: 190, column: 2, scope: !391)
!406 = !DILocation(line: 190, column: 23, scope: !407)
!407 = !DILexicalBlockFile(scope: !391, file: !42, discriminator: 1)
!408 = !DILocation(line: 190, column: 43, scope: !407)
!409 = !DILocation(line: 190, column: 60, scope: !407)
!410 = !DILocation(line: 190, column: 9, scope: !407)
!411 = !DILocation(line: 190, column: 65, scope: !407)
!412 = !DILocation(line: 190, column: 2, scope: !407)
!413 = !DILocation(line: 191, column: 11, scope: !414)
!414 = distinct !DILexicalBlock(scope: !391, file: !42, line: 190, column: 70)
!415 = !DILocation(line: 193, column: 33, scope: !414)
!416 = !DILocation(line: 193, column: 9, scope: !414)
!417 = !DILocation(line: 193, column: 7, scope: !414)
!418 = !DILocation(line: 196, column: 8, scope: !419)
!419 = distinct !DILexicalBlock(scope: !414, file: !42, line: 196, column: 7)
!420 = !DILocation(line: 196, column: 7, scope: !419)
!421 = !DILocation(line: 196, column: 12, scope: !419)
!422 = !DILocation(line: 196, column: 20, scope: !419)
!423 = !DILocation(line: 196, column: 24, scope: !424)
!424 = !DILexicalBlockFile(scope: !419, file: !42, discriminator: 1)
!425 = !DILocation(line: 196, column: 23, scope: !424)
!426 = !DILocation(line: 196, column: 28, scope: !424)
!427 = !DILocation(line: 196, column: 7, scope: !424)
!428 = !DILocation(line: 197, column: 4, scope: !419)
!429 = distinct !{!429, !405}
!430 = !DILocation(line: 200, column: 13, scope: !414)
!431 = !DILocation(line: 200, column: 11, scope: !414)
!432 = !DILocation(line: 201, column: 3, scope: !414)
!433 = !DILocation(line: 201, column: 11, scope: !434)
!434 = !DILexicalBlockFile(scope: !414, file: !42, discriminator: 1)
!435 = !DILocation(line: 201, column: 10, scope: !434)
!436 = !DILocation(line: 201, column: 3, scope: !434)
!437 = !DILocation(line: 202, column: 9, scope: !438)
!438 = distinct !DILexicalBlock(scope: !439, file: !42, line: 202, column: 8)
!439 = distinct !DILexicalBlock(scope: !414, file: !42, line: 201, column: 16)
!440 = !DILocation(line: 202, column: 8, scope: !438)
!441 = !DILocation(line: 202, column: 13, scope: !438)
!442 = !DILocation(line: 202, column: 20, scope: !438)
!443 = !DILocation(line: 202, column: 24, scope: !444)
!444 = !DILexicalBlockFile(scope: !438, file: !42, discriminator: 1)
!445 = !DILocation(line: 202, column: 23, scope: !444)
!446 = !DILocation(line: 202, column: 28, scope: !444)
!447 = !DILocation(line: 202, column: 8, scope: !444)
!448 = !DILocation(line: 203, column: 5, scope: !438)
!449 = !DILocation(line: 204, column: 7, scope: !439)
!450 = !DILocation(line: 201, column: 3, scope: !451)
!451 = !DILexicalBlockFile(scope: !414, file: !42, discriminator: 2)
!452 = distinct !{!452, !432}
!453 = !DILocation(line: 207, column: 8, scope: !454)
!454 = distinct !DILexicalBlock(scope: !414, file: !42, line: 207, column: 7)
!455 = !DILocation(line: 207, column: 7, scope: !454)
!456 = !DILocation(line: 207, column: 12, scope: !454)
!457 = !DILocation(line: 207, column: 20, scope: !454)
!458 = !DILocation(line: 207, column: 23, scope: !459)
!459 = !DILexicalBlockFile(scope: !454, file: !42, discriminator: 1)
!460 = !DILocation(line: 207, column: 34, scope: !459)
!461 = !DILocation(line: 207, column: 31, scope: !459)
!462 = !DILocation(line: 207, column: 7, scope: !459)
!463 = !DILocation(line: 208, column: 24, scope: !454)
!464 = !DILocation(line: 208, column: 34, scope: !454)
!465 = !DILocation(line: 208, column: 40, scope: !454)
!466 = !DILocation(line: 208, column: 4, scope: !454)
!467 = !DILocation(line: 209, column: 7, scope: !414)
!468 = !DILocation(line: 209, column: 10, scope: !414)
!469 = !DILocation(line: 212, column: 3, scope: !414)
!470 = !DILocation(line: 212, column: 12, scope: !414)
!471 = !DILocation(line: 212, column: 23, scope: !414)
!472 = !DILocation(line: 215, column: 3, scope: !414)
!473 = !DILocation(line: 215, column: 11, scope: !434)
!474 = !DILocation(line: 215, column: 10, scope: !434)
!475 = !DILocation(line: 215, column: 3, scope: !434)
!476 = !DILocation(line: 216, column: 34, scope: !477)
!477 = distinct !DILexicalBlock(scope: !414, file: !42, line: 215, column: 16)
!478 = !DILocation(line: 216, column: 10, scope: !477)
!479 = !DILocation(line: 216, column: 8, scope: !477)
!480 = !DILocation(line: 218, column: 14, scope: !477)
!481 = !DILocation(line: 218, column: 12, scope: !477)
!482 = !DILocation(line: 219, column: 9, scope: !483)
!483 = distinct !DILexicalBlock(scope: !477, file: !42, line: 219, column: 8)
!484 = !DILocation(line: 219, column: 8, scope: !483)
!485 = !DILocation(line: 219, column: 13, scope: !483)
!486 = !DILocation(line: 219, column: 21, scope: !483)
!487 = !DILocation(line: 220, column: 21, scope: !483)
!488 = !DILocation(line: 220, column: 20, scope: !483)
!489 = !DILocation(line: 220, column: 10, scope: !483)
!490 = !DILocation(line: 220, column: 26, scope: !483)
!491 = !DILocation(line: 220, column: 40, scope: !492)
!492 = !DILexicalBlockFile(scope: !483, file: !42, discriminator: 1)
!493 = !DILocation(line: 220, column: 39, scope: !492)
!494 = !DILocation(line: 220, column: 29, scope: !492)
!495 = !DILocation(line: 220, column: 45, scope: !492)
!496 = !DILocation(line: 220, column: 49, scope: !497)
!497 = !DILexicalBlockFile(scope: !483, file: !42, discriminator: 2)
!498 = !DILocation(line: 220, column: 48, scope: !497)
!499 = !DILocation(line: 220, column: 53, scope: !497)
!500 = !DILocation(line: 219, column: 8, scope: !501)
!501 = !DILexicalBlockFile(scope: !477, file: !42, discriminator: 1)
!502 = !DILocation(line: 221, column: 25, scope: !483)
!503 = !DILocation(line: 221, column: 35, scope: !483)
!504 = !DILocation(line: 221, column: 41, scope: !483)
!505 = !DILocation(line: 221, column: 5, scope: !483)
!506 = !DILocation(line: 223, column: 4, scope: !477)
!507 = !DILocation(line: 223, column: 12, scope: !501)
!508 = !DILocation(line: 223, column: 11, scope: !501)
!509 = !DILocation(line: 223, column: 4, scope: !501)
!510 = !DILocation(line: 224, column: 21, scope: !511)
!511 = distinct !DILexicalBlock(scope: !512, file: !42, line: 224, column: 9)
!512 = distinct !DILexicalBlock(scope: !477, file: !42, line: 223, column: 19)
!513 = !DILocation(line: 224, column: 20, scope: !511)
!514 = !DILocation(line: 224, column: 10, scope: !511)
!515 = !DILocation(line: 224, column: 26, scope: !511)
!516 = !DILocation(line: 224, column: 41, scope: !517)
!517 = !DILexicalBlockFile(scope: !511, file: !42, discriminator: 1)
!518 = !DILocation(line: 224, column: 40, scope: !517)
!519 = !DILocation(line: 224, column: 30, scope: !517)
!520 = !DILocation(line: 224, column: 46, scope: !517)
!521 = !DILocation(line: 225, column: 10, scope: !511)
!522 = !DILocation(line: 225, column: 9, scope: !511)
!523 = !DILocation(line: 225, column: 14, scope: !511)
!524 = !DILocation(line: 225, column: 21, scope: !511)
!525 = !DILocation(line: 225, column: 25, scope: !517)
!526 = !DILocation(line: 225, column: 24, scope: !517)
!527 = !DILocation(line: 225, column: 29, scope: !517)
!528 = !DILocation(line: 225, column: 36, scope: !517)
!529 = !DILocation(line: 226, column: 10, scope: !511)
!530 = !DILocation(line: 226, column: 9, scope: !511)
!531 = !DILocation(line: 226, column: 14, scope: !511)
!532 = !DILocation(line: 226, column: 21, scope: !511)
!533 = !DILocation(line: 226, column: 25, scope: !517)
!534 = !DILocation(line: 226, column: 24, scope: !517)
!535 = !DILocation(line: 226, column: 29, scope: !517)
!536 = !DILocation(line: 224, column: 9, scope: !537)
!537 = !DILexicalBlockFile(scope: !512, file: !42, discriminator: 2)
!538 = !DILocation(line: 227, column: 6, scope: !511)
!539 = !DILocation(line: 223, column: 4, scope: !540)
!540 = !DILexicalBlockFile(scope: !477, file: !42, discriminator: 2)
!541 = distinct !{!541, !506}
!542 = !DILocation(line: 230, column: 9, scope: !543)
!543 = distinct !DILexicalBlock(scope: !477, file: !42, line: 230, column: 8)
!544 = !DILocation(line: 230, column: 8, scope: !543)
!545 = !DILocation(line: 230, column: 13, scope: !543)
!546 = !DILocation(line: 230, column: 21, scope: !543)
!547 = !DILocation(line: 230, column: 25, scope: !548)
!548 = !DILexicalBlockFile(scope: !543, file: !42, discriminator: 1)
!549 = !DILocation(line: 230, column: 24, scope: !548)
!550 = !DILocation(line: 230, column: 29, scope: !548)
!551 = !DILocation(line: 230, column: 36, scope: !548)
!552 = !DILocation(line: 230, column: 51, scope: !553)
!553 = !DILexicalBlockFile(scope: !543, file: !42, discriminator: 2)
!554 = !DILocation(line: 230, column: 50, scope: !553)
!555 = !DILocation(line: 230, column: 40, scope: !553)
!556 = !DILocation(line: 230, column: 8, scope: !553)
!557 = !DILocation(line: 231, column: 25, scope: !543)
!558 = !DILocation(line: 231, column: 35, scope: !543)
!559 = !DILocation(line: 231, column: 41, scope: !543)
!560 = !DILocation(line: 231, column: 5, scope: !543)
!561 = !DILocation(line: 232, column: 8, scope: !477)
!562 = !DILocation(line: 232, column: 11, scope: !477)
!563 = !DILocation(line: 234, column: 8, scope: !564)
!564 = distinct !DILexicalBlock(scope: !477, file: !42, line: 234, column: 8)
!565 = !DILocation(line: 234, column: 19, scope: !564)
!566 = !DILocation(line: 234, column: 26, scope: !564)
!567 = !DILocation(line: 234, column: 29, scope: !568)
!568 = !DILexicalBlockFile(scope: !564, file: !42, discriminator: 1)
!569 = !DILocation(line: 234, column: 8, scope: !568)
!570 = !DILocation(line: 235, column: 11, scope: !564)
!571 = !DILocation(line: 237, column: 12, scope: !564)
!572 = !DILocation(line: 237, column: 24, scope: !564)
!573 = !DILocation(line: 235, column: 5, scope: !568)
!574 = !DILocation(line: 235, column: 5, scope: !564)
!575 = !DILocation(line: 240, column: 4, scope: !477)
!576 = !DILocation(line: 240, column: 13, scope: !477)
!577 = !DILocation(line: 240, column: 21, scope: !477)
!578 = !DILocation(line: 215, column: 3, scope: !451)
!579 = distinct !{!579, !472}
!580 = !DILocation(line: 243, column: 3, scope: !414)
!581 = !DILocation(line: 243, column: 12, scope: !414)
!582 = !DILocation(line: 190, column: 2, scope: !583)
!583 = !DILexicalBlockFile(scope: !391, file: !42, discriminator: 2)
!584 = !DILocation(line: 246, column: 2, scope: !391)
!585 = distinct !DISubprogram(name: "trigdef_skip_whitespace", scope: !42, file: !42, line: 172, type: !586, isLocal: true, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!586 = !DISubroutineType(types: !587)
!587 = !{!52, !52}
!588 = !DILocalVariable(name: "ptr", arg: 1, scope: !585, file: !42, line: 172, type: !52)
!589 = !DILocation(line: 172, column: 31, scope: !585)
!590 = !DILocation(line: 174, column: 2, scope: !585)
!591 = !DILocation(line: 174, column: 10, scope: !592)
!592 = !DILexicalBlockFile(scope: !585, file: !42, discriminator: 1)
!593 = !DILocation(line: 174, column: 9, scope: !592)
!594 = !DILocation(line: 174, column: 2, scope: !592)
!595 = !DILocation(line: 175, column: 19, scope: !596)
!596 = distinct !DILexicalBlock(scope: !597, file: !42, line: 175, column: 7)
!597 = distinct !DILexicalBlock(scope: !585, file: !42, line: 174, column: 15)
!598 = !DILocation(line: 175, column: 18, scope: !596)
!599 = !DILocation(line: 175, column: 8, scope: !596)
!600 = !DILocation(line: 175, column: 7, scope: !597)
!601 = !DILocation(line: 176, column: 4, scope: !596)
!602 = !DILocation(line: 177, column: 6, scope: !597)
!603 = !DILocation(line: 174, column: 2, scope: !604)
!604 = !DILexicalBlockFile(scope: !585, file: !42, discriminator: 2)
!605 = distinct !{!605, !590}
!606 = !DILocation(line: 180, column: 9, scope: !585)
!607 = !DILocation(line: 180, column: 2, scope: !585)
!608 = distinct !DISubprogram(name: "trigdef_parse_error", scope: !42, file: !42, line: 163, type: !609, isLocal: true, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !80, !64, !64}
!611 = !DILocalVariable(name: "line_num", arg: 1, scope: !608, file: !42, line: 163, type: !80)
!612 = !DILocation(line: 163, column: 25, scope: !608)
!613 = !DILocalVariable(name: "line", arg: 2, scope: !608, file: !42, line: 163, type: !64)
!614 = !DILocation(line: 163, column: 47, scope: !608)
!615 = !DILocalVariable(name: "ptr", arg: 3, scope: !608, file: !42, line: 163, type: !64)
!616 = !DILocation(line: 163, column: 65, scope: !608)
!617 = !DILocation(line: 165, column: 8, scope: !608)
!618 = !DILocation(line: 167, column: 12, scope: !608)
!619 = !DILocation(line: 167, column: 17, scope: !608)
!620 = !DILocation(line: 167, column: 27, scope: !608)
!621 = !DILocation(line: 167, column: 33, scope: !608)
!622 = !DILocation(line: 167, column: 31, scope: !608)
!623 = !DILocation(line: 167, column: 38, scope: !608)
!624 = !DILocation(line: 167, column: 43, scope: !608)
!625 = !DILocation(line: 165, column: 2, scope: !626)
!626 = !DILexicalBlockFile(scope: !608, file: !42, discriminator: 1)
!627 = !DILocation(line: 165, column: 2, scope: !608)
!628 = !DILocation(line: 168, column: 1, scope: !608)
!629 = distinct !DISubprogram(name: "c_isdigit", scope: !30, file: !30, line: 78, type: !630, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!630 = !DISubroutineType(types: !631)
!631 = !{!632, !80}
!632 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!633 = !DILocalVariable(name: "c", arg: 1, scope: !629, file: !30, line: 78, type: !80)
!634 = !DILocation(line: 78, column: 15, scope: !629)
!635 = !DILocation(line: 80, column: 18, scope: !629)
!636 = !DILocation(line: 80, column: 9, scope: !629)
!637 = !DILocation(line: 80, column: 2, scope: !629)
!638 = distinct !DISubprogram(name: "c_islower", scope: !30, file: !30, line: 96, type: !630, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!639 = !DILocalVariable(name: "c", arg: 1, scope: !638, file: !30, line: 96, type: !80)
!640 = !DILocation(line: 96, column: 15, scope: !638)
!641 = !DILocation(line: 98, column: 18, scope: !638)
!642 = !DILocation(line: 98, column: 9, scope: !638)
!643 = !DILocation(line: 98, column: 2, scope: !638)
!644 = distinct !DISubprogram(name: "c_iswhite", scope: !30, file: !30, line: 60, type: !630, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!645 = !DILocalVariable(name: "c", arg: 1, scope: !644, file: !30, line: 60, type: !80)
!646 = !DILocation(line: 60, column: 15, scope: !644)
!647 = !DILocation(line: 62, column: 18, scope: !644)
!648 = !DILocation(line: 62, column: 9, scope: !644)
!649 = !DILocation(line: 62, column: 2, scope: !644)
!650 = distinct !DISubprogram(name: "trigdef_process_done", scope: !42, file: !42, line: 250, type: !69, isLocal: false, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!651 = !DILocalVariable(name: "r", scope: !650, file: !42, line: 252, type: !80)
!652 = !DILocation(line: 252, column: 6, scope: !650)
!653 = !DILocation(line: 254, column: 6, scope: !654)
!654 = distinct !DILexicalBlock(scope: !650, file: !42, line: 254, column: 6)
!655 = !DILocation(line: 254, column: 6, scope: !650)
!656 = !DILocation(line: 255, column: 14, scope: !657)
!657 = distinct !DILexicalBlock(scope: !658, file: !42, line: 255, column: 7)
!658 = distinct !DILexicalBlock(scope: !654, file: !42, line: 254, column: 20)
!659 = !DILocation(line: 255, column: 7, scope: !657)
!660 = !DILocation(line: 255, column: 7, scope: !658)
!661 = !DILocation(line: 256, column: 11, scope: !657)
!662 = !DILocation(line: 257, column: 15, scope: !657)
!663 = !DILocation(line: 256, column: 4, scope: !664)
!664 = !DILexicalBlockFile(scope: !657, file: !42, discriminator: 1)
!665 = !DILocation(line: 256, column: 4, scope: !657)
!666 = !DILocation(line: 258, column: 10, scope: !658)
!667 = !DILocation(line: 258, column: 3, scope: !658)
!668 = !DILocation(line: 259, column: 16, scope: !658)
!669 = !DILocation(line: 260, column: 2, scope: !658)
!670 = !DILocation(line: 262, column: 6, scope: !671)
!671 = distinct !DILexicalBlock(scope: !650, file: !42, line: 262, column: 6)
!672 = !DILocation(line: 262, column: 6, scope: !650)
!673 = !DILocation(line: 263, column: 14, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !42, line: 263, column: 7)
!675 = distinct !DILexicalBlock(scope: !671, file: !42, line: 262, column: 25)
!676 = !DILocation(line: 263, column: 7, scope: !674)
!677 = !DILocation(line: 263, column: 7, scope: !675)
!678 = !DILocation(line: 264, column: 11, scope: !674)
!679 = !DILocation(line: 265, column: 37, scope: !674)
!680 = !DILocation(line: 264, column: 4, scope: !681)
!681 = !DILexicalBlockFile(scope: !674, file: !42, discriminator: 1)
!682 = !DILocation(line: 264, column: 4, scope: !674)
!683 = !DILocation(line: 266, column: 14, scope: !675)
!684 = !DILocation(line: 266, column: 7, scope: !675)
!685 = !DILocation(line: 266, column: 5, scope: !675)
!686 = !DILocation(line: 267, column: 21, scope: !675)
!687 = !DILocation(line: 268, column: 7, scope: !688)
!688 = distinct !DILexicalBlock(scope: !675, file: !42, line: 268, column: 7)
!689 = !DILocation(line: 268, column: 7, scope: !675)
!690 = !DILocation(line: 269, column: 11, scope: !688)
!691 = !DILocation(line: 270, column: 37, scope: !688)
!692 = !DILocation(line: 269, column: 4, scope: !693)
!693 = !DILexicalBlockFile(scope: !688, file: !42, discriminator: 1)
!694 = !DILocation(line: 269, column: 4, scope: !688)
!695 = !DILocation(line: 272, column: 20, scope: !696)
!696 = distinct !DILexicalBlock(scope: !675, file: !42, line: 272, column: 7)
!697 = !DILocation(line: 272, column: 28, scope: !696)
!698 = !DILocation(line: 272, column: 7, scope: !696)
!699 = !DILocation(line: 272, column: 7, scope: !675)
!700 = !DILocation(line: 273, column: 11, scope: !696)
!701 = !DILocation(line: 274, column: 34, scope: !696)
!702 = !DILocation(line: 273, column: 4, scope: !703)
!703 = !DILexicalBlockFile(scope: !696, file: !42, discriminator: 1)
!704 = !DILocation(line: 273, column: 4, scope: !696)
!705 = !DILocation(line: 276, column: 17, scope: !675)
!706 = !DILocation(line: 276, column: 3, scope: !675)
!707 = !DILocation(line: 277, column: 2, scope: !675)
!708 = !DILocation(line: 279, column: 7, scope: !650)
!709 = !DILocation(line: 279, column: 2, scope: !650)
!710 = !DILocation(line: 280, column: 14, scope: !650)
!711 = !DILocation(line: 283, column: 6, scope: !712)
!712 = distinct !DILexicalBlock(scope: !650, file: !42, line: 283, column: 6)
!713 = !DILocation(line: 283, column: 14, scope: !712)
!714 = !DILocation(line: 283, column: 6, scope: !650)
!715 = !DILocation(line: 284, column: 3, scope: !712)
!716 = !DILocation(line: 285, column: 1, scope: !650)
