; ModuleID = './[inter]lib--dpkg--subproc.o.i'
source_filename = "./[inter]lib--dpkg--subproc.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.anon.8 = type { i32 }
%union.anon.9 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i32 }

@onerr_abort = external global i32, align 4
@signo_ignores = internal global [2 x i32] [i32 3, i32 2], align 4
@sa_save = internal global [2 x %struct.sigaction] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"fork failed\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"unable to ignore signal %s before running %.250s\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"error un-catching signal %s: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"%s (subprocess): %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"wait for %s subprocess failed\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"%s subprocess returned error exit status %d\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"%s subprocess was interrupted\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"%s subprocess was killed by signal (%s)%s\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c", core dumped\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"%s subprocess failed with wait status code %d\00", align 1

; Function Attrs: nounwind uwtable
define void @subproc_signals_ignore(i8*) #0 !dbg !138 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sigaction, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !145, metadata !146), !dbg !147
  call void @llvm.dbg.declare(metadata %struct.sigaction* %3, metadata !148, metadata !146), !dbg !149
  call void @llvm.dbg.declare(metadata i64* %4, metadata !150, metadata !146), !dbg !153
  %5 = load volatile i32, i32* @onerr_abort, align 4, !dbg !154
  %6 = add nsw i32 %5, 1, !dbg !154
  store volatile i32 %6, i32* @onerr_abort, align 4, !dbg !154
  %7 = bitcast %struct.sigaction* %3 to i8*, !dbg !155
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 152, i32 8, i1 false), !dbg !155
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1, !dbg !156
  %9 = call i32 @sigemptyset(%struct.__sigset_t* %8) #7, !dbg !157
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0, !dbg !158
  %11 = bitcast %union.anon* %10 to void (i32)**, !dbg !159
  store void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)** %11, align 8, !dbg !160
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2, !dbg !161
  store i32 0, i32* %12, align 8, !dbg !162
  store i64 0, i64* %4, align 8, !dbg !163
  br label %13, !dbg !165

; <label>:13:                                     ; preds = %23, %1
  %14 = load i64, i64* %4, align 8, !dbg !166
  %15 = icmp ult i64 %14, 2, !dbg !169
  br i1 %15, label %16, label %26, !dbg !170

; <label>:16:                                     ; preds = %13
  %17 = load i64, i64* %4, align 8, !dbg !171
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* @signo_ignores, i64 0, i64 %17, !dbg !172
  %19 = load i32, i32* %18, align 4, !dbg !172
  %20 = load i64, i64* %4, align 8, !dbg !173
  %21 = getelementptr inbounds [2 x %struct.sigaction], [2 x %struct.sigaction]* @sa_save, i64 0, i64 %20, !dbg !174
  %22 = load i8*, i8** %2, align 8, !dbg !175
  call void @subproc_set_signal(i32 %19, %struct.sigaction* %3, %struct.sigaction* %21, i8* %22), !dbg !176
  br label %23, !dbg !176

; <label>:23:                                     ; preds = %16
  %24 = load i64, i64* %4, align 8, !dbg !177
  %25 = add i64 %24, 1, !dbg !177
  store i64 %25, i64* %4, align 8, !dbg !177
  br label %13, !dbg !179, !llvm.loop !180

; <label>:26:                                     ; preds = %13
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @subproc_signals_cleanup, i32 -1, i32 0), !dbg !182
  %27 = load volatile i32, i32* @onerr_abort, align 4, !dbg !183
  %28 = add nsw i32 %27, -1, !dbg !183
  store volatile i32 %28, i32* @onerr_abort, align 4, !dbg !183
  ret void, !dbg !184
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #3

; Function Attrs: nounwind uwtable
define internal void @subproc_set_signal(i32, %struct.sigaction*, %struct.sigaction*, i8*) #0 !dbg !185 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sigaction*, align 8
  %7 = alloca %struct.sigaction*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !189, metadata !146), !dbg !190
  store %struct.sigaction* %1, %struct.sigaction** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.sigaction** %6, metadata !191, metadata !146), !dbg !192
  store %struct.sigaction* %2, %struct.sigaction** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.sigaction** %7, metadata !193, metadata !146), !dbg !194
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !195, metadata !146), !dbg !196
  %9 = load i32, i32* %5, align 4, !dbg !197
  %10 = load %struct.sigaction*, %struct.sigaction** %6, align 8, !dbg !199
  %11 = load %struct.sigaction*, %struct.sigaction** %7, align 8, !dbg !200
  %12 = call i32 @sigaction(i32 %9, %struct.sigaction* %10, %struct.sigaction* %11) #7, !dbg !201
  %13 = icmp ne i32 %12, 0, !dbg !201
  br i1 %13, label %14, label %19, !dbg !202

; <label>:14:                                     ; preds = %4
  %15 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0)) #7, !dbg !203
  %16 = load i32, i32* %5, align 4, !dbg !204
  %17 = call i8* @strsignal(i32 %16) #7, !dbg !205
  %18 = load i8*, i8** %8, align 8, !dbg !206
  call void (i8*, ...) @ohshite(i8* %15, i8* %17, i8* %18) #8, !dbg !207
  unreachable, !dbg !209

; <label>:19:                                     ; preds = %4
  ret void, !dbg !210
}

declare void @push_cleanup(void (i32, i8**)*, i32, i32, ...) #4

; Function Attrs: nounwind uwtable
define void @subproc_signals_cleanup(i32, i8**) #0 !dbg !211 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !215, metadata !146), !dbg !216
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !217, metadata !146), !dbg !218
  call void @llvm.dbg.declare(metadata i64* %5, metadata !219, metadata !146), !dbg !220
  store i64 0, i64* %5, align 8, !dbg !221
  br label %6, !dbg !223

; <label>:6:                                      ; preds = %15, %2
  %7 = load i64, i64* %5, align 8, !dbg !224
  %8 = icmp ult i64 %7, 2, !dbg !227
  br i1 %8, label %9, label %18, !dbg !228

; <label>:9:                                      ; preds = %6
  %10 = load i64, i64* %5, align 8, !dbg !229
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* @signo_ignores, i64 0, i64 %10, !dbg !230
  %12 = load i32, i32* %11, align 4, !dbg !230
  %13 = load i64, i64* %5, align 8, !dbg !231
  %14 = getelementptr inbounds [2 x %struct.sigaction], [2 x %struct.sigaction]* @sa_save, i64 0, i64 %13, !dbg !232
  call void @subproc_reset_signal(i32 %12, %struct.sigaction* %14), !dbg !233
  br label %15, !dbg !233

; <label>:15:                                     ; preds = %9
  %16 = load i64, i64* %5, align 8, !dbg !234
  %17 = add i64 %16, 1, !dbg !234
  store i64 %17, i64* %5, align 8, !dbg !234
  br label %6, !dbg !236, !llvm.loop !237

; <label>:18:                                     ; preds = %6
  ret void, !dbg !239
}

; Function Attrs: nounwind uwtable
define internal void @subproc_reset_signal(i32, %struct.sigaction*) #0 !dbg !240 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sigaction*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !243, metadata !146), !dbg !244
  store %struct.sigaction* %1, %struct.sigaction** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.sigaction** %4, metadata !245, metadata !146), !dbg !246
  %5 = load i32, i32* %3, align 4, !dbg !247
  %6 = load %struct.sigaction*, %struct.sigaction** %4, align 8, !dbg !249
  %7 = call i32 @sigaction(i32 %5, %struct.sigaction* %6, %struct.sigaction* null) #7, !dbg !250
  %8 = icmp ne i32 %7, 0, !dbg !250
  br i1 %8, label %9, label %20, !dbg !251

; <label>:9:                                      ; preds = %2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !252
  %11 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !254
  %12 = load i32, i32* %3, align 4, !dbg !255
  %13 = call i8* @strsignal(i32 %12) #7, !dbg !256
  %14 = call i32* @__errno_location() #1, !dbg !257
  %15 = load i32, i32* %14, align 4, !dbg !259
  %16 = call i8* @strerror(i32 %15) #7, !dbg !260
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* %11, i8* %13, i8* %16), !dbg !262
  %18 = load volatile i32, i32* @onerr_abort, align 4, !dbg !263
  %19 = add nsw i32 %18, 1, !dbg !263
  store volatile i32 %19, i32* @onerr_abort, align 4, !dbg !263
  br label %20, !dbg !264

; <label>:20:                                     ; preds = %9, %2
  ret void, !dbg !265
}

; Function Attrs: nounwind uwtable
define void @subproc_signals_restore() #0 !dbg !266 {
  call void @pop_cleanup(i32 1), !dbg !267
  ret void, !dbg !268
}

declare void @pop_cleanup(i32) #4

; Function Attrs: nounwind uwtable
define i32 @subproc_fork() #0 !dbg !269 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !274, metadata !146), !dbg !275
  %3 = call i32 @fork() #7, !dbg !276
  store i32 %3, i32* %2, align 4, !dbg !277
  %4 = load i32, i32* %2, align 4, !dbg !278
  %5 = icmp eq i32 %4, -1, !dbg !280
  br i1 %5, label %6, label %10, !dbg !281

; <label>:6:                                      ; preds = %0
  %7 = load volatile i32, i32* @onerr_abort, align 4, !dbg !282
  %8 = add nsw i32 %7, 1, !dbg !282
  store volatile i32 %8, i32* @onerr_abort, align 4, !dbg !282
  %9 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)) #7, !dbg !284
  call void (i8*, ...) @ohshite(i8* %9) #8, !dbg !285
  unreachable, !dbg !287

; <label>:10:                                     ; preds = %0
  %11 = load i32, i32* %2, align 4, !dbg !288
  %12 = icmp sgt i32 %11, 0, !dbg !290
  br i1 %12, label %13, label %15, !dbg !291

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %2, align 4, !dbg !292
  store i32 %14, i32* %1, align 4, !dbg !293
  br label %17, !dbg !293

; <label>:15:                                     ; preds = %10
  call void @push_error_context_func(void ()* @catch_fatal_error, void (i8*, i8*)* @print_subproc_error, i8* null), !dbg !294
  %16 = load i32, i32* %2, align 4, !dbg !295
  store i32 %16, i32* %1, align 4, !dbg !296
  br label %17, !dbg !296

; <label>:17:                                     ; preds = %15, %13
  %18 = load i32, i32* %1, align 4, !dbg !297
  ret i32 %18, !dbg !297
}

; Function Attrs: nounwind
declare i32 @fork() #3

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #5

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #3

declare void @push_error_context_func(void ()*, void (i8*, i8*)*, i8*) #4

declare void @catch_fatal_error() #4

; Function Attrs: nounwind uwtable
define internal void @print_subproc_error(i8*, i8*) #0 !dbg !298 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !303, metadata !146), !dbg !304
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !305, metadata !146), !dbg !306
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !307
  %6 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0)) #7, !dbg !308
  %7 = call i8* @dpkg_get_progname(), !dbg !309
  %8 = load i8*, i8** %3, align 8, !dbg !311
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* %6, i8* %7, i8* %8), !dbg !312
  ret void, !dbg !314
}

; Function Attrs: nounwind uwtable
define i32 @subproc_reap(i32, i8*, i32) #0 !dbg !315 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !318, metadata !146), !dbg !319
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !320, metadata !146), !dbg !321
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !322, metadata !146), !dbg !323
  call void @llvm.dbg.declare(metadata i32* %7, metadata !324, metadata !146), !dbg !325
  call void @llvm.dbg.declare(metadata i32* %8, metadata !326, metadata !146), !dbg !327
  %9 = load i32, i32* %4, align 4, !dbg !328
  %10 = load i8*, i8** %5, align 8, !dbg !329
  %11 = call i32 @subproc_wait(i32 %9, i8* %10), !dbg !330
  store i32 %11, i32* %7, align 4, !dbg !331
  %12 = load i32, i32* %6, align 4, !dbg !332
  %13 = and i32 %12, 4, !dbg !334
  %14 = icmp ne i32 %13, 0, !dbg !334
  br i1 %14, label %15, label %17, !dbg !335

; <label>:15:                                     ; preds = %3
  %16 = load i32, i32* %7, align 4, !dbg !336
  store i32 %16, i32* %8, align 4, !dbg !337
  br label %22, !dbg !338

; <label>:17:                                     ; preds = %3
  %18 = load i32, i32* %7, align 4, !dbg !339
  %19 = load i8*, i8** %5, align 8, !dbg !340
  %20 = load i32, i32* %6, align 4, !dbg !341
  %21 = call i32 @subproc_check(i32 %18, i8* %19, i32 %20), !dbg !342
  store i32 %21, i32* %8, align 4, !dbg !343
  br label %22

; <label>:22:                                     ; preds = %17, %15
  %23 = load i32, i32* %8, align 4, !dbg !344
  ret i32 %23, !dbg !345
}

; Function Attrs: nounwind uwtable
define internal i32 @subproc_wait(i32, i8*) #0 !dbg !346 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !349, metadata !146), !dbg !350
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !351, metadata !146), !dbg !352
  call void @llvm.dbg.declare(metadata i32* %5, metadata !353, metadata !146), !dbg !354
  call void @llvm.dbg.declare(metadata i32* %6, metadata !355, metadata !146), !dbg !356
  br label %7, !dbg !357

; <label>:7:                                      ; preds = %17, %2
  %8 = load i32, i32* %3, align 4, !dbg !358
  %9 = call i32 @waitpid(i32 %8, i32* %6, i32 0), !dbg !360
  store i32 %9, i32* %5, align 4, !dbg !361
  %10 = icmp eq i32 %9, -1, !dbg !362
  br i1 %10, label %11, label %15, !dbg !363

; <label>:11:                                     ; preds = %7
  %12 = call i32* @__errno_location() #1, !dbg !364
  %13 = load i32, i32* %12, align 4, !dbg !366
  %14 = icmp eq i32 %13, 4, !dbg !367
  br label %15

; <label>:15:                                     ; preds = %11, %7
  %16 = phi i1 [ false, %7 ], [ %14, %11 ]
  br i1 %16, label %17, label %18, !dbg !368

; <label>:17:                                     ; preds = %15
  br label %7, !dbg !370, !llvm.loop !372

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %5, align 4, !dbg !373
  %20 = load i32, i32* %3, align 4, !dbg !375
  %21 = icmp ne i32 %19, %20, !dbg !376
  br i1 %21, label %22, label %27, !dbg !377

; <label>:22:                                     ; preds = %18
  %23 = load volatile i32, i32* @onerr_abort, align 4, !dbg !378
  %24 = add nsw i32 %23, 1, !dbg !378
  store volatile i32 %24, i32* @onerr_abort, align 4, !dbg !378
  %25 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0)) #7, !dbg !380
  %26 = load i8*, i8** %4, align 8, !dbg !381
  call void (i8*, ...) @ohshite(i8* %25, i8* %26) #8, !dbg !382
  unreachable, !dbg !384

; <label>:27:                                     ; preds = %18
  %28 = load i32, i32* %6, align 4, !dbg !385
  ret i32 %28, !dbg !386
}

; Function Attrs: nounwind uwtable
define internal i32 @subproc_check(i32, i8*, i32) #0 !dbg !387 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (i8*, ...)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.anon.8, align 4
  %11 = alloca %union.anon.9, align 4
  %12 = alloca %union.anon.10, align 4
  %13 = alloca %union.anon.11, align 4
  %14 = alloca %union.anon.12, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !390, metadata !146), !dbg !391
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !392, metadata !146), !dbg !393
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !394, metadata !146), !dbg !395
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %8, metadata !396, metadata !146), !dbg !400
  call void @llvm.dbg.declare(metadata i32* %9, metadata !401, metadata !146), !dbg !402
  %15 = load i32, i32* %7, align 4, !dbg !403
  %16 = and i32 %15, 1, !dbg !405
  %17 = icmp ne i32 %16, 0, !dbg !405
  br i1 %17, label %18, label %19, !dbg !406

; <label>:18:                                     ; preds = %3
  store void (i8*, ...)* @warning, void (i8*, ...)** %8, align 8, !dbg !407
  br label %20, !dbg !408

; <label>:19:                                     ; preds = %3
  store void (i8*, ...)* @ohshit, void (i8*, ...)** %8, align 8, !dbg !409
  br label %20

; <label>:20:                                     ; preds = %19, %18
  %21 = bitcast %union.anon.8* %10 to i32*, !dbg !410
  %22 = load i32, i32* %5, align 4, !dbg !412
  store i32 %22, i32* %21, align 4, !dbg !410
  %23 = bitcast %union.anon.8* %10 to i32*, !dbg !413
  %24 = load i32, i32* %23, align 4, !dbg !413
  %25 = and i32 %24, 127, !dbg !414
  %26 = icmp eq i32 %25, 0, !dbg !410
  br i1 %26, label %27, label %48, !dbg !415

; <label>:27:                                     ; preds = %20
  %28 = bitcast %union.anon.9* %11 to i32*, !dbg !416
  %29 = load i32, i32* %5, align 4, !dbg !418
  store i32 %29, i32* %28, align 4, !dbg !416
  %30 = bitcast %union.anon.9* %11 to i32*, !dbg !419
  %31 = load i32, i32* %30, align 4, !dbg !419
  %32 = and i32 %31, 65280, !dbg !420
  %33 = ashr i32 %32, 8, !dbg !421
  store i32 %33, i32* %9, align 4, !dbg !422
  %34 = load i32, i32* %9, align 4, !dbg !423
  %35 = icmp ne i32 %34, 0, !dbg !423
  br i1 %35, label %37, label %36, !dbg !425

; <label>:36:                                     ; preds = %27
  store i32 0, i32* %4, align 4, !dbg !426
  br label %119, !dbg !426

; <label>:37:                                     ; preds = %27
  %38 = load i32, i32* %7, align 4, !dbg !427
  %39 = and i32 %38, 8, !dbg !429
  %40 = icmp ne i32 %39, 0, !dbg !429
  br i1 %40, label %41, label %43, !dbg !430

; <label>:41:                                     ; preds = %37
  %42 = load i32, i32* %9, align 4, !dbg !431
  store i32 %42, i32* %4, align 4, !dbg !432
  br label %119, !dbg !432

; <label>:43:                                     ; preds = %37
  %44 = load void (i8*, ...)*, void (i8*, ...)** %8, align 8, !dbg !433
  %45 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0)) #7, !dbg !434
  %46 = load i8*, i8** %6, align 8, !dbg !435
  %47 = load i32, i32* %9, align 4, !dbg !436
  call void (i8*, ...) %44(i8* %45, i8* %46, i32 %47), !dbg !437
  br label %118, !dbg !439

; <label>:48:                                     ; preds = %20
  %49 = bitcast %union.anon.10* %12 to i32*, !dbg !440
  %50 = load i32, i32* %5, align 4, !dbg !443
  store i32 %50, i32* %49, align 4, !dbg !440
  %51 = bitcast %union.anon.10* %12 to i32*, !dbg !444
  %52 = load i32, i32* %51, align 4, !dbg !444
  %53 = and i32 %52, 127, !dbg !445
  %54 = add nsw i32 %53, 1, !dbg !440
  %55 = trunc i32 %54 to i8, !dbg !446
  %56 = sext i8 %55 to i32, !dbg !446
  %57 = ashr i32 %56, 1, !dbg !447
  %58 = icmp sgt i32 %57, 0, !dbg !448
  br i1 %58, label %59, label %107, !dbg !443

; <label>:59:                                     ; preds = %48
  %60 = bitcast %union.anon.11* %13 to i32*, !dbg !449
  %61 = load i32, i32* %5, align 4, !dbg !451
  store i32 %61, i32* %60, align 4, !dbg !449
  %62 = bitcast %union.anon.11* %13 to i32*, !dbg !452
  %63 = load i32, i32* %62, align 4, !dbg !452
  %64 = and i32 %63, 127, !dbg !453
  store i32 %64, i32* %9, align 4, !dbg !454
  %65 = load i32, i32* %9, align 4, !dbg !455
  %66 = icmp ne i32 %65, 0, !dbg !455
  br i1 %66, label %68, label %67, !dbg !457

; <label>:67:                                     ; preds = %59
  store i32 0, i32* %4, align 4, !dbg !458
  br label %119, !dbg !458

; <label>:68:                                     ; preds = %59
  %69 = load i32, i32* %7, align 4, !dbg !459
  %70 = and i32 %69, 2, !dbg !461
  %71 = icmp ne i32 %70, 0, !dbg !461
  br i1 %71, label %72, label %76, !dbg !462

; <label>:72:                                     ; preds = %68
  %73 = load i32, i32* %9, align 4, !dbg !463
  %74 = icmp eq i32 %73, 13, !dbg !465
  br i1 %74, label %75, label %76, !dbg !466

; <label>:75:                                     ; preds = %72
  store i32 0, i32* %4, align 4, !dbg !467
  br label %119, !dbg !467

; <label>:76:                                     ; preds = %72, %68
  %77 = load i32, i32* %7, align 4, !dbg !468
  %78 = and i32 %77, 8, !dbg !470
  %79 = icmp ne i32 %78, 0, !dbg !470
  br i1 %79, label %80, label %82, !dbg !471

; <label>:80:                                     ; preds = %76
  %81 = load i32, i32* %9, align 4, !dbg !472
  store i32 %81, i32* %4, align 4, !dbg !473
  br label %119, !dbg !473

; <label>:82:                                     ; preds = %76
  %83 = load i32, i32* %9, align 4, !dbg !474
  %84 = icmp eq i32 %83, 2, !dbg !476
  br i1 %84, label %85, label %89, !dbg !477

; <label>:85:                                     ; preds = %82
  %86 = load void (i8*, ...)*, void (i8*, ...)** %8, align 8, !dbg !478
  %87 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !479
  %88 = load i8*, i8** %6, align 8, !dbg !480
  call void (i8*, ...) %86(i8* %87, i8* %88), !dbg !481
  br label %106, !dbg !478

; <label>:89:                                     ; preds = %82
  %90 = load void (i8*, ...)*, void (i8*, ...)** %8, align 8, !dbg !483
  %91 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0)) #7, !dbg !484
  %92 = load i8*, i8** %6, align 8, !dbg !485
  %93 = load i32, i32* %9, align 4, !dbg !486
  %94 = call i8* @strsignal(i32 %93) #7, !dbg !487
  %95 = bitcast %union.anon.12* %14 to i32*, !dbg !488
  %96 = load i32, i32* %5, align 4, !dbg !489
  store i32 %96, i32* %95, align 4, !dbg !488
  %97 = bitcast %union.anon.12* %14 to i32*, !dbg !490
  %98 = load i32, i32* %97, align 4, !dbg !490
  %99 = and i32 %98, 128, !dbg !491
  %100 = icmp ne i32 %99, 0, !dbg !491
  br i1 %100, label %101, label %103, !dbg !489

; <label>:101:                                    ; preds = %89
  %102 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0)) #7, !dbg !492
  br label %104, !dbg !493

; <label>:103:                                    ; preds = %89
  br label %104, !dbg !494

; <label>:104:                                    ; preds = %103, %101
  %105 = phi i8* [ %102, %101 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), %103 ], !dbg !496
  call void (i8*, ...) %90(i8* %91, i8* %92, i8* %94, i8* %105), !dbg !498
  br label %106

; <label>:106:                                    ; preds = %104, %85
  br label %117, !dbg !499

; <label>:107:                                    ; preds = %48
  %108 = load i32, i32* %7, align 4, !dbg !500
  %109 = and i32 %108, 8, !dbg !503
  %110 = icmp ne i32 %109, 0, !dbg !503
  br i1 %110, label %111, label %112, !dbg !504

; <label>:111:                                    ; preds = %107
  store i32 -1, i32* %4, align 4, !dbg !505
  br label %119, !dbg !505

; <label>:112:                                    ; preds = %107
  %113 = load void (i8*, ...)*, void (i8*, ...)** %8, align 8, !dbg !506
  %114 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i32 0, i32 0)) #7, !dbg !507
  %115 = load i8*, i8** %6, align 8, !dbg !508
  %116 = load i32, i32* %5, align 4, !dbg !509
  call void (i8*, ...) %113(i8* %114, i8* %115, i32 %116), !dbg !510
  br label %117

; <label>:117:                                    ; preds = %112, %106
  br label %118

; <label>:118:                                    ; preds = %117, %43
  store i32 -1, i32* %4, align 4, !dbg !512
  br label %119, !dbg !512

; <label>:119:                                    ; preds = %118, %111, %80, %75, %67, %41, %36
  %120 = load i32, i32* %4, align 4, !dbg !513
  ret i32 %120, !dbg !513
}

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #3

; Function Attrs: nounwind
declare i8* @strsignal(i32) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i8* @dpkg_get_progname() #4

declare i32 @waitpid(i32, i32*, i32) #4

declare void @warning(i8*, ...) #4

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!135, !136}
!llvm.ident = !{!137}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !18, globals: !26)
!1 = !DIFile(filename: "[inter]lib--dpkg--subproc.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 41, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/ehandle.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "ehflag_normaltidy", value: 1)
!7 = !DIEnumerator(name: "ehflag_bombout", value: 2)
!8 = !DIEnumerator(name: "ehflag_recursiveerror", value: 4)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "subproc_flags", file: !10, line: 36, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "../../lib/dpkg/subproc.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!11 = !{!12, !13, !14, !15, !16, !17}
!12 = !DIEnumerator(name: "SUBPROC_NORMAL", value: 0)
!13 = !DIEnumerator(name: "SUBPROC_WARN", value: 1)
!14 = !DIEnumerator(name: "SUBPROC_NOPIPE", value: 2)
!15 = !DIEnumerator(name: "SUBPROC_NOCHECK", value: 4)
!16 = !DIEnumerator(name: "SUBPROC_RETERROR", value: 8)
!17 = !DIEnumerator(name: "SUBPROC_RETSIGNO", value: 8)
!18 = !{!19, !25}
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !20, line: 85, baseType: !21)
!20 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24}
!24 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!25 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!26 = !{!27, !133}
!27 = distinct !DIGlobalVariable(name: "sa_save", scope: !0, file: !28, line: 40, type: !29, isLocal: true, isDefinition: true, variable: [2 x %struct.sigaction]* @sa_save)
!28 = !DIFile(filename: "subproc.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2432, align: 64, elements: !131)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !31, line: 24, size: 1216, align: 64, elements: !32)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!32 = !{!33, !116, !126, !127}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !30, file: !31, line: 35, baseType: !34, size: 64, align: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !30, file: !31, line: 28, size: 64, align: 64, elements: !35)
!35 = !{!36, !37}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !34, file: !31, line: 31, baseType: !19, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !34, file: !31, line: 33, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !24, !41, !76}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !43, line: 133, baseType: !44)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/siginfo.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 62, size: 1024, align: 64, elements: !45)
!45 = !{!46, !47, !48, !49}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !44, file: !43, line: 64, baseType: !24, size: 32, align: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !44, file: !43, line: 65, baseType: !24, size: 32, align: 32, offset: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !44, file: !43, line: 67, baseType: !24, size: 32, align: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !44, file: !43, line: 132, baseType: !50, size: 896, align: 64, offset: 128)
!50 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !44, file: !43, line: 69, size: 896, align: 64, elements: !51)
!51 = !{!52, !56, !65, !77, !83, !94, !105, !110}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !50, file: !43, line: 71, baseType: !53, size: 896, align: 32)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 896, align: 32, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 28)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !50, file: !43, line: 78, baseType: !57, size: 64, align: 32)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !43, line: 74, size: 64, align: 32, elements: !58)
!58 = !{!59, !62}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !57, file: !43, line: 76, baseType: !60, size: 32, align: 32)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !61, line: 133, baseType: !24)
!61 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!62 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !57, file: !43, line: 77, baseType: !63, size: 32, align: 32, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !61, line: 125, baseType: !64)
!64 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !50, file: !43, line: 86, baseType: !66, size: 128, align: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !43, line: 81, size: 128, align: 64, elements: !67)
!67 = !{!68, !69, !70}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !66, file: !43, line: 83, baseType: !24, size: 32, align: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !66, file: !43, line: 84, baseType: !24, size: 32, align: 32, offset: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !66, file: !43, line: 85, baseType: !71, size: 64, align: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !43, line: 36, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !43, line: 32, size: 64, align: 64, elements: !73)
!73 = !{!74, !75}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !72, file: !43, line: 34, baseType: !24, size: 32, align: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !72, file: !43, line: 35, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !50, file: !43, line: 94, baseType: !78, size: 128, align: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !43, line: 89, size: 128, align: 64, elements: !79)
!79 = !{!80, !81, !82}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !78, file: !43, line: 91, baseType: !60, size: 32, align: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !78, file: !43, line: 92, baseType: !63, size: 32, align: 32, offset: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !78, file: !43, line: 93, baseType: !71, size: 64, align: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !50, file: !43, line: 104, baseType: !84, size: 256, align: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !43, line: 97, size: 256, align: 64, elements: !85)
!85 = !{!86, !87, !88, !89, !93}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !84, file: !43, line: 99, baseType: !60, size: 32, align: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !84, file: !43, line: 100, baseType: !63, size: 32, align: 32, offset: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !84, file: !43, line: 101, baseType: !24, size: 32, align: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !84, file: !43, line: 102, baseType: !90, size: 64, align: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigchld_clock_t", file: !43, line: 58, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !61, line: 135, baseType: !92)
!92 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !84, file: !43, line: 103, baseType: !90, size: 64, align: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !50, file: !43, line: 116, baseType: !95, size: 256, align: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !43, line: 107, size: 256, align: 64, elements: !96)
!96 = !{!97, !98, !100}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !95, file: !43, line: 109, baseType: !76, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !95, file: !43, line: 110, baseType: !99, size: 16, align: 16, offset: 64)
!99 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_bnd", scope: !95, file: !43, line: 115, baseType: !101, size: 128, align: 64, offset: 128)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !95, file: !43, line: 111, size: 128, align: 64, elements: !102)
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !101, file: !43, line: 113, baseType: !76, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !101, file: !43, line: 114, baseType: !76, size: 64, align: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !50, file: !43, line: 123, baseType: !106, size: 128, align: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !43, line: 119, size: 128, align: 64, elements: !107)
!107 = !{!108, !109}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !106, file: !43, line: 121, baseType: !92, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !106, file: !43, line: 122, baseType: !24, size: 32, align: 32, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !50, file: !43, line: 131, baseType: !111, size: 128, align: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !43, line: 126, size: 128, align: 64, elements: !112)
!112 = !{!113, !114, !115}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !111, file: !43, line: 128, baseType: !76, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !111, file: !43, line: 129, baseType: !24, size: 32, align: 32, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !111, file: !43, line: 130, baseType: !64, size: 32, align: 32, offset: 96)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !30, file: !31, line: 43, baseType: !117, size: 1024, align: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !118, line: 30, baseType: !119)
!118 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !118, line: 27, size: 1024, align: 64, elements: !120)
!120 = !{!121}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !119, file: !118, line: 29, baseType: !122, size: 1024, align: 64)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 1024, align: 64, elements: !124)
!123 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!124 = !{!125}
!125 = !DISubrange(count: 16)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !30, file: !31, line: 46, baseType: !24, size: 32, align: 32, offset: 1088)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !30, file: !31, line: 49, baseType: !128, size: 64, align: 64, offset: 1152)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{null}
!131 = !{!132}
!132 = !DISubrange(count: 2)
!133 = distinct !DIGlobalVariable(name: "signo_ignores", scope: !0, file: !28, line: 39, type: !134, isLocal: true, isDefinition: true, variable: [2 x i32]* @signo_ignores)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 64, align: 32, elements: !131)
!135 = !{i32 2, !"Dwarf Version", i32 4}
!136 = !{i32 2, !"Debug Info Version", i32 3}
!137 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!138 = distinct !DISubprogram(name: "subproc_signals_ignore", scope: !28, file: !28, line: 62, type: !139, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !144)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !141}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!143 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!144 = !{}
!145 = !DILocalVariable(name: "name", arg: 1, scope: !138, file: !28, line: 62, type: !141)
!146 = !DIExpression()
!147 = !DILocation(line: 62, column: 36, scope: !138)
!148 = !DILocalVariable(name: "sa", scope: !138, file: !28, line: 64, type: !30)
!149 = !DILocation(line: 64, column: 19, scope: !138)
!150 = !DILocalVariable(name: "i", scope: !138, file: !28, line: 65, type: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !152, line: 216, baseType: !123)
!152 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!153 = !DILocation(line: 65, column: 9, scope: !138)
!154 = !DILocation(line: 67, column: 13, scope: !138)
!155 = !DILocation(line: 68, column: 2, scope: !138)
!156 = !DILocation(line: 69, column: 18, scope: !138)
!157 = !DILocation(line: 69, column: 2, scope: !138)
!158 = !DILocation(line: 70, column: 4, scope: !138)
!159 = !DILocation(line: 70, column: 24, scope: !138)
!160 = !DILocation(line: 70, column: 15, scope: !138)
!161 = !DILocation(line: 71, column: 5, scope: !138)
!162 = !DILocation(line: 71, column: 14, scope: !138)
!163 = !DILocation(line: 73, column: 9, scope: !164)
!164 = distinct !DILexicalBlock(scope: !138, file: !28, line: 73, column: 2)
!165 = !DILocation(line: 73, column: 7, scope: !164)
!166 = !DILocation(line: 73, column: 14, scope: !167)
!167 = !DILexicalBlockFile(scope: !168, file: !28, discriminator: 1)
!168 = distinct !DILexicalBlock(scope: !164, file: !28, line: 73, column: 2)
!169 = !DILocation(line: 73, column: 16, scope: !167)
!170 = !DILocation(line: 73, column: 2, scope: !167)
!171 = !DILocation(line: 74, column: 36, scope: !168)
!172 = !DILocation(line: 74, column: 22, scope: !168)
!173 = !DILocation(line: 74, column: 54, scope: !168)
!174 = !DILocation(line: 74, column: 46, scope: !168)
!175 = !DILocation(line: 74, column: 58, scope: !168)
!176 = !DILocation(line: 74, column: 3, scope: !168)
!177 = !DILocation(line: 73, column: 73, scope: !178)
!178 = !DILexicalBlockFile(scope: !168, file: !28, discriminator: 2)
!179 = !DILocation(line: 73, column: 2, scope: !178)
!180 = distinct !{!180, !181}
!181 = !DILocation(line: 73, column: 2, scope: !138)
!182 = !DILocation(line: 76, column: 2, scope: !138)
!183 = !DILocation(line: 77, column: 13, scope: !138)
!184 = !DILocation(line: 78, column: 1, scope: !138)
!185 = distinct !DISubprogram(name: "subproc_set_signal", scope: !28, file: !28, line: 53, type: !186, isLocal: true, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !144)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !24, !188, !188, !141}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!189 = !DILocalVariable(name: "sig", arg: 1, scope: !185, file: !28, line: 53, type: !24)
!190 = !DILocation(line: 53, column: 24, scope: !185)
!191 = !DILocalVariable(name: "sa", arg: 2, scope: !185, file: !28, line: 53, type: !188)
!192 = !DILocation(line: 53, column: 47, scope: !185)
!193 = !DILocalVariable(name: "sa_old", arg: 3, scope: !185, file: !28, line: 53, type: !188)
!194 = !DILocation(line: 53, column: 69, scope: !185)
!195 = !DILocalVariable(name: "name", arg: 4, scope: !185, file: !28, line: 54, type: !141)
!196 = !DILocation(line: 54, column: 32, scope: !185)
!197 = !DILocation(line: 56, column: 16, scope: !198)
!198 = distinct !DILexicalBlock(scope: !185, file: !28, line: 56, column: 6)
!199 = !DILocation(line: 56, column: 21, scope: !198)
!200 = !DILocation(line: 56, column: 25, scope: !198)
!201 = !DILocation(line: 56, column: 6, scope: !198)
!202 = !DILocation(line: 56, column: 6, scope: !185)
!203 = !DILocation(line: 57, column: 10, scope: !198)
!204 = !DILocation(line: 58, column: 21, scope: !198)
!205 = !DILocation(line: 58, column: 11, scope: !198)
!206 = !DILocation(line: 58, column: 27, scope: !198)
!207 = !DILocation(line: 57, column: 3, scope: !208)
!208 = !DILexicalBlockFile(scope: !198, file: !28, discriminator: 1)
!209 = !DILocation(line: 57, column: 3, scope: !198)
!210 = !DILocation(line: 59, column: 1, scope: !185)
!211 = distinct !DISubprogram(name: "subproc_signals_cleanup", scope: !28, file: !28, line: 81, type: !212, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !144)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !24, !214}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!215 = !DILocalVariable(name: "argc", arg: 1, scope: !211, file: !28, line: 81, type: !24)
!216 = !DILocation(line: 81, column: 29, scope: !211)
!217 = !DILocalVariable(name: "argv", arg: 2, scope: !211, file: !28, line: 81, type: !214)
!218 = !DILocation(line: 81, column: 42, scope: !211)
!219 = !DILocalVariable(name: "i", scope: !211, file: !28, line: 83, type: !151)
!220 = !DILocation(line: 83, column: 9, scope: !211)
!221 = !DILocation(line: 85, column: 9, scope: !222)
!222 = distinct !DILexicalBlock(scope: !211, file: !28, line: 85, column: 2)
!223 = !DILocation(line: 85, column: 7, scope: !222)
!224 = !DILocation(line: 85, column: 14, scope: !225)
!225 = !DILexicalBlockFile(scope: !226, file: !28, discriminator: 1)
!226 = distinct !DILexicalBlock(scope: !222, file: !28, line: 85, column: 2)
!227 = !DILocation(line: 85, column: 16, scope: !225)
!228 = !DILocation(line: 85, column: 2, scope: !225)
!229 = !DILocation(line: 86, column: 38, scope: !226)
!230 = !DILocation(line: 86, column: 24, scope: !226)
!231 = !DILocation(line: 86, column: 51, scope: !226)
!232 = !DILocation(line: 86, column: 43, scope: !226)
!233 = !DILocation(line: 86, column: 3, scope: !226)
!234 = !DILocation(line: 85, column: 73, scope: !235)
!235 = !DILexicalBlockFile(scope: !226, file: !28, discriminator: 2)
!236 = !DILocation(line: 85, column: 2, scope: !235)
!237 = distinct !{!237, !238}
!238 = !DILocation(line: 85, column: 2, scope: !211)
!239 = !DILocation(line: 87, column: 1, scope: !211)
!240 = distinct !DISubprogram(name: "subproc_reset_signal", scope: !28, file: !28, line: 43, type: !241, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !144)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !24, !188}
!243 = !DILocalVariable(name: "sig", arg: 1, scope: !240, file: !28, line: 43, type: !24)
!244 = !DILocation(line: 43, column: 26, scope: !240)
!245 = !DILocalVariable(name: "sa_old", arg: 2, scope: !240, file: !28, line: 43, type: !188)
!246 = !DILocation(line: 43, column: 49, scope: !240)
!247 = !DILocation(line: 45, column: 16, scope: !248)
!248 = distinct !DILexicalBlock(scope: !240, file: !28, line: 45, column: 6)
!249 = !DILocation(line: 45, column: 21, scope: !248)
!250 = !DILocation(line: 45, column: 6, scope: !248)
!251 = !DILocation(line: 45, column: 6, scope: !240)
!252 = !DILocation(line: 46, column: 10, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !28, line: 45, column: 35)
!254 = !DILocation(line: 46, column: 18, scope: !253)
!255 = !DILocation(line: 47, column: 21, scope: !253)
!256 = !DILocation(line: 47, column: 11, scope: !253)
!257 = !DILocation(line: 47, column: 37, scope: !258)
!258 = !DILexicalBlockFile(scope: !253, file: !28, discriminator: 1)
!259 = !DILocation(line: 47, column: 36, scope: !253)
!260 = !DILocation(line: 47, column: 27, scope: !261)
!261 = !DILexicalBlockFile(scope: !253, file: !28, discriminator: 2)
!262 = !DILocation(line: 46, column: 3, scope: !258)
!263 = !DILocation(line: 48, column: 14, scope: !253)
!264 = !DILocation(line: 49, column: 2, scope: !253)
!265 = !DILocation(line: 50, column: 1, scope: !240)
!266 = distinct !DISubprogram(name: "subproc_signals_restore", scope: !28, file: !28, line: 90, type: !129, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !144)
!267 = !DILocation(line: 92, column: 2, scope: !266)
!268 = !DILocation(line: 93, column: 1, scope: !266)
!269 = distinct !DISubprogram(name: "subproc_fork", scope: !28, file: !28, line: 102, type: !270, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !144)
!270 = !DISubroutineType(types: !271)
!271 = !{!272}
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !273, line: 98, baseType: !60)
!273 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!274 = !DILocalVariable(name: "pid", scope: !269, file: !28, line: 104, type: !272)
!275 = !DILocation(line: 104, column: 8, scope: !269)
!276 = !DILocation(line: 106, column: 8, scope: !269)
!277 = !DILocation(line: 106, column: 6, scope: !269)
!278 = !DILocation(line: 107, column: 6, scope: !279)
!279 = distinct !DILexicalBlock(scope: !269, file: !28, line: 107, column: 6)
!280 = !DILocation(line: 107, column: 10, scope: !279)
!281 = !DILocation(line: 107, column: 6, scope: !269)
!282 = !DILocation(line: 108, column: 14, scope: !283)
!283 = distinct !DILexicalBlock(scope: !279, file: !28, line: 107, column: 17)
!284 = !DILocation(line: 109, column: 10, scope: !283)
!285 = !DILocation(line: 109, column: 3, scope: !286)
!286 = !DILexicalBlockFile(scope: !283, file: !28, discriminator: 1)
!287 = !DILocation(line: 109, column: 3, scope: !283)
!288 = !DILocation(line: 111, column: 6, scope: !289)
!289 = distinct !DILexicalBlock(scope: !269, file: !28, line: 111, column: 6)
!290 = !DILocation(line: 111, column: 10, scope: !289)
!291 = !DILocation(line: 111, column: 6, scope: !269)
!292 = !DILocation(line: 112, column: 10, scope: !289)
!293 = !DILocation(line: 112, column: 3, scope: !289)
!294 = !DILocation(line: 116, column: 2, scope: !269)
!295 = !DILocation(line: 118, column: 9, scope: !269)
!296 = !DILocation(line: 118, column: 2, scope: !269)
!297 = !DILocation(line: 119, column: 1, scope: !269)
!298 = distinct !DISubprogram(name: "print_subproc_error", scope: !28, file: !28, line: 96, type: !299, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !144)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !141, !301}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!303 = !DILocalVariable(name: "emsg", arg: 1, scope: !298, file: !28, line: 96, type: !141)
!304 = !DILocation(line: 96, column: 33, scope: !298)
!305 = !DILocalVariable(name: "data", arg: 2, scope: !298, file: !28, line: 96, type: !301)
!306 = !DILocation(line: 96, column: 51, scope: !298)
!307 = !DILocation(line: 98, column: 9, scope: !298)
!308 = !DILocation(line: 98, column: 17, scope: !298)
!309 = !DILocation(line: 98, column: 45, scope: !310)
!310 = !DILexicalBlockFile(scope: !298, file: !28, discriminator: 1)
!311 = !DILocation(line: 98, column: 66, scope: !298)
!312 = !DILocation(line: 98, column: 2, scope: !313)
!313 = !DILexicalBlockFile(scope: !298, file: !28, discriminator: 2)
!314 = !DILocation(line: 99, column: 1, scope: !298)
!315 = distinct !DISubprogram(name: "subproc_reap", scope: !28, file: !28, line: 183, type: !316, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !144)
!316 = !DISubroutineType(types: !317)
!317 = !{!24, !272, !141, !9}
!318 = !DILocalVariable(name: "pid", arg: 1, scope: !315, file: !28, line: 183, type: !272)
!319 = !DILocation(line: 183, column: 20, scope: !315)
!320 = !DILocalVariable(name: "desc", arg: 2, scope: !315, file: !28, line: 183, type: !141)
!321 = !DILocation(line: 183, column: 37, scope: !315)
!322 = !DILocalVariable(name: "flags", arg: 3, scope: !315, file: !28, line: 183, type: !9)
!323 = !DILocation(line: 183, column: 62, scope: !315)
!324 = !DILocalVariable(name: "status", scope: !315, file: !28, line: 185, type: !24)
!325 = !DILocation(line: 185, column: 6, scope: !315)
!326 = !DILocalVariable(name: "rc", scope: !315, file: !28, line: 185, type: !24)
!327 = !DILocation(line: 185, column: 14, scope: !315)
!328 = !DILocation(line: 187, column: 24, scope: !315)
!329 = !DILocation(line: 187, column: 29, scope: !315)
!330 = !DILocation(line: 187, column: 11, scope: !315)
!331 = !DILocation(line: 187, column: 9, scope: !315)
!332 = !DILocation(line: 189, column: 6, scope: !333)
!333 = distinct !DILexicalBlock(scope: !315, file: !28, line: 189, column: 6)
!334 = !DILocation(line: 189, column: 12, scope: !333)
!335 = !DILocation(line: 189, column: 6, scope: !315)
!336 = !DILocation(line: 190, column: 8, scope: !333)
!337 = !DILocation(line: 190, column: 6, scope: !333)
!338 = !DILocation(line: 190, column: 3, scope: !333)
!339 = !DILocation(line: 192, column: 22, scope: !333)
!340 = !DILocation(line: 192, column: 30, scope: !333)
!341 = !DILocation(line: 192, column: 36, scope: !333)
!342 = !DILocation(line: 192, column: 8, scope: !333)
!343 = !DILocation(line: 192, column: 6, scope: !333)
!344 = !DILocation(line: 194, column: 9, scope: !315)
!345 = !DILocation(line: 194, column: 2, scope: !315)
!346 = distinct !DISubprogram(name: "subproc_wait", scope: !28, file: !28, line: 167, type: !347, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !144)
!347 = !DISubroutineType(types: !348)
!348 = !{!24, !272, !141}
!349 = !DILocalVariable(name: "pid", arg: 1, scope: !346, file: !28, line: 167, type: !272)
!350 = !DILocation(line: 167, column: 20, scope: !346)
!351 = !DILocalVariable(name: "desc", arg: 2, scope: !346, file: !28, line: 167, type: !141)
!352 = !DILocation(line: 167, column: 37, scope: !346)
!353 = !DILocalVariable(name: "dead_pid", scope: !346, file: !28, line: 169, type: !272)
!354 = !DILocation(line: 169, column: 8, scope: !346)
!355 = !DILocalVariable(name: "status", scope: !346, file: !28, line: 170, type: !24)
!356 = !DILocation(line: 170, column: 6, scope: !346)
!357 = !DILocation(line: 172, column: 2, scope: !346)
!358 = !DILocation(line: 172, column: 29, scope: !359)
!359 = !DILexicalBlockFile(scope: !346, file: !28, discriminator: 1)
!360 = !DILocation(line: 172, column: 21, scope: !359)
!361 = !DILocation(line: 172, column: 19, scope: !359)
!362 = !DILocation(line: 172, column: 47, scope: !359)
!363 = !DILocation(line: 172, column: 53, scope: !359)
!364 = !DILocation(line: 172, column: 57, scope: !365)
!365 = !DILexicalBlockFile(scope: !346, file: !28, discriminator: 2)
!366 = !DILocation(line: 172, column: 56, scope: !365)
!367 = !DILocation(line: 172, column: 61, scope: !365)
!368 = !DILocation(line: 172, column: 2, scope: !369)
!369 = !DILexicalBlockFile(scope: !346, file: !28, discriminator: 3)
!370 = !DILocation(line: 172, column: 2, scope: !371)
!371 = !DILexicalBlockFile(scope: !346, file: !28, discriminator: 4)
!372 = distinct !{!372, !357}
!373 = !DILocation(line: 174, column: 6, scope: !374)
!374 = distinct !DILexicalBlock(scope: !346, file: !28, line: 174, column: 6)
!375 = !DILocation(line: 174, column: 18, scope: !374)
!376 = !DILocation(line: 174, column: 15, scope: !374)
!377 = !DILocation(line: 174, column: 6, scope: !346)
!378 = !DILocation(line: 175, column: 14, scope: !379)
!379 = distinct !DILexicalBlock(scope: !374, file: !28, line: 174, column: 23)
!380 = !DILocation(line: 176, column: 10, scope: !379)
!381 = !DILocation(line: 176, column: 46, scope: !379)
!382 = !DILocation(line: 176, column: 3, scope: !383)
!383 = !DILexicalBlockFile(scope: !379, file: !28, discriminator: 1)
!384 = !DILocation(line: 176, column: 3, scope: !379)
!385 = !DILocation(line: 179, column: 9, scope: !346)
!386 = !DILocation(line: 179, column: 2, scope: !346)
!387 = distinct !DISubprogram(name: "subproc_check", scope: !28, file: !28, line: 122, type: !388, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !144)
!388 = !DISubroutineType(types: !389)
!389 = !{!24, !24, !141, !9}
!390 = !DILocalVariable(name: "status", arg: 1, scope: !387, file: !28, line: 122, type: !24)
!391 = !DILocation(line: 122, column: 19, scope: !387)
!392 = !DILocalVariable(name: "desc", arg: 2, scope: !387, file: !28, line: 122, type: !141)
!393 = !DILocation(line: 122, column: 39, scope: !387)
!394 = !DILocalVariable(name: "flags", arg: 3, scope: !387, file: !28, line: 122, type: !9)
!395 = !DILocation(line: 122, column: 64, scope: !387)
!396 = !DILocalVariable(name: "out", scope: !387, file: !28, line: 124, type: !397)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !141, null}
!400 = !DILocation(line: 124, column: 9, scope: !387)
!401 = !DILocalVariable(name: "n", scope: !387, file: !28, line: 125, type: !24)
!402 = !DILocation(line: 125, column: 6, scope: !387)
!403 = !DILocation(line: 127, column: 6, scope: !404)
!404 = distinct !DILexicalBlock(scope: !387, file: !28, line: 127, column: 6)
!405 = !DILocation(line: 127, column: 12, scope: !404)
!406 = !DILocation(line: 127, column: 6, scope: !387)
!407 = !DILocation(line: 128, column: 7, scope: !404)
!408 = !DILocation(line: 128, column: 3, scope: !404)
!409 = !DILocation(line: 130, column: 7, scope: !404)
!410 = !DILocation(line: 132, column: 25, scope: !411)
!411 = distinct !DILexicalBlock(scope: !387, file: !28, line: 132, column: 5)
!412 = !DILocation(line: 132, column: 5, scope: !411)
!413 = !DILocation(line: 132, column: 10, scope: !411)
!414 = !DILocation(line: 132, column: 17, scope: !411)
!415 = !DILocation(line: 132, column: 5, scope: !387)
!416 = !DILocation(line: 133, column: 26, scope: !417)
!417 = distinct !DILexicalBlock(scope: !411, file: !28, line: 132, column: 24)
!418 = !DILocation(line: 133, column: 6, scope: !417)
!419 = !DILocation(line: 133, column: 11, scope: !417)
!420 = !DILocation(line: 133, column: 18, scope: !417)
!421 = !DILocation(line: 133, column: 28, scope: !417)
!422 = !DILocation(line: 133, column: 5, scope: !417)
!423 = !DILocation(line: 134, column: 8, scope: !424)
!424 = distinct !DILexicalBlock(scope: !417, file: !28, line: 134, column: 7)
!425 = !DILocation(line: 134, column: 7, scope: !417)
!426 = !DILocation(line: 135, column: 4, scope: !424)
!427 = !DILocation(line: 136, column: 7, scope: !428)
!428 = distinct !DILexicalBlock(scope: !417, file: !28, line: 136, column: 7)
!429 = !DILocation(line: 136, column: 13, scope: !428)
!430 = !DILocation(line: 136, column: 7, scope: !417)
!431 = !DILocation(line: 137, column: 11, scope: !428)
!432 = !DILocation(line: 137, column: 4, scope: !428)
!433 = !DILocation(line: 139, column: 3, scope: !417)
!434 = !DILocation(line: 139, column: 6, scope: !417)
!435 = !DILocation(line: 139, column: 56, scope: !417)
!436 = !DILocation(line: 139, column: 62, scope: !417)
!437 = !DILocation(line: 139, column: 3, scope: !438)
!438 = !DILexicalBlockFile(scope: !417, file: !28, discriminator: 1)
!439 = !DILocation(line: 140, column: 2, scope: !417)
!440 = !DILocation(line: 140, column: 32, scope: !441)
!441 = !DILexicalBlockFile(scope: !442, file: !28, discriminator: 1)
!442 = distinct !DILexicalBlock(scope: !411, file: !28, line: 140, column: 12)
!443 = !DILocation(line: 140, column: 12, scope: !441)
!444 = !DILocation(line: 140, column: 17, scope: !441)
!445 = !DILocation(line: 140, column: 24, scope: !441)
!446 = !DILocation(line: 140, column: 14, scope: !441)
!447 = !DILocation(line: 140, column: 37, scope: !441)
!448 = !DILocation(line: 140, column: 43, scope: !441)
!449 = !DILocation(line: 141, column: 26, scope: !450)
!450 = distinct !DILexicalBlock(scope: !442, file: !28, line: 140, column: 33)
!451 = !DILocation(line: 141, column: 6, scope: !450)
!452 = !DILocation(line: 141, column: 11, scope: !450)
!453 = !DILocation(line: 141, column: 18, scope: !450)
!454 = !DILocation(line: 141, column: 5, scope: !450)
!455 = !DILocation(line: 142, column: 8, scope: !456)
!456 = distinct !DILexicalBlock(scope: !450, file: !28, line: 142, column: 7)
!457 = !DILocation(line: 142, column: 7, scope: !450)
!458 = !DILocation(line: 143, column: 4, scope: !456)
!459 = !DILocation(line: 144, column: 8, scope: !460)
!460 = distinct !DILexicalBlock(scope: !450, file: !28, line: 144, column: 7)
!461 = !DILocation(line: 144, column: 14, scope: !460)
!462 = !DILocation(line: 144, column: 32, scope: !460)
!463 = !DILocation(line: 144, column: 35, scope: !464)
!464 = !DILexicalBlockFile(scope: !460, file: !28, discriminator: 1)
!465 = !DILocation(line: 144, column: 37, scope: !464)
!466 = !DILocation(line: 144, column: 7, scope: !464)
!467 = !DILocation(line: 145, column: 4, scope: !460)
!468 = !DILocation(line: 146, column: 7, scope: !469)
!469 = distinct !DILexicalBlock(scope: !450, file: !28, line: 146, column: 7)
!470 = !DILocation(line: 146, column: 13, scope: !469)
!471 = !DILocation(line: 146, column: 7, scope: !450)
!472 = !DILocation(line: 147, column: 11, scope: !469)
!473 = !DILocation(line: 147, column: 4, scope: !469)
!474 = !DILocation(line: 149, column: 7, scope: !475)
!475 = distinct !DILexicalBlock(scope: !450, file: !28, line: 149, column: 7)
!476 = !DILocation(line: 149, column: 9, scope: !475)
!477 = !DILocation(line: 149, column: 7, scope: !450)
!478 = !DILocation(line: 150, column: 4, scope: !475)
!479 = !DILocation(line: 150, column: 7, scope: !475)
!480 = !DILocation(line: 150, column: 43, scope: !475)
!481 = !DILocation(line: 150, column: 4, scope: !482)
!482 = !DILexicalBlockFile(scope: !475, file: !28, discriminator: 1)
!483 = !DILocation(line: 152, column: 4, scope: !475)
!484 = !DILocation(line: 152, column: 7, scope: !475)
!485 = !DILocation(line: 153, column: 8, scope: !475)
!486 = !DILocation(line: 153, column: 24, scope: !475)
!487 = !DILocation(line: 153, column: 14, scope: !475)
!488 = !DILocation(line: 154, column: 27, scope: !475)
!489 = !DILocation(line: 154, column: 7, scope: !475)
!490 = !DILocation(line: 154, column: 12, scope: !475)
!491 = !DILocation(line: 154, column: 19, scope: !475)
!492 = !DILocation(line: 154, column: 27, scope: !482)
!493 = !DILocation(line: 154, column: 7, scope: !482)
!494 = !DILocation(line: 154, column: 7, scope: !495)
!495 = !DILexicalBlockFile(scope: !475, file: !28, discriminator: 2)
!496 = !DILocation(line: 154, column: 7, scope: !497)
!497 = !DILexicalBlockFile(scope: !475, file: !28, discriminator: 3)
!498 = !DILocation(line: 152, column: 4, scope: !482)
!499 = !DILocation(line: 155, column: 2, scope: !450)
!500 = !DILocation(line: 156, column: 7, scope: !501)
!501 = distinct !DILexicalBlock(scope: !502, file: !28, line: 156, column: 7)
!502 = distinct !DILexicalBlock(scope: !442, file: !28, line: 155, column: 9)
!503 = !DILocation(line: 156, column: 13, scope: !501)
!504 = !DILocation(line: 156, column: 7, scope: !502)
!505 = !DILocation(line: 157, column: 4, scope: !501)
!506 = !DILocation(line: 159, column: 3, scope: !502)
!507 = !DILocation(line: 159, column: 6, scope: !502)
!508 = !DILocation(line: 159, column: 58, scope: !502)
!509 = !DILocation(line: 160, column: 7, scope: !502)
!510 = !DILocation(line: 159, column: 3, scope: !511)
!511 = !DILexicalBlockFile(scope: !502, file: !28, discriminator: 1)
!512 = !DILocation(line: 163, column: 2, scope: !387)
!513 = !DILocation(line: 164, column: 1, scope: !387)
