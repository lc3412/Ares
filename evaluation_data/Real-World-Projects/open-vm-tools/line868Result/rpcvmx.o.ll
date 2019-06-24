; ModuleID = './rpcvmx.o.i'
source_filename = "./rpcvmx.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RpcVMXState = type { [2052 x i8], i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@RpcVMX = internal global %struct.RpcVMXState { [2052 x i8] c"log \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, align 4
@.str = private unnamed_addr constant [22 x i8] c"info-get guestinfo.%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"info-set guestinfo.driver.%s.version %s\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Driver=%s, Version=%s\00", align 1

; Function Attrs: nounwind uwtable
define void @RpcVMX_LogSetPrefix(i8*) #0 !dbg !20 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !25, metadata !26), !dbg !27
  call void @llvm.dbg.declare(metadata i64* %3, metadata !28, metadata !26), !dbg !32
  %4 = load i8*, i8** %2, align 8, !dbg !33
  %5 = call i64 @strlen(i8* %4) #6, !dbg !34
  store i64 %5, i64* %3, align 8, !dbg !32
  %6 = load i64, i64* %3, align 8, !dbg !35
  %7 = add i64 %6, 4, !dbg !37
  %8 = icmp uge i64 %7, 2051, !dbg !38
  br i1 %8, label %9, label %10, !dbg !39

; <label>:9:                                      ; preds = %1
  store i32 4, i32* getelementptr inbounds (%struct.RpcVMXState, %struct.RpcVMXState* @RpcVMX, i32 0, i32 1), align 4, !dbg !40
  br label %16, !dbg !42

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %2, align 8, !dbg !43
  %12 = call i8* @Str_Strcpy(i8* getelementptr inbounds (%struct.RpcVMXState, %struct.RpcVMXState* @RpcVMX, i32 0, i32 0, i64 4), i8* %11, i64 2048), !dbg !44
  %13 = load i64, i64* %3, align 8, !dbg !45
  %14 = add i64 4, %13, !dbg !46
  %15 = trunc i64 %14 to i32, !dbg !47
  store i32 %15, i32* getelementptr inbounds (%struct.RpcVMXState, %struct.RpcVMXState* @RpcVMX, i32 0, i32 1), align 4, !dbg !48
  br label %16, !dbg !49

; <label>:16:                                     ; preds = %10, %9
  ret void, !dbg !50
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i8* @Str_Strcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i8* @RpcVMX_LogGetPrefix(i8*) #0 !dbg !52 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !55, metadata !26), !dbg !56
  %3 = load i8*, i8** %2, align 8, !dbg !57
  %4 = load i32, i32* getelementptr inbounds (%struct.RpcVMXState, %struct.RpcVMXState* @RpcVMX, i32 0, i32 1), align 4, !dbg !58
  %5 = zext i32 %4 to i64, !dbg !59
  %6 = getelementptr inbounds [2052 x i8], [2052 x i8]* getelementptr inbounds (%struct.RpcVMXState, %struct.RpcVMXState* @RpcVMX, i32 0, i32 0), i64 0, i64 %5, !dbg !59
  store i8 0, i8* %6, align 1, !dbg !60
  ret i8* getelementptr inbounds (%struct.RpcVMXState, %struct.RpcVMXState* @RpcVMX, i32 0, i32 0, i64 4), !dbg !61
}

; Function Attrs: nounwind uwtable
define void @RpcVMX_Log(i8*, ...) #0 !dbg !62 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !65, metadata !26), !dbg !66
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !67, metadata !26), !dbg !83
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !84
  %5 = bitcast %struct.__va_list_tag* %4 to i8*, !dbg !84
  call void @llvm.va_start(i8* %5), !dbg !84
  %6 = load i8*, i8** %2, align 8, !dbg !85
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !86
  call void @RpcVMX_LogV(i8* %6, %struct.__va_list_tag* %7), !dbg !87
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !88
  %9 = bitcast %struct.__va_list_tag* %8 to i8*, !dbg !88
  call void @llvm.va_end(i8* %9), !dbg !88
  ret void, !dbg !89
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind uwtable
define void @RpcVMX_LogV(i8*, %struct.__va_list_tag*) #0 !dbg !90 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.__va_list_tag*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [16 x i8], align 16
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !94, metadata !26), !dbg !95
  store %struct.__va_list_tag* %1, %struct.__va_list_tag** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %4, metadata !96, metadata !26), !dbg !97
  call void @llvm.dbg.declare(metadata i32* %5, metadata !98, metadata !26), !dbg !100
  call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !101, metadata !26), !dbg !105
  %7 = load i32, i32* getelementptr inbounds (%struct.RpcVMXState, %struct.RpcVMXState* @RpcVMX, i32 0, i32 1), align 4, !dbg !106
  %8 = zext i32 %7 to i64, !dbg !107
  %9 = getelementptr inbounds i8, i8* getelementptr inbounds (%struct.RpcVMXState, %struct.RpcVMXState* @RpcVMX, i32 0, i32 0, i32 0), i64 %8, !dbg !107
  %10 = load i32, i32* getelementptr inbounds (%struct.RpcVMXState, %struct.RpcVMXState* @RpcVMX, i32 0, i32 1), align 4, !dbg !108
  %11 = zext i32 %10 to i64, !dbg !109
  %12 = sub i64 2052, %11, !dbg !110
  %13 = load i8*, i8** %3, align 8, !dbg !111
  %14 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8, !dbg !112
  %15 = call i32 @Str_Vsnprintf(i8* %9, i64 %12, i8* %13, %struct.__va_list_tag* %14), !dbg !113
  store i32 %15, i32* %5, align 4, !dbg !114
  %16 = load i32, i32* %5, align 4, !dbg !115
  %17 = icmp slt i32 %16, 1, !dbg !117
  br i1 %17, label %18, label %23, !dbg !118

; <label>:18:                                     ; preds = %2
  %19 = load i32, i32* getelementptr inbounds (%struct.RpcVMXState, %struct.RpcVMXState* @RpcVMX, i32 0, i32 1), align 4, !dbg !119
  %20 = zext i32 %19 to i64, !dbg !121
  %21 = sub i64 2052, %20, !dbg !122
  %22 = trunc i64 %21 to i32, !dbg !123
  store i32 %22, i32* %5, align 4, !dbg !124
  br label %23, !dbg !125

; <label>:23:                                     ; preds = %18, %2
  %24 = load i32, i32* getelementptr inbounds (%struct.RpcVMXState, %struct.RpcVMXState* @RpcVMX, i32 0, i32 1), align 4, !dbg !126
  %25 = load i32, i32* %5, align 4, !dbg !127
  %26 = add i32 %24, %25, !dbg !128
  %27 = zext i32 %26 to i64, !dbg !129
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !130
  %29 = call signext i8 @RpcOut_SendOneRawPreallocated(i8* getelementptr inbounds (%struct.RpcVMXState, %struct.RpcVMXState* @RpcVMX, i32 0, i32 0, i32 0), i64 %27, i8* %28, i64 16), !dbg !131
  ret void, !dbg !132
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare i32 @Str_Vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #3

declare signext i8 @RpcOut_SendOneRawPreallocated(i8*, i64, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i8* @RpcVMX_ConfigGetString(i8*, i8*) #0 !dbg !133 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !137, metadata !26), !dbg !138
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !139, metadata !26), !dbg !140
  call void @llvm.dbg.declare(metadata i8** %5, metadata !141, metadata !26), !dbg !142
  %6 = load i8*, i8** %4, align 8, !dbg !143
  %7 = call signext i8 (i8**, i64*, i8*, ...) @RpcOut_sendOne(i8** %5, i64* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8* %6), !dbg !145
  %8 = icmp ne i8 %7, 0, !dbg !145
  br i1 %8, label %17, label %9, !dbg !146

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %5, align 8, !dbg !147
  call void @free(i8* %10) #4, !dbg !149
  store i8* null, i8** %5, align 8, !dbg !150
  %11 = load i8*, i8** %3, align 8, !dbg !151
  %12 = icmp ne i8* %11, null, !dbg !151
  br i1 %12, label %13, label %16, !dbg !153

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %3, align 8, !dbg !154
  %15 = call noalias i8* @strdup(i8* %14) #4, !dbg !156
  store i8* %15, i8** %5, align 8, !dbg !157
  br label %16, !dbg !158

; <label>:16:                                     ; preds = %13, %9
  br label %17, !dbg !159

; <label>:17:                                     ; preds = %16, %2
  %18 = load i8*, i8** %5, align 8, !dbg !160
  ret i8* %18, !dbg !161
}

declare signext i8 @RpcOut_sendOne(i8**, i64*, i8*, ...) #3

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #5

; Function Attrs: nounwind uwtable
define signext i8 @RpcVMX_ConfigGetBool(i8 signext, i8*) #0 !dbg !162 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !167, metadata !26), !dbg !168
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !169, metadata !26), !dbg !170
  call void @llvm.dbg.declare(metadata i8** %5, metadata !171, metadata !26), !dbg !172
  %7 = load i8*, i8** %4, align 8, !dbg !173
  %8 = call i8* @RpcVMX_ConfigGetString(i8* null, i8* %7), !dbg !174
  store i8* %8, i8** %5, align 8, !dbg !172
  call void @llvm.dbg.declare(metadata i8* %6, metadata !175, metadata !26), !dbg !176
  %9 = load i8, i8* %3, align 1, !dbg !177
  store i8 %9, i8* %6, align 1, !dbg !176
  %10 = load i8*, i8** %5, align 8, !dbg !178
  %11 = icmp ne i8* %10, null, !dbg !178
  br i1 %11, label %12, label %25, !dbg !180

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %5, align 8, !dbg !181
  %14 = call i32 @strcasecmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #6, !dbg !184
  %15 = icmp ne i32 %14, 0, !dbg !184
  br i1 %15, label %17, label %16, !dbg !185

; <label>:16:                                     ; preds = %12
  store i8 1, i8* %6, align 1, !dbg !186
  br label %23, !dbg !188

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %5, align 8, !dbg !189
  %19 = call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #6, !dbg !192
  %20 = icmp ne i32 %19, 0, !dbg !192
  br i1 %20, label %22, label %21, !dbg !193

; <label>:21:                                     ; preds = %17
  store i8 0, i8* %6, align 1, !dbg !194
  br label %22, !dbg !196

; <label>:22:                                     ; preds = %21, %17
  br label %23

; <label>:23:                                     ; preds = %22, %16
  %24 = load i8*, i8** %5, align 8, !dbg !197
  call void @free(i8* %24) #4, !dbg !198
  br label %25, !dbg !199

; <label>:25:                                     ; preds = %23, %2
  %26 = load i8, i8* %6, align 1, !dbg !200
  ret i8 %26, !dbg !201
}

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @RpcVMX_ConfigGetLong(i32, i8*) #0 !dbg !202 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !208, metadata !26), !dbg !209
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !210, metadata !26), !dbg !211
  call void @llvm.dbg.declare(metadata i8** %5, metadata !212, metadata !26), !dbg !213
  %7 = load i8*, i8** %4, align 8, !dbg !214
  %8 = call i8* @RpcVMX_ConfigGetString(i8* null, i8* %7), !dbg !215
  store i8* %8, i8** %5, align 8, !dbg !213
  call void @llvm.dbg.declare(metadata i32* %6, metadata !216, metadata !26), !dbg !217
  %9 = load i32, i32* %3, align 4, !dbg !218
  store i32 %9, i32* %6, align 4, !dbg !217
  %10 = load i8*, i8** %5, align 8, !dbg !219
  %11 = icmp ne i8* %10, null, !dbg !219
  br i1 %11, label %12, label %16, !dbg !221

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %5, align 8, !dbg !222
  %14 = call i32 @atoi(i8* %13) #6, !dbg !224
  store i32 %14, i32* %6, align 4, !dbg !225
  %15 = load i8*, i8** %5, align 8, !dbg !226
  call void @free(i8* %15) #4, !dbg !227
  br label %16, !dbg !228

; <label>:16:                                     ; preds = %12, %2
  %17 = load i32, i32* %6, align 4, !dbg !229
  ret i32 %17, !dbg !230
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

; Function Attrs: nounwind uwtable
define void @RpcVMX_ReportDriverVersion(i8*, i8*) #0 !dbg !231 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [128 x i8], align 16
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !234, metadata !26), !dbg !235
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !236, metadata !26), !dbg !237
  call void @llvm.dbg.declare(metadata [128 x i8]* %5, metadata !238, metadata !26), !dbg !242
  %6 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i32 0, i32 0, !dbg !243
  %7 = load i8*, i8** %3, align 8, !dbg !244
  %8 = load i8*, i8** %4, align 8, !dbg !245
  %9 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* %6, i64 128, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i32 0, i32 0), i8* %7, i8* %8), !dbg !246
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i32 0, i32 0, !dbg !247
  %11 = call signext i8 (i8**, i64*, i8*, ...) @RpcOut_sendOne(i8** null, i64* null, i8* %10), !dbg !248
  %12 = load i8*, i8** %3, align 8, !dbg !249
  %13 = load i8*, i8** %4, align 8, !dbg !250
  call void (i8*, ...) @RpcVMX_Log(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i8* %12, i8* %13), !dbg !251
  ret void, !dbg !252
}

declare i32 @Str_Sprintf(i8*, i64, i8*, ...) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "rpcvmx.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line868")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = distinct !DIGlobalVariable(name: "RpcVMX", scope: !0, file: !7, line: 36, type: !8, isLocal: true, isDefinition: true, variable: %struct.RpcVMXState* @RpcVMX)
!7 = !DIFile(filename: "rpcvmx.c", directory: "/home/lichi/Desktop/open-vm-tools/line868")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcVMXState", file: !7, line: 34, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 31, size: 16448, align: 32, elements: !10)
!10 = !{!11, !16}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "logBuf", scope: !9, file: !7, line: 32, baseType: !12, size: 16416, align: 8)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 16416, align: 8, elements: !14)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !{!15}
!15 = !DISubrange(count: 2052)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "logOffset", scope: !9, file: !7, line: 33, baseType: !4, size: 32, align: 32, offset: 16416)
!17 = !{i32 2, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!20 = distinct !DISubprogram(name: "RpcVMX_LogSetPrefix", scope: !7, file: !7, line: 60, type: !21, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!25 = !DILocalVariable(name: "prefix", arg: 1, scope: !20, file: !7, line: 60, type: !23)
!26 = !DIExpression()
!27 = !DILocation(line: 60, column: 33, scope: !20)
!28 = !DILocalVariable(name: "prefixLen", scope: !20, file: !7, line: 62, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 216, baseType: !31)
!30 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line868")
!31 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!32 = !DILocation(line: 62, column: 11, scope: !20)
!33 = !DILocation(line: 62, column: 30, scope: !20)
!34 = !DILocation(line: 62, column: 23, scope: !20)
!35 = !DILocation(line: 64, column: 8, scope: !36)
!36 = distinct !DILexicalBlock(scope: !20, file: !7, line: 64, column: 8)
!37 = !DILocation(line: 64, column: 18, scope: !36)
!38 = !DILocation(line: 64, column: 33, scope: !36)
!39 = !DILocation(line: 64, column: 8, scope: !20)
!40 = !DILocation(line: 68, column: 24, scope: !41)
!41 = distinct !DILexicalBlock(scope: !36, file: !7, line: 64, column: 62)
!42 = !DILocation(line: 69, column: 7, scope: !41)
!43 = !DILocation(line: 72, column: 15, scope: !20)
!44 = !DILocation(line: 71, column: 4, scope: !20)
!45 = !DILocation(line: 75, column: 53, scope: !20)
!46 = !DILocation(line: 75, column: 51, scope: !20)
!47 = !DILocation(line: 75, column: 23, scope: !20)
!48 = !DILocation(line: 75, column: 21, scope: !20)
!49 = !DILocation(line: 76, column: 1, scope: !20)
!50 = !DILocation(line: 76, column: 1, scope: !51)
!51 = !DILexicalBlockFile(scope: !20, file: !7, discriminator: 1)
!52 = distinct !DISubprogram(name: "RpcVMX_LogGetPrefix", scope: !7, file: !7, line: 98, type: !53, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!53 = !DISubroutineType(types: !54)
!54 = !{!23, !23}
!55 = !DILocalVariable(name: "prefix", arg: 1, scope: !52, file: !7, line: 98, type: !23)
!56 = !DILocation(line: 98, column: 33, scope: !52)
!57 = !DILocation(line: 100, column: 10, scope: !52)
!58 = !DILocation(line: 102, column: 25, scope: !52)
!59 = !DILocation(line: 102, column: 4, scope: !52)
!60 = !DILocation(line: 102, column: 36, scope: !52)
!61 = !DILocation(line: 103, column: 4, scope: !52)
!62 = distinct !DISubprogram(name: "RpcVMX_Log", scope: !7, file: !7, line: 124, type: !63, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !23, null}
!65 = !DILocalVariable(name: "fmt", arg: 1, scope: !62, file: !7, line: 124, type: !23)
!66 = !DILocation(line: 124, column: 24, scope: !62)
!67 = !DILocalVariable(name: "args", scope: !62, file: !7, line: 126, type: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !69, line: 79, baseType: !70)
!69 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line868")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !71, line: 40, baseType: !72)
!71 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/open-vm-tools/line868")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 126, baseType: !73)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 192, align: 64, elements: !81)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 126, size: 192, align: 64, elements: !75)
!75 = !{!76, !77, !78, !80}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !74, file: !1, line: 126, baseType: !4, size: 32, align: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !74, file: !1, line: 126, baseType: !4, size: 32, align: 32, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !74, file: !1, line: 126, baseType: !79, size: 64, align: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !74, file: !1, line: 126, baseType: !79, size: 64, align: 64, offset: 128)
!81 = !{!82}
!82 = !DISubrange(count: 1)
!83 = !DILocation(line: 126, column: 12, scope: !62)
!84 = !DILocation(line: 128, column: 3, scope: !62)
!85 = !DILocation(line: 129, column: 16, scope: !62)
!86 = !DILocation(line: 129, column: 21, scope: !62)
!87 = !DILocation(line: 129, column: 4, scope: !62)
!88 = !DILocation(line: 130, column: 3, scope: !62)
!89 = !DILocation(line: 131, column: 1, scope: !62)
!90 = distinct !DISubprogram(name: "RpcVMX_LogV", scope: !7, file: !7, line: 152, type: !91, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !23, !93}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!94 = !DILocalVariable(name: "fmt", arg: 1, scope: !90, file: !7, line: 152, type: !23)
!95 = !DILocation(line: 152, column: 25, scope: !90)
!96 = !DILocalVariable(name: "args", arg: 2, scope: !90, file: !7, line: 152, type: !93)
!97 = !DILocation(line: 152, column: 38, scope: !90)
!98 = !DILocalVariable(name: "payloadLen", scope: !90, file: !7, line: 154, type: !99)
!99 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!100 = !DILocation(line: 154, column: 8, scope: !90)
!101 = !DILocalVariable(name: "receiveBuffer", scope: !90, file: !7, line: 155, type: !102)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, align: 8, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 16)
!105 = !DILocation(line: 155, column: 9, scope: !90)
!106 = !DILocation(line: 157, column: 54, scope: !90)
!107 = !DILocation(line: 157, column: 45, scope: !90)
!108 = !DILocation(line: 158, column: 61, scope: !90)
!109 = !DILocation(line: 158, column: 54, scope: !90)
!110 = !DILocation(line: 158, column: 52, scope: !90)
!111 = !DILocation(line: 159, column: 31, scope: !90)
!112 = !DILocation(line: 159, column: 36, scope: !90)
!113 = !DILocation(line: 157, column: 17, scope: !90)
!114 = !DILocation(line: 157, column: 15, scope: !90)
!115 = !DILocation(line: 161, column: 8, scope: !116)
!116 = distinct !DILexicalBlock(scope: !90, file: !7, line: 161, column: 8)
!117 = !DILocation(line: 161, column: 19, scope: !116)
!118 = !DILocation(line: 161, column: 8, scope: !90)
!119 = !DILocation(line: 166, column: 50, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !7, line: 161, column: 24)
!121 = !DILocation(line: 166, column: 43, scope: !120)
!122 = !DILocation(line: 166, column: 41, scope: !120)
!123 = !DILocation(line: 166, column: 20, scope: !120)
!124 = !DILocation(line: 166, column: 18, scope: !120)
!125 = !DILocation(line: 167, column: 4, scope: !120)
!126 = !DILocation(line: 177, column: 56, scope: !90)
!127 = !DILocation(line: 177, column: 68, scope: !90)
!128 = !DILocation(line: 177, column: 66, scope: !90)
!129 = !DILocation(line: 177, column: 49, scope: !90)
!130 = !DILocation(line: 178, column: 34, scope: !90)
!131 = !DILocation(line: 177, column: 4, scope: !90)
!132 = !DILocation(line: 179, column: 1, scope: !90)
!133 = distinct !DISubprogram(name: "RpcVMX_ConfigGetString", scope: !7, file: !7, line: 202, type: !134, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!134 = !DISubroutineType(types: !135)
!135 = !{!136, !23, !23}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!137 = !DILocalVariable(name: "defval", arg: 1, scope: !133, file: !7, line: 202, type: !23)
!138 = !DILocation(line: 202, column: 36, scope: !133)
!139 = !DILocalVariable(name: "var", arg: 2, scope: !133, file: !7, line: 202, type: !23)
!140 = !DILocation(line: 202, column: 56, scope: !133)
!141 = !DILocalVariable(name: "value", scope: !133, file: !7, line: 204, type: !136)
!142 = !DILocation(line: 204, column: 10, scope: !133)
!143 = !DILocation(line: 205, column: 62, scope: !144)
!144 = distinct !DILexicalBlock(scope: !133, file: !7, line: 205, column: 8)
!145 = !DILocation(line: 205, column: 9, scope: !144)
!146 = !DILocation(line: 205, column: 8, scope: !133)
!147 = !DILocation(line: 207, column: 12, scope: !148)
!148 = distinct !DILexicalBlock(scope: !144, file: !7, line: 205, column: 68)
!149 = !DILocation(line: 207, column: 7, scope: !148)
!150 = !DILocation(line: 208, column: 13, scope: !148)
!151 = !DILocation(line: 210, column: 11, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !7, line: 210, column: 11)
!153 = !DILocation(line: 210, column: 11, scope: !148)
!154 = !DILocation(line: 215, column: 25, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !7, line: 210, column: 19)
!156 = !DILocation(line: 215, column: 18, scope: !155)
!157 = !DILocation(line: 215, column: 16, scope: !155)
!158 = !DILocation(line: 216, column: 7, scope: !155)
!159 = !DILocation(line: 217, column: 4, scope: !148)
!160 = !DILocation(line: 219, column: 11, scope: !133)
!161 = !DILocation(line: 219, column: 4, scope: !133)
!162 = distinct !DISubprogram(name: "RpcVMX_ConfigGetBool", scope: !7, file: !7, line: 242, type: !163, isLocal: false, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!163 = !DISubroutineType(types: !164)
!164 = !{!165, !165, !23}
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !166, line: 230, baseType: !13)
!166 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line868")
!167 = !DILocalVariable(name: "defval", arg: 1, scope: !162, file: !7, line: 242, type: !165)
!168 = !DILocation(line: 242, column: 27, scope: !162)
!169 = !DILocalVariable(name: "var", arg: 2, scope: !162, file: !7, line: 242, type: !23)
!170 = !DILocation(line: 242, column: 47, scope: !162)
!171 = !DILocalVariable(name: "value", scope: !162, file: !7, line: 244, type: !136)
!172 = !DILocation(line: 244, column: 10, scope: !162)
!173 = !DILocation(line: 244, column: 46, scope: !162)
!174 = !DILocation(line: 244, column: 18, scope: !162)
!175 = !DILocalVariable(name: "ret", scope: !162, file: !7, line: 245, type: !165)
!176 = !DILocation(line: 245, column: 9, scope: !162)
!177 = !DILocation(line: 245, column: 15, scope: !162)
!178 = !DILocation(line: 247, column: 8, scope: !179)
!179 = distinct !DILexicalBlock(scope: !162, file: !7, line: 247, column: 8)
!180 = !DILocation(line: 247, column: 8, scope: !162)
!181 = !DILocation(line: 248, column: 23, scope: !182)
!182 = distinct !DILexicalBlock(scope: !183, file: !7, line: 248, column: 11)
!183 = distinct !DILexicalBlock(scope: !179, file: !7, line: 247, column: 15)
!184 = !DILocation(line: 248, column: 12, scope: !182)
!185 = !DILocation(line: 248, column: 11, scope: !183)
!186 = !DILocation(line: 249, column: 14, scope: !187)
!187 = distinct !DILexicalBlock(scope: !182, file: !7, line: 248, column: 39)
!188 = !DILocation(line: 250, column: 7, scope: !187)
!189 = !DILocation(line: 250, column: 30, scope: !190)
!190 = !DILexicalBlockFile(scope: !191, file: !7, discriminator: 1)
!191 = distinct !DILexicalBlock(scope: !182, file: !7, line: 250, column: 18)
!192 = !DILocation(line: 250, column: 19, scope: !190)
!193 = !DILocation(line: 250, column: 18, scope: !190)
!194 = !DILocation(line: 251, column: 14, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !7, line: 250, column: 47)
!196 = !DILocation(line: 252, column: 7, scope: !195)
!197 = !DILocation(line: 254, column: 12, scope: !183)
!198 = !DILocation(line: 254, column: 7, scope: !183)
!199 = !DILocation(line: 255, column: 4, scope: !183)
!200 = !DILocation(line: 257, column: 11, scope: !162)
!201 = !DILocation(line: 257, column: 4, scope: !162)
!202 = distinct !DISubprogram(name: "RpcVMX_ConfigGetLong", scope: !7, file: !7, line: 282, type: !203, isLocal: false, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!203 = !DISubroutineType(types: !204)
!204 = !{!205, !205, !23}
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !166, line: 174, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !207, line: 196, baseType: !99)
!207 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line868")
!208 = !DILocalVariable(name: "defval", arg: 1, scope: !202, file: !7, line: 282, type: !205)
!209 = !DILocation(line: 282, column: 28, scope: !202)
!210 = !DILocalVariable(name: "var", arg: 2, scope: !202, file: !7, line: 282, type: !23)
!211 = !DILocation(line: 282, column: 48, scope: !202)
!212 = !DILocalVariable(name: "value", scope: !202, file: !7, line: 284, type: !136)
!213 = !DILocation(line: 284, column: 10, scope: !202)
!214 = !DILocation(line: 284, column: 46, scope: !202)
!215 = !DILocation(line: 284, column: 18, scope: !202)
!216 = !DILocalVariable(name: "ret", scope: !202, file: !7, line: 285, type: !205)
!217 = !DILocation(line: 285, column: 10, scope: !202)
!218 = !DILocation(line: 285, column: 16, scope: !202)
!219 = !DILocation(line: 287, column: 8, scope: !220)
!220 = distinct !DILexicalBlock(scope: !202, file: !7, line: 287, column: 8)
!221 = !DILocation(line: 287, column: 8, scope: !202)
!222 = !DILocation(line: 288, column: 18, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !7, line: 287, column: 15)
!224 = !DILocation(line: 288, column: 13, scope: !223)
!225 = !DILocation(line: 288, column: 11, scope: !223)
!226 = !DILocation(line: 289, column: 12, scope: !223)
!227 = !DILocation(line: 289, column: 7, scope: !223)
!228 = !DILocation(line: 290, column: 4, scope: !223)
!229 = !DILocation(line: 292, column: 11, scope: !202)
!230 = !DILocation(line: 292, column: 4, scope: !202)
!231 = distinct !DISubprogram(name: "RpcVMX_ReportDriverVersion", scope: !7, file: !7, line: 314, type: !232, isLocal: false, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !23, !23}
!234 = !DILocalVariable(name: "drivername", arg: 1, scope: !231, file: !7, line: 314, type: !23)
!235 = !DILocation(line: 314, column: 40, scope: !231)
!236 = !DILocalVariable(name: "versionString", arg: 2, scope: !231, file: !7, line: 314, type: !23)
!237 = !DILocation(line: 314, column: 64, scope: !231)
!238 = !DILocalVariable(name: "setVersionCmd", scope: !231, file: !7, line: 316, type: !239)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1024, align: 8, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 128)
!242 = !DILocation(line: 316, column: 9, scope: !231)
!243 = !DILocation(line: 317, column: 16, scope: !231)
!244 = !DILocation(line: 319, column: 16, scope: !231)
!245 = !DILocation(line: 319, column: 28, scope: !231)
!246 = !DILocation(line: 317, column: 4, scope: !231)
!247 = !DILocation(line: 320, column: 30, scope: !231)
!248 = !DILocation(line: 320, column: 4, scope: !231)
!249 = !DILocation(line: 321, column: 40, scope: !231)
!250 = !DILocation(line: 321, column: 52, scope: !231)
!251 = !DILocation(line: 321, column: 4, scope: !231)
!252 = !DILocation(line: 322, column: 1, scope: !231)
