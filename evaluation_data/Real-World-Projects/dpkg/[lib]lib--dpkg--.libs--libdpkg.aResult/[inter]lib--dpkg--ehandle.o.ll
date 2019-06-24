; ModuleID = './[inter]lib--dpkg--ehandle.o.i'
source_filename = "./[inter]lib--dpkg--ehandle.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.error_context = type { %struct.error_context*, i32, %union.anon, %struct.anon, %struct.cleanup_entry*, i8* }
%union.anon = type { void ()* }
%struct.anon = type { void (i8*, i8*)*, i8* }
%struct.cleanup_entry = type { %struct.cleanup_entry*, [2 x %struct.anon.0], i32, i32, i32, [1 x i8*] }
%struct.anon.0 = type { i32, void (i32, i8**)* }
%struct.anon.1 = type { %struct.cleanup_entry, [20 x i8*], [4096 x i8] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@onerr_abort = global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [20 x i8] c"%s%s:%s %s%s:%s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"\1B[1;31m\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"out of memory for new cleanup entry\00", align 1
@econtext = internal global %struct.error_context* null, align 8
@emergency = internal global %struct.anon.1 zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"%s%s:%s:%d:%s:%s %s%s:%s %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"out of memory for new error context\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"out of memory for new cleanup entry with many arguments\00", align 1
@run_cleanups.preventrecurse = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [45 x i8] c"too many nested errors during error recovery\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"error while cleaning up\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"%s%s%s: %s%s:%s\0A %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"unrecoverable fatal error, aborting\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"outside error context, aborting\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"ehandle.c\00", align 1
@__func__.run_error_handler = private unnamed_addr constant [18 x i8] c"run_error_handler\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"error handler returned unexpectedly!\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"unknown error handler type %d!\00", align 1

; Function Attrs: nounwind uwtable
define void @catch_fatal_error() #0 !dbg !120 {
  call void @pop_error_context(i32 2), !dbg !121
  call void @exit(i32 2) #11, !dbg !122
  unreachable, !dbg !122
                                                  ; No predecessors!
  ret void, !dbg !123
}

; Function Attrs: nounwind uwtable
define void @pop_error_context(i32) #0 !dbg !124 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.error_context*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !127, metadata !128), !dbg !129
  call void @llvm.dbg.declare(metadata %struct.error_context** %3, metadata !130, metadata !128), !dbg !131
  %4 = load volatile %struct.error_context*, %struct.error_context** @econtext, align 8, !dbg !132
  store %struct.error_context* %4, %struct.error_context** %3, align 8, !dbg !133
  %5 = load %struct.error_context*, %struct.error_context** %3, align 8, !dbg !134
  %6 = getelementptr inbounds %struct.error_context, %struct.error_context* %5, i32 0, i32 0, !dbg !135
  %7 = load %struct.error_context*, %struct.error_context** %6, align 8, !dbg !135
  store volatile %struct.error_context* %7, %struct.error_context** @econtext, align 8, !dbg !136
  %8 = load i32, i32* %2, align 4, !dbg !137
  %9 = and i32 %8, 1, !dbg !139
  %10 = icmp ne i32 %9, 0, !dbg !139
  br i1 %10, label %11, label %13, !dbg !140

; <label>:11:                                     ; preds = %1
  %12 = load %struct.error_context*, %struct.error_context** %3, align 8, !dbg !141
  call void @set_error_printer(%struct.error_context* %12, void (i8*, i8*)* null, i8* null), !dbg !142
  br label %13, !dbg !142

; <label>:13:                                     ; preds = %11, %1
  %14 = load %struct.error_context*, %struct.error_context** %3, align 8, !dbg !143
  %15 = load i32, i32* %2, align 4, !dbg !144
  call void @run_cleanups(%struct.error_context* %14, i32 %15), !dbg !145
  %16 = load %struct.error_context*, %struct.error_context** %3, align 8, !dbg !146
  call void @error_context_errmsg_free(%struct.error_context* %16), !dbg !147
  %17 = load %struct.error_context*, %struct.error_context** %3, align 8, !dbg !148
  %18 = bitcast %struct.error_context* %17 to i8*, !dbg !148
  call void @free(i8* %18) #7, !dbg !149
  ret void, !dbg !150
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #1

; Function Attrs: nounwind uwtable
define void @print_fatal_error(i8*, i8*) #0 !dbg !151 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !152, metadata !128), !dbg !153
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !154, metadata !128), !dbg !155
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !156
  %6 = call i8* @color_get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !157
  %7 = call i8* @dpkg_get_progname(), !dbg !158
  %8 = call i8* @color_reset(), !dbg !160
  %9 = call i8* @color_get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)), !dbg !162
  %10 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #7, !dbg !163
  %11 = call i8* @color_reset(), !dbg !164
  %12 = load i8*, i8** %3, align 8, !dbg !165
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i8* %11, i8* %12), !dbg !166
  ret void, !dbg !167
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i8* @color_get(i8*) #3

declare i8* @dpkg_get_progname() #3

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @color_reset() #4 !dbg !168 {
  %1 = call i8* @color_get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)), !dbg !172
  ret i8* %1, !dbg !173
}

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define void @push_error_context_func(void ()*, void (i8*, i8*)*, i8*) #0 !dbg !174 {
  %4 = alloca void ()*, align 8
  %5 = alloca void (i8*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.error_context*, align 8
  store void ()* %0, void ()** %4, align 8
  call void @llvm.dbg.declare(metadata void ()** %4, metadata !177, metadata !128), !dbg !178
  store void (i8*, i8*)* %1, void (i8*, i8*)** %5, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*)** %5, metadata !179, metadata !128), !dbg !180
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !181, metadata !128), !dbg !182
  call void @llvm.dbg.declare(metadata %struct.error_context** %7, metadata !183, metadata !128), !dbg !184
  %8 = call %struct.error_context* @error_context_new(), !dbg !185
  store %struct.error_context* %8, %struct.error_context** %7, align 8, !dbg !186
  %9 = load %struct.error_context*, %struct.error_context** %7, align 8, !dbg !187
  %10 = load void (i8*, i8*)*, void (i8*, i8*)** %5, align 8, !dbg !188
  %11 = load i8*, i8** %6, align 8, !dbg !189
  call void @set_error_printer(%struct.error_context* %9, void (i8*, i8*)* %10, i8* %11), !dbg !190
  %12 = load %struct.error_context*, %struct.error_context** %7, align 8, !dbg !191
  %13 = load void ()*, void ()** %4, align 8, !dbg !192
  call void @set_func_handler(%struct.error_context* %12, void ()* %13), !dbg !193
  store volatile i32 0, i32* @onerr_abort, align 4, !dbg !194
  ret void, !dbg !195
}

; Function Attrs: nounwind uwtable
define internal %struct.error_context* @error_context_new() #0 !dbg !196 {
  %1 = alloca %struct.error_context*, align 8
  call void @llvm.dbg.declare(metadata %struct.error_context** %1, metadata !199, metadata !128), !dbg !200
  %2 = call noalias i8* @malloc(i64 56) #7, !dbg !201
  %3 = bitcast i8* %2 to %struct.error_context*, !dbg !201
  store %struct.error_context* %3, %struct.error_context** %1, align 8, !dbg !202
  %4 = load %struct.error_context*, %struct.error_context** %1, align 8, !dbg !203
  %5 = icmp ne %struct.error_context* %4, null, !dbg !203
  br i1 %5, label %8, label %6, !dbg !205

; <label>:6:                                      ; preds = %0
  %7 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0)) #7, !dbg !206
  call void (i8*, ...) @ohshite(i8* %7) #12, !dbg !207
  unreachable, !dbg !209

; <label>:8:                                      ; preds = %0
  %9 = load volatile %struct.error_context*, %struct.error_context** @econtext, align 8, !dbg !210
  %10 = load %struct.error_context*, %struct.error_context** %1, align 8, !dbg !211
  %11 = getelementptr inbounds %struct.error_context, %struct.error_context* %10, i32 0, i32 0, !dbg !212
  store %struct.error_context* %9, %struct.error_context** %11, align 8, !dbg !213
  %12 = load %struct.error_context*, %struct.error_context** %1, align 8, !dbg !214
  %13 = getelementptr inbounds %struct.error_context, %struct.error_context* %12, i32 0, i32 4, !dbg !215
  store %struct.cleanup_entry* null, %struct.cleanup_entry** %13, align 8, !dbg !216
  %14 = load %struct.error_context*, %struct.error_context** %1, align 8, !dbg !217
  %15 = getelementptr inbounds %struct.error_context, %struct.error_context* %14, i32 0, i32 5, !dbg !218
  store i8* null, i8** %15, align 8, !dbg !219
  %16 = load %struct.error_context*, %struct.error_context** %1, align 8, !dbg !220
  store volatile %struct.error_context* %16, %struct.error_context** @econtext, align 8, !dbg !221
  %17 = load %struct.error_context*, %struct.error_context** %1, align 8, !dbg !222
  ret %struct.error_context* %17, !dbg !223
}

; Function Attrs: nounwind uwtable
define internal void @set_error_printer(%struct.error_context*, void (i8*, i8*)*, i8*) #0 !dbg !224 {
  %4 = alloca %struct.error_context*, align 8
  %5 = alloca void (i8*, i8*)*, align 8
  %6 = alloca i8*, align 8
  store %struct.error_context* %0, %struct.error_context** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.error_context** %4, metadata !227, metadata !128), !dbg !228
  store void (i8*, i8*)* %1, void (i8*, i8*)** %5, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*)** %5, metadata !229, metadata !128), !dbg !230
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !231, metadata !128), !dbg !232
  %7 = load void (i8*, i8*)*, void (i8*, i8*)** %5, align 8, !dbg !233
  %8 = load %struct.error_context*, %struct.error_context** %4, align 8, !dbg !234
  %9 = getelementptr inbounds %struct.error_context, %struct.error_context* %8, i32 0, i32 3, !dbg !235
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0, !dbg !236
  store void (i8*, i8*)* %7, void (i8*, i8*)** %10, align 8, !dbg !237
  %11 = load i8*, i8** %6, align 8, !dbg !238
  %12 = load %struct.error_context*, %struct.error_context** %4, align 8, !dbg !239
  %13 = getelementptr inbounds %struct.error_context, %struct.error_context* %12, i32 0, i32 3, !dbg !240
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1, !dbg !241
  store i8* %11, i8** %14, align 8, !dbg !242
  ret void, !dbg !243
}

; Function Attrs: nounwind uwtable
define internal void @set_func_handler(%struct.error_context*, void ()*) #0 !dbg !244 {
  %3 = alloca %struct.error_context*, align 8
  %4 = alloca void ()*, align 8
  store %struct.error_context* %0, %struct.error_context** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.error_context** %3, metadata !247, metadata !128), !dbg !248
  store void ()* %1, void ()** %4, align 8
  call void @llvm.dbg.declare(metadata void ()** %4, metadata !249, metadata !128), !dbg !250
  %5 = load %struct.error_context*, %struct.error_context** %3, align 8, !dbg !251
  %6 = getelementptr inbounds %struct.error_context, %struct.error_context* %5, i32 0, i32 1, !dbg !252
  store i32 0, i32* %6, align 8, !dbg !253
  %7 = load void ()*, void ()** %4, align 8, !dbg !254
  %8 = load %struct.error_context*, %struct.error_context** %3, align 8, !dbg !255
  %9 = getelementptr inbounds %struct.error_context, %struct.error_context* %8, i32 0, i32 2, !dbg !256
  %10 = bitcast %union.anon* %9 to void ()**, !dbg !257
  store void ()* %7, void ()** %10, align 8, !dbg !258
  ret void, !dbg !259
}

; Function Attrs: nounwind uwtable
define void @push_error_context_jump([1 x %struct.__jmp_buf_tag]*, void (i8*, i8*)*, i8*) #0 !dbg !260 {
  %4 = alloca [1 x %struct.__jmp_buf_tag]*, align 8
  %5 = alloca void (i8*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.error_context*, align 8
  store [1 x %struct.__jmp_buf_tag]* %0, [1 x %struct.__jmp_buf_tag]** %4, align 8
  call void @llvm.dbg.declare(metadata [1 x %struct.__jmp_buf_tag]** %4, metadata !263, metadata !128), !dbg !264
  store void (i8*, i8*)* %1, void (i8*, i8*)** %5, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*)** %5, metadata !265, metadata !128), !dbg !266
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !267, metadata !128), !dbg !268
  call void @llvm.dbg.declare(metadata %struct.error_context** %7, metadata !269, metadata !128), !dbg !270
  %8 = call %struct.error_context* @error_context_new(), !dbg !271
  store %struct.error_context* %8, %struct.error_context** %7, align 8, !dbg !272
  %9 = load %struct.error_context*, %struct.error_context** %7, align 8, !dbg !273
  %10 = load void (i8*, i8*)*, void (i8*, i8*)** %5, align 8, !dbg !274
  %11 = load i8*, i8** %6, align 8, !dbg !275
  call void @set_error_printer(%struct.error_context* %9, void (i8*, i8*)* %10, i8* %11), !dbg !276
  %12 = load %struct.error_context*, %struct.error_context** %7, align 8, !dbg !277
  %13 = load [1 x %struct.__jmp_buf_tag]*, [1 x %struct.__jmp_buf_tag]** %4, align 8, !dbg !278
  call void @set_jump_handler(%struct.error_context* %12, [1 x %struct.__jmp_buf_tag]* %13), !dbg !279
  store volatile i32 0, i32* @onerr_abort, align 4, !dbg !280
  ret void, !dbg !281
}

; Function Attrs: nounwind uwtable
define internal void @set_jump_handler(%struct.error_context*, [1 x %struct.__jmp_buf_tag]*) #0 !dbg !282 {
  %3 = alloca %struct.error_context*, align 8
  %4 = alloca [1 x %struct.__jmp_buf_tag]*, align 8
  store %struct.error_context* %0, %struct.error_context** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.error_context** %3, metadata !285, metadata !128), !dbg !286
  store [1 x %struct.__jmp_buf_tag]* %1, [1 x %struct.__jmp_buf_tag]** %4, align 8
  call void @llvm.dbg.declare(metadata [1 x %struct.__jmp_buf_tag]** %4, metadata !287, metadata !128), !dbg !288
  %5 = load %struct.error_context*, %struct.error_context** %3, align 8, !dbg !289
  %6 = getelementptr inbounds %struct.error_context, %struct.error_context* %5, i32 0, i32 1, !dbg !290
  store i32 1, i32* %6, align 8, !dbg !291
  %7 = load [1 x %struct.__jmp_buf_tag]*, [1 x %struct.__jmp_buf_tag]** %4, align 8, !dbg !292
  %8 = load %struct.error_context*, %struct.error_context** %3, align 8, !dbg !293
  %9 = getelementptr inbounds %struct.error_context, %struct.error_context* %8, i32 0, i32 2, !dbg !294
  %10 = bitcast %union.anon* %9 to [1 x %struct.__jmp_buf_tag]**, !dbg !295
  store [1 x %struct.__jmp_buf_tag]* %7, [1 x %struct.__jmp_buf_tag]** %10, align 8, !dbg !296
  ret void, !dbg !297
}

; Function Attrs: nounwind uwtable
define void @push_error_context() #0 !dbg !298 {
  call void @push_error_context_func(void ()* @catch_fatal_error, void (i8*, i8*)* @print_fatal_error, i8* null), !dbg !299
  ret void, !dbg !300
}

; Function Attrs: nounwind uwtable
define void @push_checkpoint(i32, i32) #0 !dbg !301 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cleanup_entry*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !304, metadata !128), !dbg !305
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !306, metadata !128), !dbg !307
  call void @llvm.dbg.declare(metadata %struct.cleanup_entry** %5, metadata !308, metadata !128), !dbg !309
  call void @llvm.dbg.declare(metadata i32* %6, metadata !310, metadata !128), !dbg !311
  %7 = call noalias i8* @malloc(i64 72) #7, !dbg !312
  %8 = bitcast i8* %7 to %struct.cleanup_entry*, !dbg !312
  store %struct.cleanup_entry* %8, %struct.cleanup_entry** %5, align 8, !dbg !313
  %9 = load %struct.cleanup_entry*, %struct.cleanup_entry** %5, align 8, !dbg !314
  %10 = icmp eq %struct.cleanup_entry* %9, null, !dbg !316
  br i1 %10, label %11, label %15, !dbg !317

; <label>:11:                                     ; preds = %2
  %12 = load volatile i32, i32* @onerr_abort, align 4, !dbg !318
  %13 = add nsw i32 %12, 1, !dbg !318
  store volatile i32 %13, i32* @onerr_abort, align 4, !dbg !318
  %14 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0)) #7, !dbg !320
  call void (i8*, ...) @ohshite(i8* %14) #12, !dbg !321
  unreachable, !dbg !323

; <label>:15:                                     ; preds = %2
  store i32 0, i32* %6, align 4, !dbg !324
  br label %16, !dbg !326

; <label>:16:                                     ; preds = %32, %15
  %17 = load i32, i32* %6, align 4, !dbg !327
  %18 = icmp slt i32 %17, 2, !dbg !330
  br i1 %18, label %19, label %35, !dbg !331

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %6, align 4, !dbg !332
  %21 = sext i32 %20 to i64, !dbg !335
  %22 = load %struct.cleanup_entry*, %struct.cleanup_entry** %5, align 8, !dbg !335
  %23 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %22, i32 0, i32 1, !dbg !336
  %24 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %23, i64 0, i64 %21, !dbg !335
  %25 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %24, i32 0, i32 1, !dbg !337
  store void (i32, i8**)* null, void (i32, i8**)** %25, align 8, !dbg !338
  %26 = load i32, i32* %6, align 4, !dbg !339
  %27 = sext i32 %26 to i64, !dbg !340
  %28 = load %struct.cleanup_entry*, %struct.cleanup_entry** %5, align 8, !dbg !340
  %29 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %28, i32 0, i32 1, !dbg !341
  %30 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %29, i64 0, i64 %27, !dbg !340
  %31 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %30, i32 0, i32 0, !dbg !342
  store i32 0, i32* %31, align 8, !dbg !343
  br label %32, !dbg !344

; <label>:32:                                     ; preds = %19
  %33 = load i32, i32* %6, align 4, !dbg !345
  %34 = add nsw i32 %33, 1, !dbg !345
  store i32 %34, i32* %6, align 4, !dbg !345
  br label %16, !dbg !347, !llvm.loop !348

; <label>:35:                                     ; preds = %16
  %36 = load i32, i32* %3, align 4, !dbg !350
  %37 = load %struct.cleanup_entry*, %struct.cleanup_entry** %5, align 8, !dbg !351
  %38 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %37, i32 0, i32 2, !dbg !352
  store i32 %36, i32* %38, align 8, !dbg !353
  %39 = load i32, i32* %4, align 4, !dbg !354
  %40 = load %struct.cleanup_entry*, %struct.cleanup_entry** %5, align 8, !dbg !355
  %41 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %40, i32 0, i32 3, !dbg !356
  store i32 %39, i32* %41, align 4, !dbg !357
  %42 = load %struct.cleanup_entry*, %struct.cleanup_entry** %5, align 8, !dbg !358
  %43 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %42, i32 0, i32 4, !dbg !359
  store i32 0, i32* %43, align 8, !dbg !360
  %44 = load %struct.cleanup_entry*, %struct.cleanup_entry** %5, align 8, !dbg !361
  %45 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %44, i32 0, i32 5, !dbg !362
  %46 = getelementptr inbounds [1 x i8*], [1 x i8*]* %45, i64 0, i64 0, !dbg !361
  store i8* null, i8** %46, align 8, !dbg !363
  %47 = load volatile %struct.error_context*, %struct.error_context** @econtext, align 8, !dbg !364
  %48 = getelementptr inbounds %struct.error_context, %struct.error_context* %47, i32 0, i32 4, !dbg !365
  %49 = load %struct.cleanup_entry*, %struct.cleanup_entry** %48, align 8, !dbg !365
  %50 = load %struct.cleanup_entry*, %struct.cleanup_entry** %5, align 8, !dbg !366
  %51 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %50, i32 0, i32 0, !dbg !367
  store %struct.cleanup_entry* %49, %struct.cleanup_entry** %51, align 8, !dbg !368
  %52 = load %struct.cleanup_entry*, %struct.cleanup_entry** %5, align 8, !dbg !369
  %53 = load volatile %struct.error_context*, %struct.error_context** @econtext, align 8, !dbg !370
  %54 = getelementptr inbounds %struct.error_context, %struct.error_context* %53, i32 0, i32 4, !dbg !371
  store %struct.cleanup_entry* %52, %struct.cleanup_entry** %54, align 8, !dbg !372
  ret void, !dbg !373
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

; Function Attrs: noreturn nounwind uwtable
define void @ohshite(i8*, ...) #6 !dbg !374 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !377, metadata !128), !dbg !378
  call void @llvm.dbg.declare(metadata i32* %3, metadata !379, metadata !128), !dbg !380
  call void @llvm.dbg.declare(metadata i32* %4, metadata !381, metadata !128), !dbg !382
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !383, metadata !128), !dbg !396
  %7 = call i32* @__errno_location() #2, !dbg !397
  %8 = load i32, i32* %7, align 4, !dbg !398
  store i32 %8, i32* %3, align 4, !dbg !399
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !400
  %10 = bitcast %struct.__va_list_tag* %9 to i8*, !dbg !400
  call void @llvm.va_start(i8* %10), !dbg !400
  %11 = load i8*, i8** %2, align 8, !dbg !401
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !402
  %13 = call i32 @error_context_errmsg_format(i8* %11, %struct.__va_list_tag* %12), !dbg !403
  store i32 %13, i32* %4, align 4, !dbg !404
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !405
  %15 = bitcast %struct.__va_list_tag* %14 to i8*, !dbg !405
  call void @llvm.va_end(i8* %15), !dbg !405
  %16 = load i32, i32* %4, align 4, !dbg !406
  %17 = icmp sgt i32 %16, 0, !dbg !408
  br i1 %17, label %18, label %31, !dbg !409

; <label>:18:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i8** %6, metadata !410, metadata !128), !dbg !412
  store i8* null, i8** %6, align 8, !dbg !412
  %19 = load volatile %struct.error_context*, %struct.error_context** @econtext, align 8, !dbg !413
  %20 = getelementptr inbounds %struct.error_context, %struct.error_context* %19, i32 0, i32 5, !dbg !414
  %21 = load i8*, i8** %20, align 8, !dbg !414
  %22 = load i32, i32* %3, align 4, !dbg !415
  %23 = call i8* @strerror(i32 %22) #7, !dbg !416
  %24 = call i32 (i8**, i8*, ...) @asprintf(i8** %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %21, i8* %23) #7, !dbg !417
  store i32 %24, i32* %4, align 4, !dbg !419
  %25 = load i32, i32* %4, align 4, !dbg !420
  %26 = icmp sgt i32 %25, 0, !dbg !422
  br i1 %26, label %27, label %30, !dbg !423

; <label>:27:                                     ; preds = %18
  %28 = load volatile %struct.error_context*, %struct.error_context** @econtext, align 8, !dbg !424
  %29 = load i8*, i8** %6, align 8, !dbg !425
  call void @error_context_errmsg_set(%struct.error_context* %28, i8* %29), !dbg !426
  br label %30, !dbg !426

; <label>:30:                                     ; preds = %27, %18
  br label %31, !dbg !427

; <label>:31:                                     ; preds = %30, %1
  call void @run_error_handler() #12, !dbg !428
  unreachable, !dbg !428
                                                  ; No predecessors!
  ret void, !dbg !429
}

; Function Attrs: nounwind uwtable
define void @push_cleanup(void (i32, i8**)*, i32, i32, ...) #0 !dbg !430 {
  %4 = alloca void (i32, i8**)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  store void (i32, i8**)* %0, void (i32, i8**)** %4, align 8
  call void @llvm.dbg.declare(metadata void (i32, i8**)** %4, metadata !433, metadata !128), !dbg !434
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !435, metadata !128), !dbg !436
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !437, metadata !128), !dbg !438
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !439, metadata !128), !dbg !440
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !441
  %9 = bitcast %struct.__va_list_tag* %8 to i8*, !dbg !441
  call void @llvm.va_start(i8* %9), !dbg !441
  %10 = load void (i32, i8**)*, void (i32, i8**)** %4, align 8, !dbg !442
  %11 = load i32, i32* %5, align 4, !dbg !443
  %12 = load i32, i32* %6, align 4, !dbg !444
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !445
  call void @cleanup_entry_new(void (i32, i8**)* %10, i32 %11, void (i32, i8**)* null, i32 0, i32 %12, %struct.__va_list_tag* %13), !dbg !446
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !447
  %15 = bitcast %struct.__va_list_tag* %14 to i8*, !dbg !447
  call void @llvm.va_end(i8* %15), !dbg !447
  ret void, !dbg !448
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: nounwind uwtable
define internal void @cleanup_entry_new(void (i32, i8**)*, i32, void (i32, i8**)*, i32, i32, %struct.__va_list_tag*) #0 !dbg !449 {
  %7 = alloca void (i32, i8**)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (i32, i8**)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.__va_list_tag*, align 8
  %13 = alloca %struct.cleanup_entry*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca [1 x %struct.__va_list_tag], align 16
  store void (i32, i8**)* %0, void (i32, i8**)** %7, align 8
  call void @llvm.dbg.declare(metadata void (i32, i8**)** %7, metadata !453, metadata !128), !dbg !454
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !455, metadata !128), !dbg !456
  store void (i32, i8**)* %2, void (i32, i8**)** %9, align 8
  call void @llvm.dbg.declare(metadata void (i32, i8**)** %9, metadata !457, metadata !128), !dbg !458
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !459, metadata !128), !dbg !460
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !461, metadata !128), !dbg !462
  store %struct.__va_list_tag* %5, %struct.__va_list_tag** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %12, metadata !463, metadata !128), !dbg !464
  call void @llvm.dbg.declare(metadata %struct.cleanup_entry** %13, metadata !465, metadata !128), !dbg !466
  call void @llvm.dbg.declare(metadata i8*** %14, metadata !467, metadata !128), !dbg !468
  call void @llvm.dbg.declare(metadata i32* %15, metadata !469, metadata !128), !dbg !470
  store i32 0, i32* %15, align 4, !dbg !470
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %16, metadata !471, metadata !128), !dbg !472
  %17 = load volatile i32, i32* @onerr_abort, align 4, !dbg !473
  %18 = add nsw i32 %17, 1, !dbg !473
  store volatile i32 %18, i32* @onerr_abort, align 4, !dbg !473
  %19 = load i32, i32* %11, align 4, !dbg !474
  %20 = add i32 %19, 1, !dbg !475
  %21 = zext i32 %20 to i64, !dbg !476
  %22 = mul i64 8, %21, !dbg !477
  %23 = add i64 64, %22, !dbg !478
  %24 = call noalias i8* @malloc(i64 %23) #7, !dbg !479
  %25 = bitcast i8* %24 to %struct.cleanup_entry*, !dbg !479
  store %struct.cleanup_entry* %25, %struct.cleanup_entry** %13, align 8, !dbg !480
  %26 = load %struct.cleanup_entry*, %struct.cleanup_entry** %13, align 8, !dbg !481
  %27 = icmp ne %struct.cleanup_entry* %26, null, !dbg !481
  br i1 %27, label %37, label %28, !dbg !483

; <label>:28:                                     ; preds = %6
  %29 = load i32, i32* %11, align 4, !dbg !484
  %30 = zext i32 %29 to i64, !dbg !484
  %31 = icmp ugt i64 %30, 20, !dbg !487
  br i1 %31, label %32, label %34, !dbg !488

; <label>:32:                                     ; preds = %28
  %33 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i32 0, i32 0)) #7, !dbg !489
  call void (i8*, ...) @ohshite(i8* %33) #12, !dbg !490
  unreachable, !dbg !492

; <label>:34:                                     ; preds = %28
  %35 = call i32* @__errno_location() #2, !dbg !493
  %36 = load i32, i32* %35, align 4, !dbg !494
  store i32 %36, i32* %15, align 4, !dbg !495
  store %struct.cleanup_entry* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @emergency, i32 0, i32 0), %struct.cleanup_entry** %13, align 8, !dbg !496
  br label %37, !dbg !497

; <label>:37:                                     ; preds = %34, %6
  %38 = load void (i32, i8**)*, void (i32, i8**)** %7, align 8, !dbg !498
  %39 = load %struct.cleanup_entry*, %struct.cleanup_entry** %13, align 8, !dbg !499
  %40 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %39, i32 0, i32 1, !dbg !500
  %41 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %40, i64 0, i64 0, !dbg !499
  %42 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %41, i32 0, i32 1, !dbg !501
  store void (i32, i8**)* %38, void (i32, i8**)** %42, align 8, !dbg !502
  %43 = load i32, i32* %8, align 4, !dbg !503
  %44 = load %struct.cleanup_entry*, %struct.cleanup_entry** %13, align 8, !dbg !504
  %45 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %44, i32 0, i32 1, !dbg !505
  %46 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %45, i64 0, i64 0, !dbg !504
  %47 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %46, i32 0, i32 0, !dbg !506
  store i32 %43, i32* %47, align 8, !dbg !507
  %48 = load void (i32, i8**)*, void (i32, i8**)** %9, align 8, !dbg !508
  %49 = load %struct.cleanup_entry*, %struct.cleanup_entry** %13, align 8, !dbg !509
  %50 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %49, i32 0, i32 1, !dbg !510
  %51 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %50, i64 0, i64 1, !dbg !509
  %52 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %51, i32 0, i32 1, !dbg !511
  store void (i32, i8**)* %48, void (i32, i8**)** %52, align 8, !dbg !512
  %53 = load i32, i32* %10, align 4, !dbg !513
  %54 = load %struct.cleanup_entry*, %struct.cleanup_entry** %13, align 8, !dbg !514
  %55 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %54, i32 0, i32 1, !dbg !515
  %56 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %55, i64 0, i64 1, !dbg !514
  %57 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %56, i32 0, i32 0, !dbg !516
  store i32 %53, i32* %57, align 8, !dbg !517
  %58 = load %struct.cleanup_entry*, %struct.cleanup_entry** %13, align 8, !dbg !518
  %59 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %58, i32 0, i32 2, !dbg !519
  store i32 -1, i32* %59, align 8, !dbg !520
  %60 = load %struct.cleanup_entry*, %struct.cleanup_entry** %13, align 8, !dbg !521
  %61 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %60, i32 0, i32 3, !dbg !522
  store i32 0, i32* %61, align 4, !dbg !523
  %62 = load i32, i32* %11, align 4, !dbg !524
  %63 = load %struct.cleanup_entry*, %struct.cleanup_entry** %13, align 8, !dbg !525
  %64 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %63, i32 0, i32 4, !dbg !526
  store i32 %62, i32* %64, align 8, !dbg !527
  %65 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %16, i32 0, i32 0, !dbg !528
  %66 = load %struct.__va_list_tag*, %struct.__va_list_tag** %12, align 8, !dbg !528
  %67 = bitcast %struct.__va_list_tag* %65 to i8*, !dbg !528
  %68 = bitcast %struct.__va_list_tag* %66 to i8*, !dbg !528
  call void @llvm.va_copy(i8* %67, i8* %68), !dbg !528
  %69 = load %struct.cleanup_entry*, %struct.cleanup_entry** %13, align 8, !dbg !529
  %70 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %69, i32 0, i32 5, !dbg !530
  %71 = getelementptr inbounds [1 x i8*], [1 x i8*]* %70, i32 0, i32 0, !dbg !529
  store i8** %71, i8*** %14, align 8, !dbg !531
  br label %72, !dbg !532

; <label>:72:                                     ; preds = %92, %37
  %73 = load i32, i32* %11, align 4, !dbg !533
  %74 = add i32 %73, -1, !dbg !533
  store i32 %74, i32* %11, align 4, !dbg !533
  %75 = icmp ugt i32 %73, 0, !dbg !535
  br i1 %75, label %76, label %97, !dbg !536

; <label>:76:                                     ; preds = %72
  %77 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %16, i32 0, i32 0, !dbg !537
  %78 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %77, i32 0, i32 0, !dbg !537
  %79 = load i32, i32* %78, align 16, !dbg !537
  %80 = icmp ule i32 %79, 40, !dbg !537
  br i1 %80, label %81, label %87, !dbg !537

; <label>:81:                                     ; preds = %76
  %82 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %77, i32 0, i32 3, !dbg !538
  %83 = load i8*, i8** %82, align 16, !dbg !538
  %84 = getelementptr i8, i8* %83, i32 %79, !dbg !538
  %85 = bitcast i8* %84 to i8**, !dbg !538
  %86 = add i32 %79, 8, !dbg !538
  store i32 %86, i32* %78, align 16, !dbg !538
  br label %92, !dbg !538

; <label>:87:                                     ; preds = %76
  %88 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %77, i32 0, i32 2, !dbg !539
  %89 = load i8*, i8** %88, align 8, !dbg !539
  %90 = bitcast i8* %89 to i8**, !dbg !539
  %91 = getelementptr i8, i8* %89, i32 8, !dbg !539
  store i8* %91, i8** %88, align 8, !dbg !539
  br label %92, !dbg !539

; <label>:92:                                     ; preds = %87, %81
  %93 = phi i8** [ %85, %81 ], [ %90, %87 ], !dbg !541
  %94 = load i8*, i8** %93, align 8, !dbg !541
  %95 = load i8**, i8*** %14, align 8, !dbg !543
  %96 = getelementptr inbounds i8*, i8** %95, i32 1, !dbg !543
  store i8** %96, i8*** %14, align 8, !dbg !543
  store i8* %94, i8** %95, align 8, !dbg !544
  br label %72, !dbg !545, !llvm.loop !546

; <label>:97:                                     ; preds = %72
  %98 = load i8**, i8*** %14, align 8, !dbg !547
  %99 = getelementptr inbounds i8*, i8** %98, i32 1, !dbg !547
  store i8** %99, i8*** %14, align 8, !dbg !547
  store i8* null, i8** %98, align 8, !dbg !548
  %100 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %16, i32 0, i32 0, !dbg !549
  %101 = bitcast %struct.__va_list_tag* %100 to i8*, !dbg !549
  call void @llvm.va_end(i8* %101), !dbg !549
  %102 = load volatile %struct.error_context*, %struct.error_context** @econtext, align 8, !dbg !550
  %103 = getelementptr inbounds %struct.error_context, %struct.error_context* %102, i32 0, i32 4, !dbg !551
  %104 = load %struct.cleanup_entry*, %struct.cleanup_entry** %103, align 8, !dbg !551
  %105 = load %struct.cleanup_entry*, %struct.cleanup_entry** %13, align 8, !dbg !552
  %106 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %105, i32 0, i32 0, !dbg !553
  store %struct.cleanup_entry* %104, %struct.cleanup_entry** %106, align 8, !dbg !554
  %107 = load %struct.cleanup_entry*, %struct.cleanup_entry** %13, align 8, !dbg !555
  %108 = load volatile %struct.error_context*, %struct.error_context** @econtext, align 8, !dbg !556
  %109 = getelementptr inbounds %struct.error_context, %struct.error_context* %108, i32 0, i32 4, !dbg !557
  store %struct.cleanup_entry* %107, %struct.cleanup_entry** %109, align 8, !dbg !558
  %110 = load %struct.cleanup_entry*, %struct.cleanup_entry** %13, align 8, !dbg !559
  %111 = icmp eq %struct.cleanup_entry* %110, getelementptr inbounds (%struct.anon.1, %struct.anon.1* @emergency, i32 0, i32 0), !dbg !561
  br i1 %111, label %112, label %116, !dbg !562

; <label>:112:                                    ; preds = %97
  %113 = load i32, i32* %15, align 4, !dbg !563
  %114 = call i32* @__errno_location() #2, !dbg !565
  store i32 %113, i32* %114, align 4, !dbg !566
  %115 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0)) #7, !dbg !567
  call void (i8*, ...) @ohshite(i8* %115) #12, !dbg !568
  unreachable, !dbg !570

; <label>:116:                                    ; preds = %97
  %117 = load volatile i32, i32* @onerr_abort, align 4, !dbg !571
  %118 = add nsw i32 %117, -1, !dbg !571
  store volatile i32 %118, i32* @onerr_abort, align 4, !dbg !571
  ret void, !dbg !572
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: nounwind uwtable
define void @push_cleanup_fallback(void (i32, i8**)*, i32, void (i32, i8**)*, i32, i32, ...) #0 !dbg !573 {
  %6 = alloca void (i32, i8**)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (i32, i8**)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [1 x %struct.__va_list_tag], align 16
  store void (i32, i8**)* %0, void (i32, i8**)** %6, align 8
  call void @llvm.dbg.declare(metadata void (i32, i8**)** %6, metadata !576, metadata !128), !dbg !577
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !578, metadata !128), !dbg !579
  store void (i32, i8**)* %2, void (i32, i8**)** %8, align 8
  call void @llvm.dbg.declare(metadata void (i32, i8**)** %8, metadata !580, metadata !128), !dbg !581
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !582, metadata !128), !dbg !583
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !584, metadata !128), !dbg !585
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %11, metadata !586, metadata !128), !dbg !587
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i32 0, i32 0, !dbg !588
  %13 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !588
  call void @llvm.va_start(i8* %13), !dbg !588
  %14 = load void (i32, i8**)*, void (i32, i8**)** %6, align 8, !dbg !589
  %15 = load i32, i32* %7, align 4, !dbg !590
  %16 = load void (i32, i8**)*, void (i32, i8**)** %8, align 8, !dbg !591
  %17 = load i32, i32* %9, align 4, !dbg !592
  %18 = load i32, i32* %10, align 4, !dbg !593
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i32 0, i32 0, !dbg !594
  call void @cleanup_entry_new(void (i32, i8**)* %14, i32 %15, void (i32, i8**)* %16, i32 %17, i32 %18, %struct.__va_list_tag* %19), !dbg !595
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i32 0, i32 0, !dbg !596
  %21 = bitcast %struct.__va_list_tag* %20 to i8*, !dbg !596
  call void @llvm.va_end(i8* %21), !dbg !596
  ret void, !dbg !597
}

; Function Attrs: nounwind uwtable
define void @pop_cleanup(i32) #0 !dbg !598 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cleanup_entry*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !599, metadata !128), !dbg !600
  call void @llvm.dbg.declare(metadata %struct.cleanup_entry** %3, metadata !601, metadata !128), !dbg !602
  call void @llvm.dbg.declare(metadata i32* %4, metadata !603, metadata !128), !dbg !604
  %5 = load volatile %struct.error_context*, %struct.error_context** @econtext, align 8, !dbg !605
  %6 = getelementptr inbounds %struct.error_context, %struct.error_context* %5, i32 0, i32 4, !dbg !606
  %7 = load %struct.cleanup_entry*, %struct.cleanup_entry** %6, align 8, !dbg !606
  store %struct.cleanup_entry* %7, %struct.cleanup_entry** %3, align 8, !dbg !607
  %8 = load %struct.cleanup_entry*, %struct.cleanup_entry** %3, align 8, !dbg !608
  %9 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %8, i32 0, i32 0, !dbg !609
  %10 = load %struct.cleanup_entry*, %struct.cleanup_entry** %9, align 8, !dbg !609
  %11 = load volatile %struct.error_context*, %struct.error_context** @econtext, align 8, !dbg !610
  %12 = getelementptr inbounds %struct.error_context, %struct.error_context* %11, i32 0, i32 4, !dbg !611
  store %struct.cleanup_entry* %10, %struct.cleanup_entry** %12, align 8, !dbg !612
  store i32 0, i32* %4, align 4, !dbg !613
  br label %13, !dbg !615

; <label>:13:                                     ; preds = %51, %1
  %14 = load i32, i32* %4, align 4, !dbg !616
  %15 = icmp slt i32 %14, 2, !dbg !619
  br i1 %15, label %16, label %54, !dbg !620

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %4, align 4, !dbg !621
  %18 = sext i32 %17 to i64, !dbg !624
  %19 = load %struct.cleanup_entry*, %struct.cleanup_entry** %3, align 8, !dbg !624
  %20 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %19, i32 0, i32 1, !dbg !625
  %21 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %20, i64 0, i64 %18, !dbg !624
  %22 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %21, i32 0, i32 1, !dbg !626
  %23 = load void (i32, i8**)*, void (i32, i8**)** %22, align 8, !dbg !626
  %24 = icmp ne void (i32, i8**)* %23, null, !dbg !624
  br i1 %24, label %25, label %50, !dbg !627

; <label>:25:                                     ; preds = %16
  %26 = load i32, i32* %4, align 4, !dbg !628
  %27 = sext i32 %26 to i64, !dbg !630
  %28 = load %struct.cleanup_entry*, %struct.cleanup_entry** %3, align 8, !dbg !630
  %29 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %28, i32 0, i32 1, !dbg !631
  %30 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %29, i64 0, i64 %27, !dbg !630
  %31 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %30, i32 0, i32 0, !dbg !632
  %32 = load i32, i32* %31, align 8, !dbg !632
  %33 = load i32, i32* %2, align 4, !dbg !633
  %34 = and i32 %32, %33, !dbg !634
  %35 = icmp ne i32 %34, 0, !dbg !634
  br i1 %35, label %36, label %50, !dbg !635

; <label>:36:                                     ; preds = %25
  %37 = load i32, i32* %4, align 4, !dbg !636
  %38 = sext i32 %37 to i64, !dbg !637
  %39 = load %struct.cleanup_entry*, %struct.cleanup_entry** %3, align 8, !dbg !637
  %40 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %39, i32 0, i32 1, !dbg !638
  %41 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %40, i64 0, i64 %38, !dbg !637
  %42 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %41, i32 0, i32 1, !dbg !639
  %43 = load void (i32, i8**)*, void (i32, i8**)** %42, align 8, !dbg !639
  %44 = load %struct.cleanup_entry*, %struct.cleanup_entry** %3, align 8, !dbg !640
  %45 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %44, i32 0, i32 4, !dbg !641
  %46 = load i32, i32* %45, align 8, !dbg !641
  %47 = load %struct.cleanup_entry*, %struct.cleanup_entry** %3, align 8, !dbg !642
  %48 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %47, i32 0, i32 5, !dbg !643
  %49 = getelementptr inbounds [1 x i8*], [1 x i8*]* %48, i32 0, i32 0, !dbg !642
  call void %43(i32 %46, i8** %49), !dbg !637
  br label %50, !dbg !637

; <label>:50:                                     ; preds = %36, %25, %16
  br label %51, !dbg !644

; <label>:51:                                     ; preds = %50
  %52 = load i32, i32* %4, align 4, !dbg !645
  %53 = add nsw i32 %52, 1, !dbg !645
  store i32 %53, i32* %4, align 4, !dbg !645
  br label %13, !dbg !647, !llvm.loop !648

; <label>:54:                                     ; preds = %13
  %55 = load %struct.cleanup_entry*, %struct.cleanup_entry** %3, align 8, !dbg !650
  %56 = icmp ne %struct.cleanup_entry* %55, getelementptr inbounds (%struct.anon.1, %struct.anon.1* @emergency, i32 0, i32 0), !dbg !652
  br i1 %56, label %57, label %60, !dbg !653

; <label>:57:                                     ; preds = %54
  %58 = load %struct.cleanup_entry*, %struct.cleanup_entry** %3, align 8, !dbg !654
  %59 = bitcast %struct.cleanup_entry* %58 to i8*, !dbg !654
  call void @free(i8* %59) #7, !dbg !656
  br label %60, !dbg !656

; <label>:60:                                     ; preds = %57, %54
  ret void, !dbg !657
}

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define internal void @run_cleanups(%struct.error_context*, i32) #0 !dbg !113 {
  %3 = alloca %struct.error_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cleanup_entry*, align 8
  %6 = alloca %struct.cleanup_entry*, align 8
  %7 = alloca %struct.error_context, align 8
  %8 = alloca %struct.error_context*, align 8
  %9 = alloca [1 x %struct.__jmp_buf_tag], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.error_context* %0, %struct.error_context** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.error_context** %3, metadata !658, metadata !128), !dbg !659
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !660, metadata !128), !dbg !661
  call void @llvm.dbg.declare(metadata %struct.cleanup_entry** %5, metadata !662, metadata !128), !dbg !664
  call void @llvm.dbg.declare(metadata %struct.cleanup_entry** %6, metadata !665, metadata !128), !dbg !666
  call void @llvm.dbg.declare(metadata %struct.error_context* %7, metadata !667, metadata !128), !dbg !668
  call void @llvm.dbg.declare(metadata %struct.error_context** %8, metadata !669, metadata !128), !dbg !670
  call void @llvm.dbg.declare(metadata [1 x %struct.__jmp_buf_tag]* %9, metadata !671, metadata !128), !dbg !672
  call void @llvm.dbg.declare(metadata i32* %10, metadata !673, metadata !128), !dbg !674
  call void @llvm.dbg.declare(metadata i32* %11, metadata !675, metadata !128), !dbg !676
  %12 = load %struct.error_context*, %struct.error_context** %3, align 8, !dbg !677
  %13 = getelementptr inbounds %struct.error_context, %struct.error_context* %12, i32 0, i32 3, !dbg !679
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0, !dbg !680
  %15 = load void (i8*, i8*)*, void (i8*, i8*)** %14, align 8, !dbg !680
  %16 = icmp ne void (i8*, i8*)* %15, null, !dbg !677
  br i1 %16, label %17, label %29, !dbg !681

; <label>:17:                                     ; preds = %2
  %18 = load %struct.error_context*, %struct.error_context** %3, align 8, !dbg !682
  %19 = getelementptr inbounds %struct.error_context, %struct.error_context* %18, i32 0, i32 3, !dbg !683
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0, !dbg !684
  %21 = load void (i8*, i8*)*, void (i8*, i8*)** %20, align 8, !dbg !684
  %22 = load %struct.error_context*, %struct.error_context** %3, align 8, !dbg !685
  %23 = getelementptr inbounds %struct.error_context, %struct.error_context* %22, i32 0, i32 5, !dbg !686
  %24 = load i8*, i8** %23, align 8, !dbg !686
  %25 = load %struct.error_context*, %struct.error_context** %3, align 8, !dbg !687
  %26 = getelementptr inbounds %struct.error_context, %struct.error_context* %25, i32 0, i32 3, !dbg !688
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 1, !dbg !689
  %28 = load i8*, i8** %27, align 8, !dbg !689
  call void %21(i8* %24, i8* %28), !dbg !682
  br label %29, !dbg !682

; <label>:29:                                     ; preds = %17, %2
  %30 = load volatile i32, i32* @run_cleanups.preventrecurse, align 4, !dbg !690
  %31 = add nsw i32 %30, 1, !dbg !690
  store volatile i32 %31, i32* @run_cleanups.preventrecurse, align 4, !dbg !690
  %32 = icmp sgt i32 %31, 3, !dbg !692
  br i1 %32, label %33, label %37, !dbg !693

; <label>:33:                                     ; preds = %29
  %34 = load volatile i32, i32* @onerr_abort, align 4, !dbg !694
  %35 = add nsw i32 %34, 1, !dbg !694
  store volatile i32 %35, i32* @onerr_abort, align 4, !dbg !694
  %36 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i32 0, i32 0)) #7, !dbg !696
  call void @print_cleanup_error(i8* %36, i8* null), !dbg !697
  store volatile i32 0, i32* %11, align 4, !dbg !699
  br label %39, !dbg !700

; <label>:37:                                     ; preds = %29
  %38 = load i32, i32* %4, align 4, !dbg !701
  store volatile i32 %38, i32* %11, align 4, !dbg !703
  br label %39

; <label>:39:                                     ; preds = %37, %33
  %40 = load %struct.error_context*, %struct.error_context** %3, align 8, !dbg !704
  %41 = getelementptr inbounds %struct.error_context, %struct.error_context* %40, i32 0, i32 4, !dbg !705
  %42 = load %struct.cleanup_entry*, %struct.cleanup_entry** %41, align 8, !dbg !705
  store volatile %struct.cleanup_entry* %42, %struct.cleanup_entry** %5, align 8, !dbg !706
  %43 = load volatile %struct.error_context*, %struct.error_context** @econtext, align 8, !dbg !707
  store %struct.error_context* %43, %struct.error_context** %8, align 8, !dbg !708
  br label %44, !dbg !709

; <label>:44:                                     ; preds = %116, %39
  %45 = load volatile %struct.cleanup_entry*, %struct.cleanup_entry** %5, align 8, !dbg !710
  %46 = icmp ne %struct.cleanup_entry* %45, null, !dbg !712
  br i1 %46, label %47, label %118, !dbg !712

; <label>:47:                                     ; preds = %44
  store volatile i32 0, i32* %10, align 4, !dbg !713
  br label %48, !dbg !716

; <label>:48:                                     ; preds = %94, %47
  %49 = load volatile i32, i32* %10, align 4, !dbg !717
  %50 = icmp slt i32 %49, 2, !dbg !720
  br i1 %50, label %51, label %97, !dbg !721

; <label>:51:                                     ; preds = %48
  %52 = load volatile i32, i32* %10, align 4, !dbg !722
  %53 = sext i32 %52 to i64, !dbg !725
  %54 = load volatile %struct.cleanup_entry*, %struct.cleanup_entry** %5, align 8, !dbg !725
  %55 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %54, i32 0, i32 1, !dbg !726
  %56 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %55, i64 0, i64 %53, !dbg !725
  %57 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %56, i32 0, i32 1, !dbg !727
  %58 = load void (i32, i8**)*, void (i32, i8**)** %57, align 8, !dbg !727
  %59 = icmp ne void (i32, i8**)* %58, null, !dbg !725
  br i1 %59, label %60, label %93, !dbg !728

; <label>:60:                                     ; preds = %51
  %61 = load volatile i32, i32* %10, align 4, !dbg !729
  %62 = sext i32 %61 to i64, !dbg !731
  %63 = load volatile %struct.cleanup_entry*, %struct.cleanup_entry** %5, align 8, !dbg !731
  %64 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %63, i32 0, i32 1, !dbg !732
  %65 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %64, i64 0, i64 %62, !dbg !731
  %66 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %65, i32 0, i32 0, !dbg !733
  %67 = load i32, i32* %66, align 8, !dbg !733
  %68 = load volatile i32, i32* %11, align 4, !dbg !734
  %69 = and i32 %67, %68, !dbg !735
  %70 = icmp ne i32 %69, 0, !dbg !735
  br i1 %70, label %71, label %93, !dbg !736

; <label>:71:                                     ; preds = %60
  %72 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %9, i32 0, i32 0, !dbg !737
  %73 = call i32 @_setjmp(%struct.__jmp_buf_tag* %72) #13, !dbg !737
  %74 = icmp ne i32 %73, 0, !dbg !737
  br i1 %74, label %75, label %76, !dbg !740

; <label>:75:                                     ; preds = %71
  call void @run_cleanups(%struct.error_context* %7, i32 6), !dbg !741
  br label %91, !dbg !743

; <label>:76:                                     ; preds = %71
  %77 = bitcast %struct.error_context* %7 to i8*, !dbg !744
  call void @llvm.memset.p0i8.i64(i8* %77, i8 0, i64 56, i32 8, i1 false), !dbg !744
  call void @set_error_printer(%struct.error_context* %7, void (i8*, i8*)* @print_cleanup_error, i8* null), !dbg !746
  call void @set_jump_handler(%struct.error_context* %7, [1 x %struct.__jmp_buf_tag]* %9), !dbg !747
  store volatile %struct.error_context* %7, %struct.error_context** @econtext, align 8, !dbg !748
  %78 = load volatile i32, i32* %10, align 4, !dbg !749
  %79 = sext i32 %78 to i64, !dbg !750
  %80 = load volatile %struct.cleanup_entry*, %struct.cleanup_entry** %5, align 8, !dbg !750
  %81 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %80, i32 0, i32 1, !dbg !751
  %82 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %81, i64 0, i64 %79, !dbg !750
  %83 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %82, i32 0, i32 1, !dbg !752
  %84 = load void (i32, i8**)*, void (i32, i8**)** %83, align 8, !dbg !752
  %85 = load volatile %struct.cleanup_entry*, %struct.cleanup_entry** %5, align 8, !dbg !753
  %86 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %85, i32 0, i32 4, !dbg !754
  %87 = load i32, i32* %86, align 8, !dbg !754
  %88 = load volatile %struct.cleanup_entry*, %struct.cleanup_entry** %5, align 8, !dbg !755
  %89 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %88, i32 0, i32 5, !dbg !756
  %90 = getelementptr inbounds [1 x i8*], [1 x i8*]* %89, i32 0, i32 0, !dbg !755
  call void %84(i32 %87, i8** %90), !dbg !750
  br label %91

; <label>:91:                                     ; preds = %76, %75
  %92 = load %struct.error_context*, %struct.error_context** %8, align 8, !dbg !757
  store volatile %struct.error_context* %92, %struct.error_context** @econtext, align 8, !dbg !758
  br label %93, !dbg !759

; <label>:93:                                     ; preds = %91, %60, %51
  br label %94, !dbg !760

; <label>:94:                                     ; preds = %93
  %95 = load volatile i32, i32* %10, align 4, !dbg !761
  %96 = add nsw i32 %95, 1, !dbg !761
  store volatile i32 %96, i32* %10, align 4, !dbg !761
  br label %48, !dbg !763, !llvm.loop !764

; <label>:97:                                     ; preds = %48
  %98 = load volatile %struct.cleanup_entry*, %struct.cleanup_entry** %5, align 8, !dbg !766
  %99 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %98, i32 0, i32 2, !dbg !767
  %100 = load i32, i32* %99, align 8, !dbg !767
  %101 = load volatile i32, i32* %11, align 4, !dbg !768
  %102 = and i32 %101, %100, !dbg !768
  store volatile i32 %102, i32* %11, align 4, !dbg !768
  %103 = load volatile %struct.cleanup_entry*, %struct.cleanup_entry** %5, align 8, !dbg !769
  %104 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %103, i32 0, i32 3, !dbg !770
  %105 = load i32, i32* %104, align 4, !dbg !770
  %106 = load volatile i32, i32* %11, align 4, !dbg !771
  %107 = or i32 %106, %105, !dbg !771
  store volatile i32 %107, i32* %11, align 4, !dbg !771
  %108 = load volatile %struct.cleanup_entry*, %struct.cleanup_entry** %5, align 8, !dbg !772
  %109 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %108, i32 0, i32 0, !dbg !773
  %110 = load %struct.cleanup_entry*, %struct.cleanup_entry** %109, align 8, !dbg !773
  store %struct.cleanup_entry* %110, %struct.cleanup_entry** %6, align 8, !dbg !774
  %111 = load volatile %struct.cleanup_entry*, %struct.cleanup_entry** %5, align 8, !dbg !775
  %112 = icmp ne %struct.cleanup_entry* %111, getelementptr inbounds (%struct.anon.1, %struct.anon.1* @emergency, i32 0, i32 0), !dbg !777
  br i1 %112, label %113, label %116, !dbg !778

; <label>:113:                                    ; preds = %97
  %114 = load volatile %struct.cleanup_entry*, %struct.cleanup_entry** %5, align 8, !dbg !779
  %115 = bitcast %struct.cleanup_entry* %114 to i8*, !dbg !779
  call void @free(i8* %115) #7, !dbg !781
  br label %116, !dbg !781

; <label>:116:                                    ; preds = %113, %97
  %117 = load %struct.cleanup_entry*, %struct.cleanup_entry** %6, align 8, !dbg !782
  store volatile %struct.cleanup_entry* %117, %struct.cleanup_entry** %5, align 8, !dbg !783
  br label %44, !dbg !784, !llvm.loop !786

; <label>:118:                                    ; preds = %44
  %119 = load volatile i32, i32* @run_cleanups.preventrecurse, align 4, !dbg !787
  %120 = add nsw i32 %119, -1, !dbg !787
  store volatile i32 %120, i32* @run_cleanups.preventrecurse, align 4, !dbg !787
  ret void, !dbg !788
}

; Function Attrs: nounwind uwtable
define internal void @error_context_errmsg_free(%struct.error_context*) #0 !dbg !789 {
  %2 = alloca %struct.error_context*, align 8
  store %struct.error_context* %0, %struct.error_context** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.error_context** %2, metadata !792, metadata !128), !dbg !793
  %3 = load %struct.error_context*, %struct.error_context** %2, align 8, !dbg !794
  %4 = getelementptr inbounds %struct.error_context, %struct.error_context* %3, i32 0, i32 5, !dbg !796
  %5 = load i8*, i8** %4, align 8, !dbg !796
  %6 = icmp ne i8* %5, getelementptr inbounds (%struct.anon.1, %struct.anon.1* @emergency, i32 0, i32 2, i32 0), !dbg !797
  br i1 %6, label %7, label %11, !dbg !798

; <label>:7:                                      ; preds = %1
  %8 = load %struct.error_context*, %struct.error_context** %2, align 8, !dbg !799
  %9 = getelementptr inbounds %struct.error_context, %struct.error_context* %8, i32 0, i32 5, !dbg !800
  %10 = load i8*, i8** %9, align 8, !dbg !800
  call void @free(i8* %10) #7, !dbg !801
  br label %11, !dbg !801

; <label>:11:                                     ; preds = %7, %1
  ret void, !dbg !802
}

; Function Attrs: noreturn nounwind uwtable
define void @ohshit(i8*, ...) #6 !dbg !803 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !804, metadata !128), !dbg !805
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !806, metadata !128), !dbg !807
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !808
  %5 = bitcast %struct.__va_list_tag* %4 to i8*, !dbg !808
  call void @llvm.va_start(i8* %5), !dbg !808
  %6 = load i8*, i8** %2, align 8, !dbg !809
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !810
  %8 = call i32 @error_context_errmsg_format(i8* %6, %struct.__va_list_tag* %7), !dbg !811
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !812
  %10 = bitcast %struct.__va_list_tag* %9 to i8*, !dbg !812
  call void @llvm.va_end(i8* %10), !dbg !812
  call void @run_error_handler() #12, !dbg !813
  unreachable, !dbg !813
                                                  ; No predecessors!
  ret void, !dbg !814
}

; Function Attrs: nounwind uwtable
define internal i32 @error_context_errmsg_format(i8*, %struct.__va_list_tag*) #0 !dbg !815 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.__va_list_tag*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !818, metadata !128), !dbg !819
  store %struct.__va_list_tag* %1, %struct.__va_list_tag** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %4, metadata !820, metadata !128), !dbg !821
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !822, metadata !128), !dbg !823
  call void @llvm.dbg.declare(metadata i8** %6, metadata !824, metadata !128), !dbg !825
  store i8* null, i8** %6, align 8, !dbg !825
  call void @llvm.dbg.declare(metadata i32* %7, metadata !826, metadata !128), !dbg !827
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !828
  %9 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8, !dbg !828
  %10 = bitcast %struct.__va_list_tag* %8 to i8*, !dbg !828
  %11 = bitcast %struct.__va_list_tag* %9 to i8*, !dbg !828
  call void @llvm.va_copy(i8* %10, i8* %11), !dbg !828
  %12 = load i8*, i8** %3, align 8, !dbg !829
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !830
  %14 = call i32 @vasprintf(i8** %6, i8* %12, %struct.__va_list_tag* %13) #7, !dbg !831
  store i32 %14, i32* %7, align 4, !dbg !832
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !833
  %16 = bitcast %struct.__va_list_tag* %15 to i8*, !dbg !833
  call void @llvm.va_end(i8* %16), !dbg !833
  %17 = load i32, i32* %7, align 4, !dbg !834
  %18 = icmp sge i32 %17, 0, !dbg !836
  br i1 %18, label %19, label %22, !dbg !837

; <label>:19:                                     ; preds = %2
  %20 = load volatile %struct.error_context*, %struct.error_context** @econtext, align 8, !dbg !838
  %21 = load i8*, i8** %6, align 8, !dbg !839
  call void @error_context_errmsg_set(%struct.error_context* %20, i8* %21), !dbg !840
  br label %22, !dbg !840

; <label>:22:                                     ; preds = %19, %2
  %23 = load i32, i32* %7, align 4, !dbg !841
  %24 = icmp slt i32 %23, 0, !dbg !843
  br i1 %24, label %25, label %34, !dbg !844

; <label>:25:                                     ; preds = %22
  %26 = load i8*, i8** %3, align 8, !dbg !845
  %27 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8, !dbg !847
  %28 = call i32 @vsnprintf(i8* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @emergency, i32 0, i32 2, i32 0), i64 4096, i8* %26, %struct.__va_list_tag* %27) #7, !dbg !848
  store i32 %28, i32* %7, align 4, !dbg !849
  %29 = load i32, i32* %7, align 4, !dbg !850
  %30 = icmp sge i32 %29, 4096, !dbg !852
  br i1 %30, label %31, label %32, !dbg !853

; <label>:31:                                     ; preds = %25
  store i32 -1, i32* %7, align 4, !dbg !854
  br label %32, !dbg !855

; <label>:32:                                     ; preds = %31, %25
  %33 = load volatile %struct.error_context*, %struct.error_context** @econtext, align 8, !dbg !856
  call void @error_context_errmsg_set(%struct.error_context* %33, i8* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @emergency, i32 0, i32 2, i32 0)), !dbg !857
  br label %34, !dbg !858

; <label>:34:                                     ; preds = %32, %22
  %35 = load i32, i32* %7, align 4, !dbg !859
  ret i32 %35, !dbg !860
}

; Function Attrs: noreturn nounwind uwtable
define internal void @run_error_handler() #6 !dbg !861 {
  %1 = load volatile i32, i32* @onerr_abort, align 4, !dbg !862
  %2 = icmp ne i32 %1, 0, !dbg !862
  br i1 %2, label %3, label %8, !dbg !864

; <label>:3:                                      ; preds = %0
  %4 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i32 0, i32 0)) #7, !dbg !865
  %5 = load volatile %struct.error_context*, %struct.error_context** @econtext, align 8, !dbg !867
  %6 = getelementptr inbounds %struct.error_context, %struct.error_context* %5, i32 0, i32 5, !dbg !868
  %7 = load i8*, i8** %6, align 8, !dbg !868
  call void @print_abort_error(i8* %4, i8* %7), !dbg !869
  call void @exit(i32 2) #11, !dbg !871
  unreachable, !dbg !871

; <label>:8:                                      ; preds = %0
  %9 = load volatile %struct.error_context*, %struct.error_context** @econtext, align 8, !dbg !872
  %10 = icmp eq %struct.error_context* %9, null, !dbg !874
  br i1 %10, label %11, label %16, !dbg !875

; <label>:11:                                     ; preds = %8
  %12 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0)) #7, !dbg !876
  %13 = load volatile %struct.error_context*, %struct.error_context** @econtext, align 8, !dbg !878
  %14 = getelementptr inbounds %struct.error_context, %struct.error_context* %13, i32 0, i32 5, !dbg !879
  %15 = load i8*, i8** %14, align 8, !dbg !879
  call void @print_abort_error(i8* %12, i8* %15), !dbg !880
  call void @exit(i32 2) #11, !dbg !882
  unreachable, !dbg !882

; <label>:16:                                     ; preds = %8
  %17 = load volatile %struct.error_context*, %struct.error_context** @econtext, align 8, !dbg !883
  %18 = getelementptr inbounds %struct.error_context, %struct.error_context* %17, i32 0, i32 1, !dbg !885
  %19 = load i32, i32* %18, align 8, !dbg !885
  %20 = icmp eq i32 %19, 0, !dbg !886
  br i1 %20, label %21, label %26, !dbg !887

; <label>:21:                                     ; preds = %16
  %22 = load volatile %struct.error_context*, %struct.error_context** @econtext, align 8, !dbg !888
  %23 = getelementptr inbounds %struct.error_context, %struct.error_context* %22, i32 0, i32 2, !dbg !890
  %24 = bitcast %union.anon* %23 to void ()**, !dbg !891
  %25 = load void ()*, void ()** %24, align 8, !dbg !891
  call void %25(), !dbg !888
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 439, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.run_error_handler, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i32 0, i32 0)) #12, !dbg !892
  unreachable, !dbg !892

; <label>:26:                                     ; preds = %16
  %27 = load volatile %struct.error_context*, %struct.error_context** @econtext, align 8, !dbg !893
  %28 = getelementptr inbounds %struct.error_context, %struct.error_context* %27, i32 0, i32 1, !dbg !895
  %29 = load i32, i32* %28, align 8, !dbg !895
  %30 = icmp eq i32 %29, 1, !dbg !896
  br i1 %30, label %31, label %37, !dbg !897

; <label>:31:                                     ; preds = %26
  %32 = load volatile %struct.error_context*, %struct.error_context** @econtext, align 8, !dbg !898
  %33 = getelementptr inbounds %struct.error_context, %struct.error_context* %32, i32 0, i32 2, !dbg !900
  %34 = bitcast %union.anon* %33 to [1 x %struct.__jmp_buf_tag]**, !dbg !901
  %35 = load [1 x %struct.__jmp_buf_tag]*, [1 x %struct.__jmp_buf_tag]** %34, align 8, !dbg !901
  %36 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %35, i32 0, i32 0, !dbg !902
  call void @longjmp(%struct.__jmp_buf_tag* %36, i32 1) #11, !dbg !903
  unreachable, !dbg !903

; <label>:37:                                     ; preds = %26
  %38 = load volatile %struct.error_context*, %struct.error_context** @econtext, align 8, !dbg !904
  %39 = getelementptr inbounds %struct.error_context, %struct.error_context* %38, i32 0, i32 1, !dbg !906
  %40 = load i32, i32* %39, align 8, !dbg !906
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 443, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.run_error_handler, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), i32 %40) #12, !dbg !907
  unreachable, !dbg !907
                                                  ; No predecessors!
  ret void, !dbg !908
}

; Function Attrs: noreturn nounwind uwtable
define void @ohshitv(i8*, %struct.__va_list_tag*) #6 !dbg !909 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.__va_list_tag*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !912, metadata !128), !dbg !913
  store %struct.__va_list_tag* %1, %struct.__va_list_tag** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %4, metadata !914, metadata !128), !dbg !915
  %5 = load i8*, i8** %3, align 8, !dbg !916
  %6 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8, !dbg !917
  %7 = call i32 @error_context_errmsg_format(i8* %5, %struct.__va_list_tag* %6), !dbg !918
  call void @run_error_handler() #12, !dbg !919
  unreachable, !dbg !919
                                                  ; No predecessors!
  ret void, !dbg !920
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #8

; Function Attrs: nounwind
declare i32 @asprintf(i8**, i8*, ...) #5

; Function Attrs: nounwind
declare i8* @strerror(i32) #5

; Function Attrs: nounwind uwtable
define internal void @error_context_errmsg_set(%struct.error_context*, i8*) #0 !dbg !921 {
  %3 = alloca %struct.error_context*, align 8
  %4 = alloca i8*, align 8
  store %struct.error_context* %0, %struct.error_context** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.error_context** %3, metadata !924, metadata !128), !dbg !925
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !926, metadata !128), !dbg !927
  %5 = load %struct.error_context*, %struct.error_context** %3, align 8, !dbg !928
  call void @error_context_errmsg_free(%struct.error_context* %5), !dbg !929
  %6 = load i8*, i8** %4, align 8, !dbg !930
  %7 = load %struct.error_context*, %struct.error_context** %3, align 8, !dbg !931
  %8 = getelementptr inbounds %struct.error_context, %struct.error_context* %7, i32 0, i32 5, !dbg !932
  store i8* %6, i8** %8, align 8, !dbg !933
  ret void, !dbg !934
}

; Function Attrs: noreturn nounwind uwtable
define void @do_internerr(i8*, i32, i8*, i8*, ...) #6 !dbg !935 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !938, metadata !128), !dbg !939
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !940, metadata !128), !dbg !941
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !942, metadata !128), !dbg !943
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !944, metadata !128), !dbg !945
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %9, metadata !946, metadata !128), !dbg !947
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !948
  %11 = bitcast %struct.__va_list_tag* %10 to i8*, !dbg !948
  call void @llvm.va_start(i8* %11), !dbg !948
  %12 = load i8*, i8** %8, align 8, !dbg !949
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !950
  %14 = call i32 @error_context_errmsg_format(i8* %12, %struct.__va_list_tag* %13), !dbg !951
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !952
  %16 = bitcast %struct.__va_list_tag* %15 to i8*, !dbg !952
  call void @llvm.va_end(i8* %16), !dbg !952
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !953
  %18 = call i8* @color_get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !954
  %19 = call i8* @dpkg_get_progname(), !dbg !955
  %20 = load i8*, i8** %5, align 8, !dbg !956
  %21 = load i32, i32* %6, align 4, !dbg !957
  %22 = load i8*, i8** %7, align 8, !dbg !958
  %23 = call i8* @color_reset(), !dbg !959
  %24 = call i8* @color_get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)), !dbg !961
  %25 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)) #7, !dbg !962
  %26 = call i8* @color_reset(), !dbg !963
  %27 = load volatile %struct.error_context*, %struct.error_context** @econtext, align 8, !dbg !965
  %28 = getelementptr inbounds %struct.error_context, %struct.error_context* %27, i32 0, i32 5, !dbg !966
  %29 = load i8*, i8** %28, align 8, !dbg !966
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* %18, i8* %19, i8* %20, i32 %21, i8* %22, i8* %23, i8* %24, i8* %25, i8* %26, i8* %29), !dbg !967
  call void @abort() #11, !dbg !968
  unreachable, !dbg !968
                                                  ; No predecessors!
  ret void, !dbg !969
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #7

; Function Attrs: nounwind uwtable
define internal void @print_cleanup_error(i8*, i8*) #0 !dbg !970 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !971, metadata !128), !dbg !972
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !973, metadata !128), !dbg !974
  %5 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0)) #7, !dbg !975
  %6 = load i8*, i8** %3, align 8, !dbg !976
  call void @print_abort_error(i8* %5, i8* %6), !dbg !977
  ret void, !dbg !979
}

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #10

; Function Attrs: nounwind uwtable
define internal void @print_abort_error(i8*, i8*) #0 !dbg !980 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !983, metadata !128), !dbg !984
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !985, metadata !128), !dbg !986
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !987
  %6 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0)) #7, !dbg !988
  %7 = call i8* @color_get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !989
  %8 = call i8* @dpkg_get_progname(), !dbg !990
  %9 = call i8* @color_reset(), !dbg !992
  %10 = call i8* @color_get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)), !dbg !994
  %11 = load i8*, i8** %3, align 8, !dbg !995
  %12 = call i8* @color_reset(), !dbg !996
  %13 = load i8*, i8** %4, align 8, !dbg !997
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i8* %11, i8* %12, i8* %13), !dbg !998
  ret void, !dbg !999
}

; Function Attrs: nounwind
declare i32 @vasprintf(i8**, i8*, %struct.__va_list_tag*) #5

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #5

; Function Attrs: noreturn nounwind
declare void @longjmp(%struct.__jmp_buf_tag*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { noreturn }
attributes #13 = { nounwind returns_twice }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!117, !118}
!llvm.ident = !{!119}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !94, globals: !95)
!1 = !DIFile(filename: "[inter]lib--dpkg--ehandle.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 41, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/ehandle.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "ehflag_normaltidy", value: 1)
!7 = !DIEnumerator(name: "ehflag_bombout", value: 2)
!8 = !DIEnumerator(name: "ehflag_recursiveerror", value: 4)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !11, file: !10, line: 59, size: 32, align: 32, elements: !91)
!10 = !DIFile(filename: "ehandle.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "error_context", file: !10, line: 56, size: 448, align: 64, elements: !12)
!12 = !{!13, !15, !16, !52, !66, !89}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !11, file: !10, line: 57, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !11, file: !10, line: 62, baseType: !9, size: 32, align: 32, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !11, file: !10, line: 67, baseType: !17, size: 64, align: 64, offset: 128)
!17 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !11, file: !10, line: 64, size: 64, align: 64, elements: !18)
!18 = !{!19, !24}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !17, file: !10, line: 65, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "error_handler_func", file: !4, line: 47, baseType: !22)
!22 = !DISubroutineType(types: !23)
!23 = !{null}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !17, file: !10, line: 66, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "jmp_buf", file: !27, line: 48, baseType: !28)
!27 = !DIFile(filename: "/usr/include/setjmp.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 1600, align: 64, elements: !50)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__jmp_buf_tag", file: !27, line: 34, size: 1600, align: 64, elements: !30)
!30 = !{!31, !38, !40}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "__jmpbuf", scope: !29, file: !27, line: 40, baseType: !32, size: 512, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__jmp_buf", file: !33, line: 31, baseType: !34)
!33 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/setjmp.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 512, align: 64, elements: !36)
!35 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!36 = !{!37}
!37 = !DISubrange(count: 8)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "__mask_was_saved", scope: !29, file: !27, line: 41, baseType: !39, size: 32, align: 32, offset: 512)
!39 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "__saved_mask", scope: !29, file: !27, line: 42, baseType: !41, size: 1024, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !42, line: 30, baseType: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !42, line: 27, size: 1024, align: 64, elements: !44)
!44 = !{!45}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !43, file: !42, line: 29, baseType: !46, size: 1024, align: 64)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1024, align: 64, elements: !48)
!47 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!48 = !{!49}
!49 = !DISubrange(count: 16)
!50 = !{!51}
!51 = !DISubrange(count: 1)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "printer", scope: !11, file: !10, line: 72, baseType: !53, size: 128, align: 64, offset: 192)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !11, file: !10, line: 69, size: 128, align: 64, elements: !54)
!54 = !{!55, !65}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !53, file: !10, line: 70, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "error_printer_func", file: !4, line: 48, baseType: !58)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !60, !63}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !53, file: !10, line: 71, baseType: !63, size: 64, align: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "cleanups", scope: !11, file: !10, line: 74, baseType: !67, size: 64, align: 64, offset: 320)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cleanup_entry", file: !10, line: 45, size: 512, align: 64, elements: !69)
!69 = !{!70, !71, !84, !85, !86, !87}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !68, file: !10, line: 46, baseType: !67, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !68, file: !10, line: 50, baseType: !72, size: 256, align: 64, offset: 64)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 256, align: 64, elements: !82)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !68, file: !10, line: 47, size: 128, align: 64, elements: !74)
!74 = !{!75, !76}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !73, file: !10, line: 48, baseType: !39, size: 32, align: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !73, file: !10, line: 49, baseType: !77, size: 64, align: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !39, !80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!82 = !{!83}
!83 = !DISubrange(count: 2)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "cpmask", scope: !68, file: !10, line: 51, baseType: !39, size: 32, align: 32, offset: 320)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "cpvalue", scope: !68, file: !10, line: 51, baseType: !39, size: 32, align: 32, offset: 352)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !68, file: !10, line: 52, baseType: !39, size: 32, align: 32, offset: 384)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !68, file: !10, line: 53, baseType: !88, size: 64, align: 64, offset: 448)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, align: 64, elements: !50)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "errmsg", scope: !11, file: !10, line: 76, baseType: !90, size: 64, align: 64, offset: 384)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!91 = !{!92, !93}
!92 = !DIEnumerator(name: "HANDLER_TYPE_FUNC", value: 0)
!93 = !DIEnumerator(name: "HANDLER_TYPE_JUMP", value: 1)
!94 = !{!81, !39}
!95 = !{!96, !98, !110, !112}
!96 = distinct !DIGlobalVariable(name: "onerr_abort", scope: !0, file: !10, line: 41, type: !97, isLocal: false, isDefinition: true, variable: i32* @onerr_abort)
!97 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!98 = distinct !DIGlobalVariable(name: "emergency", scope: !0, file: !10, line: 102, type: !99, isLocal: true, isDefinition: true, variable: %struct.anon.1* @emergency)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 87, size: 34560, align: 64, elements: !100)
!100 = !{!101, !102, !106}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ce", scope: !99, file: !10, line: 88, baseType: !68, size: 512, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !99, file: !10, line: 89, baseType: !103, size: 1280, align: 64, offset: 512)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 1280, align: 64, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 20)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "errmsg", scope: !99, file: !10, line: 101, baseType: !107, size: 32768, align: 8, offset: 1792)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 32768, align: 8, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 4096)
!110 = distinct !DIGlobalVariable(name: "econtext", scope: !0, file: !10, line: 79, type: !111, isLocal: true, isDefinition: true, variable: %struct.error_context** @econtext)
!111 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!112 = distinct !DIGlobalVariable(name: "preventrecurse", scope: !113, file: !10, line: 258, type: !97, isLocal: true, isDefinition: true, variable: i32* @run_cleanups.preventrecurse)
!113 = distinct !DISubprogram(name: "run_cleanups", scope: !10, file: !10, line: 256, type: !114, isLocal: true, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !14, !39}
!116 = !{}
!117 = !{i32 2, !"Dwarf Version", i32 4}
!118 = !{i32 2, !"Debug Info Version", i32 3}
!119 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!120 = distinct !DISubprogram(name: "catch_fatal_error", scope: !10, file: !10, line: 111, type: !22, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!121 = !DILocation(line: 113, column: 3, scope: !120)
!122 = !DILocation(line: 114, column: 3, scope: !120)
!123 = !DILocation(line: 115, column: 1, scope: !120)
!124 = distinct !DISubprogram(name: "pop_error_context", scope: !10, file: !10, line: 405, type: !125, isLocal: false, isDefinition: true, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !39}
!127 = !DILocalVariable(name: "flagset", arg: 1, scope: !124, file: !10, line: 405, type: !39)
!128 = !DIExpression()
!129 = !DILocation(line: 405, column: 23, scope: !124)
!130 = !DILocalVariable(name: "tecp", scope: !124, file: !10, line: 407, type: !14)
!131 = !DILocation(line: 407, column: 25, scope: !124)
!132 = !DILocation(line: 409, column: 10, scope: !124)
!133 = !DILocation(line: 409, column: 8, scope: !124)
!134 = !DILocation(line: 410, column: 14, scope: !124)
!135 = !DILocation(line: 410, column: 20, scope: !124)
!136 = !DILocation(line: 410, column: 12, scope: !124)
!137 = !DILocation(line: 413, column: 7, scope: !138)
!138 = distinct !DILexicalBlock(scope: !124, file: !10, line: 413, column: 7)
!139 = !DILocation(line: 413, column: 15, scope: !138)
!140 = !DILocation(line: 413, column: 7, scope: !124)
!141 = !DILocation(line: 414, column: 23, scope: !138)
!142 = !DILocation(line: 414, column: 5, scope: !138)
!143 = !DILocation(line: 415, column: 16, scope: !124)
!144 = !DILocation(line: 415, column: 22, scope: !124)
!145 = !DILocation(line: 415, column: 3, scope: !124)
!146 = !DILocation(line: 417, column: 29, scope: !124)
!147 = !DILocation(line: 417, column: 3, scope: !124)
!148 = !DILocation(line: 418, column: 8, scope: !124)
!149 = !DILocation(line: 418, column: 3, scope: !124)
!150 = !DILocation(line: 419, column: 1, scope: !124)
!151 = distinct !DISubprogram(name: "print_fatal_error", scope: !10, file: !10, line: 118, type: !58, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!152 = !DILocalVariable(name: "emsg", arg: 1, scope: !151, file: !10, line: 118, type: !60)
!153 = !DILocation(line: 118, column: 31, scope: !151)
!154 = !DILocalVariable(name: "data", arg: 2, scope: !151, file: !10, line: 118, type: !63)
!155 = !DILocation(line: 118, column: 49, scope: !151)
!156 = !DILocation(line: 120, column: 10, scope: !151)
!157 = !DILocation(line: 121, column: 11, scope: !151)
!158 = !DILocation(line: 121, column: 31, scope: !159)
!159 = !DILexicalBlockFile(scope: !151, file: !10, discriminator: 1)
!160 = !DILocation(line: 121, column: 52, scope: !161)
!161 = !DILexicalBlockFile(scope: !151, file: !10, discriminator: 2)
!162 = !DILocation(line: 122, column: 11, scope: !151)
!163 = !DILocation(line: 122, column: 34, scope: !159)
!164 = !DILocation(line: 122, column: 46, scope: !161)
!165 = !DILocation(line: 122, column: 61, scope: !151)
!166 = !DILocation(line: 120, column: 3, scope: !151)
!167 = !DILocation(line: 123, column: 1, scope: !151)
!168 = distinct !DISubprogram(name: "color_reset", scope: !169, file: !169, line: 78, type: !170, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!169 = !DIFile(filename: "../../lib/dpkg/color.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!170 = !DISubroutineType(types: !171)
!171 = !{!60}
!172 = !DILocation(line: 80, column: 9, scope: !168)
!173 = !DILocation(line: 80, column: 2, scope: !168)
!174 = distinct !DISubprogram(name: "push_error_context_func", scope: !10, file: !10, line: 218, type: !175, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !20, !56, !63}
!177 = !DILocalVariable(name: "handler", arg: 1, scope: !174, file: !10, line: 218, type: !20)
!178 = !DILocation(line: 218, column: 45, scope: !174)
!179 = !DILocalVariable(name: "printer", arg: 2, scope: !174, file: !10, line: 219, type: !56)
!180 = !DILocation(line: 219, column: 45, scope: !174)
!181 = !DILocalVariable(name: "printer_data", arg: 3, scope: !174, file: !10, line: 220, type: !63)
!182 = !DILocation(line: 220, column: 37, scope: !174)
!183 = !DILocalVariable(name: "ec", scope: !174, file: !10, line: 222, type: !14)
!184 = !DILocation(line: 222, column: 25, scope: !174)
!185 = !DILocation(line: 224, column: 8, scope: !174)
!186 = !DILocation(line: 224, column: 6, scope: !174)
!187 = !DILocation(line: 225, column: 21, scope: !174)
!188 = !DILocation(line: 225, column: 25, scope: !174)
!189 = !DILocation(line: 225, column: 34, scope: !174)
!190 = !DILocation(line: 225, column: 3, scope: !174)
!191 = !DILocation(line: 226, column: 20, scope: !174)
!192 = !DILocation(line: 226, column: 24, scope: !174)
!193 = !DILocation(line: 226, column: 3, scope: !174)
!194 = !DILocation(line: 227, column: 15, scope: !174)
!195 = !DILocation(line: 228, column: 1, scope: !174)
!196 = distinct !DISubprogram(name: "error_context_new", scope: !10, file: !10, line: 134, type: !197, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!197 = !DISubroutineType(types: !198)
!198 = !{!14}
!199 = !DILocalVariable(name: "necp", scope: !196, file: !10, line: 136, type: !14)
!200 = !DILocation(line: 136, column: 25, scope: !196)
!201 = !DILocation(line: 138, column: 10, scope: !196)
!202 = !DILocation(line: 138, column: 8, scope: !196)
!203 = !DILocation(line: 139, column: 8, scope: !204)
!204 = distinct !DILexicalBlock(scope: !196, file: !10, line: 139, column: 7)
!205 = !DILocation(line: 139, column: 7, scope: !196)
!206 = !DILocation(line: 140, column: 12, scope: !204)
!207 = !DILocation(line: 140, column: 5, scope: !208)
!208 = !DILexicalBlockFile(scope: !204, file: !10, discriminator: 1)
!209 = !DILocation(line: 140, column: 5, scope: !204)
!210 = !DILocation(line: 141, column: 15, scope: !196)
!211 = !DILocation(line: 141, column: 3, scope: !196)
!212 = !DILocation(line: 141, column: 9, scope: !196)
!213 = !DILocation(line: 141, column: 13, scope: !196)
!214 = !DILocation(line: 142, column: 3, scope: !196)
!215 = !DILocation(line: 142, column: 9, scope: !196)
!216 = !DILocation(line: 142, column: 17, scope: !196)
!217 = !DILocation(line: 143, column: 3, scope: !196)
!218 = !DILocation(line: 143, column: 9, scope: !196)
!219 = !DILocation(line: 143, column: 16, scope: !196)
!220 = !DILocation(line: 144, column: 13, scope: !196)
!221 = !DILocation(line: 144, column: 11, scope: !196)
!222 = !DILocation(line: 146, column: 10, scope: !196)
!223 = !DILocation(line: 146, column: 3, scope: !196)
!224 = distinct !DISubprogram(name: "set_error_printer", scope: !10, file: !10, line: 150, type: !225, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !14, !56, !63}
!227 = !DILocalVariable(name: "ec", arg: 1, scope: !224, file: !10, line: 150, type: !14)
!228 = !DILocation(line: 150, column: 41, scope: !224)
!229 = !DILocalVariable(name: "func", arg: 2, scope: !224, file: !10, line: 150, type: !56)
!230 = !DILocation(line: 150, column: 65, scope: !224)
!231 = !DILocalVariable(name: "data", arg: 3, scope: !224, file: !10, line: 151, type: !63)
!232 = !DILocation(line: 151, column: 31, scope: !224)
!233 = !DILocation(line: 153, column: 22, scope: !224)
!234 = !DILocation(line: 153, column: 3, scope: !224)
!235 = !DILocation(line: 153, column: 7, scope: !224)
!236 = !DILocation(line: 153, column: 15, scope: !224)
!237 = !DILocation(line: 153, column: 20, scope: !224)
!238 = !DILocation(line: 154, column: 22, scope: !224)
!239 = !DILocation(line: 154, column: 3, scope: !224)
!240 = !DILocation(line: 154, column: 7, scope: !224)
!241 = !DILocation(line: 154, column: 15, scope: !224)
!242 = !DILocation(line: 154, column: 20, scope: !224)
!243 = !DILocation(line: 155, column: 1, scope: !224)
!244 = distinct !DISubprogram(name: "set_func_handler", scope: !10, file: !10, line: 158, type: !245, isLocal: true, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !14, !20}
!247 = !DILocalVariable(name: "ec", arg: 1, scope: !244, file: !10, line: 158, type: !14)
!248 = !DILocation(line: 158, column: 40, scope: !244)
!249 = !DILocalVariable(name: "func", arg: 2, scope: !244, file: !10, line: 158, type: !20)
!250 = !DILocation(line: 158, column: 64, scope: !244)
!251 = !DILocation(line: 160, column: 3, scope: !244)
!252 = !DILocation(line: 160, column: 7, scope: !244)
!253 = !DILocation(line: 160, column: 20, scope: !244)
!254 = !DILocation(line: 161, column: 22, scope: !244)
!255 = !DILocation(line: 161, column: 3, scope: !244)
!256 = !DILocation(line: 161, column: 7, scope: !244)
!257 = !DILocation(line: 161, column: 15, scope: !244)
!258 = !DILocation(line: 161, column: 20, scope: !244)
!259 = !DILocation(line: 162, column: 1, scope: !244)
!260 = distinct !DISubprogram(name: "push_error_context_jump", scope: !10, file: !10, line: 231, type: !261, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !25, !56, !63}
!263 = !DILocalVariable(name: "jumper", arg: 1, scope: !260, file: !10, line: 231, type: !25)
!264 = !DILocation(line: 231, column: 34, scope: !260)
!265 = !DILocalVariable(name: "printer", arg: 2, scope: !260, file: !10, line: 232, type: !56)
!266 = !DILocation(line: 232, column: 45, scope: !260)
!267 = !DILocalVariable(name: "printer_data", arg: 3, scope: !260, file: !10, line: 233, type: !63)
!268 = !DILocation(line: 233, column: 37, scope: !260)
!269 = !DILocalVariable(name: "ec", scope: !260, file: !10, line: 235, type: !14)
!270 = !DILocation(line: 235, column: 25, scope: !260)
!271 = !DILocation(line: 237, column: 8, scope: !260)
!272 = !DILocation(line: 237, column: 6, scope: !260)
!273 = !DILocation(line: 238, column: 21, scope: !260)
!274 = !DILocation(line: 238, column: 25, scope: !260)
!275 = !DILocation(line: 238, column: 34, scope: !260)
!276 = !DILocation(line: 238, column: 3, scope: !260)
!277 = !DILocation(line: 239, column: 20, scope: !260)
!278 = !DILocation(line: 239, column: 24, scope: !260)
!279 = !DILocation(line: 239, column: 3, scope: !260)
!280 = !DILocation(line: 240, column: 15, scope: !260)
!281 = !DILocation(line: 241, column: 1, scope: !260)
!282 = distinct !DISubprogram(name: "set_jump_handler", scope: !10, file: !10, line: 165, type: !283, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !14, !25}
!285 = !DILocalVariable(name: "ec", arg: 1, scope: !282, file: !10, line: 165, type: !14)
!286 = !DILocation(line: 165, column: 40, scope: !282)
!287 = !DILocalVariable(name: "jump", arg: 2, scope: !282, file: !10, line: 165, type: !25)
!288 = !DILocation(line: 165, column: 53, scope: !282)
!289 = !DILocation(line: 167, column: 3, scope: !282)
!290 = !DILocation(line: 167, column: 7, scope: !282)
!291 = !DILocation(line: 167, column: 20, scope: !282)
!292 = !DILocation(line: 168, column: 22, scope: !282)
!293 = !DILocation(line: 168, column: 3, scope: !282)
!294 = !DILocation(line: 168, column: 7, scope: !282)
!295 = !DILocation(line: 168, column: 15, scope: !282)
!296 = !DILocation(line: 168, column: 20, scope: !282)
!297 = !DILocation(line: 169, column: 1, scope: !282)
!298 = distinct !DISubprogram(name: "push_error_context", scope: !10, file: !10, line: 244, type: !22, isLocal: false, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!299 = !DILocation(line: 246, column: 3, scope: !298)
!300 = !DILocation(line: 247, column: 1, scope: !298)
!301 = distinct !DISubprogram(name: "push_checkpoint", scope: !10, file: !10, line: 310, type: !302, isLocal: false, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !39, !39}
!304 = !DILocalVariable(name: "mask", arg: 1, scope: !301, file: !10, line: 310, type: !39)
!305 = !DILocation(line: 310, column: 26, scope: !301)
!306 = !DILocalVariable(name: "value", arg: 2, scope: !301, file: !10, line: 310, type: !39)
!307 = !DILocation(line: 310, column: 36, scope: !301)
!308 = !DILocalVariable(name: "cep", scope: !301, file: !10, line: 311, type: !67)
!309 = !DILocation(line: 311, column: 25, scope: !301)
!310 = !DILocalVariable(name: "i", scope: !301, file: !10, line: 312, type: !39)
!311 = !DILocation(line: 312, column: 7, scope: !301)
!312 = !DILocation(line: 314, column: 9, scope: !301)
!313 = !DILocation(line: 314, column: 7, scope: !301)
!314 = !DILocation(line: 315, column: 7, scope: !315)
!315 = distinct !DILexicalBlock(scope: !301, file: !10, line: 315, column: 7)
!316 = !DILocation(line: 315, column: 11, scope: !315)
!317 = !DILocation(line: 315, column: 7, scope: !301)
!318 = !DILocation(line: 316, column: 16, scope: !319)
!319 = distinct !DILexicalBlock(scope: !315, file: !10, line: 315, column: 19)
!320 = !DILocation(line: 317, column: 12, scope: !319)
!321 = !DILocation(line: 317, column: 5, scope: !322)
!322 = !DILexicalBlockFile(scope: !319, file: !10, discriminator: 1)
!323 = !DILocation(line: 317, column: 5, scope: !319)
!324 = !DILocation(line: 320, column: 9, scope: !325)
!325 = distinct !DILexicalBlock(scope: !301, file: !10, line: 320, column: 3)
!326 = !DILocation(line: 320, column: 8, scope: !325)
!327 = !DILocation(line: 320, column: 13, scope: !328)
!328 = !DILexicalBlockFile(scope: !329, file: !10, discriminator: 1)
!329 = distinct !DILexicalBlock(scope: !325, file: !10, line: 320, column: 3)
!330 = !DILocation(line: 320, column: 14, scope: !328)
!331 = !DILocation(line: 320, column: 3, scope: !328)
!332 = !DILocation(line: 320, column: 36, scope: !333)
!333 = !DILexicalBlockFile(scope: !334, file: !10, discriminator: 2)
!334 = distinct !DILexicalBlock(scope: !329, file: !10, line: 320, column: 23)
!335 = !DILocation(line: 320, column: 25, scope: !333)
!336 = !DILocation(line: 320, column: 30, scope: !333)
!337 = !DILocation(line: 320, column: 39, scope: !333)
!338 = !DILocation(line: 320, column: 43, scope: !333)
!339 = !DILocation(line: 320, column: 65, scope: !333)
!340 = !DILocation(line: 320, column: 54, scope: !333)
!341 = !DILocation(line: 320, column: 59, scope: !333)
!342 = !DILocation(line: 320, column: 68, scope: !333)
!343 = !DILocation(line: 320, column: 72, scope: !333)
!344 = !DILocation(line: 320, column: 76, scope: !333)
!345 = !DILocation(line: 320, column: 19, scope: !346)
!346 = !DILexicalBlockFile(scope: !329, file: !10, discriminator: 3)
!347 = !DILocation(line: 320, column: 3, scope: !346)
!348 = distinct !{!348, !349}
!349 = !DILocation(line: 320, column: 3, scope: !301)
!350 = !DILocation(line: 321, column: 16, scope: !301)
!351 = !DILocation(line: 321, column: 3, scope: !301)
!352 = !DILocation(line: 321, column: 8, scope: !301)
!353 = !DILocation(line: 321, column: 14, scope: !301)
!354 = !DILocation(line: 321, column: 36, scope: !301)
!355 = !DILocation(line: 321, column: 22, scope: !301)
!356 = !DILocation(line: 321, column: 27, scope: !301)
!357 = !DILocation(line: 321, column: 34, scope: !301)
!358 = !DILocation(line: 322, column: 3, scope: !301)
!359 = !DILocation(line: 322, column: 8, scope: !301)
!360 = !DILocation(line: 322, column: 12, scope: !301)
!361 = !DILocation(line: 322, column: 17, scope: !301)
!362 = !DILocation(line: 322, column: 22, scope: !301)
!363 = !DILocation(line: 322, column: 29, scope: !301)
!364 = !DILocation(line: 323, column: 14, scope: !301)
!365 = !DILocation(line: 323, column: 24, scope: !301)
!366 = !DILocation(line: 323, column: 3, scope: !301)
!367 = !DILocation(line: 323, column: 8, scope: !301)
!368 = !DILocation(line: 323, column: 12, scope: !301)
!369 = !DILocation(line: 324, column: 23, scope: !301)
!370 = !DILocation(line: 324, column: 3, scope: !301)
!371 = !DILocation(line: 324, column: 13, scope: !301)
!372 = !DILocation(line: 324, column: 21, scope: !301)
!373 = !DILocation(line: 325, column: 1, scope: !301)
!374 = distinct !DISubprogram(name: "ohshite", scope: !10, file: !10, line: 465, type: !375, isLocal: false, isDefinition: true, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !60, null}
!377 = !DILocalVariable(name: "fmt", arg: 1, scope: !374, file: !10, line: 465, type: !60)
!378 = !DILocation(line: 465, column: 26, scope: !374)
!379 = !DILocalVariable(name: "e", scope: !374, file: !10, line: 466, type: !39)
!380 = !DILocation(line: 466, column: 7, scope: !374)
!381 = !DILocalVariable(name: "rc", scope: !374, file: !10, line: 466, type: !39)
!382 = !DILocation(line: 466, column: 10, scope: !374)
!383 = !DILocalVariable(name: "args", scope: !374, file: !10, line: 467, type: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !385, line: 98, baseType: !386)
!385 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !385, line: 40, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 369, baseType: !388)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 192, align: 64, elements: !50)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 369, size: 192, align: 64, elements: !390)
!390 = !{!391, !393, !394, !395}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !389, file: !1, line: 369, baseType: !392, size: 32, align: 32)
!392 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !389, file: !1, line: 369, baseType: !392, size: 32, align: 32, offset: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !389, file: !1, line: 369, baseType: !81, size: 64, align: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !389, file: !1, line: 369, baseType: !81, size: 64, align: 64, offset: 128)
!396 = !DILocation(line: 467, column: 11, scope: !374)
!397 = !DILocation(line: 469, column: 6, scope: !374)
!398 = !DILocation(line: 469, column: 5, scope: !374)
!399 = !DILocation(line: 469, column: 4, scope: !374)
!400 = !DILocation(line: 472, column: 2, scope: !374)
!401 = !DILocation(line: 473, column: 36, scope: !374)
!402 = !DILocation(line: 473, column: 41, scope: !374)
!403 = !DILocation(line: 473, column: 8, scope: !374)
!404 = !DILocation(line: 473, column: 6, scope: !374)
!405 = !DILocation(line: 474, column: 2, scope: !374)
!406 = !DILocation(line: 479, column: 7, scope: !407)
!407 = distinct !DILexicalBlock(scope: !374, file: !10, line: 479, column: 7)
!408 = !DILocation(line: 479, column: 10, scope: !407)
!409 = !DILocation(line: 479, column: 7, scope: !374)
!410 = !DILocalVariable(name: "errmsg", scope: !411, file: !10, line: 480, type: !90)
!411 = distinct !DILexicalBlock(scope: !407, file: !10, line: 479, column: 15)
!412 = !DILocation(line: 480, column: 11, scope: !411)
!413 = !DILocation(line: 482, column: 38, scope: !411)
!414 = !DILocation(line: 482, column: 48, scope: !411)
!415 = !DILocation(line: 482, column: 65, scope: !411)
!416 = !DILocation(line: 482, column: 56, scope: !411)
!417 = !DILocation(line: 482, column: 10, scope: !418)
!418 = !DILexicalBlockFile(scope: !411, file: !10, discriminator: 1)
!419 = !DILocation(line: 482, column: 8, scope: !411)
!420 = !DILocation(line: 483, column: 9, scope: !421)
!421 = distinct !DILexicalBlock(scope: !411, file: !10, line: 483, column: 9)
!422 = !DILocation(line: 483, column: 12, scope: !421)
!423 = !DILocation(line: 483, column: 9, scope: !411)
!424 = !DILocation(line: 484, column: 32, scope: !421)
!425 = !DILocation(line: 484, column: 42, scope: !421)
!426 = !DILocation(line: 484, column: 7, scope: !421)
!427 = !DILocation(line: 485, column: 3, scope: !411)
!428 = !DILocation(line: 487, column: 3, scope: !374)
!429 = !DILocation(line: 488, column: 1, scope: !374)
!430 = distinct !DISubprogram(name: "push_cleanup", scope: !10, file: !10, line: 366, type: !431, isLocal: false, isDefinition: true, scopeLine: 368, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !77, !39, !392, null}
!433 = !DILocalVariable(name: "call", arg: 1, scope: !430, file: !10, line: 366, type: !77)
!434 = !DILocation(line: 366, column: 21, scope: !430)
!435 = !DILocalVariable(name: "mask", arg: 2, scope: !430, file: !10, line: 366, type: !39)
!436 = !DILocation(line: 366, column: 55, scope: !430)
!437 = !DILocalVariable(name: "nargs", arg: 3, scope: !430, file: !10, line: 367, type: !392)
!438 = !DILocation(line: 367, column: 27, scope: !430)
!439 = !DILocalVariable(name: "args", scope: !430, file: !10, line: 369, type: !384)
!440 = !DILocation(line: 369, column: 11, scope: !430)
!441 = !DILocation(line: 371, column: 2, scope: !430)
!442 = !DILocation(line: 372, column: 21, scope: !430)
!443 = !DILocation(line: 372, column: 27, scope: !430)
!444 = !DILocation(line: 372, column: 41, scope: !430)
!445 = !DILocation(line: 372, column: 48, scope: !430)
!446 = !DILocation(line: 372, column: 3, scope: !430)
!447 = !DILocation(line: 373, column: 2, scope: !430)
!448 = !DILocation(line: 374, column: 1, scope: !430)
!449 = distinct !DISubprogram(name: "cleanup_entry_new", scope: !10, file: !10, line: 328, type: !450, isLocal: true, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !77, !39, !77, !39, !392, !452}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!453 = !DILocalVariable(name: "call1", arg: 1, scope: !449, file: !10, line: 328, type: !77)
!454 = !DILocation(line: 328, column: 26, scope: !449)
!455 = !DILocalVariable(name: "mask1", arg: 2, scope: !449, file: !10, line: 328, type: !39)
!456 = !DILocation(line: 328, column: 61, scope: !449)
!457 = !DILocalVariable(name: "call2", arg: 3, scope: !449, file: !10, line: 329, type: !77)
!458 = !DILocation(line: 329, column: 26, scope: !449)
!459 = !DILocalVariable(name: "mask2", arg: 4, scope: !449, file: !10, line: 329, type: !39)
!460 = !DILocation(line: 329, column: 61, scope: !449)
!461 = !DILocalVariable(name: "nargs", arg: 5, scope: !449, file: !10, line: 330, type: !392)
!462 = !DILocation(line: 330, column: 32, scope: !449)
!463 = !DILocalVariable(name: "vargs", arg: 6, scope: !449, file: !10, line: 330, type: !452)
!464 = !DILocation(line: 330, column: 47, scope: !449)
!465 = !DILocalVariable(name: "cep", scope: !449, file: !10, line: 332, type: !67)
!466 = !DILocation(line: 332, column: 25, scope: !449)
!467 = !DILocalVariable(name: "argv", scope: !449, file: !10, line: 333, type: !80)
!468 = !DILocation(line: 333, column: 10, scope: !449)
!469 = !DILocalVariable(name: "e", scope: !449, file: !10, line: 334, type: !39)
!470 = !DILocation(line: 334, column: 7, scope: !449)
!471 = !DILocalVariable(name: "args", scope: !449, file: !10, line: 335, type: !384)
!472 = !DILocation(line: 335, column: 11, scope: !449)
!473 = !DILocation(line: 337, column: 14, scope: !449)
!474 = !DILocation(line: 339, column: 49, scope: !449)
!475 = !DILocation(line: 339, column: 55, scope: !449)
!476 = !DILocation(line: 339, column: 48, scope: !449)
!477 = !DILocation(line: 339, column: 46, scope: !449)
!478 = !DILocation(line: 339, column: 29, scope: !449)
!479 = !DILocation(line: 339, column: 9, scope: !449)
!480 = !DILocation(line: 339, column: 7, scope: !449)
!481 = !DILocation(line: 340, column: 8, scope: !482)
!482 = distinct !DILexicalBlock(scope: !449, file: !10, line: 340, column: 7)
!483 = !DILocation(line: 340, column: 7, scope: !449)
!484 = !DILocation(line: 341, column: 9, scope: !485)
!485 = distinct !DILexicalBlock(scope: !486, file: !10, line: 341, column: 9)
!486 = distinct !DILexicalBlock(scope: !482, file: !10, line: 340, column: 13)
!487 = !DILocation(line: 341, column: 15, scope: !485)
!488 = !DILocation(line: 341, column: 9, scope: !486)
!489 = !DILocation(line: 342, column: 14, scope: !485)
!490 = !DILocation(line: 342, column: 7, scope: !491)
!491 = !DILexicalBlockFile(scope: !485, file: !10, discriminator: 1)
!492 = !DILocation(line: 342, column: 7, scope: !485)
!493 = !DILocation(line: 343, column: 9, scope: !486)
!494 = !DILocation(line: 343, column: 8, scope: !486)
!495 = !DILocation(line: 343, column: 6, scope: !486)
!496 = !DILocation(line: 343, column: 17, scope: !486)
!497 = !DILocation(line: 344, column: 3, scope: !486)
!498 = !DILocation(line: 345, column: 23, scope: !449)
!499 = !DILocation(line: 345, column: 3, scope: !449)
!500 = !DILocation(line: 345, column: 8, scope: !449)
!501 = !DILocation(line: 345, column: 17, scope: !449)
!502 = !DILocation(line: 345, column: 21, scope: !449)
!503 = !DILocation(line: 345, column: 50, scope: !449)
!504 = !DILocation(line: 345, column: 30, scope: !449)
!505 = !DILocation(line: 345, column: 35, scope: !449)
!506 = !DILocation(line: 345, column: 44, scope: !449)
!507 = !DILocation(line: 345, column: 48, scope: !449)
!508 = !DILocation(line: 346, column: 23, scope: !449)
!509 = !DILocation(line: 346, column: 3, scope: !449)
!510 = !DILocation(line: 346, column: 8, scope: !449)
!511 = !DILocation(line: 346, column: 17, scope: !449)
!512 = !DILocation(line: 346, column: 21, scope: !449)
!513 = !DILocation(line: 346, column: 50, scope: !449)
!514 = !DILocation(line: 346, column: 30, scope: !449)
!515 = !DILocation(line: 346, column: 35, scope: !449)
!516 = !DILocation(line: 346, column: 44, scope: !449)
!517 = !DILocation(line: 346, column: 48, scope: !449)
!518 = !DILocation(line: 347, column: 3, scope: !449)
!519 = !DILocation(line: 347, column: 8, scope: !449)
!520 = !DILocation(line: 347, column: 14, scope: !449)
!521 = !DILocation(line: 347, column: 19, scope: !449)
!522 = !DILocation(line: 347, column: 24, scope: !449)
!523 = !DILocation(line: 347, column: 31, scope: !449)
!524 = !DILocation(line: 347, column: 46, scope: !449)
!525 = !DILocation(line: 347, column: 35, scope: !449)
!526 = !DILocation(line: 347, column: 40, scope: !449)
!527 = !DILocation(line: 347, column: 44, scope: !449)
!528 = !DILocation(line: 349, column: 2, scope: !449)
!529 = !DILocation(line: 350, column: 10, scope: !449)
!530 = !DILocation(line: 350, column: 15, scope: !449)
!531 = !DILocation(line: 350, column: 8, scope: !449)
!532 = !DILocation(line: 351, column: 3, scope: !449)
!533 = !DILocation(line: 351, column: 15, scope: !534)
!534 = !DILexicalBlockFile(scope: !449, file: !10, discriminator: 1)
!535 = !DILocation(line: 351, column: 18, scope: !534)
!536 = !DILocation(line: 351, column: 3, scope: !534)
!537 = !DILocation(line: 352, column: 14, scope: !449)
!538 = !DILocation(line: 352, column: 14, scope: !534)
!539 = !DILocation(line: 352, column: 14, scope: !540)
!540 = !DILexicalBlockFile(scope: !449, file: !10, discriminator: 2)
!541 = !DILocation(line: 352, column: 14, scope: !542)
!542 = !DILexicalBlockFile(scope: !449, file: !10, discriminator: 3)
!543 = !DILocation(line: 352, column: 10, scope: !542)
!544 = !DILocation(line: 352, column: 13, scope: !542)
!545 = !DILocation(line: 351, column: 3, scope: !540)
!546 = distinct !{!546, !532}
!547 = !DILocation(line: 353, column: 8, scope: !449)
!548 = !DILocation(line: 353, column: 11, scope: !449)
!549 = !DILocation(line: 354, column: 2, scope: !449)
!550 = !DILocation(line: 355, column: 14, scope: !449)
!551 = !DILocation(line: 355, column: 24, scope: !449)
!552 = !DILocation(line: 355, column: 3, scope: !449)
!553 = !DILocation(line: 355, column: 8, scope: !449)
!554 = !DILocation(line: 355, column: 12, scope: !449)
!555 = !DILocation(line: 356, column: 23, scope: !449)
!556 = !DILocation(line: 356, column: 3, scope: !449)
!557 = !DILocation(line: 356, column: 13, scope: !449)
!558 = !DILocation(line: 356, column: 21, scope: !449)
!559 = !DILocation(line: 357, column: 7, scope: !560)
!560 = distinct !DILexicalBlock(scope: !449, file: !10, line: 357, column: 7)
!561 = !DILocation(line: 357, column: 11, scope: !560)
!562 = !DILocation(line: 357, column: 7, scope: !449)
!563 = !DILocation(line: 358, column: 12, scope: !564)
!564 = distinct !DILexicalBlock(scope: !560, file: !10, line: 357, column: 29)
!565 = !DILocation(line: 358, column: 6, scope: !564)
!566 = !DILocation(line: 358, column: 10, scope: !564)
!567 = !DILocation(line: 359, column: 12, scope: !564)
!568 = !DILocation(line: 359, column: 5, scope: !569)
!569 = !DILexicalBlockFile(scope: !564, file: !10, discriminator: 1)
!570 = !DILocation(line: 359, column: 5, scope: !564)
!571 = !DILocation(line: 362, column: 14, scope: !449)
!572 = !DILocation(line: 363, column: 1, scope: !449)
!573 = distinct !DISubprogram(name: "push_cleanup_fallback", scope: !10, file: !10, line: 377, type: !574, isLocal: false, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !77, !39, !77, !39, !392, null}
!576 = !DILocalVariable(name: "call1", arg: 1, scope: !573, file: !10, line: 377, type: !77)
!577 = !DILocation(line: 377, column: 30, scope: !573)
!578 = !DILocalVariable(name: "mask1", arg: 2, scope: !573, file: !10, line: 377, type: !39)
!579 = !DILocation(line: 377, column: 65, scope: !573)
!580 = !DILocalVariable(name: "call2", arg: 3, scope: !573, file: !10, line: 378, type: !77)
!581 = !DILocation(line: 378, column: 30, scope: !573)
!582 = !DILocalVariable(name: "mask2", arg: 4, scope: !573, file: !10, line: 378, type: !39)
!583 = !DILocation(line: 378, column: 65, scope: !573)
!584 = !DILocalVariable(name: "nargs", arg: 5, scope: !573, file: !10, line: 379, type: !392)
!585 = !DILocation(line: 379, column: 36, scope: !573)
!586 = !DILocalVariable(name: "args", scope: !573, file: !10, line: 381, type: !384)
!587 = !DILocation(line: 381, column: 11, scope: !573)
!588 = !DILocation(line: 383, column: 2, scope: !573)
!589 = !DILocation(line: 384, column: 21, scope: !573)
!590 = !DILocation(line: 384, column: 28, scope: !573)
!591 = !DILocation(line: 384, column: 35, scope: !573)
!592 = !DILocation(line: 384, column: 42, scope: !573)
!593 = !DILocation(line: 384, column: 49, scope: !573)
!594 = !DILocation(line: 384, column: 56, scope: !573)
!595 = !DILocation(line: 384, column: 3, scope: !573)
!596 = !DILocation(line: 385, column: 2, scope: !573)
!597 = !DILocation(line: 386, column: 1, scope: !573)
!598 = distinct !DISubprogram(name: "pop_cleanup", scope: !10, file: !10, line: 388, type: !125, isLocal: false, isDefinition: true, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!599 = !DILocalVariable(name: "flagset", arg: 1, scope: !598, file: !10, line: 388, type: !39)
!600 = !DILocation(line: 388, column: 22, scope: !598)
!601 = !DILocalVariable(name: "cep", scope: !598, file: !10, line: 389, type: !67)
!602 = !DILocation(line: 389, column: 25, scope: !598)
!603 = !DILocalVariable(name: "i", scope: !598, file: !10, line: 390, type: !39)
!604 = !DILocation(line: 390, column: 7, scope: !598)
!605 = !DILocation(line: 392, column: 8, scope: !598)
!606 = !DILocation(line: 392, column: 18, scope: !598)
!607 = !DILocation(line: 392, column: 6, scope: !598)
!608 = !DILocation(line: 393, column: 23, scope: !598)
!609 = !DILocation(line: 393, column: 28, scope: !598)
!610 = !DILocation(line: 393, column: 3, scope: !598)
!611 = !DILocation(line: 393, column: 13, scope: !598)
!612 = !DILocation(line: 393, column: 21, scope: !598)
!613 = !DILocation(line: 394, column: 9, scope: !614)
!614 = distinct !DILexicalBlock(scope: !598, file: !10, line: 394, column: 3)
!615 = !DILocation(line: 394, column: 8, scope: !614)
!616 = !DILocation(line: 394, column: 13, scope: !617)
!617 = !DILexicalBlockFile(scope: !618, file: !10, discriminator: 1)
!618 = distinct !DILexicalBlock(scope: !614, file: !10, line: 394, column: 3)
!619 = !DILocation(line: 394, column: 14, scope: !617)
!620 = !DILocation(line: 394, column: 3, scope: !617)
!621 = !DILocation(line: 395, column: 20, scope: !622)
!622 = distinct !DILexicalBlock(scope: !623, file: !10, line: 395, column: 9)
!623 = distinct !DILexicalBlock(scope: !618, file: !10, line: 394, column: 23)
!624 = !DILocation(line: 395, column: 9, scope: !622)
!625 = !DILocation(line: 395, column: 14, scope: !622)
!626 = !DILocation(line: 395, column: 23, scope: !622)
!627 = !DILocation(line: 395, column: 28, scope: !622)
!628 = !DILocation(line: 395, column: 42, scope: !629)
!629 = !DILexicalBlockFile(scope: !622, file: !10, discriminator: 1)
!630 = !DILocation(line: 395, column: 31, scope: !629)
!631 = !DILocation(line: 395, column: 36, scope: !629)
!632 = !DILocation(line: 395, column: 45, scope: !629)
!633 = !DILocation(line: 395, column: 52, scope: !629)
!634 = !DILocation(line: 395, column: 50, scope: !629)
!635 = !DILocation(line: 395, column: 9, scope: !629)
!636 = !DILocation(line: 396, column: 18, scope: !622)
!637 = !DILocation(line: 396, column: 7, scope: !622)
!638 = !DILocation(line: 396, column: 12, scope: !622)
!639 = !DILocation(line: 396, column: 21, scope: !622)
!640 = !DILocation(line: 396, column: 26, scope: !622)
!641 = !DILocation(line: 396, column: 31, scope: !622)
!642 = !DILocation(line: 396, column: 36, scope: !622)
!643 = !DILocation(line: 396, column: 41, scope: !622)
!644 = !DILocation(line: 397, column: 3, scope: !623)
!645 = !DILocation(line: 394, column: 19, scope: !646)
!646 = !DILexicalBlockFile(scope: !618, file: !10, discriminator: 2)
!647 = !DILocation(line: 394, column: 3, scope: !646)
!648 = distinct !{!648, !649}
!649 = !DILocation(line: 394, column: 3, scope: !598)
!650 = !DILocation(line: 398, column: 7, scope: !651)
!651 = distinct !DILexicalBlock(scope: !598, file: !10, line: 398, column: 7)
!652 = !DILocation(line: 398, column: 11, scope: !651)
!653 = !DILocation(line: 398, column: 7, scope: !598)
!654 = !DILocation(line: 398, column: 34, scope: !655)
!655 = !DILexicalBlockFile(scope: !651, file: !10, discriminator: 1)
!656 = !DILocation(line: 398, column: 29, scope: !655)
!657 = !DILocation(line: 399, column: 1, scope: !598)
!658 = !DILocalVariable(name: "econ", arg: 1, scope: !113, file: !10, line: 256, type: !14)
!659 = !DILocation(line: 256, column: 36, scope: !113)
!660 = !DILocalVariable(name: "flagsetin", arg: 2, scope: !113, file: !10, line: 256, type: !39)
!661 = !DILocation(line: 256, column: 46, scope: !113)
!662 = !DILocalVariable(name: "cep", scope: !113, file: !10, line: 259, type: !663)
!663 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!664 = !DILocation(line: 259, column: 34, scope: !113)
!665 = !DILocalVariable(name: "ncep", scope: !113, file: !10, line: 260, type: !67)
!666 = !DILocation(line: 260, column: 25, scope: !113)
!667 = !DILocalVariable(name: "recurserr", scope: !113, file: !10, line: 261, type: !11)
!668 = !DILocation(line: 261, column: 24, scope: !113)
!669 = !DILocalVariable(name: "oldecontext", scope: !113, file: !10, line: 261, type: !14)
!670 = !DILocation(line: 261, column: 36, scope: !113)
!671 = !DILocalVariable(name: "recurse_jump", scope: !113, file: !10, line: 262, type: !26)
!672 = !DILocation(line: 262, column: 11, scope: !113)
!673 = !DILocalVariable(name: "i", scope: !113, file: !10, line: 263, type: !97)
!674 = !DILocation(line: 263, column: 16, scope: !113)
!675 = !DILocalVariable(name: "flagset", scope: !113, file: !10, line: 263, type: !97)
!676 = !DILocation(line: 263, column: 19, scope: !113)
!677 = !DILocation(line: 265, column: 7, scope: !678)
!678 = distinct !DILexicalBlock(scope: !113, file: !10, line: 265, column: 7)
!679 = !DILocation(line: 265, column: 13, scope: !678)
!680 = !DILocation(line: 265, column: 21, scope: !678)
!681 = !DILocation(line: 265, column: 7, scope: !113)
!682 = !DILocation(line: 266, column: 5, scope: !678)
!683 = !DILocation(line: 266, column: 11, scope: !678)
!684 = !DILocation(line: 266, column: 19, scope: !678)
!685 = !DILocation(line: 266, column: 24, scope: !678)
!686 = !DILocation(line: 266, column: 30, scope: !678)
!687 = !DILocation(line: 266, column: 38, scope: !678)
!688 = !DILocation(line: 266, column: 44, scope: !678)
!689 = !DILocation(line: 266, column: 52, scope: !678)
!690 = !DILocation(line: 268, column: 7, scope: !691)
!691 = distinct !DILexicalBlock(scope: !113, file: !10, line: 268, column: 7)
!692 = !DILocation(line: 268, column: 24, scope: !691)
!693 = !DILocation(line: 268, column: 7, scope: !113)
!694 = !DILocation(line: 269, column: 16, scope: !695)
!695 = distinct !DILexicalBlock(scope: !691, file: !10, line: 268, column: 29)
!696 = !DILocation(line: 270, column: 24, scope: !695)
!697 = !DILocation(line: 270, column: 5, scope: !698)
!698 = !DILexicalBlockFile(scope: !695, file: !10, discriminator: 1)
!699 = !DILocation(line: 271, column: 12, scope: !695)
!700 = !DILocation(line: 272, column: 3, scope: !695)
!701 = !DILocation(line: 273, column: 14, scope: !702)
!702 = distinct !DILexicalBlock(scope: !691, file: !10, line: 272, column: 10)
!703 = !DILocation(line: 273, column: 12, scope: !702)
!704 = !DILocation(line: 275, column: 8, scope: !113)
!705 = !DILocation(line: 275, column: 14, scope: !113)
!706 = !DILocation(line: 275, column: 6, scope: !113)
!707 = !DILocation(line: 276, column: 16, scope: !113)
!708 = !DILocation(line: 276, column: 14, scope: !113)
!709 = !DILocation(line: 277, column: 3, scope: !113)
!710 = !DILocation(line: 277, column: 10, scope: !711)
!711 = !DILexicalBlockFile(scope: !113, file: !10, discriminator: 1)
!712 = !DILocation(line: 277, column: 3, scope: !711)
!713 = !DILocation(line: 278, column: 11, scope: !714)
!714 = distinct !DILexicalBlock(scope: !715, file: !10, line: 278, column: 5)
!715 = distinct !DILexicalBlock(scope: !113, file: !10, line: 277, column: 15)
!716 = !DILocation(line: 278, column: 10, scope: !714)
!717 = !DILocation(line: 278, column: 15, scope: !718)
!718 = !DILexicalBlockFile(scope: !719, file: !10, discriminator: 1)
!719 = distinct !DILexicalBlock(scope: !714, file: !10, line: 278, column: 5)
!720 = !DILocation(line: 278, column: 16, scope: !718)
!721 = !DILocation(line: 278, column: 5, scope: !718)
!722 = !DILocation(line: 279, column: 22, scope: !723)
!723 = distinct !DILexicalBlock(scope: !724, file: !10, line: 279, column: 11)
!724 = distinct !DILexicalBlock(scope: !719, file: !10, line: 278, column: 25)
!725 = !DILocation(line: 279, column: 11, scope: !723)
!726 = !DILocation(line: 279, column: 16, scope: !723)
!727 = !DILocation(line: 279, column: 25, scope: !723)
!728 = !DILocation(line: 279, column: 30, scope: !723)
!729 = !DILocation(line: 279, column: 44, scope: !730)
!730 = !DILexicalBlockFile(scope: !723, file: !10, discriminator: 1)
!731 = !DILocation(line: 279, column: 33, scope: !730)
!732 = !DILocation(line: 279, column: 38, scope: !730)
!733 = !DILocation(line: 279, column: 47, scope: !730)
!734 = !DILocation(line: 279, column: 54, scope: !730)
!735 = !DILocation(line: 279, column: 52, scope: !730)
!736 = !DILocation(line: 279, column: 11, scope: !730)
!737 = !DILocation(line: 280, column: 12, scope: !738)
!738 = distinct !DILexicalBlock(scope: !739, file: !10, line: 280, column: 12)
!739 = distinct !DILexicalBlock(scope: !723, file: !10, line: 279, column: 63)
!740 = !DILocation(line: 280, column: 12, scope: !739)
!741 = !DILocation(line: 281, column: 11, scope: !742)
!742 = distinct !DILexicalBlock(scope: !738, file: !10, line: 280, column: 34)
!743 = !DILocation(line: 282, column: 9, scope: !742)
!744 = !DILocation(line: 283, column: 11, scope: !745)
!745 = distinct !DILexicalBlock(scope: !738, file: !10, line: 282, column: 16)
!746 = !DILocation(line: 284, column: 11, scope: !745)
!747 = !DILocation(line: 285, column: 11, scope: !745)
!748 = !DILocation(line: 286, column: 19, scope: !745)
!749 = !DILocation(line: 287, column: 22, scope: !745)
!750 = !DILocation(line: 287, column: 11, scope: !745)
!751 = !DILocation(line: 287, column: 16, scope: !745)
!752 = !DILocation(line: 287, column: 25, scope: !745)
!753 = !DILocation(line: 287, column: 30, scope: !745)
!754 = !DILocation(line: 287, column: 35, scope: !745)
!755 = !DILocation(line: 287, column: 40, scope: !745)
!756 = !DILocation(line: 287, column: 45, scope: !745)
!757 = !DILocation(line: 289, column: 19, scope: !739)
!758 = !DILocation(line: 289, column: 17, scope: !739)
!759 = !DILocation(line: 290, column: 7, scope: !739)
!760 = !DILocation(line: 291, column: 5, scope: !724)
!761 = !DILocation(line: 278, column: 21, scope: !762)
!762 = !DILexicalBlockFile(scope: !719, file: !10, discriminator: 2)
!763 = !DILocation(line: 278, column: 5, scope: !762)
!764 = distinct !{!764, !765}
!765 = !DILocation(line: 278, column: 5, scope: !715)
!766 = !DILocation(line: 292, column: 16, scope: !715)
!767 = !DILocation(line: 292, column: 21, scope: !715)
!768 = !DILocation(line: 292, column: 13, scope: !715)
!769 = !DILocation(line: 293, column: 16, scope: !715)
!770 = !DILocation(line: 293, column: 21, scope: !715)
!771 = !DILocation(line: 293, column: 13, scope: !715)
!772 = !DILocation(line: 294, column: 11, scope: !715)
!773 = !DILocation(line: 294, column: 16, scope: !715)
!774 = !DILocation(line: 294, column: 9, scope: !715)
!775 = !DILocation(line: 295, column: 9, scope: !776)
!776 = distinct !DILexicalBlock(scope: !715, file: !10, line: 295, column: 9)
!777 = !DILocation(line: 295, column: 13, scope: !776)
!778 = !DILocation(line: 295, column: 9, scope: !715)
!779 = !DILocation(line: 295, column: 36, scope: !780)
!780 = !DILexicalBlockFile(scope: !776, file: !10, discriminator: 1)
!781 = !DILocation(line: 295, column: 31, scope: !780)
!782 = !DILocation(line: 296, column: 10, scope: !715)
!783 = !DILocation(line: 296, column: 8, scope: !715)
!784 = !DILocation(line: 277, column: 3, scope: !785)
!785 = !DILexicalBlockFile(scope: !113, file: !10, discriminator: 2)
!786 = distinct !{!786, !709}
!787 = !DILocation(line: 298, column: 17, scope: !113)
!788 = !DILocation(line: 299, column: 1, scope: !113)
!789 = distinct !DISubprogram(name: "error_context_errmsg_free", scope: !10, file: !10, line: 172, type: !790, isLocal: true, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !14}
!792 = !DILocalVariable(name: "ec", arg: 1, scope: !789, file: !10, line: 172, type: !14)
!793 = !DILocation(line: 172, column: 49, scope: !789)
!794 = !DILocation(line: 174, column: 7, scope: !795)
!795 = distinct !DILexicalBlock(scope: !789, file: !10, line: 174, column: 7)
!796 = !DILocation(line: 174, column: 11, scope: !795)
!797 = !DILocation(line: 174, column: 18, scope: !795)
!798 = !DILocation(line: 174, column: 7, scope: !789)
!799 = !DILocation(line: 175, column: 10, scope: !795)
!800 = !DILocation(line: 175, column: 14, scope: !795)
!801 = !DILocation(line: 175, column: 5, scope: !795)
!802 = !DILocation(line: 176, column: 1, scope: !789)
!803 = distinct !DISubprogram(name: "ohshit", scope: !10, file: !10, line: 447, type: !375, isLocal: false, isDefinition: true, scopeLine: 447, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!804 = !DILocalVariable(name: "fmt", arg: 1, scope: !803, file: !10, line: 447, type: !60)
!805 = !DILocation(line: 447, column: 25, scope: !803)
!806 = !DILocalVariable(name: "args", scope: !803, file: !10, line: 448, type: !384)
!807 = !DILocation(line: 448, column: 11, scope: !803)
!808 = !DILocation(line: 450, column: 2, scope: !803)
!809 = !DILocation(line: 451, column: 31, scope: !803)
!810 = !DILocation(line: 451, column: 36, scope: !803)
!811 = !DILocation(line: 451, column: 3, scope: !803)
!812 = !DILocation(line: 452, column: 2, scope: !803)
!813 = !DILocation(line: 454, column: 3, scope: !803)
!814 = !DILocation(line: 455, column: 1, scope: !803)
!815 = distinct !DISubprogram(name: "error_context_errmsg_format", scope: !10, file: !10, line: 186, type: !816, isLocal: true, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!816 = !DISubroutineType(types: !817)
!817 = !{!39, !60, !452}
!818 = !DILocalVariable(name: "fmt", arg: 1, scope: !815, file: !10, line: 186, type: !60)
!819 = !DILocation(line: 186, column: 41, scope: !815)
!820 = !DILocalVariable(name: "args", arg: 2, scope: !815, file: !10, line: 186, type: !452)
!821 = !DILocation(line: 186, column: 54, scope: !815)
!822 = !DILocalVariable(name: "args_copy", scope: !815, file: !10, line: 188, type: !384)
!823 = !DILocation(line: 188, column: 11, scope: !815)
!824 = !DILocalVariable(name: "errmsg", scope: !815, file: !10, line: 189, type: !90)
!825 = !DILocation(line: 189, column: 9, scope: !815)
!826 = !DILocalVariable(name: "rc", scope: !815, file: !10, line: 190, type: !39)
!827 = !DILocation(line: 190, column: 7, scope: !815)
!828 = !DILocation(line: 192, column: 2, scope: !815)
!829 = !DILocation(line: 193, column: 27, scope: !815)
!830 = !DILocation(line: 193, column: 32, scope: !815)
!831 = !DILocation(line: 193, column: 8, scope: !815)
!832 = !DILocation(line: 193, column: 6, scope: !815)
!833 = !DILocation(line: 194, column: 2, scope: !815)
!834 = !DILocation(line: 198, column: 7, scope: !835)
!835 = distinct !DILexicalBlock(scope: !815, file: !10, line: 198, column: 7)
!836 = !DILocation(line: 198, column: 10, scope: !835)
!837 = !DILocation(line: 198, column: 7, scope: !815)
!838 = !DILocation(line: 199, column: 30, scope: !835)
!839 = !DILocation(line: 199, column: 40, scope: !835)
!840 = !DILocation(line: 199, column: 5, scope: !835)
!841 = !DILocation(line: 201, column: 7, scope: !842)
!842 = distinct !DILexicalBlock(scope: !815, file: !10, line: 201, column: 7)
!843 = !DILocation(line: 201, column: 10, scope: !842)
!844 = !DILocation(line: 201, column: 7, scope: !815)
!845 = !DILocation(line: 205, column: 64, scope: !846)
!846 = distinct !DILexicalBlock(scope: !842, file: !10, line: 201, column: 15)
!847 = !DILocation(line: 205, column: 69, scope: !846)
!848 = !DILocation(line: 205, column: 10, scope: !846)
!849 = !DILocation(line: 205, column: 8, scope: !846)
!850 = !DILocation(line: 208, column: 9, scope: !851)
!851 = distinct !DILexicalBlock(scope: !846, file: !10, line: 208, column: 9)
!852 = !DILocation(line: 208, column: 12, scope: !851)
!853 = !DILocation(line: 208, column: 9, scope: !846)
!854 = !DILocation(line: 209, column: 10, scope: !851)
!855 = !DILocation(line: 209, column: 7, scope: !851)
!856 = !DILocation(line: 211, column: 30, scope: !846)
!857 = !DILocation(line: 211, column: 5, scope: !846)
!858 = !DILocation(line: 212, column: 3, scope: !846)
!859 = !DILocation(line: 214, column: 10, scope: !815)
!860 = !DILocation(line: 214, column: 3, scope: !815)
!861 = distinct !DISubprogram(name: "run_error_handler", scope: !10, file: !10, line: 422, type: !22, isLocal: true, isDefinition: true, scopeLine: 423, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!862 = !DILocation(line: 424, column: 7, scope: !863)
!863 = distinct !DILexicalBlock(scope: !861, file: !10, line: 424, column: 7)
!864 = !DILocation(line: 424, column: 7, scope: !861)
!865 = !DILocation(line: 430, column: 22, scope: !866)
!866 = distinct !DILexicalBlock(scope: !863, file: !10, line: 424, column: 20)
!867 = !DILocation(line: 430, column: 64, scope: !866)
!868 = !DILocation(line: 430, column: 74, scope: !866)
!869 = !DILocation(line: 430, column: 5, scope: !870)
!870 = !DILexicalBlockFile(scope: !866, file: !10, discriminator: 1)
!871 = !DILocation(line: 431, column: 5, scope: !866)
!872 = !DILocation(line: 434, column: 7, scope: !873)
!873 = distinct !DILexicalBlock(scope: !861, file: !10, line: 434, column: 7)
!874 = !DILocation(line: 434, column: 16, scope: !873)
!875 = !DILocation(line: 434, column: 7, scope: !861)
!876 = !DILocation(line: 435, column: 22, scope: !877)
!877 = distinct !DILexicalBlock(scope: !873, file: !10, line: 434, column: 24)
!878 = !DILocation(line: 435, column: 60, scope: !877)
!879 = !DILocation(line: 435, column: 70, scope: !877)
!880 = !DILocation(line: 435, column: 5, scope: !881)
!881 = !DILexicalBlockFile(scope: !877, file: !10, discriminator: 1)
!882 = !DILocation(line: 436, column: 5, scope: !877)
!883 = !DILocation(line: 437, column: 14, scope: !884)
!884 = distinct !DILexicalBlock(scope: !873, file: !10, line: 437, column: 14)
!885 = !DILocation(line: 437, column: 24, scope: !884)
!886 = !DILocation(line: 437, column: 37, scope: !884)
!887 = !DILocation(line: 437, column: 14, scope: !873)
!888 = !DILocation(line: 438, column: 5, scope: !889)
!889 = distinct !DILexicalBlock(scope: !884, file: !10, line: 437, column: 59)
!890 = !DILocation(line: 438, column: 15, scope: !889)
!891 = !DILocation(line: 438, column: 23, scope: !889)
!892 = !DILocation(line: 439, column: 5, scope: !889)
!893 = !DILocation(line: 440, column: 14, scope: !894)
!894 = distinct !DILexicalBlock(scope: !884, file: !10, line: 440, column: 14)
!895 = !DILocation(line: 440, column: 24, scope: !894)
!896 = !DILocation(line: 440, column: 37, scope: !894)
!897 = !DILocation(line: 440, column: 14, scope: !884)
!898 = !DILocation(line: 441, column: 14, scope: !899)
!899 = distinct !DILexicalBlock(scope: !894, file: !10, line: 440, column: 59)
!900 = !DILocation(line: 441, column: 24, scope: !899)
!901 = !DILocation(line: 441, column: 32, scope: !899)
!902 = !DILocation(line: 441, column: 13, scope: !899)
!903 = !DILocation(line: 441, column: 5, scope: !899)
!904 = !DILocation(line: 443, column: 80, scope: !905)
!905 = distinct !DILexicalBlock(scope: !894, file: !10, line: 442, column: 10)
!906 = !DILocation(line: 443, column: 90, scope: !905)
!907 = !DILocation(line: 443, column: 5, scope: !905)
!908 = !DILocation(line: 445, column: 1, scope: !861)
!909 = distinct !DISubprogram(name: "ohshitv", scope: !10, file: !10, line: 458, type: !910, isLocal: false, isDefinition: true, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!910 = !DISubroutineType(types: !911)
!911 = !{null, !60, !452}
!912 = !DILocalVariable(name: "fmt", arg: 1, scope: !909, file: !10, line: 458, type: !60)
!913 = !DILocation(line: 458, column: 21, scope: !909)
!914 = !DILocalVariable(name: "args", arg: 2, scope: !909, file: !10, line: 458, type: !452)
!915 = !DILocation(line: 458, column: 34, scope: !909)
!916 = !DILocation(line: 460, column: 31, scope: !909)
!917 = !DILocation(line: 460, column: 36, scope: !909)
!918 = !DILocation(line: 460, column: 3, scope: !909)
!919 = !DILocation(line: 462, column: 3, scope: !909)
!920 = !DILocation(line: 463, column: 1, scope: !909)
!921 = distinct !DISubprogram(name: "error_context_errmsg_set", scope: !10, file: !10, line: 179, type: !922, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!922 = !DISubroutineType(types: !923)
!923 = !{null, !14, !90}
!924 = !DILocalVariable(name: "ec", arg: 1, scope: !921, file: !10, line: 179, type: !14)
!925 = !DILocation(line: 179, column: 48, scope: !921)
!926 = !DILocalVariable(name: "errmsg", arg: 2, scope: !921, file: !10, line: 179, type: !90)
!927 = !DILocation(line: 179, column: 58, scope: !921)
!928 = !DILocation(line: 181, column: 29, scope: !921)
!929 = !DILocation(line: 181, column: 3, scope: !921)
!930 = !DILocation(line: 182, column: 16, scope: !921)
!931 = !DILocation(line: 182, column: 3, scope: !921)
!932 = !DILocation(line: 182, column: 7, scope: !921)
!933 = !DILocation(line: 182, column: 14, scope: !921)
!934 = !DILocation(line: 183, column: 1, scope: !921)
!935 = distinct !DISubprogram(name: "do_internerr", scope: !10, file: !10, line: 491, type: !936, isLocal: false, isDefinition: true, scopeLine: 492, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!936 = !DISubroutineType(types: !937)
!937 = !{null, !60, !39, !60, !60, null}
!938 = !DILocalVariable(name: "file", arg: 1, scope: !935, file: !10, line: 491, type: !60)
!939 = !DILocation(line: 491, column: 26, scope: !935)
!940 = !DILocalVariable(name: "line", arg: 2, scope: !935, file: !10, line: 491, type: !39)
!941 = !DILocation(line: 491, column: 36, scope: !935)
!942 = !DILocalVariable(name: "func", arg: 3, scope: !935, file: !10, line: 491, type: !60)
!943 = !DILocation(line: 491, column: 54, scope: !935)
!944 = !DILocalVariable(name: "fmt", arg: 4, scope: !935, file: !10, line: 491, type: !60)
!945 = !DILocation(line: 491, column: 72, scope: !935)
!946 = !DILocalVariable(name: "args", scope: !935, file: !10, line: 493, type: !384)
!947 = !DILocation(line: 493, column: 11, scope: !935)
!948 = !DILocation(line: 495, column: 2, scope: !935)
!949 = !DILocation(line: 496, column: 31, scope: !935)
!950 = !DILocation(line: 496, column: 36, scope: !935)
!951 = !DILocation(line: 496, column: 3, scope: !935)
!952 = !DILocation(line: 497, column: 2, scope: !935)
!953 = !DILocation(line: 499, column: 10, scope: !935)
!954 = !DILocation(line: 499, column: 51, scope: !935)
!955 = !DILocation(line: 500, column: 11, scope: !935)
!956 = !DILocation(line: 500, column: 32, scope: !935)
!957 = !DILocation(line: 500, column: 38, scope: !935)
!958 = !DILocation(line: 500, column: 44, scope: !935)
!959 = !DILocation(line: 500, column: 50, scope: !960)
!960 = !DILexicalBlockFile(scope: !935, file: !10, discriminator: 1)
!961 = !DILocation(line: 501, column: 11, scope: !935)
!962 = !DILocation(line: 501, column: 34, scope: !960)
!963 = !DILocation(line: 501, column: 55, scope: !964)
!964 = !DILexicalBlockFile(scope: !935, file: !10, discriminator: 2)
!965 = !DILocation(line: 502, column: 11, scope: !935)
!966 = !DILocation(line: 502, column: 21, scope: !935)
!967 = !DILocation(line: 499, column: 3, scope: !960)
!968 = !DILocation(line: 504, column: 3, scope: !935)
!969 = !DILocation(line: 505, column: 1, scope: !935)
!970 = distinct !DISubprogram(name: "print_cleanup_error", scope: !10, file: !10, line: 250, type: !58, isLocal: true, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!971 = !DILocalVariable(name: "emsg", arg: 1, scope: !970, file: !10, line: 250, type: !60)
!972 = !DILocation(line: 250, column: 33, scope: !970)
!973 = !DILocalVariable(name: "data", arg: 2, scope: !970, file: !10, line: 250, type: !63)
!974 = !DILocation(line: 250, column: 51, scope: !970)
!975 = !DILocation(line: 252, column: 20, scope: !970)
!976 = !DILocation(line: 252, column: 50, scope: !970)
!977 = !DILocation(line: 252, column: 3, scope: !978)
!978 = !DILexicalBlockFile(scope: !970, file: !10, discriminator: 1)
!979 = !DILocation(line: 253, column: 1, scope: !970)
!980 = distinct !DISubprogram(name: "print_abort_error", scope: !10, file: !10, line: 126, type: !981, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !116)
!981 = !DISubroutineType(types: !982)
!982 = !{null, !60, !60}
!983 = !DILocalVariable(name: "etype", arg: 1, scope: !980, file: !10, line: 126, type: !60)
!984 = !DILocation(line: 126, column: 31, scope: !980)
!985 = !DILocalVariable(name: "emsg", arg: 2, scope: !980, file: !10, line: 126, type: !60)
!986 = !DILocation(line: 126, column: 50, scope: !980)
!987 = !DILocation(line: 128, column: 10, scope: !980)
!988 = !DILocation(line: 128, column: 18, scope: !980)
!989 = !DILocation(line: 129, column: 11, scope: !980)
!990 = !DILocation(line: 129, column: 31, scope: !991)
!991 = !DILexicalBlockFile(scope: !980, file: !10, discriminator: 1)
!992 = !DILocation(line: 129, column: 52, scope: !993)
!993 = !DILexicalBlockFile(scope: !980, file: !10, discriminator: 2)
!994 = !DILocation(line: 130, column: 11, scope: !980)
!995 = !DILocation(line: 130, column: 34, scope: !980)
!996 = !DILocation(line: 130, column: 41, scope: !991)
!997 = !DILocation(line: 130, column: 56, scope: !980)
!998 = !DILocation(line: 128, column: 3, scope: !991)
!999 = !DILocation(line: 131, column: 1, scope: !980)
