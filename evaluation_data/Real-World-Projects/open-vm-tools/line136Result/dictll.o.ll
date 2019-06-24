; ModuleID = './dictll.o.i'
source_filename = "./dictll.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.DynBuf = type { i8*, i64, i64 }

@DictLL_UnmarshalLine.ws_in = internal constant [256 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@DictLL_UnmarshalLine.wsp_out = internal constant [256 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@DictLL_UnmarshalLine.wspe_out = internal constant [256 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@DictLL_UnmarshalLine.q_out = internal constant [256 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@.str = private unnamed_addr constant [14 x i8] c"VERIFY %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"dictll.c\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"NOT_IMPLEMENTED %s:%d\0A\00", align 1
@DictLL_MarshalLine.toEscape = internal constant [256 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@.str.4 = private unnamed_addr constant [5 x i8] c" = \22\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"\EF\BB\BF\00", align 1

; Function Attrs: nounwind uwtable
define i8* @DictLL_UnmarshalLine(i8*, i64, i8**, i8**, i8**) #0 !dbg !16 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !49, metadata !50), !dbg !51
  store i64 %1, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !52, metadata !50), !dbg !53
  store i8** %2, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !54, metadata !50), !dbg !55
  store i8** %3, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !56, metadata !50), !dbg !57
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !58, metadata !50), !dbg !59
  call void @llvm.dbg.declare(metadata i8** %12, metadata !60, metadata !50), !dbg !61
  call void @llvm.dbg.declare(metadata i8** %13, metadata !62, metadata !50), !dbg !63
  call void @llvm.dbg.declare(metadata i8** %14, metadata !64, metadata !50), !dbg !65
  call void @llvm.dbg.declare(metadata i8** %15, metadata !66, metadata !50), !dbg !67
  call void @llvm.dbg.declare(metadata i8** %16, metadata !68, metadata !50), !dbg !69
  call void @llvm.dbg.declare(metadata i8** %17, metadata !70, metadata !50), !dbg !71
  call void @llvm.dbg.declare(metadata i8** %18, metadata !72, metadata !50), !dbg !73
  call void @llvm.dbg.declare(metadata i8** %19, metadata !74, metadata !50), !dbg !75
  call void @llvm.dbg.declare(metadata i8** %20, metadata !76, metadata !50), !dbg !77
  call void @llvm.dbg.declare(metadata i8** %21, metadata !78, metadata !50), !dbg !79
  %22 = load i64, i64* %8, align 8, !dbg !80
  %23 = icmp eq i64 %22, 0, !dbg !82
  br i1 %23, label %24, label %28, !dbg !83

; <label>:24:                                     ; preds = %5
  %25 = load i8**, i8*** %9, align 8, !dbg !84
  store i8* null, i8** %25, align 8, !dbg !86
  %26 = load i8**, i8*** %10, align 8, !dbg !87
  store i8* null, i8** %26, align 8, !dbg !88
  %27 = load i8**, i8*** %11, align 8, !dbg !89
  store i8* null, i8** %27, align 8, !dbg !90
  store i8* null, i8** %6, align 8, !dbg !91
  br label %144, !dbg !91

; <label>:28:                                     ; preds = %5
  %29 = load i8*, i8** %7, align 8, !dbg !92
  %30 = load i64, i64* %8, align 8, !dbg !93
  %31 = call i8* @memchr(i8* %29, i32 10, i64 %30) #9, !dbg !94
  store i8* %31, i8** %20, align 8, !dbg !95
  %32 = load i8*, i8** %20, align 8, !dbg !96
  %33 = icmp ne i8* %32, null, !dbg !98
  br i1 %33, label %34, label %37, !dbg !99

; <label>:34:                                     ; preds = %28
  %35 = load i8*, i8** %20, align 8, !dbg !100
  %36 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !102
  store i8* %36, i8** %21, align 8, !dbg !103
  br label %41, !dbg !104

; <label>:37:                                     ; preds = %28
  %38 = load i8*, i8** %7, align 8, !dbg !105
  %39 = load i64, i64* %8, align 8, !dbg !107
  %40 = getelementptr inbounds i8, i8* %38, i64 %39, !dbg !108
  store i8* %40, i8** %20, align 8, !dbg !109
  store i8* %40, i8** %21, align 8, !dbg !110
  br label %41

; <label>:41:                                     ; preds = %37, %34
  %42 = load i8*, i8** %7, align 8, !dbg !111
  %43 = load i8*, i8** %20, align 8, !dbg !112
  %44 = load i8*, i8** %7, align 8, !dbg !113
  %45 = ptrtoint i8* %43 to i64, !dbg !114
  %46 = ptrtoint i8* %44 to i64, !dbg !114
  %47 = sub i64 %45, %46, !dbg !114
  %48 = trunc i64 %47 to i32, !dbg !112
  %49 = call i8* @BufDup(i8* %42, i32 %48), !dbg !115
  store i8* %49, i8** %17, align 8, !dbg !116
  %50 = load i8*, i8** %17, align 8, !dbg !117
  %51 = call i8* @Walk(i8* %50, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @DictLL_UnmarshalLine.ws_in, i32 0, i32 0)), !dbg !118
  store i8* %51, i8** %12, align 8, !dbg !119
  %52 = load i8*, i8** %12, align 8, !dbg !120
  %53 = call i8* @Walk(i8* %52, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @DictLL_UnmarshalLine.wspe_out, i32 0, i32 0)), !dbg !121
  store i8* %53, i8** %13, align 8, !dbg !122
  %54 = load i8*, i8** %13, align 8, !dbg !123
  %55 = call i8* @Walk(i8* %54, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @DictLL_UnmarshalLine.ws_in, i32 0, i32 0)), !dbg !124
  store i8* %55, i8** %16, align 8, !dbg !125
  %56 = load i8*, i8** %12, align 8, !dbg !126
  %57 = load i8*, i8** %13, align 8, !dbg !128
  %58 = icmp eq i8* %56, %57, !dbg !129
  br i1 %58, label %64, label %59, !dbg !130

; <label>:59:                                     ; preds = %41
  %60 = load i8*, i8** %16, align 8, !dbg !131
  %61 = load i8, i8* %60, align 1, !dbg !133
  %62 = sext i8 %61 to i32, !dbg !133
  %63 = icmp ne i32 %62, 61, !dbg !134
  br i1 %63, label %64, label %65, !dbg !135

; <label>:64:                                     ; preds = %59, %41
  br label %138, !dbg !136

; <label>:65:                                     ; preds = %59
  %66 = load i8*, i8** %16, align 8, !dbg !138
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !138
  store i8* %67, i8** %16, align 8, !dbg !138
  %68 = load i8*, i8** %16, align 8, !dbg !139
  %69 = call i8* @Walk(i8* %68, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @DictLL_UnmarshalLine.ws_in, i32 0, i32 0)), !dbg !140
  store i8* %69, i8** %16, align 8, !dbg !141
  %70 = load i8*, i8** %16, align 8, !dbg !142
  %71 = load i8, i8* %70, align 1, !dbg !144
  %72 = sext i8 %71 to i32, !dbg !144
  %73 = icmp eq i32 %72, 34, !dbg !145
  br i1 %73, label %74, label %89, !dbg !146

; <label>:74:                                     ; preds = %65
  %75 = load i8*, i8** %16, align 8, !dbg !147
  %76 = getelementptr inbounds i8, i8* %75, i32 1, !dbg !147
  store i8* %76, i8** %16, align 8, !dbg !147
  %77 = load i8*, i8** %16, align 8, !dbg !149
  store i8* %77, i8** %14, align 8, !dbg !150
  %78 = load i8*, i8** %14, align 8, !dbg !151
  %79 = call i8* @Walk(i8* %78, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @DictLL_UnmarshalLine.q_out, i32 0, i32 0)), !dbg !152
  store i8* %79, i8** %15, align 8, !dbg !153
  %80 = load i8*, i8** %15, align 8, !dbg !154
  store i8* %80, i8** %16, align 8, !dbg !155
  %81 = load i8*, i8** %16, align 8, !dbg !156
  %82 = load i8, i8* %81, align 1, !dbg !158
  %83 = sext i8 %82 to i32, !dbg !158
  %84 = icmp ne i32 %83, 34, !dbg !159
  br i1 %84, label %85, label %86, !dbg !160

; <label>:85:                                     ; preds = %74
  br label %138, !dbg !161

; <label>:86:                                     ; preds = %74
  %87 = load i8*, i8** %16, align 8, !dbg !163
  %88 = getelementptr inbounds i8, i8* %87, i32 1, !dbg !163
  store i8* %88, i8** %16, align 8, !dbg !163
  br label %94, !dbg !164

; <label>:89:                                     ; preds = %65
  %90 = load i8*, i8** %16, align 8, !dbg !165
  store i8* %90, i8** %14, align 8, !dbg !167
  %91 = load i8*, i8** %14, align 8, !dbg !168
  %92 = call i8* @Walk(i8* %91, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @DictLL_UnmarshalLine.wsp_out, i32 0, i32 0)), !dbg !169
  store i8* %92, i8** %15, align 8, !dbg !170
  %93 = load i8*, i8** %15, align 8, !dbg !171
  store i8* %93, i8** %16, align 8, !dbg !172
  br label %94

; <label>:94:                                     ; preds = %89, %86
  %95 = load i8*, i8** %16, align 8, !dbg !173
  %96 = call i8* @Walk(i8* %95, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @DictLL_UnmarshalLine.ws_in, i32 0, i32 0)), !dbg !174
  store i8* %96, i8** %16, align 8, !dbg !175
  %97 = load i8*, i8** %16, align 8, !dbg !176
  %98 = load i8, i8* %97, align 1, !dbg !178
  %99 = sext i8 %98 to i32, !dbg !178
  %100 = icmp ne i32 %99, 0, !dbg !179
  br i1 %100, label %101, label %107, !dbg !180

; <label>:101:                                    ; preds = %94
  %102 = load i8*, i8** %16, align 8, !dbg !181
  %103 = load i8, i8* %102, align 1, !dbg !183
  %104 = sext i8 %103 to i32, !dbg !183
  %105 = icmp ne i32 %104, 35, !dbg !184
  br i1 %105, label %106, label %107, !dbg !185

; <label>:106:                                    ; preds = %101
  br label %138, !dbg !186

; <label>:107:                                    ; preds = %101, %94
  %108 = load i8*, i8** %12, align 8, !dbg !188
  %109 = load i8*, i8** %13, align 8, !dbg !189
  %110 = load i8*, i8** %12, align 8, !dbg !190
  %111 = ptrtoint i8* %109 to i64, !dbg !191
  %112 = ptrtoint i8* %110 to i64, !dbg !191
  %113 = sub i64 %111, %112, !dbg !191
  %114 = trunc i64 %113 to i32, !dbg !189
  %115 = call i8* @BufDup(i8* %108, i32 %114), !dbg !192
  store i8* %115, i8** %18, align 8, !dbg !193
  %116 = load i8*, i8** %14, align 8, !dbg !194
  %117 = load i8*, i8** %15, align 8, !dbg !195
  %118 = load i8*, i8** %14, align 8, !dbg !196
  %119 = ptrtoint i8* %117 to i64, !dbg !197
  %120 = ptrtoint i8* %118 to i64, !dbg !197
  %121 = sub i64 %119, %120, !dbg !197
  %122 = call i8* @Escape_Undo(i8 signext 124, i8* %116, i64 %121, i64* null), !dbg !198
  store i8* %122, i8** %19, align 8, !dbg !199
  %123 = load i8*, i8** %19, align 8, !dbg !200
  %124 = icmp ne i8* %123, null, !dbg !203
  %125 = xor i1 %124, true, !dbg !203
  %126 = zext i1 %125 to i32, !dbg !203
  %127 = sext i32 %126 to i64, !dbg !204
  %128 = icmp ne i64 %127, 0, !dbg !205
  br i1 %128, label %129, label %130, !dbg !206

; <label>:129:                                    ; preds = %107
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 292) #10, !dbg !207
  unreachable, !dbg !207

; <label>:130:                                    ; preds = %107
  %131 = load i8*, i8** %17, align 8, !dbg !210
  %132 = load i8**, i8*** %9, align 8, !dbg !211
  store i8* %131, i8** %132, align 8, !dbg !212
  %133 = load i8*, i8** %18, align 8, !dbg !213
  %134 = load i8**, i8*** %10, align 8, !dbg !214
  store i8* %133, i8** %134, align 8, !dbg !215
  %135 = load i8*, i8** %19, align 8, !dbg !216
  %136 = load i8**, i8*** %11, align 8, !dbg !217
  store i8* %135, i8** %136, align 8, !dbg !218
  %137 = load i8*, i8** %21, align 8, !dbg !219
  store i8* %137, i8** %6, align 8, !dbg !220
  br label %144, !dbg !220

; <label>:138:                                    ; preds = %106, %85, %64
  %139 = load i8*, i8** %17, align 8, !dbg !221
  %140 = load i8**, i8*** %9, align 8, !dbg !222
  store i8* %139, i8** %140, align 8, !dbg !223
  %141 = load i8**, i8*** %10, align 8, !dbg !224
  store i8* null, i8** %141, align 8, !dbg !225
  %142 = load i8**, i8*** %11, align 8, !dbg !226
  store i8* null, i8** %142, align 8, !dbg !227
  %143 = load i8*, i8** %21, align 8, !dbg !228
  store i8* %143, i8** %6, align 8, !dbg !229
  br label %144, !dbg !229

; <label>:144:                                    ; preds = %138, %130, %24
  %145 = load i8*, i8** %6, align 8, !dbg !230
  ret i8* %145, !dbg !230
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define internal i8* @BufDup(i8*, i32) #0 !dbg !231 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !238, metadata !50), !dbg !239
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !240, metadata !50), !dbg !241
  call void @llvm.dbg.declare(metadata i8** %5, metadata !242, metadata !50), !dbg !243
  %6 = load i32, i32* %4, align 4, !dbg !244
  %7 = add i32 %6, 1, !dbg !245
  %8 = zext i32 %7 to i64, !dbg !246
  %9 = call i8* @UtilSafeMalloc0(i64 %8), !dbg !247
  store i8* %9, i8** %5, align 8, !dbg !248
  %10 = load i8*, i8** %5, align 8, !dbg !249
  %11 = load i8*, i8** %3, align 8, !dbg !250
  %12 = load i32, i32* %4, align 4, !dbg !251
  %13 = zext i32 %12 to i64, !dbg !251
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 %13, i32 1, i1 false), !dbg !252
  %14 = load i32, i32* %4, align 4, !dbg !253
  %15 = zext i32 %14 to i64, !dbg !254
  %16 = load i8*, i8** %5, align 8, !dbg !254
  %17 = getelementptr inbounds i8, i8* %16, i64 %15, !dbg !254
  store i8 0, i8* %17, align 1, !dbg !255
  %18 = load i8*, i8** %5, align 8, !dbg !256
  ret i8* %18, !dbg !257
}

; Function Attrs: nounwind uwtable
define internal i8* @Walk(i8*, i32*) #0 !dbg !258 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !263, metadata !50), !dbg !264
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !265, metadata !50), !dbg !266
  call void @llvm.dbg.declare(metadata i8** %5, metadata !267, metadata !50), !dbg !268
  %6 = load i8*, i8** %3, align 8, !dbg !269
  store i8* %6, i8** %5, align 8, !dbg !270
  br label %7, !dbg !271

; <label>:7:                                      ; preds = %15, %2
  %8 = load i8*, i8** %5, align 8, !dbg !272
  %9 = load i8, i8* %8, align 1, !dbg !274
  %10 = zext i8 %9 to i64, !dbg !275
  %11 = load i32*, i32** %4, align 8, !dbg !275
  %12 = getelementptr inbounds i32, i32* %11, i64 %10, !dbg !275
  %13 = load i32, i32* %12, align 4, !dbg !275
  %14 = icmp ne i32 %13, 0, !dbg !276
  br i1 %14, label %15, label %18, !dbg !276

; <label>:15:                                     ; preds = %7
  %16 = load i8*, i8** %5, align 8, !dbg !277
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !277
  store i8* %17, i8** %5, align 8, !dbg !277
  br label %7, !dbg !279, !llvm.loop !281

; <label>:18:                                     ; preds = %7
  %19 = load i8*, i8** %5, align 8, !dbg !282
  ret i8* %19, !dbg !283
}

declare i8* @Escape_Undo(i8 signext, i8*, i64, i64*) #3

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #4

; Function Attrs: nounwind uwtable
define i32 @DictLL_ReadLine(%struct._IO_FILE*, i8**, i8**, i8**) #0 !dbg !284 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !343, metadata !50), !dbg !344
  store i8** %1, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !345, metadata !50), !dbg !346
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !347, metadata !50), !dbg !348
  store i8** %3, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !349, metadata !50), !dbg !350
  call void @llvm.dbg.declare(metadata i8** %10, metadata !351, metadata !50), !dbg !352
  call void @llvm.dbg.declare(metadata i64* %11, metadata !353, metadata !50), !dbg !354
  %12 = load i8**, i8*** %7, align 8, !dbg !355
  store i8* null, i8** %12, align 8, !dbg !356
  %13 = load i8**, i8*** %8, align 8, !dbg !357
  store i8* null, i8** %13, align 8, !dbg !358
  %14 = load i8**, i8*** %9, align 8, !dbg !359
  store i8* null, i8** %14, align 8, !dbg !360
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !361
  %16 = call i32 @StdIO_ReadNextLine(%struct._IO_FILE* %15, i8** %10, i64 0, i64* %11), !dbg !362
  switch i32 %16, label %32 [
    i32 0, label %17
    i32 1, label %18
    i32 2, label %19
  ], !dbg !363

; <label>:17:                                     ; preds = %4
  store i32 0, i32* %5, align 4, !dbg !364
  br label %33, !dbg !364

; <label>:18:                                     ; preds = %4
  store i32 1, i32* %5, align 4, !dbg !366
  br label %33, !dbg !366

; <label>:19:                                     ; preds = %4
  %20 = load i8*, i8** %10, align 8, !dbg !367
  %21 = load i64, i64* %11, align 8, !dbg !369
  %22 = load i8**, i8*** %7, align 8, !dbg !370
  %23 = load i8**, i8*** %8, align 8, !dbg !371
  %24 = load i8**, i8*** %9, align 8, !dbg !372
  %25 = call i8* @DictLL_UnmarshalLine(i8* %20, i64 %21, i8** %22, i8** %23, i8** %24), !dbg !373
  %26 = icmp eq i8* %25, null, !dbg !374
  br i1 %26, label %27, label %30, !dbg !375

; <label>:27:                                     ; preds = %19
  %28 = call i8* @BufDup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i32 0), !dbg !376
  %29 = load i8**, i8*** %7, align 8, !dbg !378
  store i8* %28, i8** %29, align 8, !dbg !379
  br label %30, !dbg !380

; <label>:30:                                     ; preds = %27, %19
  %31 = load i8*, i8** %10, align 8, !dbg !381
  call void @free(i8* %31) #11, !dbg !382
  store i32 2, i32* %5, align 4, !dbg !383
  br label %33, !dbg !383

; <label>:32:                                     ; preds = %4
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 365) #10, !dbg !384
  unreachable, !dbg !384

; <label>:33:                                     ; preds = %30, %18, %17
  %34 = load i32, i32* %5, align 4, !dbg !385
  ret i32 %34, !dbg !385
}

declare i32 @StdIO_ReadNextLine(%struct._IO_FILE*, i8**, i64, i64*) #3

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define signext i8 @DictLL_MarshalLine(%struct.DynBuf*, i8*, i8*) #0 !dbg !34 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.DynBuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %5, metadata !386, metadata !50), !dbg !387
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !388, metadata !50), !dbg !389
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !390, metadata !50), !dbg !391
  call void @llvm.dbg.declare(metadata i64* %8, metadata !392, metadata !50), !dbg !393
  %10 = load i8*, i8** %6, align 8, !dbg !394
  %11 = icmp ne i8* %10, null, !dbg !394
  br i1 %11, label %12, label %48, !dbg !396

; <label>:12:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata i8** %9, metadata !397, metadata !50), !dbg !399
  %13 = load i8*, i8** %7, align 8, !dbg !400
  %14 = load i8*, i8** %7, align 8, !dbg !401
  %15 = call i64 @strlen(i8* %14) #9, !dbg !402
  %16 = trunc i64 %15 to i32, !dbg !403
  %17 = zext i32 %16 to i64, !dbg !403
  %18 = call i8* @Escape_Do(i8 signext 124, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @DictLL_MarshalLine.toEscape, i32 0, i32 0), i8* %13, i64 %17, i64* %8), !dbg !404
  store i8* %18, i8** %9, align 8, !dbg !406
  %19 = load %struct.DynBuf*, %struct.DynBuf** %5, align 8, !dbg !407
  %20 = load i8*, i8** %6, align 8, !dbg !409
  %21 = load i8*, i8** %6, align 8, !dbg !410
  %22 = call i64 @strlen(i8* %21) #9, !dbg !411
  %23 = trunc i64 %22 to i32, !dbg !412
  %24 = zext i32 %23 to i64, !dbg !412
  %25 = call signext i8 @DynBuf_Append(%struct.DynBuf* %19, i8* %20, i64 %24), !dbg !413
  %26 = icmp ne i8 %25, 0, !dbg !415
  br i1 %26, label %27, label %44, !dbg !416

; <label>:27:                                     ; preds = %12
  %28 = load %struct.DynBuf*, %struct.DynBuf** %5, align 8, !dbg !417
  %29 = call signext i8 @DynBuf_Append(%struct.DynBuf* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i64 4), !dbg !419
  %30 = icmp ne i8 %29, 0, !dbg !419
  br i1 %30, label %31, label %44, !dbg !420

; <label>:31:                                     ; preds = %27
  %32 = load i64, i64* %8, align 8, !dbg !421
  %33 = icmp ne i64 %32, 0, !dbg !421
  br i1 %33, label %34, label %40, !dbg !422

; <label>:34:                                     ; preds = %31
  %35 = load %struct.DynBuf*, %struct.DynBuf** %5, align 8, !dbg !423
  %36 = load i8*, i8** %9, align 8, !dbg !424
  %37 = load i64, i64* %8, align 8, !dbg !425
  %38 = call signext i8 @DynBuf_Append(%struct.DynBuf* %35, i8* %36, i64 %37), !dbg !426
  %39 = icmp ne i8 %38, 0, !dbg !426
  br i1 %39, label %40, label %44, !dbg !427

; <label>:40:                                     ; preds = %34, %31
  %41 = load %struct.DynBuf*, %struct.DynBuf** %5, align 8, !dbg !428
  %42 = call signext i8 @DynBuf_Append(%struct.DynBuf* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i64 1), !dbg !429
  %43 = icmp ne i8 %42, 0, !dbg !429
  br i1 %43, label %46, label %44, !dbg !430

; <label>:44:                                     ; preds = %40, %34, %27, %12
  %45 = load i8*, i8** %9, align 8, !dbg !431
  call void @free(i8* %45) #11, !dbg !433
  store i8 0, i8* %4, align 1, !dbg !434
  br label %69, !dbg !434

; <label>:46:                                     ; preds = %40
  %47 = load i8*, i8** %9, align 8, !dbg !435
  call void @free(i8* %47) #11, !dbg !436
  br label %63, !dbg !437

; <label>:48:                                     ; preds = %3
  %49 = load i8*, i8** %7, align 8, !dbg !438
  %50 = call i64 @strlen(i8* %49) #9, !dbg !440
  %51 = trunc i64 %50 to i32, !dbg !441
  %52 = zext i32 %51 to i64, !dbg !441
  store i64 %52, i64* %8, align 8, !dbg !442
  %53 = load i64, i64* %8, align 8, !dbg !443
  %54 = icmp ne i64 %53, 0, !dbg !443
  br i1 %54, label %55, label %62, !dbg !445

; <label>:55:                                     ; preds = %48
  %56 = load %struct.DynBuf*, %struct.DynBuf** %5, align 8, !dbg !446
  %57 = load i8*, i8** %7, align 8, !dbg !448
  %58 = load i64, i64* %8, align 8, !dbg !449
  %59 = call signext i8 @DynBuf_Append(%struct.DynBuf* %56, i8* %57, i64 %58), !dbg !450
  %60 = icmp ne i8 %59, 0, !dbg !450
  br i1 %60, label %62, label %61, !dbg !451

; <label>:61:                                     ; preds = %55
  store i8 0, i8* %4, align 1, !dbg !452
  br label %69, !dbg !452

; <label>:62:                                     ; preds = %55, %48
  br label %63

; <label>:63:                                     ; preds = %62, %46
  %64 = load %struct.DynBuf*, %struct.DynBuf** %5, align 8, !dbg !454
  %65 = call signext i8 @DynBuf_Append(%struct.DynBuf* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i64 1), !dbg !456
  %66 = icmp ne i8 %65, 0, !dbg !456
  br i1 %66, label %68, label %67, !dbg !457

; <label>:67:                                     ; preds = %63
  store i8 0, i8* %4, align 1, !dbg !458
  br label %69, !dbg !458

; <label>:68:                                     ; preds = %63
  store i8 1, i8* %4, align 1, !dbg !460
  br label %69, !dbg !460

; <label>:69:                                     ; preds = %68, %67, %61, %44
  %70 = load i8, i8* %4, align 1, !dbg !461
  ret i8 %70, !dbg !461
}

declare i8* @Escape_Do(i8 signext, i32*, i8*, i64, i64*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare signext i8 @DynBuf_Append(%struct.DynBuf*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define signext i8 @DictLL_WriteLine(%struct._IO_FILE*, i8*, i8*) #0 !dbg !462 {
  %4 = alloca i8, align 1
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.DynBuf, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !465, metadata !50), !dbg !466
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !467, metadata !50), !dbg !468
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !469, metadata !50), !dbg !470
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %8, metadata !471, metadata !50), !dbg !472
  call void @DynBuf_Init(%struct.DynBuf* %8), !dbg !473
  %9 = load i8*, i8** %6, align 8, !dbg !474
  %10 = load i8*, i8** %7, align 8, !dbg !476
  %11 = call signext i8 @DictLL_MarshalLine(%struct.DynBuf* %8, i8* %9, i8* %10), !dbg !477
  %12 = icmp ne i8 %11, 0, !dbg !477
  br i1 %12, label %15, label %13, !dbg !478

; <label>:13:                                     ; preds = %3
  call void @DynBuf_Destroy(%struct.DynBuf* %8), !dbg !479
  %14 = call i32* @__errno_location() #1, !dbg !481
  store i32 12, i32* %14, align 4, !dbg !482
  store i8 0, i8* %4, align 1, !dbg !483
  br label %23, !dbg !483

; <label>:15:                                     ; preds = %3
  %16 = call i8* @DynBuf_Get(%struct.DynBuf* %8), !dbg !484
  %17 = call i64 @DynBuf_GetSize(%struct.DynBuf* %8), !dbg !486
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !488
  %19 = call i64 @fwrite(i8* %16, i64 %17, i64 1, %struct._IO_FILE* %18), !dbg !489
  %20 = icmp ne i64 %19, 1, !dbg !491
  br i1 %20, label %21, label %22, !dbg !492

; <label>:21:                                     ; preds = %15
  call void @DynBuf_Destroy(%struct.DynBuf* %8), !dbg !493
  store i8 0, i8* %4, align 1, !dbg !495
  br label %23, !dbg !495

; <label>:22:                                     ; preds = %15
  call void @DynBuf_Destroy(%struct.DynBuf* %8), !dbg !496
  store i8 1, i8* %4, align 1, !dbg !497
  br label %23, !dbg !497

; <label>:23:                                     ; preds = %22, %21, %13
  %24 = load i8, i8* %4, align 1, !dbg !498
  ret i8 %24, !dbg !498
}

declare void @DynBuf_Init(%struct.DynBuf*) #3

declare void @DynBuf_Destroy(%struct.DynBuf*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @DynBuf_Get(%struct.DynBuf*) #7 !dbg !499 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !504, metadata !50), !dbg !505
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !506
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 0, !dbg !507
  %5 = load i8*, i8** %4, align 8, !dbg !507
  ret i8* %5, !dbg !508
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @DynBuf_GetSize(%struct.DynBuf*) #7 !dbg !509 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !512, metadata !50), !dbg !513
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !514
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 1, !dbg !515
  %5 = load i64, i64* %4, align 8, !dbg !515
  ret i64 %5, !dbg !516
}

; Function Attrs: nounwind uwtable
define signext i8 @DictLL_ReadUTF8BOM(%struct._IO_FILE*) #0 !dbg !517 {
  %2 = alloca i8, align 1
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca [3 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !520, metadata !50), !dbg !521
  call void @llvm.dbg.declare(metadata i8* %4, metadata !522, metadata !50), !dbg !523
  call void @llvm.dbg.declare(metadata [3 x i8]* %5, metadata !524, metadata !50), !dbg !528
  %6 = bitcast [3 x i8]* %5 to i8*, !dbg !528
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 3, i32 1, i1 false), !dbg !528
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !529
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !531
  %9 = icmp eq %struct._IO_FILE* %7, %8, !dbg !532
  br i1 %9, label %10, label %11, !dbg !533

; <label>:10:                                     ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !534
  br label %30, !dbg !534

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i32 0, i32 0, !dbg !536
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !537
  %14 = call i64 @fread(i8* %12, i64 3, i64 1, %struct._IO_FILE* %13), !dbg !538
  %15 = icmp eq i64 %14, 1, !dbg !539
  br i1 %15, label %16, label %20, !dbg !540

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i32 0, i32 0, !dbg !541
  %18 = call i32 @memcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* %17, i64 3) #9, !dbg !543
  %19 = icmp eq i32 %18, 0, !dbg !544
  br label %20

; <label>:20:                                     ; preds = %16, %11
  %21 = phi i1 [ false, %11 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32, !dbg !545
  %23 = trunc i32 %22 to i8, !dbg !547
  store i8 %23, i8* %4, align 1, !dbg !548
  %24 = load i8, i8* %4, align 1, !dbg !549
  %25 = icmp ne i8 %24, 0, !dbg !549
  br i1 %25, label %28, label %26, !dbg !551

; <label>:26:                                     ; preds = %20
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !552
  call void @rewind(%struct._IO_FILE* %27), !dbg !554
  br label %28, !dbg !555

; <label>:28:                                     ; preds = %26, %20
  %29 = load i8, i8* %4, align 1, !dbg !556
  store i8 %29, i8* %2, align 1, !dbg !557
  br label %30, !dbg !557

; <label>:30:                                     ; preds = %28, %10
  %31 = load i8, i8* %2, align 1, !dbg !558
  ret i8 %31, !dbg !558
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #2

declare void @rewind(%struct._IO_FILE*) #3

declare i8* @UtilSafeMalloc0(i64) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }
attributes #11 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!46, !47}
!llvm.ident = !{!48}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !14)
!1 = !DIFile(filename: "dictll.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line136")
!2 = !{}
!3 = !{!4, !5, !10, !13}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !6, line: 173, baseType: !7)
!6 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line136")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 51, baseType: !9)
!8 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line136")
!9 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!14 = !{!15, !30, !31, !32, !33}
!15 = distinct !DIGlobalVariable(name: "ws_in", scope: !16, file: !17, line: 150, type: !25, isLocal: true, isDefinition: true, variable: [256 x i32]* @DictLL_UnmarshalLine.ws_in)
!16 = distinct !DISubprogram(name: "DictLL_UnmarshalLine", scope: !17, file: !17, line: 143, type: !18, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!17 = !DIFile(filename: "dictll.c", directory: "/home/lichi/Desktop/open-vm-tools/line136")
!18 = !DISubroutineType(types: !19)
!19 = !{!10, !10, !20, !23, !23, !23}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 216, baseType: !22)
!21 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line136")
!22 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8192, align: 32, elements: !28)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!28 = !{!29}
!29 = !DISubrange(count: 256)
!30 = distinct !DIGlobalVariable(name: "wsp_out", scope: !16, file: !17, line: 169, type: !25, isLocal: true, isDefinition: true, variable: [256 x i32]* @DictLL_UnmarshalLine.wsp_out)
!31 = distinct !DIGlobalVariable(name: "wspe_out", scope: !16, file: !17, line: 188, type: !25, isLocal: true, isDefinition: true, variable: [256 x i32]* @DictLL_UnmarshalLine.wspe_out)
!32 = distinct !DIGlobalVariable(name: "q_out", scope: !16, file: !17, line: 207, type: !25, isLocal: true, isDefinition: true, variable: [256 x i32]* @DictLL_UnmarshalLine.q_out)
!33 = distinct !DIGlobalVariable(name: "toEscape", scope: !34, file: !17, line: 403, type: !25, isLocal: true, isDefinition: true, variable: [256 x i32]* @DictLL_MarshalLine.toEscape)
!34 = distinct !DISubprogram(name: "DictLL_MarshalLine", scope: !17, file: !17, line: 390, type: !35, isLocal: false, isDefinition: true, scopeLine: 393, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !38, !10, !10}
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !6, line: 230, baseType: !12)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "DynBuf", file: !40, line: 40, baseType: !41)
!40 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dynbuf.h", directory: "/home/lichi/Desktop/open-vm-tools/line136")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DynBuf", file: !40, line: 36, size: 192, align: 64, elements: !42)
!42 = !{!43, !44, !45}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !41, file: !40, line: 37, baseType: !24, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !41, file: !40, line: 38, baseType: !20, size: 64, align: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !41, file: !40, line: 39, baseType: !20, size: 64, align: 64, offset: 128)
!46 = !{i32 2, !"Dwarf Version", i32 4}
!47 = !{i32 2, !"Debug Info Version", i32 3}
!48 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!49 = !DILocalVariable(name: "buf", arg: 1, scope: !16, file: !17, line: 143, type: !10)
!50 = !DIExpression()
!51 = !DILocation(line: 143, column: 34, scope: !16)
!52 = !DILocalVariable(name: "bufSize", arg: 2, scope: !16, file: !17, line: 144, type: !20)
!53 = !DILocation(line: 144, column: 29, scope: !16)
!54 = !DILocalVariable(name: "line", arg: 3, scope: !16, file: !17, line: 145, type: !23)
!55 = !DILocation(line: 145, column: 29, scope: !16)
!56 = !DILocalVariable(name: "name", arg: 4, scope: !16, file: !17, line: 146, type: !23)
!57 = !DILocation(line: 146, column: 29, scope: !16)
!58 = !DILocalVariable(name: "value", arg: 5, scope: !16, file: !17, line: 147, type: !23)
!59 = !DILocation(line: 147, column: 29, scope: !16)
!60 = !DILocalVariable(name: "nBegin", scope: !16, file: !17, line: 225, type: !10)
!61 = !DILocation(line: 225, column: 16, scope: !16)
!62 = !DILocalVariable(name: "nEnd", scope: !16, file: !17, line: 226, type: !10)
!63 = !DILocation(line: 226, column: 16, scope: !16)
!64 = !DILocalVariable(name: "vBegin", scope: !16, file: !17, line: 227, type: !10)
!65 = !DILocation(line: 227, column: 16, scope: !16)
!66 = !DILocalVariable(name: "vEnd", scope: !16, file: !17, line: 228, type: !10)
!67 = !DILocation(line: 228, column: 16, scope: !16)
!68 = !DILocalVariable(name: "tmp", scope: !16, file: !17, line: 229, type: !10)
!69 = !DILocation(line: 229, column: 16, scope: !16)
!70 = !DILocalVariable(name: "myLine", scope: !16, file: !17, line: 230, type: !24)
!71 = !DILocation(line: 230, column: 10, scope: !16)
!72 = !DILocalVariable(name: "myName", scope: !16, file: !17, line: 231, type: !24)
!73 = !DILocation(line: 231, column: 10, scope: !16)
!74 = !DILocalVariable(name: "myValue", scope: !16, file: !17, line: 232, type: !24)
!75 = !DILocation(line: 232, column: 10, scope: !16)
!76 = !DILocalVariable(name: "lineEnd", scope: !16, file: !17, line: 233, type: !10)
!77 = !DILocation(line: 233, column: 16, scope: !16)
!78 = !DILocalVariable(name: "nextLine", scope: !16, file: !17, line: 234, type: !10)
!79 = !DILocation(line: 234, column: 16, scope: !16)
!80 = !DILocation(line: 242, column: 8, scope: !81)
!81 = distinct !DILexicalBlock(scope: !16, file: !17, line: 242, column: 8)
!82 = !DILocation(line: 242, column: 16, scope: !81)
!83 = !DILocation(line: 242, column: 8, scope: !16)
!84 = !DILocation(line: 243, column: 8, scope: !85)
!85 = distinct !DILexicalBlock(scope: !81, file: !17, line: 242, column: 22)
!86 = !DILocation(line: 243, column: 13, scope: !85)
!87 = !DILocation(line: 244, column: 8, scope: !85)
!88 = !DILocation(line: 244, column: 13, scope: !85)
!89 = !DILocation(line: 245, column: 8, scope: !85)
!90 = !DILocation(line: 245, column: 14, scope: !85)
!91 = !DILocation(line: 246, column: 7, scope: !85)
!92 = !DILocation(line: 250, column: 21, scope: !16)
!93 = !DILocation(line: 250, column: 32, scope: !16)
!94 = !DILocation(line: 250, column: 14, scope: !16)
!95 = !DILocation(line: 250, column: 12, scope: !16)
!96 = !DILocation(line: 251, column: 8, scope: !97)
!97 = distinct !DILexicalBlock(scope: !16, file: !17, line: 251, column: 8)
!98 = !DILocation(line: 251, column: 16, scope: !97)
!99 = !DILocation(line: 251, column: 8, scope: !16)
!100 = !DILocation(line: 252, column: 18, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !17, line: 251, column: 24)
!102 = !DILocation(line: 252, column: 26, scope: !101)
!103 = !DILocation(line: 252, column: 16, scope: !101)
!104 = !DILocation(line: 253, column: 4, scope: !101)
!105 = !DILocation(line: 254, column: 28, scope: !106)
!106 = distinct !DILexicalBlock(scope: !97, file: !17, line: 253, column: 11)
!107 = !DILocation(line: 254, column: 34, scope: !106)
!108 = !DILocation(line: 254, column: 32, scope: !106)
!109 = !DILocation(line: 254, column: 26, scope: !106)
!110 = !DILocation(line: 254, column: 16, scope: !106)
!111 = !DILocation(line: 258, column: 20, scope: !16)
!112 = !DILocation(line: 258, column: 25, scope: !16)
!113 = !DILocation(line: 258, column: 35, scope: !16)
!114 = !DILocation(line: 258, column: 33, scope: !16)
!115 = !DILocation(line: 258, column: 13, scope: !16)
!116 = !DILocation(line: 258, column: 11, scope: !16)
!117 = !DILocation(line: 261, column: 18, scope: !16)
!118 = !DILocation(line: 261, column: 13, scope: !16)
!119 = !DILocation(line: 261, column: 11, scope: !16)
!120 = !DILocation(line: 262, column: 16, scope: !16)
!121 = !DILocation(line: 262, column: 11, scope: !16)
!122 = !DILocation(line: 262, column: 9, scope: !16)
!123 = !DILocation(line: 263, column: 15, scope: !16)
!124 = !DILocation(line: 263, column: 10, scope: !16)
!125 = !DILocation(line: 263, column: 8, scope: !16)
!126 = !DILocation(line: 264, column: 8, scope: !127)
!127 = distinct !DILexicalBlock(scope: !16, file: !17, line: 264, column: 8)
!128 = !DILocation(line: 264, column: 18, scope: !127)
!129 = !DILocation(line: 264, column: 15, scope: !127)
!130 = !DILocation(line: 264, column: 23, scope: !127)
!131 = !DILocation(line: 264, column: 27, scope: !132)
!132 = !DILexicalBlockFile(scope: !127, file: !17, discriminator: 1)
!133 = !DILocation(line: 264, column: 26, scope: !132)
!134 = !DILocation(line: 264, column: 31, scope: !132)
!135 = !DILocation(line: 264, column: 8, scope: !132)
!136 = !DILocation(line: 265, column: 7, scope: !137)
!137 = distinct !DILexicalBlock(scope: !127, file: !17, line: 264, column: 39)
!138 = !DILocation(line: 267, column: 7, scope: !16)
!139 = !DILocation(line: 268, column: 15, scope: !16)
!140 = !DILocation(line: 268, column: 10, scope: !16)
!141 = !DILocation(line: 268, column: 8, scope: !16)
!142 = !DILocation(line: 269, column: 9, scope: !143)
!143 = distinct !DILexicalBlock(scope: !16, file: !17, line: 269, column: 8)
!144 = !DILocation(line: 269, column: 8, scope: !143)
!145 = !DILocation(line: 269, column: 13, scope: !143)
!146 = !DILocation(line: 269, column: 8, scope: !16)
!147 = !DILocation(line: 270, column: 10, scope: !148)
!148 = distinct !DILexicalBlock(scope: !143, file: !17, line: 269, column: 21)
!149 = !DILocation(line: 271, column: 16, scope: !148)
!150 = !DILocation(line: 271, column: 14, scope: !148)
!151 = !DILocation(line: 272, column: 19, scope: !148)
!152 = !DILocation(line: 272, column: 14, scope: !148)
!153 = !DILocation(line: 272, column: 12, scope: !148)
!154 = !DILocation(line: 273, column: 13, scope: !148)
!155 = !DILocation(line: 273, column: 11, scope: !148)
!156 = !DILocation(line: 274, column: 12, scope: !157)
!157 = distinct !DILexicalBlock(scope: !148, file: !17, line: 274, column: 11)
!158 = !DILocation(line: 274, column: 11, scope: !157)
!159 = !DILocation(line: 274, column: 16, scope: !157)
!160 = !DILocation(line: 274, column: 11, scope: !148)
!161 = !DILocation(line: 275, column: 10, scope: !162)
!162 = distinct !DILexicalBlock(scope: !157, file: !17, line: 274, column: 24)
!163 = !DILocation(line: 277, column: 10, scope: !148)
!164 = !DILocation(line: 278, column: 4, scope: !148)
!165 = !DILocation(line: 279, column: 16, scope: !166)
!166 = distinct !DILexicalBlock(scope: !143, file: !17, line: 278, column: 11)
!167 = !DILocation(line: 279, column: 14, scope: !166)
!168 = !DILocation(line: 280, column: 19, scope: !166)
!169 = !DILocation(line: 280, column: 14, scope: !166)
!170 = !DILocation(line: 280, column: 12, scope: !166)
!171 = !DILocation(line: 281, column: 13, scope: !166)
!172 = !DILocation(line: 281, column: 11, scope: !166)
!173 = !DILocation(line: 283, column: 15, scope: !16)
!174 = !DILocation(line: 283, column: 10, scope: !16)
!175 = !DILocation(line: 283, column: 8, scope: !16)
!176 = !DILocation(line: 284, column: 9, scope: !177)
!177 = distinct !DILexicalBlock(scope: !16, file: !17, line: 284, column: 8)
!178 = !DILocation(line: 284, column: 8, scope: !177)
!179 = !DILocation(line: 284, column: 13, scope: !177)
!180 = !DILocation(line: 284, column: 21, scope: !177)
!181 = !DILocation(line: 284, column: 25, scope: !182)
!182 = !DILexicalBlockFile(scope: !177, file: !17, discriminator: 1)
!183 = !DILocation(line: 284, column: 24, scope: !182)
!184 = !DILocation(line: 284, column: 29, scope: !182)
!185 = !DILocation(line: 284, column: 8, scope: !182)
!186 = !DILocation(line: 285, column: 7, scope: !187)
!187 = distinct !DILexicalBlock(scope: !177, file: !17, line: 284, column: 37)
!188 = !DILocation(line: 290, column: 20, scope: !16)
!189 = !DILocation(line: 290, column: 28, scope: !16)
!190 = !DILocation(line: 290, column: 35, scope: !16)
!191 = !DILocation(line: 290, column: 33, scope: !16)
!192 = !DILocation(line: 290, column: 13, scope: !16)
!193 = !DILocation(line: 290, column: 11, scope: !16)
!194 = !DILocation(line: 291, column: 31, scope: !16)
!195 = !DILocation(line: 291, column: 39, scope: !16)
!196 = !DILocation(line: 291, column: 46, scope: !16)
!197 = !DILocation(line: 291, column: 44, scope: !16)
!198 = !DILocation(line: 291, column: 14, scope: !16)
!199 = !DILocation(line: 291, column: 12, scope: !16)
!200 = !DILocation(line: 292, column: 30, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !17, line: 292, column: 10)
!202 = distinct !DILexicalBlock(scope: !16, file: !17, line: 292, column: 5)
!203 = !DILocation(line: 292, column: 28, scope: !201)
!204 = !DILocation(line: 292, column: 27, scope: !201)
!205 = !DILocation(line: 292, column: 10, scope: !201)
!206 = !DILocation(line: 292, column: 10, scope: !202)
!207 = !DILocation(line: 292, column: 47, scope: !208)
!208 = !DILexicalBlockFile(scope: !209, file: !17, discriminator: 1)
!209 = distinct !DILexicalBlock(scope: !201, file: !17, line: 292, column: 45)
!210 = !DILocation(line: 294, column: 12, scope: !16)
!211 = !DILocation(line: 294, column: 5, scope: !16)
!212 = !DILocation(line: 294, column: 10, scope: !16)
!213 = !DILocation(line: 295, column: 12, scope: !16)
!214 = !DILocation(line: 295, column: 5, scope: !16)
!215 = !DILocation(line: 295, column: 10, scope: !16)
!216 = !DILocation(line: 296, column: 13, scope: !16)
!217 = !DILocation(line: 296, column: 5, scope: !16)
!218 = !DILocation(line: 296, column: 11, scope: !16)
!219 = !DILocation(line: 298, column: 11, scope: !16)
!220 = !DILocation(line: 298, column: 4, scope: !16)
!221 = !DILocation(line: 303, column: 12, scope: !16)
!222 = !DILocation(line: 303, column: 5, scope: !16)
!223 = !DILocation(line: 303, column: 10, scope: !16)
!224 = !DILocation(line: 304, column: 5, scope: !16)
!225 = !DILocation(line: 304, column: 10, scope: !16)
!226 = !DILocation(line: 305, column: 5, scope: !16)
!227 = !DILocation(line: 305, column: 11, scope: !16)
!228 = !DILocation(line: 307, column: 11, scope: !16)
!229 = !DILocation(line: 307, column: 4, scope: !16)
!230 = !DILocation(line: 308, column: 1, scope: !16)
!231 = distinct !DISubprogram(name: "BufDup", scope: !17, file: !17, line: 42, type: !232, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!232 = !DISubroutineType(types: !233)
!233 = !{!4, !234, !237}
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!238 = !DILocalVariable(name: "bufIn", arg: 1, scope: !231, file: !17, line: 42, type: !234)
!239 = !DILocation(line: 42, column: 27, scope: !231)
!240 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !231, file: !17, line: 43, type: !237)
!241 = !DILocation(line: 43, column: 27, scope: !231)
!242 = !DILocalVariable(name: "bufOut", scope: !231, file: !17, line: 45, type: !24)
!243 = !DILocation(line: 45, column: 10, scope: !231)
!244 = !DILocation(line: 49, column: 30, scope: !231)
!245 = !DILocation(line: 49, column: 37, scope: !231)
!246 = !DILocation(line: 49, column: 29, scope: !231)
!247 = !DILocation(line: 49, column: 13, scope: !231)
!248 = !DILocation(line: 49, column: 11, scope: !231)
!249 = !DILocation(line: 50, column: 11, scope: !231)
!250 = !DILocation(line: 50, column: 19, scope: !231)
!251 = !DILocation(line: 50, column: 26, scope: !231)
!252 = !DILocation(line: 50, column: 4, scope: !231)
!253 = !DILocation(line: 51, column: 11, scope: !231)
!254 = !DILocation(line: 51, column: 4, scope: !231)
!255 = !DILocation(line: 51, column: 19, scope: !231)
!256 = !DILocation(line: 53, column: 11, scope: !231)
!257 = !DILocation(line: 53, column: 4, scope: !231)
!258 = distinct !DISubprogram(name: "Walk", scope: !17, file: !17, line: 78, type: !259, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!259 = !DISubroutineType(types: !260)
!260 = !{!235, !234, !261}
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!263 = !DILocalVariable(name: "bufIn", arg: 1, scope: !258, file: !17, line: 78, type: !234)
!264 = !DILocation(line: 78, column: 25, scope: !258)
!265 = !DILocalVariable(name: "sentinel", arg: 2, scope: !258, file: !17, line: 79, type: !261)
!266 = !DILocation(line: 79, column: 24, scope: !258)
!267 = !DILocalVariable(name: "buf", scope: !258, file: !17, line: 81, type: !10)
!268 = !DILocation(line: 81, column: 16, scope: !258)
!269 = !DILocation(line: 83, column: 24, scope: !258)
!270 = !DILocation(line: 83, column: 8, scope: !258)
!271 = !DILocation(line: 87, column: 4, scope: !258)
!272 = !DILocation(line: 87, column: 36, scope: !273)
!273 = !DILexicalBlockFile(scope: !258, file: !17, discriminator: 1)
!274 = !DILocation(line: 87, column: 35, scope: !273)
!275 = !DILocation(line: 87, column: 11, scope: !273)
!276 = !DILocation(line: 87, column: 4, scope: !273)
!277 = !DILocation(line: 88, column: 10, scope: !278)
!278 = distinct !DILexicalBlock(scope: !258, file: !17, line: 87, column: 42)
!279 = !DILocation(line: 87, column: 4, scope: !280)
!280 = !DILexicalBlockFile(scope: !258, file: !17, discriminator: 2)
!281 = distinct !{!281, !271}
!282 = !DILocation(line: 91, column: 11, scope: !258)
!283 = !DILocation(line: 91, column: 4, scope: !258)
!284 = distinct !DISubprogram(name: "DictLL_ReadLine", scope: !17, file: !17, line: 332, type: !285, isLocal: false, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!285 = !DISubroutineType(types: !286)
!286 = !{!27, !287, !23, !23, !23}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !289, line: 48, baseType: !290)
!289 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line136")
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !291, line: 241, size: 1728, align: 64, elements: !292)
!291 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/open-vm-tools/line136")
!292 = !{!293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !313, !314, !315, !316, !320, !322, !324, !328, !331, !333, !334, !335, !336, !337, !338, !339}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !290, file: !291, line: 242, baseType: !27, size: 32, align: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !290, file: !291, line: 247, baseType: !24, size: 64, align: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !290, file: !291, line: 248, baseType: !24, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !290, file: !291, line: 249, baseType: !24, size: 64, align: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !290, file: !291, line: 250, baseType: !24, size: 64, align: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !290, file: !291, line: 251, baseType: !24, size: 64, align: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !290, file: !291, line: 252, baseType: !24, size: 64, align: 64, offset: 384)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !290, file: !291, line: 253, baseType: !24, size: 64, align: 64, offset: 448)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !290, file: !291, line: 254, baseType: !24, size: 64, align: 64, offset: 512)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !290, file: !291, line: 256, baseType: !24, size: 64, align: 64, offset: 576)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !290, file: !291, line: 257, baseType: !24, size: 64, align: 64, offset: 640)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !290, file: !291, line: 258, baseType: !24, size: 64, align: 64, offset: 704)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !290, file: !291, line: 260, baseType: !306, size: 64, align: 64, offset: 768)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !291, line: 156, size: 192, align: 64, elements: !308)
!308 = !{!309, !310, !312}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !307, file: !291, line: 157, baseType: !306, size: 64, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !307, file: !291, line: 158, baseType: !311, size: 64, align: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !307, file: !291, line: 162, baseType: !27, size: 32, align: 32, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !290, file: !291, line: 262, baseType: !311, size: 64, align: 64, offset: 832)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !290, file: !291, line: 264, baseType: !27, size: 32, align: 32, offset: 896)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !290, file: !291, line: 268, baseType: !27, size: 32, align: 32, offset: 928)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !290, file: !291, line: 270, baseType: !317, size: 64, align: 64, offset: 960)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !318, line: 131, baseType: !319)
!318 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line136")
!319 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !290, file: !291, line: 274, baseType: !321, size: 16, align: 16, offset: 1024)
!321 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !290, file: !291, line: 275, baseType: !323, size: 8, align: 8, offset: 1040)
!323 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !290, file: !291, line: 276, baseType: !325, size: 8, align: 8, offset: 1048)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8, align: 8, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 1)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !290, file: !291, line: 280, baseType: !329, size: 64, align: 64, offset: 1088)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !291, line: 150, baseType: null)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !290, file: !291, line: 289, baseType: !332, size: 64, align: 64, offset: 1152)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !318, line: 132, baseType: !319)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !290, file: !291, line: 297, baseType: !4, size: 64, align: 64, offset: 1216)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !290, file: !291, line: 298, baseType: !4, size: 64, align: 64, offset: 1280)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !290, file: !291, line: 299, baseType: !4, size: 64, align: 64, offset: 1344)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !290, file: !291, line: 300, baseType: !4, size: 64, align: 64, offset: 1408)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !290, file: !291, line: 302, baseType: !20, size: 64, align: 64, offset: 1472)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !290, file: !291, line: 303, baseType: !27, size: 32, align: 32, offset: 1536)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !290, file: !291, line: 305, baseType: !340, size: 160, align: 8, offset: 1568)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, align: 8, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 20)
!343 = !DILocalVariable(name: "stream", arg: 1, scope: !284, file: !17, line: 332, type: !287)
!344 = !DILocation(line: 332, column: 23, scope: !284)
!345 = !DILocalVariable(name: "line", arg: 2, scope: !284, file: !17, line: 333, type: !23)
!346 = !DILocation(line: 333, column: 24, scope: !284)
!347 = !DILocalVariable(name: "name", arg: 3, scope: !284, file: !17, line: 334, type: !23)
!348 = !DILocation(line: 334, column: 24, scope: !284)
!349 = !DILocalVariable(name: "value", arg: 4, scope: !284, file: !17, line: 335, type: !23)
!350 = !DILocation(line: 335, column: 24, scope: !284)
!351 = !DILocalVariable(name: "myLine", scope: !284, file: !17, line: 337, type: !24)
!352 = !DILocation(line: 337, column: 10, scope: !284)
!353 = !DILocalVariable(name: "myLineLen", scope: !284, file: !17, line: 338, type: !20)
!354 = !DILocation(line: 338, column: 11, scope: !284)
!355 = !DILocation(line: 345, column: 5, scope: !284)
!356 = !DILocation(line: 345, column: 10, scope: !284)
!357 = !DILocation(line: 346, column: 5, scope: !284)
!358 = !DILocation(line: 346, column: 10, scope: !284)
!359 = !DILocation(line: 347, column: 5, scope: !284)
!360 = !DILocation(line: 347, column: 11, scope: !284)
!361 = !DILocation(line: 349, column: 31, scope: !284)
!362 = !DILocation(line: 349, column: 12, scope: !284)
!363 = !DILocation(line: 349, column: 4, scope: !284)
!364 = !DILocation(line: 351, column: 7, scope: !365)
!365 = distinct !DILexicalBlock(scope: !284, file: !17, line: 349, column: 64)
!366 = !DILocation(line: 354, column: 7, scope: !365)
!367 = !DILocation(line: 357, column: 32, scope: !368)
!368 = distinct !DILexicalBlock(scope: !365, file: !17, line: 357, column: 11)
!369 = !DILocation(line: 357, column: 40, scope: !368)
!370 = !DILocation(line: 358, column: 32, scope: !368)
!371 = !DILocation(line: 358, column: 38, scope: !368)
!372 = !DILocation(line: 358, column: 44, scope: !368)
!373 = !DILocation(line: 357, column: 11, scope: !368)
!374 = !DILocation(line: 358, column: 51, scope: !368)
!375 = !DILocation(line: 357, column: 11, scope: !365)
!376 = !DILocation(line: 359, column: 18, scope: !377)
!377 = distinct !DILexicalBlock(scope: !368, file: !17, line: 358, column: 59)
!378 = !DILocation(line: 359, column: 11, scope: !377)
!379 = !DILocation(line: 359, column: 16, scope: !377)
!380 = !DILocation(line: 360, column: 7, scope: !377)
!381 = !DILocation(line: 361, column: 12, scope: !365)
!382 = !DILocation(line: 361, column: 7, scope: !365)
!383 = !DILocation(line: 362, column: 7, scope: !365)
!384 = !DILocation(line: 365, column: 7, scope: !365)
!385 = !DILocation(line: 368, column: 1, scope: !284)
!386 = !DILocalVariable(name: "output", arg: 1, scope: !34, file: !17, line: 390, type: !38)
!387 = !DILocation(line: 390, column: 28, scope: !34)
!388 = !DILocalVariable(name: "name", arg: 2, scope: !34, file: !17, line: 391, type: !10)
!389 = !DILocation(line: 391, column: 32, scope: !34)
!390 = !DILocalVariable(name: "value", arg: 3, scope: !34, file: !17, line: 392, type: !10)
!391 = !DILocation(line: 392, column: 32, scope: !34)
!392 = !DILocalVariable(name: "size", scope: !34, file: !17, line: 394, type: !20)
!393 = !DILocation(line: 394, column: 11, scope: !34)
!394 = !DILocation(line: 396, column: 8, scope: !395)
!395 = distinct !DILexicalBlock(scope: !34, file: !17, line: 396, column: 8)
!396 = !DILocation(line: 396, column: 8, scope: !34)
!397 = !DILocalVariable(name: "evalue", scope: !398, file: !17, line: 421, type: !24)
!398 = distinct !DILexicalBlock(scope: !395, file: !17, line: 396, column: 14)
!399 = !DILocation(line: 421, column: 13, scope: !398)
!400 = !DILocation(line: 425, column: 41, scope: !398)
!401 = !DILocation(line: 425, column: 63, scope: !398)
!402 = !DILocation(line: 425, column: 56, scope: !398)
!403 = !DILocation(line: 425, column: 48, scope: !398)
!404 = !DILocation(line: 425, column: 16, scope: !405)
!405 = !DILexicalBlockFile(scope: !398, file: !17, discriminator: 1)
!406 = !DILocation(line: 425, column: 14, scope: !398)
!407 = !DILocation(line: 426, column: 27, scope: !408)
!408 = distinct !DILexicalBlock(scope: !398, file: !17, line: 426, column: 12)
!409 = !DILocation(line: 426, column: 35, scope: !408)
!410 = !DILocation(line: 426, column: 56, scope: !408)
!411 = !DILocation(line: 426, column: 49, scope: !408)
!412 = !DILocation(line: 426, column: 41, scope: !408)
!413 = !DILocation(line: 426, column: 13, scope: !414)
!414 = !DILexicalBlockFile(scope: !408, file: !17, discriminator: 2)
!415 = !DILocation(line: 426, column: 13, scope: !408)
!416 = !DILocation(line: 427, column: 11, scope: !408)
!417 = !DILocation(line: 427, column: 29, scope: !418)
!418 = !DILexicalBlockFile(scope: !408, file: !17, discriminator: 1)
!419 = !DILocation(line: 427, column: 15, scope: !418)
!420 = !DILocation(line: 428, column: 11, scope: !408)
!421 = !DILocation(line: 428, column: 15, scope: !418)
!422 = !DILocation(line: 428, column: 20, scope: !418)
!423 = !DILocation(line: 428, column: 38, scope: !414)
!424 = !DILocation(line: 428, column: 46, scope: !414)
!425 = !DILocation(line: 428, column: 54, scope: !414)
!426 = !DILocation(line: 428, column: 24, scope: !414)
!427 = !DILocation(line: 429, column: 11, scope: !408)
!428 = !DILocation(line: 429, column: 29, scope: !418)
!429 = !DILocation(line: 429, column: 15, scope: !418)
!430 = !DILocation(line: 426, column: 12, scope: !405)
!431 = !DILocation(line: 430, column: 15, scope: !432)
!432 = distinct !DILexicalBlock(scope: !408, file: !17, line: 429, column: 47)
!433 = !DILocation(line: 430, column: 10, scope: !432)
!434 = !DILocation(line: 432, column: 10, scope: !432)
!435 = !DILocation(line: 434, column: 12, scope: !398)
!436 = !DILocation(line: 434, column: 7, scope: !398)
!437 = !DILocation(line: 435, column: 4, scope: !398)
!438 = !DILocation(line: 438, column: 29, scope: !439)
!439 = distinct !DILexicalBlock(scope: !395, file: !17, line: 435, column: 11)
!440 = !DILocation(line: 438, column: 22, scope: !439)
!441 = !DILocation(line: 438, column: 14, scope: !439)
!442 = !DILocation(line: 438, column: 12, scope: !439)
!443 = !DILocation(line: 439, column: 11, scope: !444)
!444 = distinct !DILexicalBlock(scope: !439, file: !17, line: 439, column: 11)
!445 = !DILocation(line: 439, column: 16, scope: !444)
!446 = !DILocation(line: 439, column: 34, scope: !447)
!447 = !DILexicalBlockFile(scope: !444, file: !17, discriminator: 1)
!448 = !DILocation(line: 439, column: 42, scope: !447)
!449 = !DILocation(line: 439, column: 49, scope: !447)
!450 = !DILocation(line: 439, column: 20, scope: !447)
!451 = !DILocation(line: 439, column: 11, scope: !447)
!452 = !DILocation(line: 440, column: 10, scope: !453)
!453 = distinct !DILexicalBlock(scope: !444, file: !17, line: 439, column: 56)
!454 = !DILocation(line: 448, column: 23, scope: !455)
!455 = distinct !DILexicalBlock(scope: !34, file: !17, line: 448, column: 8)
!456 = !DILocation(line: 448, column: 9, scope: !455)
!457 = !DILocation(line: 448, column: 8, scope: !34)
!458 = !DILocation(line: 449, column: 7, scope: !459)
!459 = distinct !DILexicalBlock(scope: !455, file: !17, line: 448, column: 41)
!460 = !DILocation(line: 452, column: 4, scope: !34)
!461 = !DILocation(line: 453, column: 1, scope: !34)
!462 = distinct !DISubprogram(name: "DictLL_WriteLine", scope: !17, file: !17, line: 476, type: !463, isLocal: false, isDefinition: true, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!463 = !DISubroutineType(types: !464)
!464 = !{!37, !287, !10, !10}
!465 = !DILocalVariable(name: "stream", arg: 1, scope: !462, file: !17, line: 476, type: !287)
!466 = !DILocation(line: 476, column: 24, scope: !462)
!467 = !DILocalVariable(name: "name", arg: 2, scope: !462, file: !17, line: 477, type: !10)
!468 = !DILocation(line: 477, column: 30, scope: !462)
!469 = !DILocalVariable(name: "value", arg: 3, scope: !462, file: !17, line: 478, type: !10)
!470 = !DILocation(line: 478, column: 30, scope: !462)
!471 = !DILocalVariable(name: "buf", scope: !462, file: !17, line: 480, type: !39)
!472 = !DILocation(line: 480, column: 11, scope: !462)
!473 = !DILocation(line: 482, column: 4, scope: !462)
!474 = !DILocation(line: 483, column: 34, scope: !475)
!475 = distinct !DILexicalBlock(scope: !462, file: !17, line: 483, column: 8)
!476 = !DILocation(line: 483, column: 40, scope: !475)
!477 = !DILocation(line: 483, column: 9, scope: !475)
!478 = !DILocation(line: 483, column: 8, scope: !462)
!479 = !DILocation(line: 484, column: 7, scope: !480)
!480 = distinct !DILexicalBlock(scope: !475, file: !17, line: 483, column: 48)
!481 = !DILocation(line: 485, column: 8, scope: !480)
!482 = !DILocation(line: 485, column: 12, scope: !480)
!483 = !DILocation(line: 486, column: 7, scope: !480)
!484 = !DILocation(line: 488, column: 15, scope: !485)
!485 = distinct !DILexicalBlock(scope: !462, file: !17, line: 488, column: 8)
!486 = !DILocation(line: 488, column: 33, scope: !487)
!487 = !DILexicalBlockFile(scope: !485, file: !17, discriminator: 1)
!488 = !DILocation(line: 488, column: 58, scope: !485)
!489 = !DILocation(line: 488, column: 8, scope: !490)
!490 = !DILexicalBlockFile(scope: !485, file: !17, discriminator: 2)
!491 = !DILocation(line: 488, column: 66, scope: !485)
!492 = !DILocation(line: 488, column: 8, scope: !462)
!493 = !DILocation(line: 489, column: 7, scope: !494)
!494 = distinct !DILexicalBlock(scope: !485, file: !17, line: 488, column: 72)
!495 = !DILocation(line: 490, column: 7, scope: !494)
!496 = !DILocation(line: 492, column: 4, scope: !462)
!497 = !DILocation(line: 493, column: 4, scope: !462)
!498 = !DILocation(line: 494, column: 1, scope: !462)
!499 = distinct !DISubprogram(name: "DynBuf_Get", scope: !40, file: !40, line: 113, type: !500, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!500 = !DISubroutineType(types: !501)
!501 = !{!4, !502}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64, align: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!504 = !DILocalVariable(name: "b", arg: 1, scope: !499, file: !40, line: 113, type: !502)
!505 = !DILocation(line: 113, column: 26, scope: !499)
!506 = !DILocation(line: 117, column: 11, scope: !499)
!507 = !DILocation(line: 117, column: 14, scope: !499)
!508 = !DILocation(line: 117, column: 4, scope: !499)
!509 = distinct !DISubprogram(name: "DynBuf_GetSize", scope: !40, file: !40, line: 174, type: !510, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!510 = !DISubroutineType(types: !511)
!511 = !{!20, !502}
!512 = !DILocalVariable(name: "b", arg: 1, scope: !509, file: !40, line: 174, type: !502)
!513 = !DILocation(line: 174, column: 30, scope: !509)
!514 = !DILocation(line: 178, column: 11, scope: !509)
!515 = !DILocation(line: 178, column: 14, scope: !509)
!516 = !DILocation(line: 178, column: 4, scope: !509)
!517 = distinct !DISubprogram(name: "DictLL_ReadUTF8BOM", scope: !17, file: !17, line: 515, type: !518, isLocal: false, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!518 = !DISubroutineType(types: !519)
!519 = !{!37, !287}
!520 = !DILocalVariable(name: "file", arg: 1, scope: !517, file: !17, line: 515, type: !287)
!521 = !DILocation(line: 515, column: 26, scope: !517)
!522 = !DILocalVariable(name: "found", scope: !517, file: !17, line: 517, type: !37)
!523 = !DILocation(line: 517, column: 9, scope: !517)
!524 = !DILocalVariable(name: "buf", scope: !517, file: !17, line: 520, type: !525)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 24, align: 8, elements: !526)
!526 = !{!527}
!527 = !DISubrange(count: 3)
!528 = !DILocation(line: 520, column: 9, scope: !517)
!529 = !DILocation(line: 522, column: 8, scope: !530)
!530 = distinct !DILexicalBlock(scope: !517, file: !17, line: 522, column: 8)
!531 = !DILocation(line: 522, column: 15, scope: !530)
!532 = !DILocation(line: 522, column: 13, scope: !530)
!533 = !DILocation(line: 522, column: 8, scope: !517)
!534 = !DILocation(line: 523, column: 7, scope: !535)
!535 = distinct !DILexicalBlock(scope: !530, file: !17, line: 522, column: 22)
!536 = !DILocation(line: 526, column: 18, scope: !517)
!537 = !DILocation(line: 526, column: 38, scope: !517)
!538 = !DILocation(line: 526, column: 12, scope: !517)
!539 = !DILocation(line: 526, column: 44, scope: !517)
!540 = !DILocation(line: 527, column: 12, scope: !517)
!541 = !DILocation(line: 527, column: 38, scope: !542)
!542 = !DILexicalBlockFile(scope: !517, file: !17, discriminator: 1)
!543 = !DILocation(line: 527, column: 15, scope: !542)
!544 = !DILocation(line: 527, column: 55, scope: !542)
!545 = !DILocation(line: 527, column: 12, scope: !546)
!546 = !DILexicalBlockFile(scope: !517, file: !17, discriminator: 2)
!547 = !DILocation(line: 526, column: 12, scope: !542)
!548 = !DILocation(line: 526, column: 10, scope: !542)
!549 = !DILocation(line: 529, column: 9, scope: !550)
!550 = distinct !DILexicalBlock(scope: !517, file: !17, line: 529, column: 8)
!551 = !DILocation(line: 529, column: 8, scope: !517)
!552 = !DILocation(line: 530, column: 14, scope: !553)
!553 = distinct !DILexicalBlock(scope: !550, file: !17, line: 529, column: 16)
!554 = !DILocation(line: 530, column: 7, scope: !553)
!555 = !DILocation(line: 531, column: 4, scope: !553)
!556 = !DILocation(line: 533, column: 11, scope: !517)
!557 = !DILocation(line: 533, column: 4, scope: !517)
!558 = !DILocation(line: 534, column: 1, scope: !517)
