; ModuleID = './[inter]seamless.o.i'
source_filename = "./[inter]seamless.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._VCHANNEL = type { i16, [8 x i8], i32, %struct.stream, void (%struct.stream*)* }
%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }
%struct.timeval = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@g_seamless_rdp = external global i32, align 4
@seamless_serial = internal global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"seamrdp\00", align 1
@seamless_channel = internal global %struct._VCHANNEL* null, align 8
@seamless_rest = internal global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"SYNC\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"STATE\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"0x%08lx,0x%x,0x%lx\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"POSITION\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0x%08lx,%d,%d,%d,%d,0x%lx\00", align 1
@seamless_select_timeout.ourtimeout = private unnamed_addr constant %struct.timeval { i64 0, i64 200000 }, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"ZCHANGE\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"0x%08lx,0x%08lx,0x%lx\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"FOCUS\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"0x%08lx,0x%lx\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"DESTROY\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"0x%08lx\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"SPAWN\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"seamless_send_persistent(), %s persistent seamless mode\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"PERSISTENT\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"seamless_line_handler(), invalid request '%s'\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"seamless_process_line(), got '%s'\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"CREATE\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"DESTROYGRP\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"SETICON\00", align 1
@icon_buf = internal global [1024 x i8] zeroinitializer, align 16
@.str.24 = private unnamed_addr constant [8 x i8] c"DELICON\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"TITLE\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"seamless_process_line(), %s\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"SYNCBEGIN\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"SYNCEND\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"HELLO\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"HIDE\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"UNHIDE\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"%s,%u,\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"len < (sizeof(buf) - 1)\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"seamless.c\00", align 1
@__PRETTY_FUNCTION__.seamless_send = private unnamed_addr constant [60 x i8] c"unsigned int seamless_send(const char *, const char *, ...)\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"seamless_send(), sending '%s'\00", align 1

; Function Attrs: nounwind uwtable
define i32 @seamless_init() #0 !dbg !74 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @g_seamless_rdp, align 4, !dbg !80
  %3 = icmp ne i32 %2, 0, !dbg !80
  br i1 %3, label %5, label %4, !dbg !82

; <label>:4:                                      ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !83
  br label %10, !dbg !83

; <label>:5:                                      ; preds = %0
  store i32 0, i32* @seamless_serial, align 4, !dbg !84
  %6 = call %struct._VCHANNEL* @channel_register(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 -1073741824, void (%struct.stream*)* @seamless_process), !dbg !85
  store %struct._VCHANNEL* %6, %struct._VCHANNEL** @seamless_channel, align 8, !dbg !86
  %7 = load %struct._VCHANNEL*, %struct._VCHANNEL** @seamless_channel, align 8, !dbg !87
  %8 = icmp ne %struct._VCHANNEL* %7, null, !dbg !88
  %9 = zext i1 %8 to i32, !dbg !88
  store i32 %9, i32* %1, align 4, !dbg !89
  br label %10, !dbg !89

; <label>:10:                                     ; preds = %5, %4
  %11 = load i32, i32* %1, align 4, !dbg !90
  ret i32 %11, !dbg !90
}

declare %struct._VCHANNEL* @channel_register(i8*, i32, void (%struct.stream*)*) #1

; Function Attrs: nounwind uwtable
define internal void @seamless_process(%struct.stream*) #0 !dbg !91 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !92, metadata !93), !dbg !94
  call void @llvm.dbg.declare(metadata i32* %3, metadata !95, metadata !93), !dbg !96
  call void @llvm.dbg.declare(metadata i8** %4, metadata !97, metadata !93), !dbg !98
  %5 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !99
  %6 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 1, !dbg !100
  %7 = load i8*, i8** %6, align 8, !dbg !100
  %8 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !101
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 0, !dbg !102
  %10 = load i8*, i8** %9, align 8, !dbg !102
  %11 = ptrtoint i8* %7 to i64, !dbg !103
  %12 = ptrtoint i8* %10 to i64, !dbg !103
  %13 = sub i64 %11, %12, !dbg !103
  %14 = trunc i64 %13 to i32, !dbg !99
  store i32 %14, i32* %3, align 4, !dbg !104
  %15 = load i32, i32* %3, align 4, !dbg !105
  %16 = add i32 %15, 1, !dbg !106
  %17 = call i8* @xmalloc(i32 %16), !dbg !107
  store i8* %17, i8** %4, align 8, !dbg !108
  %18 = load i8*, i8** %4, align 8, !dbg !109
  %19 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !111
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !112
  %21 = load i8*, i8** %20, align 8, !dbg !112
  %22 = load i32, i32* %3, align 4, !dbg !113
  %23 = add i32 %22, 1, !dbg !114
  %24 = sub i32 %23, 1, !dbg !115
  %25 = zext i32 %24 to i64, !dbg !113
  %26 = call i8* @strncpy(i8* %18, i8* %21, i64 %25) #7, !dbg !116
  %27 = load i32, i32* %3, align 4, !dbg !117
  %28 = add i32 %27, 1, !dbg !118
  %29 = sub i32 %28, 1, !dbg !119
  %30 = zext i32 %29 to i64, !dbg !120
  %31 = load i8*, i8** %4, align 8, !dbg !120
  %32 = getelementptr inbounds i8, i8* %31, i64 %30, !dbg !120
  store i8 0, i8* %32, align 1, !dbg !121
  %33 = load i8*, i8** %4, align 8, !dbg !122
  %34 = call i32 @str_handle_lines(i8* %33, i8** @seamless_rest, i32 (i8*, i8*)* @seamless_line_handler, i8* null), !dbg !123
  %35 = load i8*, i8** %4, align 8, !dbg !124
  call void @xfree(i8* %35), !dbg !125
  ret void, !dbg !126
}

; Function Attrs: nounwind uwtable
define void @seamless_reset_state() #0 !dbg !127 {
  %1 = load i8*, i8** @seamless_rest, align 8, !dbg !130
  %2 = icmp ne i8* %1, null, !dbg !132
  br i1 %2, label %3, label %5, !dbg !133

; <label>:3:                                      ; preds = %0
  %4 = load i8*, i8** @seamless_rest, align 8, !dbg !134
  call void @xfree(i8* %4), !dbg !136
  store i8* null, i8** @seamless_rest, align 8, !dbg !137
  br label %5, !dbg !138

; <label>:5:                                      ; preds = %3, %0
  ret void, !dbg !139
}

declare void @xfree(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @seamless_send_sync() #0 !dbg !140 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @g_seamless_rdp, align 4, !dbg !143
  %3 = icmp ne i32 %2, 0, !dbg !143
  br i1 %3, label %5, label %4, !dbg !145

; <label>:4:                                      ; preds = %0
  store i32 -1, i32* %1, align 4, !dbg !146
  br label %7, !dbg !146

; <label>:5:                                      ; preds = %0
  %6 = call i32 (i8*, i8*, ...) @seamless_send(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)), !dbg !147
  store i32 %6, i32* %1, align 4, !dbg !148
  br label %7, !dbg !148

; <label>:7:                                      ; preds = %5, %4
  %8 = load i32, i32* %1, align 4, !dbg !149
  ret i32 %8, !dbg !149
}

; Function Attrs: nounwind uwtable
define internal i32 @seamless_send(i8*, i8*, ...) #0 !dbg !150 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stream*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca i8*, align 8
  %9 = alloca [1025 x i8], align 16
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !155, metadata !93), !dbg !156
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !157, metadata !93), !dbg !158
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !159, metadata !93), !dbg !160
  call void @llvm.dbg.declare(metadata i64* %6, metadata !161, metadata !93), !dbg !165
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !166, metadata !93), !dbg !181
  call void @llvm.dbg.declare(metadata i8** %8, metadata !182, metadata !93), !dbg !183
  call void @llvm.dbg.declare(metadata [1025 x i8]* %9, metadata !184, metadata !93), !dbg !188
  %10 = getelementptr inbounds [1025 x i8], [1025 x i8]* %9, i32 0, i32 0, !dbg !189
  %11 = load i8*, i8** %3, align 8, !dbg !190
  %12 = load i32, i32* @seamless_serial, align 4, !dbg !191
  %13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %10, i64 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i8* %11, i32 %12) #7, !dbg !192
  %14 = sext i32 %13 to i64, !dbg !192
  store i64 %14, i64* %6, align 8, !dbg !193
  %15 = load i64, i64* %6, align 8, !dbg !194
  %16 = icmp ult i64 %15, 1024, !dbg !195
  br i1 %16, label %17, label %18, !dbg !196

; <label>:17:                                     ; preds = %2
  br label %20, !dbg !197

; <label>:18:                                     ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 418, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.seamless_send, i32 0, i32 0)) #8, !dbg !199
  unreachable, !dbg !199
                                                  ; No predecessors!
  br label %20, !dbg !201

; <label>:20:                                     ; preds = %19, %17
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !203
  %22 = bitcast %struct.__va_list_tag* %21 to i8*, !dbg !203
  call void @llvm.va_start(i8* %22), !dbg !203
  %23 = getelementptr inbounds [1025 x i8], [1025 x i8]* %9, i32 0, i32 0, !dbg !204
  %24 = load i64, i64* %6, align 8, !dbg !205
  %25 = getelementptr inbounds i8, i8* %23, i64 %24, !dbg !206
  %26 = load i64, i64* %6, align 8, !dbg !207
  %27 = sub i64 1025, %26, !dbg !208
  %28 = sub i64 %27, 1, !dbg !209
  %29 = load i8*, i8** %4, align 8, !dbg !210
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !211
  %31 = call i32 @vsnprintf(i8* %25, i64 %28, i8* %29, %struct.__va_list_tag* %30) #7, !dbg !212
  %32 = sext i32 %31 to i64, !dbg !212
  %33 = load i64, i64* %6, align 8, !dbg !213
  %34 = add i64 %33, %32, !dbg !213
  store i64 %34, i64* %6, align 8, !dbg !213
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !214
  %36 = bitcast %struct.__va_list_tag* %35 to i8*, !dbg !214
  call void @llvm.va_end(i8* %36), !dbg !214
  %37 = load i64, i64* %6, align 8, !dbg !215
  %38 = icmp ult i64 %37, 1024, !dbg !216
  br i1 %38, label %39, label %40, !dbg !217

; <label>:39:                                     ; preds = %20
  br label %42, !dbg !218

; <label>:40:                                     ; preds = %20
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 424, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.seamless_send, i32 0, i32 0)) #8, !dbg !219
  unreachable, !dbg !219
                                                  ; No predecessors!
  br label %42, !dbg !220

; <label>:42:                                     ; preds = %41, %39
  %43 = getelementptr inbounds [1025 x i8], [1025 x i8]* %9, i32 0, i32 0, !dbg !221
  %44 = call i8* @utils_string_escape(i8* %43), !dbg !222
  store i8* %44, i8** %8, align 8, !dbg !223
  %45 = getelementptr inbounds [1025 x i8], [1025 x i8]* %9, i32 0, i32 0, !dbg !224
  %46 = load i8*, i8** %8, align 8, !dbg !225
  %47 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %45, i64 1025, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i8* %46) #7, !dbg !226
  %48 = sext i32 %47 to i64, !dbg !226
  store i64 %48, i64* %6, align 8, !dbg !227
  %49 = load i8*, i8** %8, align 8, !dbg !228
  call void @free(i8* %49) #7, !dbg !229
  %50 = load i64, i64* %6, align 8, !dbg !230
  %51 = icmp ult i64 %50, 1024, !dbg !231
  br i1 %51, label %52, label %53, !dbg !232

; <label>:52:                                     ; preds = %42
  br label %55, !dbg !233

; <label>:53:                                     ; preds = %42
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 429, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.seamless_send, i32 0, i32 0)) #8, !dbg !234
  unreachable, !dbg !234
                                                  ; No predecessors!
  br label %55, !dbg !235

; <label>:55:                                     ; preds = %54, %52
  %56 = load i64, i64* %6, align 8, !dbg !236
  %57 = getelementptr inbounds [1025 x i8], [1025 x i8]* %9, i64 0, i64 %56, !dbg !237
  store i8 10, i8* %57, align 1, !dbg !238
  %58 = load i64, i64* %6, align 8, !dbg !239
  %59 = add i64 %58, 1, !dbg !240
  %60 = getelementptr inbounds [1025 x i8], [1025 x i8]* %9, i64 0, i64 %59, !dbg !241
  store i8 0, i8* %60, align 1, !dbg !242
  %61 = load i64, i64* %6, align 8, !dbg !243
  %62 = add i64 %61, 1, !dbg !243
  store i64 %62, i64* %6, align 8, !dbg !243
  %63 = load %struct._VCHANNEL*, %struct._VCHANNEL** @seamless_channel, align 8, !dbg !244
  %64 = load i64, i64* %6, align 8, !dbg !245
  %65 = trunc i64 %64 to i32, !dbg !245
  %66 = call %struct.stream* @channel_init(%struct._VCHANNEL* %63, i32 %65), !dbg !246
  store %struct.stream* %66, %struct.stream** %5, align 8, !dbg !247
  %67 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !248
  %68 = getelementptr inbounds %struct.stream, %struct.stream* %67, i32 0, i32 0, !dbg !250
  %69 = load i8*, i8** %68, align 8, !dbg !250
  %70 = getelementptr inbounds [1025 x i8], [1025 x i8]* %9, i32 0, i32 0, !dbg !251
  %71 = load i64, i64* %6, align 8, !dbg !252
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 %71, i32 1, i1 false), !dbg !251
  %72 = load i64, i64* %6, align 8, !dbg !253
  %73 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !254
  %74 = getelementptr inbounds %struct.stream, %struct.stream* %73, i32 0, i32 0, !dbg !255
  %75 = load i8*, i8** %74, align 8, !dbg !256
  %76 = getelementptr inbounds i8, i8* %75, i64 %72, !dbg !256
  store i8* %76, i8** %74, align 8, !dbg !256
  %77 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !257
  %78 = getelementptr inbounds %struct.stream, %struct.stream* %77, i32 0, i32 0, !dbg !258
  %79 = load i8*, i8** %78, align 8, !dbg !258
  %80 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !259
  %81 = getelementptr inbounds %struct.stream, %struct.stream* %80, i32 0, i32 1, !dbg !260
  store i8* %79, i8** %81, align 8, !dbg !261
  %82 = getelementptr inbounds [1025 x i8], [1025 x i8]* %9, i32 0, i32 0, !dbg !262
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i32 0, i32 0), i8* %82), !dbg !263
  %83 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !264
  %84 = load %struct._VCHANNEL*, %struct._VCHANNEL** @seamless_channel, align 8, !dbg !265
  call void @channel_send(%struct.stream* %83, %struct._VCHANNEL* %84), !dbg !266
  %85 = load i32, i32* @seamless_serial, align 4, !dbg !267
  %86 = add i32 %85, 1, !dbg !267
  store i32 %86, i32* @seamless_serial, align 4, !dbg !267
  ret i32 %85, !dbg !268
}

; Function Attrs: nounwind uwtable
define i32 @seamless_send_state(i64, i32, i64) #0 !dbg !269 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !272, metadata !93), !dbg !273
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !274, metadata !93), !dbg !275
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !276, metadata !93), !dbg !277
  %8 = load i32, i32* @g_seamless_rdp, align 4, !dbg !278
  %9 = icmp ne i32 %8, 0, !dbg !278
  br i1 %9, label %11, label %10, !dbg !280

; <label>:10:                                     ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !281
  br label %16, !dbg !281

; <label>:11:                                     ; preds = %3
  %12 = load i64, i64* %5, align 8, !dbg !282
  %13 = load i32, i32* %6, align 4, !dbg !283
  %14 = load i64, i64* %7, align 8, !dbg !284
  %15 = call i32 (i8*, i8*, ...) @seamless_send(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i64 %12, i32 %13, i64 %14), !dbg !285
  store i32 %15, i32* %4, align 4, !dbg !286
  br label %16, !dbg !286

; <label>:16:                                     ; preds = %11, %10
  %17 = load i32, i32* %4, align 4, !dbg !287
  ret i32 %17, !dbg !287
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind uwtable
define i32 @seamless_send_position(i64, i32, i32, i32, i32, i64) #0 !dbg !288 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !291, metadata !93), !dbg !292
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !293, metadata !93), !dbg !294
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !295, metadata !93), !dbg !296
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !297, metadata !93), !dbg !298
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !299, metadata !93), !dbg !300
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !301, metadata !93), !dbg !302
  %13 = load i64, i64* %7, align 8, !dbg !303
  %14 = load i32, i32* %8, align 4, !dbg !304
  %15 = load i32, i32* %9, align 4, !dbg !305
  %16 = load i32, i32* %10, align 4, !dbg !306
  %17 = load i32, i32* %11, align 4, !dbg !307
  %18 = load i64, i64* %12, align 8, !dbg !308
  %19 = call i32 (i8*, i8*, ...) @seamless_send(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), i64 %13, i32 %14, i32 %15, i32 %16, i32 %17, i64 %18), !dbg !309
  ret i32 %19, !dbg !310
}

; Function Attrs: nounwind uwtable
define void @seamless_select_timeout(%struct.timeval*) #0 !dbg !311 {
  %2 = alloca %struct.timeval*, align 8
  %3 = alloca %struct.timeval, align 8
  store %struct.timeval* %0, %struct.timeval** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval** %2, metadata !324, metadata !93), !dbg !325
  call void @llvm.dbg.declare(metadata %struct.timeval* %3, metadata !326, metadata !93), !dbg !327
  %4 = bitcast %struct.timeval* %3 to i8*, !dbg !327
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast (%struct.timeval* @seamless_select_timeout.ourtimeout to i8*), i64 16, i32 8, i1 false), !dbg !327
  %5 = load i32, i32* @g_seamless_rdp, align 4, !dbg !328
  %6 = icmp ne i32 %5, 0, !dbg !328
  br i1 %6, label %7, label %38, !dbg !330

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0, !dbg !331
  %9 = load i64, i64* %8, align 8, !dbg !331
  %10 = load %struct.timeval*, %struct.timeval** %2, align 8, !dbg !334
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0, !dbg !331
  %12 = load i64, i64* %11, align 8, !dbg !331
  %13 = icmp eq i64 %9, %12, !dbg !335
  br i1 %13, label %14, label %21, !dbg !336

; <label>:14:                                     ; preds = %7
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1, !dbg !337
  %16 = load i64, i64* %15, align 8, !dbg !337
  %17 = load %struct.timeval*, %struct.timeval** %2, align 8, !dbg !339
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1, !dbg !337
  %19 = load i64, i64* %18, align 8, !dbg !337
  %20 = icmp slt i64 %16, %19, !dbg !339
  br i1 %20, label %28, label %37, !dbg !340

; <label>:21:                                     ; preds = %7
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0, !dbg !341
  %23 = load i64, i64* %22, align 8, !dbg !341
  %24 = load %struct.timeval*, %struct.timeval** %2, align 8, !dbg !343
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %24, i32 0, i32 0, !dbg !341
  %26 = load i64, i64* %25, align 8, !dbg !341
  %27 = icmp slt i64 %23, %26, !dbg !343
  br i1 %27, label %28, label %37, !dbg !343

; <label>:28:                                     ; preds = %21, %14
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0, !dbg !344
  %30 = load i64, i64* %29, align 8, !dbg !344
  %31 = load %struct.timeval*, %struct.timeval** %2, align 8, !dbg !346
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %31, i32 0, i32 0, !dbg !347
  store i64 %30, i64* %32, align 8, !dbg !348
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1, !dbg !349
  %34 = load i64, i64* %33, align 8, !dbg !349
  %35 = load %struct.timeval*, %struct.timeval** %2, align 8, !dbg !350
  %36 = getelementptr inbounds %struct.timeval, %struct.timeval* %35, i32 0, i32 1, !dbg !351
  store i64 %34, i64* %36, align 8, !dbg !352
  br label %37, !dbg !353

; <label>:37:                                     ; preds = %28, %21, %14
  br label %38, !dbg !354

; <label>:38:                                     ; preds = %37, %1
  ret void, !dbg !355
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i32 @seamless_send_zchange(i64, i64, i64) #0 !dbg !356 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !359, metadata !93), !dbg !360
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !361, metadata !93), !dbg !362
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !363, metadata !93), !dbg !364
  %8 = load i32, i32* @g_seamless_rdp, align 4, !dbg !365
  %9 = icmp ne i32 %8, 0, !dbg !365
  br i1 %9, label %11, label %10, !dbg !367

; <label>:10:                                     ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !368
  br label %16, !dbg !368

; <label>:11:                                     ; preds = %3
  %12 = load i64, i64* %5, align 8, !dbg !369
  %13 = load i64, i64* %6, align 8, !dbg !370
  %14 = load i64, i64* %7, align 8, !dbg !371
  %15 = call i32 (i8*, i8*, ...) @seamless_send(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i64 %12, i64 %13, i64 %14), !dbg !372
  store i32 %15, i32* %4, align 4, !dbg !373
  br label %16, !dbg !373

; <label>:16:                                     ; preds = %11, %10
  %17 = load i32, i32* %4, align 4, !dbg !374
  ret i32 %17, !dbg !374
}

; Function Attrs: nounwind uwtable
define i32 @seamless_send_focus(i64, i64) #0 !dbg !375 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !378, metadata !93), !dbg !379
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !380, metadata !93), !dbg !381
  %6 = load i32, i32* @g_seamless_rdp, align 4, !dbg !382
  %7 = icmp ne i32 %6, 0, !dbg !382
  br i1 %7, label %9, label %8, !dbg !384

; <label>:8:                                      ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !385
  br label %13, !dbg !385

; <label>:9:                                      ; preds = %2
  %10 = load i64, i64* %4, align 8, !dbg !386
  %11 = load i64, i64* %5, align 8, !dbg !387
  %12 = call i32 (i8*, i8*, ...) @seamless_send(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i64 %10, i64 %11), !dbg !388
  store i32 %12, i32* %3, align 4, !dbg !389
  br label %13, !dbg !389

; <label>:13:                                     ; preds = %9, %8
  %14 = load i32, i32* %3, align 4, !dbg !390
  ret i32 %14, !dbg !390
}

; Function Attrs: nounwind uwtable
define i32 @seamless_send_destroy(i64) #0 !dbg !391 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !394, metadata !93), !dbg !395
  %3 = load i64, i64* %2, align 8, !dbg !396
  %4 = call i32 (i8*, i8*, ...) @seamless_send(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i64 %3), !dbg !397
  ret i32 %4, !dbg !398
}

; Function Attrs: nounwind uwtable
define i32 @seamless_send_spawn(i8*) #0 !dbg !399 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !402, metadata !93), !dbg !403
  call void @llvm.dbg.declare(metadata i32* %4, metadata !404, metadata !93), !dbg !405
  %5 = load i32, i32* @g_seamless_rdp, align 4, !dbg !406
  %6 = icmp ne i32 %5, 0, !dbg !406
  br i1 %6, label %8, label %7, !dbg !408

; <label>:7:                                      ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !409
  br label %12, !dbg !409

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !410
  %10 = call i32 (i8*, i8*, ...) @seamless_send(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* %9), !dbg !411
  store i32 %10, i32* %4, align 4, !dbg !412
  %11 = load i32, i32* %4, align 4, !dbg !413
  store i32 %11, i32* %2, align 4, !dbg !414
  br label %12, !dbg !414

; <label>:12:                                     ; preds = %8, %7
  %13 = load i32, i32* %2, align 4, !dbg !415
  ret i32 %13, !dbg !415
}

; Function Attrs: nounwind uwtable
define i32 @seamless_send_persistent(i32) #0 !dbg !416 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !419, metadata !93), !dbg !420
  call void @llvm.dbg.declare(metadata i32* %4, metadata !421, metadata !93), !dbg !422
  %5 = load i32, i32* @g_seamless_rdp, align 4, !dbg !423
  %6 = icmp ne i32 %5, 0, !dbg !423
  br i1 %6, label %8, label %7, !dbg !425

; <label>:7:                                      ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !426
  br label %15, !dbg !426

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %3, align 4, !dbg !427
  %10 = icmp ne i32 %9, 0, !dbg !427
  %11 = select i1 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), !dbg !427
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i32 0, i32 0), i8* %11), !dbg !428
  %12 = load i32, i32* %3, align 4, !dbg !429
  %13 = call i32 (i8*, i8*, ...) @seamless_send(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %12), !dbg !430
  store i32 %13, i32* %4, align 4, !dbg !431
  %14 = load i32, i32* %4, align 4, !dbg !432
  store i32 %14, i32* %2, align 4, !dbg !433
  br label %15, !dbg !433

; <label>:15:                                     ; preds = %8, %7
  %16 = load i32, i32* %2, align 4, !dbg !434
  ret i32 %16, !dbg !434
}

declare void @logger(i32, i32, i8*, ...) #1

declare i8* @xmalloc(i32) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

declare i32 @str_handle_lines(i8*, i8**, i32 (i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @seamless_line_handler(i8*, i8*) #0 !dbg !435 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !438, metadata !93), !dbg !439
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !440, metadata !93), !dbg !441
  %5 = load i8*, i8** %3, align 8, !dbg !442
  %6 = load i8*, i8** %4, align 8, !dbg !444
  %7 = call i32 @seamless_process_line(i8* %5, i8* %6), !dbg !445
  %8 = icmp ne i32 %7, 0, !dbg !445
  br i1 %8, label %11, label %9, !dbg !446

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %3, align 8, !dbg !447
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i32 0, i32 0), i8* %10), !dbg !449
  br label %11, !dbg !450

; <label>:11:                                     ; preds = %9, %2
  ret i32 1, !dbg !451
}

; Function Attrs: nounwind uwtable
define internal i32 @seamless_process_line(i8*, i8*) #0 !dbg !452 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [3 x i8], align 1
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !453, metadata !93), !dbg !454
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !455, metadata !93), !dbg !456
  %34 = load i8*, i8** %5, align 8, !dbg !457
  call void @llvm.dbg.declare(metadata i8** %6, metadata !458, metadata !93), !dbg !459
  call void @llvm.dbg.declare(metadata i8** %7, metadata !460, metadata !93), !dbg !461
  call void @llvm.dbg.declare(metadata i8** %8, metadata !462, metadata !93), !dbg !463
  call void @llvm.dbg.declare(metadata i8** %9, metadata !464, metadata !93), !dbg !465
  call void @llvm.dbg.declare(metadata i8** %10, metadata !466, metadata !93), !dbg !467
  call void @llvm.dbg.declare(metadata i8** %11, metadata !468, metadata !93), !dbg !469
  call void @llvm.dbg.declare(metadata i8** %12, metadata !470, metadata !93), !dbg !471
  call void @llvm.dbg.declare(metadata i8** %13, metadata !472, metadata !93), !dbg !473
  call void @llvm.dbg.declare(metadata i8** %14, metadata !474, metadata !93), !dbg !475
  call void @llvm.dbg.declare(metadata i64* %15, metadata !476, metadata !93), !dbg !477
  call void @llvm.dbg.declare(metadata i64* %16, metadata !478, metadata !93), !dbg !479
  call void @llvm.dbg.declare(metadata i8** %17, metadata !480, metadata !93), !dbg !481
  %35 = load i8*, i8** %4, align 8, !dbg !482
  %36 = call i8* @xstrdup(i8* %35), !dbg !483
  store i8* %36, i8** %7, align 8, !dbg !484
  %37 = load i8*, i8** %7, align 8, !dbg !485
  store i8* %37, i8** %6, align 8, !dbg !486
  %38 = load i8*, i8** %6, align 8, !dbg !487
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i32 0, i32 0), i8* %38), !dbg !488
  %39 = call i8* @seamless_get_token(i8** %6), !dbg !489
  store i8* %39, i8** %8, align 8, !dbg !490
  %40 = call i8* @seamless_get_token(i8** %6), !dbg !491
  %41 = call i8* @seamless_get_token(i8** %6), !dbg !492
  store i8* %41, i8** %9, align 8, !dbg !493
  %42 = call i8* @seamless_get_token(i8** %6), !dbg !494
  store i8* %42, i8** %10, align 8, !dbg !495
  %43 = call i8* @seamless_get_token(i8** %6), !dbg !496
  store i8* %43, i8** %11, align 8, !dbg !497
  %44 = call i8* @seamless_get_token(i8** %6), !dbg !498
  store i8* %44, i8** %12, align 8, !dbg !499
  %45 = call i8* @seamless_get_token(i8** %6), !dbg !500
  store i8* %45, i8** %13, align 8, !dbg !501
  %46 = call i8* @seamless_get_token(i8** %6), !dbg !502
  store i8* %46, i8** %14, align 8, !dbg !503
  %47 = load i8*, i8** %8, align 8, !dbg !504
  %48 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* %47) #9, !dbg !506
  %49 = icmp ne i32 %48, 0, !dbg !506
  br i1 %49, label %87, label %50, !dbg !507

; <label>:50:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i64* %18, metadata !508, metadata !93), !dbg !510
  call void @llvm.dbg.declare(metadata i64* %19, metadata !511, metadata !93), !dbg !512
  %51 = load i8*, i8** %12, align 8, !dbg !513
  %52 = icmp ne i8* %51, null, !dbg !513
  br i1 %52, label %54, label %53, !dbg !515

; <label>:53:                                     ; preds = %50
  store i32 0, i32* %3, align 4, !dbg !516
  br label %526, !dbg !516

; <label>:54:                                     ; preds = %50
  %55 = load i8*, i8** %9, align 8, !dbg !517
  %56 = call i64 @strtoul(i8* %55, i8** %17, i32 0) #7, !dbg !518
  store i64 %56, i64* %15, align 8, !dbg !519
  %57 = load i8*, i8** %17, align 8, !dbg !520
  %58 = load i8, i8* %57, align 1, !dbg !522
  %59 = icmp ne i8 %58, 0, !dbg !522
  br i1 %59, label %60, label %61, !dbg !523

; <label>:60:                                     ; preds = %54
  store i32 0, i32* %3, align 4, !dbg !524
  br label %526, !dbg !524

; <label>:61:                                     ; preds = %54
  %62 = load i8*, i8** %10, align 8, !dbg !525
  %63 = call i64 @strtoul(i8* %62, i8** %17, i32 0) #7, !dbg !526
  store i64 %63, i64* %18, align 8, !dbg !527
  %64 = load i8*, i8** %17, align 8, !dbg !528
  %65 = load i8, i8* %64, align 1, !dbg !530
  %66 = icmp ne i8 %65, 0, !dbg !530
  br i1 %66, label %67, label %68, !dbg !531

; <label>:67:                                     ; preds = %61
  store i32 0, i32* %3, align 4, !dbg !532
  br label %526, !dbg !532

; <label>:68:                                     ; preds = %61
  %69 = load i8*, i8** %11, align 8, !dbg !533
  %70 = call i64 @strtoul(i8* %69, i8** %17, i32 0) #7, !dbg !534
  store i64 %70, i64* %19, align 8, !dbg !535
  %71 = load i8*, i8** %17, align 8, !dbg !536
  %72 = load i8, i8* %71, align 1, !dbg !538
  %73 = icmp ne i8 %72, 0, !dbg !538
  br i1 %73, label %74, label %75, !dbg !539

; <label>:74:                                     ; preds = %68
  store i32 0, i32* %3, align 4, !dbg !540
  br label %526, !dbg !540

; <label>:75:                                     ; preds = %68
  %76 = load i8*, i8** %12, align 8, !dbg !541
  %77 = call i64 @strtoul(i8* %76, i8** %17, i32 0) #7, !dbg !542
  store i64 %77, i64* %16, align 8, !dbg !543
  %78 = load i8*, i8** %17, align 8, !dbg !544
  %79 = load i8, i8* %78, align 1, !dbg !546
  %80 = icmp ne i8 %79, 0, !dbg !546
  br i1 %80, label %81, label %82, !dbg !547

; <label>:81:                                     ; preds = %75
  store i32 0, i32* %3, align 4, !dbg !548
  br label %526, !dbg !548

; <label>:82:                                     ; preds = %75
  %83 = load i64, i64* %15, align 8, !dbg !549
  %84 = load i64, i64* %18, align 8, !dbg !550
  %85 = load i64, i64* %19, align 8, !dbg !551
  %86 = load i64, i64* %16, align 8, !dbg !552
  call void @ui_seamless_create_window(i64 %83, i64 %84, i64 %85, i64 %86), !dbg !553
  br label %524, !dbg !554

; <label>:87:                                     ; preds = %2
  %88 = load i8*, i8** %8, align 8, !dbg !555
  %89 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* %88) #9, !dbg !557
  %90 = icmp ne i32 %89, 0, !dbg !557
  br i1 %90, label %112, label %91, !dbg !558

; <label>:91:                                     ; preds = %87
  %92 = load i8*, i8** %10, align 8, !dbg !559
  %93 = icmp ne i8* %92, null, !dbg !559
  br i1 %93, label %95, label %94, !dbg !562

; <label>:94:                                     ; preds = %91
  store i32 0, i32* %3, align 4, !dbg !563
  br label %526, !dbg !563

; <label>:95:                                     ; preds = %91
  %96 = load i8*, i8** %9, align 8, !dbg !564
  %97 = call i64 @strtoul(i8* %96, i8** %17, i32 0) #7, !dbg !565
  store i64 %97, i64* %15, align 8, !dbg !566
  %98 = load i8*, i8** %17, align 8, !dbg !567
  %99 = load i8, i8* %98, align 1, !dbg !569
  %100 = icmp ne i8 %99, 0, !dbg !569
  br i1 %100, label %101, label %102, !dbg !570

; <label>:101:                                    ; preds = %95
  store i32 0, i32* %3, align 4, !dbg !571
  br label %526, !dbg !571

; <label>:102:                                    ; preds = %95
  %103 = load i8*, i8** %10, align 8, !dbg !572
  %104 = call i64 @strtoul(i8* %103, i8** %17, i32 0) #7, !dbg !573
  store i64 %104, i64* %16, align 8, !dbg !574
  %105 = load i8*, i8** %17, align 8, !dbg !575
  %106 = load i8, i8* %105, align 1, !dbg !577
  %107 = icmp ne i8 %106, 0, !dbg !577
  br i1 %107, label %108, label %109, !dbg !578

; <label>:108:                                    ; preds = %102
  store i32 0, i32* %3, align 4, !dbg !579
  br label %526, !dbg !579

; <label>:109:                                    ; preds = %102
  %110 = load i64, i64* %15, align 8, !dbg !580
  %111 = load i64, i64* %16, align 8, !dbg !581
  call void @ui_seamless_destroy_window(i64 %110, i64 %111), !dbg !582
  br label %523, !dbg !583

; <label>:112:                                    ; preds = %87
  %113 = load i8*, i8** %8, align 8, !dbg !584
  %114 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* %113) #9, !dbg !586
  %115 = icmp ne i32 %114, 0, !dbg !586
  br i1 %115, label %137, label %116, !dbg !587

; <label>:116:                                    ; preds = %112
  %117 = load i8*, i8** %10, align 8, !dbg !588
  %118 = icmp ne i8* %117, null, !dbg !588
  br i1 %118, label %120, label %119, !dbg !591

; <label>:119:                                    ; preds = %116
  store i32 0, i32* %3, align 4, !dbg !592
  br label %526, !dbg !592

; <label>:120:                                    ; preds = %116
  %121 = load i8*, i8** %9, align 8, !dbg !593
  %122 = call i64 @strtoul(i8* %121, i8** %17, i32 0) #7, !dbg !594
  store i64 %122, i64* %15, align 8, !dbg !595
  %123 = load i8*, i8** %17, align 8, !dbg !596
  %124 = load i8, i8* %123, align 1, !dbg !598
  %125 = icmp ne i8 %124, 0, !dbg !598
  br i1 %125, label %126, label %127, !dbg !599

; <label>:126:                                    ; preds = %120
  store i32 0, i32* %3, align 4, !dbg !600
  br label %526, !dbg !600

; <label>:127:                                    ; preds = %120
  %128 = load i8*, i8** %10, align 8, !dbg !601
  %129 = call i64 @strtoul(i8* %128, i8** %17, i32 0) #7, !dbg !602
  store i64 %129, i64* %16, align 8, !dbg !603
  %130 = load i8*, i8** %17, align 8, !dbg !604
  %131 = load i8, i8* %130, align 1, !dbg !606
  %132 = icmp ne i8 %131, 0, !dbg !606
  br i1 %132, label %133, label %134, !dbg !607

; <label>:133:                                    ; preds = %127
  store i32 0, i32* %3, align 4, !dbg !608
  br label %526, !dbg !608

; <label>:134:                                    ; preds = %127
  %135 = load i64, i64* %15, align 8, !dbg !609
  %136 = load i64, i64* %16, align 8, !dbg !610
  call void @ui_seamless_destroy_group(i64 %135, i64 %136), !dbg !611
  br label %522, !dbg !612

; <label>:137:                                    ; preds = %112
  %138 = load i8*, i8** %8, align 8, !dbg !613
  %139 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* %138) #9, !dbg !615
  %140 = icmp ne i32 %139, 0, !dbg !615
  br i1 %140, label %216, label %141, !dbg !616

; <label>:141:                                    ; preds = %137
  call void @llvm.dbg.declare(metadata i32* %20, metadata !617, metadata !93), !dbg !619
  call void @llvm.dbg.declare(metadata i32* %21, metadata !620, metadata !93), !dbg !621
  call void @llvm.dbg.declare(metadata i32* %22, metadata !622, metadata !93), !dbg !623
  call void @llvm.dbg.declare(metadata i32* %23, metadata !624, metadata !93), !dbg !625
  call void @llvm.dbg.declare(metadata [3 x i8]* %24, metadata !626, metadata !93), !dbg !630
  %142 = load i8*, i8** %14, align 8, !dbg !631
  %143 = icmp ne i8* %142, null, !dbg !631
  br i1 %143, label %145, label %144, !dbg !633

; <label>:144:                                    ; preds = %141
  store i32 0, i32* %3, align 4, !dbg !634
  br label %526, !dbg !634

; <label>:145:                                    ; preds = %141
  %146 = load i8*, i8** %9, align 8, !dbg !635
  %147 = call i64 @strtoul(i8* %146, i8** %17, i32 0) #7, !dbg !636
  store i64 %147, i64* %15, align 8, !dbg !637
  %148 = load i8*, i8** %17, align 8, !dbg !638
  %149 = load i8, i8* %148, align 1, !dbg !640
  %150 = icmp ne i8 %149, 0, !dbg !640
  br i1 %150, label %151, label %152, !dbg !641

; <label>:151:                                    ; preds = %145
  store i32 0, i32* %3, align 4, !dbg !642
  br label %526, !dbg !642

; <label>:152:                                    ; preds = %145
  %153 = load i8*, i8** %10, align 8, !dbg !643
  %154 = call i64 @strtoul(i8* %153, i8** %17, i32 0) #7, !dbg !644
  %155 = trunc i64 %154 to i32, !dbg !644
  store i32 %155, i32* %20, align 4, !dbg !645
  %156 = load i8*, i8** %17, align 8, !dbg !646
  %157 = load i8, i8* %156, align 1, !dbg !648
  %158 = icmp ne i8 %157, 0, !dbg !648
  br i1 %158, label %159, label %160, !dbg !649

; <label>:159:                                    ; preds = %152
  store i32 0, i32* %3, align 4, !dbg !650
  br label %526, !dbg !650

; <label>:160:                                    ; preds = %152
  %161 = load i8*, i8** %12, align 8, !dbg !651
  %162 = call i64 @strtoul(i8* %161, i8** %17, i32 0) #7, !dbg !652
  %163 = trunc i64 %162 to i32, !dbg !652
  store i32 %163, i32* %21, align 4, !dbg !653
  %164 = load i8*, i8** %17, align 8, !dbg !654
  %165 = load i8, i8* %164, align 1, !dbg !656
  %166 = icmp ne i8 %165, 0, !dbg !656
  br i1 %166, label %167, label %168, !dbg !657

; <label>:167:                                    ; preds = %160
  store i32 0, i32* %3, align 4, !dbg !658
  br label %526, !dbg !658

; <label>:168:                                    ; preds = %160
  %169 = load i8*, i8** %13, align 8, !dbg !659
  %170 = call i64 @strtoul(i8* %169, i8** %17, i32 0) #7, !dbg !660
  %171 = trunc i64 %170 to i32, !dbg !660
  store i32 %171, i32* %22, align 4, !dbg !661
  %172 = load i8*, i8** %17, align 8, !dbg !662
  %173 = load i8, i8* %172, align 1, !dbg !664
  %174 = icmp ne i8 %173, 0, !dbg !664
  br i1 %174, label %175, label %176, !dbg !665

; <label>:175:                                    ; preds = %168
  store i32 0, i32* %3, align 4, !dbg !666
  br label %526, !dbg !666

; <label>:176:                                    ; preds = %168
  %177 = getelementptr inbounds [3 x i8], [3 x i8]* %24, i64 0, i64 2, !dbg !667
  store i8 0, i8* %177, align 1, !dbg !668
  store i32 0, i32* %23, align 4, !dbg !669
  br label %178, !dbg !670

; <label>:178:                                    ; preds = %194, %176
  %179 = load i8*, i8** %14, align 8, !dbg !671
  %180 = load i8, i8* %179, align 1, !dbg !673
  %181 = sext i8 %180 to i32, !dbg !673
  %182 = icmp ne i32 %181, 0, !dbg !674
  br i1 %182, label %183, label %208, !dbg !675

; <label>:183:                                    ; preds = %178
  %184 = load i8*, i8** %14, align 8, !dbg !676
  %185 = load i8, i8* %184, align 1, !dbg !678
  %186 = getelementptr inbounds [3 x i8], [3 x i8]* %24, i64 0, i64 0, !dbg !679
  store i8 %185, i8* %186, align 1, !dbg !680
  %187 = load i8*, i8** %14, align 8, !dbg !681
  %188 = getelementptr inbounds i8, i8* %187, i32 1, !dbg !681
  store i8* %188, i8** %14, align 8, !dbg !681
  %189 = load i8*, i8** %14, align 8, !dbg !682
  %190 = load i8, i8* %189, align 1, !dbg !684
  %191 = sext i8 %190 to i32, !dbg !684
  %192 = icmp eq i32 %191, 0, !dbg !685
  br i1 %192, label %193, label %194, !dbg !686

; <label>:193:                                    ; preds = %183
  store i32 0, i32* %3, align 4, !dbg !687
  br label %526, !dbg !687

; <label>:194:                                    ; preds = %183
  %195 = load i8*, i8** %14, align 8, !dbg !688
  %196 = load i8, i8* %195, align 1, !dbg !689
  %197 = getelementptr inbounds [3 x i8], [3 x i8]* %24, i64 0, i64 1, !dbg !690
  store i8 %196, i8* %197, align 1, !dbg !691
  %198 = load i8*, i8** %14, align 8, !dbg !692
  %199 = getelementptr inbounds i8, i8* %198, i32 1, !dbg !692
  store i8* %199, i8** %14, align 8, !dbg !692
  %200 = getelementptr inbounds [3 x i8], [3 x i8]* %24, i32 0, i32 0, !dbg !693
  %201 = call i64 @strtol(i8* %200, i8** null, i32 16) #7, !dbg !694
  %202 = trunc i64 %201 to i8, !dbg !694
  %203 = load i32, i32* %23, align 4, !dbg !695
  %204 = sext i32 %203 to i64, !dbg !696
  %205 = getelementptr inbounds [1024 x i8], [1024 x i8]* @icon_buf, i64 0, i64 %204, !dbg !696
  store i8 %202, i8* %205, align 1, !dbg !697
  %206 = load i32, i32* %23, align 4, !dbg !698
  %207 = add nsw i32 %206, 1, !dbg !698
  store i32 %207, i32* %23, align 4, !dbg !698
  br label %178, !dbg !699, !llvm.loop !701

; <label>:208:                                    ; preds = %178
  %209 = load i64, i64* %15, align 8, !dbg !702
  %210 = load i8*, i8** %11, align 8, !dbg !703
  %211 = load i32, i32* %21, align 4, !dbg !704
  %212 = load i32, i32* %22, align 4, !dbg !705
  %213 = load i32, i32* %20, align 4, !dbg !706
  %214 = load i32, i32* %23, align 4, !dbg !707
  %215 = sext i32 %214 to i64, !dbg !707
  call void @ui_seamless_seticon(i64 %209, i8* %210, i32 %211, i32 %212, i32 %213, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @icon_buf, i32 0, i32 0), i64 %215), !dbg !708
  br label %521, !dbg !709

; <label>:216:                                    ; preds = %137
  %217 = load i8*, i8** %8, align 8, !dbg !710
  %218 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8* %217) #9, !dbg !712
  %219 = icmp ne i32 %218, 0, !dbg !712
  br i1 %219, label %252, label %220, !dbg !713

; <label>:220:                                    ; preds = %216
  call void @llvm.dbg.declare(metadata i32* %25, metadata !714, metadata !93), !dbg !716
  call void @llvm.dbg.declare(metadata i32* %26, metadata !717, metadata !93), !dbg !718
  %221 = load i8*, i8** %12, align 8, !dbg !719
  %222 = icmp ne i8* %221, null, !dbg !719
  br i1 %222, label %224, label %223, !dbg !721

; <label>:223:                                    ; preds = %220
  store i32 0, i32* %3, align 4, !dbg !722
  br label %526, !dbg !722

; <label>:224:                                    ; preds = %220
  %225 = load i8*, i8** %9, align 8, !dbg !723
  %226 = call i64 @strtoul(i8* %225, i8** %17, i32 0) #7, !dbg !724
  store i64 %226, i64* %15, align 8, !dbg !725
  %227 = load i8*, i8** %17, align 8, !dbg !726
  %228 = load i8, i8* %227, align 1, !dbg !728
  %229 = icmp ne i8 %228, 0, !dbg !728
  br i1 %229, label %230, label %231, !dbg !729

; <label>:230:                                    ; preds = %224
  store i32 0, i32* %3, align 4, !dbg !730
  br label %526, !dbg !730

; <label>:231:                                    ; preds = %224
  %232 = load i8*, i8** %11, align 8, !dbg !731
  %233 = call i64 @strtoul(i8* %232, i8** %17, i32 0) #7, !dbg !732
  %234 = trunc i64 %233 to i32, !dbg !732
  store i32 %234, i32* %25, align 4, !dbg !733
  %235 = load i8*, i8** %17, align 8, !dbg !734
  %236 = load i8, i8* %235, align 1, !dbg !736
  %237 = icmp ne i8 %236, 0, !dbg !736
  br i1 %237, label %238, label %239, !dbg !737

; <label>:238:                                    ; preds = %231
  store i32 0, i32* %3, align 4, !dbg !738
  br label %526, !dbg !738

; <label>:239:                                    ; preds = %231
  %240 = load i8*, i8** %12, align 8, !dbg !739
  %241 = call i64 @strtoul(i8* %240, i8** %17, i32 0) #7, !dbg !740
  %242 = trunc i64 %241 to i32, !dbg !740
  store i32 %242, i32* %26, align 4, !dbg !741
  %243 = load i8*, i8** %17, align 8, !dbg !742
  %244 = load i8, i8* %243, align 1, !dbg !744
  %245 = icmp ne i8 %244, 0, !dbg !744
  br i1 %245, label %246, label %247, !dbg !745

; <label>:246:                                    ; preds = %239
  store i32 0, i32* %3, align 4, !dbg !746
  br label %526, !dbg !746

; <label>:247:                                    ; preds = %239
  %248 = load i64, i64* %15, align 8, !dbg !747
  %249 = load i8*, i8** %10, align 8, !dbg !748
  %250 = load i32, i32* %25, align 4, !dbg !749
  %251 = load i32, i32* %26, align 4, !dbg !750
  call void @ui_seamless_delicon(i64 %248, i8* %249, i32 %250, i32 %251), !dbg !751
  br label %520, !dbg !752

; <label>:252:                                    ; preds = %216
  %253 = load i8*, i8** %8, align 8, !dbg !753
  %254 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* %253) #9, !dbg !755
  %255 = icmp ne i32 %254, 0, !dbg !755
  br i1 %255, label %313, label %256, !dbg !756

; <label>:256:                                    ; preds = %252
  call void @llvm.dbg.declare(metadata i32* %27, metadata !757, metadata !93), !dbg !759
  call void @llvm.dbg.declare(metadata i32* %28, metadata !760, metadata !93), !dbg !761
  call void @llvm.dbg.declare(metadata i32* %29, metadata !762, metadata !93), !dbg !763
  call void @llvm.dbg.declare(metadata i32* %30, metadata !764, metadata !93), !dbg !765
  %257 = load i8*, i8** %14, align 8, !dbg !766
  %258 = icmp ne i8* %257, null, !dbg !766
  br i1 %258, label %260, label %259, !dbg !768

; <label>:259:                                    ; preds = %256
  store i32 0, i32* %3, align 4, !dbg !769
  br label %526, !dbg !769

; <label>:260:                                    ; preds = %256
  %261 = load i8*, i8** %9, align 8, !dbg !770
  %262 = call i64 @strtoul(i8* %261, i8** %17, i32 0) #7, !dbg !771
  store i64 %262, i64* %15, align 8, !dbg !772
  %263 = load i8*, i8** %17, align 8, !dbg !773
  %264 = load i8, i8* %263, align 1, !dbg !775
  %265 = icmp ne i8 %264, 0, !dbg !775
  br i1 %265, label %266, label %267, !dbg !776

; <label>:266:                                    ; preds = %260
  store i32 0, i32* %3, align 4, !dbg !777
  br label %526, !dbg !777

; <label>:267:                                    ; preds = %260
  %268 = load i8*, i8** %10, align 8, !dbg !778
  %269 = call i64 @strtol(i8* %268, i8** %17, i32 0) #7, !dbg !779
  %270 = trunc i64 %269 to i32, !dbg !779
  store i32 %270, i32* %27, align 4, !dbg !780
  %271 = load i8*, i8** %17, align 8, !dbg !781
  %272 = load i8, i8* %271, align 1, !dbg !783
  %273 = icmp ne i8 %272, 0, !dbg !783
  br i1 %273, label %274, label %275, !dbg !784

; <label>:274:                                    ; preds = %267
  store i32 0, i32* %3, align 4, !dbg !785
  br label %526, !dbg !785

; <label>:275:                                    ; preds = %267
  %276 = load i8*, i8** %11, align 8, !dbg !786
  %277 = call i64 @strtol(i8* %276, i8** %17, i32 0) #7, !dbg !787
  %278 = trunc i64 %277 to i32, !dbg !787
  store i32 %278, i32* %28, align 4, !dbg !788
  %279 = load i8*, i8** %17, align 8, !dbg !789
  %280 = load i8, i8* %279, align 1, !dbg !791
  %281 = icmp ne i8 %280, 0, !dbg !791
  br i1 %281, label %282, label %283, !dbg !792

; <label>:282:                                    ; preds = %275
  store i32 0, i32* %3, align 4, !dbg !793
  br label %526, !dbg !793

; <label>:283:                                    ; preds = %275
  %284 = load i8*, i8** %12, align 8, !dbg !794
  %285 = call i64 @strtol(i8* %284, i8** %17, i32 0) #7, !dbg !795
  %286 = trunc i64 %285 to i32, !dbg !795
  store i32 %286, i32* %29, align 4, !dbg !796
  %287 = load i8*, i8** %17, align 8, !dbg !797
  %288 = load i8, i8* %287, align 1, !dbg !799
  %289 = icmp ne i8 %288, 0, !dbg !799
  br i1 %289, label %290, label %291, !dbg !800

; <label>:290:                                    ; preds = %283
  store i32 0, i32* %3, align 4, !dbg !801
  br label %526, !dbg !801

; <label>:291:                                    ; preds = %283
  %292 = load i8*, i8** %13, align 8, !dbg !802
  %293 = call i64 @strtol(i8* %292, i8** %17, i32 0) #7, !dbg !803
  %294 = trunc i64 %293 to i32, !dbg !803
  store i32 %294, i32* %30, align 4, !dbg !804
  %295 = load i8*, i8** %17, align 8, !dbg !805
  %296 = load i8, i8* %295, align 1, !dbg !807
  %297 = icmp ne i8 %296, 0, !dbg !807
  br i1 %297, label %298, label %299, !dbg !808

; <label>:298:                                    ; preds = %291
  store i32 0, i32* %3, align 4, !dbg !809
  br label %526, !dbg !809

; <label>:299:                                    ; preds = %291
  %300 = load i8*, i8** %14, align 8, !dbg !810
  %301 = call i64 @strtoul(i8* %300, i8** %17, i32 0) #7, !dbg !811
  store i64 %301, i64* %16, align 8, !dbg !812
  %302 = load i8*, i8** %17, align 8, !dbg !813
  %303 = load i8, i8* %302, align 1, !dbg !815
  %304 = icmp ne i8 %303, 0, !dbg !815
  br i1 %304, label %305, label %306, !dbg !816

; <label>:305:                                    ; preds = %299
  store i32 0, i32* %3, align 4, !dbg !817
  br label %526, !dbg !817

; <label>:306:                                    ; preds = %299
  %307 = load i64, i64* %15, align 8, !dbg !818
  %308 = load i32, i32* %27, align 4, !dbg !819
  %309 = load i32, i32* %28, align 4, !dbg !820
  %310 = load i32, i32* %29, align 4, !dbg !821
  %311 = load i32, i32* %30, align 4, !dbg !822
  %312 = load i64, i64* %16, align 8, !dbg !823
  call void @ui_seamless_move_window(i64 %307, i32 %308, i32 %309, i32 %310, i32 %311, i64 %312), !dbg !824
  br label %519, !dbg !825

; <label>:313:                                    ; preds = %252
  %314 = load i8*, i8** %8, align 8, !dbg !826
  %315 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* %314) #9, !dbg !828
  %316 = icmp ne i32 %315, 0, !dbg !828
  br i1 %316, label %342, label %317, !dbg !829

; <label>:317:                                    ; preds = %313
  call void @llvm.dbg.declare(metadata i64* %31, metadata !830, metadata !93), !dbg !832
  %318 = load i8*, i8** %9, align 8, !dbg !833
  %319 = call i64 @strtoul(i8* %318, i8** %17, i32 0) #7, !dbg !834
  store i64 %319, i64* %15, align 8, !dbg !835
  %320 = load i8*, i8** %17, align 8, !dbg !836
  %321 = load i8, i8* %320, align 1, !dbg !838
  %322 = icmp ne i8 %321, 0, !dbg !838
  br i1 %322, label %323, label %324, !dbg !839

; <label>:323:                                    ; preds = %317
  store i32 0, i32* %3, align 4, !dbg !840
  br label %526, !dbg !840

; <label>:324:                                    ; preds = %317
  %325 = load i8*, i8** %10, align 8, !dbg !841
  %326 = call i64 @strtoul(i8* %325, i8** %17, i32 0) #7, !dbg !842
  store i64 %326, i64* %31, align 8, !dbg !843
  %327 = load i8*, i8** %17, align 8, !dbg !844
  %328 = load i8, i8* %327, align 1, !dbg !846
  %329 = icmp ne i8 %328, 0, !dbg !846
  br i1 %329, label %330, label %331, !dbg !847

; <label>:330:                                    ; preds = %324
  store i32 0, i32* %3, align 4, !dbg !848
  br label %526, !dbg !848

; <label>:331:                                    ; preds = %324
  %332 = load i8*, i8** %11, align 8, !dbg !849
  %333 = call i64 @strtoul(i8* %332, i8** %17, i32 0) #7, !dbg !850
  store i64 %333, i64* %16, align 8, !dbg !851
  %334 = load i8*, i8** %17, align 8, !dbg !852
  %335 = load i8, i8* %334, align 1, !dbg !854
  %336 = icmp ne i8 %335, 0, !dbg !854
  br i1 %336, label %337, label %338, !dbg !855

; <label>:337:                                    ; preds = %331
  store i32 0, i32* %3, align 4, !dbg !856
  br label %526, !dbg !856

; <label>:338:                                    ; preds = %331
  %339 = load i64, i64* %15, align 8, !dbg !857
  %340 = load i64, i64* %31, align 8, !dbg !858
  %341 = load i64, i64* %16, align 8, !dbg !859
  call void @ui_seamless_restack_window(i64 %339, i64 %340, i64 %341), !dbg !860
  br label %518, !dbg !861

; <label>:342:                                    ; preds = %313
  %343 = load i8*, i8** %8, align 8, !dbg !862
  %344 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* %343) #9, !dbg !864
  %345 = icmp ne i32 %344, 0, !dbg !864
  br i1 %345, label %368, label %346, !dbg !865

; <label>:346:                                    ; preds = %342
  %347 = load i8*, i8** %11, align 8, !dbg !866
  %348 = icmp ne i8* %347, null, !dbg !866
  br i1 %348, label %350, label %349, !dbg !869

; <label>:349:                                    ; preds = %346
  store i32 0, i32* %3, align 4, !dbg !870
  br label %526, !dbg !870

; <label>:350:                                    ; preds = %346
  %351 = load i8*, i8** %9, align 8, !dbg !871
  %352 = call i64 @strtoul(i8* %351, i8** %17, i32 0) #7, !dbg !872
  store i64 %352, i64* %15, align 8, !dbg !873
  %353 = load i8*, i8** %17, align 8, !dbg !874
  %354 = load i8, i8* %353, align 1, !dbg !876
  %355 = icmp ne i8 %354, 0, !dbg !876
  br i1 %355, label %356, label %357, !dbg !877

; <label>:356:                                    ; preds = %350
  store i32 0, i32* %3, align 4, !dbg !878
  br label %526, !dbg !878

; <label>:357:                                    ; preds = %350
  %358 = load i8*, i8** %11, align 8, !dbg !879
  %359 = call i64 @strtoul(i8* %358, i8** %17, i32 0) #7, !dbg !880
  store i64 %359, i64* %16, align 8, !dbg !881
  %360 = load i8*, i8** %17, align 8, !dbg !882
  %361 = load i8, i8* %360, align 1, !dbg !884
  %362 = icmp ne i8 %361, 0, !dbg !884
  br i1 %362, label %363, label %364, !dbg !885

; <label>:363:                                    ; preds = %357
  store i32 0, i32* %3, align 4, !dbg !886
  br label %526, !dbg !886

; <label>:364:                                    ; preds = %357
  %365 = load i64, i64* %15, align 8, !dbg !887
  %366 = load i8*, i8** %10, align 8, !dbg !888
  %367 = load i64, i64* %16, align 8, !dbg !889
  call void @ui_seamless_settitle(i64 %365, i8* %366, i64 %367), !dbg !890
  br label %517, !dbg !891

; <label>:368:                                    ; preds = %342
  %369 = load i8*, i8** %8, align 8, !dbg !892
  %370 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* %369) #9, !dbg !894
  %371 = icmp ne i32 %370, 0, !dbg !894
  br i1 %371, label %402, label %372, !dbg !895

; <label>:372:                                    ; preds = %368
  call void @llvm.dbg.declare(metadata i32* %32, metadata !896, metadata !93), !dbg !898
  %373 = load i8*, i8** %11, align 8, !dbg !899
  %374 = icmp ne i8* %373, null, !dbg !899
  br i1 %374, label %376, label %375, !dbg !901

; <label>:375:                                    ; preds = %372
  store i32 0, i32* %3, align 4, !dbg !902
  br label %526, !dbg !902

; <label>:376:                                    ; preds = %372
  %377 = load i8*, i8** %9, align 8, !dbg !903
  %378 = call i64 @strtoul(i8* %377, i8** %17, i32 0) #7, !dbg !904
  store i64 %378, i64* %15, align 8, !dbg !905
  %379 = load i8*, i8** %17, align 8, !dbg !906
  %380 = load i8, i8* %379, align 1, !dbg !908
  %381 = icmp ne i8 %380, 0, !dbg !908
  br i1 %381, label %382, label %383, !dbg !909

; <label>:382:                                    ; preds = %376
  store i32 0, i32* %3, align 4, !dbg !910
  br label %526, !dbg !910

; <label>:383:                                    ; preds = %376
  %384 = load i8*, i8** %10, align 8, !dbg !911
  %385 = call i64 @strtoul(i8* %384, i8** %17, i32 0) #7, !dbg !912
  %386 = trunc i64 %385 to i32, !dbg !912
  store i32 %386, i32* %32, align 4, !dbg !913
  %387 = load i8*, i8** %17, align 8, !dbg !914
  %388 = load i8, i8* %387, align 1, !dbg !916
  %389 = icmp ne i8 %388, 0, !dbg !916
  br i1 %389, label %390, label %391, !dbg !917

; <label>:390:                                    ; preds = %383
  store i32 0, i32* %3, align 4, !dbg !918
  br label %526, !dbg !918

; <label>:391:                                    ; preds = %383
  %392 = load i8*, i8** %11, align 8, !dbg !919
  %393 = call i64 @strtoul(i8* %392, i8** %17, i32 0) #7, !dbg !920
  store i64 %393, i64* %16, align 8, !dbg !921
  %394 = load i8*, i8** %17, align 8, !dbg !922
  %395 = load i8, i8* %394, align 1, !dbg !924
  %396 = icmp ne i8 %395, 0, !dbg !924
  br i1 %396, label %397, label %398, !dbg !925

; <label>:397:                                    ; preds = %391
  store i32 0, i32* %3, align 4, !dbg !926
  br label %526, !dbg !926

; <label>:398:                                    ; preds = %391
  %399 = load i64, i64* %15, align 8, !dbg !927
  %400 = load i32, i32* %32, align 4, !dbg !928
  %401 = load i64, i64* %16, align 8, !dbg !929
  call void @ui_seamless_setstate(i64 %399, i32 %400, i64 %401), !dbg !930
  br label %516, !dbg !931

; <label>:402:                                    ; preds = %368
  %403 = load i8*, i8** %8, align 8, !dbg !932
  %404 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* %403) #9, !dbg !934
  %405 = icmp ne i32 %404, 0, !dbg !934
  br i1 %405, label %408, label %406, !dbg !935

; <label>:406:                                    ; preds = %402
  %407 = load i8*, i8** %4, align 8, !dbg !936
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0), i8* %407), !dbg !938
  br label %515, !dbg !939

; <label>:408:                                    ; preds = %402
  %409 = load i8*, i8** %8, align 8, !dbg !940
  %410 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* %409) #9, !dbg !942
  %411 = icmp ne i32 %410, 0, !dbg !942
  br i1 %411, label %425, label %412, !dbg !943

; <label>:412:                                    ; preds = %408
  %413 = load i8*, i8** %9, align 8, !dbg !944
  %414 = icmp ne i8* %413, null, !dbg !944
  br i1 %414, label %416, label %415, !dbg !947

; <label>:415:                                    ; preds = %412
  store i32 0, i32* %3, align 4, !dbg !948
  br label %526, !dbg !948

; <label>:416:                                    ; preds = %412
  %417 = load i8*, i8** %9, align 8, !dbg !949
  %418 = call i64 @strtoul(i8* %417, i8** %17, i32 0) #7, !dbg !950
  store i64 %418, i64* %16, align 8, !dbg !951
  %419 = load i8*, i8** %17, align 8, !dbg !952
  %420 = load i8, i8* %419, align 1, !dbg !954
  %421 = icmp ne i8 %420, 0, !dbg !954
  br i1 %421, label %422, label %423, !dbg !955

; <label>:422:                                    ; preds = %416
  store i32 0, i32* %3, align 4, !dbg !956
  br label %526, !dbg !956

; <label>:423:                                    ; preds = %416
  %424 = load i64, i64* %16, align 8, !dbg !957
  call void @ui_seamless_syncbegin(i64 %424), !dbg !958
  br label %514, !dbg !959

; <label>:425:                                    ; preds = %408
  %426 = load i8*, i8** %8, align 8, !dbg !960
  %427 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* %426) #9, !dbg !962
  %428 = icmp ne i32 %427, 0, !dbg !962
  br i1 %428, label %441, label %429, !dbg !963

; <label>:429:                                    ; preds = %425
  %430 = load i8*, i8** %9, align 8, !dbg !964
  %431 = icmp ne i8* %430, null, !dbg !964
  br i1 %431, label %433, label %432, !dbg !967

; <label>:432:                                    ; preds = %429
  store i32 0, i32* %3, align 4, !dbg !968
  br label %526, !dbg !968

; <label>:433:                                    ; preds = %429
  %434 = load i8*, i8** %9, align 8, !dbg !969
  %435 = call i64 @strtoul(i8* %434, i8** %17, i32 0) #7, !dbg !970
  store i64 %435, i64* %16, align 8, !dbg !971
  %436 = load i8*, i8** %17, align 8, !dbg !972
  %437 = load i8, i8* %436, align 1, !dbg !974
  %438 = icmp ne i8 %437, 0, !dbg !974
  br i1 %438, label %439, label %440, !dbg !975

; <label>:439:                                    ; preds = %433
  store i32 0, i32* %3, align 4, !dbg !976
  br label %526, !dbg !976

; <label>:440:                                    ; preds = %433
  br label %513, !dbg !977

; <label>:441:                                    ; preds = %425
  %442 = load i8*, i8** %8, align 8, !dbg !978
  %443 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* %442) #9, !dbg !980
  %444 = icmp ne i32 %443, 0, !dbg !980
  br i1 %444, label %463, label %445, !dbg !981

; <label>:445:                                    ; preds = %441
  %446 = load i8*, i8** %9, align 8, !dbg !982
  %447 = icmp ne i8* %446, null, !dbg !982
  br i1 %447, label %449, label %448, !dbg !985

; <label>:448:                                    ; preds = %445
  store i32 0, i32* %3, align 4, !dbg !986
  br label %526, !dbg !986

; <label>:449:                                    ; preds = %445
  %450 = load i8*, i8** %9, align 8, !dbg !987
  %451 = call i64 @strtoul(i8* %450, i8** %17, i32 0) #7, !dbg !988
  store i64 %451, i64* %16, align 8, !dbg !989
  %452 = load i8*, i8** %17, align 8, !dbg !990
  %453 = load i8, i8* %452, align 1, !dbg !992
  %454 = icmp ne i8 %453, 0, !dbg !992
  br i1 %454, label %455, label %456, !dbg !993

; <label>:455:                                    ; preds = %449
  store i32 0, i32* %3, align 4, !dbg !994
  br label %526, !dbg !994

; <label>:456:                                    ; preds = %449
  %457 = load i64, i64* %16, align 8, !dbg !995
  %458 = and i64 %457, 2, !dbg !996
  %459 = icmp ne i64 %458, 0, !dbg !997
  %460 = xor i1 %459, true, !dbg !997
  %461 = xor i1 %460, true, !dbg !998
  %462 = zext i1 %461 to i32, !dbg !998
  call void @ui_seamless_begin(i32 %462), !dbg !999
  br label %512, !dbg !1000

; <label>:463:                                    ; preds = %441
  %464 = load i8*, i8** %8, align 8, !dbg !1001
  %465 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* %464) #9, !dbg !1003
  %466 = icmp ne i32 %465, 0, !dbg !1003
  br i1 %466, label %477, label %467, !dbg !1004

; <label>:467:                                    ; preds = %463
  call void @llvm.dbg.declare(metadata i32* %33, metadata !1005, metadata !93), !dbg !1007
  %468 = load i8*, i8** %9, align 8, !dbg !1008
  %469 = call i64 @strtoul(i8* %468, i8** %17, i32 0) #7, !dbg !1009
  %470 = trunc i64 %469 to i32, !dbg !1009
  store i32 %470, i32* %33, align 4, !dbg !1010
  %471 = load i8*, i8** %17, align 8, !dbg !1011
  %472 = load i8, i8* %471, align 1, !dbg !1013
  %473 = icmp ne i8 %472, 0, !dbg !1013
  br i1 %473, label %474, label %475, !dbg !1014

; <label>:474:                                    ; preds = %467
  store i32 0, i32* %3, align 4, !dbg !1015
  br label %526, !dbg !1015

; <label>:475:                                    ; preds = %467
  %476 = load i32, i32* %33, align 4, !dbg !1016
  call void @ui_seamless_ack(i32 %476), !dbg !1017
  br label %511, !dbg !1018

; <label>:477:                                    ; preds = %463
  %478 = load i8*, i8** %8, align 8, !dbg !1019
  %479 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* %478) #9, !dbg !1021
  %480 = icmp ne i32 %479, 0, !dbg !1021
  br i1 %480, label %493, label %481, !dbg !1022

; <label>:481:                                    ; preds = %477
  %482 = load i8*, i8** %9, align 8, !dbg !1023
  %483 = icmp ne i8* %482, null, !dbg !1023
  br i1 %483, label %485, label %484, !dbg !1026

; <label>:484:                                    ; preds = %481
  store i32 0, i32* %3, align 4, !dbg !1027
  br label %526, !dbg !1027

; <label>:485:                                    ; preds = %481
  %486 = load i8*, i8** %9, align 8, !dbg !1028
  %487 = call i64 @strtoul(i8* %486, i8** %17, i32 0) #7, !dbg !1029
  store i64 %487, i64* %16, align 8, !dbg !1030
  %488 = load i8*, i8** %17, align 8, !dbg !1031
  %489 = load i8, i8* %488, align 1, !dbg !1033
  %490 = icmp ne i8 %489, 0, !dbg !1033
  br i1 %490, label %491, label %492, !dbg !1034

; <label>:491:                                    ; preds = %485
  store i32 0, i32* %3, align 4, !dbg !1035
  br label %526, !dbg !1035

; <label>:492:                                    ; preds = %485
  call void @ui_seamless_hide_desktop(), !dbg !1036
  br label %510, !dbg !1037

; <label>:493:                                    ; preds = %477
  %494 = load i8*, i8** %8, align 8, !dbg !1038
  %495 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* %494) #9, !dbg !1040
  %496 = icmp ne i32 %495, 0, !dbg !1040
  br i1 %496, label %509, label %497, !dbg !1041

; <label>:497:                                    ; preds = %493
  %498 = load i8*, i8** %9, align 8, !dbg !1042
  %499 = icmp ne i8* %498, null, !dbg !1042
  br i1 %499, label %501, label %500, !dbg !1045

; <label>:500:                                    ; preds = %497
  store i32 0, i32* %3, align 4, !dbg !1046
  br label %526, !dbg !1046

; <label>:501:                                    ; preds = %497
  %502 = load i8*, i8** %9, align 8, !dbg !1047
  %503 = call i64 @strtoul(i8* %502, i8** %17, i32 0) #7, !dbg !1048
  store i64 %503, i64* %16, align 8, !dbg !1049
  %504 = load i8*, i8** %17, align 8, !dbg !1050
  %505 = load i8, i8* %504, align 1, !dbg !1052
  %506 = icmp ne i8 %505, 0, !dbg !1052
  br i1 %506, label %507, label %508, !dbg !1053

; <label>:507:                                    ; preds = %501
  store i32 0, i32* %3, align 4, !dbg !1054
  br label %526, !dbg !1054

; <label>:508:                                    ; preds = %501
  call void @ui_seamless_unhide_desktop(), !dbg !1055
  br label %509, !dbg !1056

; <label>:509:                                    ; preds = %508, %493
  br label %510

; <label>:510:                                    ; preds = %509, %492
  br label %511

; <label>:511:                                    ; preds = %510, %475
  br label %512

; <label>:512:                                    ; preds = %511, %456
  br label %513

; <label>:513:                                    ; preds = %512, %440
  br label %514

; <label>:514:                                    ; preds = %513, %423
  br label %515

; <label>:515:                                    ; preds = %514, %406
  br label %516

; <label>:516:                                    ; preds = %515, %398
  br label %517

; <label>:517:                                    ; preds = %516, %364
  br label %518

; <label>:518:                                    ; preds = %517, %338
  br label %519

; <label>:519:                                    ; preds = %518, %306
  br label %520

; <label>:520:                                    ; preds = %519, %247
  br label %521

; <label>:521:                                    ; preds = %520, %208
  br label %522

; <label>:522:                                    ; preds = %521, %134
  br label %523

; <label>:523:                                    ; preds = %522, %109
  br label %524

; <label>:524:                                    ; preds = %523, %82
  %525 = load i8*, i8** %7, align 8, !dbg !1057
  call void @xfree(i8* %525), !dbg !1058
  store i32 1, i32* %3, align 4, !dbg !1059
  br label %526, !dbg !1059

; <label>:526:                                    ; preds = %524, %507, %500, %491, %484, %474, %455, %448, %439, %432, %422, %415, %397, %390, %382, %375, %363, %356, %349, %337, %330, %323, %305, %298, %290, %282, %274, %266, %259, %246, %238, %230, %223, %193, %175, %167, %159, %151, %144, %133, %126, %119, %108, %101, %94, %81, %74, %67, %60, %53
  %527 = load i32, i32* %3, align 4, !dbg !1060
  ret i32 %527, !dbg !1060
}

declare i8* @xstrdup(i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @seamless_get_token(i8**) #0 !dbg !1061 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !1065, metadata !93), !dbg !1066
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1067, metadata !93), !dbg !1068
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1069, metadata !93), !dbg !1070
  %6 = load i8**, i8*** %3, align 8, !dbg !1071
  %7 = load i8*, i8** %6, align 8, !dbg !1072
  store i8* %7, i8** %5, align 8, !dbg !1073
  %8 = load i8*, i8** %5, align 8, !dbg !1074
  %9 = icmp ne i8* %8, null, !dbg !1074
  br i1 %9, label %11, label %10, !dbg !1076

; <label>:10:                                     ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !1077
  br label %25, !dbg !1077

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %5, align 8, !dbg !1078
  %13 = call i8* @strchr(i8* %12, i32 44) #9, !dbg !1079
  store i8* %13, i8** %4, align 8, !dbg !1080
  %14 = load i8*, i8** %4, align 8, !dbg !1081
  %15 = icmp ne i8* %14, null, !dbg !1081
  br i1 %15, label %16, label %21, !dbg !1083

; <label>:16:                                     ; preds = %11
  %17 = load i8*, i8** %4, align 8, !dbg !1084
  store i8 0, i8* %17, align 1, !dbg !1086
  %18 = load i8*, i8** %4, align 8, !dbg !1087
  %19 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !1088
  %20 = load i8**, i8*** %3, align 8, !dbg !1089
  store i8* %19, i8** %20, align 8, !dbg !1090
  br label %23, !dbg !1091

; <label>:21:                                     ; preds = %11
  %22 = load i8**, i8*** %3, align 8, !dbg !1092
  store i8* null, i8** %22, align 8, !dbg !1094
  br label %23

; <label>:23:                                     ; preds = %21, %16
  %24 = load i8*, i8** %5, align 8, !dbg !1095
  store i8* %24, i8** %2, align 8, !dbg !1096
  br label %25, !dbg !1096

; <label>:25:                                     ; preds = %23, %10
  %26 = load i8*, i8** %2, align 8, !dbg !1097
  ret i8* %26, !dbg !1097
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #4

declare void @ui_seamless_create_window(i64, i64, i64, i64) #1

declare void @ui_seamless_destroy_window(i64, i64) #1

declare void @ui_seamless_destroy_group(i64, i64) #1

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #4

declare void @ui_seamless_seticon(i64, i8*, i32, i32, i32, i8*, i64) #1

declare void @ui_seamless_delicon(i64, i8*, i32, i32) #1

declare void @ui_seamless_move_window(i64, i32, i32, i32, i32, i64) #1

declare void @ui_seamless_restack_window(i64, i64, i64) #1

declare void @ui_seamless_settitle(i64, i8*, i64) #1

declare void @ui_seamless_setstate(i64, i32, i64) #1

declare void @ui_seamless_syncbegin(i64) #1

declare void @ui_seamless_begin(i32) #1

declare void @ui_seamless_ack(i32) #1

declare void @ui_seamless_hide_desktop() #1

declare void @ui_seamless_unhide_desktop() #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #4

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #6

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

declare i8* @utils_string_escape(i8*) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

declare %struct.stream* @channel_init(%struct._VCHANNEL*, i32) #1

declare void @channel_send(%struct.stream*, %struct._VCHANNEL*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!71, !72}
!llvm.ident = !{!73}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !22, globals: !27)
!1 = !DIFile(filename: "[inter]seamless.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2 = !{!3, !15}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_subject_t", file: !4, line: 46, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "utils.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "GUI", value: 0)
!7 = !DIEnumerator(name: "Keyboard", value: 1)
!8 = !DIEnumerator(name: "Clipboard", value: 2)
!9 = !DIEnumerator(name: "Sound", value: 3)
!10 = !DIEnumerator(name: "Protocol", value: 4)
!11 = !DIEnumerator(name: "Graphics", value: 5)
!12 = !DIEnumerator(name: "Core", value: 6)
!13 = !DIEnumerator(name: "SmartCard", value: 7)
!14 = !DIEnumerator(name: "Disk", value: 8)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_level_t", file: !4, line: 37, size: 32, align: 32, elements: !16)
!16 = !{!17, !18, !19, !20, !21}
!17 = !DIEnumerator(name: "Debug", value: 0)
!18 = !DIEnumerator(name: "Verbose", value: 1)
!19 = !DIEnumerator(name: "Warning", value: 2)
!20 = !DIEnumerator(name: "Error", value: 3)
!21 = !DIEnumerator(name: "Notice", value: 4)
!22 = !{!23, !24, !25}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!24 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!27 = !{!28, !65, !66, !70}
!28 = distinct !DIGlobalVariable(name: "seamless_channel", scope: !0, file: !29, line: 27, type: !30, isLocal: true, isDefinition: true, variable: %struct._VCHANNEL** @seamless_channel)
!29 = !DIFile(filename: "seamless.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "VCHANNEL", file: !32, line: 169, baseType: !33)
!32 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_VCHANNEL", file: !32, line: 161, size: 768, align: 64, elements: !34)
!34 = !{!35, !38, !42, !44, !59}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_id", scope: !33, file: !32, line: 163, baseType: !36, size: 16, align: 16)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !32, line: 41, baseType: !37)
!37 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !33, file: !32, line: 164, baseType: !39, size: 64, align: 8, offset: 16)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, align: 8, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 8)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !33, file: !32, line: 165, baseType: !43, size: 32, align: 32, offset: 96)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !32, line: 43, baseType: !24)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !33, file: !32, line: 166, baseType: !45, size: 576, align: 64, offset: 128)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !46, line: 25, size: 576, align: 64, elements: !47)
!46 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!47 = !{!48, !51, !52, !53, !54, !55, !56, !57, !58}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !45, file: !46, line: 27, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !45, file: !46, line: 28, baseType: !49, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !45, file: !46, line: 29, baseType: !49, size: 64, align: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !45, file: !46, line: 30, baseType: !24, size: 32, align: 32, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !45, file: !46, line: 33, baseType: !49, size: 64, align: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !45, file: !46, line: 34, baseType: !49, size: 64, align: 64, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !45, file: !46, line: 35, baseType: !49, size: 64, align: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !45, file: !46, line: 36, baseType: !49, size: 64, align: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !45, file: !46, line: 37, baseType: !49, size: 64, align: 64, offset: 512)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !33, file: !32, line: 167, baseType: !60, size: 64, align: 64, offset: 704)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !63}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !46, line: 40, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!65 = distinct !DIGlobalVariable(name: "seamless_serial", scope: !0, file: !29, line: 28, type: !24, isLocal: true, isDefinition: true, variable: i32* @seamless_serial)
!66 = distinct !DIGlobalVariable(name: "icon_buf", scope: !0, file: !29, line: 30, type: !67, isLocal: true, isDefinition: true, variable: [1024 x i8]* @icon_buf)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8192, align: 8, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 1024)
!70 = distinct !DIGlobalVariable(name: "seamless_rest", scope: !0, file: !29, line: 29, type: !25, isLocal: true, isDefinition: true, variable: i8** @seamless_rest)
!71 = !{i32 2, !"Dwarf Version", i32 4}
!72 = !{i32 2, !"Debug Info Version", i32 3}
!73 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!74 = distinct !DISubprogram(name: "seamless_init", scope: !29, file: !29, line: 385, type: !75, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!75 = !DISubroutineType(types: !76)
!76 = !{!77}
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !32, line: 28, baseType: !78)
!78 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!79 = !{}
!80 = !DILocation(line: 387, column: 7, scope: !81)
!81 = distinct !DILexicalBlock(scope: !74, file: !29, line: 387, column: 6)
!82 = !DILocation(line: 387, column: 6, scope: !74)
!83 = !DILocation(line: 388, column: 3, scope: !81)
!84 = !DILocation(line: 390, column: 18, scope: !74)
!85 = !DILocation(line: 393, column: 3, scope: !74)
!86 = !DILocation(line: 392, column: 19, scope: !74)
!87 = !DILocation(line: 395, column: 10, scope: !74)
!88 = !DILocation(line: 395, column: 27, scope: !74)
!89 = !DILocation(line: 395, column: 2, scope: !74)
!90 = !DILocation(line: 396, column: 1, scope: !74)
!91 = distinct !DISubprogram(name: "seamless_process", scope: !29, file: !29, line: 369, type: !61, isLocal: true, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!92 = !DILocalVariable(name: "s", arg: 1, scope: !91, file: !29, line: 369, type: !63)
!93 = !DIExpression()
!94 = !DILocation(line: 369, column: 25, scope: !91)
!95 = !DILocalVariable(name: "pkglen", scope: !91, file: !29, line: 371, type: !24)
!96 = !DILocation(line: 371, column: 15, scope: !91)
!97 = !DILocalVariable(name: "buf", scope: !91, file: !29, line: 372, type: !25)
!98 = !DILocation(line: 372, column: 8, scope: !91)
!99 = !DILocation(line: 374, column: 11, scope: !91)
!100 = !DILocation(line: 374, column: 14, scope: !91)
!101 = !DILocation(line: 374, column: 20, scope: !91)
!102 = !DILocation(line: 374, column: 23, scope: !91)
!103 = !DILocation(line: 374, column: 18, scope: !91)
!104 = !DILocation(line: 374, column: 9, scope: !91)
!105 = !DILocation(line: 376, column: 16, scope: !91)
!106 = !DILocation(line: 376, column: 23, scope: !91)
!107 = !DILocation(line: 376, column: 8, scope: !91)
!108 = !DILocation(line: 376, column: 6, scope: !91)
!109 = !DILocation(line: 377, column: 12, scope: !110)
!110 = distinct !DILexicalBlock(scope: !91, file: !29, line: 377, column: 2)
!111 = !DILocation(line: 377, column: 25, scope: !110)
!112 = !DILocation(line: 377, column: 28, scope: !110)
!113 = !DILocation(line: 377, column: 30, scope: !110)
!114 = !DILocation(line: 377, column: 37, scope: !110)
!115 = !DILocation(line: 377, column: 41, scope: !110)
!116 = !DILocation(line: 377, column: 4, scope: !110)
!117 = !DILocation(line: 377, column: 50, scope: !110)
!118 = !DILocation(line: 377, column: 57, scope: !110)
!119 = !DILocation(line: 377, column: 61, scope: !110)
!120 = !DILocation(line: 377, column: 46, scope: !110)
!121 = !DILocation(line: 377, column: 65, scope: !110)
!122 = !DILocation(line: 378, column: 19, scope: !91)
!123 = !DILocation(line: 378, column: 2, scope: !91)
!124 = !DILocation(line: 380, column: 8, scope: !91)
!125 = !DILocation(line: 380, column: 2, scope: !91)
!126 = !DILocation(line: 381, column: 1, scope: !91)
!127 = distinct !DISubprogram(name: "seamless_reset_state", scope: !29, file: !29, line: 399, type: !128, isLocal: false, isDefinition: true, scopeLine: 400, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!128 = !DISubroutineType(types: !129)
!129 = !{null}
!130 = !DILocation(line: 401, column: 6, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !29, line: 401, column: 6)
!132 = !DILocation(line: 401, column: 20, scope: !131)
!133 = !DILocation(line: 401, column: 6, scope: !127)
!134 = !DILocation(line: 403, column: 9, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !29, line: 402, column: 2)
!136 = !DILocation(line: 403, column: 3, scope: !135)
!137 = !DILocation(line: 404, column: 17, scope: !135)
!138 = !DILocation(line: 405, column: 2, scope: !135)
!139 = !DILocation(line: 406, column: 1, scope: !127)
!140 = distinct !DISubprogram(name: "seamless_send_sync", scope: !29, file: !29, line: 448, type: !141, isLocal: false, isDefinition: true, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!141 = !DISubroutineType(types: !142)
!142 = !{!24}
!143 = !DILocation(line: 450, column: 7, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !29, line: 450, column: 6)
!145 = !DILocation(line: 450, column: 6, scope: !140)
!146 = !DILocation(line: 451, column: 3, scope: !144)
!147 = !DILocation(line: 453, column: 9, scope: !140)
!148 = !DILocation(line: 453, column: 2, scope: !140)
!149 = !DILocation(line: 454, column: 1, scope: !140)
!150 = distinct !DISubprogram(name: "seamless_send", scope: !29, file: !29, line: 409, type: !151, isLocal: true, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!151 = !DISubroutineType(types: !152)
!152 = !{!24, !153, !153, null}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!155 = !DILocalVariable(name: "command", arg: 1, scope: !150, file: !29, line: 409, type: !153)
!156 = !DILocation(line: 409, column: 27, scope: !150)
!157 = !DILocalVariable(name: "format", arg: 2, scope: !150, file: !29, line: 409, type: !153)
!158 = !DILocation(line: 409, column: 48, scope: !150)
!159 = !DILocalVariable(name: "s", scope: !150, file: !29, line: 411, type: !63)
!160 = !DILocation(line: 411, column: 9, scope: !150)
!161 = !DILocalVariable(name: "len", scope: !150, file: !29, line: 412, type: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !163, line: 216, baseType: !164)
!163 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!164 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!165 = !DILocation(line: 412, column: 9, scope: !150)
!166 = !DILocalVariable(name: "argp", scope: !150, file: !29, line: 413, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !168, line: 79, baseType: !169)
!168 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !170, line: 40, baseType: !171)
!170 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 413, baseType: !172)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 192, align: 64, elements: !179)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 413, size: 192, align: 64, elements: !174)
!174 = !{!175, !176, !177, !178}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !173, file: !1, line: 413, baseType: !24, size: 32, align: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !173, file: !1, line: 413, baseType: !24, size: 32, align: 32, offset: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !173, file: !1, line: 413, baseType: !23, size: 64, align: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !173, file: !1, line: 413, baseType: !23, size: 64, align: 64, offset: 128)
!179 = !{!180}
!180 = !DISubrange(count: 1)
!181 = !DILocation(line: 413, column: 10, scope: !150)
!182 = !DILocalVariable(name: "escaped", scope: !150, file: !29, line: 414, type: !25)
!183 = !DILocation(line: 414, column: 8, scope: !150)
!184 = !DILocalVariable(name: "buf", scope: !150, file: !29, line: 414, type: !185)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8200, align: 8, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 1025)
!188 = !DILocation(line: 414, column: 17, scope: !150)
!189 = !DILocation(line: 416, column: 17, scope: !150)
!190 = !DILocation(line: 416, column: 49, scope: !150)
!191 = !DILocation(line: 416, column: 58, scope: !150)
!192 = !DILocation(line: 416, column: 8, scope: !150)
!193 = !DILocation(line: 416, column: 6, scope: !150)
!194 = !DILocation(line: 418, column: 1, scope: !150)
!195 = !DILocation(line: 418, column: 5, scope: !150)
!196 = !DILocation(line: 418, column: 2, scope: !150)
!197 = !DILocation(line: 418, column: 2, scope: !198)
!198 = !DILexicalBlockFile(scope: !150, file: !29, discriminator: 1)
!199 = !DILocation(line: 418, column: 18, scope: !200)
!200 = !DILexicalBlockFile(scope: !150, file: !29, discriminator: 2)
!201 = !DILocation(line: 418, column: 2, scope: !202)
!202 = !DILexicalBlockFile(scope: !150, file: !29, discriminator: 3)
!203 = !DILocation(line: 420, column: 1, scope: !150)
!204 = !DILocation(line: 421, column: 19, scope: !150)
!205 = !DILocation(line: 421, column: 25, scope: !150)
!206 = !DILocation(line: 421, column: 23, scope: !150)
!207 = !DILocation(line: 421, column: 44, scope: !150)
!208 = !DILocation(line: 421, column: 42, scope: !150)
!209 = !DILocation(line: 421, column: 48, scope: !150)
!210 = !DILocation(line: 421, column: 53, scope: !150)
!211 = !DILocation(line: 421, column: 61, scope: !150)
!212 = !DILocation(line: 421, column: 9, scope: !150)
!213 = !DILocation(line: 421, column: 6, scope: !150)
!214 = !DILocation(line: 422, column: 1, scope: !150)
!215 = !DILocation(line: 424, column: 1, scope: !150)
!216 = !DILocation(line: 424, column: 5, scope: !150)
!217 = !DILocation(line: 424, column: 2, scope: !150)
!218 = !DILocation(line: 424, column: 2, scope: !198)
!219 = !DILocation(line: 424, column: 18, scope: !200)
!220 = !DILocation(line: 424, column: 2, scope: !202)
!221 = !DILocation(line: 426, column: 32, scope: !150)
!222 = !DILocation(line: 426, column: 12, scope: !150)
!223 = !DILocation(line: 426, column: 10, scope: !150)
!224 = !DILocation(line: 427, column: 17, scope: !150)
!225 = !DILocation(line: 427, column: 41, scope: !150)
!226 = !DILocation(line: 427, column: 8, scope: !150)
!227 = !DILocation(line: 427, column: 6, scope: !150)
!228 = !DILocation(line: 428, column: 7, scope: !150)
!229 = !DILocation(line: 428, column: 2, scope: !150)
!230 = !DILocation(line: 429, column: 1, scope: !150)
!231 = !DILocation(line: 429, column: 5, scope: !150)
!232 = !DILocation(line: 429, column: 2, scope: !150)
!233 = !DILocation(line: 429, column: 2, scope: !198)
!234 = !DILocation(line: 429, column: 18, scope: !200)
!235 = !DILocation(line: 429, column: 2, scope: !202)
!236 = !DILocation(line: 431, column: 6, scope: !150)
!237 = !DILocation(line: 431, column: 2, scope: !150)
!238 = !DILocation(line: 431, column: 11, scope: !150)
!239 = !DILocation(line: 432, column: 6, scope: !150)
!240 = !DILocation(line: 432, column: 10, scope: !150)
!241 = !DILocation(line: 432, column: 2, scope: !150)
!242 = !DILocation(line: 432, column: 15, scope: !150)
!243 = !DILocation(line: 434, column: 5, scope: !150)
!244 = !DILocation(line: 436, column: 19, scope: !150)
!245 = !DILocation(line: 436, column: 37, scope: !150)
!246 = !DILocation(line: 436, column: 6, scope: !150)
!247 = !DILocation(line: 436, column: 4, scope: !150)
!248 = !DILocation(line: 437, column: 12, scope: !249)
!249 = distinct !DILexicalBlock(scope: !150, file: !29, line: 437, column: 2)
!250 = !DILocation(line: 437, column: 16, scope: !249)
!251 = !DILocation(line: 437, column: 4, scope: !249)
!252 = !DILocation(line: 437, column: 22, scope: !249)
!253 = !DILocation(line: 437, column: 38, scope: !249)
!254 = !DILocation(line: 437, column: 29, scope: !249)
!255 = !DILocation(line: 437, column: 33, scope: !249)
!256 = !DILocation(line: 437, column: 35, scope: !249)
!257 = !DILocation(line: 437, column: 57, scope: !150)
!258 = !DILocation(line: 437, column: 61, scope: !150)
!259 = !DILocation(line: 437, column: 46, scope: !150)
!260 = !DILocation(line: 437, column: 50, scope: !150)
!261 = !DILocation(line: 437, column: 54, scope: !150)
!262 = !DILocation(line: 439, column: 55, scope: !150)
!263 = !DILocation(line: 439, column: 2, scope: !150)
!264 = !DILocation(line: 441, column: 15, scope: !150)
!265 = !DILocation(line: 441, column: 18, scope: !150)
!266 = !DILocation(line: 441, column: 2, scope: !150)
!267 = !DILocation(line: 443, column: 24, scope: !150)
!268 = !DILocation(line: 443, column: 2, scope: !150)
!269 = distinct !DISubprogram(name: "seamless_send_state", scope: !29, file: !29, line: 458, type: !270, isLocal: false, isDefinition: true, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!270 = !DISubroutineType(types: !271)
!271 = !{!24, !164, !24, !164}
!272 = !DILocalVariable(name: "id", arg: 1, scope: !269, file: !29, line: 458, type: !164)
!273 = !DILocation(line: 458, column: 35, scope: !269)
!274 = !DILocalVariable(name: "state", arg: 2, scope: !269, file: !29, line: 458, type: !24)
!275 = !DILocation(line: 458, column: 52, scope: !269)
!276 = !DILocalVariable(name: "flags", arg: 3, scope: !269, file: !29, line: 458, type: !164)
!277 = !DILocation(line: 458, column: 73, scope: !269)
!278 = !DILocation(line: 460, column: 7, scope: !279)
!279 = distinct !DILexicalBlock(scope: !269, file: !29, line: 460, column: 6)
!280 = !DILocation(line: 460, column: 6, scope: !269)
!281 = !DILocation(line: 461, column: 3, scope: !279)
!282 = !DILocation(line: 463, column: 54, scope: !269)
!283 = !DILocation(line: 463, column: 58, scope: !269)
!284 = !DILocation(line: 463, column: 65, scope: !269)
!285 = !DILocation(line: 463, column: 9, scope: !269)
!286 = !DILocation(line: 463, column: 2, scope: !269)
!287 = !DILocation(line: 464, column: 1, scope: !269)
!288 = distinct !DISubprogram(name: "seamless_send_position", scope: !29, file: !29, line: 468, type: !289, isLocal: false, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!289 = !DISubroutineType(types: !290)
!290 = !{!24, !164, !78, !78, !78, !78, !164}
!291 = !DILocalVariable(name: "id", arg: 1, scope: !288, file: !29, line: 468, type: !164)
!292 = !DILocation(line: 468, column: 38, scope: !288)
!293 = !DILocalVariable(name: "x", arg: 2, scope: !288, file: !29, line: 468, type: !78)
!294 = !DILocation(line: 468, column: 46, scope: !288)
!295 = !DILocalVariable(name: "y", arg: 3, scope: !288, file: !29, line: 468, type: !78)
!296 = !DILocation(line: 468, column: 53, scope: !288)
!297 = !DILocalVariable(name: "width", arg: 4, scope: !288, file: !29, line: 468, type: !78)
!298 = !DILocation(line: 468, column: 60, scope: !288)
!299 = !DILocalVariable(name: "height", arg: 5, scope: !288, file: !29, line: 468, type: !78)
!300 = !DILocation(line: 468, column: 71, scope: !288)
!301 = !DILocalVariable(name: "flags", arg: 6, scope: !288, file: !29, line: 468, type: !164)
!302 = !DILocation(line: 468, column: 93, scope: !288)
!303 = !DILocation(line: 470, column: 64, scope: !288)
!304 = !DILocation(line: 470, column: 68, scope: !288)
!305 = !DILocation(line: 470, column: 71, scope: !288)
!306 = !DILocation(line: 470, column: 74, scope: !288)
!307 = !DILocation(line: 470, column: 81, scope: !288)
!308 = !DILocation(line: 471, column: 9, scope: !288)
!309 = !DILocation(line: 470, column: 9, scope: !288)
!310 = !DILocation(line: 470, column: 2, scope: !288)
!311 = distinct !DISubprogram(name: "seamless_select_timeout", scope: !29, file: !29, line: 477, type: !312, isLocal: false, isDefinition: true, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !314}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !316, line: 30, size: 128, align: 64, elements: !317)
!316 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!317 = !{!318, !322}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !315, file: !316, line: 32, baseType: !319, size: 64, align: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !320, line: 139, baseType: !321)
!320 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!321 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !315, file: !316, line: 33, baseType: !323, size: 64, align: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !320, line: 141, baseType: !321)
!324 = !DILocalVariable(name: "tv", arg: 1, scope: !311, file: !29, line: 477, type: !314)
!325 = !DILocation(line: 477, column: 41, scope: !311)
!326 = !DILocalVariable(name: "ourtimeout", scope: !311, file: !29, line: 479, type: !315)
!327 = !DILocation(line: 479, column: 17, scope: !311)
!328 = !DILocation(line: 481, column: 6, scope: !329)
!329 = distinct !DILexicalBlock(scope: !311, file: !29, line: 481, column: 6)
!330 = !DILocation(line: 481, column: 6, scope: !311)
!331 = !DILocation(line: 483, column: 9, scope: !332)
!332 = distinct !DILexicalBlock(scope: !333, file: !29, line: 483, column: 6)
!333 = distinct !DILexicalBlock(scope: !329, file: !29, line: 482, column: 2)
!334 = !DILocation(line: 483, column: 6, scope: !332)
!335 = !DILocation(line: 483, column: 16, scope: !332)
!336 = !DILocation(line: 483, column: 6, scope: !333)
!337 = !DILocation(line: 483, column: 9, scope: !338)
!338 = !DILexicalBlockFile(scope: !332, file: !29, discriminator: 1)
!339 = !DILocation(line: 483, column: 6, scope: !338)
!340 = !DILocation(line: 483, column: 7, scope: !338)
!341 = !DILocation(line: 483, column: 9, scope: !342)
!342 = !DILexicalBlockFile(scope: !332, file: !29, discriminator: 2)
!343 = !DILocation(line: 483, column: 6, scope: !342)
!344 = !DILocation(line: 485, column: 28, scope: !345)
!345 = distinct !DILexicalBlock(scope: !332, file: !29, line: 484, column: 3)
!346 = !DILocation(line: 485, column: 4, scope: !345)
!347 = !DILocation(line: 485, column: 8, scope: !345)
!348 = !DILocation(line: 485, column: 15, scope: !345)
!349 = !DILocation(line: 486, column: 29, scope: !345)
!350 = !DILocation(line: 486, column: 4, scope: !345)
!351 = !DILocation(line: 486, column: 8, scope: !345)
!352 = !DILocation(line: 486, column: 16, scope: !345)
!353 = !DILocation(line: 487, column: 3, scope: !345)
!354 = !DILocation(line: 488, column: 2, scope: !333)
!355 = !DILocation(line: 489, column: 1, scope: !311)
!356 = distinct !DISubprogram(name: "seamless_send_zchange", scope: !29, file: !29, line: 493, type: !357, isLocal: false, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!357 = !DISubroutineType(types: !358)
!358 = !{!24, !164, !164, !164}
!359 = !DILocalVariable(name: "id", arg: 1, scope: !356, file: !29, line: 493, type: !164)
!360 = !DILocation(line: 493, column: 37, scope: !356)
!361 = !DILocalVariable(name: "below", arg: 2, scope: !356, file: !29, line: 493, type: !164)
!362 = !DILocation(line: 493, column: 55, scope: !356)
!363 = !DILocalVariable(name: "flags", arg: 3, scope: !356, file: !29, line: 493, type: !164)
!364 = !DILocation(line: 493, column: 76, scope: !356)
!365 = !DILocation(line: 495, column: 7, scope: !366)
!366 = distinct !DILexicalBlock(scope: !356, file: !29, line: 495, column: 6)
!367 = !DILocation(line: 495, column: 6, scope: !356)
!368 = !DILocation(line: 496, column: 3, scope: !366)
!369 = !DILocation(line: 498, column: 59, scope: !356)
!370 = !DILocation(line: 498, column: 63, scope: !356)
!371 = !DILocation(line: 498, column: 70, scope: !356)
!372 = !DILocation(line: 498, column: 9, scope: !356)
!373 = !DILocation(line: 498, column: 2, scope: !356)
!374 = !DILocation(line: 499, column: 1, scope: !356)
!375 = distinct !DISubprogram(name: "seamless_send_focus", scope: !29, file: !29, line: 504, type: !376, isLocal: false, isDefinition: true, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!376 = !DISubroutineType(types: !377)
!377 = !{!24, !164, !164}
!378 = !DILocalVariable(name: "id", arg: 1, scope: !375, file: !29, line: 504, type: !164)
!379 = !DILocation(line: 504, column: 35, scope: !375)
!380 = !DILocalVariable(name: "flags", arg: 2, scope: !375, file: !29, line: 504, type: !164)
!381 = !DILocation(line: 504, column: 53, scope: !375)
!382 = !DILocation(line: 506, column: 7, scope: !383)
!383 = distinct !DILexicalBlock(scope: !375, file: !29, line: 506, column: 6)
!384 = !DILocation(line: 506, column: 6, scope: !375)
!385 = !DILocation(line: 507, column: 3, scope: !383)
!386 = !DILocation(line: 509, column: 49, scope: !375)
!387 = !DILocation(line: 509, column: 53, scope: !375)
!388 = !DILocation(line: 509, column: 9, scope: !375)
!389 = !DILocation(line: 509, column: 2, scope: !375)
!390 = !DILocation(line: 510, column: 1, scope: !375)
!391 = distinct !DISubprogram(name: "seamless_send_destroy", scope: !29, file: !29, line: 514, type: !392, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!392 = !DISubroutineType(types: !393)
!393 = !{!24, !164}
!394 = !DILocalVariable(name: "id", arg: 1, scope: !391, file: !29, line: 514, type: !164)
!395 = !DILocation(line: 514, column: 37, scope: !391)
!396 = !DILocation(line: 516, column: 45, scope: !391)
!397 = !DILocation(line: 516, column: 9, scope: !391)
!398 = !DILocation(line: 516, column: 2, scope: !391)
!399 = distinct !DISubprogram(name: "seamless_send_spawn", scope: !29, file: !29, line: 520, type: !400, isLocal: false, isDefinition: true, scopeLine: 521, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!400 = !DISubroutineType(types: !401)
!401 = !{!24, !25}
!402 = !DILocalVariable(name: "cmdline", arg: 1, scope: !399, file: !29, line: 520, type: !25)
!403 = !DILocation(line: 520, column: 27, scope: !399)
!404 = !DILocalVariable(name: "res", scope: !399, file: !29, line: 522, type: !24)
!405 = !DILocation(line: 522, column: 15, scope: !399)
!406 = !DILocation(line: 523, column: 7, scope: !407)
!407 = distinct !DILexicalBlock(scope: !399, file: !29, line: 523, column: 6)
!408 = !DILocation(line: 523, column: 6, scope: !399)
!409 = !DILocation(line: 524, column: 3, scope: !407)
!410 = !DILocation(line: 526, column: 31, scope: !399)
!411 = !DILocation(line: 526, column: 8, scope: !399)
!412 = !DILocation(line: 526, column: 6, scope: !399)
!413 = !DILocation(line: 528, column: 9, scope: !399)
!414 = !DILocation(line: 528, column: 2, scope: !399)
!415 = !DILocation(line: 529, column: 1, scope: !399)
!416 = distinct !DISubprogram(name: "seamless_send_persistent", scope: !29, file: !29, line: 532, type: !417, isLocal: false, isDefinition: true, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!417 = !DISubroutineType(types: !418)
!418 = !{!24, !77}
!419 = !DILocalVariable(name: "enable", arg: 1, scope: !416, file: !29, line: 532, type: !77)
!420 = !DILocation(line: 532, column: 34, scope: !416)
!421 = !DILocalVariable(name: "res", scope: !416, file: !29, line: 534, type: !24)
!422 = !DILocation(line: 534, column: 15, scope: !416)
!423 = !DILocation(line: 535, column: 7, scope: !424)
!424 = distinct !DILexicalBlock(scope: !416, file: !29, line: 535, column: 6)
!425 = !DILocation(line: 535, column: 6, scope: !416)
!426 = !DILocation(line: 536, column: 3, scope: !424)
!427 = !DILocation(line: 539, column: 9, scope: !416)
!428 = !DILocation(line: 538, column: 2, scope: !416)
!429 = !DILocation(line: 540, column: 42, scope: !416)
!430 = !DILocation(line: 540, column: 8, scope: !416)
!431 = !DILocation(line: 540, column: 6, scope: !416)
!432 = !DILocation(line: 542, column: 9, scope: !416)
!433 = !DILocation(line: 542, column: 2, scope: !416)
!434 = !DILocation(line: 543, column: 1, scope: !416)
!435 = distinct !DISubprogram(name: "seamless_line_handler", scope: !29, file: !29, line: 358, type: !436, isLocal: true, isDefinition: true, scopeLine: 359, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!436 = !DISubroutineType(types: !437)
!437 = !{!77, !153, !23}
!438 = !DILocalVariable(name: "line", arg: 1, scope: !435, file: !29, line: 358, type: !153)
!439 = !DILocation(line: 358, column: 35, scope: !435)
!440 = !DILocalVariable(name: "data", arg: 2, scope: !435, file: !29, line: 358, type: !23)
!441 = !DILocation(line: 358, column: 47, scope: !435)
!442 = !DILocation(line: 360, column: 29, scope: !443)
!443 = distinct !DILexicalBlock(scope: !435, file: !29, line: 360, column: 6)
!444 = !DILocation(line: 360, column: 35, scope: !443)
!445 = !DILocation(line: 360, column: 7, scope: !443)
!446 = !DILocation(line: 360, column: 6, scope: !435)
!447 = !DILocation(line: 362, column: 74, scope: !448)
!448 = distinct !DILexicalBlock(scope: !443, file: !29, line: 361, column: 2)
!449 = !DILocation(line: 362, column: 3, scope: !448)
!450 = !DILocation(line: 363, column: 2, scope: !448)
!451 = !DILocation(line: 364, column: 2, scope: !435)
!452 = distinct !DISubprogram(name: "seamless_process_line", scope: !29, file: !29, line: 57, type: !436, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!453 = !DILocalVariable(name: "line", arg: 1, scope: !452, file: !29, line: 57, type: !153)
!454 = !DILocation(line: 57, column: 35, scope: !452)
!455 = !DILocalVariable(name: "data", arg: 2, scope: !452, file: !29, line: 57, type: !23)
!456 = !DILocation(line: 57, column: 47, scope: !452)
!457 = !DILocation(line: 59, column: 9, scope: !452)
!458 = !DILocalVariable(name: "p", scope: !452, file: !29, line: 60, type: !25)
!459 = !DILocation(line: 60, column: 8, scope: !452)
!460 = !DILocalVariable(name: "l", scope: !452, file: !29, line: 60, type: !25)
!461 = !DILocation(line: 60, column: 12, scope: !452)
!462 = !DILocalVariable(name: "tok1", scope: !452, file: !29, line: 61, type: !25)
!463 = !DILocation(line: 61, column: 8, scope: !452)
!464 = !DILocalVariable(name: "tok3", scope: !452, file: !29, line: 61, type: !25)
!465 = !DILocation(line: 61, column: 15, scope: !452)
!466 = !DILocalVariable(name: "tok4", scope: !452, file: !29, line: 61, type: !25)
!467 = !DILocation(line: 61, column: 22, scope: !452)
!468 = !DILocalVariable(name: "tok5", scope: !452, file: !29, line: 61, type: !25)
!469 = !DILocation(line: 61, column: 29, scope: !452)
!470 = !DILocalVariable(name: "tok6", scope: !452, file: !29, line: 61, type: !25)
!471 = !DILocation(line: 61, column: 36, scope: !452)
!472 = !DILocalVariable(name: "tok7", scope: !452, file: !29, line: 61, type: !25)
!473 = !DILocation(line: 61, column: 43, scope: !452)
!474 = !DILocalVariable(name: "tok8", scope: !452, file: !29, line: 61, type: !25)
!475 = !DILocation(line: 61, column: 50, scope: !452)
!476 = !DILocalVariable(name: "id", scope: !452, file: !29, line: 62, type: !164)
!477 = !DILocation(line: 62, column: 16, scope: !452)
!478 = !DILocalVariable(name: "flags", scope: !452, file: !29, line: 62, type: !164)
!479 = !DILocation(line: 62, column: 20, scope: !452)
!480 = !DILocalVariable(name: "endptr", scope: !452, file: !29, line: 63, type: !25)
!481 = !DILocation(line: 63, column: 8, scope: !452)
!482 = !DILocation(line: 65, column: 14, scope: !452)
!483 = !DILocation(line: 65, column: 6, scope: !452)
!484 = !DILocation(line: 65, column: 4, scope: !452)
!485 = !DILocation(line: 66, column: 6, scope: !452)
!486 = !DILocation(line: 66, column: 4, scope: !452)
!487 = !DILocation(line: 68, column: 59, scope: !452)
!488 = !DILocation(line: 68, column: 2, scope: !452)
!489 = !DILocation(line: 70, column: 9, scope: !452)
!490 = !DILocation(line: 70, column: 7, scope: !452)
!491 = !DILocation(line: 71, column: 8, scope: !452)
!492 = !DILocation(line: 72, column: 9, scope: !452)
!493 = !DILocation(line: 72, column: 7, scope: !452)
!494 = !DILocation(line: 73, column: 9, scope: !452)
!495 = !DILocation(line: 73, column: 7, scope: !452)
!496 = !DILocation(line: 74, column: 9, scope: !452)
!497 = !DILocation(line: 74, column: 7, scope: !452)
!498 = !DILocation(line: 75, column: 9, scope: !452)
!499 = !DILocation(line: 75, column: 7, scope: !452)
!500 = !DILocation(line: 76, column: 9, scope: !452)
!501 = !DILocation(line: 76, column: 7, scope: !452)
!502 = !DILocation(line: 77, column: 9, scope: !452)
!503 = !DILocation(line: 77, column: 7, scope: !452)
!504 = !DILocation(line: 79, column: 24, scope: !505)
!505 = distinct !DILexicalBlock(scope: !452, file: !29, line: 79, column: 6)
!506 = !DILocation(line: 79, column: 7, scope: !505)
!507 = !DILocation(line: 79, column: 6, scope: !452)
!508 = !DILocalVariable(name: "group", scope: !509, file: !29, line: 81, type: !164)
!509 = distinct !DILexicalBlock(scope: !505, file: !29, line: 80, column: 2)
!510 = !DILocation(line: 81, column: 17, scope: !509)
!511 = !DILocalVariable(name: "parent", scope: !509, file: !29, line: 81, type: !164)
!512 = !DILocation(line: 81, column: 24, scope: !509)
!513 = !DILocation(line: 82, column: 8, scope: !514)
!514 = distinct !DILexicalBlock(scope: !509, file: !29, line: 82, column: 7)
!515 = !DILocation(line: 82, column: 7, scope: !509)
!516 = !DILocation(line: 83, column: 4, scope: !514)
!517 = !DILocation(line: 85, column: 16, scope: !509)
!518 = !DILocation(line: 85, column: 8, scope: !509)
!519 = !DILocation(line: 85, column: 6, scope: !509)
!520 = !DILocation(line: 86, column: 8, scope: !521)
!521 = distinct !DILexicalBlock(scope: !509, file: !29, line: 86, column: 7)
!522 = !DILocation(line: 86, column: 7, scope: !521)
!523 = !DILocation(line: 86, column: 7, scope: !509)
!524 = !DILocation(line: 87, column: 4, scope: !521)
!525 = !DILocation(line: 89, column: 19, scope: !509)
!526 = !DILocation(line: 89, column: 11, scope: !509)
!527 = !DILocation(line: 89, column: 9, scope: !509)
!528 = !DILocation(line: 90, column: 8, scope: !529)
!529 = distinct !DILexicalBlock(scope: !509, file: !29, line: 90, column: 7)
!530 = !DILocation(line: 90, column: 7, scope: !529)
!531 = !DILocation(line: 90, column: 7, scope: !509)
!532 = !DILocation(line: 91, column: 4, scope: !529)
!533 = !DILocation(line: 93, column: 20, scope: !509)
!534 = !DILocation(line: 93, column: 12, scope: !509)
!535 = !DILocation(line: 93, column: 10, scope: !509)
!536 = !DILocation(line: 94, column: 8, scope: !537)
!537 = distinct !DILexicalBlock(scope: !509, file: !29, line: 94, column: 7)
!538 = !DILocation(line: 94, column: 7, scope: !537)
!539 = !DILocation(line: 94, column: 7, scope: !509)
!540 = !DILocation(line: 95, column: 4, scope: !537)
!541 = !DILocation(line: 97, column: 19, scope: !509)
!542 = !DILocation(line: 97, column: 11, scope: !509)
!543 = !DILocation(line: 97, column: 9, scope: !509)
!544 = !DILocation(line: 98, column: 8, scope: !545)
!545 = distinct !DILexicalBlock(scope: !509, file: !29, line: 98, column: 7)
!546 = !DILocation(line: 98, column: 7, scope: !545)
!547 = !DILocation(line: 98, column: 7, scope: !509)
!548 = !DILocation(line: 99, column: 4, scope: !545)
!549 = !DILocation(line: 101, column: 29, scope: !509)
!550 = !DILocation(line: 101, column: 33, scope: !509)
!551 = !DILocation(line: 101, column: 40, scope: !509)
!552 = !DILocation(line: 101, column: 48, scope: !509)
!553 = !DILocation(line: 101, column: 3, scope: !509)
!554 = !DILocation(line: 102, column: 2, scope: !509)
!555 = !DILocation(line: 103, column: 30, scope: !556)
!556 = distinct !DILexicalBlock(scope: !505, file: !29, line: 103, column: 11)
!557 = !DILocation(line: 103, column: 12, scope: !556)
!558 = !DILocation(line: 103, column: 11, scope: !505)
!559 = !DILocation(line: 105, column: 8, scope: !560)
!560 = distinct !DILexicalBlock(scope: !561, file: !29, line: 105, column: 7)
!561 = distinct !DILexicalBlock(scope: !556, file: !29, line: 104, column: 2)
!562 = !DILocation(line: 105, column: 7, scope: !561)
!563 = !DILocation(line: 106, column: 4, scope: !560)
!564 = !DILocation(line: 108, column: 16, scope: !561)
!565 = !DILocation(line: 108, column: 8, scope: !561)
!566 = !DILocation(line: 108, column: 6, scope: !561)
!567 = !DILocation(line: 109, column: 8, scope: !568)
!568 = distinct !DILexicalBlock(scope: !561, file: !29, line: 109, column: 7)
!569 = !DILocation(line: 109, column: 7, scope: !568)
!570 = !DILocation(line: 109, column: 7, scope: !561)
!571 = !DILocation(line: 110, column: 4, scope: !568)
!572 = !DILocation(line: 112, column: 19, scope: !561)
!573 = !DILocation(line: 112, column: 11, scope: !561)
!574 = !DILocation(line: 112, column: 9, scope: !561)
!575 = !DILocation(line: 113, column: 8, scope: !576)
!576 = distinct !DILexicalBlock(scope: !561, file: !29, line: 113, column: 7)
!577 = !DILocation(line: 113, column: 7, scope: !576)
!578 = !DILocation(line: 113, column: 7, scope: !561)
!579 = !DILocation(line: 114, column: 4, scope: !576)
!580 = !DILocation(line: 116, column: 30, scope: !561)
!581 = !DILocation(line: 116, column: 34, scope: !561)
!582 = !DILocation(line: 116, column: 3, scope: !561)
!583 = !DILocation(line: 118, column: 2, scope: !561)
!584 = !DILocation(line: 119, column: 33, scope: !585)
!585 = distinct !DILexicalBlock(scope: !556, file: !29, line: 119, column: 11)
!586 = !DILocation(line: 119, column: 12, scope: !585)
!587 = !DILocation(line: 119, column: 11, scope: !556)
!588 = !DILocation(line: 121, column: 8, scope: !589)
!589 = distinct !DILexicalBlock(scope: !590, file: !29, line: 121, column: 7)
!590 = distinct !DILexicalBlock(scope: !585, file: !29, line: 120, column: 2)
!591 = !DILocation(line: 121, column: 7, scope: !590)
!592 = !DILocation(line: 122, column: 4, scope: !589)
!593 = !DILocation(line: 124, column: 16, scope: !590)
!594 = !DILocation(line: 124, column: 8, scope: !590)
!595 = !DILocation(line: 124, column: 6, scope: !590)
!596 = !DILocation(line: 125, column: 8, scope: !597)
!597 = distinct !DILexicalBlock(scope: !590, file: !29, line: 125, column: 7)
!598 = !DILocation(line: 125, column: 7, scope: !597)
!599 = !DILocation(line: 125, column: 7, scope: !590)
!600 = !DILocation(line: 126, column: 4, scope: !597)
!601 = !DILocation(line: 128, column: 19, scope: !590)
!602 = !DILocation(line: 128, column: 11, scope: !590)
!603 = !DILocation(line: 128, column: 9, scope: !590)
!604 = !DILocation(line: 129, column: 8, scope: !605)
!605 = distinct !DILexicalBlock(scope: !590, file: !29, line: 129, column: 7)
!606 = !DILocation(line: 129, column: 7, scope: !605)
!607 = !DILocation(line: 129, column: 7, scope: !590)
!608 = !DILocation(line: 130, column: 4, scope: !605)
!609 = !DILocation(line: 132, column: 29, scope: !590)
!610 = !DILocation(line: 132, column: 33, scope: !590)
!611 = !DILocation(line: 132, column: 3, scope: !590)
!612 = !DILocation(line: 133, column: 2, scope: !590)
!613 = !DILocation(line: 134, column: 30, scope: !614)
!614 = distinct !DILexicalBlock(scope: !585, file: !29, line: 134, column: 11)
!615 = !DILocation(line: 134, column: 12, scope: !614)
!616 = !DILocation(line: 134, column: 11, scope: !585)
!617 = !DILocalVariable(name: "chunk", scope: !618, file: !29, line: 136, type: !78)
!618 = distinct !DILexicalBlock(scope: !614, file: !29, line: 135, column: 2)
!619 = !DILocation(line: 136, column: 7, scope: !618)
!620 = !DILocalVariable(name: "width", scope: !618, file: !29, line: 136, type: !78)
!621 = !DILocation(line: 136, column: 14, scope: !618)
!622 = !DILocalVariable(name: "height", scope: !618, file: !29, line: 136, type: !78)
!623 = !DILocation(line: 136, column: 21, scope: !618)
!624 = !DILocalVariable(name: "len", scope: !618, file: !29, line: 136, type: !78)
!625 = !DILocation(line: 136, column: 29, scope: !618)
!626 = !DILocalVariable(name: "byte", scope: !618, file: !29, line: 137, type: !627)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 24, align: 8, elements: !628)
!628 = !{!629}
!629 = !DISubrange(count: 3)
!630 = !DILocation(line: 137, column: 8, scope: !618)
!631 = !DILocation(line: 139, column: 8, scope: !632)
!632 = distinct !DILexicalBlock(scope: !618, file: !29, line: 139, column: 7)
!633 = !DILocation(line: 139, column: 7, scope: !618)
!634 = !DILocation(line: 140, column: 4, scope: !632)
!635 = !DILocation(line: 142, column: 16, scope: !618)
!636 = !DILocation(line: 142, column: 8, scope: !618)
!637 = !DILocation(line: 142, column: 6, scope: !618)
!638 = !DILocation(line: 143, column: 8, scope: !639)
!639 = distinct !DILexicalBlock(scope: !618, file: !29, line: 143, column: 7)
!640 = !DILocation(line: 143, column: 7, scope: !639)
!641 = !DILocation(line: 143, column: 7, scope: !618)
!642 = !DILocation(line: 144, column: 4, scope: !639)
!643 = !DILocation(line: 146, column: 19, scope: !618)
!644 = !DILocation(line: 146, column: 11, scope: !618)
!645 = !DILocation(line: 146, column: 9, scope: !618)
!646 = !DILocation(line: 147, column: 8, scope: !647)
!647 = distinct !DILexicalBlock(scope: !618, file: !29, line: 147, column: 7)
!648 = !DILocation(line: 147, column: 7, scope: !647)
!649 = !DILocation(line: 147, column: 7, scope: !618)
!650 = !DILocation(line: 148, column: 4, scope: !647)
!651 = !DILocation(line: 150, column: 19, scope: !618)
!652 = !DILocation(line: 150, column: 11, scope: !618)
!653 = !DILocation(line: 150, column: 9, scope: !618)
!654 = !DILocation(line: 151, column: 8, scope: !655)
!655 = distinct !DILexicalBlock(scope: !618, file: !29, line: 151, column: 7)
!656 = !DILocation(line: 151, column: 7, scope: !655)
!657 = !DILocation(line: 151, column: 7, scope: !618)
!658 = !DILocation(line: 152, column: 4, scope: !655)
!659 = !DILocation(line: 154, column: 20, scope: !618)
!660 = !DILocation(line: 154, column: 12, scope: !618)
!661 = !DILocation(line: 154, column: 10, scope: !618)
!662 = !DILocation(line: 155, column: 8, scope: !663)
!663 = distinct !DILexicalBlock(scope: !618, file: !29, line: 155, column: 7)
!664 = !DILocation(line: 155, column: 7, scope: !663)
!665 = !DILocation(line: 155, column: 7, scope: !618)
!666 = !DILocation(line: 156, column: 4, scope: !663)
!667 = !DILocation(line: 158, column: 3, scope: !618)
!668 = !DILocation(line: 158, column: 11, scope: !618)
!669 = !DILocation(line: 159, column: 7, scope: !618)
!670 = !DILocation(line: 160, column: 3, scope: !618)
!671 = !DILocation(line: 160, column: 11, scope: !672)
!672 = !DILexicalBlockFile(scope: !618, file: !29, discriminator: 1)
!673 = !DILocation(line: 160, column: 10, scope: !672)
!674 = !DILocation(line: 160, column: 16, scope: !672)
!675 = !DILocation(line: 160, column: 3, scope: !672)
!676 = !DILocation(line: 162, column: 15, scope: !677)
!677 = distinct !DILexicalBlock(scope: !618, file: !29, line: 161, column: 3)
!678 = !DILocation(line: 162, column: 14, scope: !677)
!679 = !DILocation(line: 162, column: 4, scope: !677)
!680 = !DILocation(line: 162, column: 12, scope: !677)
!681 = !DILocation(line: 163, column: 8, scope: !677)
!682 = !DILocation(line: 164, column: 9, scope: !683)
!683 = distinct !DILexicalBlock(scope: !677, file: !29, line: 164, column: 8)
!684 = !DILocation(line: 164, column: 8, scope: !683)
!685 = !DILocation(line: 164, column: 14, scope: !683)
!686 = !DILocation(line: 164, column: 8, scope: !677)
!687 = !DILocation(line: 165, column: 5, scope: !683)
!688 = !DILocation(line: 166, column: 15, scope: !677)
!689 = !DILocation(line: 166, column: 14, scope: !677)
!690 = !DILocation(line: 166, column: 4, scope: !677)
!691 = !DILocation(line: 166, column: 12, scope: !677)
!692 = !DILocation(line: 167, column: 8, scope: !677)
!693 = !DILocation(line: 169, column: 27, scope: !677)
!694 = !DILocation(line: 169, column: 20, scope: !677)
!695 = !DILocation(line: 169, column: 13, scope: !677)
!696 = !DILocation(line: 169, column: 4, scope: !677)
!697 = !DILocation(line: 169, column: 18, scope: !677)
!698 = !DILocation(line: 170, column: 7, scope: !677)
!699 = !DILocation(line: 160, column: 3, scope: !700)
!700 = !DILexicalBlockFile(scope: !618, file: !29, discriminator: 2)
!701 = distinct !{!701, !670}
!702 = !DILocation(line: 173, column: 23, scope: !618)
!703 = !DILocation(line: 173, column: 27, scope: !618)
!704 = !DILocation(line: 173, column: 33, scope: !618)
!705 = !DILocation(line: 173, column: 40, scope: !618)
!706 = !DILocation(line: 173, column: 48, scope: !618)
!707 = !DILocation(line: 173, column: 65, scope: !618)
!708 = !DILocation(line: 173, column: 3, scope: !618)
!709 = !DILocation(line: 174, column: 2, scope: !618)
!710 = !DILocation(line: 175, column: 30, scope: !711)
!711 = distinct !DILexicalBlock(scope: !614, file: !29, line: 175, column: 11)
!712 = !DILocation(line: 175, column: 12, scope: !711)
!713 = !DILocation(line: 175, column: 11, scope: !614)
!714 = !DILocalVariable(name: "width", scope: !715, file: !29, line: 177, type: !78)
!715 = distinct !DILexicalBlock(scope: !711, file: !29, line: 176, column: 2)
!716 = !DILocation(line: 177, column: 7, scope: !715)
!717 = !DILocalVariable(name: "height", scope: !715, file: !29, line: 177, type: !78)
!718 = !DILocation(line: 177, column: 14, scope: !715)
!719 = !DILocation(line: 179, column: 8, scope: !720)
!720 = distinct !DILexicalBlock(scope: !715, file: !29, line: 179, column: 7)
!721 = !DILocation(line: 179, column: 7, scope: !715)
!722 = !DILocation(line: 180, column: 4, scope: !720)
!723 = !DILocation(line: 182, column: 16, scope: !715)
!724 = !DILocation(line: 182, column: 8, scope: !715)
!725 = !DILocation(line: 182, column: 6, scope: !715)
!726 = !DILocation(line: 183, column: 8, scope: !727)
!727 = distinct !DILexicalBlock(scope: !715, file: !29, line: 183, column: 7)
!728 = !DILocation(line: 183, column: 7, scope: !727)
!729 = !DILocation(line: 183, column: 7, scope: !715)
!730 = !DILocation(line: 184, column: 4, scope: !727)
!731 = !DILocation(line: 186, column: 19, scope: !715)
!732 = !DILocation(line: 186, column: 11, scope: !715)
!733 = !DILocation(line: 186, column: 9, scope: !715)
!734 = !DILocation(line: 187, column: 8, scope: !735)
!735 = distinct !DILexicalBlock(scope: !715, file: !29, line: 187, column: 7)
!736 = !DILocation(line: 187, column: 7, scope: !735)
!737 = !DILocation(line: 187, column: 7, scope: !715)
!738 = !DILocation(line: 188, column: 4, scope: !735)
!739 = !DILocation(line: 190, column: 20, scope: !715)
!740 = !DILocation(line: 190, column: 12, scope: !715)
!741 = !DILocation(line: 190, column: 10, scope: !715)
!742 = !DILocation(line: 191, column: 8, scope: !743)
!743 = distinct !DILexicalBlock(scope: !715, file: !29, line: 191, column: 7)
!744 = !DILocation(line: 191, column: 7, scope: !743)
!745 = !DILocation(line: 191, column: 7, scope: !715)
!746 = !DILocation(line: 192, column: 4, scope: !743)
!747 = !DILocation(line: 194, column: 23, scope: !715)
!748 = !DILocation(line: 194, column: 27, scope: !715)
!749 = !DILocation(line: 194, column: 33, scope: !715)
!750 = !DILocation(line: 194, column: 40, scope: !715)
!751 = !DILocation(line: 194, column: 3, scope: !715)
!752 = !DILocation(line: 195, column: 2, scope: !715)
!753 = !DILocation(line: 196, column: 31, scope: !754)
!754 = distinct !DILexicalBlock(scope: !711, file: !29, line: 196, column: 11)
!755 = !DILocation(line: 196, column: 12, scope: !754)
!756 = !DILocation(line: 196, column: 11, scope: !711)
!757 = !DILocalVariable(name: "x", scope: !758, file: !29, line: 198, type: !78)
!758 = distinct !DILexicalBlock(scope: !754, file: !29, line: 197, column: 2)
!759 = !DILocation(line: 198, column: 7, scope: !758)
!760 = !DILocalVariable(name: "y", scope: !758, file: !29, line: 198, type: !78)
!761 = !DILocation(line: 198, column: 10, scope: !758)
!762 = !DILocalVariable(name: "width", scope: !758, file: !29, line: 198, type: !78)
!763 = !DILocation(line: 198, column: 13, scope: !758)
!764 = !DILocalVariable(name: "height", scope: !758, file: !29, line: 198, type: !78)
!765 = !DILocation(line: 198, column: 20, scope: !758)
!766 = !DILocation(line: 200, column: 8, scope: !767)
!767 = distinct !DILexicalBlock(scope: !758, file: !29, line: 200, column: 7)
!768 = !DILocation(line: 200, column: 7, scope: !758)
!769 = !DILocation(line: 201, column: 4, scope: !767)
!770 = !DILocation(line: 203, column: 16, scope: !758)
!771 = !DILocation(line: 203, column: 8, scope: !758)
!772 = !DILocation(line: 203, column: 6, scope: !758)
!773 = !DILocation(line: 204, column: 8, scope: !774)
!774 = distinct !DILexicalBlock(scope: !758, file: !29, line: 204, column: 7)
!775 = !DILocation(line: 204, column: 7, scope: !774)
!776 = !DILocation(line: 204, column: 7, scope: !758)
!777 = !DILocation(line: 205, column: 4, scope: !774)
!778 = !DILocation(line: 207, column: 14, scope: !758)
!779 = !DILocation(line: 207, column: 7, scope: !758)
!780 = !DILocation(line: 207, column: 5, scope: !758)
!781 = !DILocation(line: 208, column: 8, scope: !782)
!782 = distinct !DILexicalBlock(scope: !758, file: !29, line: 208, column: 7)
!783 = !DILocation(line: 208, column: 7, scope: !782)
!784 = !DILocation(line: 208, column: 7, scope: !758)
!785 = !DILocation(line: 209, column: 4, scope: !782)
!786 = !DILocation(line: 210, column: 14, scope: !758)
!787 = !DILocation(line: 210, column: 7, scope: !758)
!788 = !DILocation(line: 210, column: 5, scope: !758)
!789 = !DILocation(line: 211, column: 8, scope: !790)
!790 = distinct !DILexicalBlock(scope: !758, file: !29, line: 211, column: 7)
!791 = !DILocation(line: 211, column: 7, scope: !790)
!792 = !DILocation(line: 211, column: 7, scope: !758)
!793 = !DILocation(line: 212, column: 4, scope: !790)
!794 = !DILocation(line: 214, column: 18, scope: !758)
!795 = !DILocation(line: 214, column: 11, scope: !758)
!796 = !DILocation(line: 214, column: 9, scope: !758)
!797 = !DILocation(line: 215, column: 8, scope: !798)
!798 = distinct !DILexicalBlock(scope: !758, file: !29, line: 215, column: 7)
!799 = !DILocation(line: 215, column: 7, scope: !798)
!800 = !DILocation(line: 215, column: 7, scope: !758)
!801 = !DILocation(line: 216, column: 4, scope: !798)
!802 = !DILocation(line: 217, column: 19, scope: !758)
!803 = !DILocation(line: 217, column: 12, scope: !758)
!804 = !DILocation(line: 217, column: 10, scope: !758)
!805 = !DILocation(line: 218, column: 8, scope: !806)
!806 = distinct !DILexicalBlock(scope: !758, file: !29, line: 218, column: 7)
!807 = !DILocation(line: 218, column: 7, scope: !806)
!808 = !DILocation(line: 218, column: 7, scope: !758)
!809 = !DILocation(line: 219, column: 4, scope: !806)
!810 = !DILocation(line: 221, column: 19, scope: !758)
!811 = !DILocation(line: 221, column: 11, scope: !758)
!812 = !DILocation(line: 221, column: 9, scope: !758)
!813 = !DILocation(line: 222, column: 8, scope: !814)
!814 = distinct !DILexicalBlock(scope: !758, file: !29, line: 222, column: 7)
!815 = !DILocation(line: 222, column: 7, scope: !814)
!816 = !DILocation(line: 222, column: 7, scope: !758)
!817 = !DILocation(line: 223, column: 4, scope: !814)
!818 = !DILocation(line: 225, column: 27, scope: !758)
!819 = !DILocation(line: 225, column: 31, scope: !758)
!820 = !DILocation(line: 225, column: 34, scope: !758)
!821 = !DILocation(line: 225, column: 37, scope: !758)
!822 = !DILocation(line: 225, column: 44, scope: !758)
!823 = !DILocation(line: 225, column: 52, scope: !758)
!824 = !DILocation(line: 225, column: 3, scope: !758)
!825 = !DILocation(line: 226, column: 2, scope: !758)
!826 = !DILocation(line: 227, column: 30, scope: !827)
!827 = distinct !DILexicalBlock(scope: !754, file: !29, line: 227, column: 11)
!828 = !DILocation(line: 227, column: 12, scope: !827)
!829 = !DILocation(line: 227, column: 11, scope: !754)
!830 = !DILocalVariable(name: "behind", scope: !831, file: !29, line: 229, type: !164)
!831 = distinct !DILexicalBlock(scope: !827, file: !29, line: 228, column: 2)
!832 = !DILocation(line: 229, column: 17, scope: !831)
!833 = !DILocation(line: 231, column: 16, scope: !831)
!834 = !DILocation(line: 231, column: 8, scope: !831)
!835 = !DILocation(line: 231, column: 6, scope: !831)
!836 = !DILocation(line: 232, column: 8, scope: !837)
!837 = distinct !DILexicalBlock(scope: !831, file: !29, line: 232, column: 7)
!838 = !DILocation(line: 232, column: 7, scope: !837)
!839 = !DILocation(line: 232, column: 7, scope: !831)
!840 = !DILocation(line: 233, column: 4, scope: !837)
!841 = !DILocation(line: 235, column: 20, scope: !831)
!842 = !DILocation(line: 235, column: 12, scope: !831)
!843 = !DILocation(line: 235, column: 10, scope: !831)
!844 = !DILocation(line: 236, column: 8, scope: !845)
!845 = distinct !DILexicalBlock(scope: !831, file: !29, line: 236, column: 7)
!846 = !DILocation(line: 236, column: 7, scope: !845)
!847 = !DILocation(line: 236, column: 7, scope: !831)
!848 = !DILocation(line: 237, column: 4, scope: !845)
!849 = !DILocation(line: 239, column: 19, scope: !831)
!850 = !DILocation(line: 239, column: 11, scope: !831)
!851 = !DILocation(line: 239, column: 9, scope: !831)
!852 = !DILocation(line: 240, column: 8, scope: !853)
!853 = distinct !DILexicalBlock(scope: !831, file: !29, line: 240, column: 7)
!854 = !DILocation(line: 240, column: 7, scope: !853)
!855 = !DILocation(line: 240, column: 7, scope: !831)
!856 = !DILocation(line: 241, column: 4, scope: !853)
!857 = !DILocation(line: 243, column: 30, scope: !831)
!858 = !DILocation(line: 243, column: 34, scope: !831)
!859 = !DILocation(line: 243, column: 42, scope: !831)
!860 = !DILocation(line: 243, column: 3, scope: !831)
!861 = !DILocation(line: 244, column: 2, scope: !831)
!862 = !DILocation(line: 245, column: 28, scope: !863)
!863 = distinct !DILexicalBlock(scope: !827, file: !29, line: 245, column: 11)
!864 = !DILocation(line: 245, column: 12, scope: !863)
!865 = !DILocation(line: 245, column: 11, scope: !827)
!866 = !DILocation(line: 247, column: 8, scope: !867)
!867 = distinct !DILexicalBlock(scope: !868, file: !29, line: 247, column: 7)
!868 = distinct !DILexicalBlock(scope: !863, file: !29, line: 246, column: 2)
!869 = !DILocation(line: 247, column: 7, scope: !868)
!870 = !DILocation(line: 248, column: 4, scope: !867)
!871 = !DILocation(line: 250, column: 16, scope: !868)
!872 = !DILocation(line: 250, column: 8, scope: !868)
!873 = !DILocation(line: 250, column: 6, scope: !868)
!874 = !DILocation(line: 251, column: 8, scope: !875)
!875 = distinct !DILexicalBlock(scope: !868, file: !29, line: 251, column: 7)
!876 = !DILocation(line: 251, column: 7, scope: !875)
!877 = !DILocation(line: 251, column: 7, scope: !868)
!878 = !DILocation(line: 252, column: 4, scope: !875)
!879 = !DILocation(line: 254, column: 19, scope: !868)
!880 = !DILocation(line: 254, column: 11, scope: !868)
!881 = !DILocation(line: 254, column: 9, scope: !868)
!882 = !DILocation(line: 255, column: 8, scope: !883)
!883 = distinct !DILexicalBlock(scope: !868, file: !29, line: 255, column: 7)
!884 = !DILocation(line: 255, column: 7, scope: !883)
!885 = !DILocation(line: 255, column: 7, scope: !868)
!886 = !DILocation(line: 256, column: 4, scope: !883)
!887 = !DILocation(line: 258, column: 24, scope: !868)
!888 = !DILocation(line: 258, column: 28, scope: !868)
!889 = !DILocation(line: 258, column: 34, scope: !868)
!890 = !DILocation(line: 258, column: 3, scope: !868)
!891 = !DILocation(line: 259, column: 2, scope: !868)
!892 = !DILocation(line: 260, column: 28, scope: !893)
!893 = distinct !DILexicalBlock(scope: !863, file: !29, line: 260, column: 11)
!894 = !DILocation(line: 260, column: 12, scope: !893)
!895 = !DILocation(line: 260, column: 11, scope: !863)
!896 = !DILocalVariable(name: "state", scope: !897, file: !29, line: 262, type: !24)
!897 = distinct !DILexicalBlock(scope: !893, file: !29, line: 261, column: 2)
!898 = !DILocation(line: 262, column: 16, scope: !897)
!899 = !DILocation(line: 264, column: 8, scope: !900)
!900 = distinct !DILexicalBlock(scope: !897, file: !29, line: 264, column: 7)
!901 = !DILocation(line: 264, column: 7, scope: !897)
!902 = !DILocation(line: 265, column: 4, scope: !900)
!903 = !DILocation(line: 267, column: 16, scope: !897)
!904 = !DILocation(line: 267, column: 8, scope: !897)
!905 = !DILocation(line: 267, column: 6, scope: !897)
!906 = !DILocation(line: 268, column: 8, scope: !907)
!907 = distinct !DILexicalBlock(scope: !897, file: !29, line: 268, column: 7)
!908 = !DILocation(line: 268, column: 7, scope: !907)
!909 = !DILocation(line: 268, column: 7, scope: !897)
!910 = !DILocation(line: 269, column: 4, scope: !907)
!911 = !DILocation(line: 271, column: 19, scope: !897)
!912 = !DILocation(line: 271, column: 11, scope: !897)
!913 = !DILocation(line: 271, column: 9, scope: !897)
!914 = !DILocation(line: 272, column: 8, scope: !915)
!915 = distinct !DILexicalBlock(scope: !897, file: !29, line: 272, column: 7)
!916 = !DILocation(line: 272, column: 7, scope: !915)
!917 = !DILocation(line: 272, column: 7, scope: !897)
!918 = !DILocation(line: 273, column: 4, scope: !915)
!919 = !DILocation(line: 275, column: 19, scope: !897)
!920 = !DILocation(line: 275, column: 11, scope: !897)
!921 = !DILocation(line: 275, column: 9, scope: !897)
!922 = !DILocation(line: 276, column: 8, scope: !923)
!923 = distinct !DILexicalBlock(scope: !897, file: !29, line: 276, column: 7)
!924 = !DILocation(line: 276, column: 7, scope: !923)
!925 = !DILocation(line: 276, column: 7, scope: !897)
!926 = !DILocation(line: 277, column: 4, scope: !923)
!927 = !DILocation(line: 279, column: 24, scope: !897)
!928 = !DILocation(line: 279, column: 28, scope: !897)
!929 = !DILocation(line: 279, column: 35, scope: !897)
!930 = !DILocation(line: 279, column: 3, scope: !897)
!931 = !DILocation(line: 280, column: 2, scope: !897)
!932 = !DILocation(line: 281, column: 28, scope: !933)
!933 = distinct !DILexicalBlock(scope: !893, file: !29, line: 281, column: 11)
!934 = !DILocation(line: 281, column: 12, scope: !933)
!935 = !DILocation(line: 281, column: 11, scope: !893)
!936 = !DILocation(line: 283, column: 54, scope: !937)
!937 = distinct !DILexicalBlock(scope: !933, file: !29, line: 282, column: 2)
!938 = !DILocation(line: 283, column: 3, scope: !937)
!939 = !DILocation(line: 284, column: 2, scope: !937)
!940 = !DILocation(line: 285, column: 32, scope: !941)
!941 = distinct !DILexicalBlock(scope: !933, file: !29, line: 285, column: 11)
!942 = !DILocation(line: 285, column: 12, scope: !941)
!943 = !DILocation(line: 285, column: 11, scope: !933)
!944 = !DILocation(line: 287, column: 8, scope: !945)
!945 = distinct !DILexicalBlock(scope: !946, file: !29, line: 287, column: 7)
!946 = distinct !DILexicalBlock(scope: !941, file: !29, line: 286, column: 2)
!947 = !DILocation(line: 287, column: 7, scope: !946)
!948 = !DILocation(line: 288, column: 4, scope: !945)
!949 = !DILocation(line: 290, column: 19, scope: !946)
!950 = !DILocation(line: 290, column: 11, scope: !946)
!951 = !DILocation(line: 290, column: 9, scope: !946)
!952 = !DILocation(line: 291, column: 8, scope: !953)
!953 = distinct !DILexicalBlock(scope: !946, file: !29, line: 291, column: 7)
!954 = !DILocation(line: 291, column: 7, scope: !953)
!955 = !DILocation(line: 291, column: 7, scope: !946)
!956 = !DILocation(line: 292, column: 4, scope: !953)
!957 = !DILocation(line: 294, column: 25, scope: !946)
!958 = !DILocation(line: 294, column: 3, scope: !946)
!959 = !DILocation(line: 295, column: 2, scope: !946)
!960 = !DILocation(line: 296, column: 30, scope: !961)
!961 = distinct !DILexicalBlock(scope: !941, file: !29, line: 296, column: 11)
!962 = !DILocation(line: 296, column: 12, scope: !961)
!963 = !DILocation(line: 296, column: 11, scope: !941)
!964 = !DILocation(line: 298, column: 8, scope: !965)
!965 = distinct !DILexicalBlock(scope: !966, file: !29, line: 298, column: 7)
!966 = distinct !DILexicalBlock(scope: !961, file: !29, line: 297, column: 2)
!967 = !DILocation(line: 298, column: 7, scope: !966)
!968 = !DILocation(line: 299, column: 4, scope: !965)
!969 = !DILocation(line: 301, column: 19, scope: !966)
!970 = !DILocation(line: 301, column: 11, scope: !966)
!971 = !DILocation(line: 301, column: 9, scope: !966)
!972 = !DILocation(line: 302, column: 8, scope: !973)
!973 = distinct !DILexicalBlock(scope: !966, file: !29, line: 302, column: 7)
!974 = !DILocation(line: 302, column: 7, scope: !973)
!975 = !DILocation(line: 302, column: 7, scope: !966)
!976 = !DILocation(line: 303, column: 4, scope: !973)
!977 = !DILocation(line: 306, column: 2, scope: !966)
!978 = !DILocation(line: 307, column: 28, scope: !979)
!979 = distinct !DILexicalBlock(scope: !961, file: !29, line: 307, column: 11)
!980 = !DILocation(line: 307, column: 12, scope: !979)
!981 = !DILocation(line: 307, column: 11, scope: !961)
!982 = !DILocation(line: 309, column: 8, scope: !983)
!983 = distinct !DILexicalBlock(scope: !984, file: !29, line: 309, column: 7)
!984 = distinct !DILexicalBlock(scope: !979, file: !29, line: 308, column: 2)
!985 = !DILocation(line: 309, column: 7, scope: !984)
!986 = !DILocation(line: 310, column: 4, scope: !983)
!987 = !DILocation(line: 312, column: 19, scope: !984)
!988 = !DILocation(line: 312, column: 11, scope: !984)
!989 = !DILocation(line: 312, column: 9, scope: !984)
!990 = !DILocation(line: 313, column: 8, scope: !991)
!991 = distinct !DILexicalBlock(scope: !984, file: !29, line: 313, column: 7)
!992 = !DILocation(line: 313, column: 7, scope: !991)
!993 = !DILocation(line: 313, column: 7, scope: !984)
!994 = !DILocation(line: 314, column: 4, scope: !991)
!995 = !DILocation(line: 316, column: 25, scope: !984)
!996 = !DILocation(line: 316, column: 31, scope: !984)
!997 = !DILocation(line: 316, column: 23, scope: !984)
!998 = !DILocation(line: 316, column: 21, scope: !984)
!999 = !DILocation(line: 316, column: 3, scope: !984)
!1000 = !DILocation(line: 317, column: 2, scope: !984)
!1001 = !DILocation(line: 318, column: 26, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !979, file: !29, line: 318, column: 11)
!1003 = !DILocation(line: 318, column: 12, scope: !1002)
!1004 = !DILocation(line: 318, column: 11, scope: !979)
!1005 = !DILocalVariable(name: "serial", scope: !1006, file: !29, line: 320, type: !24)
!1006 = distinct !DILexicalBlock(scope: !1002, file: !29, line: 319, column: 2)
!1007 = !DILocation(line: 320, column: 16, scope: !1006)
!1008 = !DILocation(line: 322, column: 20, scope: !1006)
!1009 = !DILocation(line: 322, column: 12, scope: !1006)
!1010 = !DILocation(line: 322, column: 10, scope: !1006)
!1011 = !DILocation(line: 323, column: 8, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1006, file: !29, line: 323, column: 7)
!1013 = !DILocation(line: 323, column: 7, scope: !1012)
!1014 = !DILocation(line: 323, column: 7, scope: !1006)
!1015 = !DILocation(line: 324, column: 4, scope: !1012)
!1016 = !DILocation(line: 326, column: 19, scope: !1006)
!1017 = !DILocation(line: 326, column: 3, scope: !1006)
!1018 = !DILocation(line: 327, column: 2, scope: !1006)
!1019 = !DILocation(line: 328, column: 27, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1002, file: !29, line: 328, column: 11)
!1021 = !DILocation(line: 328, column: 12, scope: !1020)
!1022 = !DILocation(line: 328, column: 11, scope: !1002)
!1023 = !DILocation(line: 330, column: 8, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !29, line: 330, column: 7)
!1025 = distinct !DILexicalBlock(scope: !1020, file: !29, line: 329, column: 2)
!1026 = !DILocation(line: 330, column: 7, scope: !1025)
!1027 = !DILocation(line: 331, column: 4, scope: !1024)
!1028 = !DILocation(line: 333, column: 19, scope: !1025)
!1029 = !DILocation(line: 333, column: 11, scope: !1025)
!1030 = !DILocation(line: 333, column: 9, scope: !1025)
!1031 = !DILocation(line: 334, column: 8, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1025, file: !29, line: 334, column: 7)
!1033 = !DILocation(line: 334, column: 7, scope: !1032)
!1034 = !DILocation(line: 334, column: 7, scope: !1025)
!1035 = !DILocation(line: 335, column: 4, scope: !1032)
!1036 = !DILocation(line: 337, column: 3, scope: !1025)
!1037 = !DILocation(line: 338, column: 2, scope: !1025)
!1038 = !DILocation(line: 339, column: 29, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1020, file: !29, line: 339, column: 11)
!1040 = !DILocation(line: 339, column: 12, scope: !1039)
!1041 = !DILocation(line: 339, column: 11, scope: !1020)
!1042 = !DILocation(line: 341, column: 8, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !29, line: 341, column: 7)
!1044 = distinct !DILexicalBlock(scope: !1039, file: !29, line: 340, column: 2)
!1045 = !DILocation(line: 341, column: 7, scope: !1044)
!1046 = !DILocation(line: 342, column: 4, scope: !1043)
!1047 = !DILocation(line: 344, column: 19, scope: !1044)
!1048 = !DILocation(line: 344, column: 11, scope: !1044)
!1049 = !DILocation(line: 344, column: 9, scope: !1044)
!1050 = !DILocation(line: 345, column: 8, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1044, file: !29, line: 345, column: 7)
!1052 = !DILocation(line: 345, column: 7, scope: !1051)
!1053 = !DILocation(line: 345, column: 7, scope: !1044)
!1054 = !DILocation(line: 346, column: 4, scope: !1051)
!1055 = !DILocation(line: 348, column: 3, scope: !1044)
!1056 = !DILocation(line: 349, column: 2, scope: !1044)
!1057 = !DILocation(line: 352, column: 8, scope: !452)
!1058 = !DILocation(line: 352, column: 2, scope: !452)
!1059 = !DILocation(line: 353, column: 2, scope: !452)
!1060 = !DILocation(line: 354, column: 1, scope: !452)
!1061 = distinct !DISubprogram(name: "seamless_get_token", scope: !29, file: !29, line: 33, type: !1062, isLocal: true, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!25, !1064}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!1065 = !DILocalVariable(name: "s", arg: 1, scope: !1061, file: !29, line: 33, type: !1064)
!1066 = !DILocation(line: 33, column: 27, scope: !1061)
!1067 = !DILocalVariable(name: "comma", scope: !1061, file: !29, line: 35, type: !25)
!1068 = !DILocation(line: 35, column: 8, scope: !1061)
!1069 = !DILocalVariable(name: "head", scope: !1061, file: !29, line: 35, type: !25)
!1070 = !DILocation(line: 35, column: 16, scope: !1061)
!1071 = !DILocation(line: 36, column: 10, scope: !1061)
!1072 = !DILocation(line: 36, column: 9, scope: !1061)
!1073 = !DILocation(line: 36, column: 7, scope: !1061)
!1074 = !DILocation(line: 38, column: 7, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1061, file: !29, line: 38, column: 6)
!1076 = !DILocation(line: 38, column: 6, scope: !1061)
!1077 = !DILocation(line: 39, column: 3, scope: !1075)
!1078 = !DILocation(line: 41, column: 17, scope: !1061)
!1079 = !DILocation(line: 41, column: 10, scope: !1061)
!1080 = !DILocation(line: 41, column: 8, scope: !1061)
!1081 = !DILocation(line: 42, column: 6, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1061, file: !29, line: 42, column: 6)
!1083 = !DILocation(line: 42, column: 6, scope: !1061)
!1084 = !DILocation(line: 44, column: 4, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1082, file: !29, line: 43, column: 2)
!1086 = !DILocation(line: 44, column: 10, scope: !1085)
!1087 = !DILocation(line: 45, column: 8, scope: !1085)
!1088 = !DILocation(line: 45, column: 14, scope: !1085)
!1089 = !DILocation(line: 45, column: 4, scope: !1085)
!1090 = !DILocation(line: 45, column: 6, scope: !1085)
!1091 = !DILocation(line: 46, column: 2, scope: !1085)
!1092 = !DILocation(line: 49, column: 4, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1082, file: !29, line: 48, column: 2)
!1094 = !DILocation(line: 49, column: 6, scope: !1093)
!1095 = !DILocation(line: 52, column: 9, scope: !1061)
!1096 = !DILocation(line: 52, column: 2, scope: !1061)
!1097 = !DILocation(line: 53, column: 1, scope: !1061)
