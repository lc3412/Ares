; ModuleID = './line1-nat.o.i'
source_filename = "./line1-nat.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.engine = type { i8*, i8, i32 ()*, i32 ()*, void ()*, i32 (%struct.sockaddr*, i32*, i32, %struct.sockaddr*, i32)*, i32 (i32)* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.__SOCKADDR_ARG = type { %struct.sockaddr* }

@.str = private unnamed_addr constant [10 x i8] c"netfilter\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"tproxy\00", align 1
@engines = global [3 x %struct.engine] [%struct.engine { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8 1, i32 ()* null, i32 ()* null, void ()* null, i32 (%struct.sockaddr*, i32*, i32, %struct.sockaddr*, i32)* @nat_netfilter_lookup_cb, i32 (i32)* null }, %struct.engine { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8 1, i32 ()* null, i32 ()* null, void ()* null, i32 (%struct.sockaddr*, i32*, i32, %struct.sockaddr*, i32)* @nat_getsockname_lookup_cb, i32 (i32)* @nat_iptransparent_socket_cb }, %struct.engine zeroinitializer], align 16
@stdout = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [11 x i8] c" (default)\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"NAT engine preinit '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"NAT engine init '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"NAT engine fini '%s'\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"NAT engines:\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" %s%s\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c" -\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"netfilter:\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c" IP_TRANSPARENT\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c" IP6T_SO_ORIGINAL_DST\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"Error from getsockopt(SO_ORIGINAL_DST): %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"Error from getsockopt(IP6T_SO_ORIGINAL_DST): %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"Error from getsockname(): %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"Error from setsockopt(IP_TRANSPARENT): %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @nat_netfilter_lookup_cb(%struct.sockaddr*, i32*, i32, %struct.sockaddr*, i32) #0 !dbg !62 {
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr** %6, metadata !63, metadata !64), !dbg !65
  store i32* %1, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !66, metadata !64), !dbg !67
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !68, metadata !64), !dbg !69
  store %struct.sockaddr* %3, %struct.sockaddr** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr** %9, metadata !70, metadata !64), !dbg !71
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !72, metadata !64), !dbg !73
  call void @llvm.dbg.declare(metadata i32* %11, metadata !74, metadata !64), !dbg !75
  %12 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8, !dbg !76
  %13 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %12, i32 0, i32 0, !dbg !78
  %14 = load i16, i16* %13, align 2, !dbg !78
  %15 = zext i16 %14 to i32, !dbg !76
  %16 = icmp eq i32 %15, 2, !dbg !79
  br i1 %16, label %17, label %31, !dbg !80

; <label>:17:                                     ; preds = %5
  %18 = load i32, i32* %8, align 4, !dbg !81
  %19 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8, !dbg !83
  %20 = bitcast %struct.sockaddr* %19 to i8*, !dbg !83
  %21 = load i32*, i32** %7, align 8, !dbg !84
  %22 = call i32 @getsockopt(i32 %18, i32 0, i32 80, i8* %20, i32* %21) #6, !dbg !85
  store i32 %22, i32* %11, align 4, !dbg !86
  %23 = load i32, i32* %11, align 4, !dbg !87
  %24 = icmp eq i32 %23, -1, !dbg !89
  br i1 %24, label %25, label %30, !dbg !90

; <label>:25:                                     ; preds = %17
  %26 = call i32* @__errno_location() #1, !dbg !91
  %27 = load i32, i32* %26, align 4, !dbg !93
  %28 = call i8* @strerror(i32 %27) #6, !dbg !94
  %29 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i32 0, i32 0), i8* %28), !dbg !96
  br label %30, !dbg !97

; <label>:30:                                     ; preds = %25, %17
  br label %45, !dbg !98

; <label>:31:                                     ; preds = %5
  %32 = load i32, i32* %8, align 4, !dbg !99
  %33 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8, !dbg !101
  %34 = bitcast %struct.sockaddr* %33 to i8*, !dbg !101
  %35 = load i32*, i32** %7, align 8, !dbg !102
  %36 = call i32 @getsockopt(i32 %32, i32 41, i32 80, i8* %34, i32* %35) #6, !dbg !103
  store i32 %36, i32* %11, align 4, !dbg !104
  %37 = load i32, i32* %11, align 4, !dbg !105
  %38 = icmp eq i32 %37, -1, !dbg !107
  br i1 %38, label %39, label %44, !dbg !108

; <label>:39:                                     ; preds = %31
  %40 = call i32* @__errno_location() #1, !dbg !109
  %41 = load i32, i32* %40, align 4, !dbg !111
  %42 = call i8* @strerror(i32 %41) #6, !dbg !112
  %43 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i32 0, i32 0), i8* %42), !dbg !114
  br label %44, !dbg !115

; <label>:44:                                     ; preds = %39, %31
  br label %45

; <label>:45:                                     ; preds = %44, %30
  %46 = load i32, i32* %11, align 4, !dbg !116
  ret i32 %46, !dbg !117
}

; Function Attrs: nounwind uwtable
define internal i32 @nat_getsockname_lookup_cb(%struct.sockaddr*, i32*, i32, %struct.sockaddr*, i32) #0 !dbg !118 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %union.__SOCKADDR_ARG, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr** %7, metadata !119, metadata !64), !dbg !120
  store i32* %1, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !121, metadata !64), !dbg !122
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !123, metadata !64), !dbg !124
  store %struct.sockaddr* %3, %struct.sockaddr** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr** %10, metadata !125, metadata !64), !dbg !126
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !127, metadata !64), !dbg !128
  %13 = load i32, i32* %9, align 4, !dbg !129
  %14 = bitcast %union.__SOCKADDR_ARG* %12 to %struct.sockaddr**, !dbg !131
  %15 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8, !dbg !131
  store %struct.sockaddr* %15, %struct.sockaddr** %14, align 8, !dbg !131
  %16 = load i32*, i32** %8, align 8, !dbg !132
  %17 = getelementptr inbounds %union.__SOCKADDR_ARG, %union.__SOCKADDR_ARG* %12, i32 0, i32 0, !dbg !133
  %18 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8, !dbg !133
  %19 = call i32 @getsockname(i32 %13, %struct.sockaddr* %18, i32* %16) #6, !dbg !133
  %20 = icmp eq i32 %19, -1, !dbg !134
  br i1 %20, label %21, label %26, !dbg !135

; <label>:21:                                     ; preds = %5
  %22 = call i32* @__errno_location() #1, !dbg !136
  %23 = load i32, i32* %22, align 4, !dbg !138
  %24 = call i8* @strerror(i32 %23) #6, !dbg !139
  %25 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0), i8* %24), !dbg !141
  store i32 -1, i32* %6, align 4, !dbg !142
  br label %27, !dbg !142

; <label>:26:                                     ; preds = %5
  store i32 0, i32* %6, align 4, !dbg !143
  br label %27, !dbg !143

; <label>:27:                                     ; preds = %26, %21
  %28 = load i32, i32* %6, align 4, !dbg !144
  ret i32 %28, !dbg !144
}

; Function Attrs: nounwind uwtable
define internal i32 @nat_iptransparent_socket_cb(i32) #0 !dbg !145 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !146, metadata !64), !dbg !147
  call void @llvm.dbg.declare(metadata i32* %3, metadata !148, metadata !64), !dbg !149
  store i32 1, i32* %3, align 4, !dbg !149
  call void @llvm.dbg.declare(metadata i32* %4, metadata !150, metadata !64), !dbg !151
  %5 = load i32, i32* %2, align 4, !dbg !152
  %6 = bitcast i32* %3 to i8*, !dbg !153
  %7 = call i32 @setsockopt(i32 %5, i32 0, i32 19, i8* %6, i32 4) #6, !dbg !154
  store i32 %7, i32* %4, align 4, !dbg !155
  %8 = load i32, i32* %4, align 4, !dbg !156
  %9 = icmp eq i32 %8, -1, !dbg !158
  br i1 %9, label %10, label %15, !dbg !159

; <label>:10:                                     ; preds = %1
  %11 = call i32* @__errno_location() #1, !dbg !160
  %12 = load i32, i32* %11, align 4, !dbg !162
  %13 = call i8* @strerror(i32 %12) #6, !dbg !163
  %14 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i32 0, i32 0), i8* %13), !dbg !165
  br label %15, !dbg !166

; <label>:15:                                     ; preds = %10, %1
  %16 = load i32, i32* %4, align 4, !dbg !167
  ret i32 %16, !dbg !168
}

; Function Attrs: nounwind uwtable
define i8* @nat_getdefaultname() #0 !dbg !169 {
  %1 = load i8*, i8** getelementptr inbounds ([3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 0, i32 0), align 16, !dbg !172
  ret i8* %1, !dbg !173
}

; Function Attrs: nounwind uwtable
define i32 @nat_exist(i8*) #0 !dbg !174 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !177, metadata !64), !dbg !178
  %3 = load i8*, i8** %2, align 8, !dbg !179
  %4 = icmp ne i8* %3, null, !dbg !179
  br i1 %4, label %7, label %5, !dbg !181

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** getelementptr inbounds ([3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 0, i32 0), align 16, !dbg !182
  store i8* %6, i8** %2, align 8, !dbg !183
  br label %7, !dbg !184

; <label>:7:                                      ; preds = %5, %1
  %8 = load i8*, i8** %2, align 8, !dbg !185
  %9 = call i32 @nat_index(i8* %8), !dbg !186
  %10 = sext i32 %9 to i64, !dbg !187
  %11 = getelementptr inbounds [3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 %10, !dbg !187
  %12 = getelementptr inbounds %struct.engine, %struct.engine* %11, i32 0, i32 0, !dbg !188
  %13 = load i8*, i8** %12, align 8, !dbg !188
  %14 = icmp ne i8* %13, null, !dbg !189
  %15 = xor i1 %14, true, !dbg !189
  %16 = xor i1 %15, true, !dbg !190
  %17 = zext i1 %16 to i32, !dbg !190
  ret i32 %17, !dbg !191
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i32 @nat_index(i8*) #0 !dbg !192 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !193, metadata !64), !dbg !194
  %5 = load i8*, i8** %3, align 8, !dbg !195
  %6 = icmp ne i8* %5, null, !dbg !195
  br i1 %6, label %7, label %31, !dbg !197

; <label>:7:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %4, metadata !198, metadata !64), !dbg !200
  store i32 0, i32* %4, align 4, !dbg !200
  br label %8, !dbg !201

; <label>:8:                                      ; preds = %27, %7
  %9 = load i32, i32* %4, align 4, !dbg !202
  %10 = sext i32 %9 to i64, !dbg !205
  %11 = getelementptr inbounds [3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 %10, !dbg !205
  %12 = getelementptr inbounds %struct.engine, %struct.engine* %11, i32 0, i32 0, !dbg !206
  %13 = load i8*, i8** %12, align 8, !dbg !206
  %14 = icmp ne i8* %13, null, !dbg !207
  br i1 %14, label %15, label %30, !dbg !207

; <label>:15:                                     ; preds = %8
  %16 = load i8*, i8** %3, align 8, !dbg !208
  %17 = load i32, i32* %4, align 4, !dbg !210
  %18 = sext i32 %17 to i64, !dbg !211
  %19 = getelementptr inbounds [3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 %18, !dbg !211
  %20 = getelementptr inbounds %struct.engine, %struct.engine* %19, i32 0, i32 0, !dbg !212
  %21 = load i8*, i8** %20, align 8, !dbg !212
  %22 = call i32 @strcmp(i8* %16, i8* %21) #7, !dbg !213
  %23 = icmp ne i32 %22, 0, !dbg !213
  br i1 %23, label %26, label %24, !dbg !214

; <label>:24:                                     ; preds = %15
  %25 = load i32, i32* %4, align 4, !dbg !215
  store i32 %25, i32* %2, align 4, !dbg !216
  br label %32, !dbg !216

; <label>:26:                                     ; preds = %15
  br label %27, !dbg !217

; <label>:27:                                     ; preds = %26
  %28 = load i32, i32* %4, align 4, !dbg !219
  %29 = add nsw i32 %28, 1, !dbg !219
  store i32 %29, i32* %4, align 4, !dbg !219
  br label %8, !dbg !221, !llvm.loop !222

; <label>:30:                                     ; preds = %8
  br label %31, !dbg !224

; <label>:31:                                     ; preds = %30, %1
  store i32 2, i32* %2, align 4, !dbg !226
  br label %32, !dbg !226

; <label>:32:                                     ; preds = %31, %24
  %33 = load i32, i32* %2, align 4, !dbg !227
  ret i32 %33, !dbg !227
}

; Function Attrs: nounwind uwtable
define i32 @nat_used(i8*) #0 !dbg !228 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !229, metadata !64), !dbg !230
  %3 = load i8*, i8** %2, align 8, !dbg !231
  %4 = icmp ne i8* %3, null, !dbg !231
  br i1 %4, label %7, label %5, !dbg !233

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** getelementptr inbounds ([3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 0, i32 0), align 16, !dbg !234
  store i8* %6, i8** %2, align 8, !dbg !235
  br label %7, !dbg !236

; <label>:7:                                      ; preds = %5, %1
  %8 = load i8*, i8** %2, align 8, !dbg !237
  %9 = call i32 @nat_index(i8* %8), !dbg !238
  %10 = sext i32 %9 to i64, !dbg !239
  %11 = getelementptr inbounds [3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 %10, !dbg !239
  %12 = getelementptr inbounds %struct.engine, %struct.engine* %11, i32 0, i32 1, !dbg !240
  %13 = load i8, i8* %12, align 8, !dbg !240
  %14 = lshr i8 %13, 1, !dbg !240
  %15 = and i8 %14, 1, !dbg !240
  %16 = zext i8 %15 to i32, !dbg !240
  %17 = icmp ne i32 %16, 0, !dbg !241
  %18 = xor i1 %17, true, !dbg !241
  %19 = xor i1 %18, true, !dbg !242
  %20 = zext i1 %19 to i32, !dbg !242
  ret i32 %20, !dbg !243
}

; Function Attrs: nounwind uwtable
define i32 (%struct.sockaddr*, i32*, i32, %struct.sockaddr*, i32)* @nat_getlookupcb(i8*) #0 !dbg !244 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !247, metadata !64), !dbg !248
  call void @llvm.dbg.declare(metadata i32* %3, metadata !249, metadata !64), !dbg !250
  %4 = load i8*, i8** %2, align 8, !dbg !251
  %5 = icmp ne i8* %4, null, !dbg !251
  br i1 %5, label %8, label %6, !dbg !253

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** getelementptr inbounds ([3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 0, i32 0), align 16, !dbg !254
  store i8* %7, i8** %2, align 8, !dbg !255
  br label %8, !dbg !256

; <label>:8:                                      ; preds = %6, %1
  %9 = load i8*, i8** %2, align 8, !dbg !257
  %10 = call i32 @nat_index(i8* %9), !dbg !258
  store i32 %10, i32* %3, align 4, !dbg !259
  %11 = load i32, i32* %3, align 4, !dbg !260
  %12 = sext i32 %11 to i64, !dbg !261
  %13 = getelementptr inbounds [3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 %12, !dbg !261
  %14 = getelementptr inbounds %struct.engine, %struct.engine* %13, i32 0, i32 1, !dbg !262
  %15 = load i8, i8* %14, align 8, !dbg !263
  %16 = and i8 %15, -3, !dbg !263
  %17 = or i8 %16, 2, !dbg !263
  store i8 %17, i8* %14, align 8, !dbg !263
  %18 = load i32, i32* %3, align 4, !dbg !264
  %19 = sext i32 %18 to i64, !dbg !265
  %20 = getelementptr inbounds [3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 %19, !dbg !265
  %21 = getelementptr inbounds %struct.engine, %struct.engine* %20, i32 0, i32 5, !dbg !266
  %22 = load i32 (%struct.sockaddr*, i32*, i32, %struct.sockaddr*, i32)*, i32 (%struct.sockaddr*, i32*, i32, %struct.sockaddr*, i32)** %21, align 8, !dbg !266
  ret i32 (%struct.sockaddr*, i32*, i32, %struct.sockaddr*, i32)* %22, !dbg !267
}

; Function Attrs: nounwind uwtable
define i32 (i32)* @nat_getsocketcb(i8*) #0 !dbg !268 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !271, metadata !64), !dbg !272
  %3 = load i8*, i8** %2, align 8, !dbg !273
  %4 = icmp ne i8* %3, null, !dbg !273
  br i1 %4, label %7, label %5, !dbg !275

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** getelementptr inbounds ([3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 0, i32 0), align 16, !dbg !276
  store i8* %6, i8** %2, align 8, !dbg !277
  br label %7, !dbg !278

; <label>:7:                                      ; preds = %5, %1
  %8 = load i8*, i8** %2, align 8, !dbg !279
  %9 = call i32 @nat_index(i8* %8), !dbg !280
  %10 = sext i32 %9 to i64, !dbg !281
  %11 = getelementptr inbounds [3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 %10, !dbg !281
  %12 = getelementptr inbounds %struct.engine, %struct.engine* %11, i32 0, i32 6, !dbg !282
  %13 = load i32 (i32)*, i32 (i32)** %12, align 8, !dbg !282
  ret i32 (i32)* %13, !dbg !283
}

; Function Attrs: nounwind uwtable
define i32 @nat_ipv6ready(i8*) #0 !dbg !284 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !285, metadata !64), !dbg !286
  %3 = load i8*, i8** %2, align 8, !dbg !287
  %4 = icmp ne i8* %3, null, !dbg !287
  br i1 %4, label %7, label %5, !dbg !289

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** getelementptr inbounds ([3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 0, i32 0), align 16, !dbg !290
  store i8* %6, i8** %2, align 8, !dbg !291
  br label %7, !dbg !292

; <label>:7:                                      ; preds = %5, %1
  %8 = load i8*, i8** %2, align 8, !dbg !293
  %9 = call i32 @nat_index(i8* %8), !dbg !294
  %10 = sext i32 %9 to i64, !dbg !295
  %11 = getelementptr inbounds [3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 %10, !dbg !295
  %12 = getelementptr inbounds %struct.engine, %struct.engine* %11, i32 0, i32 1, !dbg !296
  %13 = load i8, i8* %12, align 8, !dbg !296
  %14 = and i8 %13, 1, !dbg !296
  %15 = zext i8 %14 to i32, !dbg !296
  ret i32 %15, !dbg !297
}

; Function Attrs: nounwind uwtable
define void @nat_list_engines() #0 !dbg !298 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !299, metadata !64), !dbg !301
  store i32 0, i32* %1, align 4, !dbg !301
  br label %2, !dbg !302

; <label>:2:                                      ; preds = %20, %0
  %3 = load i32, i32* %1, align 4, !dbg !303
  %4 = sext i32 %3 to i64, !dbg !306
  %5 = getelementptr inbounds [3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 %4, !dbg !306
  %6 = getelementptr inbounds %struct.engine, %struct.engine* %5, i32 0, i32 0, !dbg !307
  %7 = load i8*, i8** %6, align 8, !dbg !307
  %8 = icmp ne i8* %7, null, !dbg !308
  br i1 %8, label %9, label %23, !dbg !308

; <label>:9:                                      ; preds = %2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !309
  %11 = load i32, i32* %1, align 4, !dbg !311
  %12 = sext i32 %11 to i64, !dbg !312
  %13 = getelementptr inbounds [3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 %12, !dbg !312
  %14 = getelementptr inbounds %struct.engine, %struct.engine* %13, i32 0, i32 0, !dbg !313
  %15 = load i8*, i8** %14, align 8, !dbg !313
  %16 = load i32, i32* %1, align 4, !dbg !314
  %17 = icmp ne i32 %16, 0, !dbg !314
  %18 = select i1 %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), !dbg !314
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %15, i8* %18), !dbg !315
  br label %20, !dbg !316

; <label>:20:                                     ; preds = %9
  %21 = load i32, i32* %1, align 4, !dbg !317
  %22 = add nsw i32 %21, 1, !dbg !317
  store i32 %22, i32* %1, align 4, !dbg !317
  br label %2, !dbg !319, !llvm.loop !320

; <label>:23:                                     ; preds = %2
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !322
  %25 = call i32 @fflush(%struct._IO_FILE* %24), !dbg !323
  ret void, !dbg !324
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i32 @nat_preinit() #0 !dbg !325 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !326, metadata !64), !dbg !328
  store i32 0, i32* %2, align 4, !dbg !328
  br label %3, !dbg !329

; <label>:3:                                      ; preds = %38, %0
  %4 = load i32, i32* %2, align 4, !dbg !330
  %5 = sext i32 %4 to i64, !dbg !333
  %6 = getelementptr inbounds [3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 %5, !dbg !333
  %7 = getelementptr inbounds %struct.engine, %struct.engine* %6, i32 0, i32 2, !dbg !334
  %8 = load i32 ()*, i32 ()** %7, align 8, !dbg !334
  %9 = icmp ne i32 ()* %8, null, !dbg !333
  br i1 %9, label %10, label %20, !dbg !335

; <label>:10:                                     ; preds = %3
  %11 = load i32, i32* %2, align 4, !dbg !336
  %12 = sext i32 %11 to i64, !dbg !338
  %13 = getelementptr inbounds [3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 %12, !dbg !338
  %14 = getelementptr inbounds %struct.engine, %struct.engine* %13, i32 0, i32 1, !dbg !339
  %15 = load i8, i8* %14, align 8, !dbg !339
  %16 = lshr i8 %15, 1, !dbg !339
  %17 = and i8 %16, 1, !dbg !339
  %18 = zext i8 %17 to i32, !dbg !339
  %19 = icmp ne i32 %18, 0, !dbg !340
  br label %20

; <label>:20:                                     ; preds = %10, %3
  %21 = phi i1 [ false, %3 ], [ %19, %10 ]
  br i1 %21, label %22, label %41, !dbg !341

; <label>:22:                                     ; preds = %20
  %23 = load i32, i32* %2, align 4, !dbg !343
  %24 = sext i32 %23 to i64, !dbg !345
  %25 = getelementptr inbounds [3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 %24, !dbg !345
  %26 = getelementptr inbounds %struct.engine, %struct.engine* %25, i32 0, i32 0, !dbg !346
  %27 = load i8*, i8** %26, align 8, !dbg !346
  %28 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8* %27), !dbg !347
  %29 = load i32, i32* %2, align 4, !dbg !348
  %30 = sext i32 %29 to i64, !dbg !350
  %31 = getelementptr inbounds [3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 %30, !dbg !350
  %32 = getelementptr inbounds %struct.engine, %struct.engine* %31, i32 0, i32 2, !dbg !351
  %33 = load i32 ()*, i32 ()** %32, align 8, !dbg !351
  %34 = call i32 %33(), !dbg !350
  %35 = icmp eq i32 %34, -1, !dbg !352
  br i1 %35, label %36, label %37, !dbg !353

; <label>:36:                                     ; preds = %22
  store i32 -1, i32* %1, align 4, !dbg !354
  br label %42, !dbg !354

; <label>:37:                                     ; preds = %22
  br label %38, !dbg !355

; <label>:38:                                     ; preds = %37
  %39 = load i32, i32* %2, align 4, !dbg !356
  %40 = add nsw i32 %39, 1, !dbg !356
  store i32 %40, i32* %2, align 4, !dbg !356
  br label %3, !dbg !358, !llvm.loop !359

; <label>:41:                                     ; preds = %20
  store i32 0, i32* %1, align 4, !dbg !361
  br label %42, !dbg !361

; <label>:42:                                     ; preds = %41, %36
  %43 = load i32, i32* %1, align 4, !dbg !362
  ret i32 %43, !dbg !362
}

declare i32 @log_dbg_printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @nat_preinit_undo() #0 !dbg !363 {
  call void @nat_fini(), !dbg !364
  ret void, !dbg !365
}

; Function Attrs: nounwind uwtable
define void @nat_fini() #0 !dbg !366 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !367, metadata !64), !dbg !369
  store i32 0, i32* %1, align 4, !dbg !369
  br label %2, !dbg !370

; <label>:2:                                      ; preds = %33, %0
  %3 = load i32, i32* %1, align 4, !dbg !371
  %4 = sext i32 %3 to i64, !dbg !374
  %5 = getelementptr inbounds [3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 %4, !dbg !374
  %6 = getelementptr inbounds %struct.engine, %struct.engine* %5, i32 0, i32 4, !dbg !375
  %7 = load void ()*, void ()** %6, align 8, !dbg !375
  %8 = icmp ne void ()* %7, null, !dbg !374
  br i1 %8, label %9, label %19, !dbg !376

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %1, align 4, !dbg !377
  %11 = sext i32 %10 to i64, !dbg !379
  %12 = getelementptr inbounds [3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 %11, !dbg !379
  %13 = getelementptr inbounds %struct.engine, %struct.engine* %12, i32 0, i32 1, !dbg !380
  %14 = load i8, i8* %13, align 8, !dbg !380
  %15 = lshr i8 %14, 1, !dbg !380
  %16 = and i8 %15, 1, !dbg !380
  %17 = zext i8 %16 to i32, !dbg !380
  %18 = icmp ne i32 %17, 0, !dbg !381
  br label %19

; <label>:19:                                     ; preds = %9, %2
  %20 = phi i1 [ false, %2 ], [ %18, %9 ]
  br i1 %20, label %21, label %36, !dbg !382

; <label>:21:                                     ; preds = %19
  %22 = load i32, i32* %1, align 4, !dbg !384
  %23 = sext i32 %22 to i64, !dbg !386
  %24 = getelementptr inbounds [3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 %23, !dbg !386
  %25 = getelementptr inbounds %struct.engine, %struct.engine* %24, i32 0, i32 0, !dbg !387
  %26 = load i8*, i8** %25, align 8, !dbg !387
  %27 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* %26), !dbg !388
  %28 = load i32, i32* %1, align 4, !dbg !389
  %29 = sext i32 %28 to i64, !dbg !390
  %30 = getelementptr inbounds [3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 %29, !dbg !390
  %31 = getelementptr inbounds %struct.engine, %struct.engine* %30, i32 0, i32 4, !dbg !391
  %32 = load void ()*, void ()** %31, align 8, !dbg !391
  call void %32(), !dbg !390
  br label %33, !dbg !392

; <label>:33:                                     ; preds = %21
  %34 = load i32, i32* %1, align 4, !dbg !393
  %35 = add nsw i32 %34, 1, !dbg !393
  store i32 %35, i32* %1, align 4, !dbg !393
  br label %2, !dbg !395, !llvm.loop !396

; <label>:36:                                     ; preds = %19
  ret void, !dbg !398
}

; Function Attrs: nounwind uwtable
define i32 @nat_init() #0 !dbg !399 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !400, metadata !64), !dbg !402
  store i32 0, i32* %2, align 4, !dbg !402
  br label %3, !dbg !403

; <label>:3:                                      ; preds = %38, %0
  %4 = load i32, i32* %2, align 4, !dbg !404
  %5 = sext i32 %4 to i64, !dbg !407
  %6 = getelementptr inbounds [3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 %5, !dbg !407
  %7 = getelementptr inbounds %struct.engine, %struct.engine* %6, i32 0, i32 3, !dbg !408
  %8 = load i32 ()*, i32 ()** %7, align 8, !dbg !408
  %9 = icmp ne i32 ()* %8, null, !dbg !407
  br i1 %9, label %10, label %20, !dbg !409

; <label>:10:                                     ; preds = %3
  %11 = load i32, i32* %2, align 4, !dbg !410
  %12 = sext i32 %11 to i64, !dbg !412
  %13 = getelementptr inbounds [3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 %12, !dbg !412
  %14 = getelementptr inbounds %struct.engine, %struct.engine* %13, i32 0, i32 1, !dbg !413
  %15 = load i8, i8* %14, align 8, !dbg !413
  %16 = lshr i8 %15, 1, !dbg !413
  %17 = and i8 %16, 1, !dbg !413
  %18 = zext i8 %17 to i32, !dbg !413
  %19 = icmp ne i32 %18, 0, !dbg !414
  br label %20

; <label>:20:                                     ; preds = %10, %3
  %21 = phi i1 [ false, %3 ], [ %19, %10 ]
  br i1 %21, label %22, label %41, !dbg !415

; <label>:22:                                     ; preds = %20
  %23 = load i32, i32* %2, align 4, !dbg !417
  %24 = sext i32 %23 to i64, !dbg !419
  %25 = getelementptr inbounds [3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 %24, !dbg !419
  %26 = getelementptr inbounds %struct.engine, %struct.engine* %25, i32 0, i32 0, !dbg !420
  %27 = load i8*, i8** %26, align 8, !dbg !420
  %28 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* %27), !dbg !421
  %29 = load i32, i32* %2, align 4, !dbg !422
  %30 = sext i32 %29 to i64, !dbg !424
  %31 = getelementptr inbounds [3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 %30, !dbg !424
  %32 = getelementptr inbounds %struct.engine, %struct.engine* %31, i32 0, i32 3, !dbg !425
  %33 = load i32 ()*, i32 ()** %32, align 8, !dbg !425
  %34 = call i32 %33(), !dbg !424
  %35 = icmp eq i32 %34, -1, !dbg !426
  br i1 %35, label %36, label %37, !dbg !427

; <label>:36:                                     ; preds = %22
  store i32 -1, i32* %1, align 4, !dbg !428
  br label %42, !dbg !428

; <label>:37:                                     ; preds = %22
  br label %38, !dbg !429

; <label>:38:                                     ; preds = %37
  %39 = load i32, i32* %2, align 4, !dbg !430
  %40 = add nsw i32 %39, 1, !dbg !430
  store i32 %40, i32* %2, align 4, !dbg !430
  br label %3, !dbg !432, !llvm.loop !433

; <label>:41:                                     ; preds = %20
  store i32 0, i32* %1, align 4, !dbg !435
  br label %42, !dbg !435

; <label>:42:                                     ; preds = %41, %36
  %43 = load i32, i32* %1, align 4, !dbg !436
  ret i32 %43, !dbg !436
}

; Function Attrs: nounwind uwtable
define void @nat_version() #0 !dbg !437 {
  %1 = alloca i32, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !438
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)), !dbg !439
  call void @llvm.dbg.declare(metadata i32* %1, metadata !440, metadata !64), !dbg !442
  store i32 0, i32* %1, align 4, !dbg !442
  br label %4, !dbg !443

; <label>:4:                                      ; preds = %22, %0
  %5 = load i32, i32* %1, align 4, !dbg !444
  %6 = sext i32 %5 to i64, !dbg !447
  %7 = getelementptr inbounds [3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 %6, !dbg !447
  %8 = getelementptr inbounds %struct.engine, %struct.engine* %7, i32 0, i32 0, !dbg !448
  %9 = load i8*, i8** %8, align 8, !dbg !448
  %10 = icmp ne i8* %9, null, !dbg !449
  br i1 %10, label %11, label %25, !dbg !449

; <label>:11:                                     ; preds = %4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !450
  %13 = load i32, i32* %1, align 4, !dbg !452
  %14 = sext i32 %13 to i64, !dbg !453
  %15 = getelementptr inbounds [3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 %14, !dbg !453
  %16 = getelementptr inbounds %struct.engine, %struct.engine* %15, i32 0, i32 0, !dbg !454
  %17 = load i8*, i8** %16, align 8, !dbg !454
  %18 = load i32, i32* %1, align 4, !dbg !455
  %19 = icmp ne i32 %18, 0, !dbg !455
  %20 = select i1 %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), !dbg !455
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* %17, i8* %20), !dbg !456
  br label %22, !dbg !457

; <label>:22:                                     ; preds = %11
  %23 = load i32, i32* %1, align 4, !dbg !458
  %24 = add nsw i32 %23, 1, !dbg !458
  store i32 %24, i32* %1, align 4, !dbg !458
  br label %4, !dbg !460, !llvm.loop !461

; <label>:25:                                     ; preds = %4
  %26 = load i8*, i8** getelementptr inbounds ([3 x %struct.engine], [3 x %struct.engine]* @engines, i64 0, i64 0, i32 0), align 16, !dbg !463
  %27 = icmp ne i8* %26, null, !dbg !465
  br i1 %27, label %31, label %28, !dbg !466

; <label>:28:                                     ; preds = %25
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !467
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0)), !dbg !468
  br label %31, !dbg !468

; <label>:31:                                     ; preds = %28, %25
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !469
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)), !dbg !470
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !471
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0)), !dbg !472
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !473
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0)), !dbg !474
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !475
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0)), !dbg !476
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !477
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)), !dbg !478
  ret void, !dbg !479
}

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #3

declare i32 @log_err_printf(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind
declare i32 @getsockname(i32, %struct.sockaddr*, i32*) #3

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!59, !60}
!llvm.ident = !{!61}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "line1-nat.o.i", directory: "/home/lichi/Desktop/sslsplit/task1")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = distinct !DIGlobalVariable(name: "engines", scope: !0, file: !7, line: 431, type: !8, isLocal: false, isDefinition: true, variable: [3 x %struct.engine]* @engines)
!7 = !DIFile(filename: "nat.c", directory: "/home/lichi/Desktop/sslsplit/task1")
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1344, align: 64, elements: !57)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "engine", file: !7, line: 420, size: 448, align: 64, elements: !10)
!10 = !{!11, !15, !17, !18, !24, !25, !30, !52}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !9, file: !7, line: 421, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6", scope: !9, file: !7, line: 422, baseType: !16, size: 1, align: 32, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!16 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !9, file: !7, line: 423, baseType: !16, size: 1, align: 32, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "preinitcb", scope: !9, file: !7, line: 424, baseType: !19, size: 64, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "nat_init_cb_t", file: !7, line: 417, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DISubroutineType(types: !22)
!22 = !{!23}
!23 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "initcb", scope: !9, file: !7, line: 425, baseType: !19, size: 64, align: 64, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "finicb", scope: !9, file: !7, line: 426, baseType: !26, size: 64, align: 64, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "nat_fini_cb_t", file: !7, line: 418, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{null}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "lookupcb", scope: !9, file: !7, line: 427, baseType: !31, size: 64, align: 64, offset: 320)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "nat_lookup_cb_t", file: !32, line: 39, baseType: !33)
!32 = !DIFile(filename: "nat.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DISubroutineType(types: !35)
!35 = !{!23, !36, !48, !23, !36, !49}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !38, line: 153, size: 128, align: 16, elements: !39)
!38 = !DIFile(filename: "/usr/include/bits/socket.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!39 = !{!40, !44}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !37, file: !38, line: 155, baseType: !41, size: 16, align: 16)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !42, line: 28, baseType: !43)
!42 = !DIFile(filename: "/usr/include/bits/sockaddr.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!43 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !37, file: !38, line: 156, baseType: !45, size: 112, align: 8, offset: 16)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 112, align: 8, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 14)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !38, line: 33, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !51, line: 189, baseType: !16)
!51 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!52 = !DIDerivedType(tag: DW_TAG_member, name: "socketcb", scope: !9, file: !7, line: 428, baseType: !53, size: 64, align: 64, offset: 384)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "nat_socket_cb_t", file: !32, line: 41, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!23, !23}
!57 = !{!58}
!58 = !DISubrange(count: 3)
!59 = !{i32 2, !"Dwarf Version", i32 4}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!62 = distinct !DISubprogram(name: "nat_netfilter_lookup_cb", scope: !7, file: !7, line: 332, type: !34, isLocal: true, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!63 = !DILocalVariable(name: "dst_addr", arg: 1, scope: !62, file: !7, line: 332, type: !36)
!64 = !DIExpression()
!65 = !DILocation(line: 332, column: 42, scope: !62)
!66 = !DILocalVariable(name: "dst_addrlen", arg: 2, scope: !62, file: !7, line: 332, type: !48)
!67 = !DILocation(line: 332, column: 63, scope: !62)
!68 = !DILocalVariable(name: "s", arg: 3, scope: !62, file: !7, line: 333, type: !23)
!69 = !DILocation(line: 333, column: 40, scope: !62)
!70 = !DILocalVariable(name: "src_addr", arg: 4, scope: !62, file: !7, line: 334, type: !36)
!71 = !DILocation(line: 334, column: 42, scope: !62)
!72 = !DILocalVariable(name: "src_addrlen", arg: 5, scope: !62, file: !7, line: 334, type: !49)
!73 = !DILocation(line: 334, column: 86, scope: !62)
!74 = !DILocalVariable(name: "rv", scope: !62, file: !7, line: 336, type: !23)
!75 = !DILocation(line: 336, column: 6, scope: !62)
!76 = !DILocation(line: 338, column: 6, scope: !77)
!77 = distinct !DILexicalBlock(scope: !62, file: !7, line: 338, column: 6)
!78 = !DILocation(line: 338, column: 16, scope: !77)
!79 = !DILocation(line: 338, column: 26, scope: !77)
!80 = !DILocation(line: 338, column: 6, scope: !62)
!81 = !DILocation(line: 339, column: 19, scope: !82)
!82 = distinct !DILexicalBlock(scope: !77, file: !7, line: 338, column: 37)
!83 = !DILocation(line: 340, column: 19, scope: !82)
!84 = !DILocation(line: 340, column: 29, scope: !82)
!85 = !DILocation(line: 339, column: 8, scope: !82)
!86 = !DILocation(line: 339, column: 6, scope: !82)
!87 = !DILocation(line: 341, column: 7, scope: !88)
!88 = distinct !DILexicalBlock(scope: !82, file: !7, line: 341, column: 7)
!89 = !DILocation(line: 341, column: 10, scope: !88)
!90 = !DILocation(line: 341, column: 7, scope: !82)
!91 = !DILocation(line: 344, column: 29, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !7, line: 341, column: 17)
!93 = !DILocation(line: 344, column: 28, scope: !92)
!94 = !DILocation(line: 344, column: 19, scope: !95)
!95 = !DILexicalBlockFile(scope: !92, file: !7, discriminator: 1)
!96 = !DILocation(line: 342, column: 4, scope: !92)
!97 = !DILocation(line: 345, column: 3, scope: !92)
!98 = !DILocation(line: 346, column: 2, scope: !82)
!99 = !DILocation(line: 348, column: 19, scope: !100)
!100 = distinct !DILexicalBlock(scope: !77, file: !7, line: 346, column: 9)
!101 = !DILocation(line: 349, column: 19, scope: !100)
!102 = !DILocation(line: 349, column: 29, scope: !100)
!103 = !DILocation(line: 348, column: 8, scope: !100)
!104 = !DILocation(line: 348, column: 6, scope: !100)
!105 = !DILocation(line: 350, column: 7, scope: !106)
!106 = distinct !DILexicalBlock(scope: !100, file: !7, line: 350, column: 7)
!107 = !DILocation(line: 350, column: 10, scope: !106)
!108 = !DILocation(line: 350, column: 7, scope: !100)
!109 = !DILocation(line: 353, column: 29, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !7, line: 350, column: 17)
!111 = !DILocation(line: 353, column: 28, scope: !110)
!112 = !DILocation(line: 353, column: 19, scope: !113)
!113 = !DILexicalBlockFile(scope: !110, file: !7, discriminator: 1)
!114 = !DILocation(line: 351, column: 4, scope: !110)
!115 = !DILocation(line: 354, column: 3, scope: !110)
!116 = !DILocation(line: 362, column: 9, scope: !62)
!117 = !DILocation(line: 362, column: 2, scope: !62)
!118 = distinct !DISubprogram(name: "nat_getsockname_lookup_cb", scope: !7, file: !7, line: 398, type: !34, isLocal: true, isDefinition: true, scopeLine: 402, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!119 = !DILocalVariable(name: "dst_addr", arg: 1, scope: !118, file: !7, line: 398, type: !36)
!120 = !DILocation(line: 398, column: 44, scope: !118)
!121 = !DILocalVariable(name: "dst_addrlen", arg: 2, scope: !118, file: !7, line: 398, type: !48)
!122 = !DILocation(line: 398, column: 65, scope: !118)
!123 = !DILocalVariable(name: "s", arg: 3, scope: !118, file: !7, line: 399, type: !23)
!124 = !DILocation(line: 399, column: 42, scope: !118)
!125 = !DILocalVariable(name: "src_addr", arg: 4, scope: !118, file: !7, line: 400, type: !36)
!126 = !DILocation(line: 400, column: 68, scope: !118)
!127 = !DILocalVariable(name: "src_addrlen", arg: 5, scope: !118, file: !7, line: 401, type: !49)
!128 = !DILocation(line: 401, column: 61, scope: !118)
!129 = !DILocation(line: 403, column: 18, scope: !130)
!130 = distinct !DILexicalBlock(scope: !118, file: !7, line: 403, column: 6)
!131 = !DILocation(line: 403, column: 21, scope: !130)
!132 = !DILocation(line: 403, column: 31, scope: !130)
!133 = !DILocation(line: 403, column: 6, scope: !130)
!134 = !DILocation(line: 403, column: 44, scope: !130)
!135 = !DILocation(line: 403, column: 6, scope: !118)
!136 = !DILocation(line: 405, column: 28, scope: !137)
!137 = distinct !DILexicalBlock(scope: !130, file: !7, line: 403, column: 51)
!138 = !DILocation(line: 405, column: 27, scope: !137)
!139 = !DILocation(line: 405, column: 18, scope: !140)
!140 = !DILexicalBlockFile(scope: !137, file: !7, discriminator: 1)
!141 = !DILocation(line: 404, column: 3, scope: !137)
!142 = !DILocation(line: 406, column: 3, scope: !137)
!143 = !DILocation(line: 408, column: 2, scope: !118)
!144 = !DILocation(line: 409, column: 1, scope: !118)
!145 = distinct !DISubprogram(name: "nat_iptransparent_socket_cb", scope: !7, file: !7, line: 372, type: !55, isLocal: true, isDefinition: true, scopeLine: 373, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!146 = !DILocalVariable(name: "s", arg: 1, scope: !145, file: !7, line: 372, type: !23)
!147 = !DILocation(line: 372, column: 44, scope: !145)
!148 = !DILocalVariable(name: "on", scope: !145, file: !7, line: 374, type: !23)
!149 = !DILocation(line: 374, column: 6, scope: !145)
!150 = !DILocalVariable(name: "rv", scope: !145, file: !7, line: 375, type: !23)
!151 = !DILocation(line: 375, column: 6, scope: !145)
!152 = !DILocation(line: 377, column: 18, scope: !145)
!153 = !DILocation(line: 377, column: 44, scope: !145)
!154 = !DILocation(line: 377, column: 7, scope: !145)
!155 = !DILocation(line: 377, column: 5, scope: !145)
!156 = !DILocation(line: 378, column: 6, scope: !157)
!157 = distinct !DILexicalBlock(scope: !145, file: !7, line: 378, column: 6)
!158 = !DILocation(line: 378, column: 9, scope: !157)
!159 = !DILocation(line: 378, column: 6, scope: !145)
!160 = !DILocation(line: 380, column: 28, scope: !161)
!161 = distinct !DILexicalBlock(scope: !157, file: !7, line: 378, column: 16)
!162 = !DILocation(line: 380, column: 27, scope: !161)
!163 = !DILocation(line: 380, column: 18, scope: !164)
!164 = !DILexicalBlockFile(scope: !161, file: !7, discriminator: 1)
!165 = !DILocation(line: 379, column: 3, scope: !161)
!166 = !DILocation(line: 381, column: 2, scope: !161)
!167 = !DILocation(line: 382, column: 9, scope: !145)
!168 = !DILocation(line: 382, column: 2, scope: !145)
!169 = distinct !DISubprogram(name: "nat_getdefaultname", scope: !7, file: !7, line: 483, type: !170, isLocal: false, isDefinition: true, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!170 = !DISubroutineType(types: !171)
!171 = !{!12}
!172 = !DILocation(line: 485, column: 20, scope: !169)
!173 = !DILocation(line: 485, column: 2, scope: !169)
!174 = distinct !DISubprogram(name: "nat_exist", scope: !7, file: !7, line: 508, type: !175, isLocal: false, isDefinition: true, scopeLine: 509, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!175 = !DISubroutineType(types: !176)
!176 = !{!23, !12}
!177 = !DILocalVariable(name: "name", arg: 1, scope: !174, file: !7, line: 508, type: !12)
!178 = !DILocation(line: 508, column: 23, scope: !174)
!179 = !DILocation(line: 510, column: 7, scope: !180)
!180 = distinct !DILexicalBlock(scope: !174, file: !7, line: 510, column: 6)
!181 = !DILocation(line: 510, column: 6, scope: !174)
!182 = !DILocation(line: 511, column: 21, scope: !180)
!183 = !DILocation(line: 511, column: 8, scope: !180)
!184 = !DILocation(line: 511, column: 3, scope: !180)
!185 = !DILocation(line: 512, column: 29, scope: !174)
!186 = !DILocation(line: 512, column: 19, scope: !174)
!187 = !DILocation(line: 512, column: 11, scope: !174)
!188 = !DILocation(line: 512, column: 36, scope: !174)
!189 = !DILocation(line: 512, column: 10, scope: !174)
!190 = !DILocation(line: 512, column: 9, scope: !174)
!191 = !DILocation(line: 512, column: 2, scope: !174)
!192 = distinct !DISubprogram(name: "nat_index", scope: !7, file: !7, line: 494, type: !175, isLocal: true, isDefinition: true, scopeLine: 495, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!193 = !DILocalVariable(name: "name", arg: 1, scope: !192, file: !7, line: 494, type: !12)
!194 = !DILocation(line: 494, column: 23, scope: !192)
!195 = !DILocation(line: 496, column: 6, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !7, line: 496, column: 6)
!197 = !DILocation(line: 496, column: 6, scope: !192)
!198 = !DILocalVariable(name: "i", scope: !199, file: !7, line: 497, type: !23)
!199 = distinct !DILexicalBlock(scope: !196, file: !7, line: 497, column: 3)
!200 = !DILocation(line: 497, column: 12, scope: !199)
!201 = !DILocation(line: 497, column: 8, scope: !199)
!202 = !DILocation(line: 497, column: 27, scope: !203)
!203 = !DILexicalBlockFile(scope: !204, file: !7, discriminator: 1)
!204 = distinct !DILexicalBlock(scope: !199, file: !7, line: 497, column: 3)
!205 = !DILocation(line: 497, column: 19, scope: !203)
!206 = !DILocation(line: 497, column: 30, scope: !203)
!207 = !DILocation(line: 497, column: 3, scope: !203)
!208 = !DILocation(line: 498, column: 16, scope: !209)
!209 = distinct !DILexicalBlock(scope: !204, file: !7, line: 498, column: 8)
!210 = !DILocation(line: 498, column: 30, scope: !209)
!211 = !DILocation(line: 498, column: 22, scope: !209)
!212 = !DILocation(line: 498, column: 33, scope: !209)
!213 = !DILocation(line: 498, column: 9, scope: !209)
!214 = !DILocation(line: 498, column: 8, scope: !204)
!215 = !DILocation(line: 499, column: 12, scope: !209)
!216 = !DILocation(line: 499, column: 5, scope: !209)
!217 = !DILocation(line: 498, column: 37, scope: !218)
!218 = !DILexicalBlockFile(scope: !209, file: !7, discriminator: 1)
!219 = !DILocation(line: 497, column: 37, scope: !220)
!220 = !DILexicalBlockFile(scope: !204, file: !7, discriminator: 2)
!221 = !DILocation(line: 497, column: 3, scope: !220)
!222 = distinct !{!222, !223}
!223 = !DILocation(line: 497, column: 3, scope: !196)
!224 = !DILocation(line: 499, column: 12, scope: !225)
!225 = !DILexicalBlockFile(scope: !199, file: !7, discriminator: 1)
!226 = !DILocation(line: 500, column: 2, scope: !192)
!227 = !DILocation(line: 501, column: 1, scope: !192)
!228 = distinct !DISubprogram(name: "nat_used", scope: !7, file: !7, line: 520, type: !175, isLocal: false, isDefinition: true, scopeLine: 521, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!229 = !DILocalVariable(name: "name", arg: 1, scope: !228, file: !7, line: 520, type: !12)
!230 = !DILocation(line: 520, column: 22, scope: !228)
!231 = !DILocation(line: 522, column: 7, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !7, line: 522, column: 6)
!233 = !DILocation(line: 522, column: 6, scope: !228)
!234 = !DILocation(line: 523, column: 21, scope: !232)
!235 = !DILocation(line: 523, column: 8, scope: !232)
!236 = !DILocation(line: 523, column: 3, scope: !232)
!237 = !DILocation(line: 524, column: 29, scope: !228)
!238 = !DILocation(line: 524, column: 19, scope: !228)
!239 = !DILocation(line: 524, column: 11, scope: !228)
!240 = !DILocation(line: 524, column: 36, scope: !228)
!241 = !DILocation(line: 524, column: 10, scope: !228)
!242 = !DILocation(line: 524, column: 9, scope: !228)
!243 = !DILocation(line: 524, column: 2, scope: !228)
!244 = distinct !DISubprogram(name: "nat_getlookupcb", scope: !7, file: !7, line: 533, type: !245, isLocal: false, isDefinition: true, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!245 = !DISubroutineType(types: !246)
!246 = !{!31, !12}
!247 = !DILocalVariable(name: "name", arg: 1, scope: !244, file: !7, line: 533, type: !12)
!248 = !DILocation(line: 533, column: 29, scope: !244)
!249 = !DILocalVariable(name: "i", scope: !244, file: !7, line: 535, type: !23)
!250 = !DILocation(line: 535, column: 6, scope: !244)
!251 = !DILocation(line: 537, column: 7, scope: !252)
!252 = distinct !DILexicalBlock(scope: !244, file: !7, line: 537, column: 6)
!253 = !DILocation(line: 537, column: 6, scope: !244)
!254 = !DILocation(line: 538, column: 21, scope: !252)
!255 = !DILocation(line: 538, column: 8, scope: !252)
!256 = !DILocation(line: 538, column: 3, scope: !252)
!257 = !DILocation(line: 539, column: 16, scope: !244)
!258 = !DILocation(line: 539, column: 6, scope: !244)
!259 = !DILocation(line: 539, column: 4, scope: !244)
!260 = !DILocation(line: 540, column: 10, scope: !244)
!261 = !DILocation(line: 540, column: 2, scope: !244)
!262 = !DILocation(line: 540, column: 13, scope: !244)
!263 = !DILocation(line: 540, column: 18, scope: !244)
!264 = !DILocation(line: 541, column: 17, scope: !244)
!265 = !DILocation(line: 541, column: 9, scope: !244)
!266 = !DILocation(line: 541, column: 20, scope: !244)
!267 = !DILocation(line: 541, column: 2, scope: !244)
!268 = distinct !DISubprogram(name: "nat_getsocketcb", scope: !7, file: !7, line: 549, type: !269, isLocal: false, isDefinition: true, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!269 = !DISubroutineType(types: !270)
!270 = !{!53, !12}
!271 = !DILocalVariable(name: "name", arg: 1, scope: !268, file: !7, line: 549, type: !12)
!272 = !DILocation(line: 549, column: 29, scope: !268)
!273 = !DILocation(line: 551, column: 7, scope: !274)
!274 = distinct !DILexicalBlock(scope: !268, file: !7, line: 551, column: 6)
!275 = !DILocation(line: 551, column: 6, scope: !268)
!276 = !DILocation(line: 552, column: 21, scope: !274)
!277 = !DILocation(line: 552, column: 8, scope: !274)
!278 = !DILocation(line: 552, column: 3, scope: !274)
!279 = !DILocation(line: 553, column: 27, scope: !268)
!280 = !DILocation(line: 553, column: 17, scope: !268)
!281 = !DILocation(line: 553, column: 9, scope: !268)
!282 = !DILocation(line: 553, column: 34, scope: !268)
!283 = !DILocation(line: 553, column: 2, scope: !268)
!284 = distinct !DISubprogram(name: "nat_ipv6ready", scope: !7, file: !7, line: 561, type: !175, isLocal: false, isDefinition: true, scopeLine: 562, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!285 = !DILocalVariable(name: "name", arg: 1, scope: !284, file: !7, line: 561, type: !12)
!286 = !DILocation(line: 561, column: 27, scope: !284)
!287 = !DILocation(line: 563, column: 7, scope: !288)
!288 = distinct !DILexicalBlock(scope: !284, file: !7, line: 563, column: 6)
!289 = !DILocation(line: 563, column: 6, scope: !284)
!290 = !DILocation(line: 564, column: 21, scope: !288)
!291 = !DILocation(line: 564, column: 8, scope: !288)
!292 = !DILocation(line: 564, column: 3, scope: !288)
!293 = !DILocation(line: 565, column: 27, scope: !284)
!294 = !DILocation(line: 565, column: 17, scope: !284)
!295 = !DILocation(line: 565, column: 9, scope: !284)
!296 = !DILocation(line: 565, column: 34, scope: !284)
!297 = !DILocation(line: 565, column: 2, scope: !284)
!298 = distinct !DISubprogram(name: "nat_list_engines", scope: !7, file: !7, line: 572, type: !28, isLocal: false, isDefinition: true, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!299 = !DILocalVariable(name: "i", scope: !300, file: !7, line: 574, type: !23)
!300 = distinct !DILexicalBlock(scope: !298, file: !7, line: 574, column: 2)
!301 = !DILocation(line: 574, column: 11, scope: !300)
!302 = !DILocation(line: 574, column: 7, scope: !300)
!303 = !DILocation(line: 574, column: 26, scope: !304)
!304 = !DILexicalBlockFile(scope: !305, file: !7, discriminator: 1)
!305 = distinct !DILexicalBlock(scope: !300, file: !7, line: 574, column: 2)
!306 = !DILocation(line: 574, column: 18, scope: !304)
!307 = !DILocation(line: 574, column: 29, scope: !304)
!308 = !DILocation(line: 574, column: 2, scope: !304)
!309 = !DILocation(line: 575, column: 10, scope: !310)
!310 = distinct !DILexicalBlock(scope: !305, file: !7, line: 574, column: 40)
!311 = !DILocation(line: 575, column: 36, scope: !310)
!312 = !DILocation(line: 575, column: 28, scope: !310)
!313 = !DILocation(line: 575, column: 39, scope: !310)
!314 = !DILocation(line: 576, column: 29, scope: !310)
!315 = !DILocation(line: 575, column: 3, scope: !310)
!316 = !DILocation(line: 577, column: 2, scope: !310)
!317 = !DILocation(line: 574, column: 36, scope: !318)
!318 = !DILexicalBlockFile(scope: !305, file: !7, discriminator: 2)
!319 = !DILocation(line: 574, column: 2, scope: !318)
!320 = distinct !{!320, !321}
!321 = !DILocation(line: 574, column: 2, scope: !298)
!322 = !DILocation(line: 578, column: 8, scope: !298)
!323 = !DILocation(line: 578, column: 2, scope: !298)
!324 = !DILocation(line: 579, column: 1, scope: !298)
!325 = distinct !DISubprogram(name: "nat_preinit", scope: !7, file: !7, line: 593, type: !21, isLocal: false, isDefinition: true, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!326 = !DILocalVariable(name: "i", scope: !327, file: !7, line: 595, type: !23)
!327 = distinct !DILexicalBlock(scope: !325, file: !7, line: 595, column: 2)
!328 = !DILocation(line: 595, column: 11, scope: !327)
!329 = !DILocation(line: 595, column: 7, scope: !327)
!330 = !DILocation(line: 595, column: 26, scope: !331)
!331 = !DILexicalBlockFile(scope: !332, file: !7, discriminator: 1)
!332 = distinct !DILexicalBlock(scope: !327, file: !7, line: 595, column: 2)
!333 = !DILocation(line: 595, column: 18, scope: !331)
!334 = !DILocation(line: 595, column: 29, scope: !331)
!335 = !DILocation(line: 595, column: 39, scope: !331)
!336 = !DILocation(line: 595, column: 50, scope: !337)
!337 = !DILexicalBlockFile(scope: !332, file: !7, discriminator: 2)
!338 = !DILocation(line: 595, column: 42, scope: !337)
!339 = !DILocation(line: 595, column: 53, scope: !337)
!340 = !DILocation(line: 595, column: 39, scope: !337)
!341 = !DILocation(line: 595, column: 2, scope: !342)
!342 = !DILexicalBlockFile(scope: !327, file: !7, discriminator: 3)
!343 = !DILocation(line: 596, column: 55, scope: !344)
!344 = distinct !DILexicalBlock(scope: !332, file: !7, line: 595, column: 64)
!345 = !DILocation(line: 596, column: 47, scope: !344)
!346 = !DILocation(line: 596, column: 58, scope: !344)
!347 = !DILocation(line: 596, column: 3, scope: !344)
!348 = !DILocation(line: 597, column: 15, scope: !349)
!349 = distinct !DILexicalBlock(scope: !344, file: !7, line: 597, column: 7)
!350 = !DILocation(line: 597, column: 7, scope: !349)
!351 = !DILocation(line: 597, column: 18, scope: !349)
!352 = !DILocation(line: 597, column: 30, scope: !349)
!353 = !DILocation(line: 597, column: 7, scope: !344)
!354 = !DILocation(line: 598, column: 4, scope: !349)
!355 = !DILocation(line: 599, column: 2, scope: !344)
!356 = !DILocation(line: 595, column: 60, scope: !357)
!357 = !DILexicalBlockFile(scope: !332, file: !7, discriminator: 4)
!358 = !DILocation(line: 595, column: 2, scope: !357)
!359 = distinct !{!359, !360}
!360 = !DILocation(line: 595, column: 2, scope: !325)
!361 = !DILocation(line: 600, column: 2, scope: !325)
!362 = !DILocation(line: 601, column: 1, scope: !325)
!363 = distinct !DISubprogram(name: "nat_preinit_undo", scope: !7, file: !7, line: 607, type: !28, isLocal: false, isDefinition: true, scopeLine: 608, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!364 = !DILocation(line: 609, column: 2, scope: !363)
!365 = !DILocation(line: 610, column: 1, scope: !363)
!366 = distinct !DISubprogram(name: "nat_fini", scope: !7, file: !7, line: 636, type: !28, isLocal: false, isDefinition: true, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!367 = !DILocalVariable(name: "i", scope: !368, file: !7, line: 638, type: !23)
!368 = distinct !DILexicalBlock(scope: !366, file: !7, line: 638, column: 2)
!369 = !DILocation(line: 638, column: 11, scope: !368)
!370 = !DILocation(line: 638, column: 7, scope: !368)
!371 = !DILocation(line: 638, column: 26, scope: !372)
!372 = !DILexicalBlockFile(scope: !373, file: !7, discriminator: 1)
!373 = distinct !DILexicalBlock(scope: !368, file: !7, line: 638, column: 2)
!374 = !DILocation(line: 638, column: 18, scope: !372)
!375 = !DILocation(line: 638, column: 29, scope: !372)
!376 = !DILocation(line: 638, column: 36, scope: !372)
!377 = !DILocation(line: 638, column: 47, scope: !378)
!378 = !DILexicalBlockFile(scope: !373, file: !7, discriminator: 2)
!379 = !DILocation(line: 638, column: 39, scope: !378)
!380 = !DILocation(line: 638, column: 50, scope: !378)
!381 = !DILocation(line: 638, column: 36, scope: !378)
!382 = !DILocation(line: 638, column: 2, scope: !383)
!383 = !DILexicalBlockFile(scope: !368, file: !7, discriminator: 3)
!384 = !DILocation(line: 639, column: 52, scope: !385)
!385 = distinct !DILexicalBlock(scope: !373, file: !7, line: 638, column: 61)
!386 = !DILocation(line: 639, column: 44, scope: !385)
!387 = !DILocation(line: 639, column: 55, scope: !385)
!388 = !DILocation(line: 639, column: 3, scope: !385)
!389 = !DILocation(line: 640, column: 11, scope: !385)
!390 = !DILocation(line: 640, column: 3, scope: !385)
!391 = !DILocation(line: 640, column: 14, scope: !385)
!392 = !DILocation(line: 641, column: 2, scope: !385)
!393 = !DILocation(line: 638, column: 57, scope: !394)
!394 = !DILexicalBlockFile(scope: !373, file: !7, discriminator: 4)
!395 = !DILocation(line: 638, column: 2, scope: !394)
!396 = distinct !{!396, !397}
!397 = !DILocation(line: 638, column: 2, scope: !366)
!398 = !DILocation(line: 642, column: 1, scope: !366)
!399 = distinct !DISubprogram(name: "nat_init", scope: !7, file: !7, line: 621, type: !21, isLocal: false, isDefinition: true, scopeLine: 622, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!400 = !DILocalVariable(name: "i", scope: !401, file: !7, line: 623, type: !23)
!401 = distinct !DILexicalBlock(scope: !399, file: !7, line: 623, column: 2)
!402 = !DILocation(line: 623, column: 11, scope: !401)
!403 = !DILocation(line: 623, column: 7, scope: !401)
!404 = !DILocation(line: 623, column: 26, scope: !405)
!405 = !DILexicalBlockFile(scope: !406, file: !7, discriminator: 1)
!406 = distinct !DILexicalBlock(scope: !401, file: !7, line: 623, column: 2)
!407 = !DILocation(line: 623, column: 18, scope: !405)
!408 = !DILocation(line: 623, column: 29, scope: !405)
!409 = !DILocation(line: 623, column: 36, scope: !405)
!410 = !DILocation(line: 623, column: 47, scope: !411)
!411 = !DILexicalBlockFile(scope: !406, file: !7, discriminator: 2)
!412 = !DILocation(line: 623, column: 39, scope: !411)
!413 = !DILocation(line: 623, column: 50, scope: !411)
!414 = !DILocation(line: 623, column: 36, scope: !411)
!415 = !DILocation(line: 623, column: 2, scope: !416)
!416 = !DILexicalBlockFile(scope: !401, file: !7, discriminator: 3)
!417 = !DILocation(line: 624, column: 52, scope: !418)
!418 = distinct !DILexicalBlock(scope: !406, file: !7, line: 623, column: 61)
!419 = !DILocation(line: 624, column: 44, scope: !418)
!420 = !DILocation(line: 624, column: 55, scope: !418)
!421 = !DILocation(line: 624, column: 3, scope: !418)
!422 = !DILocation(line: 625, column: 15, scope: !423)
!423 = distinct !DILexicalBlock(scope: !418, file: !7, line: 625, column: 7)
!424 = !DILocation(line: 625, column: 7, scope: !423)
!425 = !DILocation(line: 625, column: 18, scope: !423)
!426 = !DILocation(line: 625, column: 27, scope: !423)
!427 = !DILocation(line: 625, column: 7, scope: !418)
!428 = !DILocation(line: 626, column: 4, scope: !423)
!429 = !DILocation(line: 627, column: 2, scope: !418)
!430 = !DILocation(line: 623, column: 57, scope: !431)
!431 = !DILexicalBlockFile(scope: !406, file: !7, discriminator: 4)
!432 = !DILocation(line: 623, column: 2, scope: !431)
!433 = distinct !{!433, !434}
!434 = !DILocation(line: 623, column: 2, scope: !399)
!435 = !DILocation(line: 628, column: 2, scope: !399)
!436 = !DILocation(line: 629, column: 1, scope: !399)
!437 = distinct !DISubprogram(name: "nat_version", scope: !7, file: !7, line: 648, type: !28, isLocal: false, isDefinition: true, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!438 = !DILocation(line: 650, column: 9, scope: !437)
!439 = !DILocation(line: 650, column: 2, scope: !437)
!440 = !DILocalVariable(name: "i", scope: !441, file: !7, line: 651, type: !23)
!441 = distinct !DILexicalBlock(scope: !437, file: !7, line: 651, column: 2)
!442 = !DILocation(line: 651, column: 11, scope: !441)
!443 = !DILocation(line: 651, column: 7, scope: !441)
!444 = !DILocation(line: 651, column: 26, scope: !445)
!445 = !DILexicalBlockFile(scope: !446, file: !7, discriminator: 1)
!446 = distinct !DILexicalBlock(scope: !441, file: !7, line: 651, column: 2)
!447 = !DILocation(line: 651, column: 18, scope: !445)
!448 = !DILocation(line: 651, column: 29, scope: !445)
!449 = !DILocation(line: 651, column: 2, scope: !445)
!450 = !DILocation(line: 652, column: 10, scope: !451)
!451 = distinct !DILexicalBlock(scope: !446, file: !7, line: 651, column: 40)
!452 = !DILocation(line: 652, column: 35, scope: !451)
!453 = !DILocation(line: 652, column: 27, scope: !451)
!454 = !DILocation(line: 652, column: 38, scope: !451)
!455 = !DILocation(line: 653, column: 28, scope: !451)
!456 = !DILocation(line: 652, column: 3, scope: !451)
!457 = !DILocation(line: 654, column: 2, scope: !451)
!458 = !DILocation(line: 651, column: 36, scope: !459)
!459 = !DILexicalBlockFile(scope: !446, file: !7, discriminator: 2)
!460 = !DILocation(line: 651, column: 2, scope: !459)
!461 = distinct !{!461, !462}
!462 = !DILocation(line: 651, column: 2, scope: !437)
!463 = !DILocation(line: 655, column: 18, scope: !464)
!464 = distinct !DILexicalBlock(scope: !437, file: !7, line: 655, column: 6)
!465 = !DILocation(line: 655, column: 7, scope: !464)
!466 = !DILocation(line: 655, column: 6, scope: !437)
!467 = !DILocation(line: 656, column: 10, scope: !464)
!468 = !DILocation(line: 656, column: 3, scope: !464)
!469 = !DILocation(line: 657, column: 9, scope: !437)
!470 = !DILocation(line: 657, column: 2, scope: !437)
!471 = !DILocation(line: 662, column: 9, scope: !437)
!472 = !DILocation(line: 662, column: 2, scope: !437)
!473 = !DILocation(line: 664, column: 9, scope: !437)
!474 = !DILocation(line: 664, column: 2, scope: !437)
!475 = !DILocation(line: 669, column: 9, scope: !437)
!476 = !DILocation(line: 669, column: 2, scope: !437)
!477 = !DILocation(line: 673, column: 9, scope: !437)
!478 = !DILocation(line: 673, column: 2, scope: !437)
!479 = !DILocation(line: 675, column: 1, scope: !437)
