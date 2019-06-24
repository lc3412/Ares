; ModuleID = './[inter]lib--dpkg--pager.o.i'
source_filename = "./[inter]lib--dpkg--pager.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pager = type { i8, i8*, i32, %struct.sigaction, i32, [2 x i32] }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }

@pager_enabled = internal global i8 1, align 1
@.str = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"DPKG_PAGER\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"PAGER\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"pager\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"LESS\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"-FRSXMQ\00", align 1
@stdout = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define void @pager_enable(i1 zeroext) #0 !dbg !27 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !31, metadata !32), !dbg !33
  %4 = load i8, i8* %2, align 1, !dbg !34
  %5 = trunc i8 %4 to i1, !dbg !34
  %6 = zext i1 %5 to i8, !dbg !35
  store i8 %6, i8* @pager_enabled, align 1, !dbg !35
  ret void, !dbg !36
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i8* @pager_get_exec() #0 !dbg !37 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !43, metadata !32), !dbg !44
  %3 = call i32 @isatty(i32 0) #8, !dbg !45
  %4 = icmp ne i32 %3, 0, !dbg !45
  br i1 %4, label %5, label %8, !dbg !47

; <label>:5:                                      ; preds = %0
  %6 = call i32 @isatty(i32 1) #8, !dbg !48
  %7 = icmp ne i32 %6, 0, !dbg !48
  br i1 %7, label %9, label %8, !dbg !50

; <label>:8:                                      ; preds = %5, %0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8** %1, align 8, !dbg !51
  br label %21, !dbg !51

; <label>:9:                                      ; preds = %5
  %10 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !52
  store i8* %10, i8** %2, align 8, !dbg !53
  %11 = load i8*, i8** %2, align 8, !dbg !54
  %12 = call zeroext i1 @str_is_unset(i8* %11), !dbg !56
  br i1 %12, label %13, label %15, !dbg !57

; <label>:13:                                     ; preds = %9
  %14 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !58
  store i8* %14, i8** %2, align 8, !dbg !59
  br label %15, !dbg !60

; <label>:15:                                     ; preds = %13, %9
  %16 = load i8*, i8** %2, align 8, !dbg !61
  %17 = call zeroext i1 @str_is_unset(i8* %16), !dbg !63
  br i1 %17, label %18, label %19, !dbg !64

; <label>:18:                                     ; preds = %15
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8** %2, align 8, !dbg !65
  br label %19, !dbg !66

; <label>:19:                                     ; preds = %18, %15
  %20 = load i8*, i8** %2, align 8, !dbg !67
  store i8* %20, i8** %1, align 8, !dbg !68
  br label %21, !dbg !68

; <label>:21:                                     ; preds = %19, %8
  %22 = load i8*, i8** %1, align 8, !dbg !69
  ret i8* %22, !dbg !69
}

; Function Attrs: nounwind
declare i32 @isatty(i32) #2

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @str_is_unset(i8*) #3 !dbg !70 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !74, metadata !32), !dbg !75
  %3 = load i8*, i8** %2, align 8, !dbg !76
  %4 = icmp eq i8* %3, null, !dbg !77
  br i1 %4, label %11, label %5, !dbg !78

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !79
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !79
  %8 = load i8, i8* %7, align 1, !dbg !79
  %9 = sext i8 %8 to i32, !dbg !79
  %10 = icmp eq i32 %9, 0, !dbg !81
  br label %11, !dbg !82

; <label>:11:                                     ; preds = %5, %1
  %12 = phi i1 [ true, %1 ], [ %10, %5 ]
  ret i1 %12, !dbg !83
}

; Function Attrs: nounwind uwtable
define %struct.pager* @pager_spawn(i8*) #0 !dbg !85 {
  %2 = alloca %struct.pager*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sigaction, align 8
  %5 = alloca %struct.pager*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !202, metadata !32), !dbg !203
  call void @llvm.dbg.declare(metadata %struct.sigaction* %4, metadata !204, metadata !32), !dbg !205
  call void @llvm.dbg.declare(metadata %struct.pager** %5, metadata !206, metadata !32), !dbg !207
  call void @llvm.dbg.declare(metadata i8** %6, metadata !208, metadata !32), !dbg !209
  %7 = call i8* @m_calloc(i64 1, i64 192), !dbg !210
  %8 = bitcast i8* %7 to %struct.pager*, !dbg !210
  store %struct.pager* %8, %struct.pager** %5, align 8, !dbg !211
  %9 = call i32 @isatty(i32 0) #8, !dbg !212
  %10 = icmp ne i32 %9, 0, !dbg !212
  br i1 %10, label %11, label %14, !dbg !213

; <label>:11:                                     ; preds = %1
  %12 = call i32 @isatty(i32 1) #8, !dbg !214
  %13 = icmp ne i32 %12, 0, !dbg !216
  br label %14

; <label>:14:                                     ; preds = %11, %1
  %15 = phi i1 [ false, %1 ], [ %13, %11 ]
  %16 = load %struct.pager*, %struct.pager** %5, align 8, !dbg !217
  %17 = getelementptr inbounds %struct.pager, %struct.pager* %16, i32 0, i32 0, !dbg !219
  %18 = zext i1 %15 to i8, !dbg !220
  store i8 %18, i8* %17, align 8, !dbg !220
  %19 = load i8*, i8** %3, align 8, !dbg !221
  %20 = load %struct.pager*, %struct.pager** %5, align 8, !dbg !222
  %21 = getelementptr inbounds %struct.pager, %struct.pager* %20, i32 0, i32 1, !dbg !223
  store i8* %19, i8** %21, align 8, !dbg !224
  %22 = call i8* @pager_get_exec(), !dbg !225
  store i8* %22, i8** %6, align 8, !dbg !226
  %23 = load i8*, i8** %6, align 8, !dbg !227
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #9, !dbg !229
  %25 = icmp eq i32 %24, 0, !dbg !230
  br i1 %25, label %26, label %29, !dbg !231

; <label>:26:                                     ; preds = %14
  %27 = load %struct.pager*, %struct.pager** %5, align 8, !dbg !232
  %28 = getelementptr inbounds %struct.pager, %struct.pager* %27, i32 0, i32 0, !dbg !233
  store i8 0, i8* %28, align 8, !dbg !234
  br label %29, !dbg !232

; <label>:29:                                     ; preds = %26, %14
  %30 = load i8, i8* @pager_enabled, align 1, !dbg !235
  %31 = trunc i8 %30 to i1, !dbg !235
  br i1 %31, label %35, label %32, !dbg !237

; <label>:32:                                     ; preds = %29
  %33 = load %struct.pager*, %struct.pager** %5, align 8, !dbg !238
  %34 = getelementptr inbounds %struct.pager, %struct.pager* %33, i32 0, i32 0, !dbg !239
  store i8 0, i8* %34, align 8, !dbg !240
  br label %35, !dbg !238

; <label>:35:                                     ; preds = %32, %29
  %36 = load %struct.pager*, %struct.pager** %5, align 8, !dbg !241
  %37 = getelementptr inbounds %struct.pager, %struct.pager* %36, i32 0, i32 0, !dbg !243
  %38 = load i8, i8* %37, align 8, !dbg !243
  %39 = trunc i8 %38 to i1, !dbg !243
  br i1 %39, label %42, label %40, !dbg !244

; <label>:40:                                     ; preds = %35
  %41 = load %struct.pager*, %struct.pager** %5, align 8, !dbg !245
  store %struct.pager* %41, %struct.pager** %2, align 8, !dbg !246
  br label %101, !dbg !246

; <label>:42:                                     ; preds = %35
  %43 = load %struct.pager*, %struct.pager** %5, align 8, !dbg !247
  %44 = getelementptr inbounds %struct.pager, %struct.pager* %43, i32 0, i32 5, !dbg !248
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %44, i32 0, i32 0, !dbg !247
  call void @m_pipe(i32* %45), !dbg !249
  %46 = bitcast %struct.sigaction* %4 to i8*, !dbg !250
  call void @llvm.memset.p0i8.i64(i8* %46, i8 0, i64 152, i32 8, i1 false), !dbg !250
  %47 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 1, !dbg !251
  %48 = call i32 @sigemptyset(%struct.__sigset_t* %47) #8, !dbg !252
  %49 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 0, !dbg !253
  %50 = bitcast %union.anon* %49 to void (i32)**, !dbg !254
  store void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)** %50, align 8, !dbg !255
  %51 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 2, !dbg !256
  store i32 0, i32* %51, align 8, !dbg !257
  %52 = load %struct.pager*, %struct.pager** %5, align 8, !dbg !258
  %53 = getelementptr inbounds %struct.pager, %struct.pager* %52, i32 0, i32 3, !dbg !259
  %54 = call i32 @sigaction(i32 13, %struct.sigaction* %4, %struct.sigaction* %53) #8, !dbg !260
  %55 = call i32 @subproc_fork(), !dbg !261
  %56 = load %struct.pager*, %struct.pager** %5, align 8, !dbg !262
  %57 = getelementptr inbounds %struct.pager, %struct.pager* %56, i32 0, i32 2, !dbg !263
  store i32 %55, i32* %57, align 8, !dbg !264
  %58 = load %struct.pager*, %struct.pager** %5, align 8, !dbg !265
  %59 = getelementptr inbounds %struct.pager, %struct.pager* %58, i32 0, i32 2, !dbg !267
  %60 = load i32, i32* %59, align 8, !dbg !267
  %61 = icmp eq i32 %60, 0, !dbg !268
  br i1 %61, label %62, label %80, !dbg !269

; <label>:62:                                     ; preds = %42
  %63 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 0) #8, !dbg !270
  %64 = load %struct.pager*, %struct.pager** %5, align 8, !dbg !272
  %65 = getelementptr inbounds %struct.pager, %struct.pager* %64, i32 0, i32 5, !dbg !273
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %65, i64 0, i64 0, !dbg !272
  %67 = load i32, i32* %66, align 4, !dbg !272
  call void @m_dup2(i32 %67, i32 0), !dbg !274
  %68 = load %struct.pager*, %struct.pager** %5, align 8, !dbg !275
  %69 = getelementptr inbounds %struct.pager, %struct.pager* %68, i32 0, i32 5, !dbg !276
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %69, i64 0, i64 0, !dbg !275
  %71 = load i32, i32* %70, align 4, !dbg !275
  %72 = call i32 @close(i32 %71), !dbg !277
  %73 = load %struct.pager*, %struct.pager** %5, align 8, !dbg !278
  %74 = getelementptr inbounds %struct.pager, %struct.pager* %73, i32 0, i32 5, !dbg !279
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %74, i64 0, i64 1, !dbg !278
  %76 = load i32, i32* %75, align 4, !dbg !278
  %77 = call i32 @close(i32 %76), !dbg !280
  %78 = load i8*, i8** %6, align 8, !dbg !281
  %79 = load i8*, i8** %3, align 8, !dbg !282
  call void @command_shell(i8* %78, i8* %79) #10, !dbg !283
  unreachable, !dbg !283

; <label>:80:                                     ; preds = %42
  %81 = call i32 @m_dup(i32 1), !dbg !284
  %82 = load %struct.pager*, %struct.pager** %5, align 8, !dbg !285
  %83 = getelementptr inbounds %struct.pager, %struct.pager* %82, i32 0, i32 4, !dbg !286
  store i32 %81, i32* %83, align 8, !dbg !287
  %84 = load %struct.pager*, %struct.pager** %5, align 8, !dbg !288
  %85 = getelementptr inbounds %struct.pager, %struct.pager* %84, i32 0, i32 5, !dbg !289
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %85, i64 0, i64 1, !dbg !288
  %87 = load i32, i32* %86, align 4, !dbg !288
  call void @m_dup2(i32 %87, i32 1), !dbg !290
  %88 = load %struct.pager*, %struct.pager** %5, align 8, !dbg !291
  %89 = getelementptr inbounds %struct.pager, %struct.pager* %88, i32 0, i32 5, !dbg !292
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %89, i64 0, i64 0, !dbg !291
  %91 = load i32, i32* %90, align 4, !dbg !291
  %92 = call i32 @close(i32 %91), !dbg !293
  %93 = load %struct.pager*, %struct.pager** %5, align 8, !dbg !294
  %94 = getelementptr inbounds %struct.pager, %struct.pager* %93, i32 0, i32 5, !dbg !295
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %94, i64 0, i64 1, !dbg !294
  %96 = load i32, i32* %95, align 4, !dbg !294
  %97 = call i32 @close(i32 %96), !dbg !296
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !297
  %99 = call i32 @setvbuf(%struct._IO_FILE* %98, i8* null, i32 0, i64 0) #8, !dbg !298
  %100 = load %struct.pager*, %struct.pager** %5, align 8, !dbg !299
  store %struct.pager* %100, %struct.pager** %2, align 8, !dbg !300
  br label %101, !dbg !300

; <label>:101:                                    ; preds = %80, %40
  %102 = load %struct.pager*, %struct.pager** %2, align 8, !dbg !301
  ret %struct.pager* %102, !dbg !301
}

declare i8* @m_calloc(i64, i64) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare void @m_pipe(i32*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #2

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #2

declare i32 @subproc_fork() #4

; Function Attrs: nounwind
declare i32 @setenv(i8*, i8*, i32) #2

declare void @m_dup2(i32, i32) #4

declare i32 @close(i32) #4

; Function Attrs: noreturn
declare void @command_shell(i8*, i8*) #7

declare i32 @m_dup(i32) #4

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE*, i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define void @pager_reap(%struct.pager*) #0 !dbg !302 {
  %2 = alloca %struct.pager*, align 8
  store %struct.pager* %0, %struct.pager** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pager** %2, metadata !305, metadata !32), !dbg !306
  %3 = load %struct.pager*, %struct.pager** %2, align 8, !dbg !307
  %4 = getelementptr inbounds %struct.pager, %struct.pager* %3, i32 0, i32 0, !dbg !309
  %5 = load i8, i8* %4, align 8, !dbg !309
  %6 = trunc i8 %5 to i1, !dbg !309
  br i1 %6, label %8, label %7, !dbg !310

; <label>:7:                                      ; preds = %1
  br label %24, !dbg !311

; <label>:8:                                      ; preds = %1
  %9 = load %struct.pager*, %struct.pager** %2, align 8, !dbg !312
  %10 = getelementptr inbounds %struct.pager, %struct.pager* %9, i32 0, i32 4, !dbg !313
  %11 = load i32, i32* %10, align 8, !dbg !313
  call void @m_dup2(i32 %11, i32 1), !dbg !314
  %12 = load %struct.pager*, %struct.pager** %2, align 8, !dbg !315
  %13 = getelementptr inbounds %struct.pager, %struct.pager* %12, i32 0, i32 2, !dbg !316
  %14 = load i32, i32* %13, align 8, !dbg !316
  %15 = load %struct.pager*, %struct.pager** %2, align 8, !dbg !317
  %16 = getelementptr inbounds %struct.pager, %struct.pager* %15, i32 0, i32 1, !dbg !318
  %17 = load i8*, i8** %16, align 8, !dbg !318
  %18 = call i32 @subproc_reap(i32 %14, i8* %17, i32 2), !dbg !319
  %19 = load %struct.pager*, %struct.pager** %2, align 8, !dbg !320
  %20 = getelementptr inbounds %struct.pager, %struct.pager* %19, i32 0, i32 3, !dbg !321
  %21 = call i32 @sigaction(i32 13, %struct.sigaction* %20, %struct.sigaction* null) #8, !dbg !322
  %22 = load %struct.pager*, %struct.pager** %2, align 8, !dbg !323
  %23 = bitcast %struct.pager* %22 to i8*, !dbg !323
  call void @free(i8* %23) #8, !dbg !324
  br label %24, !dbg !325

; <label>:24:                                     ; preds = %8, %7
  ret void, !dbg !326
}

declare i32 @subproc_reap(i32, i8*, i32) #4

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!24, !25}
!llvm.ident = !{!26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !12, globals: !20)
!1 = !DIFile(filename: "[inter]lib--dpkg--pager.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "subproc_flags", file: !4, line: 36, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/subproc.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8, !9, !10, !11}
!6 = !DIEnumerator(name: "SUBPROC_NORMAL", value: 0)
!7 = !DIEnumerator(name: "SUBPROC_WARN", value: 1)
!8 = !DIEnumerator(name: "SUBPROC_NOPIPE", value: 2)
!9 = !DIEnumerator(name: "SUBPROC_NOCHECK", value: 4)
!10 = !DIEnumerator(name: "SUBPROC_RETERROR", value: 8)
!11 = !DIEnumerator(name: "SUBPROC_RETSIGNO", value: 8)
!12 = !{!13, !19}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !14, line: 85, baseType: !15)
!14 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18}
!18 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!20 = !{!21}
!21 = distinct !DIGlobalVariable(name: "pager_enabled", scope: !0, file: !22, line: 39, type: !23, isLocal: true, isDefinition: true, variable: i8* @pager_enabled)
!22 = !DIFile(filename: "pager.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!23 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!24 = !{i32 2, !"Dwarf Version", i32 4}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!27 = distinct !DISubprogram(name: "pager_enable", scope: !22, file: !22, line: 42, type: !28, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !30)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !23}
!30 = !{}
!31 = !DILocalVariable(name: "enable", arg: 1, scope: !27, file: !22, line: 42, type: !23)
!32 = !DIExpression()
!33 = !DILocation(line: 42, column: 18, scope: !27)
!34 = !DILocation(line: 44, column: 18, scope: !27)
!35 = !DILocation(line: 44, column: 16, scope: !27)
!36 = !DILocation(line: 45, column: 1, scope: !27)
!37 = distinct !DISubprogram(name: "pager_get_exec", scope: !22, file: !22, line: 53, type: !38, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !30)
!38 = !DISubroutineType(types: !39)
!39 = !{!40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!43 = !DILocalVariable(name: "pager", scope: !37, file: !22, line: 55, type: !40)
!44 = !DILocation(line: 55, column: 14, scope: !37)
!45 = !DILocation(line: 57, column: 7, scope: !46)
!46 = distinct !DILexicalBlock(scope: !37, file: !22, line: 57, column: 6)
!47 = !DILocation(line: 57, column: 17, scope: !46)
!48 = !DILocation(line: 57, column: 21, scope: !49)
!49 = !DILexicalBlockFile(scope: !46, file: !22, discriminator: 1)
!50 = !DILocation(line: 57, column: 6, scope: !49)
!51 = !DILocation(line: 58, column: 3, scope: !46)
!52 = !DILocation(line: 60, column: 10, scope: !37)
!53 = !DILocation(line: 60, column: 8, scope: !37)
!54 = !DILocation(line: 61, column: 19, scope: !55)
!55 = distinct !DILexicalBlock(scope: !37, file: !22, line: 61, column: 6)
!56 = !DILocation(line: 61, column: 6, scope: !55)
!57 = !DILocation(line: 61, column: 6, scope: !37)
!58 = !DILocation(line: 62, column: 11, scope: !55)
!59 = !DILocation(line: 62, column: 9, scope: !55)
!60 = !DILocation(line: 62, column: 3, scope: !55)
!61 = !DILocation(line: 63, column: 19, scope: !62)
!62 = distinct !DILexicalBlock(scope: !37, file: !22, line: 63, column: 6)
!63 = !DILocation(line: 63, column: 6, scope: !62)
!64 = !DILocation(line: 63, column: 6, scope: !37)
!65 = !DILocation(line: 64, column: 9, scope: !62)
!66 = !DILocation(line: 64, column: 3, scope: !62)
!67 = !DILocation(line: 66, column: 9, scope: !37)
!68 = !DILocation(line: 66, column: 2, scope: !37)
!69 = !DILocation(line: 67, column: 1, scope: !37)
!70 = distinct !DISubprogram(name: "str_is_unset", scope: !71, file: !71, line: 41, type: !72, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !30)
!71 = !DIFile(filename: "../../lib/dpkg/string.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!72 = !DISubroutineType(types: !73)
!73 = !{!23, !40}
!74 = !DILocalVariable(name: "str", arg: 1, scope: !70, file: !71, line: 41, type: !40)
!75 = !DILocation(line: 41, column: 26, scope: !70)
!76 = !DILocation(line: 43, column: 9, scope: !70)
!77 = !DILocation(line: 43, column: 13, scope: !70)
!78 = !DILocation(line: 43, column: 20, scope: !70)
!79 = !DILocation(line: 43, column: 23, scope: !80)
!80 = !DILexicalBlockFile(scope: !70, file: !71, discriminator: 1)
!81 = !DILocation(line: 43, column: 30, scope: !80)
!82 = !DILocation(line: 43, column: 20, scope: !80)
!83 = !DILocation(line: 43, column: 2, scope: !84)
!84 = !DILexicalBlockFile(scope: !70, file: !71, discriminator: 2)
!85 = distinct !DISubprogram(name: "pager_spawn", scope: !22, file: !22, line: 79, type: !86, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !30)
!86 = !DISubroutineType(types: !87)
!87 = !{!88, !40}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pager", file: !22, line: 69, size: 1536, align: 64, elements: !90)
!90 = !{!91, !92, !93, !98, !197, !198}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !89, file: !22, line: 70, baseType: !23, size: 8, align: 8)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !89, file: !22, line: 71, baseType: !40, size: 64, align: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !89, file: !22, line: 72, baseType: !94, size: 32, align: 32, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !95, line: 98, baseType: !96)
!95 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !97, line: 133, baseType: !18)
!97 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!98 = !DIDerivedType(tag: DW_TAG_member, name: "sigpipe", scope: !89, file: !22, line: 73, baseType: !99, size: 1216, align: 64, offset: 192)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !100, line: 24, size: 1216, align: 64, elements: !101)
!100 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!101 = !{!102, !182, !192, !193}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !99, file: !100, line: 35, baseType: !103, size: 64, align: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !99, file: !100, line: 28, size: 64, align: 64, elements: !104)
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !103, file: !100, line: 31, baseType: !13, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !103, file: !100, line: 33, baseType: !107, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !18, !110, !19}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !112, line: 133, baseType: !113)
!112 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/siginfo.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !112, line: 62, size: 1024, align: 64, elements: !114)
!114 = !{!115, !116, !117, !118}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !113, file: !112, line: 64, baseType: !18, size: 32, align: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !113, file: !112, line: 65, baseType: !18, size: 32, align: 32, offset: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !113, file: !112, line: 67, baseType: !18, size: 32, align: 32, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !113, file: !112, line: 132, baseType: !119, size: 896, align: 64, offset: 128)
!119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !113, file: !112, line: 69, size: 896, align: 64, elements: !120)
!120 = !{!121, !125, !132, !143, !149, !160, !171, !176}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !119, file: !112, line: 71, baseType: !122, size: 896, align: 32)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 896, align: 32, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 28)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !119, file: !112, line: 78, baseType: !126, size: 64, align: 32)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !119, file: !112, line: 74, size: 64, align: 32, elements: !127)
!127 = !{!128, !129}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !126, file: !112, line: 76, baseType: !96, size: 32, align: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !126, file: !112, line: 77, baseType: !130, size: 32, align: 32, offset: 32)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !97, line: 125, baseType: !131)
!131 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !119, file: !112, line: 86, baseType: !133, size: 128, align: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !119, file: !112, line: 81, size: 128, align: 64, elements: !134)
!134 = !{!135, !136, !137}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !133, file: !112, line: 83, baseType: !18, size: 32, align: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !133, file: !112, line: 84, baseType: !18, size: 32, align: 32, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !133, file: !112, line: 85, baseType: !138, size: 64, align: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !112, line: 36, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !112, line: 32, size: 64, align: 64, elements: !140)
!140 = !{!141, !142}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !139, file: !112, line: 34, baseType: !18, size: 32, align: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !139, file: !112, line: 35, baseType: !19, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !119, file: !112, line: 94, baseType: !144, size: 128, align: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !119, file: !112, line: 89, size: 128, align: 64, elements: !145)
!145 = !{!146, !147, !148}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !144, file: !112, line: 91, baseType: !96, size: 32, align: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !144, file: !112, line: 92, baseType: !130, size: 32, align: 32, offset: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !144, file: !112, line: 93, baseType: !138, size: 64, align: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !119, file: !112, line: 104, baseType: !150, size: 256, align: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !119, file: !112, line: 97, size: 256, align: 64, elements: !151)
!151 = !{!152, !153, !154, !155, !159}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !150, file: !112, line: 99, baseType: !96, size: 32, align: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !150, file: !112, line: 100, baseType: !130, size: 32, align: 32, offset: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !150, file: !112, line: 101, baseType: !18, size: 32, align: 32, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !150, file: !112, line: 102, baseType: !156, size: 64, align: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigchld_clock_t", file: !112, line: 58, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !97, line: 135, baseType: !158)
!158 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !150, file: !112, line: 103, baseType: !156, size: 64, align: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !119, file: !112, line: 116, baseType: !161, size: 256, align: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !119, file: !112, line: 107, size: 256, align: 64, elements: !162)
!162 = !{!163, !164, !166}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !161, file: !112, line: 109, baseType: !19, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !161, file: !112, line: 110, baseType: !165, size: 16, align: 16, offset: 64)
!165 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_bnd", scope: !161, file: !112, line: 115, baseType: !167, size: 128, align: 64, offset: 128)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !161, file: !112, line: 111, size: 128, align: 64, elements: !168)
!168 = !{!169, !170}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !167, file: !112, line: 113, baseType: !19, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !167, file: !112, line: 114, baseType: !19, size: 64, align: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !119, file: !112, line: 123, baseType: !172, size: 128, align: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !119, file: !112, line: 119, size: 128, align: 64, elements: !173)
!173 = !{!174, !175}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !172, file: !112, line: 121, baseType: !158, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !172, file: !112, line: 122, baseType: !18, size: 32, align: 32, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !119, file: !112, line: 131, baseType: !177, size: 128, align: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !119, file: !112, line: 126, size: 128, align: 64, elements: !178)
!178 = !{!179, !180, !181}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !177, file: !112, line: 128, baseType: !19, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !177, file: !112, line: 129, baseType: !18, size: 32, align: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !177, file: !112, line: 130, baseType: !131, size: 32, align: 32, offset: 96)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !99, file: !100, line: 43, baseType: !183, size: 1024, align: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !184, line: 30, baseType: !185)
!184 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !184, line: 27, size: 1024, align: 64, elements: !186)
!186 = !{!187}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !185, file: !184, line: 29, baseType: !188, size: 1024, align: 64)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 1024, align: 64, elements: !190)
!189 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!190 = !{!191}
!191 = !DISubrange(count: 16)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !99, file: !100, line: 46, baseType: !18, size: 32, align: 32, offset: 1088)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !99, file: !100, line: 49, baseType: !194, size: 64, align: 64, offset: 1152)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{null}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "stdout_old", scope: !89, file: !22, line: 74, baseType: !18, size: 32, align: 32, offset: 1408)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !89, file: !22, line: 75, baseType: !199, size: 64, align: 32, offset: 1440)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, align: 32, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 2)
!202 = !DILocalVariable(name: "desc", arg: 1, scope: !85, file: !22, line: 79, type: !40)
!203 = !DILocation(line: 79, column: 25, scope: !85)
!204 = !DILocalVariable(name: "sa", scope: !85, file: !22, line: 81, type: !99)
!205 = !DILocation(line: 81, column: 19, scope: !85)
!206 = !DILocalVariable(name: "pager", scope: !85, file: !22, line: 82, type: !88)
!207 = !DILocation(line: 82, column: 16, scope: !85)
!208 = !DILocalVariable(name: "exec", scope: !85, file: !22, line: 83, type: !40)
!209 = !DILocation(line: 83, column: 14, scope: !85)
!210 = !DILocation(line: 85, column: 10, scope: !85)
!211 = !DILocation(line: 85, column: 8, scope: !85)
!212 = !DILocation(line: 86, column: 16, scope: !85)
!213 = !DILocation(line: 86, column: 26, scope: !85)
!214 = !DILocation(line: 86, column: 29, scope: !215)
!215 = !DILexicalBlockFile(scope: !85, file: !22, discriminator: 1)
!216 = !DILocation(line: 86, column: 26, scope: !215)
!217 = !DILocation(line: 86, column: 2, scope: !218)
!218 = !DILexicalBlockFile(scope: !85, file: !22, discriminator: 2)
!219 = !DILocation(line: 86, column: 9, scope: !218)
!220 = !DILocation(line: 86, column: 14, scope: !218)
!221 = !DILocation(line: 87, column: 16, scope: !85)
!222 = !DILocation(line: 87, column: 2, scope: !85)
!223 = !DILocation(line: 87, column: 9, scope: !85)
!224 = !DILocation(line: 87, column: 14, scope: !85)
!225 = !DILocation(line: 89, column: 9, scope: !85)
!226 = !DILocation(line: 89, column: 7, scope: !85)
!227 = !DILocation(line: 90, column: 13, scope: !228)
!228 = distinct !DILexicalBlock(scope: !85, file: !22, line: 90, column: 6)
!229 = !DILocation(line: 90, column: 6, scope: !228)
!230 = !DILocation(line: 90, column: 26, scope: !228)
!231 = !DILocation(line: 90, column: 6, scope: !85)
!232 = !DILocation(line: 91, column: 3, scope: !228)
!233 = !DILocation(line: 91, column: 10, scope: !228)
!234 = !DILocation(line: 91, column: 15, scope: !228)
!235 = !DILocation(line: 93, column: 7, scope: !236)
!236 = distinct !DILexicalBlock(scope: !85, file: !22, line: 93, column: 6)
!237 = !DILocation(line: 93, column: 6, scope: !85)
!238 = !DILocation(line: 94, column: 3, scope: !236)
!239 = !DILocation(line: 94, column: 10, scope: !236)
!240 = !DILocation(line: 94, column: 15, scope: !236)
!241 = !DILocation(line: 96, column: 7, scope: !242)
!242 = distinct !DILexicalBlock(scope: !85, file: !22, line: 96, column: 6)
!243 = !DILocation(line: 96, column: 14, scope: !242)
!244 = !DILocation(line: 96, column: 6, scope: !85)
!245 = !DILocation(line: 97, column: 10, scope: !242)
!246 = !DILocation(line: 97, column: 3, scope: !242)
!247 = !DILocation(line: 99, column: 9, scope: !85)
!248 = !DILocation(line: 99, column: 16, scope: !85)
!249 = !DILocation(line: 99, column: 2, scope: !85)
!250 = !DILocation(line: 101, column: 2, scope: !85)
!251 = !DILocation(line: 102, column: 18, scope: !85)
!252 = !DILocation(line: 102, column: 2, scope: !85)
!253 = !DILocation(line: 103, column: 4, scope: !85)
!254 = !DILocation(line: 103, column: 24, scope: !85)
!255 = !DILocation(line: 103, column: 15, scope: !85)
!256 = !DILocation(line: 104, column: 5, scope: !85)
!257 = !DILocation(line: 104, column: 14, scope: !85)
!258 = !DILocation(line: 106, column: 26, scope: !85)
!259 = !DILocation(line: 106, column: 33, scope: !85)
!260 = !DILocation(line: 106, column: 2, scope: !85)
!261 = !DILocation(line: 108, column: 15, scope: !85)
!262 = !DILocation(line: 108, column: 2, scope: !85)
!263 = !DILocation(line: 108, column: 9, scope: !85)
!264 = !DILocation(line: 108, column: 13, scope: !85)
!265 = !DILocation(line: 109, column: 6, scope: !266)
!266 = distinct !DILexicalBlock(scope: !85, file: !22, line: 109, column: 6)
!267 = !DILocation(line: 109, column: 13, scope: !266)
!268 = !DILocation(line: 109, column: 17, scope: !266)
!269 = !DILocation(line: 109, column: 6, scope: !85)
!270 = !DILocation(line: 111, column: 3, scope: !271)
!271 = distinct !DILexicalBlock(scope: !266, file: !22, line: 109, column: 23)
!272 = !DILocation(line: 113, column: 10, scope: !271)
!273 = !DILocation(line: 113, column: 17, scope: !271)
!274 = !DILocation(line: 113, column: 3, scope: !271)
!275 = !DILocation(line: 114, column: 9, scope: !271)
!276 = !DILocation(line: 114, column: 16, scope: !271)
!277 = !DILocation(line: 114, column: 3, scope: !271)
!278 = !DILocation(line: 115, column: 9, scope: !271)
!279 = !DILocation(line: 115, column: 16, scope: !271)
!280 = !DILocation(line: 115, column: 3, scope: !271)
!281 = !DILocation(line: 117, column: 17, scope: !271)
!282 = !DILocation(line: 117, column: 23, scope: !271)
!283 = !DILocation(line: 117, column: 3, scope: !271)
!284 = !DILocation(line: 120, column: 22, scope: !85)
!285 = !DILocation(line: 120, column: 2, scope: !85)
!286 = !DILocation(line: 120, column: 9, scope: !85)
!287 = !DILocation(line: 120, column: 20, scope: !85)
!288 = !DILocation(line: 121, column: 9, scope: !85)
!289 = !DILocation(line: 121, column: 16, scope: !85)
!290 = !DILocation(line: 121, column: 2, scope: !85)
!291 = !DILocation(line: 122, column: 8, scope: !85)
!292 = !DILocation(line: 122, column: 15, scope: !85)
!293 = !DILocation(line: 122, column: 2, scope: !85)
!294 = !DILocation(line: 123, column: 8, scope: !85)
!295 = !DILocation(line: 123, column: 15, scope: !85)
!296 = !DILocation(line: 123, column: 2, scope: !85)
!297 = !DILocation(line: 128, column: 9, scope: !85)
!298 = !DILocation(line: 128, column: 2, scope: !85)
!299 = !DILocation(line: 130, column: 9, scope: !85)
!300 = !DILocation(line: 130, column: 2, scope: !85)
!301 = !DILocation(line: 131, column: 1, scope: !85)
!302 = distinct !DISubprogram(name: "pager_reap", scope: !22, file: !22, line: 134, type: !303, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !30)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !88}
!305 = !DILocalVariable(name: "pager", arg: 1, scope: !302, file: !22, line: 134, type: !88)
!306 = !DILocation(line: 134, column: 26, scope: !302)
!307 = !DILocation(line: 136, column: 7, scope: !308)
!308 = distinct !DILexicalBlock(scope: !302, file: !22, line: 136, column: 6)
!309 = !DILocation(line: 136, column: 14, scope: !308)
!310 = !DILocation(line: 136, column: 6, scope: !302)
!311 = !DILocation(line: 137, column: 3, scope: !308)
!312 = !DILocation(line: 139, column: 9, scope: !302)
!313 = !DILocation(line: 139, column: 16, scope: !302)
!314 = !DILocation(line: 139, column: 2, scope: !302)
!315 = !DILocation(line: 140, column: 15, scope: !302)
!316 = !DILocation(line: 140, column: 22, scope: !302)
!317 = !DILocation(line: 140, column: 27, scope: !302)
!318 = !DILocation(line: 140, column: 34, scope: !302)
!319 = !DILocation(line: 140, column: 2, scope: !302)
!320 = !DILocation(line: 142, column: 21, scope: !302)
!321 = !DILocation(line: 142, column: 28, scope: !302)
!322 = !DILocation(line: 142, column: 2, scope: !302)
!323 = !DILocation(line: 144, column: 7, scope: !302)
!324 = !DILocation(line: 144, column: 2, scope: !302)
!325 = !DILocation(line: 145, column: 1, scope: !302)
!326 = !DILocation(line: 145, column: 1, scope: !327)
!327 = !DILexicalBlockFile(scope: !302, file: !22, discriminator: 1)
