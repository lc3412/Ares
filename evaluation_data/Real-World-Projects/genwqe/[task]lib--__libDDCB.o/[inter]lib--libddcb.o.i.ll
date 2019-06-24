; ModuleID = '/home/lichi/Desktop/genwqe/[task]lib--__libDDCB.o/[inter]lib--libddcb.o.i'
source_filename = "/home/lichi/Desktop/genwqe/[task]lib--__libDDCB.o/[inter]lib--libddcb.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ddcb_accel_funcs = type { i32, i8*, i8* (i32, i32, i32*, i64, i64)*, i32 (i8*)*, i32 (i8*, %struct.ddcb_cmd*)*, i8* (i8*, i32)*, i64 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)*, i32 (i8*, i32, i64)*, i32 (i8*, i32, i32)*, i64 (i8*)*, i64 (i8*)*, i64 (i8*)*, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*, i64, i32)*, i32 (i8*, i8*, i64)*, i8* (i8*, i64)*, i32 (i8*, i8*, i64)*, i32 (%struct._IO_FILE*)*, %union.pthread_mutex_t, i64, i64, i64, i64, i64, i64, i8* }
%struct.ddcb_cmd = type { i64, i64, i8, i8, i8, i8, i16, i16, i16, i16, i32, i64, i64, i64, i64, [64 x i8], %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i64, [96 x i8] }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.card_dev_t = type { i32, i32, i32, i8*, i32, i32, %struct.ddcb_accel_funcs* }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%union.pthread_mutexattr_t = type { i32 }

@libddcb_verbose = global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"unknown error code\00", align 1
@retc_errlist = internal constant [512 x i8*] [i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null, i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0)], align 16
@ddcb_errlist = internal constant [420 x i8*] [i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i32 0, i32 0)], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c" %08x:\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" | %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@libddcb_fd_out = common global %struct._IO_FILE* null, align 8
@ddcb_trace = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"invalid accelerator\00", align 1
@accel_list = internal global %struct.ddcb_accel_funcs* null, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"DDCB_TRACE\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [120 x i8] c"libddcb statistics for %s\0A  open    ; %5lld ; %8lld usec\0A  execute ; %5lld ; %8lld usec\0A  close   ; %5lld ; %8lld usec\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"unexecuted/untouched DDCB\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"pending execution\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"command complete. no error\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"application error, recoverable, please see ATTN and PROGR\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"application error, non-recoverable, please see ATTN and PROGR\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"unexecuted/removed from queue\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"terminated\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"overwritten by driver\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"libc call went wrong\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"problems accessing accelerator\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"cannot open accelerator\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"library version mismatch\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"illegal parameters\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"ddcb execution failed\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"application id wrong\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"function not implemented\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"entry not found\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"timeout waiting on irq event\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"failed waiting on expected event\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_init, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_done, i8* null }]

; Function Attrs: nounwind uwtable
define i8* @ddcb_retc_strerror(i32) #0 !dbg !263 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !267, metadata !268), !dbg !269
  %4 = load i32, i32* %3, align 4, !dbg !270
  %5 = icmp slt i32 %4, 0, !dbg !272
  br i1 %5, label %6, label %9, !dbg !273

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %3, align 4, !dbg !274
  %8 = sub nsw i32 0, %7, !dbg !276
  br label %11, !dbg !277

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !278
  br label %11, !dbg !280

; <label>:11:                                     ; preds = %9, %6
  %12 = phi i32 [ %8, %6 ], [ %10, %9 ], !dbg !281
  %13 = icmp sge i32 %12, 512, !dbg !283
  br i1 %13, label %14, label %15, !dbg !284

; <label>:14:                                     ; preds = %11
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8** %2, align 8, !dbg !285
  br label %28, !dbg !285

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %3, align 4, !dbg !286
  %17 = icmp slt i32 %16, 0, !dbg !287
  br i1 %17, label %18, label %21, !dbg !288

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %3, align 4, !dbg !289
  %20 = sub nsw i32 0, %19, !dbg !291
  br label %23, !dbg !292

; <label>:21:                                     ; preds = %15
  %22 = load i32, i32* %3, align 4, !dbg !293
  br label %23, !dbg !295

; <label>:23:                                     ; preds = %21, %18
  %24 = phi i32 [ %20, %18 ], [ %22, %21 ], !dbg !296
  %25 = sext i32 %24 to i64, !dbg !298
  %26 = getelementptr inbounds [512 x i8*], [512 x i8*]* @retc_errlist, i64 0, i64 %25, !dbg !298
  %27 = load i8*, i8** %26, align 8, !dbg !298
  store i8* %27, i8** %2, align 8, !dbg !299
  br label %28, !dbg !299

; <label>:28:                                     ; preds = %23, %14
  %29 = load i8*, i8** %2, align 8, !dbg !300
  ret i8* %29, !dbg !300
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i8* @ddcb_strerror(i32) #0 !dbg !301 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !302, metadata !268), !dbg !303
  %4 = load i32, i32* %3, align 4, !dbg !304
  %5 = icmp slt i32 %4, 0, !dbg !306
  br i1 %5, label %6, label %9, !dbg !307

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %3, align 4, !dbg !308
  %8 = sub nsw i32 0, %7, !dbg !310
  br label %11, !dbg !311

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !312
  br label %11, !dbg !314

; <label>:11:                                     ; preds = %9, %6
  %12 = phi i32 [ %8, %6 ], [ %10, %9 ], !dbg !315
  %13 = icmp sge i32 %12, 420, !dbg !317
  br i1 %13, label %14, label %15, !dbg !318

; <label>:14:                                     ; preds = %11
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8** %2, align 8, !dbg !319
  br label %28, !dbg !319

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %3, align 4, !dbg !320
  %17 = icmp slt i32 %16, 0, !dbg !321
  br i1 %17, label %18, label %21, !dbg !322

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %3, align 4, !dbg !323
  %20 = sub nsw i32 0, %19, !dbg !325
  br label %23, !dbg !326

; <label>:21:                                     ; preds = %15
  %22 = load i32, i32* %3, align 4, !dbg !327
  br label %23, !dbg !329

; <label>:23:                                     ; preds = %21, %18
  %24 = phi i32 [ %20, %18 ], [ %22, %21 ], !dbg !330
  %25 = sext i32 %24 to i64, !dbg !332
  %26 = getelementptr inbounds [420 x i8*], [420 x i8*]* @ddcb_errlist, i64 0, i64 %25, !dbg !332
  %27 = load i8*, i8** %26, align 8, !dbg !332
  store i8* %27, i8** %2, align 8, !dbg !333
  br label %28, !dbg !333

; <label>:28:                                     ; preds = %23, %14
  %29 = load i8*, i8** %2, align 8, !dbg !334
  ret i8* %29, !dbg !334
}

; Function Attrs: nounwind uwtable
define void @ddcb_hexdump(%struct._IO_FILE*, i8*, i32) #0 !dbg !335 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [17 x i8], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !338, metadata !268), !dbg !339
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !340, metadata !268), !dbg !341
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !342, metadata !268), !dbg !343
  call void @llvm.dbg.declare(metadata i32* %7, metadata !344, metadata !268), !dbg !345
  call void @llvm.dbg.declare(metadata i32* %8, metadata !346, metadata !268), !dbg !347
  store i32 0, i32* %8, align 4, !dbg !347
  call void @llvm.dbg.declare(metadata i8** %9, metadata !348, metadata !268), !dbg !351
  %11 = load i8*, i8** %5, align 8, !dbg !352
  store i8* %11, i8** %9, align 8, !dbg !351
  call void @llvm.dbg.declare(metadata [17 x i8]* %10, metadata !353, metadata !268), !dbg !357
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !358
  %13 = icmp eq %struct._IO_FILE* %12, null, !dbg !360
  br i1 %13, label %14, label %15, !dbg !361

; <label>:14:                                     ; preds = %3
  br label %106, !dbg !362

; <label>:15:                                     ; preds = %3
  store i32 0, i32* %7, align 4, !dbg !363
  br label %16, !dbg !365

; <label>:16:                                     ; preds = %75, %15
  %17 = load i32, i32* %7, align 4, !dbg !366
  %18 = load i32, i32* %6, align 4, !dbg !369
  %19 = icmp ult i32 %17, %18, !dbg !370
  br i1 %19, label %20, label %78, !dbg !371

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* %7, align 4, !dbg !372
  %22 = and i32 %21, 15, !dbg !375
  %23 = icmp eq i32 %22, 0, !dbg !376
  br i1 %23, label %24, label %29, !dbg !377

; <label>:24:                                     ; preds = %20
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !378
  %26 = load i32, i32* %7, align 4, !dbg !380
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 %26), !dbg !381
  %28 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i32 0, i32 0, !dbg !382
  call void @llvm.memset.p0i8.i64(i8* %28, i8 0, i64 17, i32 16, i1 false), !dbg !382
  store i32 0, i32* %8, align 4, !dbg !383
  br label %29, !dbg !384

; <label>:29:                                     ; preds = %24, %20
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !385
  %31 = load i32, i32* %7, align 4, !dbg !386
  %32 = zext i32 %31 to i64, !dbg !387
  %33 = load i8*, i8** %9, align 8, !dbg !387
  %34 = getelementptr inbounds i8, i8* %33, i64 %32, !dbg !387
  %35 = load i8, i8* %34, align 1, !dbg !387
  %36 = zext i8 %35 to i32, !dbg !387
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 %36), !dbg !388
  %38 = load i32, i32* %7, align 4, !dbg !389
  %39 = zext i32 %38 to i64, !dbg !390
  %40 = load i8*, i8** %9, align 8, !dbg !390
  %41 = getelementptr inbounds i8, i8* %40, i64 %39, !dbg !390
  %42 = load i8, i8* %41, align 1, !dbg !390
  %43 = zext i8 %42 to i32, !dbg !391
  %44 = sext i32 %43 to i64, !dbg !392
  %45 = call i16** @__ctype_b_loc() #1, !dbg !393
  %46 = load i16*, i16** %45, align 8, !dbg !389
  %47 = getelementptr inbounds i16, i16* %46, i64 %44, !dbg !392
  %48 = load i16, i16* %47, align 2, !dbg !392
  %49 = zext i16 %48 to i32, !dbg !392
  %50 = and i32 %49, 8, !dbg !394
  %51 = icmp ne i32 %50, 0, !dbg !394
  br i1 %51, label %52, label %59, !dbg !390

; <label>:52:                                     ; preds = %29
  %53 = load i32, i32* %7, align 4, !dbg !395
  %54 = zext i32 %53 to i64, !dbg !397
  %55 = load i8*, i8** %9, align 8, !dbg !397
  %56 = getelementptr inbounds i8, i8* %55, i64 %54, !dbg !397
  %57 = load i8, i8* %56, align 1, !dbg !397
  %58 = zext i8 %57 to i32, !dbg !397
  br label %60, !dbg !398

; <label>:59:                                     ; preds = %29
  br label %60, !dbg !399

; <label>:60:                                     ; preds = %59, %52
  %61 = phi i32 [ %58, %52 ], [ 46, %59 ], !dbg !401
  %62 = trunc i32 %61 to i8, !dbg !401
  %63 = load i32, i32* %8, align 4, !dbg !403
  %64 = add i32 %63, 1, !dbg !403
  store i32 %64, i32* %8, align 4, !dbg !403
  %65 = zext i32 %63 to i64, !dbg !404
  %66 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 %65, !dbg !404
  store i8 %62, i8* %66, align 1, !dbg !405
  %67 = load i32, i32* %7, align 4, !dbg !406
  %68 = and i32 %67, 15, !dbg !408
  %69 = icmp eq i32 %68, 15, !dbg !409
  br i1 %69, label %70, label %74, !dbg !410

; <label>:70:                                     ; preds = %60
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !411
  %72 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i32 0, i32 0, !dbg !412
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* %72), !dbg !413
  br label %74, !dbg !413

; <label>:74:                                     ; preds = %70, %60
  br label %75, !dbg !414

; <label>:75:                                     ; preds = %74
  %76 = load i32, i32* %7, align 4, !dbg !415
  %77 = add i32 %76, 1, !dbg !415
  store i32 %77, i32* %7, align 4, !dbg !415
  br label %16, !dbg !417, !llvm.loop !418

; <label>:78:                                     ; preds = %16
  br label %79, !dbg !420

; <label>:79:                                     ; preds = %100, %78
  %80 = load i32, i32* %7, align 4, !dbg !421
  %81 = load i32, i32* %6, align 4, !dbg !425
  %82 = add i32 %81, 15, !dbg !426
  %83 = and i32 %82, -16, !dbg !427
  %84 = icmp ult i32 %80, %83, !dbg !428
  br i1 %84, label %85, label %103, !dbg !429

; <label>:85:                                     ; preds = %79
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !430
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !432
  %88 = load i32, i32* %8, align 4, !dbg !433
  %89 = add i32 %88, 1, !dbg !433
  store i32 %89, i32* %8, align 4, !dbg !433
  %90 = zext i32 %88 to i64, !dbg !434
  %91 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 %90, !dbg !434
  store i8 32, i8* %91, align 1, !dbg !435
  %92 = load i32, i32* %7, align 4, !dbg !436
  %93 = and i32 %92, 15, !dbg !438
  %94 = icmp eq i32 %93, 15, !dbg !439
  br i1 %94, label %95, label %99, !dbg !440

; <label>:95:                                     ; preds = %85
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !441
  %97 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i32 0, i32 0, !dbg !442
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* %97), !dbg !443
  br label %99, !dbg !443

; <label>:99:                                     ; preds = %95, %85
  br label %100, !dbg !444

; <label>:100:                                    ; preds = %99
  %101 = load i32, i32* %7, align 4, !dbg !445
  %102 = add i32 %101, 1, !dbg !445
  store i32 %102, i32* %7, align 4, !dbg !445
  br label %79, !dbg !447, !llvm.loop !448

; <label>:103:                                    ; preds = %79
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !449
  %105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !dbg !450
  br label %106, !dbg !451

; <label>:106:                                    ; preds = %103, %14
  ret void, !dbg !452
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind uwtable
define void @ddcb_debug(i32) #0 !dbg !454 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !457, metadata !268), !dbg !458
  %3 = load i32, i32* %2, align 4, !dbg !459
  store i32 %3, i32* @libddcb_verbose, align 4, !dbg !460
  ret void, !dbg !461
}

; Function Attrs: nounwind uwtable
define void @ddcb_set_logfile(%struct._IO_FILE*) #0 !dbg !462 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !465, metadata !268), !dbg !466
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !467
  store %struct._IO_FILE* %3, %struct._IO_FILE** @libddcb_fd_out, align 8, !dbg !468
  ret void, !dbg !469
}

; Function Attrs: nounwind uwtable
define %struct.card_dev_t* @accel_open(i32, i32, i32, i32*, i64, i64) #0 !dbg !470 {
  %7 = alloca %struct.card_dev_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.card_dev_t*, align 8
  %16 = alloca %struct.ddcb_accel_funcs*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !484, metadata !268), !dbg !485
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !486, metadata !268), !dbg !487
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !488, metadata !268), !dbg !489
  store i32* %3, i32** %11, align 8
  call void @llvm.dbg.declare(metadata i32** %11, metadata !490, metadata !268), !dbg !491
  store i64 %4, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !492, metadata !268), !dbg !493
  store i64 %5, i64* %13, align 8
  call void @llvm.dbg.declare(metadata i64* %13, metadata !494, metadata !268), !dbg !495
  call void @llvm.dbg.declare(metadata i32* %14, metadata !496, metadata !268), !dbg !497
  store i32 0, i32* %14, align 4, !dbg !497
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %15, metadata !498, metadata !268), !dbg !499
  call void @llvm.dbg.declare(metadata %struct.ddcb_accel_funcs** %16, metadata !500, metadata !268), !dbg !501
  call void @llvm.dbg.declare(metadata i64* %17, metadata !502, metadata !268), !dbg !503
  store i64 0, i64* %17, align 8, !dbg !503
  call void @llvm.dbg.declare(metadata i64* %18, metadata !504, metadata !268), !dbg !505
  store i64 0, i64* %18, align 8, !dbg !505
  %19 = load i32, i32* @ddcb_trace, align 4, !dbg !506
  %20 = and i32 %19, 1, !dbg !508
  %21 = icmp ne i32 %20, 0, !dbg !508
  br i1 %21, label %22, label %24, !dbg !509

; <label>:22:                                     ; preds = %6
  %23 = call i64 @get_usec(), !dbg !510
  store i64 %23, i64* %17, align 8, !dbg !511
  br label %24, !dbg !512

; <label>:24:                                     ; preds = %22, %6
  %25 = call noalias i8* @calloc(i64 1, i64 40) #7, !dbg !513
  %26 = bitcast i8* %25 to %struct.card_dev_t*, !dbg !513
  store %struct.card_dev_t* %26, %struct.card_dev_t** %15, align 8, !dbg !514
  %27 = load %struct.card_dev_t*, %struct.card_dev_t** %15, align 8, !dbg !515
  %28 = icmp eq %struct.card_dev_t* %27, null, !dbg !517
  br i1 %28, label %29, label %30, !dbg !518

; <label>:29:                                     ; preds = %24
  store i32 -416, i32* %14, align 4, !dbg !519
  br label %109, !dbg !521

; <label>:30:                                     ; preds = %24
  %31 = load i32, i32* %9, align 4, !dbg !522
  %32 = call %struct.ddcb_accel_funcs* @find_accelerator(i32 %31), !dbg !523
  store %struct.ddcb_accel_funcs* %32, %struct.ddcb_accel_funcs** %16, align 8, !dbg !524
  %33 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %16, align 8, !dbg !525
  %34 = icmp eq %struct.ddcb_accel_funcs* %33, null, !dbg !527
  br i1 %34, label %35, label %36, !dbg !528

; <label>:35:                                     ; preds = %30
  store i32 -417, i32* %14, align 4, !dbg !529
  br label %106, !dbg !531

; <label>:36:                                     ; preds = %30
  %37 = load i32, i32* %8, align 4, !dbg !532
  %38 = load %struct.card_dev_t*, %struct.card_dev_t** %15, align 8, !dbg !533
  %39 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %38, i32 0, i32 0, !dbg !534
  store i32 %37, i32* %39, align 8, !dbg !535
  %40 = load i32, i32* %9, align 4, !dbg !536
  %41 = load %struct.card_dev_t*, %struct.card_dev_t** %15, align 8, !dbg !537
  %42 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %41, i32 0, i32 1, !dbg !538
  store i32 %40, i32* %42, align 4, !dbg !539
  %43 = load i32, i32* %10, align 4, !dbg !540
  %44 = load %struct.card_dev_t*, %struct.card_dev_t** %15, align 8, !dbg !541
  %45 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %44, i32 0, i32 2, !dbg !542
  store i32 %43, i32* %45, align 8, !dbg !543
  %46 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %16, align 8, !dbg !544
  %47 = load %struct.card_dev_t*, %struct.card_dev_t** %15, align 8, !dbg !545
  %48 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %47, i32 0, i32 6, !dbg !546
  store %struct.ddcb_accel_funcs* %46, %struct.ddcb_accel_funcs** %48, align 8, !dbg !547
  %49 = load %struct.card_dev_t*, %struct.card_dev_t** %15, align 8, !dbg !548
  %50 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %49, i32 0, i32 6, !dbg !550
  %51 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %50, align 8, !dbg !550
  %52 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %51, i32 0, i32 2, !dbg !551
  %53 = load i8* (i32, i32, i32*, i64, i64)*, i8* (i32, i32, i32*, i64, i64)** %52, align 8, !dbg !551
  %54 = icmp eq i8* (i32, i32, i32*, i64, i64)* %53, null, !dbg !552
  br i1 %54, label %55, label %56, !dbg !553

; <label>:55:                                     ; preds = %36
  store i32 -415, i32* %14, align 4, !dbg !554
  br label %106, !dbg !556

; <label>:56:                                     ; preds = %36
  %57 = load %struct.card_dev_t*, %struct.card_dev_t** %15, align 8, !dbg !557
  %58 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %57, i32 0, i32 6, !dbg !558
  %59 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %58, align 8, !dbg !558
  %60 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %59, i32 0, i32 2, !dbg !559
  %61 = load i8* (i32, i32, i32*, i64, i64)*, i8* (i32, i32, i32*, i64, i64)** %60, align 8, !dbg !559
  %62 = load i32, i32* %8, align 4, !dbg !560
  %63 = load i32, i32* %10, align 4, !dbg !561
  %64 = load %struct.card_dev_t*, %struct.card_dev_t** %15, align 8, !dbg !562
  %65 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %64, i32 0, i32 4, !dbg !563
  %66 = load i64, i64* %12, align 8, !dbg !564
  %67 = load i64, i64* %13, align 8, !dbg !565
  %68 = call i8* %61(i32 %62, i32 %63, i32* %65, i64 %66, i64 %67), !dbg !557
  %69 = load %struct.card_dev_t*, %struct.card_dev_t** %15, align 8, !dbg !566
  %70 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %69, i32 0, i32 3, !dbg !567
  store i8* %68, i8** %70, align 8, !dbg !568
  %71 = load %struct.card_dev_t*, %struct.card_dev_t** %15, align 8, !dbg !569
  %72 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %71, i32 0, i32 3, !dbg !571
  %73 = load i8*, i8** %72, align 8, !dbg !571
  %74 = icmp eq i8* %73, null, !dbg !572
  br i1 %74, label %75, label %76, !dbg !573

; <label>:75:                                     ; preds = %56
  store i32 -402, i32* %14, align 4, !dbg !574
  br label %106, !dbg !576

; <label>:76:                                     ; preds = %56
  %77 = load i32*, i32** %11, align 8, !dbg !577
  %78 = icmp ne i32* %77, null, !dbg !577
  br i1 %78, label %79, label %81, !dbg !579

; <label>:79:                                     ; preds = %76
  %80 = load i32*, i32** %11, align 8, !dbg !580
  store i32 0, i32* %80, align 4, !dbg !581
  br label %81, !dbg !582

; <label>:81:                                     ; preds = %79, %76
  %82 = load i32, i32* @ddcb_trace, align 4, !dbg !583
  %83 = and i32 %82, 1, !dbg !585
  %84 = icmp ne i32 %83, 0, !dbg !585
  br i1 %84, label %85, label %104, !dbg !586

; <label>:85:                                     ; preds = %81
  %86 = call i64 @get_usec(), !dbg !587
  store i64 %86, i64* %18, align 8, !dbg !589
  %87 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %16, align 8, !dbg !590
  %88 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %87, i32 0, i32 19, !dbg !591
  %89 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %88) #7, !dbg !592
  %90 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %16, align 8, !dbg !593
  %91 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %90, i32 0, i32 20, !dbg !594
  %92 = load i64, i64* %91, align 8, !dbg !595
  %93 = add i64 %92, 1, !dbg !595
  store i64 %93, i64* %91, align 8, !dbg !595
  %94 = load i64, i64* %18, align 8, !dbg !596
  %95 = load i64, i64* %17, align 8, !dbg !597
  %96 = sub i64 %94, %95, !dbg !598
  %97 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %16, align 8, !dbg !599
  %98 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %97, i32 0, i32 23, !dbg !600
  %99 = load i64, i64* %98, align 8, !dbg !601
  %100 = add i64 %99, %96, !dbg !601
  store i64 %100, i64* %98, align 8, !dbg !601
  %101 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %16, align 8, !dbg !602
  %102 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %101, i32 0, i32 19, !dbg !603
  %103 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %102) #7, !dbg !604
  br label %104, !dbg !605

; <label>:104:                                    ; preds = %85, %81
  %105 = load %struct.card_dev_t*, %struct.card_dev_t** %15, align 8, !dbg !606
  store %struct.card_dev_t* %105, %struct.card_dev_t** %7, align 8, !dbg !607
  br label %116, !dbg !607

; <label>:106:                                    ; preds = %75, %55, %35
  %107 = load %struct.card_dev_t*, %struct.card_dev_t** %15, align 8, !dbg !608
  %108 = bitcast %struct.card_dev_t* %107 to i8*, !dbg !608
  call void @free(i8* %108) #7, !dbg !609
  br label %109, !dbg !609

; <label>:109:                                    ; preds = %106, %29
  %110 = load i32*, i32** %11, align 8, !dbg !610
  %111 = icmp ne i32* %110, null, !dbg !610
  br i1 %111, label %112, label %115, !dbg !612

; <label>:112:                                    ; preds = %109
  %113 = load i32, i32* %14, align 4, !dbg !613
  %114 = load i32*, i32** %11, align 8, !dbg !614
  store i32 %113, i32* %114, align 4, !dbg !615
  br label %115, !dbg !616

; <label>:115:                                    ; preds = %112, %109
  store %struct.card_dev_t* null, %struct.card_dev_t** %7, align 8, !dbg !617
  br label %116, !dbg !617

; <label>:116:                                    ; preds = %115, %104
  %117 = load %struct.card_dev_t*, %struct.card_dev_t** %7, align 8, !dbg !618
  ret %struct.card_dev_t* %117, !dbg !618
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @get_usec() #5 !dbg !619 {
  %1 = alloca %struct.timeval, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %1, metadata !622, metadata !268), !dbg !630
  %2 = call i32 @gettimeofday(%struct.timeval* %1, %struct.timezone* null) #7, !dbg !631
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0, !dbg !632
  %4 = load i64, i64* %3, align 8, !dbg !632
  %5 = mul nsw i64 %4, 1000000, !dbg !633
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1, !dbg !634
  %7 = load i64, i64* %6, align 8, !dbg !634
  %8 = add nsw i64 %5, %7, !dbg !635
  ret i64 %8, !dbg !636
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #6

; Function Attrs: nounwind uwtable
define internal %struct.ddcb_accel_funcs* @find_accelerator(i32) #0 !dbg !637 {
  %2 = alloca %struct.ddcb_accel_funcs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ddcb_accel_funcs*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !640, metadata !268), !dbg !641
  call void @llvm.dbg.declare(metadata %struct.ddcb_accel_funcs** %4, metadata !642, metadata !268), !dbg !643
  %5 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** @accel_list, align 8, !dbg !644
  store %struct.ddcb_accel_funcs* %5, %struct.ddcb_accel_funcs** %4, align 8, !dbg !646
  br label %6, !dbg !647

; <label>:6:                                      ; preds = %18, %1
  %7 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %4, align 8, !dbg !648
  %8 = icmp ne %struct.ddcb_accel_funcs* %7, null, !dbg !651
  br i1 %8, label %9, label %23, !dbg !652

; <label>:9:                                      ; preds = %6
  %10 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %4, align 8, !dbg !653
  %11 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %10, i32 0, i32 0, !dbg !656
  %12 = load i32, i32* %11, align 8, !dbg !656
  %13 = load i32, i32* %3, align 4, !dbg !657
  %14 = icmp eq i32 %12, %13, !dbg !658
  br i1 %14, label %15, label %17, !dbg !659

; <label>:15:                                     ; preds = %9
  %16 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %4, align 8, !dbg !660
  store %struct.ddcb_accel_funcs* %16, %struct.ddcb_accel_funcs** %2, align 8, !dbg !661
  br label %24, !dbg !661

; <label>:17:                                     ; preds = %9
  br label %18, !dbg !662

; <label>:18:                                     ; preds = %17
  %19 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %4, align 8, !dbg !663
  %20 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %19, i32 0, i32 26, !dbg !665
  %21 = load i8*, i8** %20, align 8, !dbg !665
  %22 = bitcast i8* %21 to %struct.ddcb_accel_funcs*, !dbg !663
  store %struct.ddcb_accel_funcs* %22, %struct.ddcb_accel_funcs** %4, align 8, !dbg !666
  br label %6, !dbg !667, !llvm.loop !668

; <label>:23:                                     ; preds = %6
  store %struct.ddcb_accel_funcs* null, %struct.ddcb_accel_funcs** %2, align 8, !dbg !670
  br label %24, !dbg !670

; <label>:24:                                     ; preds = %23, %15
  %25 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %2, align 8, !dbg !671
  ret %struct.ddcb_accel_funcs* %25, !dbg !671
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #6

; Function Attrs: nounwind
declare void @free(i8*) #6

; Function Attrs: nounwind uwtable
define i32 @accel_close(%struct.card_dev_t*) #0 !dbg !672 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.card_dev_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ddcb_accel_funcs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %3, metadata !675, metadata !268), !dbg !676
  call void @llvm.dbg.declare(metadata i32* %4, metadata !677, metadata !268), !dbg !678
  call void @llvm.dbg.declare(metadata %struct.ddcb_accel_funcs** %5, metadata !679, metadata !268), !dbg !680
  call void @llvm.dbg.declare(metadata i64* %6, metadata !681, metadata !268), !dbg !682
  store i64 0, i64* %6, align 8, !dbg !682
  call void @llvm.dbg.declare(metadata i64* %7, metadata !683, metadata !268), !dbg !684
  store i64 0, i64* %7, align 8, !dbg !684
  %8 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !685
  %9 = icmp eq %struct.card_dev_t* %8, null, !dbg !687
  br i1 %9, label %10, label %11, !dbg !688

; <label>:10:                                     ; preds = %1
  store i32 -405, i32* %2, align 4, !dbg !689
  br label %64, !dbg !689

; <label>:11:                                     ; preds = %1
  %12 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !690
  %13 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %12, i32 0, i32 6, !dbg !691
  %14 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %13, align 8, !dbg !691
  store %struct.ddcb_accel_funcs* %14, %struct.ddcb_accel_funcs** %5, align 8, !dbg !692
  %15 = load i32, i32* @ddcb_trace, align 4, !dbg !693
  %16 = and i32 %15, 1, !dbg !695
  %17 = icmp ne i32 %16, 0, !dbg !695
  br i1 %17, label %18, label %20, !dbg !696

; <label>:18:                                     ; preds = %11
  %19 = call i64 @get_usec(), !dbg !697
  store i64 %19, i64* %6, align 8, !dbg !698
  br label %20, !dbg !699

; <label>:20:                                     ; preds = %18, %11
  %21 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %5, align 8, !dbg !700
  %22 = icmp eq %struct.ddcb_accel_funcs* %21, null, !dbg !702
  br i1 %22, label %23, label %24, !dbg !703

; <label>:23:                                     ; preds = %20
  store i32 -405, i32* %2, align 4, !dbg !704
  br label %64, !dbg !704

; <label>:24:                                     ; preds = %20
  %25 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %5, align 8, !dbg !705
  %26 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %25, i32 0, i32 3, !dbg !707
  %27 = load i32 (i8*)*, i32 (i8*)** %26, align 8, !dbg !707
  %28 = icmp eq i32 (i8*)* %27, null, !dbg !708
  br i1 %28, label %29, label %30, !dbg !709

; <label>:29:                                     ; preds = %24
  store i32 -415, i32* %2, align 4, !dbg !710
  br label %64, !dbg !710

; <label>:30:                                     ; preds = %24
  %31 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %5, align 8, !dbg !711
  %32 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %31, i32 0, i32 3, !dbg !712
  %33 = load i32 (i8*)*, i32 (i8*)** %32, align 8, !dbg !712
  %34 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !713
  %35 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %34, i32 0, i32 3, !dbg !714
  %36 = load i8*, i8** %35, align 8, !dbg !714
  %37 = call i32 %33(i8* %36), !dbg !711
  store i32 %37, i32* %4, align 4, !dbg !715
  %38 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !716
  %39 = bitcast %struct.card_dev_t* %38 to i8*, !dbg !716
  call void @free(i8* %39) #7, !dbg !717
  %40 = load i32, i32* @ddcb_trace, align 4, !dbg !718
  %41 = and i32 %40, 1, !dbg !720
  %42 = icmp ne i32 %41, 0, !dbg !720
  br i1 %42, label %43, label %62, !dbg !721

; <label>:43:                                     ; preds = %30
  %44 = call i64 @get_usec(), !dbg !722
  store i64 %44, i64* %7, align 8, !dbg !724
  %45 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %5, align 8, !dbg !725
  %46 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %45, i32 0, i32 19, !dbg !726
  %47 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %46) #7, !dbg !727
  %48 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %5, align 8, !dbg !728
  %49 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %48, i32 0, i32 22, !dbg !729
  %50 = load i64, i64* %49, align 8, !dbg !730
  %51 = add i64 %50, 1, !dbg !730
  store i64 %51, i64* %49, align 8, !dbg !730
  %52 = load i64, i64* %7, align 8, !dbg !731
  %53 = load i64, i64* %6, align 8, !dbg !732
  %54 = sub i64 %52, %53, !dbg !733
  %55 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %5, align 8, !dbg !734
  %56 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %55, i32 0, i32 25, !dbg !735
  %57 = load i64, i64* %56, align 8, !dbg !736
  %58 = add i64 %57, %54, !dbg !736
  store i64 %58, i64* %56, align 8, !dbg !736
  %59 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %5, align 8, !dbg !737
  %60 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %59, i32 0, i32 19, !dbg !738
  %61 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %60) #7, !dbg !739
  br label %62, !dbg !740

; <label>:62:                                     ; preds = %43, %30
  %63 = load i32, i32* %4, align 4, !dbg !741
  store i32 %63, i32* %2, align 4, !dbg !742
  br label %64, !dbg !742

; <label>:64:                                     ; preds = %62, %29, %23, %10
  %65 = load i32, i32* %2, align 4, !dbg !743
  ret i32 %65, !dbg !743
}

; Function Attrs: nounwind uwtable
define i8* @accel_strerror(%struct.card_dev_t*, i32) #0 !dbg !744 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.card_dev_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ddcb_accel_funcs*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %4, metadata !747, metadata !268), !dbg !748
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !749, metadata !268), !dbg !750
  call void @llvm.dbg.declare(metadata %struct.ddcb_accel_funcs** %6, metadata !751, metadata !268), !dbg !752
  %7 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !753
  %8 = icmp eq %struct.card_dev_t* %7, null, !dbg !755
  br i1 %8, label %9, label %10, !dbg !756

; <label>:9:                                      ; preds = %2
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8** %3, align 8, !dbg !757
  br label %32, !dbg !757

; <label>:10:                                     ; preds = %2
  %11 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !758
  %12 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %11, i32 0, i32 6, !dbg !759
  %13 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %12, align 8, !dbg !759
  store %struct.ddcb_accel_funcs* %13, %struct.ddcb_accel_funcs** %6, align 8, !dbg !760
  %14 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %6, align 8, !dbg !761
  %15 = icmp eq %struct.ddcb_accel_funcs* %14, null, !dbg !763
  br i1 %15, label %16, label %17, !dbg !764

; <label>:16:                                     ; preds = %10
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8** %3, align 8, !dbg !765
  br label %32, !dbg !765

; <label>:17:                                     ; preds = %10
  %18 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %6, align 8, !dbg !766
  %19 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %18, i32 0, i32 5, !dbg !768
  %20 = load i8* (i8*, i32)*, i8* (i8*, i32)** %19, align 8, !dbg !768
  %21 = icmp eq i8* (i8*, i32)* %20, null, !dbg !769
  br i1 %21, label %22, label %23, !dbg !770

; <label>:22:                                     ; preds = %17
  store i8* null, i8** %3, align 8, !dbg !771
  br label %32, !dbg !771

; <label>:23:                                     ; preds = %17
  %24 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %6, align 8, !dbg !772
  %25 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %24, i32 0, i32 5, !dbg !773
  %26 = load i8* (i8*, i32)*, i8* (i8*, i32)** %25, align 8, !dbg !773
  %27 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !774
  %28 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %27, i32 0, i32 3, !dbg !775
  %29 = load i8*, i8** %28, align 8, !dbg !775
  %30 = load i32, i32* %5, align 4, !dbg !776
  %31 = call i8* %26(i8* %29, i32 %30), !dbg !772
  store i8* %31, i8** %3, align 8, !dbg !777
  br label %32, !dbg !777

; <label>:32:                                     ; preds = %23, %22, %16, %9
  %33 = load i8*, i8** %3, align 8, !dbg !778
  ret i8* %33, !dbg !778
}

; Function Attrs: nounwind uwtable
define i32 @accel_ddcb_execute(%struct.card_dev_t*, %struct.ddcb_cmd*, i32*, i32*) #0 !dbg !779 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.card_dev_t*, align 8
  %7 = alloca %struct.ddcb_cmd*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ddcb_accel_funcs*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %6, metadata !782, metadata !268), !dbg !783
  store %struct.ddcb_cmd* %1, %struct.ddcb_cmd** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.ddcb_cmd** %7, metadata !784, metadata !268), !dbg !785
  store i32* %2, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !786, metadata !268), !dbg !787
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !788, metadata !268), !dbg !789
  call void @llvm.dbg.declare(metadata %struct.ddcb_accel_funcs** %10, metadata !790, metadata !268), !dbg !791
  %13 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !792
  %14 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %13, i32 0, i32 6, !dbg !793
  %15 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %14, align 8, !dbg !793
  store %struct.ddcb_accel_funcs* %15, %struct.ddcb_accel_funcs** %10, align 8, !dbg !791
  call void @llvm.dbg.declare(metadata i64* %11, metadata !794, metadata !268), !dbg !795
  store i64 0, i64* %11, align 8, !dbg !795
  call void @llvm.dbg.declare(metadata i64* %12, metadata !796, metadata !268), !dbg !797
  store i64 0, i64* %12, align 8, !dbg !797
  %16 = load i32, i32* @ddcb_trace, align 4, !dbg !798
  %17 = and i32 %16, 1, !dbg !800
  %18 = icmp ne i32 %17, 0, !dbg !800
  br i1 %18, label %19, label %21, !dbg !801

; <label>:19:                                     ; preds = %4
  %20 = call i64 @get_usec(), !dbg !802
  store i64 %20, i64* %11, align 8, !dbg !803
  br label %21, !dbg !804

; <label>:21:                                     ; preds = %19, %4
  %22 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %10, align 8, !dbg !805
  %23 = icmp eq %struct.ddcb_accel_funcs* %22, null, !dbg !807
  br i1 %23, label %24, label %25, !dbg !808

; <label>:24:                                     ; preds = %21
  store i32 -405, i32* %5, align 4, !dbg !809
  br label %91, !dbg !809

; <label>:25:                                     ; preds = %21
  %26 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %10, align 8, !dbg !810
  %27 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %26, i32 0, i32 4, !dbg !812
  %28 = load i32 (i8*, %struct.ddcb_cmd*)*, i32 (i8*, %struct.ddcb_cmd*)** %27, align 8, !dbg !812
  %29 = icmp eq i32 (i8*, %struct.ddcb_cmd*)* %28, null, !dbg !813
  br i1 %29, label %30, label %31, !dbg !814

; <label>:30:                                     ; preds = %25
  store i32 -415, i32* %5, align 4, !dbg !815
  br label %91, !dbg !815

; <label>:31:                                     ; preds = %25
  %32 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %10, align 8, !dbg !816
  %33 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %32, i32 0, i32 4, !dbg !817
  %34 = load i32 (i8*, %struct.ddcb_cmd*)*, i32 (i8*, %struct.ddcb_cmd*)** %33, align 8, !dbg !817
  %35 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !818
  %36 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %35, i32 0, i32 3, !dbg !819
  %37 = load i8*, i8** %36, align 8, !dbg !819
  %38 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %7, align 8, !dbg !820
  %39 = call i32 %34(i8* %37, %struct.ddcb_cmd* %38), !dbg !816
  %40 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !821
  %41 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %40, i32 0, i32 4, !dbg !822
  store i32 %39, i32* %41, align 8, !dbg !823
  %42 = call i32* @__errno_location() #1, !dbg !824
  %43 = load i32, i32* %42, align 4, !dbg !825
  %44 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !826
  %45 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %44, i32 0, i32 5, !dbg !827
  store i32 %43, i32* %45, align 4, !dbg !828
  %46 = load i32*, i32** %8, align 8, !dbg !829
  %47 = icmp ne i32* %46, null, !dbg !831
  br i1 %47, label %48, label %53, !dbg !832

; <label>:48:                                     ; preds = %31
  %49 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !833
  %50 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %49, i32 0, i32 4, !dbg !834
  %51 = load i32, i32* %50, align 8, !dbg !834
  %52 = load i32*, i32** %8, align 8, !dbg !835
  store i32 %51, i32* %52, align 4, !dbg !836
  br label %53, !dbg !837

; <label>:53:                                     ; preds = %48, %31
  %54 = load i32*, i32** %9, align 8, !dbg !838
  %55 = icmp ne i32* %54, null, !dbg !840
  br i1 %55, label %56, label %61, !dbg !841

; <label>:56:                                     ; preds = %53
  %57 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !842
  %58 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %57, i32 0, i32 5, !dbg !843
  %59 = load i32, i32* %58, align 4, !dbg !843
  %60 = load i32*, i32** %9, align 8, !dbg !844
  store i32 %59, i32* %60, align 4, !dbg !845
  br label %61, !dbg !846

; <label>:61:                                     ; preds = %56, %53
  %62 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !847
  %63 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %62, i32 0, i32 4, !dbg !849
  %64 = load i32, i32* %63, align 8, !dbg !849
  %65 = icmp slt i32 %64, 0, !dbg !850
  br i1 %65, label %66, label %67, !dbg !851

; <label>:66:                                     ; preds = %61
  store i32 -402, i32* %5, align 4, !dbg !852
  br label %91, !dbg !852

; <label>:67:                                     ; preds = %61
  %68 = load i32, i32* @ddcb_trace, align 4, !dbg !853
  %69 = and i32 %68, 1, !dbg !855
  %70 = icmp ne i32 %69, 0, !dbg !855
  br i1 %70, label %71, label %90, !dbg !856

; <label>:71:                                     ; preds = %67
  %72 = call i64 @get_usec(), !dbg !857
  store i64 %72, i64* %12, align 8, !dbg !859
  %73 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %10, align 8, !dbg !860
  %74 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %73, i32 0, i32 19, !dbg !861
  %75 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %74) #7, !dbg !862
  %76 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %10, align 8, !dbg !863
  %77 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %76, i32 0, i32 21, !dbg !864
  %78 = load i64, i64* %77, align 8, !dbg !865
  %79 = add i64 %78, 1, !dbg !865
  store i64 %79, i64* %77, align 8, !dbg !865
  %80 = load i64, i64* %12, align 8, !dbg !866
  %81 = load i64, i64* %11, align 8, !dbg !867
  %82 = sub i64 %80, %81, !dbg !868
  %83 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %10, align 8, !dbg !869
  %84 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %83, i32 0, i32 24, !dbg !870
  %85 = load i64, i64* %84, align 8, !dbg !871
  %86 = add i64 %85, %82, !dbg !871
  store i64 %86, i64* %84, align 8, !dbg !871
  %87 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %10, align 8, !dbg !872
  %88 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %87, i32 0, i32 19, !dbg !873
  %89 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %88) #7, !dbg !874
  br label %90, !dbg !875

; <label>:90:                                     ; preds = %71, %67
  store i32 0, i32* %5, align 4, !dbg !876
  br label %91, !dbg !876

; <label>:91:                                     ; preds = %90, %66, %30, %24
  %92 = load i32, i32* %5, align 4, !dbg !877
  ret i32 %92, !dbg !877
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind uwtable
define i64 @accel_read_reg64(%struct.card_dev_t*, i32, i32*) #0 !dbg !878 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.card_dev_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ddcb_accel_funcs*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %5, metadata !881, metadata !268), !dbg !882
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !883, metadata !268), !dbg !884
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !885, metadata !268), !dbg !886
  call void @llvm.dbg.declare(metadata %struct.ddcb_accel_funcs** %8, metadata !887, metadata !268), !dbg !888
  %9 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !889
  %10 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %9, i32 0, i32 6, !dbg !890
  %11 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %10, align 8, !dbg !890
  store %struct.ddcb_accel_funcs* %11, %struct.ddcb_accel_funcs** %8, align 8, !dbg !888
  %12 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %8, align 8, !dbg !891
  %13 = icmp eq %struct.ddcb_accel_funcs* %12, null, !dbg !893
  br i1 %13, label %14, label %20, !dbg !894

; <label>:14:                                     ; preds = %3
  %15 = load i32*, i32** %7, align 8, !dbg !895
  %16 = icmp ne i32* %15, null, !dbg !898
  br i1 %16, label %17, label %19, !dbg !899

; <label>:17:                                     ; preds = %14
  %18 = load i32*, i32** %7, align 8, !dbg !900
  store i32 -405, i32* %18, align 4, !dbg !901
  br label %19, !dbg !902

; <label>:19:                                     ; preds = %17, %14
  store i64 0, i64* %4, align 8, !dbg !903
  br label %41, !dbg !903

; <label>:20:                                     ; preds = %3
  %21 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %8, align 8, !dbg !904
  %22 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %21, i32 0, i32 6, !dbg !906
  %23 = load i64 (i8*, i32, i32*)*, i64 (i8*, i32, i32*)** %22, align 8, !dbg !906
  %24 = icmp eq i64 (i8*, i32, i32*)* %23, null, !dbg !907
  br i1 %24, label %25, label %31, !dbg !908

; <label>:25:                                     ; preds = %20
  %26 = load i32*, i32** %7, align 8, !dbg !909
  %27 = icmp ne i32* %26, null, !dbg !912
  br i1 %27, label %28, label %30, !dbg !913

; <label>:28:                                     ; preds = %25
  %29 = load i32*, i32** %7, align 8, !dbg !914
  store i32 -415, i32* %29, align 4, !dbg !915
  br label %30, !dbg !916

; <label>:30:                                     ; preds = %28, %25
  store i64 0, i64* %4, align 8, !dbg !917
  br label %41, !dbg !917

; <label>:31:                                     ; preds = %20
  %32 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %8, align 8, !dbg !918
  %33 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %32, i32 0, i32 6, !dbg !919
  %34 = load i64 (i8*, i32, i32*)*, i64 (i8*, i32, i32*)** %33, align 8, !dbg !919
  %35 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !920
  %36 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %35, i32 0, i32 3, !dbg !921
  %37 = load i8*, i8** %36, align 8, !dbg !921
  %38 = load i32, i32* %6, align 4, !dbg !922
  %39 = load i32*, i32** %7, align 8, !dbg !923
  %40 = call i64 %34(i8* %37, i32 %38, i32* %39), !dbg !918
  store i64 %40, i64* %4, align 8, !dbg !924
  br label %41, !dbg !924

; <label>:41:                                     ; preds = %31, %30, %19
  %42 = load i64, i64* %4, align 8, !dbg !925
  ret i64 %42, !dbg !925
}

; Function Attrs: nounwind uwtable
define i32 @accel_read_reg32(%struct.card_dev_t*, i32, i32*) #0 !dbg !926 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.card_dev_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ddcb_accel_funcs*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %5, metadata !929, metadata !268), !dbg !930
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !931, metadata !268), !dbg !932
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !933, metadata !268), !dbg !934
  call void @llvm.dbg.declare(metadata %struct.ddcb_accel_funcs** %8, metadata !935, metadata !268), !dbg !936
  %9 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !937
  %10 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %9, i32 0, i32 6, !dbg !938
  %11 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %10, align 8, !dbg !938
  store %struct.ddcb_accel_funcs* %11, %struct.ddcb_accel_funcs** %8, align 8, !dbg !936
  %12 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %8, align 8, !dbg !939
  %13 = icmp eq %struct.ddcb_accel_funcs* %12, null, !dbg !941
  br i1 %13, label %14, label %20, !dbg !942

; <label>:14:                                     ; preds = %3
  %15 = load i32*, i32** %7, align 8, !dbg !943
  %16 = icmp ne i32* %15, null, !dbg !946
  br i1 %16, label %17, label %19, !dbg !947

; <label>:17:                                     ; preds = %14
  %18 = load i32*, i32** %7, align 8, !dbg !948
  store i32 -405, i32* %18, align 4, !dbg !949
  br label %19, !dbg !950

; <label>:19:                                     ; preds = %17, %14
  store i32 0, i32* %4, align 4, !dbg !951
  br label %41, !dbg !951

; <label>:20:                                     ; preds = %3
  %21 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %8, align 8, !dbg !952
  %22 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %21, i32 0, i32 7, !dbg !954
  %23 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %22, align 8, !dbg !954
  %24 = icmp eq i32 (i8*, i32, i32*)* %23, null, !dbg !955
  br i1 %24, label %25, label %31, !dbg !956

; <label>:25:                                     ; preds = %20
  %26 = load i32*, i32** %7, align 8, !dbg !957
  %27 = icmp ne i32* %26, null, !dbg !960
  br i1 %27, label %28, label %30, !dbg !961

; <label>:28:                                     ; preds = %25
  %29 = load i32*, i32** %7, align 8, !dbg !962
  store i32 -415, i32* %29, align 4, !dbg !963
  br label %30, !dbg !964

; <label>:30:                                     ; preds = %28, %25
  store i32 0, i32* %4, align 4, !dbg !965
  br label %41, !dbg !965

; <label>:31:                                     ; preds = %20
  %32 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %8, align 8, !dbg !966
  %33 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %32, i32 0, i32 7, !dbg !967
  %34 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %33, align 8, !dbg !967
  %35 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !968
  %36 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %35, i32 0, i32 3, !dbg !969
  %37 = load i8*, i8** %36, align 8, !dbg !969
  %38 = load i32, i32* %6, align 4, !dbg !970
  %39 = load i32*, i32** %7, align 8, !dbg !971
  %40 = call i32 %34(i8* %37, i32 %38, i32* %39), !dbg !966
  store i32 %40, i32* %4, align 4, !dbg !972
  br label %41, !dbg !972

; <label>:41:                                     ; preds = %31, %30, %19
  %42 = load i32, i32* %4, align 4, !dbg !973
  ret i32 %42, !dbg !973
}

; Function Attrs: nounwind uwtable
define i32 @accel_write_reg64(%struct.card_dev_t*, i32, i64) #0 !dbg !974 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.card_dev_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ddcb_accel_funcs*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %5, metadata !977, metadata !268), !dbg !978
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !979, metadata !268), !dbg !980
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !981, metadata !268), !dbg !982
  call void @llvm.dbg.declare(metadata %struct.ddcb_accel_funcs** %8, metadata !983, metadata !268), !dbg !984
  %9 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !985
  %10 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %9, i32 0, i32 6, !dbg !986
  %11 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %10, align 8, !dbg !986
  store %struct.ddcb_accel_funcs* %11, %struct.ddcb_accel_funcs** %8, align 8, !dbg !984
  %12 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %8, align 8, !dbg !987
  %13 = icmp eq %struct.ddcb_accel_funcs* %12, null, !dbg !989
  br i1 %13, label %14, label %15, !dbg !990

; <label>:14:                                     ; preds = %3
  store i32 -405, i32* %4, align 4, !dbg !991
  br label %31, !dbg !991

; <label>:15:                                     ; preds = %3
  %16 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %8, align 8, !dbg !992
  %17 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %16, i32 0, i32 8, !dbg !994
  %18 = load i32 (i8*, i32, i64)*, i32 (i8*, i32, i64)** %17, align 8, !dbg !994
  %19 = icmp eq i32 (i8*, i32, i64)* %18, null, !dbg !995
  br i1 %19, label %20, label %21, !dbg !996

; <label>:20:                                     ; preds = %15
  store i32 -415, i32* %4, align 4, !dbg !997
  br label %31, !dbg !997

; <label>:21:                                     ; preds = %15
  %22 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %8, align 8, !dbg !998
  %23 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %22, i32 0, i32 8, !dbg !999
  %24 = load i32 (i8*, i32, i64)*, i32 (i8*, i32, i64)** %23, align 8, !dbg !999
  %25 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1000
  %26 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %25, i32 0, i32 3, !dbg !1001
  %27 = load i8*, i8** %26, align 8, !dbg !1001
  %28 = load i32, i32* %6, align 4, !dbg !1002
  %29 = load i64, i64* %7, align 8, !dbg !1003
  %30 = call i32 %24(i8* %27, i32 %28, i64 %29), !dbg !998
  store i32 %30, i32* %4, align 4, !dbg !1004
  br label %31, !dbg !1004

; <label>:31:                                     ; preds = %21, %20, %14
  %32 = load i32, i32* %4, align 4, !dbg !1005
  ret i32 %32, !dbg !1005
}

; Function Attrs: nounwind uwtable
define i32 @accel_write_reg32(%struct.card_dev_t*, i32, i32) #0 !dbg !1006 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.card_dev_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ddcb_accel_funcs*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %5, metadata !1009, metadata !268), !dbg !1010
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1011, metadata !268), !dbg !1012
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1013, metadata !268), !dbg !1014
  call void @llvm.dbg.declare(metadata %struct.ddcb_accel_funcs** %8, metadata !1015, metadata !268), !dbg !1016
  %9 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1017
  %10 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %9, i32 0, i32 6, !dbg !1018
  %11 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %10, align 8, !dbg !1018
  store %struct.ddcb_accel_funcs* %11, %struct.ddcb_accel_funcs** %8, align 8, !dbg !1016
  %12 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %8, align 8, !dbg !1019
  %13 = icmp eq %struct.ddcb_accel_funcs* %12, null, !dbg !1021
  br i1 %13, label %14, label %15, !dbg !1022

; <label>:14:                                     ; preds = %3
  store i32 -405, i32* %4, align 4, !dbg !1023
  br label %31, !dbg !1023

; <label>:15:                                     ; preds = %3
  %16 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %8, align 8, !dbg !1024
  %17 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %16, i32 0, i32 9, !dbg !1026
  %18 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %17, align 8, !dbg !1026
  %19 = icmp eq i32 (i8*, i32, i32)* %18, null, !dbg !1027
  br i1 %19, label %20, label %21, !dbg !1028

; <label>:20:                                     ; preds = %15
  store i32 -415, i32* %4, align 4, !dbg !1029
  br label %31, !dbg !1029

; <label>:21:                                     ; preds = %15
  %22 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %8, align 8, !dbg !1030
  %23 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %22, i32 0, i32 9, !dbg !1031
  %24 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %23, align 8, !dbg !1031
  %25 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1032
  %26 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %25, i32 0, i32 3, !dbg !1033
  %27 = load i8*, i8** %26, align 8, !dbg !1033
  %28 = load i32, i32* %6, align 4, !dbg !1034
  %29 = load i32, i32* %7, align 4, !dbg !1035
  %30 = call i32 %24(i8* %27, i32 %28, i32 %29), !dbg !1030
  store i32 %30, i32* %4, align 4, !dbg !1036
  br label %31, !dbg !1036

; <label>:31:                                     ; preds = %21, %20, %14
  %32 = load i32, i32* %4, align 4, !dbg !1037
  ret i32 %32, !dbg !1037
}

; Function Attrs: nounwind uwtable
define i64 @accel_get_app_id(%struct.card_dev_t*) #0 !dbg !1038 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.card_dev_t*, align 8
  %4 = alloca %struct.ddcb_accel_funcs*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %3, metadata !1041, metadata !268), !dbg !1042
  call void @llvm.dbg.declare(metadata %struct.ddcb_accel_funcs** %4, metadata !1043, metadata !268), !dbg !1044
  %5 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !1045
  %6 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %5, i32 0, i32 6, !dbg !1046
  %7 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %6, align 8, !dbg !1046
  store %struct.ddcb_accel_funcs* %7, %struct.ddcb_accel_funcs** %4, align 8, !dbg !1044
  %8 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %4, align 8, !dbg !1047
  %9 = icmp eq %struct.ddcb_accel_funcs* %8, null, !dbg !1049
  br i1 %9, label %10, label %11, !dbg !1050

; <label>:10:                                     ; preds = %1
  store i64 0, i64* %2, align 8, !dbg !1051
  br label %25, !dbg !1051

; <label>:11:                                     ; preds = %1
  %12 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %4, align 8, !dbg !1052
  %13 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %12, i32 0, i32 10, !dbg !1054
  %14 = load i64 (i8*)*, i64 (i8*)** %13, align 8, !dbg !1054
  %15 = icmp eq i64 (i8*)* %14, null, !dbg !1055
  br i1 %15, label %16, label %17, !dbg !1056

; <label>:16:                                     ; preds = %11
  store i64 0, i64* %2, align 8, !dbg !1057
  br label %25, !dbg !1057

; <label>:17:                                     ; preds = %11
  %18 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %4, align 8, !dbg !1058
  %19 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %18, i32 0, i32 10, !dbg !1059
  %20 = load i64 (i8*)*, i64 (i8*)** %19, align 8, !dbg !1059
  %21 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !1060
  %22 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %21, i32 0, i32 3, !dbg !1061
  %23 = load i8*, i8** %22, align 8, !dbg !1061
  %24 = call i64 %20(i8* %23), !dbg !1058
  store i64 %24, i64* %2, align 8, !dbg !1062
  br label %25, !dbg !1062

; <label>:25:                                     ; preds = %17, %16, %10
  %26 = load i64, i64* %2, align 8, !dbg !1063
  ret i64 %26, !dbg !1063
}

; Function Attrs: nounwind uwtable
define i64 @accel_get_queue_work_time(%struct.card_dev_t*) #0 !dbg !1064 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.card_dev_t*, align 8
  %4 = alloca %struct.ddcb_accel_funcs*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %3, metadata !1065, metadata !268), !dbg !1066
  call void @llvm.dbg.declare(metadata %struct.ddcb_accel_funcs** %4, metadata !1067, metadata !268), !dbg !1068
  %5 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !1069
  %6 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %5, i32 0, i32 6, !dbg !1070
  %7 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %6, align 8, !dbg !1070
  store %struct.ddcb_accel_funcs* %7, %struct.ddcb_accel_funcs** %4, align 8, !dbg !1068
  %8 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %4, align 8, !dbg !1071
  %9 = icmp eq %struct.ddcb_accel_funcs* %8, null, !dbg !1073
  br i1 %9, label %10, label %11, !dbg !1074

; <label>:10:                                     ; preds = %1
  store i64 0, i64* %2, align 8, !dbg !1075
  br label %25, !dbg !1075

; <label>:11:                                     ; preds = %1
  %12 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %4, align 8, !dbg !1076
  %13 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %12, i32 0, i32 11, !dbg !1078
  %14 = load i64 (i8*)*, i64 (i8*)** %13, align 8, !dbg !1078
  %15 = icmp eq i64 (i8*)* %14, null, !dbg !1079
  br i1 %15, label %16, label %17, !dbg !1080

; <label>:16:                                     ; preds = %11
  store i64 0, i64* %2, align 8, !dbg !1081
  br label %25, !dbg !1081

; <label>:17:                                     ; preds = %11
  %18 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %4, align 8, !dbg !1082
  %19 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %18, i32 0, i32 11, !dbg !1083
  %20 = load i64 (i8*)*, i64 (i8*)** %19, align 8, !dbg !1083
  %21 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !1084
  %22 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %21, i32 0, i32 3, !dbg !1085
  %23 = load i8*, i8** %22, align 8, !dbg !1085
  %24 = call i64 %20(i8* %23), !dbg !1082
  store i64 %24, i64* %2, align 8, !dbg !1086
  br label %25, !dbg !1086

; <label>:25:                                     ; preds = %17, %16, %10
  %26 = load i64, i64* %2, align 8, !dbg !1087
  ret i64 %26, !dbg !1087
}

; Function Attrs: nounwind uwtable
define i64 @accel_get_frequency(%struct.card_dev_t*) #0 !dbg !1088 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.card_dev_t*, align 8
  %4 = alloca %struct.ddcb_accel_funcs*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %3, metadata !1089, metadata !268), !dbg !1090
  call void @llvm.dbg.declare(metadata %struct.ddcb_accel_funcs** %4, metadata !1091, metadata !268), !dbg !1092
  %5 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !1093
  %6 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %5, i32 0, i32 6, !dbg !1094
  %7 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %6, align 8, !dbg !1094
  store %struct.ddcb_accel_funcs* %7, %struct.ddcb_accel_funcs** %4, align 8, !dbg !1092
  %8 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %4, align 8, !dbg !1095
  %9 = icmp eq %struct.ddcb_accel_funcs* %8, null, !dbg !1097
  br i1 %9, label %10, label %11, !dbg !1098

; <label>:10:                                     ; preds = %1
  store i64 0, i64* %2, align 8, !dbg !1099
  br label %25, !dbg !1099

; <label>:11:                                     ; preds = %1
  %12 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %4, align 8, !dbg !1100
  %13 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %12, i32 0, i32 12, !dbg !1102
  %14 = load i64 (i8*)*, i64 (i8*)** %13, align 8, !dbg !1102
  %15 = icmp eq i64 (i8*)* %14, null, !dbg !1103
  br i1 %15, label %16, label %17, !dbg !1104

; <label>:16:                                     ; preds = %11
  store i64 0, i64* %2, align 8, !dbg !1105
  br label %25, !dbg !1105

; <label>:17:                                     ; preds = %11
  %18 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %4, align 8, !dbg !1106
  %19 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %18, i32 0, i32 12, !dbg !1107
  %20 = load i64 (i8*)*, i64 (i8*)** %19, align 8, !dbg !1107
  %21 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !1108
  %22 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %21, i32 0, i32 3, !dbg !1109
  %23 = load i8*, i8** %22, align 8, !dbg !1109
  %24 = call i64 %20(i8* %23), !dbg !1106
  store i64 %24, i64* %2, align 8, !dbg !1110
  br label %25, !dbg !1110

; <label>:25:                                     ; preds = %17, %16, %10
  %26 = load i64, i64* %2, align 8, !dbg !1111
  ret i64 %26, !dbg !1111
}

; Function Attrs: nounwind uwtable
define void @accel_dump_hardware_version(%struct.card_dev_t*, %struct._IO_FILE*) #0 !dbg !1112 {
  %3 = alloca %struct.card_dev_t*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct.ddcb_accel_funcs*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %3, metadata !1115, metadata !268), !dbg !1116
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !1117, metadata !268), !dbg !1118
  call void @llvm.dbg.declare(metadata %struct.ddcb_accel_funcs** %5, metadata !1119, metadata !268), !dbg !1120
  %6 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !1121
  %7 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %6, i32 0, i32 6, !dbg !1122
  %8 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %7, align 8, !dbg !1122
  store %struct.ddcb_accel_funcs* %8, %struct.ddcb_accel_funcs** %5, align 8, !dbg !1120
  %9 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %5, align 8, !dbg !1123
  %10 = icmp eq %struct.ddcb_accel_funcs* %9, null, !dbg !1125
  br i1 %10, label %11, label %12, !dbg !1126

; <label>:11:                                     ; preds = %2
  br label %26, !dbg !1127

; <label>:12:                                     ; preds = %2
  %13 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %5, align 8, !dbg !1128
  %14 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %13, i32 0, i32 13, !dbg !1130
  %15 = load void (i8*, %struct._IO_FILE*)*, void (i8*, %struct._IO_FILE*)** %14, align 8, !dbg !1130
  %16 = icmp eq void (i8*, %struct._IO_FILE*)* %15, null, !dbg !1131
  br i1 %16, label %17, label %18, !dbg !1132

; <label>:17:                                     ; preds = %12
  br label %26, !dbg !1133

; <label>:18:                                     ; preds = %12
  %19 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %5, align 8, !dbg !1134
  %20 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %19, i32 0, i32 13, !dbg !1135
  %21 = load void (i8*, %struct._IO_FILE*)*, void (i8*, %struct._IO_FILE*)** %20, align 8, !dbg !1135
  %22 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !1136
  %23 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %22, i32 0, i32 3, !dbg !1137
  %24 = load i8*, i8** %23, align 8, !dbg !1137
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1138
  call void %21(i8* %24, %struct._IO_FILE* %25), !dbg !1134
  br label %26, !dbg !1139

; <label>:26:                                     ; preds = %18, %17, %11
  ret void, !dbg !1140
}

; Function Attrs: nounwind uwtable
define i32 @accel_pin_memory(%struct.card_dev_t*, i8*, i64, i32) #0 !dbg !1141 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.card_dev_t*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ddcb_accel_funcs*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %6, metadata !1144, metadata !268), !dbg !1145
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1146, metadata !268), !dbg !1147
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1148, metadata !268), !dbg !1149
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1150, metadata !268), !dbg !1151
  call void @llvm.dbg.declare(metadata %struct.ddcb_accel_funcs** %10, metadata !1152, metadata !268), !dbg !1153
  %11 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !1154
  %12 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %11, i32 0, i32 6, !dbg !1155
  %13 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %12, align 8, !dbg !1155
  store %struct.ddcb_accel_funcs* %13, %struct.ddcb_accel_funcs** %10, align 8, !dbg !1153
  %14 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %10, align 8, !dbg !1156
  %15 = icmp eq %struct.ddcb_accel_funcs* %14, null, !dbg !1158
  br i1 %15, label %16, label %17, !dbg !1159

; <label>:16:                                     ; preds = %4
  store i32 -405, i32* %5, align 4, !dbg !1160
  br label %34, !dbg !1160

; <label>:17:                                     ; preds = %4
  %18 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %10, align 8, !dbg !1161
  %19 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %18, i32 0, i32 9, !dbg !1163
  %20 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %19, align 8, !dbg !1163
  %21 = icmp eq i32 (i8*, i32, i32)* %20, null, !dbg !1164
  br i1 %21, label %22, label %23, !dbg !1165

; <label>:22:                                     ; preds = %17
  store i32 -415, i32* %5, align 4, !dbg !1166
  br label %34, !dbg !1166

; <label>:23:                                     ; preds = %17
  %24 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %10, align 8, !dbg !1167
  %25 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %24, i32 0, i32 14, !dbg !1168
  %26 = load i32 (i8*, i8*, i64, i32)*, i32 (i8*, i8*, i64, i32)** %25, align 8, !dbg !1168
  %27 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !1169
  %28 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %27, i32 0, i32 3, !dbg !1170
  %29 = load i8*, i8** %28, align 8, !dbg !1170
  %30 = load i8*, i8** %7, align 8, !dbg !1171
  %31 = load i64, i64* %8, align 8, !dbg !1172
  %32 = load i32, i32* %9, align 4, !dbg !1173
  %33 = call i32 %26(i8* %29, i8* %30, i64 %31, i32 %32), !dbg !1167
  store i32 %33, i32* %5, align 4, !dbg !1174
  br label %34, !dbg !1174

; <label>:34:                                     ; preds = %23, %22, %16
  %35 = load i32, i32* %5, align 4, !dbg !1175
  ret i32 %35, !dbg !1175
}

; Function Attrs: nounwind uwtable
define i32 @accel_unpin_memory(%struct.card_dev_t*, i8*, i64) #0 !dbg !1176 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.card_dev_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ddcb_accel_funcs*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %5, metadata !1179, metadata !268), !dbg !1180
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1181, metadata !268), !dbg !1182
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1183, metadata !268), !dbg !1184
  call void @llvm.dbg.declare(metadata %struct.ddcb_accel_funcs** %8, metadata !1185, metadata !268), !dbg !1186
  %9 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1187
  %10 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %9, i32 0, i32 6, !dbg !1188
  %11 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %10, align 8, !dbg !1188
  store %struct.ddcb_accel_funcs* %11, %struct.ddcb_accel_funcs** %8, align 8, !dbg !1186
  %12 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %8, align 8, !dbg !1189
  %13 = icmp eq %struct.ddcb_accel_funcs* %12, null, !dbg !1191
  br i1 %13, label %14, label %15, !dbg !1192

; <label>:14:                                     ; preds = %3
  store i32 -405, i32* %4, align 4, !dbg !1193
  br label %31, !dbg !1193

; <label>:15:                                     ; preds = %3
  %16 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %8, align 8, !dbg !1194
  %17 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %16, i32 0, i32 15, !dbg !1196
  %18 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %17, align 8, !dbg !1196
  %19 = icmp eq i32 (i8*, i8*, i64)* %18, null, !dbg !1197
  br i1 %19, label %20, label %21, !dbg !1198

; <label>:20:                                     ; preds = %15
  store i32 -415, i32* %4, align 4, !dbg !1199
  br label %31, !dbg !1199

; <label>:21:                                     ; preds = %15
  %22 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %8, align 8, !dbg !1200
  %23 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %22, i32 0, i32 15, !dbg !1201
  %24 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %23, align 8, !dbg !1201
  %25 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1202
  %26 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %25, i32 0, i32 3, !dbg !1203
  %27 = load i8*, i8** %26, align 8, !dbg !1203
  %28 = load i8*, i8** %6, align 8, !dbg !1204
  %29 = load i64, i64* %7, align 8, !dbg !1205
  %30 = call i32 %24(i8* %27, i8* %28, i64 %29), !dbg !1200
  store i32 %30, i32* %4, align 4, !dbg !1206
  br label %31, !dbg !1206

; <label>:31:                                     ; preds = %21, %20, %14
  %32 = load i32, i32* %4, align 4, !dbg !1207
  ret i32 %32, !dbg !1207
}

; Function Attrs: nounwind uwtable
define i8* @accel_malloc(%struct.card_dev_t*, i64) #0 !dbg !1208 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.card_dev_t*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ddcb_accel_funcs*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %4, metadata !1211, metadata !268), !dbg !1212
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1213, metadata !268), !dbg !1214
  call void @llvm.dbg.declare(metadata %struct.ddcb_accel_funcs** %6, metadata !1215, metadata !268), !dbg !1216
  %7 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !1217
  %8 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %7, i32 0, i32 6, !dbg !1218
  %9 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %8, align 8, !dbg !1218
  store %struct.ddcb_accel_funcs* %9, %struct.ddcb_accel_funcs** %6, align 8, !dbg !1216
  %10 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %6, align 8, !dbg !1219
  %11 = icmp eq %struct.ddcb_accel_funcs* %10, null, !dbg !1221
  br i1 %11, label %12, label %13, !dbg !1222

; <label>:12:                                     ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !1223
  br label %28, !dbg !1223

; <label>:13:                                     ; preds = %2
  %14 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %6, align 8, !dbg !1224
  %15 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %14, i32 0, i32 16, !dbg !1226
  %16 = load i8* (i8*, i64)*, i8* (i8*, i64)** %15, align 8, !dbg !1226
  %17 = icmp eq i8* (i8*, i64)* %16, null, !dbg !1227
  br i1 %17, label %18, label %19, !dbg !1228

; <label>:18:                                     ; preds = %13
  store i8* null, i8** %3, align 8, !dbg !1229
  br label %28, !dbg !1229

; <label>:19:                                     ; preds = %13
  %20 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %6, align 8, !dbg !1230
  %21 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %20, i32 0, i32 16, !dbg !1231
  %22 = load i8* (i8*, i64)*, i8* (i8*, i64)** %21, align 8, !dbg !1231
  %23 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !1232
  %24 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %23, i32 0, i32 3, !dbg !1233
  %25 = load i8*, i8** %24, align 8, !dbg !1233
  %26 = load i64, i64* %5, align 8, !dbg !1234
  %27 = call i8* %22(i8* %25, i64 %26), !dbg !1230
  store i8* %27, i8** %3, align 8, !dbg !1235
  br label %28, !dbg !1235

; <label>:28:                                     ; preds = %19, %18, %12
  %29 = load i8*, i8** %3, align 8, !dbg !1236
  ret i8* %29, !dbg !1236
}

; Function Attrs: nounwind uwtable
define i32 @accel_free(%struct.card_dev_t*, i8*, i64) #0 !dbg !1237 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.card_dev_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ddcb_accel_funcs*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %5, metadata !1240, metadata !268), !dbg !1241
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1242, metadata !268), !dbg !1243
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1244, metadata !268), !dbg !1245
  call void @llvm.dbg.declare(metadata %struct.ddcb_accel_funcs** %8, metadata !1246, metadata !268), !dbg !1247
  %9 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1248
  %10 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %9, i32 0, i32 6, !dbg !1249
  %11 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %10, align 8, !dbg !1249
  store %struct.ddcb_accel_funcs* %11, %struct.ddcb_accel_funcs** %8, align 8, !dbg !1247
  %12 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %8, align 8, !dbg !1250
  %13 = icmp eq %struct.ddcb_accel_funcs* %12, null, !dbg !1252
  br i1 %13, label %14, label %15, !dbg !1253

; <label>:14:                                     ; preds = %3
  store i32 -405, i32* %4, align 4, !dbg !1254
  br label %31, !dbg !1254

; <label>:15:                                     ; preds = %3
  %16 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %8, align 8, !dbg !1255
  %17 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %16, i32 0, i32 17, !dbg !1257
  %18 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %17, align 8, !dbg !1257
  %19 = icmp eq i32 (i8*, i8*, i64)* %18, null, !dbg !1258
  br i1 %19, label %20, label %21, !dbg !1259

; <label>:20:                                     ; preds = %15
  store i32 -415, i32* %4, align 4, !dbg !1260
  br label %31, !dbg !1260

; <label>:21:                                     ; preds = %15
  %22 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %8, align 8, !dbg !1261
  %23 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %22, i32 0, i32 17, !dbg !1262
  %24 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %23, align 8, !dbg !1262
  %25 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1263
  %26 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %25, i32 0, i32 3, !dbg !1264
  %27 = load i8*, i8** %26, align 8, !dbg !1264
  %28 = load i8*, i8** %6, align 8, !dbg !1265
  %29 = load i64, i64* %7, align 8, !dbg !1266
  %30 = call i32 %24(i8* %27, i8* %28, i64 %29), !dbg !1261
  store i32 %30, i32* %4, align 4, !dbg !1267
  br label %31, !dbg !1267

; <label>:31:                                     ; preds = %21, %20, %14
  %32 = load i32, i32* %4, align 4, !dbg !1268
  ret i32 %32, !dbg !1268
}

; Function Attrs: nounwind uwtable
define i32 @accel_dump_statistics(%struct.ddcb_accel_funcs*, %struct._IO_FILE*) #0 !dbg !1269 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ddcb_accel_funcs*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  store %struct.ddcb_accel_funcs* %0, %struct.ddcb_accel_funcs** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ddcb_accel_funcs** %4, metadata !1272, metadata !268), !dbg !1273
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !1274, metadata !268), !dbg !1275
  %6 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %4, align 8, !dbg !1276
  %7 = icmp eq %struct.ddcb_accel_funcs* %6, null, !dbg !1278
  br i1 %7, label %8, label %9, !dbg !1279

; <label>:8:                                      ; preds = %2
  store i32 -405, i32* %3, align 4, !dbg !1280
  br label %21, !dbg !1280

; <label>:9:                                      ; preds = %2
  %10 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %4, align 8, !dbg !1281
  %11 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %10, i32 0, i32 18, !dbg !1283
  %12 = load i32 (%struct._IO_FILE*)*, i32 (%struct._IO_FILE*)** %11, align 8, !dbg !1283
  %13 = icmp eq i32 (%struct._IO_FILE*)* %12, null, !dbg !1284
  br i1 %13, label %14, label %15, !dbg !1285

; <label>:14:                                     ; preds = %9
  store i32 -415, i32* %3, align 4, !dbg !1286
  br label %21, !dbg !1286

; <label>:15:                                     ; preds = %9
  %16 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %4, align 8, !dbg !1287
  %17 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %16, i32 0, i32 18, !dbg !1288
  %18 = load i32 (%struct._IO_FILE*)*, i32 (%struct._IO_FILE*)** %17, align 8, !dbg !1288
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1289
  %20 = call i32 %18(%struct._IO_FILE* %19), !dbg !1287
  store i32 %20, i32* %3, align 4, !dbg !1290
  br label %21, !dbg !1290

; <label>:21:                                     ; preds = %15, %14, %8
  %22 = load i32, i32* %3, align 4, !dbg !1291
  ret i32 %22, !dbg !1291
}

; Function Attrs: nounwind uwtable
define i32 @ddcb_register_accelerator(%struct.ddcb_accel_funcs*) #0 !dbg !1292 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ddcb_accel_funcs*, align 8
  %4 = alloca i32, align 4
  store %struct.ddcb_accel_funcs* %0, %struct.ddcb_accel_funcs** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ddcb_accel_funcs** %3, metadata !1295, metadata !268), !dbg !1296
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1297, metadata !268), !dbg !1298
  %5 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %3, align 8, !dbg !1299
  %6 = icmp eq %struct.ddcb_accel_funcs* %5, null, !dbg !1301
  br i1 %6, label %7, label %8, !dbg !1302

; <label>:7:                                      ; preds = %1
  store i32 -405, i32* %2, align 4, !dbg !1303
  br label %26, !dbg !1303

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* @ddcb_trace, align 4, !dbg !1304
  %10 = and i32 %9, 1, !dbg !1306
  %11 = icmp ne i32 %10, 0, !dbg !1306
  br i1 %11, label %12, label %20, !dbg !1307

; <label>:12:                                     ; preds = %8
  %13 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %3, align 8, !dbg !1308
  %14 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %13, i32 0, i32 19, !dbg !1310
  %15 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %14, %union.pthread_mutexattr_t* null) #7, !dbg !1311
  store i32 %15, i32* %4, align 4, !dbg !1312
  %16 = load i32, i32* %4, align 4, !dbg !1313
  %17 = icmp ne i32 %16, 0, !dbg !1315
  br i1 %17, label %18, label %19, !dbg !1316

; <label>:18:                                     ; preds = %12
  store i32 -401, i32* %2, align 4, !dbg !1317
  br label %26, !dbg !1317

; <label>:19:                                     ; preds = %12
  br label %20, !dbg !1318

; <label>:20:                                     ; preds = %19, %8
  %21 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** @accel_list, align 8, !dbg !1319
  %22 = bitcast %struct.ddcb_accel_funcs* %21 to i8*, !dbg !1319
  %23 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %3, align 8, !dbg !1320
  %24 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %23, i32 0, i32 26, !dbg !1321
  store i8* %22, i8** %24, align 8, !dbg !1322
  %25 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %3, align 8, !dbg !1323
  store %struct.ddcb_accel_funcs* %25, %struct.ddcb_accel_funcs** @accel_list, align 8, !dbg !1324
  store i32 0, i32* %2, align 4, !dbg !1325
  br label %26, !dbg !1325

; <label>:26:                                     ; preds = %20, %18, %7
  %27 = load i32, i32* %2, align 4, !dbg !1326
  ret i32 %27, !dbg !1326
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #6

; Function Attrs: nounwind uwtable
define internal void @_init() #0 !dbg !1327 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1330, metadata !268), !dbg !1331
  %2 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !1332
  store i8* %2, i8** %1, align 8, !dbg !1331
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1333
  store %struct._IO_FILE* %3, %struct._IO_FILE** @libddcb_fd_out, align 8, !dbg !1334
  %4 = load i8*, i8** %1, align 8, !dbg !1335
  %5 = icmp ne i8* %4, null, !dbg !1337
  br i1 %5, label %6, label %10, !dbg !1338

; <label>:6:                                      ; preds = %0
  %7 = load i8*, i8** %1, align 8, !dbg !1339
  %8 = call i64 @strtol(i8* %7, i8** null, i32 0) #7, !dbg !1340
  %9 = trunc i64 %8 to i32, !dbg !1340
  store i32 %9, i32* @ddcb_trace, align 4, !dbg !1341
  br label %10, !dbg !1342

; <label>:10:                                     ; preds = %6, %0
  ret void, !dbg !1343
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #6

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #6

; Function Attrs: nounwind uwtable
define internal void @_done() #0 !dbg !1344 {
  %1 = alloca %struct.ddcb_accel_funcs*, align 8
  call void @llvm.dbg.declare(metadata %struct.ddcb_accel_funcs** %1, metadata !1345, metadata !268), !dbg !1346
  %2 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** @accel_list, align 8, !dbg !1347
  store %struct.ddcb_accel_funcs* %2, %struct.ddcb_accel_funcs** %1, align 8, !dbg !1349
  br label %3, !dbg !1350

; <label>:3:                                      ; preds = %47, %0
  %4 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %1, align 8, !dbg !1351
  %5 = icmp ne %struct.ddcb_accel_funcs* %4, null, !dbg !1354
  br i1 %5, label %6, label %52, !dbg !1355

; <label>:6:                                      ; preds = %3
  %7 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %1, align 8, !dbg !1356
  %8 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %7, i32 0, i32 20, !dbg !1359
  %9 = load i64, i64* %8, align 8, !dbg !1359
  %10 = icmp eq i64 %9, 0, !dbg !1360
  br i1 %10, label %11, label %12, !dbg !1361

; <label>:11:                                     ; preds = %6
  br label %47, !dbg !1362

; <label>:12:                                     ; preds = %6
  %13 = load i32, i32* @ddcb_trace, align 4, !dbg !1363
  %14 = and i32 %13, 1, !dbg !1365
  %15 = icmp ne i32 %14, 0, !dbg !1365
  br i1 %15, label %16, label %43, !dbg !1366

; <label>:16:                                     ; preds = %12
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @libddcb_fd_out, align 8, !dbg !1367
  %18 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %1, align 8, !dbg !1369
  %19 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %18, i32 0, i32 1, !dbg !1370
  %20 = load i8*, i8** %19, align 8, !dbg !1370
  %21 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %1, align 8, !dbg !1371
  %22 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %21, i32 0, i32 20, !dbg !1372
  %23 = load i64, i64* %22, align 8, !dbg !1372
  %24 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %1, align 8, !dbg !1373
  %25 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %24, i32 0, i32 23, !dbg !1374
  %26 = load i64, i64* %25, align 8, !dbg !1374
  %27 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %1, align 8, !dbg !1375
  %28 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %27, i32 0, i32 21, !dbg !1376
  %29 = load i64, i64* %28, align 8, !dbg !1376
  %30 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %1, align 8, !dbg !1377
  %31 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %30, i32 0, i32 24, !dbg !1378
  %32 = load i64, i64* %31, align 8, !dbg !1378
  %33 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %1, align 8, !dbg !1379
  %34 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %33, i32 0, i32 22, !dbg !1380
  %35 = load i64, i64* %34, align 8, !dbg !1380
  %36 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %1, align 8, !dbg !1381
  %37 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %36, i32 0, i32 25, !dbg !1382
  %38 = load i64, i64* %37, align 8, !dbg !1382
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.8, i32 0, i32 0), i8* %20, i64 %23, i64 %26, i64 %29, i64 %32, i64 %35, i64 %38), !dbg !1383
  %40 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %1, align 8, !dbg !1384
  %41 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %40, i32 0, i32 19, !dbg !1385
  %42 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %41) #7, !dbg !1386
  br label %43, !dbg !1387

; <label>:43:                                     ; preds = %16, %12
  %44 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %1, align 8, !dbg !1388
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @libddcb_fd_out, align 8, !dbg !1389
  %46 = call i32 @accel_dump_statistics(%struct.ddcb_accel_funcs* %44, %struct._IO_FILE* %45), !dbg !1390
  br label %47, !dbg !1391

; <label>:47:                                     ; preds = %43, %11
  %48 = load %struct.ddcb_accel_funcs*, %struct.ddcb_accel_funcs** %1, align 8, !dbg !1392
  %49 = getelementptr inbounds %struct.ddcb_accel_funcs, %struct.ddcb_accel_funcs* %48, i32 0, i32 26, !dbg !1394
  %50 = load i8*, i8** %49, align 8, !dbg !1394
  %51 = bitcast i8* %50 to %struct.ddcb_accel_funcs*, !dbg !1392
  store %struct.ddcb_accel_funcs* %51, %struct.ddcb_accel_funcs** %1, align 8, !dbg !1395
  br label %3, !dbg !1396, !llvm.loop !1397

; <label>:52:                                     ; preds = %3
  ret void, !dbg !1399
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #6

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!260, !261}
!llvm.ident = !{!262}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !18, globals: !30)
!1 = !DIFile(filename: "/home/lichi/Desktop/genwqe/[task]lib--__libDDCB.o/[inter]lib--libddcb.o.i", directory: "/home/lichi/Desktop")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 46, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17}
!6 = !DIEnumerator(name: "_ISupper", value: 256)
!7 = !DIEnumerator(name: "_ISlower", value: 512)
!8 = !DIEnumerator(name: "_ISalpha", value: 1024)
!9 = !DIEnumerator(name: "_ISdigit", value: 2048)
!10 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!11 = !DIEnumerator(name: "_ISspace", value: 8192)
!12 = !DIEnumerator(name: "_ISprint", value: 16384)
!13 = !DIEnumerator(name: "_ISgraph", value: 32768)
!14 = !DIEnumerator(name: "_ISblank", value: 1)
!15 = !DIEnumerator(name: "_IScntrl", value: 2)
!16 = !DIEnumerator(name: "_ISpunct", value: 4)
!17 = !DIEnumerator(name: "_ISalnum", value: 8)
!18 = !{!19, !23, !24, !25, !26, !29}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !21, line: 48, baseType: !22)
!21 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop")
!22 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!24 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!25 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!29 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!30 = !{!31, !33, !35, !36, !95, !102, !106, !108}
!31 = distinct !DIGlobalVariable(name: "libddcb_verbose", scope: !0, file: !32, line: 83, type: !24, isLocal: false, isDefinition: true, variable: i32* @libddcb_verbose)
!32 = !DIFile(filename: "libddcb.c", directory: "/home/lichi/Desktop")
!33 = distinct !DIGlobalVariable(name: "retc_nerr", scope: !0, file: !32, line: 118, type: !34, isLocal: true, isDefinition: true, variable: i32 512)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!35 = distinct !DIGlobalVariable(name: "ddcb_nerr", scope: !0, file: !32, line: 142, type: !34, isLocal: true, isDefinition: true, variable: i32 420)
!36 = distinct !DIGlobalVariable(name: "libddcb_fd_out", scope: !0, file: !32, line: 84, type: !37, isLocal: false, isDefinition: true, variable: %struct._IO_FILE** @libddcb_fd_out)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !39, line: 48, baseType: !40)
!39 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !41, line: 241, size: 1728, align: 64, elements: !42)
!41 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop")
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !63, !64, !65, !66, !70, !71, !73, !77, !80, !82, !83, !84, !85, !86, !90, !91}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !40, file: !41, line: 242, baseType: !24, size: 32, align: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !40, file: !41, line: 247, baseType: !27, size: 64, align: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !40, file: !41, line: 248, baseType: !27, size: 64, align: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !40, file: !41, line: 249, baseType: !27, size: 64, align: 64, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !40, file: !41, line: 250, baseType: !27, size: 64, align: 64, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !40, file: !41, line: 251, baseType: !27, size: 64, align: 64, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !40, file: !41, line: 252, baseType: !27, size: 64, align: 64, offset: 384)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !40, file: !41, line: 253, baseType: !27, size: 64, align: 64, offset: 448)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !40, file: !41, line: 254, baseType: !27, size: 64, align: 64, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !40, file: !41, line: 256, baseType: !27, size: 64, align: 64, offset: 576)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !40, file: !41, line: 257, baseType: !27, size: 64, align: 64, offset: 640)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !40, file: !41, line: 258, baseType: !27, size: 64, align: 64, offset: 704)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !40, file: !41, line: 260, baseType: !56, size: 64, align: 64, offset: 768)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !41, line: 156, size: 192, align: 64, elements: !58)
!58 = !{!59, !60, !62}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !57, file: !41, line: 157, baseType: !56, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !57, file: !41, line: 158, baseType: !61, size: 64, align: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !57, file: !41, line: 162, baseType: !24, size: 32, align: 32, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !40, file: !41, line: 262, baseType: !61, size: 64, align: 64, offset: 832)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !40, file: !41, line: 264, baseType: !24, size: 32, align: 32, offset: 896)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !40, file: !41, line: 268, baseType: !24, size: 32, align: 32, offset: 928)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !40, file: !41, line: 270, baseType: !67, size: 64, align: 64, offset: 960)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !68, line: 131, baseType: !69)
!68 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop")
!69 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !40, file: !41, line: 274, baseType: !25, size: 16, align: 16, offset: 1024)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !40, file: !41, line: 275, baseType: !72, size: 8, align: 8, offset: 1040)
!72 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !40, file: !41, line: 276, baseType: !74, size: 8, align: 8, offset: 1048)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8, align: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 1)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !40, file: !41, line: 280, baseType: !78, size: 64, align: 64, offset: 1088)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !41, line: 150, baseType: null)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !40, file: !41, line: 289, baseType: !81, size: 64, align: 64, offset: 1152)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !68, line: 132, baseType: !69)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !40, file: !41, line: 297, baseType: !23, size: 64, align: 64, offset: 1216)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !40, file: !41, line: 298, baseType: !23, size: 64, align: 64, offset: 1280)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !40, file: !41, line: 299, baseType: !23, size: 64, align: 64, offset: 1344)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !40, file: !41, line: 300, baseType: !23, size: 64, align: 64, offset: 1408)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !40, file: !41, line: 302, baseType: !87, size: 64, align: 64, offset: 1472)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !88, line: 216, baseType: !89)
!88 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop")
!89 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !40, file: !41, line: 303, baseType: !24, size: 32, align: 32, offset: 1536)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !40, file: !41, line: 305, baseType: !92, size: 160, align: 8, offset: 1568)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 160, align: 8, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 20)
!95 = distinct !DIGlobalVariable(name: "retc_errlist", scope: !0, file: !32, line: 105, type: !96, isLocal: true, isDefinition: true, variable: [512 x i8*]* @retc_errlist)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 32768, align: 64, elements: !100)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!100 = !{!101}
!101 = !DISubrange(count: 512)
!102 = distinct !DIGlobalVariable(name: "ddcb_errlist", scope: !0, file: !32, line: 127, type: !103, isLocal: true, isDefinition: true, variable: [420 x i8*]* @ddcb_errlist)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 26880, align: 64, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 420)
!106 = distinct !DIGlobalVariable(name: "ddcb_trace", scope: !0, file: !32, line: 77, type: !107, isLocal: true, isDefinition: true, variable: i32* @ddcb_trace)
!107 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!108 = distinct !DIGlobalVariable(name: "accel_list", scope: !0, file: !32, line: 82, type: !109, isLocal: true, isDefinition: true, variable: %struct.ddcb_accel_funcs** @accel_list)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ddcb_accel_funcs", file: !111, line: 325, size: 1984, align: 64, elements: !112)
!111 = !DIFile(filename: "../include/libddcb.h", directory: "/home/lichi/Desktop")
!112 = !{!113, !114, !115, !121, !125, !172, !176, !181, !185, !189, !193, !197, !198, !199, !203, !209, !213, !217, !221, !225, !253, !254, !255, !256, !257, !258, !259}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "card_type", scope: !110, file: !111, line: 326, baseType: !24, size: 32, align: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "card_name", scope: !110, file: !111, line: 327, baseType: !98, size: 64, align: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "card_open", scope: !110, file: !111, line: 330, baseType: !116, size: 64, align: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!23, !24, !107, !119, !120, !120}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !21, line: 55, baseType: !89)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "card_close", scope: !110, file: !111, line: 332, baseType: !122, size: 64, align: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!24, !23}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "ddcb_execute", scope: !110, file: !111, line: 333, baseType: !126, size: 64, align: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!24, !23, !129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ddcb_cmd", file: !111, line: 154, size: 1856, align: 64, elements: !131)
!131 = !{!132, !136, !137, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !152, !153, !157}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next_addr", scope: !130, file: !111, line: 155, baseType: !133, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !134, line: 30, baseType: !135)
!134 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop")
!135 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !111, line: 156, baseType: !133, size: 64, align: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "acfunc", scope: !130, file: !111, line: 158, baseType: !138, size: 8, align: 8, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !134, line: 20, baseType: !22)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !130, file: !111, line: 159, baseType: !138, size: 8, align: 8, offset: 136)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "asiv_length", scope: !130, file: !111, line: 160, baseType: !138, size: 8, align: 8, offset: 144)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "asv_length", scope: !130, file: !111, line: 161, baseType: !138, size: 8, align: 8, offset: 152)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "cmdopts", scope: !130, file: !111, line: 162, baseType: !143, size: 16, align: 16, offset: 160)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !134, line: 23, baseType: !25)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "retc", scope: !130, file: !111, line: 163, baseType: !143, size: 16, align: 16, offset: 176)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "attn", scope: !130, file: !111, line: 165, baseType: !143, size: 16, align: 16, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "vcrc", scope: !130, file: !111, line: 166, baseType: !143, size: 16, align: 16, offset: 208)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !130, file: !111, line: 167, baseType: !148, size: 32, align: 32, offset: 224)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !134, line: 26, baseType: !107)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "deque_ts", scope: !130, file: !111, line: 169, baseType: !133, size: 64, align: 64, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "cmplt_ts", scope: !130, file: !111, line: 170, baseType: !133, size: 64, align: 64, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "disp_ts", scope: !130, file: !111, line: 171, baseType: !133, size: 64, align: 64, offset: 384)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "ddata_addr", scope: !130, file: !111, line: 173, baseType: !133, size: 64, align: 64, offset: 448)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "asv", scope: !130, file: !111, line: 175, baseType: !154, size: 512, align: 8, offset: 512)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 512, align: 8, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, scope: !130, file: !111, line: 177, baseType: !158, size: 832, align: 64, offset: 1024)
!158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !130, file: !111, line: 177, size: 832, align: 64, elements: !159)
!159 = !{!160, !168}
!160 = !DIDerivedType(tag: DW_TAG_member, scope: !158, file: !111, line: 179, baseType: !161, size: 832, align: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !158, file: !111, line: 179, size: 832, align: 64, elements: !162)
!162 = !{!163, !164}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ats", scope: !161, file: !111, line: 180, baseType: !133, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "asiv", scope: !161, file: !111, line: 181, baseType: !165, size: 768, align: 8, offset: 64)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 768, align: 8, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 96)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__asiv", scope: !158, file: !111, line: 184, baseType: !169, size: 832, align: 8)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 832, align: 8, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 104)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "card_strerror", scope: !110, file: !111, line: 335, baseType: !173, size: 64, align: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!98, !23, !24}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "card_read_reg64", scope: !110, file: !111, line: 339, baseType: !177, size: 64, align: 64, offset: 384)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!120, !23, !180, !119}
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !21, line: 51, baseType: !107)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "card_read_reg32", scope: !110, file: !111, line: 341, baseType: !182, size: 64, align: 64, offset: 448)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!180, !23, !180, !119}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "card_write_reg64", scope: !110, file: !111, line: 343, baseType: !186, size: 64, align: 64, offset: 512)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!24, !23, !180, !120}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "card_write_reg32", scope: !110, file: !111, line: 345, baseType: !190, size: 64, align: 64, offset: 576)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!24, !23, !180, !180}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "card_get_app_id", scope: !110, file: !111, line: 353, baseType: !194, size: 64, align: 64, offset: 640)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!120, !23}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "card_get_queue_work_time", scope: !110, file: !111, line: 354, baseType: !194, size: 64, align: 64, offset: 704)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "card_get_frequency", scope: !110, file: !111, line: 355, baseType: !194, size: 64, align: 64, offset: 768)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "card_dump_hardware_version", scope: !110, file: !111, line: 356, baseType: !200, size: 64, align: 64, offset: 832)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !23, !37}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "card_pin_memory", scope: !110, file: !111, line: 361, baseType: !204, size: 64, align: 64, offset: 896)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!24, !23, !207, !87, !24}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "card_unpin_memory", scope: !110, file: !111, line: 363, baseType: !210, size: 64, align: 64, offset: 960)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!24, !23, !207, !87}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "card_malloc", scope: !110, file: !111, line: 365, baseType: !214, size: 64, align: 64, offset: 1024)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!23, !23, !87}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "card_free", scope: !110, file: !111, line: 366, baseType: !218, size: 64, align: 64, offset: 1088)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!24, !23, !23, !87}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "dump_statistics", scope: !110, file: !111, line: 369, baseType: !222, size: 64, align: 64, offset: 1152)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!24, !37}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "slock", scope: !110, file: !111, line: 371, baseType: !226, size: 320, align: 64, offset: 1216)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !227, line: 128, baseType: !228)
!227 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop")
!228 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !227, line: 90, size: 320, align: 64, elements: !229)
!229 = !{!230, !248, !252}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !228, file: !227, line: 125, baseType: !231, size: 320, align: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !227, line: 92, size: 320, align: 64, elements: !232)
!232 = !{!233, !234, !235, !236, !237, !238, !240, !241}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !231, file: !227, line: 94, baseType: !24, size: 32, align: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !231, file: !227, line: 95, baseType: !107, size: 32, align: 32, offset: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !231, file: !227, line: 96, baseType: !24, size: 32, align: 32, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !231, file: !227, line: 98, baseType: !107, size: 32, align: 32, offset: 96)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !231, file: !227, line: 102, baseType: !24, size: 32, align: 32, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !231, file: !227, line: 104, baseType: !239, size: 16, align: 16, offset: 160)
!239 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !231, file: !227, line: 105, baseType: !239, size: 16, align: 16, offset: 176)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !231, file: !227, line: 106, baseType: !242, size: 128, align: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !227, line: 79, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !227, line: 75, size: 128, align: 64, elements: !244)
!244 = !{!245, !247}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !243, file: !227, line: 77, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !243, file: !227, line: 78, baseType: !246, size: 64, align: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !228, file: !227, line: 126, baseType: !249, size: 320, align: 8)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 320, align: 8, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 40)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !228, file: !227, line: 127, baseType: !69, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "num_open", scope: !110, file: !111, line: 372, baseType: !89, size: 64, align: 64, offset: 1536)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "num_execute", scope: !110, file: !111, line: 373, baseType: !89, size: 64, align: 64, offset: 1600)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "num_close", scope: !110, file: !111, line: 374, baseType: !89, size: 64, align: 64, offset: 1664)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "time_open", scope: !110, file: !111, line: 376, baseType: !89, size: 64, align: 64, offset: 1728)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "time_execute", scope: !110, file: !111, line: 377, baseType: !89, size: 64, align: 64, offset: 1792)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "time_close", scope: !110, file: !111, line: 378, baseType: !89, size: 64, align: 64, offset: 1856)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "priv_data", scope: !110, file: !111, line: 381, baseType: !23, size: 64, align: 64, offset: 1920)
!260 = !{i32 2, !"Dwarf Version", i32 4}
!261 = !{i32 2, !"Debug Info Version", i32 3}
!262 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!263 = distinct !DISubprogram(name: "ddcb_retc_strerror", scope: !32, file: !32, line: 120, type: !264, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!264 = !DISubroutineType(types: !265)
!265 = !{!98, !24}
!266 = !{}
!267 = !DILocalVariable(name: "errnum", arg: 1, scope: !263, file: !32, line: 120, type: !24)
!268 = !DIExpression()
!269 = !DILocation(line: 120, column: 36, scope: !263)
!270 = !DILocation(line: 122, column: 9, scope: !271)
!271 = distinct !DILexicalBlock(scope: !263, file: !32, line: 122, column: 6)
!272 = !DILocation(line: 122, column: 17, scope: !271)
!273 = !DILocation(line: 122, column: 7, scope: !271)
!274 = !DILocation(line: 122, column: 26, scope: !275)
!275 = !DILexicalBlockFile(scope: !271, file: !32, discriminator: 1)
!276 = !DILocation(line: 122, column: 24, scope: !275)
!277 = !DILocation(line: 122, column: 7, scope: !275)
!278 = !DILocation(line: 122, column: 37, scope: !279)
!279 = !DILexicalBlockFile(scope: !271, file: !32, discriminator: 2)
!280 = !DILocation(line: 122, column: 7, scope: !279)
!281 = !DILocation(line: 122, column: 7, scope: !282)
!282 = !DILexicalBlockFile(scope: !271, file: !32, discriminator: 3)
!283 = !DILocation(line: 122, column: 46, scope: !282)
!284 = !DILocation(line: 122, column: 6, scope: !282)
!285 = !DILocation(line: 123, column: 3, scope: !271)
!286 = !DILocation(line: 124, column: 25, scope: !263)
!287 = !DILocation(line: 124, column: 33, scope: !263)
!288 = !DILocation(line: 124, column: 23, scope: !263)
!289 = !DILocation(line: 124, column: 42, scope: !290)
!290 = !DILexicalBlockFile(scope: !263, file: !32, discriminator: 1)
!291 = !DILocation(line: 124, column: 40, scope: !290)
!292 = !DILocation(line: 124, column: 23, scope: !290)
!293 = !DILocation(line: 124, column: 53, scope: !294)
!294 = !DILexicalBlockFile(scope: !263, file: !32, discriminator: 2)
!295 = !DILocation(line: 124, column: 23, scope: !294)
!296 = !DILocation(line: 124, column: 23, scope: !297)
!297 = !DILexicalBlockFile(scope: !263, file: !32, discriminator: 3)
!298 = !DILocation(line: 124, column: 9, scope: !297)
!299 = !DILocation(line: 124, column: 2, scope: !297)
!300 = !DILocation(line: 125, column: 1, scope: !263)
!301 = distinct !DISubprogram(name: "ddcb_strerror", scope: !32, file: !32, line: 144, type: !264, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!302 = !DILocalVariable(name: "errnum", arg: 1, scope: !301, file: !32, line: 144, type: !24)
!303 = !DILocation(line: 144, column: 31, scope: !301)
!304 = !DILocation(line: 146, column: 9, scope: !305)
!305 = distinct !DILexicalBlock(scope: !301, file: !32, line: 146, column: 6)
!306 = !DILocation(line: 146, column: 17, scope: !305)
!307 = !DILocation(line: 146, column: 7, scope: !305)
!308 = !DILocation(line: 146, column: 26, scope: !309)
!309 = !DILexicalBlockFile(scope: !305, file: !32, discriminator: 1)
!310 = !DILocation(line: 146, column: 24, scope: !309)
!311 = !DILocation(line: 146, column: 7, scope: !309)
!312 = !DILocation(line: 146, column: 37, scope: !313)
!313 = !DILexicalBlockFile(scope: !305, file: !32, discriminator: 2)
!314 = !DILocation(line: 146, column: 7, scope: !313)
!315 = !DILocation(line: 146, column: 7, scope: !316)
!316 = !DILexicalBlockFile(scope: !305, file: !32, discriminator: 3)
!317 = !DILocation(line: 146, column: 46, scope: !316)
!318 = !DILocation(line: 146, column: 6, scope: !316)
!319 = !DILocation(line: 147, column: 3, scope: !305)
!320 = !DILocation(line: 148, column: 25, scope: !301)
!321 = !DILocation(line: 148, column: 33, scope: !301)
!322 = !DILocation(line: 148, column: 23, scope: !301)
!323 = !DILocation(line: 148, column: 42, scope: !324)
!324 = !DILexicalBlockFile(scope: !301, file: !32, discriminator: 1)
!325 = !DILocation(line: 148, column: 40, scope: !324)
!326 = !DILocation(line: 148, column: 23, scope: !324)
!327 = !DILocation(line: 148, column: 53, scope: !328)
!328 = !DILexicalBlockFile(scope: !301, file: !32, discriminator: 2)
!329 = !DILocation(line: 148, column: 23, scope: !328)
!330 = !DILocation(line: 148, column: 23, scope: !331)
!331 = !DILexicalBlockFile(scope: !301, file: !32, discriminator: 3)
!332 = !DILocation(line: 148, column: 9, scope: !331)
!333 = !DILocation(line: 148, column: 2, scope: !331)
!334 = !DILocation(line: 149, column: 1, scope: !301)
!335 = distinct !DISubprogram(name: "ddcb_hexdump", scope: !32, file: !32, line: 151, type: !336, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !37, !207, !107}
!338 = !DILocalVariable(name: "fp", arg: 1, scope: !335, file: !32, line: 151, type: !37)
!339 = !DILocation(line: 151, column: 25, scope: !335)
!340 = !DILocalVariable(name: "buff", arg: 2, scope: !335, file: !32, line: 151, type: !207)
!341 = !DILocation(line: 151, column: 41, scope: !335)
!342 = !DILocalVariable(name: "size", arg: 3, scope: !335, file: !32, line: 151, type: !107)
!343 = !DILocation(line: 151, column: 60, scope: !335)
!344 = !DILocalVariable(name: "i", scope: !335, file: !32, line: 153, type: !107)
!345 = !DILocation(line: 153, column: 15, scope: !335)
!346 = !DILocalVariable(name: "j", scope: !335, file: !32, line: 153, type: !107)
!347 = !DILocation(line: 153, column: 18, scope: !335)
!348 = !DILocalVariable(name: "b", scope: !335, file: !32, line: 154, type: !349)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!351 = !DILocation(line: 154, column: 17, scope: !335)
!352 = !DILocation(line: 154, column: 32, scope: !335)
!353 = !DILocalVariable(name: "ascii", scope: !335, file: !32, line: 155, type: !354)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 136, align: 8, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 17)
!357 = !DILocation(line: 155, column: 7, scope: !335)
!358 = !DILocation(line: 157, column: 6, scope: !359)
!359 = distinct !DILexicalBlock(scope: !335, file: !32, line: 157, column: 6)
!360 = !DILocation(line: 157, column: 9, scope: !359)
!361 = !DILocation(line: 157, column: 6, scope: !335)
!362 = !DILocation(line: 158, column: 3, scope: !359)
!363 = !DILocation(line: 160, column: 9, scope: !364)
!364 = distinct !DILexicalBlock(scope: !335, file: !32, line: 160, column: 2)
!365 = !DILocation(line: 160, column: 7, scope: !364)
!366 = !DILocation(line: 160, column: 14, scope: !367)
!367 = !DILexicalBlockFile(scope: !368, file: !32, discriminator: 1)
!368 = distinct !DILexicalBlock(scope: !364, file: !32, line: 160, column: 2)
!369 = !DILocation(line: 160, column: 18, scope: !367)
!370 = !DILocation(line: 160, column: 16, scope: !367)
!371 = !DILocation(line: 160, column: 2, scope: !367)
!372 = !DILocation(line: 161, column: 8, scope: !373)
!373 = distinct !DILexicalBlock(scope: !374, file: !32, line: 161, column: 7)
!374 = distinct !DILexicalBlock(scope: !368, file: !32, line: 160, column: 29)
!375 = !DILocation(line: 161, column: 10, scope: !373)
!376 = !DILocation(line: 161, column: 18, scope: !373)
!377 = !DILocation(line: 161, column: 7, scope: !374)
!378 = !DILocation(line: 162, column: 12, scope: !379)
!379 = distinct !DILexicalBlock(scope: !373, file: !32, line: 161, column: 27)
!380 = !DILocation(line: 162, column: 26, scope: !379)
!381 = !DILocation(line: 162, column: 4, scope: !379)
!382 = !DILocation(line: 163, column: 4, scope: !379)
!383 = !DILocation(line: 164, column: 6, scope: !379)
!384 = !DILocation(line: 165, column: 3, scope: !379)
!385 = !DILocation(line: 166, column: 11, scope: !374)
!386 = !DILocation(line: 166, column: 26, scope: !374)
!387 = !DILocation(line: 166, column: 24, scope: !374)
!388 = !DILocation(line: 166, column: 3, scope: !374)
!389 = !DILocation(line: 167, column: 17, scope: !374)
!390 = !DILocation(line: 167, column: 15, scope: !374)
!391 = !DILocation(line: 167, column: 36, scope: !374)
!392 = !DILocation(line: 167, column: 16, scope: !374)
!393 = !DILocation(line: 167, column: 18, scope: !374)
!394 = !DILocation(line: 167, column: 19, scope: !374)
!395 = !DILocation(line: 167, column: 33, scope: !396)
!396 = !DILexicalBlockFile(scope: !374, file: !32, discriminator: 1)
!397 = !DILocation(line: 167, column: 31, scope: !396)
!398 = !DILocation(line: 167, column: 15, scope: !396)
!399 = !DILocation(line: 167, column: 15, scope: !400)
!400 = !DILexicalBlockFile(scope: !374, file: !32, discriminator: 2)
!401 = !DILocation(line: 167, column: 15, scope: !402)
!402 = !DILexicalBlockFile(scope: !374, file: !32, discriminator: 3)
!403 = !DILocation(line: 167, column: 10, scope: !402)
!404 = !DILocation(line: 167, column: 3, scope: !402)
!405 = !DILocation(line: 167, column: 14, scope: !402)
!406 = !DILocation(line: 169, column: 8, scope: !407)
!407 = distinct !DILexicalBlock(scope: !374, file: !32, line: 169, column: 7)
!408 = !DILocation(line: 169, column: 10, scope: !407)
!409 = !DILocation(line: 169, column: 18, scope: !407)
!410 = !DILocation(line: 169, column: 7, scope: !374)
!411 = !DILocation(line: 170, column: 12, scope: !407)
!412 = !DILocation(line: 170, column: 27, scope: !407)
!413 = !DILocation(line: 170, column: 4, scope: !407)
!414 = !DILocation(line: 171, column: 2, scope: !374)
!415 = !DILocation(line: 160, column: 25, scope: !416)
!416 = !DILexicalBlockFile(scope: !368, file: !32, discriminator: 2)
!417 = !DILocation(line: 160, column: 2, scope: !416)
!418 = distinct !{!418, !419}
!419 = !DILocation(line: 160, column: 2, scope: !335)
!420 = !DILocation(line: 174, column: 2, scope: !335)
!421 = !DILocation(line: 174, column: 9, scope: !422)
!422 = !DILexicalBlockFile(scope: !423, file: !32, discriminator: 1)
!423 = distinct !DILexicalBlock(scope: !424, file: !32, line: 174, column: 2)
!424 = distinct !DILexicalBlock(scope: !335, file: !32, line: 174, column: 2)
!425 = !DILocation(line: 174, column: 15, scope: !422)
!426 = !DILocation(line: 174, column: 20, scope: !422)
!427 = !DILocation(line: 174, column: 27, scope: !422)
!428 = !DILocation(line: 174, column: 11, scope: !422)
!429 = !DILocation(line: 174, column: 2, scope: !422)
!430 = !DILocation(line: 175, column: 11, scope: !431)
!431 = distinct !DILexicalBlock(scope: !423, file: !32, line: 174, column: 41)
!432 = !DILocation(line: 175, column: 3, scope: !431)
!433 = !DILocation(line: 176, column: 10, scope: !431)
!434 = !DILocation(line: 176, column: 3, scope: !431)
!435 = !DILocation(line: 176, column: 14, scope: !431)
!436 = !DILocation(line: 178, column: 8, scope: !437)
!437 = distinct !DILexicalBlock(scope: !431, file: !32, line: 178, column: 7)
!438 = !DILocation(line: 178, column: 10, scope: !437)
!439 = !DILocation(line: 178, column: 18, scope: !437)
!440 = !DILocation(line: 178, column: 7, scope: !431)
!441 = !DILocation(line: 179, column: 12, scope: !437)
!442 = !DILocation(line: 179, column: 27, scope: !437)
!443 = !DILocation(line: 179, column: 4, scope: !437)
!444 = !DILocation(line: 180, column: 2, scope: !431)
!445 = !DILocation(line: 174, column: 37, scope: !446)
!446 = !DILexicalBlockFile(scope: !423, file: !32, discriminator: 2)
!447 = !DILocation(line: 174, column: 2, scope: !446)
!448 = distinct !{!448, !420}
!449 = !DILocation(line: 182, column: 10, scope: !335)
!450 = !DILocation(line: 182, column: 2, scope: !335)
!451 = !DILocation(line: 183, column: 1, scope: !335)
!452 = !DILocation(line: 183, column: 1, scope: !453)
!453 = !DILexicalBlockFile(scope: !335, file: !32, discriminator: 1)
!454 = distinct !DISubprogram(name: "ddcb_debug", scope: !32, file: !32, line: 185, type: !455, isLocal: false, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !24}
!457 = !DILocalVariable(name: "verbosity", arg: 1, scope: !454, file: !32, line: 185, type: !24)
!458 = !DILocation(line: 185, column: 21, scope: !454)
!459 = !DILocation(line: 187, column: 20, scope: !454)
!460 = !DILocation(line: 187, column: 18, scope: !454)
!461 = !DILocation(line: 188, column: 1, scope: !454)
!462 = distinct !DISubprogram(name: "ddcb_set_logfile", scope: !32, file: !32, line: 190, type: !463, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !37}
!465 = !DILocalVariable(name: "fd_out", arg: 1, scope: !462, file: !32, line: 190, type: !37)
!466 = !DILocation(line: 190, column: 29, scope: !462)
!467 = !DILocation(line: 192, column: 19, scope: !462)
!468 = !DILocation(line: 192, column: 17, scope: !462)
!469 = !DILocation(line: 193, column: 1, scope: !462)
!470 = distinct !DISubprogram(name: "accel_open", scope: !32, file: !32, line: 195, type: !471, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!471 = !DISubroutineType(types: !472)
!472 = !{!473, !24, !107, !107, !119, !120, !120}
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "accel_t", file: !111, line: 198, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64, align: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "card_dev_t", file: !32, line: 67, size: 320, align: 64, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !482, !483}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "card_no", scope: !475, file: !32, line: 68, baseType: !24, size: 32, align: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "card_type", scope: !475, file: !32, line: 69, baseType: !24, size: 32, align: 32, offset: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !475, file: !32, line: 70, baseType: !24, size: 32, align: 32, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "card_data", scope: !475, file: !32, line: 71, baseType: !23, size: 64, align: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "card_rc", scope: !475, file: !32, line: 72, baseType: !24, size: 32, align: 32, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "card_errno", scope: !475, file: !32, line: 73, baseType: !24, size: 32, align: 32, offset: 224)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !475, file: !32, line: 74, baseType: !109, size: 64, align: 64, offset: 256)
!484 = !DILocalVariable(name: "card_no", arg: 1, scope: !470, file: !32, line: 195, type: !24)
!485 = !DILocation(line: 195, column: 24, scope: !470)
!486 = !DILocalVariable(name: "card_type", arg: 2, scope: !470, file: !32, line: 195, type: !107)
!487 = !DILocation(line: 195, column: 46, scope: !470)
!488 = !DILocalVariable(name: "mode", arg: 3, scope: !470, file: !32, line: 196, type: !107)
!489 = !DILocation(line: 196, column: 19, scope: !470)
!490 = !DILocalVariable(name: "err_code", arg: 4, scope: !470, file: !32, line: 196, type: !119)
!491 = !DILocation(line: 196, column: 30, scope: !470)
!492 = !DILocalVariable(name: "appl_id", arg: 5, scope: !470, file: !32, line: 197, type: !120)
!493 = !DILocation(line: 197, column: 15, scope: !470)
!494 = !DILocalVariable(name: "appl_id_mask", arg: 6, scope: !470, file: !32, line: 197, type: !120)
!495 = !DILocation(line: 197, column: 33, scope: !470)
!496 = !DILocalVariable(name: "rc", scope: !470, file: !32, line: 199, type: !24)
!497 = !DILocation(line: 199, column: 6, scope: !470)
!498 = !DILocalVariable(name: "card", scope: !470, file: !32, line: 200, type: !474)
!499 = !DILocation(line: 200, column: 21, scope: !470)
!500 = !DILocalVariable(name: "accel", scope: !470, file: !32, line: 201, type: !109)
!501 = !DILocation(line: 201, column: 27, scope: !470)
!502 = !DILocalVariable(name: "s", scope: !470, file: !32, line: 202, type: !120)
!503 = !DILocation(line: 202, column: 11, scope: !470)
!504 = !DILocalVariable(name: "e", scope: !470, file: !32, line: 202, type: !120)
!505 = !DILocation(line: 202, column: 18, scope: !470)
!506 = !DILocation(line: 204, column: 7, scope: !507)
!507 = distinct !DILexicalBlock(scope: !470, file: !32, line: 204, column: 6)
!508 = !DILocation(line: 204, column: 18, scope: !507)
!509 = !DILocation(line: 204, column: 6, scope: !470)
!510 = !DILocation(line: 205, column: 7, scope: !507)
!511 = !DILocation(line: 205, column: 5, scope: !507)
!512 = !DILocation(line: 205, column: 3, scope: !507)
!513 = !DILocation(line: 207, column: 9, scope: !470)
!514 = !DILocation(line: 207, column: 7, scope: !470)
!515 = !DILocation(line: 208, column: 6, scope: !516)
!516 = distinct !DILexicalBlock(scope: !470, file: !32, line: 208, column: 6)
!517 = !DILocation(line: 208, column: 11, scope: !516)
!518 = !DILocation(line: 208, column: 6, scope: !470)
!519 = !DILocation(line: 209, column: 6, scope: !520)
!520 = distinct !DILexicalBlock(scope: !516, file: !32, line: 208, column: 19)
!521 = !DILocation(line: 210, column: 3, scope: !520)
!522 = !DILocation(line: 213, column: 27, scope: !470)
!523 = !DILocation(line: 213, column: 10, scope: !470)
!524 = !DILocation(line: 213, column: 8, scope: !470)
!525 = !DILocation(line: 214, column: 6, scope: !526)
!526 = distinct !DILexicalBlock(scope: !470, file: !32, line: 214, column: 6)
!527 = !DILocation(line: 214, column: 12, scope: !526)
!528 = !DILocation(line: 214, column: 6, scope: !470)
!529 = !DILocation(line: 215, column: 6, scope: !530)
!530 = distinct !DILexicalBlock(scope: !526, file: !32, line: 214, column: 20)
!531 = !DILocation(line: 216, column: 3, scope: !530)
!532 = !DILocation(line: 219, column: 18, scope: !470)
!533 = !DILocation(line: 219, column: 2, scope: !470)
!534 = !DILocation(line: 219, column: 8, scope: !470)
!535 = !DILocation(line: 219, column: 16, scope: !470)
!536 = !DILocation(line: 220, column: 20, scope: !470)
!537 = !DILocation(line: 220, column: 2, scope: !470)
!538 = !DILocation(line: 220, column: 8, scope: !470)
!539 = !DILocation(line: 220, column: 18, scope: !470)
!540 = !DILocation(line: 221, column: 15, scope: !470)
!541 = !DILocation(line: 221, column: 2, scope: !470)
!542 = !DILocation(line: 221, column: 8, scope: !470)
!543 = !DILocation(line: 221, column: 13, scope: !470)
!544 = !DILocation(line: 222, column: 16, scope: !470)
!545 = !DILocation(line: 222, column: 2, scope: !470)
!546 = !DILocation(line: 222, column: 8, scope: !470)
!547 = !DILocation(line: 222, column: 14, scope: !470)
!548 = !DILocation(line: 224, column: 6, scope: !549)
!549 = distinct !DILexicalBlock(scope: !470, file: !32, line: 224, column: 6)
!550 = !DILocation(line: 224, column: 12, scope: !549)
!551 = !DILocation(line: 224, column: 19, scope: !549)
!552 = !DILocation(line: 224, column: 29, scope: !549)
!553 = !DILocation(line: 224, column: 6, scope: !470)
!554 = !DILocation(line: 225, column: 6, scope: !555)
!555 = distinct !DILexicalBlock(scope: !549, file: !32, line: 224, column: 37)
!556 = !DILocation(line: 226, column: 3, scope: !555)
!557 = !DILocation(line: 229, column: 20, scope: !470)
!558 = !DILocation(line: 229, column: 26, scope: !470)
!559 = !DILocation(line: 229, column: 33, scope: !470)
!560 = !DILocation(line: 229, column: 43, scope: !470)
!561 = !DILocation(line: 229, column: 52, scope: !470)
!562 = !DILocation(line: 229, column: 59, scope: !470)
!563 = !DILocation(line: 229, column: 65, scope: !470)
!564 = !DILocation(line: 230, column: 8, scope: !470)
!565 = !DILocation(line: 230, column: 17, scope: !470)
!566 = !DILocation(line: 229, column: 2, scope: !470)
!567 = !DILocation(line: 229, column: 8, scope: !470)
!568 = !DILocation(line: 229, column: 18, scope: !470)
!569 = !DILocation(line: 231, column: 6, scope: !570)
!570 = distinct !DILexicalBlock(scope: !470, file: !32, line: 231, column: 6)
!571 = !DILocation(line: 231, column: 12, scope: !570)
!572 = !DILocation(line: 231, column: 22, scope: !570)
!573 = !DILocation(line: 231, column: 6, scope: !470)
!574 = !DILocation(line: 232, column: 6, scope: !575)
!575 = distinct !DILexicalBlock(scope: !570, file: !32, line: 231, column: 30)
!576 = !DILocation(line: 233, column: 3, scope: !575)
!577 = !DILocation(line: 235, column: 6, scope: !578)
!578 = distinct !DILexicalBlock(scope: !470, file: !32, line: 235, column: 6)
!579 = !DILocation(line: 235, column: 6, scope: !470)
!580 = !DILocation(line: 236, column: 4, scope: !578)
!581 = !DILocation(line: 236, column: 13, scope: !578)
!582 = !DILocation(line: 236, column: 3, scope: !578)
!583 = !DILocation(line: 238, column: 7, scope: !584)
!584 = distinct !DILexicalBlock(scope: !470, file: !32, line: 238, column: 6)
!585 = !DILocation(line: 238, column: 18, scope: !584)
!586 = !DILocation(line: 238, column: 6, scope: !470)
!587 = !DILocation(line: 239, column: 7, scope: !588)
!588 = distinct !DILexicalBlock(scope: !584, file: !32, line: 238, column: 29)
!589 = !DILocation(line: 239, column: 5, scope: !588)
!590 = !DILocation(line: 240, column: 23, scope: !588)
!591 = !DILocation(line: 240, column: 30, scope: !588)
!592 = !DILocation(line: 240, column: 3, scope: !588)
!593 = !DILocation(line: 241, column: 3, scope: !588)
!594 = !DILocation(line: 241, column: 10, scope: !588)
!595 = !DILocation(line: 241, column: 18, scope: !588)
!596 = !DILocation(line: 242, column: 24, scope: !588)
!597 = !DILocation(line: 242, column: 28, scope: !588)
!598 = !DILocation(line: 242, column: 26, scope: !588)
!599 = !DILocation(line: 242, column: 3, scope: !588)
!600 = !DILocation(line: 242, column: 10, scope: !588)
!601 = !DILocation(line: 242, column: 20, scope: !588)
!602 = !DILocation(line: 243, column: 25, scope: !588)
!603 = !DILocation(line: 243, column: 32, scope: !588)
!604 = !DILocation(line: 243, column: 3, scope: !588)
!605 = !DILocation(line: 244, column: 2, scope: !588)
!606 = !DILocation(line: 246, column: 9, scope: !470)
!607 = !DILocation(line: 246, column: 2, scope: !470)
!608 = !DILocation(line: 249, column: 7, scope: !470)
!609 = !DILocation(line: 249, column: 2, scope: !470)
!610 = !DILocation(line: 251, column: 6, scope: !611)
!611 = distinct !DILexicalBlock(scope: !470, file: !32, line: 251, column: 6)
!612 = !DILocation(line: 251, column: 6, scope: !470)
!613 = !DILocation(line: 252, column: 15, scope: !611)
!614 = !DILocation(line: 252, column: 4, scope: !611)
!615 = !DILocation(line: 252, column: 13, scope: !611)
!616 = !DILocation(line: 252, column: 3, scope: !611)
!617 = !DILocation(line: 253, column: 2, scope: !470)
!618 = !DILocation(line: 254, column: 1, scope: !470)
!619 = distinct !DISubprogram(name: "get_usec", scope: !32, file: !32, line: 86, type: !620, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!620 = !DISubroutineType(types: !621)
!621 = !{!120}
!622 = !DILocalVariable(name: "t", scope: !619, file: !32, line: 88, type: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !624, line: 30, size: 128, align: 64, elements: !625)
!624 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop")
!625 = !{!626, !628}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !623, file: !624, line: 32, baseType: !627, size: 64, align: 64)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !68, line: 139, baseType: !69)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !623, file: !624, line: 33, baseType: !629, size: 64, align: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !68, line: 141, baseType: !69)
!630 = !DILocation(line: 88, column: 17, scope: !619)
!631 = !DILocation(line: 90, column: 2, scope: !619)
!632 = !DILocation(line: 91, column: 11, scope: !619)
!633 = !DILocation(line: 91, column: 18, scope: !619)
!634 = !DILocation(line: 91, column: 32, scope: !619)
!635 = !DILocation(line: 91, column: 28, scope: !619)
!636 = !DILocation(line: 91, column: 2, scope: !619)
!637 = distinct !DISubprogram(name: "find_accelerator", scope: !32, file: !32, line: 94, type: !638, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!638 = !DISubroutineType(types: !639)
!639 = !{!109, !24}
!640 = !DILocalVariable(name: "card_type", arg: 1, scope: !637, file: !32, line: 94, type: !24)
!641 = !DILocation(line: 94, column: 54, scope: !637)
!642 = !DILocalVariable(name: "accel", scope: !637, file: !32, line: 96, type: !109)
!643 = !DILocation(line: 96, column: 27, scope: !637)
!644 = !DILocation(line: 98, column: 15, scope: !645)
!645 = distinct !DILexicalBlock(scope: !637, file: !32, line: 98, column: 2)
!646 = !DILocation(line: 98, column: 13, scope: !645)
!647 = !DILocation(line: 98, column: 7, scope: !645)
!648 = !DILocation(line: 98, column: 27, scope: !649)
!649 = !DILexicalBlockFile(scope: !650, file: !32, discriminator: 1)
!650 = distinct !DILexicalBlock(scope: !645, file: !32, line: 98, column: 2)
!651 = !DILocation(line: 98, column: 33, scope: !649)
!652 = !DILocation(line: 98, column: 2, scope: !649)
!653 = !DILocation(line: 99, column: 7, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !32, line: 99, column: 7)
!655 = distinct !DILexicalBlock(scope: !650, file: !32, line: 98, column: 67)
!656 = !DILocation(line: 99, column: 14, scope: !654)
!657 = !DILocation(line: 99, column: 27, scope: !654)
!658 = !DILocation(line: 99, column: 24, scope: !654)
!659 = !DILocation(line: 99, column: 7, scope: !655)
!660 = !DILocation(line: 100, column: 11, scope: !654)
!661 = !DILocation(line: 100, column: 4, scope: !654)
!662 = !DILocation(line: 101, column: 2, scope: !655)
!663 = !DILocation(line: 98, column: 49, scope: !664)
!664 = !DILexicalBlockFile(scope: !650, file: !32, discriminator: 2)
!665 = !DILocation(line: 98, column: 56, scope: !664)
!666 = !DILocation(line: 98, column: 47, scope: !664)
!667 = !DILocation(line: 98, column: 2, scope: !664)
!668 = distinct !{!668, !669}
!669 = !DILocation(line: 98, column: 2, scope: !637)
!670 = !DILocation(line: 102, column: 2, scope: !637)
!671 = !DILocation(line: 103, column: 1, scope: !637)
!672 = distinct !DISubprogram(name: "accel_close", scope: !32, file: !32, line: 256, type: !673, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!673 = !DISubroutineType(types: !674)
!674 = !{!24, !473}
!675 = !DILocalVariable(name: "card", arg: 1, scope: !672, file: !32, line: 256, type: !473)
!676 = !DILocation(line: 256, column: 25, scope: !672)
!677 = !DILocalVariable(name: "rc", scope: !672, file: !32, line: 258, type: !24)
!678 = !DILocation(line: 258, column: 6, scope: !672)
!679 = !DILocalVariable(name: "accel", scope: !672, file: !32, line: 259, type: !109)
!680 = !DILocation(line: 259, column: 27, scope: !672)
!681 = !DILocalVariable(name: "s", scope: !672, file: !32, line: 260, type: !120)
!682 = !DILocation(line: 260, column: 11, scope: !672)
!683 = !DILocalVariable(name: "e", scope: !672, file: !32, line: 260, type: !120)
!684 = !DILocation(line: 260, column: 18, scope: !672)
!685 = !DILocation(line: 262, column: 6, scope: !686)
!686 = distinct !DILexicalBlock(scope: !672, file: !32, line: 262, column: 6)
!687 = !DILocation(line: 262, column: 11, scope: !686)
!688 = !DILocation(line: 262, column: 6, scope: !672)
!689 = !DILocation(line: 263, column: 3, scope: !686)
!690 = !DILocation(line: 265, column: 10, scope: !672)
!691 = !DILocation(line: 265, column: 16, scope: !672)
!692 = !DILocation(line: 265, column: 8, scope: !672)
!693 = !DILocation(line: 267, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !672, file: !32, line: 267, column: 6)
!695 = !DILocation(line: 267, column: 18, scope: !694)
!696 = !DILocation(line: 267, column: 6, scope: !672)
!697 = !DILocation(line: 268, column: 7, scope: !694)
!698 = !DILocation(line: 268, column: 5, scope: !694)
!699 = !DILocation(line: 268, column: 3, scope: !694)
!700 = !DILocation(line: 270, column: 6, scope: !701)
!701 = distinct !DILexicalBlock(scope: !672, file: !32, line: 270, column: 6)
!702 = !DILocation(line: 270, column: 12, scope: !701)
!703 = !DILocation(line: 270, column: 6, scope: !672)
!704 = !DILocation(line: 271, column: 3, scope: !701)
!705 = !DILocation(line: 273, column: 6, scope: !706)
!706 = distinct !DILexicalBlock(scope: !672, file: !32, line: 273, column: 6)
!707 = !DILocation(line: 273, column: 13, scope: !706)
!708 = !DILocation(line: 273, column: 24, scope: !706)
!709 = !DILocation(line: 273, column: 6, scope: !672)
!710 = !DILocation(line: 274, column: 3, scope: !706)
!711 = !DILocation(line: 276, column: 7, scope: !672)
!712 = !DILocation(line: 276, column: 14, scope: !672)
!713 = !DILocation(line: 276, column: 25, scope: !672)
!714 = !DILocation(line: 276, column: 31, scope: !672)
!715 = !DILocation(line: 276, column: 5, scope: !672)
!716 = !DILocation(line: 277, column: 7, scope: !672)
!717 = !DILocation(line: 277, column: 2, scope: !672)
!718 = !DILocation(line: 279, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !672, file: !32, line: 279, column: 6)
!720 = !DILocation(line: 279, column: 18, scope: !719)
!721 = !DILocation(line: 279, column: 6, scope: !672)
!722 = !DILocation(line: 280, column: 7, scope: !723)
!723 = distinct !DILexicalBlock(scope: !719, file: !32, line: 279, column: 29)
!724 = !DILocation(line: 280, column: 5, scope: !723)
!725 = !DILocation(line: 281, column: 23, scope: !723)
!726 = !DILocation(line: 281, column: 30, scope: !723)
!727 = !DILocation(line: 281, column: 3, scope: !723)
!728 = !DILocation(line: 282, column: 3, scope: !723)
!729 = !DILocation(line: 282, column: 10, scope: !723)
!730 = !DILocation(line: 282, column: 19, scope: !723)
!731 = !DILocation(line: 283, column: 25, scope: !723)
!732 = !DILocation(line: 283, column: 29, scope: !723)
!733 = !DILocation(line: 283, column: 27, scope: !723)
!734 = !DILocation(line: 283, column: 3, scope: !723)
!735 = !DILocation(line: 283, column: 10, scope: !723)
!736 = !DILocation(line: 283, column: 21, scope: !723)
!737 = !DILocation(line: 284, column: 25, scope: !723)
!738 = !DILocation(line: 284, column: 32, scope: !723)
!739 = !DILocation(line: 284, column: 3, scope: !723)
!740 = !DILocation(line: 285, column: 2, scope: !723)
!741 = !DILocation(line: 287, column: 9, scope: !672)
!742 = !DILocation(line: 287, column: 2, scope: !672)
!743 = !DILocation(line: 288, column: 1, scope: !672)
!744 = distinct !DISubprogram(name: "accel_strerror", scope: !32, file: !32, line: 290, type: !745, isLocal: false, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!745 = !DISubroutineType(types: !746)
!746 = !{!98, !473, !24}
!747 = !DILocalVariable(name: "card", arg: 1, scope: !744, file: !32, line: 290, type: !473)
!748 = !DILocation(line: 290, column: 36, scope: !744)
!749 = !DILocalVariable(name: "card_rc", arg: 2, scope: !744, file: !32, line: 290, type: !24)
!750 = !DILocation(line: 290, column: 46, scope: !744)
!751 = !DILocalVariable(name: "accel", scope: !744, file: !32, line: 292, type: !109)
!752 = !DILocation(line: 292, column: 27, scope: !744)
!753 = !DILocation(line: 294, column: 6, scope: !754)
!754 = distinct !DILexicalBlock(scope: !744, file: !32, line: 294, column: 6)
!755 = !DILocation(line: 294, column: 11, scope: !754)
!756 = !DILocation(line: 294, column: 6, scope: !744)
!757 = !DILocation(line: 295, column: 3, scope: !754)
!758 = !DILocation(line: 297, column: 10, scope: !744)
!759 = !DILocation(line: 297, column: 16, scope: !744)
!760 = !DILocation(line: 297, column: 8, scope: !744)
!761 = !DILocation(line: 298, column: 6, scope: !762)
!762 = distinct !DILexicalBlock(scope: !744, file: !32, line: 298, column: 6)
!763 = !DILocation(line: 298, column: 12, scope: !762)
!764 = !DILocation(line: 298, column: 6, scope: !744)
!765 = !DILocation(line: 299, column: 3, scope: !762)
!766 = !DILocation(line: 301, column: 6, scope: !767)
!767 = distinct !DILexicalBlock(scope: !744, file: !32, line: 301, column: 6)
!768 = !DILocation(line: 301, column: 13, scope: !767)
!769 = !DILocation(line: 301, column: 27, scope: !767)
!770 = !DILocation(line: 301, column: 6, scope: !744)
!771 = !DILocation(line: 302, column: 3, scope: !767)
!772 = !DILocation(line: 304, column: 9, scope: !744)
!773 = !DILocation(line: 304, column: 16, scope: !744)
!774 = !DILocation(line: 304, column: 30, scope: !744)
!775 = !DILocation(line: 304, column: 36, scope: !744)
!776 = !DILocation(line: 304, column: 47, scope: !744)
!777 = !DILocation(line: 304, column: 2, scope: !744)
!778 = !DILocation(line: 306, column: 1, scope: !744)
!779 = distinct !DISubprogram(name: "accel_ddcb_execute", scope: !32, file: !32, line: 308, type: !780, isLocal: false, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!780 = !DISubroutineType(types: !781)
!781 = !{!24, !473, !129, !119, !119}
!782 = !DILocalVariable(name: "card", arg: 1, scope: !779, file: !32, line: 308, type: !473)
!783 = !DILocation(line: 308, column: 32, scope: !779)
!784 = !DILocalVariable(name: "req", arg: 2, scope: !779, file: !32, line: 308, type: !129)
!785 = !DILocation(line: 308, column: 55, scope: !779)
!786 = !DILocalVariable(name: "card_rc", arg: 3, scope: !779, file: !32, line: 309, type: !119)
!787 = !DILocation(line: 309, column: 9, scope: !779)
!788 = !DILocalVariable(name: "card_errno", arg: 4, scope: !779, file: !32, line: 309, type: !119)
!789 = !DILocation(line: 309, column: 23, scope: !779)
!790 = !DILocalVariable(name: "accel", scope: !779, file: !32, line: 311, type: !109)
!791 = !DILocation(line: 311, column: 27, scope: !779)
!792 = !DILocation(line: 311, column: 35, scope: !779)
!793 = !DILocation(line: 311, column: 41, scope: !779)
!794 = !DILocalVariable(name: "s", scope: !779, file: !32, line: 312, type: !120)
!795 = !DILocation(line: 312, column: 11, scope: !779)
!796 = !DILocalVariable(name: "e", scope: !779, file: !32, line: 312, type: !120)
!797 = !DILocation(line: 312, column: 18, scope: !779)
!798 = !DILocation(line: 314, column: 7, scope: !799)
!799 = distinct !DILexicalBlock(scope: !779, file: !32, line: 314, column: 6)
!800 = !DILocation(line: 314, column: 18, scope: !799)
!801 = !DILocation(line: 314, column: 6, scope: !779)
!802 = !DILocation(line: 315, column: 7, scope: !799)
!803 = !DILocation(line: 315, column: 5, scope: !799)
!804 = !DILocation(line: 315, column: 3, scope: !799)
!805 = !DILocation(line: 317, column: 6, scope: !806)
!806 = distinct !DILexicalBlock(scope: !779, file: !32, line: 317, column: 6)
!807 = !DILocation(line: 317, column: 12, scope: !806)
!808 = !DILocation(line: 317, column: 6, scope: !779)
!809 = !DILocation(line: 318, column: 3, scope: !806)
!810 = !DILocation(line: 320, column: 6, scope: !811)
!811 = distinct !DILexicalBlock(scope: !779, file: !32, line: 320, column: 6)
!812 = !DILocation(line: 320, column: 13, scope: !811)
!813 = !DILocation(line: 320, column: 26, scope: !811)
!814 = !DILocation(line: 320, column: 6, scope: !779)
!815 = !DILocation(line: 321, column: 3, scope: !811)
!816 = !DILocation(line: 323, column: 18, scope: !779)
!817 = !DILocation(line: 323, column: 25, scope: !779)
!818 = !DILocation(line: 323, column: 38, scope: !779)
!819 = !DILocation(line: 323, column: 44, scope: !779)
!820 = !DILocation(line: 323, column: 55, scope: !779)
!821 = !DILocation(line: 323, column: 2, scope: !779)
!822 = !DILocation(line: 323, column: 8, scope: !779)
!823 = !DILocation(line: 323, column: 16, scope: !779)
!824 = !DILocation(line: 324, column: 22, scope: !779)
!825 = !DILocation(line: 324, column: 21, scope: !779)
!826 = !DILocation(line: 324, column: 2, scope: !779)
!827 = !DILocation(line: 324, column: 8, scope: !779)
!828 = !DILocation(line: 324, column: 19, scope: !779)
!829 = !DILocation(line: 326, column: 6, scope: !830)
!830 = distinct !DILexicalBlock(scope: !779, file: !32, line: 326, column: 6)
!831 = !DILocation(line: 326, column: 14, scope: !830)
!832 = !DILocation(line: 326, column: 6, scope: !779)
!833 = !DILocation(line: 327, column: 14, scope: !830)
!834 = !DILocation(line: 327, column: 20, scope: !830)
!835 = !DILocation(line: 327, column: 4, scope: !830)
!836 = !DILocation(line: 327, column: 12, scope: !830)
!837 = !DILocation(line: 327, column: 3, scope: !830)
!838 = !DILocation(line: 328, column: 6, scope: !839)
!839 = distinct !DILexicalBlock(scope: !779, file: !32, line: 328, column: 6)
!840 = !DILocation(line: 328, column: 17, scope: !839)
!841 = !DILocation(line: 328, column: 6, scope: !779)
!842 = !DILocation(line: 329, column: 17, scope: !839)
!843 = !DILocation(line: 329, column: 23, scope: !839)
!844 = !DILocation(line: 329, column: 4, scope: !839)
!845 = !DILocation(line: 329, column: 15, scope: !839)
!846 = !DILocation(line: 329, column: 3, scope: !839)
!847 = !DILocation(line: 330, column: 6, scope: !848)
!848 = distinct !DILexicalBlock(scope: !779, file: !32, line: 330, column: 6)
!849 = !DILocation(line: 330, column: 12, scope: !848)
!850 = !DILocation(line: 330, column: 20, scope: !848)
!851 = !DILocation(line: 330, column: 6, scope: !779)
!852 = !DILocation(line: 331, column: 3, scope: !848)
!853 = !DILocation(line: 333, column: 7, scope: !854)
!854 = distinct !DILexicalBlock(scope: !779, file: !32, line: 333, column: 6)
!855 = !DILocation(line: 333, column: 18, scope: !854)
!856 = !DILocation(line: 333, column: 6, scope: !779)
!857 = !DILocation(line: 334, column: 7, scope: !858)
!858 = distinct !DILexicalBlock(scope: !854, file: !32, line: 333, column: 29)
!859 = !DILocation(line: 334, column: 5, scope: !858)
!860 = !DILocation(line: 335, column: 23, scope: !858)
!861 = !DILocation(line: 335, column: 30, scope: !858)
!862 = !DILocation(line: 335, column: 3, scope: !858)
!863 = !DILocation(line: 336, column: 3, scope: !858)
!864 = !DILocation(line: 336, column: 10, scope: !858)
!865 = !DILocation(line: 336, column: 21, scope: !858)
!866 = !DILocation(line: 337, column: 27, scope: !858)
!867 = !DILocation(line: 337, column: 31, scope: !858)
!868 = !DILocation(line: 337, column: 29, scope: !858)
!869 = !DILocation(line: 337, column: 3, scope: !858)
!870 = !DILocation(line: 337, column: 10, scope: !858)
!871 = !DILocation(line: 337, column: 23, scope: !858)
!872 = !DILocation(line: 338, column: 25, scope: !858)
!873 = !DILocation(line: 338, column: 32, scope: !858)
!874 = !DILocation(line: 338, column: 3, scope: !858)
!875 = !DILocation(line: 339, column: 2, scope: !858)
!876 = !DILocation(line: 341, column: 2, scope: !779)
!877 = !DILocation(line: 342, column: 1, scope: !779)
!878 = distinct !DISubprogram(name: "accel_read_reg64", scope: !32, file: !32, line: 344, type: !879, isLocal: false, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!879 = !DISubroutineType(types: !880)
!880 = !{!120, !473, !180, !119}
!881 = !DILocalVariable(name: "card", arg: 1, scope: !878, file: !32, line: 344, type: !473)
!882 = !DILocation(line: 344, column: 35, scope: !878)
!883 = !DILocalVariable(name: "offs", arg: 2, scope: !878, file: !32, line: 344, type: !180)
!884 = !DILocation(line: 344, column: 50, scope: !878)
!885 = !DILocalVariable(name: "card_rc", arg: 3, scope: !878, file: !32, line: 344, type: !119)
!886 = !DILocation(line: 344, column: 61, scope: !878)
!887 = !DILocalVariable(name: "accel", scope: !878, file: !32, line: 346, type: !109)
!888 = !DILocation(line: 346, column: 27, scope: !878)
!889 = !DILocation(line: 346, column: 35, scope: !878)
!890 = !DILocation(line: 346, column: 41, scope: !878)
!891 = !DILocation(line: 348, column: 6, scope: !892)
!892 = distinct !DILexicalBlock(scope: !878, file: !32, line: 348, column: 6)
!893 = !DILocation(line: 348, column: 12, scope: !892)
!894 = !DILocation(line: 348, column: 6, scope: !878)
!895 = !DILocation(line: 349, column: 7, scope: !896)
!896 = distinct !DILexicalBlock(scope: !897, file: !32, line: 349, column: 7)
!897 = distinct !DILexicalBlock(scope: !892, file: !32, line: 348, column: 20)
!898 = !DILocation(line: 349, column: 15, scope: !896)
!899 = !DILocation(line: 349, column: 7, scope: !897)
!900 = !DILocation(line: 350, column: 5, scope: !896)
!901 = !DILocation(line: 350, column: 13, scope: !896)
!902 = !DILocation(line: 350, column: 4, scope: !896)
!903 = !DILocation(line: 351, column: 3, scope: !897)
!904 = !DILocation(line: 354, column: 6, scope: !905)
!905 = distinct !DILexicalBlock(scope: !878, file: !32, line: 354, column: 6)
!906 = !DILocation(line: 354, column: 13, scope: !905)
!907 = !DILocation(line: 354, column: 29, scope: !905)
!908 = !DILocation(line: 354, column: 6, scope: !878)
!909 = !DILocation(line: 355, column: 7, scope: !910)
!910 = distinct !DILexicalBlock(scope: !911, file: !32, line: 355, column: 7)
!911 = distinct !DILexicalBlock(scope: !905, file: !32, line: 354, column: 37)
!912 = !DILocation(line: 355, column: 15, scope: !910)
!913 = !DILocation(line: 355, column: 7, scope: !911)
!914 = !DILocation(line: 356, column: 5, scope: !910)
!915 = !DILocation(line: 356, column: 13, scope: !910)
!916 = !DILocation(line: 356, column: 4, scope: !910)
!917 = !DILocation(line: 357, column: 3, scope: !911)
!918 = !DILocation(line: 360, column: 9, scope: !878)
!919 = !DILocation(line: 360, column: 16, scope: !878)
!920 = !DILocation(line: 360, column: 32, scope: !878)
!921 = !DILocation(line: 360, column: 38, scope: !878)
!922 = !DILocation(line: 360, column: 49, scope: !878)
!923 = !DILocation(line: 360, column: 55, scope: !878)
!924 = !DILocation(line: 360, column: 2, scope: !878)
!925 = !DILocation(line: 361, column: 1, scope: !878)
!926 = distinct !DISubprogram(name: "accel_read_reg32", scope: !32, file: !32, line: 363, type: !927, isLocal: false, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!927 = !DISubroutineType(types: !928)
!928 = !{!180, !473, !180, !119}
!929 = !DILocalVariable(name: "card", arg: 1, scope: !926, file: !32, line: 363, type: !473)
!930 = !DILocation(line: 363, column: 35, scope: !926)
!931 = !DILocalVariable(name: "offs", arg: 2, scope: !926, file: !32, line: 363, type: !180)
!932 = !DILocation(line: 363, column: 50, scope: !926)
!933 = !DILocalVariable(name: "card_rc", arg: 3, scope: !926, file: !32, line: 363, type: !119)
!934 = !DILocation(line: 363, column: 61, scope: !926)
!935 = !DILocalVariable(name: "accel", scope: !926, file: !32, line: 365, type: !109)
!936 = !DILocation(line: 365, column: 27, scope: !926)
!937 = !DILocation(line: 365, column: 35, scope: !926)
!938 = !DILocation(line: 365, column: 41, scope: !926)
!939 = !DILocation(line: 367, column: 6, scope: !940)
!940 = distinct !DILexicalBlock(scope: !926, file: !32, line: 367, column: 6)
!941 = !DILocation(line: 367, column: 12, scope: !940)
!942 = !DILocation(line: 367, column: 6, scope: !926)
!943 = !DILocation(line: 368, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !945, file: !32, line: 368, column: 7)
!945 = distinct !DILexicalBlock(scope: !940, file: !32, line: 367, column: 20)
!946 = !DILocation(line: 368, column: 15, scope: !944)
!947 = !DILocation(line: 368, column: 7, scope: !945)
!948 = !DILocation(line: 369, column: 5, scope: !944)
!949 = !DILocation(line: 369, column: 13, scope: !944)
!950 = !DILocation(line: 369, column: 4, scope: !944)
!951 = !DILocation(line: 370, column: 3, scope: !945)
!952 = !DILocation(line: 373, column: 6, scope: !953)
!953 = distinct !DILexicalBlock(scope: !926, file: !32, line: 373, column: 6)
!954 = !DILocation(line: 373, column: 13, scope: !953)
!955 = !DILocation(line: 373, column: 29, scope: !953)
!956 = !DILocation(line: 373, column: 6, scope: !926)
!957 = !DILocation(line: 374, column: 7, scope: !958)
!958 = distinct !DILexicalBlock(scope: !959, file: !32, line: 374, column: 7)
!959 = distinct !DILexicalBlock(scope: !953, file: !32, line: 373, column: 37)
!960 = !DILocation(line: 374, column: 15, scope: !958)
!961 = !DILocation(line: 374, column: 7, scope: !959)
!962 = !DILocation(line: 375, column: 5, scope: !958)
!963 = !DILocation(line: 375, column: 13, scope: !958)
!964 = !DILocation(line: 375, column: 4, scope: !958)
!965 = !DILocation(line: 376, column: 3, scope: !959)
!966 = !DILocation(line: 379, column: 9, scope: !926)
!967 = !DILocation(line: 379, column: 16, scope: !926)
!968 = !DILocation(line: 379, column: 32, scope: !926)
!969 = !DILocation(line: 379, column: 38, scope: !926)
!970 = !DILocation(line: 379, column: 49, scope: !926)
!971 = !DILocation(line: 379, column: 55, scope: !926)
!972 = !DILocation(line: 379, column: 2, scope: !926)
!973 = !DILocation(line: 380, column: 1, scope: !926)
!974 = distinct !DISubprogram(name: "accel_write_reg64", scope: !32, file: !32, line: 382, type: !975, isLocal: false, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!975 = !DISubroutineType(types: !976)
!976 = !{!24, !473, !180, !120}
!977 = !DILocalVariable(name: "card", arg: 1, scope: !974, file: !32, line: 382, type: !473)
!978 = !DILocation(line: 382, column: 31, scope: !974)
!979 = !DILocalVariable(name: "offs", arg: 2, scope: !974, file: !32, line: 382, type: !180)
!980 = !DILocation(line: 382, column: 46, scope: !974)
!981 = !DILocalVariable(name: "val", arg: 3, scope: !974, file: !32, line: 382, type: !120)
!982 = !DILocation(line: 382, column: 61, scope: !974)
!983 = !DILocalVariable(name: "accel", scope: !974, file: !32, line: 384, type: !109)
!984 = !DILocation(line: 384, column: 27, scope: !974)
!985 = !DILocation(line: 384, column: 35, scope: !974)
!986 = !DILocation(line: 384, column: 41, scope: !974)
!987 = !DILocation(line: 386, column: 6, scope: !988)
!988 = distinct !DILexicalBlock(scope: !974, file: !32, line: 386, column: 6)
!989 = !DILocation(line: 386, column: 12, scope: !988)
!990 = !DILocation(line: 386, column: 6, scope: !974)
!991 = !DILocation(line: 387, column: 3, scope: !988)
!992 = !DILocation(line: 389, column: 6, scope: !993)
!993 = distinct !DILexicalBlock(scope: !974, file: !32, line: 389, column: 6)
!994 = !DILocation(line: 389, column: 13, scope: !993)
!995 = !DILocation(line: 389, column: 30, scope: !993)
!996 = !DILocation(line: 389, column: 6, scope: !974)
!997 = !DILocation(line: 390, column: 3, scope: !993)
!998 = !DILocation(line: 392, column: 9, scope: !974)
!999 = !DILocation(line: 392, column: 16, scope: !974)
!1000 = !DILocation(line: 392, column: 33, scope: !974)
!1001 = !DILocation(line: 392, column: 39, scope: !974)
!1002 = !DILocation(line: 392, column: 50, scope: !974)
!1003 = !DILocation(line: 392, column: 56, scope: !974)
!1004 = !DILocation(line: 392, column: 2, scope: !974)
!1005 = !DILocation(line: 393, column: 1, scope: !974)
!1006 = distinct !DISubprogram(name: "accel_write_reg32", scope: !32, file: !32, line: 395, type: !1007, isLocal: false, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!24, !473, !180, !180}
!1009 = !DILocalVariable(name: "card", arg: 1, scope: !1006, file: !32, line: 395, type: !473)
!1010 = !DILocation(line: 395, column: 31, scope: !1006)
!1011 = !DILocalVariable(name: "offs", arg: 2, scope: !1006, file: !32, line: 395, type: !180)
!1012 = !DILocation(line: 395, column: 46, scope: !1006)
!1013 = !DILocalVariable(name: "val", arg: 3, scope: !1006, file: !32, line: 395, type: !180)
!1014 = !DILocation(line: 395, column: 61, scope: !1006)
!1015 = !DILocalVariable(name: "accel", scope: !1006, file: !32, line: 397, type: !109)
!1016 = !DILocation(line: 397, column: 27, scope: !1006)
!1017 = !DILocation(line: 397, column: 35, scope: !1006)
!1018 = !DILocation(line: 397, column: 41, scope: !1006)
!1019 = !DILocation(line: 399, column: 6, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1006, file: !32, line: 399, column: 6)
!1021 = !DILocation(line: 399, column: 12, scope: !1020)
!1022 = !DILocation(line: 399, column: 6, scope: !1006)
!1023 = !DILocation(line: 400, column: 3, scope: !1020)
!1024 = !DILocation(line: 402, column: 6, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1006, file: !32, line: 402, column: 6)
!1026 = !DILocation(line: 402, column: 13, scope: !1025)
!1027 = !DILocation(line: 402, column: 30, scope: !1025)
!1028 = !DILocation(line: 402, column: 6, scope: !1006)
!1029 = !DILocation(line: 403, column: 3, scope: !1025)
!1030 = !DILocation(line: 405, column: 9, scope: !1006)
!1031 = !DILocation(line: 405, column: 16, scope: !1006)
!1032 = !DILocation(line: 405, column: 33, scope: !1006)
!1033 = !DILocation(line: 405, column: 39, scope: !1006)
!1034 = !DILocation(line: 405, column: 50, scope: !1006)
!1035 = !DILocation(line: 405, column: 56, scope: !1006)
!1036 = !DILocation(line: 405, column: 2, scope: !1006)
!1037 = !DILocation(line: 406, column: 1, scope: !1006)
!1038 = distinct !DISubprogram(name: "accel_get_app_id", scope: !32, file: !32, line: 408, type: !1039, isLocal: false, isDefinition: true, scopeLine: 409, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!120, !473}
!1041 = !DILocalVariable(name: "card", arg: 1, scope: !1038, file: !32, line: 408, type: !473)
!1042 = !DILocation(line: 408, column: 35, scope: !1038)
!1043 = !DILocalVariable(name: "accel", scope: !1038, file: !32, line: 410, type: !109)
!1044 = !DILocation(line: 410, column: 27, scope: !1038)
!1045 = !DILocation(line: 410, column: 35, scope: !1038)
!1046 = !DILocation(line: 410, column: 41, scope: !1038)
!1047 = !DILocation(line: 412, column: 6, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1038, file: !32, line: 412, column: 6)
!1049 = !DILocation(line: 412, column: 12, scope: !1048)
!1050 = !DILocation(line: 412, column: 6, scope: !1038)
!1051 = !DILocation(line: 413, column: 3, scope: !1048)
!1052 = !DILocation(line: 415, column: 6, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1038, file: !32, line: 415, column: 6)
!1054 = !DILocation(line: 415, column: 13, scope: !1053)
!1055 = !DILocation(line: 415, column: 29, scope: !1053)
!1056 = !DILocation(line: 415, column: 6, scope: !1038)
!1057 = !DILocation(line: 416, column: 3, scope: !1053)
!1058 = !DILocation(line: 418, column: 9, scope: !1038)
!1059 = !DILocation(line: 418, column: 16, scope: !1038)
!1060 = !DILocation(line: 418, column: 32, scope: !1038)
!1061 = !DILocation(line: 418, column: 38, scope: !1038)
!1062 = !DILocation(line: 418, column: 2, scope: !1038)
!1063 = !DILocation(line: 419, column: 1, scope: !1038)
!1064 = distinct !DISubprogram(name: "accel_get_queue_work_time", scope: !32, file: !32, line: 421, type: !1039, isLocal: false, isDefinition: true, scopeLine: 422, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!1065 = !DILocalVariable(name: "card", arg: 1, scope: !1064, file: !32, line: 421, type: !473)
!1066 = !DILocation(line: 421, column: 44, scope: !1064)
!1067 = !DILocalVariable(name: "accel", scope: !1064, file: !32, line: 423, type: !109)
!1068 = !DILocation(line: 423, column: 27, scope: !1064)
!1069 = !DILocation(line: 423, column: 35, scope: !1064)
!1070 = !DILocation(line: 423, column: 41, scope: !1064)
!1071 = !DILocation(line: 425, column: 6, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1064, file: !32, line: 425, column: 6)
!1073 = !DILocation(line: 425, column: 12, scope: !1072)
!1074 = !DILocation(line: 425, column: 6, scope: !1064)
!1075 = !DILocation(line: 426, column: 3, scope: !1072)
!1076 = !DILocation(line: 428, column: 6, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1064, file: !32, line: 428, column: 6)
!1078 = !DILocation(line: 428, column: 13, scope: !1077)
!1079 = !DILocation(line: 428, column: 38, scope: !1077)
!1080 = !DILocation(line: 428, column: 6, scope: !1064)
!1081 = !DILocation(line: 429, column: 3, scope: !1077)
!1082 = !DILocation(line: 431, column: 9, scope: !1064)
!1083 = !DILocation(line: 431, column: 16, scope: !1064)
!1084 = !DILocation(line: 431, column: 41, scope: !1064)
!1085 = !DILocation(line: 431, column: 47, scope: !1064)
!1086 = !DILocation(line: 431, column: 2, scope: !1064)
!1087 = !DILocation(line: 432, column: 1, scope: !1064)
!1088 = distinct !DISubprogram(name: "accel_get_frequency", scope: !32, file: !32, line: 434, type: !1039, isLocal: false, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!1089 = !DILocalVariable(name: "card", arg: 1, scope: !1088, file: !32, line: 434, type: !473)
!1090 = !DILocation(line: 434, column: 38, scope: !1088)
!1091 = !DILocalVariable(name: "accel", scope: !1088, file: !32, line: 436, type: !109)
!1092 = !DILocation(line: 436, column: 27, scope: !1088)
!1093 = !DILocation(line: 436, column: 35, scope: !1088)
!1094 = !DILocation(line: 436, column: 41, scope: !1088)
!1095 = !DILocation(line: 438, column: 6, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1088, file: !32, line: 438, column: 6)
!1097 = !DILocation(line: 438, column: 12, scope: !1096)
!1098 = !DILocation(line: 438, column: 6, scope: !1088)
!1099 = !DILocation(line: 439, column: 3, scope: !1096)
!1100 = !DILocation(line: 441, column: 6, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1088, file: !32, line: 441, column: 6)
!1102 = !DILocation(line: 441, column: 13, scope: !1101)
!1103 = !DILocation(line: 441, column: 32, scope: !1101)
!1104 = !DILocation(line: 441, column: 6, scope: !1088)
!1105 = !DILocation(line: 442, column: 3, scope: !1101)
!1106 = !DILocation(line: 444, column: 9, scope: !1088)
!1107 = !DILocation(line: 444, column: 16, scope: !1088)
!1108 = !DILocation(line: 444, column: 35, scope: !1088)
!1109 = !DILocation(line: 444, column: 41, scope: !1088)
!1110 = !DILocation(line: 444, column: 2, scope: !1088)
!1111 = !DILocation(line: 445, column: 1, scope: !1088)
!1112 = distinct !DISubprogram(name: "accel_dump_hardware_version", scope: !32, file: !32, line: 447, type: !1113, isLocal: false, isDefinition: true, scopeLine: 448, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !473, !37}
!1115 = !DILocalVariable(name: "card", arg: 1, scope: !1112, file: !32, line: 447, type: !473)
!1116 = !DILocation(line: 447, column: 42, scope: !1112)
!1117 = !DILocalVariable(name: "fp", arg: 2, scope: !1112, file: !32, line: 447, type: !37)
!1118 = !DILocation(line: 447, column: 54, scope: !1112)
!1119 = !DILocalVariable(name: "accel", scope: !1112, file: !32, line: 449, type: !109)
!1120 = !DILocation(line: 449, column: 27, scope: !1112)
!1121 = !DILocation(line: 449, column: 35, scope: !1112)
!1122 = !DILocation(line: 449, column: 41, scope: !1112)
!1123 = !DILocation(line: 451, column: 6, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1112, file: !32, line: 451, column: 6)
!1125 = !DILocation(line: 451, column: 12, scope: !1124)
!1126 = !DILocation(line: 451, column: 6, scope: !1112)
!1127 = !DILocation(line: 452, column: 3, scope: !1124)
!1128 = !DILocation(line: 454, column: 6, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1112, file: !32, line: 454, column: 6)
!1130 = !DILocation(line: 454, column: 13, scope: !1129)
!1131 = !DILocation(line: 454, column: 40, scope: !1129)
!1132 = !DILocation(line: 454, column: 6, scope: !1112)
!1133 = !DILocation(line: 455, column: 3, scope: !1129)
!1134 = !DILocation(line: 457, column: 9, scope: !1112)
!1135 = !DILocation(line: 457, column: 16, scope: !1112)
!1136 = !DILocation(line: 457, column: 43, scope: !1112)
!1137 = !DILocation(line: 457, column: 49, scope: !1112)
!1138 = !DILocation(line: 457, column: 60, scope: !1112)
!1139 = !DILocation(line: 457, column: 2, scope: !1112)
!1140 = !DILocation(line: 458, column: 1, scope: !1112)
!1141 = distinct !DISubprogram(name: "accel_pin_memory", scope: !32, file: !32, line: 460, type: !1142, isLocal: false, isDefinition: true, scopeLine: 462, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!24, !473, !207, !87, !24}
!1144 = !DILocalVariable(name: "card", arg: 1, scope: !1141, file: !32, line: 460, type: !473)
!1145 = !DILocation(line: 460, column: 30, scope: !1141)
!1146 = !DILocalVariable(name: "addr", arg: 2, scope: !1141, file: !32, line: 460, type: !207)
!1147 = !DILocation(line: 460, column: 48, scope: !1141)
!1148 = !DILocalVariable(name: "size", arg: 3, scope: !1141, file: !32, line: 460, type: !87)
!1149 = !DILocation(line: 460, column: 61, scope: !1141)
!1150 = !DILocalVariable(name: "dir", arg: 4, scope: !1141, file: !32, line: 461, type: !24)
!1151 = !DILocation(line: 461, column: 9, scope: !1141)
!1152 = !DILocalVariable(name: "accel", scope: !1141, file: !32, line: 463, type: !109)
!1153 = !DILocation(line: 463, column: 27, scope: !1141)
!1154 = !DILocation(line: 463, column: 35, scope: !1141)
!1155 = !DILocation(line: 463, column: 41, scope: !1141)
!1156 = !DILocation(line: 465, column: 6, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1141, file: !32, line: 465, column: 6)
!1158 = !DILocation(line: 465, column: 12, scope: !1157)
!1159 = !DILocation(line: 465, column: 6, scope: !1141)
!1160 = !DILocation(line: 466, column: 3, scope: !1157)
!1161 = !DILocation(line: 468, column: 6, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1141, file: !32, line: 468, column: 6)
!1163 = !DILocation(line: 468, column: 13, scope: !1162)
!1164 = !DILocation(line: 468, column: 30, scope: !1162)
!1165 = !DILocation(line: 468, column: 6, scope: !1141)
!1166 = !DILocation(line: 469, column: 3, scope: !1162)
!1167 = !DILocation(line: 471, column: 9, scope: !1141)
!1168 = !DILocation(line: 471, column: 16, scope: !1141)
!1169 = !DILocation(line: 471, column: 32, scope: !1141)
!1170 = !DILocation(line: 471, column: 38, scope: !1141)
!1171 = !DILocation(line: 471, column: 49, scope: !1141)
!1172 = !DILocation(line: 471, column: 55, scope: !1141)
!1173 = !DILocation(line: 471, column: 61, scope: !1141)
!1174 = !DILocation(line: 471, column: 2, scope: !1141)
!1175 = !DILocation(line: 472, column: 1, scope: !1141)
!1176 = distinct !DISubprogram(name: "accel_unpin_memory", scope: !32, file: !32, line: 474, type: !1177, isLocal: false, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!24, !473, !207, !87}
!1179 = !DILocalVariable(name: "card", arg: 1, scope: !1176, file: !32, line: 474, type: !473)
!1180 = !DILocation(line: 474, column: 32, scope: !1176)
!1181 = !DILocalVariable(name: "addr", arg: 2, scope: !1176, file: !32, line: 475, type: !207)
!1182 = !DILocation(line: 475, column: 19, scope: !1176)
!1183 = !DILocalVariable(name: "size", arg: 3, scope: !1176, file: !32, line: 476, type: !87)
!1184 = !DILocation(line: 476, column: 14, scope: !1176)
!1185 = !DILocalVariable(name: "accel", scope: !1176, file: !32, line: 478, type: !109)
!1186 = !DILocation(line: 478, column: 27, scope: !1176)
!1187 = !DILocation(line: 478, column: 35, scope: !1176)
!1188 = !DILocation(line: 478, column: 41, scope: !1176)
!1189 = !DILocation(line: 480, column: 6, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1176, file: !32, line: 480, column: 6)
!1191 = !DILocation(line: 480, column: 12, scope: !1190)
!1192 = !DILocation(line: 480, column: 6, scope: !1176)
!1193 = !DILocation(line: 481, column: 3, scope: !1190)
!1194 = !DILocation(line: 483, column: 6, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1176, file: !32, line: 483, column: 6)
!1196 = !DILocation(line: 483, column: 13, scope: !1195)
!1197 = !DILocation(line: 483, column: 31, scope: !1195)
!1198 = !DILocation(line: 483, column: 6, scope: !1176)
!1199 = !DILocation(line: 484, column: 3, scope: !1195)
!1200 = !DILocation(line: 486, column: 9, scope: !1176)
!1201 = !DILocation(line: 486, column: 16, scope: !1176)
!1202 = !DILocation(line: 486, column: 34, scope: !1176)
!1203 = !DILocation(line: 486, column: 40, scope: !1176)
!1204 = !DILocation(line: 486, column: 51, scope: !1176)
!1205 = !DILocation(line: 486, column: 57, scope: !1176)
!1206 = !DILocation(line: 486, column: 2, scope: !1176)
!1207 = !DILocation(line: 487, column: 1, scope: !1176)
!1208 = distinct !DISubprogram(name: "accel_malloc", scope: !32, file: !32, line: 489, type: !1209, isLocal: false, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!23, !473, !87}
!1211 = !DILocalVariable(name: "card", arg: 1, scope: !1208, file: !32, line: 489, type: !473)
!1212 = !DILocation(line: 489, column: 28, scope: !1208)
!1213 = !DILocalVariable(name: "size", arg: 2, scope: !1208, file: !32, line: 489, type: !87)
!1214 = !DILocation(line: 489, column: 41, scope: !1208)
!1215 = !DILocalVariable(name: "accel", scope: !1208, file: !32, line: 491, type: !109)
!1216 = !DILocation(line: 491, column: 27, scope: !1208)
!1217 = !DILocation(line: 491, column: 35, scope: !1208)
!1218 = !DILocation(line: 491, column: 41, scope: !1208)
!1219 = !DILocation(line: 493, column: 6, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1208, file: !32, line: 493, column: 6)
!1221 = !DILocation(line: 493, column: 12, scope: !1220)
!1222 = !DILocation(line: 493, column: 6, scope: !1208)
!1223 = !DILocation(line: 494, column: 3, scope: !1220)
!1224 = !DILocation(line: 496, column: 6, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1208, file: !32, line: 496, column: 6)
!1226 = !DILocation(line: 496, column: 13, scope: !1225)
!1227 = !DILocation(line: 496, column: 25, scope: !1225)
!1228 = !DILocation(line: 496, column: 6, scope: !1208)
!1229 = !DILocation(line: 497, column: 3, scope: !1225)
!1230 = !DILocation(line: 499, column: 9, scope: !1208)
!1231 = !DILocation(line: 499, column: 16, scope: !1208)
!1232 = !DILocation(line: 499, column: 28, scope: !1208)
!1233 = !DILocation(line: 499, column: 34, scope: !1208)
!1234 = !DILocation(line: 499, column: 45, scope: !1208)
!1235 = !DILocation(line: 499, column: 2, scope: !1208)
!1236 = !DILocation(line: 500, column: 1, scope: !1208)
!1237 = distinct !DISubprogram(name: "accel_free", scope: !32, file: !32, line: 502, type: !1238, isLocal: false, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!24, !473, !23, !87}
!1240 = !DILocalVariable(name: "card", arg: 1, scope: !1237, file: !32, line: 502, type: !473)
!1241 = !DILocation(line: 502, column: 24, scope: !1237)
!1242 = !DILocalVariable(name: "ptr", arg: 2, scope: !1237, file: !32, line: 502, type: !23)
!1243 = !DILocation(line: 502, column: 36, scope: !1237)
!1244 = !DILocalVariable(name: "size", arg: 3, scope: !1237, file: !32, line: 502, type: !87)
!1245 = !DILocation(line: 502, column: 48, scope: !1237)
!1246 = !DILocalVariable(name: "accel", scope: !1237, file: !32, line: 504, type: !109)
!1247 = !DILocation(line: 504, column: 27, scope: !1237)
!1248 = !DILocation(line: 504, column: 35, scope: !1237)
!1249 = !DILocation(line: 504, column: 41, scope: !1237)
!1250 = !DILocation(line: 506, column: 6, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1237, file: !32, line: 506, column: 6)
!1252 = !DILocation(line: 506, column: 12, scope: !1251)
!1253 = !DILocation(line: 506, column: 6, scope: !1237)
!1254 = !DILocation(line: 507, column: 3, scope: !1251)
!1255 = !DILocation(line: 509, column: 6, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1237, file: !32, line: 509, column: 6)
!1257 = !DILocation(line: 509, column: 13, scope: !1256)
!1258 = !DILocation(line: 509, column: 23, scope: !1256)
!1259 = !DILocation(line: 509, column: 6, scope: !1237)
!1260 = !DILocation(line: 510, column: 3, scope: !1256)
!1261 = !DILocation(line: 512, column: 9, scope: !1237)
!1262 = !DILocation(line: 512, column: 16, scope: !1237)
!1263 = !DILocation(line: 512, column: 26, scope: !1237)
!1264 = !DILocation(line: 512, column: 32, scope: !1237)
!1265 = !DILocation(line: 512, column: 43, scope: !1237)
!1266 = !DILocation(line: 512, column: 48, scope: !1237)
!1267 = !DILocation(line: 512, column: 2, scope: !1237)
!1268 = !DILocation(line: 513, column: 1, scope: !1237)
!1269 = distinct !DISubprogram(name: "accel_dump_statistics", scope: !32, file: !32, line: 515, type: !1270, isLocal: false, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!24, !109, !37}
!1272 = !DILocalVariable(name: "accel", arg: 1, scope: !1269, file: !32, line: 515, type: !109)
!1273 = !DILocation(line: 515, column: 52, scope: !1269)
!1274 = !DILocalVariable(name: "fp", arg: 2, scope: !1269, file: !32, line: 515, type: !37)
!1275 = !DILocation(line: 515, column: 65, scope: !1269)
!1276 = !DILocation(line: 517, column: 6, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1269, file: !32, line: 517, column: 6)
!1278 = !DILocation(line: 517, column: 12, scope: !1277)
!1279 = !DILocation(line: 517, column: 6, scope: !1269)
!1280 = !DILocation(line: 518, column: 3, scope: !1277)
!1281 = !DILocation(line: 520, column: 6, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1269, file: !32, line: 520, column: 6)
!1283 = !DILocation(line: 520, column: 13, scope: !1282)
!1284 = !DILocation(line: 520, column: 29, scope: !1282)
!1285 = !DILocation(line: 520, column: 6, scope: !1269)
!1286 = !DILocation(line: 521, column: 3, scope: !1282)
!1287 = !DILocation(line: 523, column: 9, scope: !1269)
!1288 = !DILocation(line: 523, column: 16, scope: !1269)
!1289 = !DILocation(line: 523, column: 32, scope: !1269)
!1290 = !DILocation(line: 523, column: 2, scope: !1269)
!1291 = !DILocation(line: 524, column: 1, scope: !1269)
!1292 = distinct !DISubprogram(name: "ddcb_register_accelerator", scope: !32, file: !32, line: 526, type: !1293, isLocal: false, isDefinition: true, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!24, !109}
!1295 = !DILocalVariable(name: "accel", arg: 1, scope: !1292, file: !32, line: 526, type: !109)
!1296 = !DILocation(line: 526, column: 56, scope: !1292)
!1297 = !DILocalVariable(name: "rc", scope: !1292, file: !32, line: 528, type: !24)
!1298 = !DILocation(line: 528, column: 6, scope: !1292)
!1299 = !DILocation(line: 530, column: 6, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1292, file: !32, line: 530, column: 6)
!1301 = !DILocation(line: 530, column: 12, scope: !1300)
!1302 = !DILocation(line: 530, column: 6, scope: !1292)
!1303 = !DILocation(line: 531, column: 3, scope: !1300)
!1304 = !DILocation(line: 533, column: 7, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1292, file: !32, line: 533, column: 6)
!1306 = !DILocation(line: 533, column: 18, scope: !1305)
!1307 = !DILocation(line: 533, column: 6, scope: !1292)
!1308 = !DILocation(line: 534, column: 28, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1305, file: !32, line: 533, column: 29)
!1310 = !DILocation(line: 534, column: 35, scope: !1309)
!1311 = !DILocation(line: 534, column: 8, scope: !1309)
!1312 = !DILocation(line: 534, column: 6, scope: !1309)
!1313 = !DILocation(line: 535, column: 7, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1309, file: !32, line: 535, column: 7)
!1315 = !DILocation(line: 535, column: 10, scope: !1314)
!1316 = !DILocation(line: 535, column: 7, scope: !1309)
!1317 = !DILocation(line: 536, column: 4, scope: !1314)
!1318 = !DILocation(line: 537, column: 2, scope: !1309)
!1319 = !DILocation(line: 539, column: 21, scope: !1292)
!1320 = !DILocation(line: 539, column: 2, scope: !1292)
!1321 = !DILocation(line: 539, column: 9, scope: !1292)
!1322 = !DILocation(line: 539, column: 19, scope: !1292)
!1323 = !DILocation(line: 540, column: 15, scope: !1292)
!1324 = !DILocation(line: 540, column: 13, scope: !1292)
!1325 = !DILocation(line: 541, column: 2, scope: !1292)
!1326 = !DILocation(line: 542, column: 1, scope: !1292)
!1327 = distinct !DISubprogram(name: "_init", scope: !32, file: !32, line: 546, type: !1328, isLocal: true, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{null}
!1330 = !DILocalVariable(name: "ddcb_trace_env", scope: !1327, file: !32, line: 548, type: !98)
!1331 = !DILocation(line: 548, column: 14, scope: !1327)
!1332 = !DILocation(line: 548, column: 31, scope: !1327)
!1333 = !DILocation(line: 550, column: 18, scope: !1327)
!1334 = !DILocation(line: 550, column: 17, scope: !1327)
!1335 = !DILocation(line: 551, column: 6, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1327, file: !32, line: 551, column: 6)
!1337 = !DILocation(line: 551, column: 21, scope: !1336)
!1338 = !DILocation(line: 551, column: 6, scope: !1327)
!1339 = !DILocation(line: 552, column: 23, scope: !1336)
!1340 = !DILocation(line: 552, column: 16, scope: !1336)
!1341 = !DILocation(line: 552, column: 14, scope: !1336)
!1342 = !DILocation(line: 552, column: 3, scope: !1336)
!1343 = !DILocation(line: 553, column: 1, scope: !1327)
!1344 = distinct !DISubprogram(name: "_done", scope: !32, file: !32, line: 557, type: !1328, isLocal: true, isDefinition: true, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!1345 = !DILocalVariable(name: "accel", scope: !1344, file: !32, line: 559, type: !109)
!1346 = !DILocation(line: 559, column: 27, scope: !1344)
!1347 = !DILocation(line: 561, column: 15, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1344, file: !32, line: 561, column: 2)
!1349 = !DILocation(line: 561, column: 13, scope: !1348)
!1350 = !DILocation(line: 561, column: 7, scope: !1348)
!1351 = !DILocation(line: 561, column: 27, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1353, file: !32, discriminator: 1)
!1353 = distinct !DILexicalBlock(scope: !1348, file: !32, line: 561, column: 2)
!1354 = !DILocation(line: 561, column: 33, scope: !1352)
!1355 = !DILocation(line: 561, column: 2, scope: !1352)
!1356 = !DILocation(line: 562, column: 7, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !32, line: 562, column: 7)
!1358 = distinct !DILexicalBlock(scope: !1353, file: !32, line: 561, column: 67)
!1359 = !DILocation(line: 562, column: 14, scope: !1357)
!1360 = !DILocation(line: 562, column: 23, scope: !1357)
!1361 = !DILocation(line: 562, column: 7, scope: !1358)
!1362 = !DILocation(line: 563, column: 4, scope: !1357)
!1363 = !DILocation(line: 565, column: 8, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1358, file: !32, line: 565, column: 7)
!1365 = !DILocation(line: 565, column: 19, scope: !1364)
!1366 = !DILocation(line: 565, column: 7, scope: !1358)
!1367 = !DILocation(line: 566, column: 12, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1364, file: !32, line: 565, column: 30)
!1369 = !DILocation(line: 571, column: 5, scope: !1368)
!1370 = !DILocation(line: 571, column: 12, scope: !1368)
!1371 = !DILocation(line: 572, column: 16, scope: !1368)
!1372 = !DILocation(line: 572, column: 23, scope: !1368)
!1373 = !DILocation(line: 573, column: 16, scope: !1368)
!1374 = !DILocation(line: 573, column: 23, scope: !1368)
!1375 = !DILocation(line: 574, column: 16, scope: !1368)
!1376 = !DILocation(line: 574, column: 23, scope: !1368)
!1377 = !DILocation(line: 575, column: 16, scope: !1368)
!1378 = !DILocation(line: 575, column: 23, scope: !1368)
!1379 = !DILocation(line: 576, column: 16, scope: !1368)
!1380 = !DILocation(line: 576, column: 23, scope: !1368)
!1381 = !DILocation(line: 577, column: 16, scope: !1368)
!1382 = !DILocation(line: 577, column: 23, scope: !1368)
!1383 = !DILocation(line: 566, column: 4, scope: !1368)
!1384 = !DILocation(line: 578, column: 27, scope: !1368)
!1385 = !DILocation(line: 578, column: 34, scope: !1368)
!1386 = !DILocation(line: 578, column: 4, scope: !1368)
!1387 = !DILocation(line: 579, column: 3, scope: !1368)
!1388 = !DILocation(line: 580, column: 25, scope: !1358)
!1389 = !DILocation(line: 580, column: 32, scope: !1358)
!1390 = !DILocation(line: 580, column: 3, scope: !1358)
!1391 = !DILocation(line: 581, column: 2, scope: !1358)
!1392 = !DILocation(line: 561, column: 49, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !1353, file: !32, discriminator: 2)
!1394 = !DILocation(line: 561, column: 56, scope: !1393)
!1395 = !DILocation(line: 561, column: 47, scope: !1393)
!1396 = !DILocation(line: 561, column: 2, scope: !1393)
!1397 = distinct !{!1397, !1398}
!1398 = !DILocation(line: 561, column: 2, scope: !1344)
!1399 = !DILocation(line: 582, column: 2, scope: !1344)
